package com.sm.news;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.sm.service.NewsService;

@Controller
@RequestMapping(value="/news")
public class newsController {
	
	@Autowired
	private NewsService newsService;
	
	@RequestMapping(value="/newsList", method=RequestMethod.GET)
	public String getListNews(Model model) {
		List list = newsService.getListNews();
		
		model.addAttribute("list", list);
		return "/news/newsList";
	}
	
	
}
