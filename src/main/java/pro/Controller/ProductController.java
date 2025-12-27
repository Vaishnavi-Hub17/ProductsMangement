package pro.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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
	public String add(Product product,RedirectAttributes attributes) {
		productDoa.save(product);
		attributes.addFlashAttribute("message", "Data Added Success");
		return "redirect:/add";
	}

	@GetMapping("/manage")
	public String viewManage(ModelMap map){
		map.put("products", productDoa.fetchProducts());
		return "view.jsp";
	}
	@GetMapping("/delete")
	public String delete(@RequestParam("id")Long id, RedirectAttributes attributes) {
		productDoa.deleteById(id);
		attributes.addFlashAttribute("message", "Record Deleted Success");
		return "redirect:/manage";
	}
	@GetMapping("/edit")
	public String loadEdit(@RequestParam("id")Long id, ModelMap map) {
		Product product=productDoa.findById(id);
		map.put("product", product);
		return "edit.jsp";
	}
@PostMapping("/update")
	public String update(Product product,RedirectAttributes attributes) {
		productDoa.update(product);
		attributes.addFlashAttribute("message", "Data Updated Success");
		return "redirect:/manage";
}
}
