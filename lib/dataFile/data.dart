import 'package:news_app/models/category_model.dart';

List<CategoryModel> getCategories(){

  List<CategoryModel> category = new List<CategoryModel>();
  CategoryModel categoryModel = new CategoryModel();

  //1
  categoryModel = new CategoryModel();
  categoryModel.categoryName = "technology";
  categoryModel.imageURL = "https://images.unsplash.com/photo-1526374965328-7f61d4dc18c5?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80";
  category.add(categoryModel);

  //2
  categoryModel = new CategoryModel();
  categoryModel.categoryName = "science";
  categoryModel.imageURL = "https://images.unsplash.com/photo-1581093588401-fbb62a02f120?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80";
  category.add(categoryModel);

  //3
  categoryModel = new CategoryModel();
  categoryModel.categoryName = "Business";
  categoryModel.imageURL = "https://images.unsplash.com/photo-1450101499163-c8848c66ca85?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80";
  category.add(categoryModel);

  //4
  categoryModel = new CategoryModel();
  categoryModel.categoryName = "sports";
  categoryModel.imageURL = "https://images.unsplash.com/photo-1540747913346-19e32dc3e97e?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1167&q=80";
  category.add(categoryModel);

  //5
  categoryModel = new CategoryModel();
  categoryModel.categoryName = "Entertainment";
  categoryModel.imageURL = "https://images.unsplash.com/photo-1499364615650-ec38552f4f34?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=966&q=80";
  category.add(categoryModel);

  //6
  categoryModel = new CategoryModel();
  categoryModel.categoryName = "General";
  categoryModel.imageURL = "https://images.unsplash.com/photo-1489533119213-66a5cd877091?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1051&q=80";
  category.add(categoryModel);

  //7
  categoryModel = new CategoryModel();
  categoryModel.categoryName = "Health";
  categoryModel.imageURL = "https://images.unsplash.com/photo-1477332552946-cfb384aeaf1c?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80";
  category.add(categoryModel);

  return category;

}