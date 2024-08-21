import 'package:flutter/material.dart';
import 'package:untitled6/build_products.dart';
import 'package:untitled6/products_model.dart';
import 'api_provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _MessengerScreenState();
}

class _MessengerScreenState extends State<HomePage> {
  ProductsModel? productList;

  bool isLoading = true;

  getProductsFromApi()async{
    productList = await ApiProvider().getProduct();
    setState(() {
      isLoading = false;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getProductsFromApi();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              isLoading == true ? const Center(child: CircularProgressIndicator(),) :
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context,index) => BuildProducts(product: productList!.products![index]),
                itemCount: productList!.products!.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, mainAxisSpacing: 5,childAspectRatio:2, mainAxisExtent: 265, ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
