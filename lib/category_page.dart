import 'package:flutter/material.dart';
import 'package:untitled6/api_provider.dart';
import 'package:untitled6/products_show.dart';



class CategoryPage extends StatefulWidget {
  const CategoryPage({super.key});

  @override
  State<CategoryPage> createState() => _CategoryPageState();

}

class _CategoryPageState extends State<CategoryPage> {
  bool isLoading = true;

  List<dynamic>? category;


  getProductsListFromApi()async{
    category= await ApiProvider().getCategoryList();
    setState(() {
      isLoading = false;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getProductsListFromApi();
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
              SizedBox(
                child: ListView.separated(
                            itemBuilder: (context,index){
                              return
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.deepPurpleAccent ,
                                    borderRadius: BorderRadius.circular(10)
                                  ),
                                  height: MediaQuery.of(context).size.height*.05,
                                  child: MaterialButton(
                                    child: Text(
                                      "${category![index]}",
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500
                                      ),
                                      textAlign: TextAlign.center,
                                                                  ),
                                    onPressed: (){
                                      setState(() {
                                        Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductsShow(category: category![index])));
                                      });
                                    },
                                  ),
                                );
                        },
                            separatorBuilder: (context,index)=> SizedBox(height: MediaQuery.of(context).size.height*.019,),
                            itemCount: category!.length,
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                          ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
