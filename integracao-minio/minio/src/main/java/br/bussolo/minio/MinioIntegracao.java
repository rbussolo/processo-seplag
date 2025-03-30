package br.bussolo.minio;

import java.net.InetSocketAddress;
import java.net.Proxy;

import io.minio.BucketExistsArgs;
import io.minio.GetPresignedObjectUrlArgs;
import io.minio.MakeBucketArgs;
import io.minio.MinioClient;
import io.minio.UploadObjectArgs;
import okhttp3.OkHttpClient;

public class MinioIntegracao {
    private String proxyHost = "minio";
    private int proxyPort = 9000;
    private String endpoint = "http://localhost:9000";
    private String accessKey = "minioadmin";
    private String secretKey = "minioadmin";

    private boolean error = false;
    private String errorDescription = "";

    public MinioIntegracao() {
    }

    public MinioIntegracao(String endpoint, String accessKey, String secretKey) {
        this.endpoint = endpoint;
        this.accessKey = accessKey;
        this.secretKey = secretKey;
    }

    private MinioClient connectClient() {
        Proxy proxy = new Proxy(Proxy.Type.HTTP, new InetSocketAddress(proxyHost, proxyPort));
        OkHttpClient client = new OkHttpClient.Builder().proxy(proxy).build();

        return MinioClient.builder()
            .endpoint(endpoint)
            .credentials(accessKey, secretKey)
            .httpClient(client)
            .build();
        }

        public String getUrl(String bucketName, String fileName) {
            String url = "";
            this.error = false;

            try {
                MinioClient client = this.connectClient();
                
                url = client.getPresignedObjectUrl(
                    GetPresignedObjectUrlArgs.builder()
                        .bucket(bucketName)
                        .object(fileName)
                        .method(io.minio.http.Method.GET)
                        .expiry(60 * 5) // 5 minutos
                        .build()
                    );
            } catch (Exception e) {
                this.error = true;
                this.errorDescription = "Erro ao gerar a URL do arquivo!" + e.getMessage();

                e.printStackTrace();
            }

            return url;
        }

        public boolean saveFileOnBucket(String bucketName, String fileName, String filePath) {
        MinioClient client = this.connectClient();
        
        try {
            boolean isBucketExists = client.bucketExists(BucketExistsArgs.builder().bucket(bucketName).build());
            
            if (!isBucketExists) {
                client.makeBucket(
                    MakeBucketArgs.builder()
                        .bucket(bucketName)
                        .build()
                );
            }
        } catch (Exception e) {
            this.error = true;
            this.errorDescription = "Erro enquanto tentava criar o bucket!" + e.getMessage();

            e.printStackTrace();

            return false;
        }

        try {
            client.uploadObject(
                UploadObjectArgs.builder()
                    .bucket(bucketName)
                    .object(fileName)
                    .filename(filePath)
                    .build()
            );
        } catch (Exception e) {
            this.error = true;
            this.errorDescription = "Erro enquanto tentava salvar o arquivo!" + e.getMessage();

            e.printStackTrace();

            return false;
        }

        return true;
    }

    public String getEndpoint() {
        return endpoint;
    }

    public void setEndpoint(String endpoint) {
        this.endpoint = endpoint;
    }

    public String getAccessKey() {
        return accessKey;
    }

    public void setAccessKey(String accessKey) {
        this.accessKey = accessKey;
    }

    public String getSecretKey() {
        return secretKey;
    }

    public void setSecretKey(String secretKey) {
        this.secretKey = secretKey;
    }

    public boolean isError() {
        return error;
    }

    public String getErrorDescription() {
        return errorDescription;
    }
}
