package com.torryharris.Freshworldgrocery.controller;

import com.torryharris.Freshworldgrocery.model.Product;
import com.torryharris.Freshworldgrocery.service.ProductService;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;


@Controller

public class ProductController {


    @Autowired
    private ProductService productService;

    private final Logger LOG = LoggerFactory.getLogger(this.getClass());

    @GetMapping("/productlist")
    public List<Product> productlist() {
        LOG.info("productlist");
        return productService.getAllProducts();
    }

    @GetMapping("/getproductname/{name}")
    public List<Product> getProductByName(@PathVariable(name = "name") String name) {
        LOG.info("getProductByName " + name);
        return productService.getProductByName(name);
    }

    @GetMapping("/getProductpc/{pc}")
    public List<Product> getProductByPc(@PathVariable(name = "pc") int pc) {
        LOG.info("getProductByPc " + pc);
        return productService.getProductByPc(pc);
    }

    @PostMapping("/addproduct")
    public Product addProduct(@RequestBody Product product) {
        return productService.addProduct(product);
    }

    @PutMapping("/updateproduct")
    public Product updateEmployee(@RequestBody Product product) {
        return productService.updateProduct(product);
    }

    @DeleteMapping("/deleteproduct/{pc}")
    public Product deleteProduct(@PathVariable(name = "pc") int pc) {
        LOG.info("deleteproduct" + pc);
        return productService.deleteProduct(pc);
    }

    @RequestMapping("/login")
    public String login1() {
        return "login1";
    }
    @RequestMapping("signup1")
    public String signup1() {
        return "signup1";
    }
    @RequestMapping("login1")
    public String login() {
        return "login1";
    }
    @RequestMapping("home")
    public String home() {
        return "home";
    }
    @RequestMapping("shop")
    public String shop() {
        return "shop";
    }
    @RequestMapping("contact")
    public String contact() {
        return "contact";
    }
    @RequestMapping("vegetables")
    public String vegetables() {
        return "vegetables";
    }
    @RequestMapping("fruits")
    public String fruits() {
        return "fruits";
    }
    @RequestMapping("fgs")
    public String fgs() {
        return "fgs";
    }
    @RequestMapping("test")
    public String test() {
        return "test";
    }
    @RequestMapping("testcart")
    public String testcart() {
        return "testcart";
    }
    @RequestMapping("display1")
    public String display1() {
        return "display";
    }
}

