package service;
import java.util.List;

import bean.PageBean;
import bean.movie; 
public interface movieService {
public List<movie>findMovie(String name);
public List<movie>findMoviebyType(String type);
public movie findMoviebyMid(Integer id);
public movie findMoviebyDescription(String description);
public PageBean findMoviesbyType(String type,int pageSize, int currentPage);
public PageBean findMoviesbyName(String name,int pageSize, int currentPage);
}
