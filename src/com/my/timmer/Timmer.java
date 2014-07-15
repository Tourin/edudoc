package com.my.timmer;

import java.util.Timer;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import org.springframework.context.ApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import com.my.bo.TimmerBo;

public class Timmer implements ServletContextListener {

	private Timer timer = null;
	private TimmerBo timmerbo = null;

	public void contextInitialized(ServletContextEvent event) {
		ApplicationContext springContext = WebApplicationContextUtils
				.getWebApplicationContext(event.getServletContext());
		if (springContext != null) {
			timmerbo = (TimmerBo) springContext.getBean("timmerbo");
		}
		timer = new Timer(true);
		timer.schedule(new TimmerRunner(timmerbo), 10000, 1000 * 60 * 5);// milliseconds
	}

	public void contextDestroyed(ServletContextEvent event) {
		timer.cancel();
	}
}
