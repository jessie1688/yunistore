package dao;
import model.Product;
import java.sql.*;
import java.util.*;
public class ProductDAO {
  public List<Product> findAll(){
    List<Product> list = new ArrayList<>();
    try (Connection conn = DriverManager.getConnection(...);
         PreparedStatement ps = conn.prepareStatement("SELECT * FROM products");
         ResultSet rs = ps.executeQuery()){
      while(rs.next()){
        Product p = new Product();
        p.setPid(rs.getInt("pid"));
        p.setName(rs.getString("name"));
        p.setPrice(rs.getDouble("price"));
        p.setStock(rs.getInt("stock"));
        p.setImg(rs.getString("img"));
        list.add(p);
      }
    }catch(Exception e){ e.printStackTrace(); }
    return list;
  }
}
