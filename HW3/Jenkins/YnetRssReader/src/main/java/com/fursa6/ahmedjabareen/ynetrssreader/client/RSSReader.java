package com.fursa6.ahmedjabareen.ynetrssreader.client;


import com.sun.syndication.io.FeedException;

import java.io.IOException;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.List;

public class RSSReader {

    public static void begin(String[] args) throws URISyntaxException, IOException, InterruptedException, FeedException {
        URL feedSource = new URL("http://aaa.com");
        List<String> targetFeedsList = List.of("http://www.ynet.co.il/Integration/StoryRss2.xml");


        for(String url : targetFeedsList) {
            List<NewsArticle> results = RSSReaderUtil.read(url);
            System.out.println("url : " + url);
            results.stream().forEach(a -> System.out.println(a.toString()));
            System.out.println("==========");
        }
    }
}