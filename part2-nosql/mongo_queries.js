const collection = db.products;

// OP1: insertMany() — insert all 3 documents
collection.insertMany([
  {
    product_id: "E1001",
    name: "TV X",
    category: "Electronics",
    price: 45000,
    brand: "Kumar",
    specifications: {
      ram: "8GB",
      storage: "128GB",
      voltage: "220V"
    },
    warranty_years: 2,
    features: ["5G", "OLED Display", "Fast Charging"]
  },
  {
    product_id: "C2001",
    name: "Kid's T-Shirt",
    category: "Clothing",
    price: 499,
    brand: "Puma",
    sizes: ["S", "M", "L", "XL"],
    material: "Silk",
    colors: ["White", "Blue", "Black"]
  },
  {
    product_id: "G3001",
    name: "Organic Eggs",
    category: "Groceries",
    price: 150,
    brand: "ChickenFarm",
    expiry_date: "2024-12-20",
    nutritional_info: {
      calories: 150,
      protein: "8g",
      fat: "5g"
    },
    tags: ["organic", "eggs"]
  }
]);

// OP2: find() — retrieve all Electronics products with price > 20000
collection.find({
  category: "Electronics",
  price: { $gt: 20000 }
});

// OP3: find() — retrieve all Groceries expiring before 2025-01-01
collection.find({
  category: "Groceries",
  expiry_date: { $lt: "2025-01-01" }
});

// OP4: updateOne() — add a "discount_percent" field
collection.updateOne(
  { product_id: "E1001" },
  { $set: { discount_percent: 20 } }
);

// OP5: createIndex() — create an index on category field
collection.createIndex({ category: 1 });

// Reason:
// Creating an index on the category field improves query performance
// when filtering products, especially for large datasets.
