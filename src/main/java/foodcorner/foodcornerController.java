package foodcorner;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

import foodcorner.cart.Cart;
import foodcorner.cart.CartDao;
import foodcorner.categories.Categories;
import foodcorner.categories.CategoriesDao;
import foodcorner.product.Product;
import foodcorner.product.ProductDao;
import foodcorner.users.Users;
import foodcorner.users.UsersDao;

@Controller
public class foodcornerController {
	// AUTOWIRED CLASSES //
	@Autowired
	CategoriesDao cdao;
	
	@Autowired
	CartDao crtdao;

	@Autowired
	ProductDao pdao;

	@Autowired
	UsersDao udao;

	public String getUser()
	{
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	    if (auth != null && !auth.getName().equals("anonymousUser"))
	    {    
	    	System.out.println(auth.getName());
	    	return auth.getName();
	    }
	    
	    return null;
		
	}
	
	////////////////////////////////////////////////////////////////////////////////////////

	// FORM NORMAL CONTROLS //
	@RequestMapping({ "/", "/index" })
	public String getHome() {
		return "index";
	}
	
	@RequestMapping("/about")
	public String getAbout() {
		return "about";
	}

	
	/*@RequestMapping("/Signup")
	public String getsignup() {
		return "Signup";
	}*/
	@RequestMapping("/contactus")
	public String getContactUs() {
		return "contactus";
	}
	
	@RequestMapping("/products")
	public String getproducts() {
		return "products";
	}
	
	@RequestMapping("/store")
	public String getstore() {
		return "store";
	}
	
	
	//////////////////////////////////////////////////////////////////////////////////////////

	// ADD ELEMENTS //
	@RequestMapping("/AddProduct")
	public ModelAndView AddProduct() {
		ModelAndView mav = new ModelAndView("AddProduct");
		mav.addObject("pro", new Product());
		// pdao.insert(p);
		
		List<String> l = new ArrayList<String>();
		
		for( Categories c : cdao.getCategories() ) {
			l.add(c.getName());
		}
		
		mav.addObject("categories", l);
		
		return mav;

	}

	@RequestMapping("/AddCategory")
	public ModelAndView AddCategory() {
		ModelAndView mav = new ModelAndView("AddCategory");
		mav.addObject("cat", new Categories());
		return mav;
	}

	@RequestMapping("/AddUsers")
	public ModelAndView AddUsers() {
		ModelAndView mav = new ModelAndView("AddUsers");
		mav.addObject("usern", new Users());
		return mav;
	}

	///// UPDATE ELEMENTS//////

	/////UPDATE USERS //////

	@RequestMapping("/UpdateUsersFromDB")
	public ModelAndView UpdateUsersFromDB(@RequestParam("id") int id) {
		ModelAndView mav = new ModelAndView("UpdUsers");
		Users UsersOb = udao.getUsers(id);
		mav.addObject("usr", UsersOb);
		return mav;
	}

	@RequestMapping("/UpdatedUsersToDB")
	public String UpdateUsers(@ModelAttribute("usr") Users ob) {
		System.out.println("Hello....");
		udao.update(ob);
		return "redirect:/ViewUsers";
	}
	
	/////  UPDATE CATEGORY/////

	@RequestMapping("/UpdateCategoryFromDB")
	public ModelAndView UpdateCategoryFromDB(@RequestParam("id") int id) {
		ModelAndView mav = new ModelAndView("UpdCategory");
		Categories CategoriesOb = cdao.getCategories(id);
		mav.addObject("ctg", CategoriesOb);
		return mav;
	}

	@RequestMapping("/UpdatedCategoryToDB")
	public String UpdateCategory(@ModelAttribute("ctg") Categories ob) {
		System.out.println("Hello....");
		cdao.update(ob);
		return "redirect:/ViewCategory";
	}

	////// UPDATE //////
	@RequestMapping("/UpdateProductFromDB")
	public ModelAndView UpdateProductFromDB(@RequestParam("id") int pid) {
		ModelAndView mav = new ModelAndView("UpdProduct");
		Product ProductOb = pdao.getProduct(pid);
		mav.addObject("prd", ProductOb);
		return mav;
	}

