package service;

import dao.ProductDao;
import model.Product;

import java.util.ArrayList;
import java.util.List;

public class ProductServiceImpl implements ProductService {
    private static List<Product> products = ProductDao.getAllProduct();


    @Override
    public List<Product> findAll() {
        return products;
    }

    @Override
    public void save(Product product) {
        ProductDao.saveProduct(product);
        products = ProductDao.getAllProduct();
    }

    @Override
    public int findById(int id) {
        int index ;
        for (int i = 0; i < products.size(); i++) {
            if (products.get(i).getId() == id) {
                index = i;
                return index;
            }
        }
        return -1;
    }

    @Override
    public void update(int index, Product product) {
        ProductDao.editProduct(products.get(index).getId(), product);
        products = ProductDao.getAllProduct();
    }

    @Override
    public void delete(int index) {
        ProductDao.deleteProduct(products.get(index).getId());
        products = ProductDao.getAllProduct();
    }

    @Override
    public List<Product> findListByName(String name) {
        List<Product> searchProducts = new ArrayList<>();
        for (int i = 0; i < products.size(); i++) {
            if(products.get(i).getName().contains(name)) {
                searchProducts.add(products.get(i));
            }
        }
        return searchProducts;
    }
}
