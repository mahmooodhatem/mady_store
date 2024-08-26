import 'dart:core';
import 'package:dio/dio.dart';
import 'package:untitled6/products_model.dart';



class ApiProvider {
  ProductsModel? productsList;
  List<dynamic>? categoryList;

  getProduct() async{
    Response resposne = await Dio().get("https://dummyjson.com/products",
        queryParameters: {
          "select": "id,title,description,category,price,thumbnail"
        }
    );
    productsList = ProductsModel.fromJson(resposne.data);
    print("************");
    print(productsList!.products?[0].title);
    return productsList;
  }
  getCategoryList() async{
    try {
      Response resposne = await Dio().get(
        "https://dummyjson.com/products/category-list",
      );
      categoryList = resposne.data;
      print("************");
      print(categoryList!);
      return categoryList;
    }catch(e){
      print(e.toString());
      return null;
    }
  }
   getProductFromList(String category) async{
    Response resposne = await Dio().get("https://dummyjson.com/products/category/$category",
    );
    productsList = ProductsModel.fromJson(resposne.data);
    print("************");
    print(productsList!.products?[0].title);
    return productsList;
  }
}