package ru.netology.projectjdbc.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import ru.netology.projectjdbc.repository.JdbcRepository;

import java.util.List;
import java.util.Map;

@RestController
public class JdbcController {
    JdbcRepository jdbcRepository;
    public JdbcController(JdbcRepository jdbcRepository){
        this.jdbcRepository = jdbcRepository;
    }
    @GetMapping("/products/fetch-product")
    public List<Map<String, Object>> getSql(@RequestParam String name) {
        return jdbcRepository.getProductName(name);
    }


}
