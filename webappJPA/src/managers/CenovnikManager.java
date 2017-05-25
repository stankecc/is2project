package managers;

import java.util.*;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import model.*;

public class CenovnikManager {
	
	public List<Cena> getCenovnik() {
		EntityManager em = JPAUtil.getEntityManager();
		Query q = em.createQuery("from Cena c");
		List<Cena> resList = q.getResultList();
		em.close();
		return resList;
	}
	
	public static void main(String[] args){
		CenovnikManager cm = new CenovnikManager();
		List<Cena> l = cm.getCenovnik();
		for(Cena c : l) {
			System.out.println(c.getTipSobe());
		}
	}
}
