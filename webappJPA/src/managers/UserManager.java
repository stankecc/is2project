package managers;

import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.persistence.EntityManager;
import javax.persistence.FlushModeType;
import javax.persistence.LockModeType;
import javax.persistence.Parameter;
import javax.persistence.Query;
import javax.persistence.TemporalType;
import javax.persistence.TypedQuery;

import model.Klijent;
import model.User;

public class UserManager {
	
	public User saveUser(String email, String pass) {
		try {
			EntityManager em = JPAUtil.getEntityManager();
			em.getTransaction().begin();
			User user = new User();
			user.setEmail(email);
			user.setPass(pass);
			//user.setKlijents(null);
			
			em.persist(user);
			em.getTransaction().commit();
			return user;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	
	public User getUserForEmailAndPw(String email, String pw) {
		EntityManager em = JPAUtil.getEntityManager();
		Query query = em.createQuery("select u from User u where u.email = :email and u.pass = :pw");
		query.setParameter("email", email).setParameter("pw", pw);
		List<User> resList = query.getResultList();
		if(resList.size() == 0) {
			return null;
		} else {
			return resList.get(0);
		}
	}
	
	public static void main(String [] args) {
//		UserManager um = new UserManager();
//		User u = um.saveUser("superadmin@hotel.com", "superadmin");
//		System.out.println(u.getEmail()+" "+u.getPass());
		
//		User u = um.login("superadmin", "superadmin");
//		if(u != null) {
//			System.out.println(u.getEmail());
//		} else {
//			System.out.println("jok");
//		}
		
	}
}
