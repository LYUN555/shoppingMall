package com.example.first.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.first.service.CustomerService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class CustomerController {
	@Autowired
	private CustomerService customerService;
	
	@GetMapping("/customer/customerOne")
	public String customerOne(Model model,@RequestParam String customerMail) {
		
		Map<String, Object> cutomer = customerService.getCutomerOne(customerMail);
		log.debug("customer : "+cutomer);
		model.addAttribute("cutomer",cutomer);
		
		return "customer/customerOne";
	}

}