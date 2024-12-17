package sm.domain;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

import sm.service.NewsService;
import sm.service.NewsServiceImpl;

@Configuration
@ComponentScan(basePackages = "sm")
public class Appconfig {

    @Bean
    public NewsService newsService() {
        return new NewsServiceImpl(null);
    }

    // 추가적인 Bean 설정을 할 수 있습니다.
}
