package service;

import model.Product;

import java.util.ArrayList;
import java.util.List;

public class ProductServiceImpl implements ProductService {
    private static List<Product> products;

    static {
        products = new ArrayList<>();
        products.add(new Product(1, "Iphone 12pro", 1200, "White", "Apple", "img/12prowhite.jpg"));
        products.add(new Product(2, "Iphone XS", 500, "Gold", "Apple", "img/ipXsGold.jpg"));
        products.add(new Product(3, "SamSung Z Fold 3", 2000, "Silver", "SamSung", "img/ssZFold3.jpg"));
        products.add(new Product(4, "Huawei Mate X2", 2200, "BlueSea", "Huawei", "img/huaweiMateX.jpg"));
    }

    @Override
    public List<Product> findAll() {
        return products;
    }

    @Override
    public void save(Product product) {
        products.add(product);
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
        products.set(index, product);
    }

    @Override
    public void delete(int index) {
        products.remove(index);
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
