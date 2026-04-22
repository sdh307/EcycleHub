package com.GhantaSpring.neww.controller;

import com.GhantaSpring.neww.model.Item;
import com.GhantaSpring.neww.service.ItemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class myController {

    @Autowired
    private ItemService service;

    @RequestMapping("home")
    public String home(){
        return "home";
    }

    @GetMapping("addItem")
    public String donateItems(){
        return "additem";
    }


    @GetMapping("details")
    public String details(){

        return "details";
    }



    @PostMapping("success")
    public String submitItem(@ModelAttribute("itemPost") Item item, Model model) {
        if (item == null) {
            System.out.println("Item object is NULL!");
        } else {
            System.out.println("Item received: " + item);
        }


        model.addAttribute("itemPost", item);

        service.addItem(item);

        return "success";
    }


    @GetMapping("allItem")
    public String allItems(Model m){

        List<Item> items = service.getItems();
        m.addAttribute("items", items);

        return "allitem";
    }




}
