<%@ page contentType="text/html; charset=UTF-8" %>
<html><head><title>芋泥store</title></head><body>
<h1>芋泥store 甜點小舖</h1>
<form action="SearchServlet" method="get">
  <input name="kw" placeholder="搜尋甜點...">
  <button>搜尋</button>
</form>
<!-- 示意：顯示商品 -->
<%
  List<Product> list = new dao.ProductDAO().findAll();
  for(Product p : list){
%>
  <div>
    <a href="product.jsp?pid=<%=p.getPid()%>">
      <img src="images/<%=p.getImg()%>" width="100">
      <p><%=p.getName()%></p>
      <p>NT$<%=p.getPrice()%></p>
    </a>
  </div>
<% } %>
</body></html>
