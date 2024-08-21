import 'package:untitled6/build_shoes.dart';

import 'shoes_model.dart';


import 'api_provider.dart';
import 'package:flutter/material.dart';

class Page9 extends StatefulWidget {
  const Page9({super.key});

  @override
  State<Page9> createState() => _MessengerScreenState();
}

class _MessengerScreenState extends State<Page9> {
  ShoesModel? shoesList;

  bool isLoading = true;

  getShoesProductsFromApi()async{
    shoesList = await ApiProvider().getShoes();
    setState(() {
      isLoading = false;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getShoesProductsFromApi();
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
          "MEN'S SHOES",
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
                itemBuilder: (context,index) => BuildShoes(product: shoesList!.products![index]),
                itemCount: shoesList!.products!.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, mainAxisSpacing: 5,childAspectRatio:2, mainAxisExtent: 310, ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
