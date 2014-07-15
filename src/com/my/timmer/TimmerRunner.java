package com.my.timmer;

import java.util.ArrayList;
import java.util.List;
import java.util.TimerTask;
import java.util.regex.Pattern;

import org.apache.http.HttpStatus;

import com.my.bean.Link;
import com.my.bo.TimmerBo;

import edu.uci.ics.crawler4j.crawler.CrawlConfig;
import edu.uci.ics.crawler4j.crawler.Page;
import edu.uci.ics.crawler4j.fetcher.PageFetchResult;
import edu.uci.ics.crawler4j.fetcher.PageFetcher;
import edu.uci.ics.crawler4j.parser.HtmlParseData;
import edu.uci.ics.crawler4j.parser.ParseData;
import edu.uci.ics.crawler4j.parser.Parser;
import edu.uci.ics.crawler4j.url.WebURL;

public class TimmerRunner extends TimerTask {

	private TimmerBo timmerbo;
	private Parser parser;
	private PageFetcher pageFetcher;

	public TimmerRunner(TimmerBo timmerbo) {
		this.timmerbo = timmerbo;
		CrawlConfig config = new CrawlConfig();
		parser = new Parser(config);
		pageFetcher = new PageFetcher(config);
	}

	public void run() {
		List<Link> links = new ArrayList<>();
		try {
			links = timmerbo.getAllLink();
			for (Link link : links) {
				processUrl(link);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	private Page download(String url) {
		WebURL curURL = new WebURL();
		curURL.setURL(url);
		PageFetchResult fetchResult = null;
		try {
			fetchResult = pageFetcher.fetchHeader(curURL);
			if (fetchResult.getStatusCode() == HttpStatus.SC_OK) {
				try {
					Page page = new Page(curURL);
					fetchResult.fetchContent(page);
					if (parser.parse(page, curURL.getURL())) {
						return page;
					}
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		} finally {
			fetchResult.discardContentIfNotConsumed();
		}
		return null;
	}

	private void processUrl(Link link) throws Exception {
		String url = link.getLink();
		System.out.println("Processing: " + url);
		Page page = download(url);
		if (page != null) {
			ParseData parseData = page.getParseData();
			if (parseData != null) {
				if (parseData instanceof HtmlParseData) {
					HtmlParseData htmlParseData = (HtmlParseData) parseData;
					// System.out.println("Title: " + htmlParseData.getTitle());
					// System.out.println("Text length: "
					// + htmlParseData.getText().length());
					// System.out.println("Html length: "
					// + htmlParseData.getHtml().length());
					String html = htmlParseData.getHtml();
					int htmlength = html.length();
					if (!link.getHtml().equals(String.valueOf(htmlength))) {
						link.setHtml(String.valueOf(htmlength));
						// getKeyWords(html, link.getRegex());
						timmerbo.editLink(link);

					}
				}
			} else {
				System.out.println("Couldn't parse the content of the page.");
			}
		} else {
			System.out.println("Couldn't fetch the content of the page.");
		}
		System.out.println("==============");
	}

	private String getKeyWords(String html, String regex) {
		Pattern p = Pattern.compile(regex);

		return "";
	}
}
