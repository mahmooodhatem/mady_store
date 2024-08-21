import 'package:untitled6/build_tablet.dart';

import 'tablet_model.dart';


import 'api_provider.dart';
import 'package:flutter/material.dart';

class Page17 extends StatefulWidget {
  const Page17({super.key});

  @override
  State<Page17> createState() => _MessengerScreenState();
}

class _MessengerScreenState extends State<Page17> {
  TabletModel? tabletList;

  bool isLoading = true;

  getTabletProductsFromApi()async{
    tabletList = await ApiProvider().getTablet();
    setState(() {
      isLoading = false;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getTabletProductsFromApi();
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
          "TABLETS",
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
                itemBuilder: (context,index) => BuildTablet(product: tabletList!.products![index]),
                itemCount: tabletList!.products!.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, mainAxisSpacing: 5,childAspectRatio:2, mainAxisExtent: 310, ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
