// CategoryPage.jsx
import React from 'react';
import ProductList from '../components/ProductList';
import ProductForm from '../components/ProductForm';

const CategoryPage = ({ categoryId }) => {
  return (
    <div>
      <h1>Category Page</h1>
      <ProductList categoryId={categoryId} />
      <ProductForm categoryId={categoryId} />
    </div>
  );
};

export default CategoryPage;
