package com.zfp.doc;

import org.apache.http.HttpHost;
import org.elasticsearch.action.bulk.BulkRequest;
import org.elasticsearch.action.bulk.BulkResponse;
import org.elasticsearch.action.delete.DeleteRequest;
import org.elasticsearch.action.index.IndexRequest;
import org.elasticsearch.client.RequestOptions;
import org.elasticsearch.client.RestClient;
import org.elasticsearch.client.RestHighLevelClient;
import org.elasticsearch.common.xcontent.XContentType;
import org.junit.Test;

import java.io.IOException;
import java.util.Arrays;

/**
 * @author slight-leaves
 * @version 1.0
 * @date 2023/9/13 17:34
 */
public class Doc_Batch {
    @Test
    public void testBatchInsert() throws IOException {
        RestHighLevelClient esClient = new RestHighLevelClient(
                RestClient.builder(new HttpHost("localhost", 9200, "http"))
        );

        BulkRequest bulkRequest = new BulkRequest();    //创建批量新增请求对象
        bulkRequest.add(new IndexRequest().index("user").id("1001").source(XContentType.JSON, "name", "zhangsan", "age", 30, "sex", "男"));
        bulkRequest.add(new IndexRequest().index("user").id("1002").source(XContentType.JSON, "name", "lisi", "age", 30, "sex", "男"));
        bulkRequest.add(new IndexRequest().index("user").id("1003").source(XContentType.JSON, "name", "wangwu", "age", 40, "sex", "男"));
        bulkRequest.add(new IndexRequest().index("user").id("1004").source(XContentType.JSON, "name", "wangwu1", "age", 40, "sex", "男"));
        bulkRequest.add(new IndexRequest().index("user").id("1005").source(XContentType.JSON, "name", "wangwu2", "age", 50, "sex", "男"));
        bulkRequest.add(new IndexRequest().index("user").id("1006").source(XContentType.JSON, "name", "wangwu3", "age", 50, "sex", "男"));
        bulkRequest.add(new IndexRequest().index("user").id("1007").source(XContentType.JSON, "name", "wangwu44", "age", 60, "sex", "男"));
        bulkRequest.add(new IndexRequest().index("user").id("1008").source(XContentType.JSON, "name", "wangwu555", "age", 60, "sex", "男"));

        BulkResponse bulkResponse = esClient.bulk(bulkRequest, RequestOptions.DEFAULT); //客户端发送请求，获取响应对象

        System.out.println(bulkResponse.getTook()); //花费时间
        System.out.println(Arrays.toString(bulkResponse.getItems()));   //每个响应结果

        esClient.close();
    }

    @Test
    public void testBatchDelete() throws IOException {
        RestHighLevelClient esClient = new RestHighLevelClient(
                RestClient.builder(new HttpHost("localhost", 9200, "http"))
        );

        BulkRequest bulkRequest = new BulkRequest();
        bulkRequest.add(new DeleteRequest().index("user").id("1001"));
        bulkRequest.add(new DeleteRequest().index("user").id("1002"));
        bulkRequest.add(new DeleteRequest().index("user").id("1003"));

        BulkResponse bulkResponse = esClient.bulk(bulkRequest, RequestOptions.DEFAULT); //客户端发送请求，获取响应对象

        System.out.println("took:" + bulkResponse.getTook());   //花费时间
        System.out.println("items:" + bulkResponse.getItems());

        esClient.close();
    }
}
