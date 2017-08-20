package dao;
import bean.movie; 
import java.util.List;
public interface movieDao {
public List<movie>findMovie(String name);
public List<movie>findMoviebyType(String type);
public movie findMoviebyMid(Integer id);
public movie findMoviebyDeccription(String description);
public int getCountbyType(String type,String hql);//记录查询电影的记录数,用来实现分页查询
public List<movie> moviePagebyType(String type,int offset,int length);
public List<movie> moviePagebyName(String name,int offset,int length);
}
