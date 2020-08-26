/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package teste;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

/**
 *
 * @author rafaellucio
 */
public class RequestEncodeFilter implements Filter{
    
    private FilterConfig filterConfig = null;
    
    public RequestEncodeFilter(){
        System.out.println("Request response enconde filter object has been created");
    }
    
    public void init(FilterConfig filterConfig){
        this.filterConfig = filterConfig;
    }
    
    public void doFilter(ServletRequest request,ServletResponse response,FilterChain chain)throws IOException,ServletException{
        request.setCharacterEncoding("UTF-8");
        chain.doFilter(request, response);
        response.setContentType("text/html;charset=UTF-8");
    }
    
    public void destroy(){
        this.filterConfig = null;
    }
    
}
