package pro.dao;

    import java.util.List;
    import org.springframework.stereotype.Component;


    import jakarta.persistence.EntityManager;
	import jakarta.persistence.EntityManagerFactory;
	import jakarta.persistence.EntityTransaction;
	import jakarta.persistence.Persistence;
    import pro.Entity.Product;
	@Component
	public class ProductDoa {
		EntityManagerFactory emf=Persistence.createEntityManagerFactory("dev");
		EntityManager em = emf.createEntityManager();
		EntityTransaction et = em.getTransaction();
		
		
		
		public void save(Product product) {
		et.begin();
		em.merge(product);
		et.commit();
	}

	public List<Product> fetchProducts() {
		return em.createNativeQuery("select * from Product",Product.class).getResultList();
			}

	
	public Product findById(Long id) {
		return em.find(Product.class,id);
	}

	public void deleteById(Long id) {
		Product product=findById(id);
		et.begin();
		em.remove(product);
		et.commit();
	}
	public void update(Product product) {
		et.begin();
		em.merge(product);
		et.commit();
		}
	}
