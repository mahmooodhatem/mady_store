import 'dart:core';
import 'package:dio/dio.dart';
import 'package:untitled6/bags_model.dart';
import 'package:untitled6/beauty_model.dart';
import 'package:untitled6/fragrsnces_model.dart';
import 'package:untitled6/furniture_model.dart';
import 'package:untitled6/groceries_model.dart';
import 'package:untitled6/home_model.dart';
import 'package:untitled6/home_page.dart';
import 'package:untitled6/kitchen_model.dart';
import 'package:untitled6/laptop_model.dart';
import 'package:untitled6/mobile_model.dart';
import 'package:untitled6/motorrcycle_model.dart';
import 'package:untitled6/products_model.dart';
import 'package:untitled6/shirts_model.dart';
import 'package:untitled6/shoes_model.dart';
import 'package:untitled6/skin_model.dart';
import 'package:untitled6/smart_model.dart';
import 'package:untitled6/sports_model.dart';
import 'package:untitled6/sun_model.dart';
import 'package:untitled6/tablet_model.dart';
import 'package:untitled6/top_model.dart';
import 'package:untitled6/vehicles.dart';
import 'package:untitled6/watches_model.dart';

class ApiProvider {
  ProductsModel? productsList;

  BeautyModel? beautyList;

  FragrancesModel? fragrancesList;

  FurnitureModel? furnitureList;

  GroceriesModel? groceriesList;

  HomeModel? homeList;

  KitchenModel? kitchenList;

  LaptopsModel? laptopsList;

  ShirtsModel? shirtsList;

  ShoesModel? shoesList;

  WatchesModel? watchesList;

  MobileModel? mobileList;

  MotorcycleModel? motorcycleList;

  SkinModel? skinList;

  SmartModel? smartList;

  SportsModel? sportsList;

  SunModel? sunList;

  TabletModel? tabletList;

  TopsModel? topsList;

  VehiclesModel? vehiclesList;

  BagsModel? bagsList;

  getProduct() async{
    Response resposne = await Dio().get("https://dummyjson.com/products",
        queryParameters: {
          "select": "id,title,description,category,price,thumbnail"
        }
    );
    productsList = ProductsModel.fromJson(resposne.data);
    print("************");
    print(productsList!.products?[0].title);
    print("************");

    return productsList;
  }

  getBeauty() async{
    Response resposne = await Dio().get("https://dummyjson.com/products/category/beauty",
    );
    beautyList = BeautyModel.fromJson(resposne.data);
    print("************");
    print(beautyList!.products?[0].title);
    print("************");

    return beautyList;
  }

  getFragrances() async{
    Response resposne = await Dio().get("https://dummyjson.com/products/category/fragrances",
    );
    fragrancesList = FragrancesModel.fromJson(resposne.data);
    print("************");
    print(fragrancesList!.products?[0].title);
    print("************");

    return fragrancesList;
  }

  getFurniture() async{
    Response resposne = await Dio().get("https://dummyjson.com/products/category/furniture",
    );
    furnitureList = FurnitureModel.fromJson(resposne.data);
    print("************");
    print(furnitureList!.products?[0].title);
    print("************");

    return furnitureList;
  }

  getGroceries() async{
    Response resposne = await Dio().get("https://dummyjson.com/products/category/groceries",
    );
    groceriesList = GroceriesModel.fromJson(resposne.data);
    print("************");
    print(groceriesList!.products?[0].title);
    print("************");

    return groceriesList;
  }

  getHome() async{
    Response resposne = await Dio().get("https://dummyjson.com/products/category/home-decoration",
    );
    homeList = HomeModel.fromJson(resposne.data);
    print("************");
    print(homeList!.products?[0].title);
    print("************");

    return homeList;
  }

  getKitchen() async{
    Response resposne = await Dio().get("https://dummyjson.com/products/category/kitchen-accessories",
    );
    kitchenList = KitchenModel.fromJson(resposne.data);
    print("************");
    print(kitchenList!.products?[0].title);
    print("************");

    return kitchenList;
  }

