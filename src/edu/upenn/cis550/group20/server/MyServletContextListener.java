package edu.upenn.cis550.group20.server;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import edu.upenn.cis550.group20.server.dbutil.ConnectionManager;

public class MyServletContextListener implements ServletContextListener {

	@Override
	public void contextDestroyed(ServletContextEvent arg0) {
		ConnectionManager.destroy();
	}

	@Override
	public void contextInitialized(ServletContextEvent arg0) {
		ConnectionManager.init();
	}

}
