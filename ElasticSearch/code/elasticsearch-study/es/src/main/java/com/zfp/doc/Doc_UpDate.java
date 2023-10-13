package com.zfp.doc;

import org.apache.http.HttpHost;
import org.elasticsearch.action.update.UpdateRequest;
import org.elasticsearch.action.update.UpdateResponse;
import org.elasticsearch.client.RequestOptions;
import org.elasticsearch.client.RestClient;
import org.elasticsearch.client.RestHighLevelClient;
import org.elasticsearch.common.xcontent.XContentType;

import java.io.IOException;

/**
 * @author slight-leaves
 * @version 1.0
 * @date 2023/9/13 16:43
 */
public class Doc_UpDate {
    public static void main(String[] args) throws IOException {
        RestHighLevelClient esClient = new RestHighLevelClient(
                RestClient.builder(new HttpHost("localhost", 9200, "http"))
        );

        //修改文档
        UpdateRequest updateRequest = new UpdateRequest();
        updateRequest.index("user").id("1001"); //索引及文档ID
        updateRequest.doc(XContentType.JSON, "sex", "女");   //设置请求体，对数据进行修改
        UpdateResponse updateResponse = esClient.update(updateRequest, RequestOptions.DEFAULT); //客户端发送请求，获取响应对象

        //打印结果
        System.out.println("_index:" + updateResponse.getIndex());
        System.out.println("_id:" + updateResponse.getId());
        System.out.println("_result:" + updateResponse.getResult());


        esClient.close();
    }
}
