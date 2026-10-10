package com.codegym.service;

import com.codegym.model.Product;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ProductServiceImpl implements ProductService {
    private static final Map<Integer, Product> products = new HashMap<>();

    static {
        products.put(1, new Product(1, "Laptop Dell XPS 13", 25990000, "Laptop mỏng nhẹ, hiệu năng cao cho công việc và học tập."));
        products.put(2, new Product(2, "iPhone 15 Pro", 31990000, "Điện thoại hiện đại với màn hình OLED và chip mạnh mẽ."));
        products.put(3, new Product(3, "Tai nghe Sony WH-1000XM5", 7490000, "Tai nghe chống ồn tốt, âm thanh rõ nét."));
        products.put(4, new Product(4, "Máy ảnh Canon EOS R10", 28990000, "Máy ảnh mirrorless cho nhiếp ảnh gia đình và chuyên nghiệp."));
        products.put(5, new Product(5, "Apple Watch Series 9", 10990000, "Đồng hồ thông minh hỗ trợ theo dõi sức khỏe và thông báo."));
    }

    @Override
    public List<Product> findAll() {
        return new ArrayList<>(products.values());
    }

    @Override
    public void save(Product product) {
        products.put(product.getId(), product);
    }

    @Override
    public Product findById(int id) {
        return products.get(id);
    }

    @Override
    public void update(int id, Product product) {
        products.put(id, product);
    }

    @Override
    public void remove(int id) {
        products.remove(id);
    }
}
