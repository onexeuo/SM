package sm.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import sm.domain.NewsDTO;
import sm.service.NewsService;

@Controller
public class NewsController {
	@Resource(name="newsService")
	private final NewsService newsService;
	
	public NewsController(NewsService newsService) {
		this.newsService = newsService;
	}
	
//	public String addNews(Model model) {
//		model.addAttribute("news", news);
//		
//	}
	
}
