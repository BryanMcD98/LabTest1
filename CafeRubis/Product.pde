class Product
{
  String name;
  float price;
  
  Product(TableRow row)
  {
    name = row.getString("Name");
    price = row.getFloat("Price");
  }
  
  String toString()
  {
    return name + ", " 
    + price;
  }
  
  void displayProducts(int amount)
  {
  float xborder = width * 0.025;  
  float yborder = width * 0.07;
  float boxLength = width * 0.3;  
  float yValue = (height - (2*yborder)) / (products.size() );
  float boxHeight = yValue - 10;
  stroke(0);
  fill(255);
  rect(xborder, yborder + (yValue * amount) , boxLength, boxHeight);
  
  stroke(0);
  text(products.get(amount).name, xborder + 5, boxHeight,  xborder + 70, boxHeight);
  }
}