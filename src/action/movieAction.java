package action;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import bean.PageBean;
import bean.movie;
import service.movieService;

public class movieAction extends ActionSupport {
	private static final long serialVersionUID = 1L;
	public movieService movieService;
	private movie movie;
	private HttpServletRequest request = null;
	private HttpSession session = null;
	 private PageBean pageBean;
	 private int page;
	public PageBean getPageBean() {
		return pageBean;
	}

	public void setPageBean(PageBean pageBean) {
		this.pageBean = pageBean;
	}

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
    private String name=null;
	private String type=null;
    private String description;
	/*public String findMovie() throws Exception {//电影搜索，按电影名字，类型搜索
		List<movie> list = null;
		list = this.movieService.findMovie(movie.getName());
		request = ServletActionContext.getRequest();
		session = request.getSession();
		session.setAttribute("list", list);
		return "success";
	}*/

	/*public String findMoviebyType() throws Exception {//通过电影类型搜索电影
		List<movie>list=null;
		//movie movie1 = null;
	    
		type=new String(type.getBytes("iso-8859-1"),"utf8");
		
		System.out.print(type);
		list = this.movieService.findMoviebyType(type);
		request = ServletActionContext.getRequest();
		session = request.getSession();
		session.setAttribute("list", list);
		return "success";
	}*/
	public String findMoviebyDescription() throws Exception {//查看电影信息
		//List<movie>list=null;
		movie movie1 = null;
		
		description=new String(description.getBytes("iso-8859-1"),"utf8");
		System.out.println("描述");
		System.out.println(description);
		
		movie1 = this.movieService.findMoviebyDescription(description);
		request = ServletActionContext.getRequest();
		session = request.getSession();
		session.setAttribute("movie1", movie1);
		return "description";
	}

	public String getPageListByType() throws Exception {//分页查看电影
		type=new String(type.getBytes("iso-8859-1"),"utf8");
		System.out.println(type);
		this.pageBean= movieService.findMoviesbyType(type,20,page);
           
             request = ServletActionContext.getRequest();
     		 session = request.getSession();
     		 session.setAttribute("pageBean", pageBean);
     		 session.setAttribute("type", type);
	         return"success";
	}
	public String getPageList() throws Exception {//分页查看电影第二步
		request = ServletActionContext.getRequest();
		 session = request.getSession();
		 type=(String) session.getAttribute("type");
		 //System.out.println("type--------------------"+type);
		this.pageBean= movieService.findMoviesbyType(type,20,page);       		
     		 session.setAttribute("pageBean", pageBean);   		 
	         return"success";
	}
	public String getPageListByName() throws Exception {//分页查看电影
		
		this.pageBean=movieService.findMoviesbyName(movie.getName(), 20, page);
		request = ServletActionContext.getRequest();
		session = request.getSession();
		session.setAttribute("pageBean", pageBean);
		 session.setAttribute("name", movie.getName());
		return "Namesuccess";
	}
	public String getPageListByName2() throws Exception {//分页查看电影第二步
		request = ServletActionContext.getRequest();
		 session = request.getSession();
		 name=(String) session.getAttribute("name");
		 //System.out.println("type--------------------"+type);
		this.pageBean= movieService.findMoviesbyName(name,20,page);       		
     		 session.setAttribute("pageBean", pageBean);   		 
	         return"Namesuccess";
	}
	public movieService getMovieService() {
		return movieService;
	}

	public void setMovieService(movieService movieService) {
		this.movieService = movieService;
	}

	public movie getMovie() {
		return movie;
	}

	public void setMovie(movie movie) {
		this.movie = movie;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

}
