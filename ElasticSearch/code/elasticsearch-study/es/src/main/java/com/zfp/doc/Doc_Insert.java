package com.zfp.doc;


import com.fasterxml.jackson.databind.ObjectMapper;
import com.zfp.pojo.User;
import org.apache.http.HttpHost;
import org.elasticsearch.action.index.IndexRequest;
import org.elasticsearch.action.index.IndexResponse;
import org.elasticsearch.client.RequestOptions;
import org.elasticsearch.client.RestClient;
import org.elasticsearch.client.RestHighLevelClient;
import org.elasticsearch.common.xcontent.XContentType;

import java.io.IOException;

/**
 * @author slight-leaves
 * @version 1.0
 * @date 2023/9/13 16:21
 */
public class Doc_Insert {
    public static void main(String[] args) throws IOException {
        RestHighLevelClient esClient = new RestHighLevelClient(
                RestClient.builder(new HttpHost("localhost", 9200, "http"))
        );


        IndexRequest indexRequest = new IndexRequest();
        indexRequest.index("user").id("1001");  //要插入的索引及文档id
        User user = new User("zhangsan", 30, "男");
        ObjectMapper objectMapper = new ObjectMapper();
        String productJson = objectMapper.writeValueAsString(user); //将数据格式转换为JSON
        indexRequest.source(productJson, XContentType.JSON);    //添加文档数据，数据格式为JSON
        IndexResponse indexResponse = esClient.index(indexRequest, RequestOptions.DEFAULT); //客户端发送请求，获取响应对象。

        //打印结果
        System.out.println("_index:" + indexResponse.getIndex());
        System.out.println("_id:" + indexResponse.getId());
        System.out.println("_result:" + indexResponse.getResult());

        esClient.close();
    }
}
