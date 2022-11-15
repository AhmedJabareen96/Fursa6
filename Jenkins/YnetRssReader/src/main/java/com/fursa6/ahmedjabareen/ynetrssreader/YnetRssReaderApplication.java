package com.fursa6.ahmedjabareen.ynetrssreader;

import com.fursa6.ahmedjabareen.ynetrssreader.client.RSSReader;
import com.sun.syndication.io.FeedException;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import java.io.IOException;
import java.net.URISyntaxException;

@SpringBootApplication
public class YnetRssReaderApplication {

    public static void main(String[] args) throws FeedException, URISyntaxException, IOException, InterruptedException {
        SpringApplication.run(YnetRssReaderApplication.class, args);
        RSSReader.begin(null);
    }

}
