package com.GhantaSpring.neww.Repo;

import com.GhantaSpring.neww.model.Item;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;


@Repository
public interface itemRepo extends JpaRepository<Item,String> {







}
