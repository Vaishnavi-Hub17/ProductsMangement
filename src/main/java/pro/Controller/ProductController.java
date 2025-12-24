package pro.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;


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
	@GetMapping("/delete")
	public String delete(@RequestParam("id")Long id, ModelMap map) {
		productDoa.deleteById(id);
		map.put("message", "Record Deleted Success");
		return "main.jsp";
	}
	@GetMapping("/edit")
	public String loadEdit(@RequestParam("id")Long id, ModelMap map) {
		Product product=productDoa.findById(id);
		map.put("product", product);
		return "edit.jsp";
	}

	@PostMapping("/update")
	public String update(Product product,ModelMap map) {
		productDoa.update(product);
		map.put("message", "Data Updated Success");
		return "main.jsp";
}
}