  getLaptop() async{
    Response resposne = await Dio().get("https://dummyjson.com/products/category/laptops",
    );
    laptopsList = LaptopsModel.fromJson(resposne.data);
    print("************");
    print(laptopsList!.products?[0].title);
    print("************");

    return laptopsList;
  }

  getShirts() async{
    Response resposne = await Dio().get("https://dummyjson.com/products/category/mens-shirts",
    );
    shirtsList = ShirtsModel.fromJson(resposne.data);
    print("************");
    print(shirtsList!.products?[0].title);
    print("************");

    return shirtsList;
  }

  getShoes() async{
    Response resposne = await Dio().get("https://dummyjson.com/products/category/mens-shoes",
    );
    shoesList = ShoesModel.fromJson(resposne.data);
    print("************");
    print(shoesList!.products?[0].title);
    print("************");

    return shoesList;
  }

  getWatches() async{
    Response resposne = await Dio().get("https://dummyjson.com/products/category/mens-watches",
    );
    watchesList = WatchesModel.fromJson(resposne.data);
    print("************");
    print(watchesList!.products?[0].title);
    print("************");

    return watchesList;
  }

  getMobile() async{
    Response resposne = await Dio().get("https://dummyjson.com/products/category/mobile-accessories",
    );
    mobileList = MobileModel.fromJson(resposne.data);
    print("************");
    print(mobileList!.products?[0].title);
    print("************");

    return mobileList;
  }

  getMotorcycle() async{
    Response resposne = await Dio().get("https://dummyjson.com/products/category/motorcycle",
    );
    motorcycleList = MotorcycleModel.fromJson(resposne.data);
    print("************");
    print(motorcycleList!.products?[0].title);
    print("************");

    return motorcycleList;
  }

  getSkin() async{
    Response resposne = await Dio().get("https://dummyjson.com/products/category/skin-care",
    );
    skinList = SkinModel.fromJson(resposne.data);
    print("************");
    print(skinList!.products?[0].title);
    print("************");

    return skinList;
  }

  getSmart() async{
    Response resposne = await Dio().get("https://dummyjson.com/products/category/smartphones",
    );
    smartList = SmartModel.fromJson(resposne.data);
    print("************");
    print(smartList!.products?[0].title);
    print("************");

    return smartList;
  }

  getSports() async{
    Response resposne = await Dio().get("https://dummyjson.com/products/category/sports-accessories",
    );
    sportsList = SportsModel.fromJson(resposne.data);
    print("************");
    print(sportsList!.products?[0].title);
    print("************");

    return sportsList;
  }

  getSun() async{
    Response resposne = await Dio().get("https://dummyjson.com/products/category/sunglasses",
    );
    sunList = SunModel.fromJson(resposne.data);
    print("************");
    print(sunList!.products?[0].title);
    print("************");

    return sunList;
  }

  getTablet() async{
    Response resposne = await Dio().get("https://dummyjson.com/products/category/tablets",
    );
    tabletList = TabletModel.fromJson(resposne.data);
    print("************");
    print(tabletList!.products?[0].title);
    print("************");

    return tabletList;
  }

  getTops() async{
    Response resposne = await Dio().get("https://dummyjson.com/products/category/tops",
    );
    topsList = TopsModel.fromJson(resposne.data);
    print("************");
    print(topsList!.products?[0].title);
    print("************");

    return topsList;
  }

  getVehicles() async{
    Response resposne = await Dio().get("https://dummyjson.com/products/category/vehicle",
    );
    vehiclesList = VehiclesModel.fromJson(resposne.data);
    print("************");
    print(vehiclesList!.products?[0].title);
    print("************");

    return vehiclesList;
  }

  getBags() async{
    Response resposne = await Dio().get("https://dummyjson.com/products/category/womens-bags",
    );
    bagsList = BagsModel.fromJson(resposne.data);
    print("************");
    print(bagsList!.products?[0].title);
    print("************");

    return bagsList;
  }
}