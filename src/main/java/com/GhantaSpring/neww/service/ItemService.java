package com.GhantaSpring.neww.service;

import com.GhantaSpring.neww.model.Item;
import com.GhantaSpring.neww.Repo.itemRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
public class ItemService {

    @Autowired
    private itemRepo repo;


    public void addItem(Item items){
        repo.save(items);
        System.out.println(items);

    }

    public List<Item> getItems() {

        return repo.findAll();
    }
}
