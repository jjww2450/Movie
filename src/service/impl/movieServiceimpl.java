package service.impl;
import java.util.List;

import service.movieService;
import bean.PageBean;
import bean.movie; 
import dao.movieDao;
public class movieServiceimpl implements movieService {
private movieDao movieDao;
public List<movie>findMovie(String name){
	return movieDao.findMovie(name);
}
public movieDao getMovieDao() {
	return movieDao;
}
public void setMovieDao(movieDao movieDao) {
	this.movieDao = movieDao;
}
@Override
public List<movie> findMoviebyType(String type) {
	// TODO Auto-generated method stub
	return movieDao.findMoviebyType(type);
}
@Override
public movie findMoviebyMid(Integer id) {
	return movieDao.findMoviebyMid(id);
}
@Override
public movie findMoviebyDescription(String description) {
	return movieDao.findMoviebyDeccription(description);
}

public PageBean findMoviesbyType(String type,int pageSize, int page) {
	          String hql = "from movie m  where m.type like? group by m.type";
	          
	         
	          int count = movieDao.getCountbyType(hql,type); // 总记录数
	         int totalPage = PageBean.countTotalPage(pageSize, count); // 总页数
	         System.out.println("总页数:--------------"+totalPage);
	          int offset = PageBean.countOffset(pageSize,page ); // 当前页开始记录
	          int length = pageSize; // 每页记录数
	          int currentPage = PageBean.countCurrentPage(page);
	          List<movie> list = movieDao.moviePagebyType( type,offset, length); // 该分页的记录
	         // 把分页信息保存到Bean中
	         PageBean pageBean = new PageBean();
	         pageBean.setPageSize(pageSize);
	         pageBean.setCurrentPage(currentPage);
	         System.out.println("页码:--------------"+currentPage);
	         pageBean.setAllRow(count);
	         pageBean.setTotalPage(totalPage);
	         pageBean.setList(list);
	         pageBean.init();
	         return pageBean;
	     }
@Override
public PageBean findMoviesbyName(String name, int pageSize, int page) {
	String hql = "from movie m  where m.description like? group by m.description";
    
    
    int count = movieDao.getCountbyType(hql,name); // 总记录数
   int totalPage = PageBean.countTotalPage(pageSize, count); // 总页数
   System.out.println("总页数:--------------"+totalPage);
    int offset = PageBean.countOffset(pageSize,page ); // 当前页开始记录
    int length = pageSize; // 每页记录数
    int currentPage = PageBean.countCurrentPage(page);
    List<movie> list = movieDao.moviePagebyName( name,offset, length); // 该分页的记录
   // 把分页信息保存到Bean中
   PageBean pageBean = new PageBean();
   pageBean.setPageSize(pageSize);
   pageBean.setCurrentPage(currentPage);
   System.out.println("页码:--------------"+currentPage);
   pageBean.setAllRow(count);
   pageBean.setTotalPage(totalPage);
   pageBean.setList(list);
   pageBean.init();
   return pageBean;
}


}
