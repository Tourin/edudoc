package com.my.timmer;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.LinkedList;
import java.util.List;
import java.util.TimerTask;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.apache.http.HttpStatus;

import com.my.bean.InfoAdmin;
import com.my.bean.Link;
import com.my.bo.TimmerBo;
import com.my.util.EmailSend;
import com.my.util.diff_match_patch;
import com.my.util.diff_match_patch.Diff;

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
		int start = 8;
		int end = 18;
		Calendar now = Calendar.getInstance();
		int hour = now.get(Calendar.HOUR_OF_DAY);
		if (hour < start || hour > end) {
			return;
		}
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
		Page page = download(url);
		if (page != null) {
			ParseData parseData = page.getParseData();
			if (parseData != null) {
				if (parseData instanceof HtmlParseData) {
					HtmlParseData htmlParseData = (HtmlParseData) parseData;
					String html = pattern(htmlParseData.getHtml());
					String html2 = link.getHtml();
					if (html2 == null || !html2.equals(html)) {
						link.setHtml(html);
						timmerbo.editLink(link);
						String cha = getCha(html2, html);
						String[] regex = link.getRegex().split("\\s+");
						for (String re : regex) {
							if (cha.contains(re)) {
								InfoAdmin infoAdminById = timmerbo
										.getInfoAdminById(InfoAdmin.class, 1);
								EmailSend.send(infoAdminById.getEmail(),
										createMessage(cha, link));
								return;
							}
						}
					}
				}
			} else {
				System.out.println("Couldn't parse the content of the page.");
			}
		} else {
			System.out.println("Couldn't fetch the content of the page.");
		}
	}

	private String createMessage(String cha, Link link) {
		StringBuilder sb = new StringBuilder();
		sb.append("您好，以下网址的内容有符合条件的更新。\n");
		sb.append(link.getLink());
		sb.append("\n更新内容为\n");
		sb.append(cha);
		return sb.toString();
	}

	private String getCha(String old, String newhtml) {
		if (old == null || newhtml == null || old.isEmpty()
				|| newhtml.isEmpty() || old.equals("init")) {
			return "";
		}
		diff_match_patch dmp = new diff_match_patch();
		LinkedList<Diff> dflist = dmp.diff_main(old, newhtml);
		StringBuilder sb = new StringBuilder();
		for (Diff myDiff : dflist) {
			if (myDiff.operation == diff_match_patch.Operation.INSERT) {
				sb.append(myDiff.text);
			}
		}
		return sb.toString();
	}

	private String pattern(String html) {
		Pattern pattern = Pattern.compile("<.+?>", Pattern.DOTALL);
		Matcher matcher = pattern.matcher(html);
		String string = matcher.replaceAll("");
		Pattern p = Pattern.compile("\\s*|t|r|n");
		Matcher m = p.matcher(string);
		String replaceAll = m.replaceAll("");
		return replaceAll;
	}
}
