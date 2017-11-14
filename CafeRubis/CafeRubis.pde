void setup()
{
  size(800, 600);
  
  loadData();
  printProducts();
}


ArrayList<Product> products = new ArrayList<Product>(); 

ArrayList<Product> bill = new ArrayList<Product>(); 


void loadData()
{
  Table table = loadTable("cafe.csv", "header");
  
 for(TableRow r:table.rows())
  {
    Product product = new Product(r);
    products.add(product);
  }

}


void printProducts()
{
  
  for(Product p:products)
  {
    println(p);
  }
}


void displayProducts(int amount)
{
  float xborder = width * 0.025;  
  float yborder = height * 0.07;
  float boxLength = width * 0.3;  
  float yValue = (height - (2*yborder)) / (products.size() );
  float boxHeight = yValue - 10;
  stroke(0);
  fill(255);
  rect(xborder, yborder + (yValue * amount) , boxLength, boxHeight);
  
  fill(0);
  textSize(11);
  textAlign(LEFT);
  text(products.get(amount).name, xborder + 5, yborder + (yValue * amount) + (boxHeight/2) );
  
  
  textAlign(RIGHT);
  text(products.get(amount).price, xborder + boxLength - 5, yborder + (yValue * amount) + (boxHeight/2) );
}


void mousePressed()
{
  for(int i = 0 ; i < products.size() ; i ++)
  {
    Product product = products.get(i);
    
  }  
}

void displayBill()
{
  float xborder = width * 0.6;  
  float yborder = height * 0.07;
  float boxLength = width * 0.35;  
  float boxHeight = height - (2*yborder);
  stroke(0);
  fill(255);
  rect(xborder, yborder, boxLength, boxHeight);
  
  fill(0);
  textSize(11);
  textAlign(CENTER);
  text("Your Bill", xborder + (boxLength/2), yborder + 20);
  
}

void draw()
{
  background(175);
  fill(0);
  textAlign(CENTER);
  textSize(20);
  text("Cafe Rubis", width/2, 30);
  line(width/2, 45, width/2, height - 40);
  for(int i = 0; i < products.size(); i++)
  {
    displayProducts(i);
    displayBill();
  }
}