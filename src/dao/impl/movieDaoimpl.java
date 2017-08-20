package dao.impl;

import java.util.List;

import javax.management.Query;

import org.apache.struts2.ServletActionContext;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import dao.movieDao;
import bean.movie;

public class movieDaoimpl extends HibernateDaoSupport implements movieDao {

	SessionFactory factory;

	public SessionFactory getFactory() {
		return factory;
	}

	public void setFactory(SessionFactory factory) {
		this.factory = factory;
	}

	public List<movie> findMovie(String name) {
		String sql = "from movie m  where m.description like? group by m.description  ";
		@SuppressWarnings("unchecked")
		List<movie> list = (List<movie>) this.getHibernateTemplate().find(sql,
				"%" + name + "%");
		return list;
	}

	public List<movie> findMoviebyType(String type) {
		String sql = "from movie m  where m.type like? group by m.type  ";
		@SuppressWarnings("unchecked")
		List<movie> list = (List<movie>) this.getHibernateTemplate().find(sql,
				"%" + type + "%");
		return list;
	}

	@Override
	public movie findMoviebyMid(Integer id) {
		// String hql="from movie m  where m.Mid =? group by m.Mid  ";
		movie movie1 = (movie) this.getHibernateTemplate().get(movie.class, id);
		
		return movie1;
	}

	@Override
	public movie findMoviebyDeccription(String description) {
		String hql = "from movie m where m.description like? group by m.description";
		movie movie1 = (movie) this.getHibernateTemplate()
				.find(hql, description + "%").get(0);
		return movie1;
	}

	@Override
	public int getCountbyType(String hql, String type) {
		@SuppressWarnings("unchecked")
		List<movie> list = (List<movie>) this.getHibernateTemplate().find(hql,
				"%" + type + "%");

		System.out.println("总电影记录:"+list.size());

		return list.size();

	}

	@SuppressWarnings("unchecked")
	@Override
	public List<movie> moviePagebyType(String type, int offset, int length) {
		System.out.println("执行分页查询前");
		
		System.out.println("offset:"+offset);
		Session session = this.getHibernateTemplate().getSessionFactory()
				.openSession();
		org.hibernate.Query query = session
				.createQuery("from movie m where m.type like:type group by m.type  ");
		query.setString("type", "%"+type+"%"); 
		//query.setParameter("type", type);
		int startRow = offset;
		System.out.println("startRow:"+startRow);
		query.setFirstResult(startRow);
		query.setMaxResults(length);
		List<movie> movie = query.list();
		//List<movie> movie=(List<movie>) this.getHibernateTemplate().find("from movie m where m.type like ? group by m.type  ",
				//"%" + type + "%");
		System.out.println("size:"+query.list().size());
		session.close();
		return movie;

	}

	@Override
	public List<movie> moviePagebyName(String name, int offset, int length) {
System.out.println("执行分页查询前");
		
		System.out.println("offset:"+offset);
		Session session = this.getHibernateTemplate().getSessionFactory()
				.openSession();
		org.hibernate.Query query = session
				.createQuery("from movie m where m.description like:description group by m.description  ");
		query.setString("description", "%"+name+"%"); 
		//query.setParameter("type", type);
		int startRow = offset;
		System.out.println("startRow:"+startRow);
		query.setFirstResult(startRow);
		query.setMaxResults(length);
		List<movie> movie = query.list();
		//List<movie> movie=(List<movie>) this.getHibernateTemplate().find("from movie m where m.type like ? group by m.type  ",
				//"%" + type + "%");
		System.out.println("size:"+query.list().size());
		session.close();
		return movie;
	}

}
