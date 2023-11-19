import React, { useState, useEffect } from 'react';

const ProductList = ({ categoryId }) => {
  const [products, setProducts] = useState([]);

  useEffect(() => {
    // Fetch products by category from the backend
    // Update the state with the received products
  }, [categoryId]);

  return (
    <div>
      <h2>Products</h2>
      <ul>
        {products.map(product => (
          <li key={product.id}>{product.name}</li>
        ))}
      </ul>
    </div>
  );
};

export default ProductList;
