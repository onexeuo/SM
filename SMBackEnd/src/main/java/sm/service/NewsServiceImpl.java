package sm.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import sm.dao.NewsDao;
import sm.domain.NewsDTO;

@Service
public class NewsServiceImpl implements NewsService {
	
	private final NewsDao newsDao;

	@Autowired
	public NewsServiceImpl(NewsDao newsDao) {
		this.newsDao = newsDao;
	}
	
	@Override
	public int insertNews(NewsDTO newsDTO) throws Exception{
		return newsDao.insertNews(newsDTO);
	}

	@Override
	public NewsDTO selectNews(int newsNum) throws Exception{
		return newsDao.selectNews(newsNum);
	}

	@Override
	public List<NewsDTO> newsList() throws Exception{
		List<NewsDTO> newsList = newsDao.newsList();
		System.out.printf("news list : ", newsList);
		return newsDao.newsList();
	}

	@Transactional
	public int updateNews(NewsDTO newsDTO) throws Exception{
		return newsDao.updateNews(newsDTO);
	}

	@Override
	public int deleteNews(int newsNum) throws Exception {
		return newsDao.deleteNews(newsNum);
	}

}
