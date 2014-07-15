package com.my.timmer;

import java.util.ArrayList;
import java.util.List;
import java.util.TimerTask;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.apache.http.HttpStatus;

import com.my.bean.InfoAdmin;
import com.my.bean.Link;
import com.my.bo.TimmerBo;
import com.my.util.EmailSend;

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

	private String getCha(String html1, String html2) {
		if (html1 == null || html2 == null || html1.isEmpty()
				|| html2.isEmpty()) {
			return "";
		}
		char[] charArray1 = html1.toCharArray();
		char[] charArray2 = html2.toCharArray();
		int length = charArray1.length > charArray2.length ? charArray1.length
				: charArray2.length;
		int first = getFirstIndex(charArray1, charArray2, length);
		int end = getEndIndex(charArray1, charArray2, length);
		String substring = html2.substring(first, end + 1);
		return substring;
	}

	private int getFirstIndex(char[] charArray1, char[] charArray2, int length) {
		for (int i = 0; i < length; i++) {
			if (charArray1[i] != charArray2[i]) {
				return i;
			}
		}
		return 0;
	}

	private int getEndIndex(char[] charArray1, char[] charArray2, int length) {
		int le1 = charArray1.length;
		int le2 = charArray2.length;
		for (int i = 1; i < length; i++) {
			if (charArray1[le1 - i] != charArray2[le2 - i]) {
				return le2 - i;
			}
		}
		return 0;
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
