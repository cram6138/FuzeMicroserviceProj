package com.zuul.filter;

import javax.servlet.http.HttpServletRequest;

import com.netflix.zuul.ZuulFilter;
import com.netflix.zuul.context.RequestContext;
import com.netflix.zuul.exception.ZuulException;

public class RouteFilter extends ZuulFilter {

	@Override
	public boolean shouldFilter() {
		return true;
	}

	@Override
	public Object run() throws ZuulException {
		RequestContext ctx = RequestContext.getCurrentContext();
		HttpServletRequest request = ctx.getRequest();
		if (!(request.getRequestURI().equals("/poui") || request.getRequestURI().equals("/poui/login"))) {
			if (request.getSession().getAttribute("currentUser") == null) {
				return "redirect: /poui";
			}
		}
		System.out.println("Request Method : " + request.getMethod() + " ::::: Request URL :::: " + request.getRequestURL());
		ctx.getResponse().getHeader("currentUser");
		return null;
	}

	@Override
	public String filterType() {
		return "route";
	}

	@Override
	public int filterOrder() {
		return 1;
	}

}
