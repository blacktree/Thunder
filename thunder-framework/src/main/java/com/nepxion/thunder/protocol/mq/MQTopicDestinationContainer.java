package com.nepxion.thunder.protocol.mq;

/**
 * <p>Title: Nepxion Thunder</p>
 * <p>Description: Nepxion Thunder For Distribution</p>
 * <p>Copyright: Copyright (c) 2017-2050</p>
 * <p>Company: Nepxion</p>
 * @author Haojun Ren
 * @version 1.0
 */

import java.util.Map;

import javax.jms.Destination;

import com.google.common.collect.Maps;

public class MQTopicDestinationContainer {

    // 缓存所有的异步响应Destination，对应为持久化容器(Topic)，key为interface
    private Map<String, Destination> asyncResponseDestinationMap = Maps.newConcurrentMap();

    public Map<String, Destination> getAsyncResponseDestinationMap() {
        return asyncResponseDestinationMap;
    }
}