package service;

import model.Product;

import java.util.List;

public interface ProductService {
    List<Product> findAll();

    void save(Product product);

    int findById(int id);

    void update(int index, Product product);

    void delete(int id);

    List<Product> findListByName(String name);
}
