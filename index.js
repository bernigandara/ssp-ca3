function readXML() {
    // Parse the XML file
    var request = new XMLHttpRequest();
    request.open("GET", "menu.xml", false);
    request.send(null);
    var xml = request.responseXML;
  
    // Get the table element
    var table = document.getElementById("productTable");
  
    // Get the <product> elements from the XML
    var products = xml.getElementsByTagName("product");
  
    // Iterate over the <product> elements and create table rows
    for (var i = 0; i < products.length; i++) {
      var product = products[i];
  
      // Get the product details from the XML
      var listing = product.getElementsByTagName("listing")[0].firstChild.nodeValue;
      var price = product.getElementsByTagName("price")[0].firstChild.nodeValue;
      var sizes = product.getElementsByTagName("sizes")[0].firstChild.nodeValue;
      var colors = product.getElementsByTagName("colors")[0].firstChild.nodeValue;
  
      // Create a new row
      var row = table.insertRow(-1);
  
      // Insert cells into the row
      var listingCell = row.insertCell(0);
      var priceCell = row.insertCell(1);
      var sizesCell = row.insertCell(2);
      var colorsCell = row.insertCell(3);
  
      // Set the cell values
      listingCell.innerHTML = listing;
      priceCell.innerHTML = "$" + price;
      sizesCell.innerHTML = sizes;
      colorsCell.innerHTML = colors;
    }
  }
  