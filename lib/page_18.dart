import 'package:untitled6/build_tops.dart';

import 'top_model.dart';


import 'api_provider.dart';
import 'package:flutter/material.dart';

class Page18 extends StatefulWidget {
  const Page18({super.key});

  @override
  State<Page18> createState() => _MessengerScreenState();
}

class _MessengerScreenState extends State<Page18> {
  TopsModel? topsList;

  bool isLoading = true;

  getTopsProductsFromApi()async{
    topsList = await ApiProvider().getTops();
    setState(() {
      isLoading = false;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getTopsProductsFromApi();
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
          "TOPS",
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
                itemBuilder: (context,index) => BuildTops(product: topsList!.products![index]),
                itemCount: topsList!.products!.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, mainAxisSpacing: 5,childAspectRatio:2, mainAxisExtent: 310, ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
