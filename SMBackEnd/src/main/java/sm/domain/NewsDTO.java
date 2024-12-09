package sm.domain;

import java.sql.Timestamp;
import java.util.Arrays;

import javax.annotation.Generated;


public class NewsDTO {
	
	private int newsNum; // 뉴스 번호 
	private String newsTitle; // 뉴스 제목
	private String newsContent; //뉴스 내용
	private Timestamp newsDate; //뉴스 작성 일
	private byte[] newsImg; //뉴스 이미지 
	
	public NewsDTO() {
	}
	
	public NewsDTO(int newsNum, String newsTitle, String newsContent, Timestamp newsDate, byte[] newsImg) {
		super();
		this.newsNum = newsNum;
		this.newsTitle = newsTitle;
		this.newsContent = newsContent;
		this.newsDate = newsDate;
		this.newsImg = newsImg;
	}
	public int getNewsNum() {
		return newsNum;
	}
	public void setNewsNum(int newsNum) {
		this.newsNum = newsNum;
	}
	public String getNewsTitle() {
		return newsTitle;
	}
	public void setNewsTitle(String newsTitle) {
		this.newsTitle = newsTitle;
	}
	public String getNewsContent() {
		return newsContent;
	}
	public void setNewsContent(String newsContent) {
		this.newsContent = newsContent;
	}
	public Timestamp getNewsDate() {
		return newsDate;
	}
	public void setNewsDate(Timestamp newsDate) {
		this.newsDate = newsDate;
	}
	public byte[] getNewsImg() {
		return newsImg;
	}
	public void setNewsImg(byte[] newsImg) {
		this.newsImg = newsImg;
	}
	@Override
	public String toString() {
		return "NewsDTO [newsNum=" + newsNum + ", newsTitle=" + newsTitle + ", newsContent=" + newsContent
				+ ", newsDate=" + newsDate + ", newsImg=" + Arrays.toString(newsImg) + "]";
	}
	




}