	@RequestMapping("/UpdatedProductToDB")
	public String UpdateProduct(@ModelAttribute("prd") Product ob) {
		System.out.println("Hello....");
		pdao.update(ob);
		return "redirect:/ViewProduct";
	}

	///// DELETE ELEMENTS /////

	@RequestMapping("/DeleteCategoryFromDB")
	public String DeleteCategoryFromDB(@RequestParam("id") int id) {

		cdao.delete(id);
		return "redirect:/ViewCategory";
	}

	@RequestMapping("/DeleteProductFromDB")
	public String DeleteProductFromDB(@RequestParam("id") int id) {

		pdao.delete(id);
		return "redirect:/ViewProduct";
	}

	@RequestMapping("/DeleteUsersFromDB")
	public String DeleteUsersFromDB(@RequestParam("id") int id) {
		udao.delete(id);
		return "redirect:/ViewUsers";
	}

	////////////////////////////////////////////////////////////////////////////////////////

	// VIEW ELEMENTS //
	@RequestMapping("/ViewCategory")
	public ModelAndView ViewCategory() {
		ModelAndView mav = new ModelAndView("ViewCategory");
		mav.addObject("catlist", cdao.getCategories());
		return mav;
	}

	@RequestMapping("/ViewProduct")
	public ModelAndView ViewProduct() {
		ModelAndView mav = new ModelAndView("ViewProduct");
		mav.addObject("prolist", pdao.getProduct());
		return mav;
	}

	@RequestMapping("/ViewUsers")
	public ModelAndView ViewUsers() {
		ModelAndView mav = new ModelAndView("ViewUsers");
		mav.addObject("usernlist", udao.getUsers());
		return mav;
	}

	///////////////////////////////////////////////////////////////////////////////////////

	// ADD ELEMENTS TO DB //

	@RequestMapping(value = "/AddCategoryToDB", method = RequestMethod.POST)
	public String AddCategoryToDB(@ModelAttribute("cat") Categories c) {

		cdao.insert(c);
		return "redirect:/ViewCategory";
	}
	
	@RequestMapping(value = "/AddProductToCart", method = RequestMethod.POST)
	public ModelAndView AddProductToCart( @RequestParam("id") int id , @RequestParam("qty") int qty ) {

		ModelAndView mav = new ModelAndView( "redirect:/thecart" );
		
		Cart ca = new Cart();
		
		ca.setCartproductid(id);
		ca.setCartquantity(qty);
		
		ca.setCartuseremail(getUser());
		
		crtdao.insert(ca);
		
		return mav;
	}
	
	@RequestMapping(value = "/SingleProduct", method = RequestMethod.GET)
	public ModelAndView SingleProduct( @RequestParam("id") int id ) {

		ModelAndView mav = new ModelAndView( "SingleProduct" );
		
		mav.addObject("sprod", pdao.getProduct(id));
		
		return mav;
	}

	@RequestMapping(value = "/AddProductToDB", method = RequestMethod.POST)
	public String AddProductToDB(@ModelAttribute("pro") Product p, @RequestParam CommonsMultipartFile file,
			HttpSession session) {
		pdao.insert(p);

		String path = session.getServletContext().getRealPath("/");
		String filename = file.getOriginalFilename();

		System.out.println(path + " " + filename);
		try {
			byte barr[] = file.getBytes();

			BufferedOutputStream bout = new BufferedOutputStream(
					new FileOutputStream(path + "./resources" + "/" + p.getId() + ".jpg"));
			bout.write(barr);
			bout.flush();
			bout.close();
		} catch (Exception e) {
			System.out.println(e);
		}
		p.setImageUrl("./resources" + "/" + p.getId() + ".jpg");
		pdao.update(p);
		return "redirect:/ViewProduct";
	}

	@RequestMapping(value = "/AddUsersToDB", method = RequestMethod.POST)
	public String AddUsersToDB(@ModelAttribute("usern") Users u) {
		udao.insert(u);
		return "redirect:/ViewUsers";
	}

	//////////////////////////////////////////////////////////////////////////////////////

	// NORMAL CONTROLS //
	@RequestMapping({ "registration" })
	public String getform1() {
		return "registration";
	}

	@RequestMapping("/login")
	public String getlogin() {
		return "login";
	}

}
