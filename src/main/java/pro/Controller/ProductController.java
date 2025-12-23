package pro.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import pro.Entity.Product;
import pro.dao.ProductDoa;

@Controller
public class ProductController {
	 
		@Autowired
		ProductDoa productDoa;
		
	@GetMapping ("/")
	public String loadMain(){
		return "main.jsp";
	}
	@GetMapping("/add")
	public String loadAdd(){
		return "add.jsp";
	}
	@PostMapping("/add")
	public String add(Product product,ModelMap map) {
		productDoa.save(product);
		map.put("message", "Data Added Success");
		return "main.jsp";
	}

	@GetMapping("/manage")
	public String viewManage(ModelMap map){
		map.put("products", productDoa.fetchProducts());
		return "view.jsp";
	}
}
