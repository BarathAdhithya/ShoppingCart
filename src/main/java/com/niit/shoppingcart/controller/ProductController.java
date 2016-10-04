package com.niit.shoppingcart.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.niit.shoppingcart.dao.CategoryDAO;
import com.niit.shoppingcart.dao.ProductDAO;
import com.niit.shoppingcart.dao.SupplierDAO;
import com.niit.shoppingcart.model.Product;

@Controller
public class ProductController {


		@Autowired
	 ProductDAO productDAO;
		@Autowired
		 CategoryDAO categoryDAO;
		@Autowired
		 SupplierDAO supplierDAO;
		@RequestMapping(value="/Product",method = RequestMethod.GET)
		public ModelAndView landPage(@ModelAttribute("product")Product product,BindingResult result,Model model)
		{
			ModelAndView mv=new ModelAndView("/Product");
			mv.addObject("userclickedproduct", "true");
			mv.addObject("allData",productDAO.list());
			mv.addObject("allCategory",categoryDAO.list());
			mv.addObject("allSupplier",supplierDAO.list());
			return mv;
			
		}
		 
		/*@RequestMapping(value="/allData")
		public String getAllData(@ModelAttribute("product")Product product,BindingResult result,Model model)
		{

		
			model.addAttribute("allData",productDAO.list());
+			return "Product";
		}*/
	@RequestMapping(value="/addproduct")
	public String addItem(@ModelAttribute("product") Product p){
			
			productDAO.saveOrUpdate(p);
			return "redirect:/Product";
			
		}
		@RequestMapping(value="/ItemByproduct/{id}")
		public String editItem(@PathVariable("id") int id,RedirectAttributes redirectAttributes)
		{
			redirectAttributes.addFlashAttribute("product", this.productDAO.get(id));
			return "redirect:/Product";
			
	}
		@RequestMapping(value="/deleteproduct/{id}")
		public String deleteItem(@PathVariable("id") int id,Product product)
		{
			productDAO.delete(product);
			return "redirect:/Product";
			
	}
	}