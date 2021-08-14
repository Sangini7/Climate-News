import 'package:newsapp/models/category_model.dart';

List<CategoryModel> getCategories() {
  List<CategoryModel> categoryList = <CategoryModel>[];
  CategoryModel catmodel1 = new CategoryModel(
      imageURL:
          'https://images.unsplash.com/photo-1552799446-159ba9523315?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80',
      categoryName: 'Forest');
  CategoryModel catmodel2 = new CategoryModel(
      imageURL:
          'https://images.unsplash.com/photo-1525695230005-efd074980869?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1868&q=80',
      categoryName: 'Sustainable');
  CategoryModel catmodel3 = new CategoryModel(
      imageURL:
          'https://images.unsplash.com/photo-1604187351574-c75ca79f5807?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80',
      categoryName: 'Recycle');
  CategoryModel catmodel4 = new CategoryModel(
      imageURL:
          'https://images.unsplash.com/photo-1603782637810-95d06f1d5663?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80',
      categoryName: 'Fires');
  CategoryModel catmodel5 = new CategoryModel(
      imageURL:
          'https://images.unsplash.com/photo-1587502537815-0c8b5c9ba39a?ixid=MnwxMjA3fDF8MHxzZWFyY2h8MXx8c3VzdGFpbmFibGV8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60',
      categoryName: 'Environment');

  categoryList.add(catmodel1);
  categoryList.add(catmodel2);
  categoryList.add(catmodel3);
  categoryList.add(catmodel4);
  categoryList.add(catmodel5);

  return categoryList;
}
