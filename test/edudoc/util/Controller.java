package edudoc.util;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.apache.http.HttpStatus;

import edu.uci.ics.crawler4j.crawler.CrawlConfig;
import edu.uci.ics.crawler4j.crawler.Page;
import edu.uci.ics.crawler4j.fetcher.PageFetchResult;
import edu.uci.ics.crawler4j.fetcher.PageFetcher;
import edu.uci.ics.crawler4j.parser.HtmlParseData;
import edu.uci.ics.crawler4j.parser.ParseData;
import edu.uci.ics.crawler4j.parser.Parser;
import edu.uci.ics.crawler4j.url.WebURL;

public class Controller {
	private Parser parser;
	private PageFetcher pageFetcher;

	public static void main(String args[]) {
		// Controller c = new Controller();
		// c.processUrl("http://zfcg.nantong.gov.cn/col/col30067/index.html");
		String html = "aaabbbccc";
		String html2 = "acaaaaeeeddcc";
		char[] charArray1 = html.toCharArray();
		char[] charArray2 = html2.toCharArray();
		int length = charArray1.length > charArray2.length ? charArray1.length
				: charArray2.length;
		int first = getFirstIndex(charArray1, charArray2, length);
		int end = getEndIndex(charArray1, charArray2, length);
		System.out.println(first);
		System.out.println(end);
		String substring = html2.substring(first, end + 1);
		System.out.println(substring);
	}

	private static int getFirstIndex(char[] charArray1, char[] charArray2,
			int length) {
		for (int i = 0; i < length; i++) {
			if (charArray1[i] != charArray2[i]) {
				return i;
			}
		}
		return 0;
	}

	private static int getEndIndex(char[] charArray1, char[] charArray2,
			int length) {
		int le1 = charArray1.length;
		int le2 = charArray2.length;
		for (int i = 1; i < length; i++) {
			if (charArray1[le1 - i] != charArray2[le2 - i]) {
				return le2 - i;
			}
		}
		return 0;
	}

	private void pattern(String html) {
		Pattern pattern = Pattern.compile("<.+?>", Pattern.DOTALL);
		Matcher matcher = pattern.matcher(html);
		String string = matcher.replaceAll("");
		Pattern p = Pattern.compile("\\s*|t|r|n");
		Matcher m = p.matcher(string);
		String replaceAll = m.replaceAll("");
		System.out.println(replaceAll);
	}

	public Controller() {
		CrawlConfig config = new CrawlConfig();
		parser = new Parser(config);
		pageFetcher = new PageFetcher(config);
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

	private void processUrl(String url) {
		System.out.println("Processing: " + url);
		Page page = download(url);
		if (page != null) {
			ParseData parseData = page.getParseData();
			if (parseData != null) {
				if (parseData instanceof HtmlParseData) {
					HtmlParseData htmlParseData = (HtmlParseData) parseData;
					System.out.println("Title: " + htmlParseData.getTitle());
					System.out.println("Text length: "
							+ htmlParseData.getText().length());
					System.out.println("Html length: "
							+ htmlParseData.getHtml().length());
					pattern(htmlParseData.getHtml());
				}
			} else {
				System.out.println("Couldn't parse the content of the page.");
			}
		} else {
			System.out.println("Couldn't fetch the content of the page.");
		}
		System.out.println("==============");
	}

}
