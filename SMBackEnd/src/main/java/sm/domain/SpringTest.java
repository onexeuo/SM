package sm.domain;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import sm.service.NewsService;

import java.util.List;

import org.springframework.context.ApplicationContext;

public class SpringTest {
    public static void main(String[] args) {
        // ApplicationContext 설정 (AppConfig.class를 사용하여 Spring IoC 컨테이너를 생성)
        ApplicationContext context = new AnnotationConfigApplicationContext(Appconfig.class);
        
        // NewsService 빈 가져오기
        NewsService newsService = context.getBean(NewsService.class);
        if (newsService != null) {
            System.out.println("NewsService Bean is loaded successfully.");
        }
        // 뉴스 목록 가져오기
        try {
            List<NewsDTO> newsList = newsService.newsList();
            newsList.forEach(news -> System.out.println(news.getNewsTitle()));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
