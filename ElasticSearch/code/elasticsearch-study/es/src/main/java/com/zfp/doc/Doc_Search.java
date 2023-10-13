package com.zfp.doc;

import org.apache.http.HttpHost;
import org.elasticsearch.action.get.GetRequest;
import org.elasticsearch.action.get.GetResponse;
import org.elasticsearch.client.RequestOptions;
import org.elasticsearch.client.RestClient;
import org.elasticsearch.client.RestHighLevelClient;

import java.io.IOException;

/**
 * @author slight-leaves
 * @version 1.0
 * @date 2023/9/13 17:02
 */
public class Doc_Search {
    public static void main(String[] args) throws IOException {
        RestHighLevelClient esClient = new RestHighLevelClient(
                RestClient.builder(new HttpHost("localhost", 9200, "http"))
        );

        //查找文档
        GetRequest getRequest = new GetRequest().index("user").id("1001");
        GetResponse getResponse = esClient.get(getRequest, RequestOptions.DEFAULT); //客户端发送请求，获取响应对象

        //打印结果信息
        System.out.println("_index:" + getResponse.getIndex());
        System.out.println("_type:" + getResponse.getType());
        System.out.println("_id:" + getResponse.getId());
        System.out.println("source:" + getResponse.getSourceAsString());

        esClient.close();
    }
}
