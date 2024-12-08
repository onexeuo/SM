package sm.service;

import java.util.List;

import org.springframework.stereotype.Service;

import sm.domain.NewsDTO;

@Service
public interface NewsService {
	int insertNews(NewsDTO news);
	
	int selectNews(NewsDTO NewsDTO);
	
	List<NewsDTO> newsList(NewsDTO NewsDTO);
	
	int updateNews (NewsDTO NewsDTO);
	
	int deleteNews (NewsDTO NewsDTO);
}
