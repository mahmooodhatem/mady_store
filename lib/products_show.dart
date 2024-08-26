import 'build_products.dart';
import 'products_model.dart';
import 'api_provider.dart';
import 'package:flutter/material.dart';

class ProductsShow extends StatefulWidget {

   const ProductsShow( {super.key, required this.category});

  final String category;

  @override
  State<ProductsShow> createState() => _Page1State();
}

class _Page1State extends State<ProductsShow> {
  ProductsModel? productsList;

  bool isLoading = true;

  ApiProvider apiProvider =ApiProvider();

  getAllProductsFromApi()async{
    productsList = await ApiProvider().getProductFromList(widget.category);
    setState(() {
      isLoading = false;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getAllProductsFromApi();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.category,
          style:
          const TextStyle(color: Colors.deepPurple, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_new_outlined),
          color: Colors.lightBlueAccent,

        ),
      ),
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
                itemBuilder: (context,index) => BuildProducts(product: productsList!.products![index]),
                itemCount: productsList!.products!.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, mainAxisSpacing: 5,childAspectRatio:2, mainAxisExtent: 300, ),
              )
            ],
          ),
        ),
      ),
    );
  }
}