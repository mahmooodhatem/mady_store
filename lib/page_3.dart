import 'package:untitled6/build_furniture.dart';
import 'package:untitled6/furniture_model.dart';


import 'api_provider.dart';
import 'package:flutter/material.dart';

class Page3 extends StatefulWidget {
  const Page3({super.key});

  @override
  State<Page3> createState() => _MessengerScreenState();
}

class _MessengerScreenState extends State<Page3> {
  FurnitureModel? furnitureList;

  bool isLoading = true;

  getFurnitureProductsFromApi()async{
    furnitureList = await ApiProvider().getFurniture();
    setState(() {
      isLoading = false;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getFurnitureProductsFromApi();
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
        title: const Text(
          "FURNITURE",
          style:
          TextStyle(color: Colors.deepPurple, fontWeight: FontWeight.bold),
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
                itemBuilder: (context,index) => BuildFurniture(product: furnitureList!.products![index]),
                itemCount: furnitureList!.products!.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, mainAxisSpacing: 5,childAspectRatio:2, mainAxisExtent: 310, ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

