import 'package:flutter/material.dart';
import 'package:untitled6/page_1.dart';
import 'package:untitled6/page_10.dart';
import 'package:untitled6/page_11.dart';
import 'package:untitled6/page_12.dart';
import 'package:untitled6/page_13.dart';
import 'package:untitled6/page_14.dart';
import 'package:untitled6/page_15.dart';
import 'package:untitled6/page_16.dart';
import 'package:untitled6/page_17.dart';
import 'package:untitled6/page_18.dart';
import 'package:untitled6/page_19.dart';
import 'package:untitled6/page_2.dart';
import 'package:untitled6/page_20.dart';
import 'package:untitled6/page_3.dart';
import 'package:untitled6/page_4.dart';
import 'package:untitled6/page_5.dart';
import 'package:untitled6/page_6.dart';
import 'package:untitled6/page_7.dart';
import 'package:untitled6/page_8.dart';
import 'package:untitled6/page_9.dart';


class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GridView.count(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                mainAxisSpacing: 5,
                crossAxisSpacing: 10,
                childAspectRatio: .75,

                children: [
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> Page1()));
                    },
                    child: SizedBox(
                      child: Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * .4,
                            height: MediaQuery.of(context).size.height * .180,
                            color: Colors.grey[200],
                            child: const Image(
                              image: NetworkImage("https://img.freepik.com/free-photo/overhead-view-cosmetics-makeup-natural-organic-products-dual-backdrop_23-2148031301.jpg"),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Expanded(
                            child: Text(
                              "BEAUTY",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const Page2()));
                    },
                    child: SizedBox(
                      child: Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * .4,
                            height: MediaQuery.of(context).size.height * .180,
                            color: Colors.grey[200],
                            child: const Image(
                              image: NetworkImage("https://images.squarespace-cdn.com/content/v1/5f0b9657b648c20c629e4a5e/1610077732392-NVUN5VWYMS80VPEGGY9N/best+mens+perfume"),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Expanded(
                            child: Text(
                              "FRAGRANCES",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const Page3()));
                    },
                    child: SizedBox(
                      child: Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * .4,
                            height: MediaQuery.of(context).size.height * .180,
                            color: Colors.grey[200],
                            child: const Image(
                              image: NetworkImage("https://png.pngitem.com/pimgs/s/4-43003_png-for-home-furniture-transparent-png.png"),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Expanded(
                            child: Text(
                              "FURNITURE",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const Page4()));
                    },
                    child: SizedBox(
                      child: Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * .4,
                            height: MediaQuery.of(context).size.height * .180,
                            color: Colors.grey[200],
                            child: const Image(
                              image: NetworkImage("https://browntape.com/wp-content/uploads/2016/06/Online-shopping-grocery.jpg"),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Expanded(
                            child: Text(
                              "GROCERIES",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const Page5()));
                    },
                    child: SizedBox(
                      child: Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * .4,
                            height: MediaQuery.of(context).size.height * .180,
                            color: Colors.grey[200],
                            child: const Image(
                              image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRG8C40ov59ZpLuNzcpZRZzJI_7qJQIXmtmEg&s"),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Expanded(
                            child: Text(
                              "HOME DECORATION",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const Page6()));
                    },
                    child: SizedBox(
                      child: Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * .4,
                            height: MediaQuery.of(context).size.height * .180,
                            color: Colors.grey[200],
                            child: const Image(
                              image: NetworkImage("https://media.istockphoto.com/id/476392316/photo/kitchen-utensil.jpg?s=612x612&w=0&k=20&c=Mb2d_7WGJP6N5Jb__soAl74ZUhFwH47iSdJtXeoW47o="),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Expanded(
                            child: Text(
                              "KITCHEN ACCESSORIES",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const Page7()));
                    },
                    child: SizedBox(
                      child: Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * .4,
                            height: MediaQuery.of(context).size.height * .180,
                            color: Colors.grey[200],
                            child: const Image(
                              image: NetworkImage("https://igotoffer.com/microsoft/wp-content/uploads/sites/2/2016/10/types-laptops-all.jpg"),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Expanded(
                            child: Text(
                              "LAPTOPS",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const Page8()));
                    },
                    child: SizedBox(
                      child: Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * .4,
                            height: MediaQuery.of(context).size.height * .180,
                            color: Colors.grey[200],
                            child: const Image(
                              image: NetworkImage("https://www.kingsleyheath.co.uk/cdn/shop/files/HMWSH0556-K018R11U3_609b7661-a17c-4ed4-99d4-67bfd4767195_1600x.jpg?v=1722954098"),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Expanded(
                            child: Text(
                              "MEN'S SHIRTS",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const Page9()));
                    },
                    child: SizedBox(
                      child: Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * .4,
                            height: MediaQuery.of(context).size.height * .180,
                            color: Colors.grey[200],
                            child: const Image(
                              image: NetworkImage("https://hornorharrison.com/cdn/shop/collections/Shoe_category.jpg?v=1684413123"),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Expanded(
                            child: Text(
                              "MEN'S SHOES",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const Page10()));
                    },
                    child: SizedBox(
                      child: Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * .4,
                            height: MediaQuery.of(context).size.height * .180,
                            color: Colors.grey[200],
                            child: const Image(
                              image: NetworkImage( "https://www.mensjournal.com/.image/t_share/MjAxOTU5MjQyMDI0ODg3ODE1/best-watches-for-men.jpg"),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Expanded(
                            child: Text(
                              "MEN'S WATCHES",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const Page11()));
                    },
                    child: SizedBox(
                      child: Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * .4,
                            height: MediaQuery.of(context).size.height * .180,
                            color: Colors.grey[200],
                            child: const Image(
                              image: NetworkImage(  "https://5.imimg.com/data5/SELLER/Default/2021/6/EM/RB/VH/132553765/all-mobile-phone-accessories-500x500.jpg"),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Expanded(
                            child: Text(
                              "MOBILE ACCESSORIES",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const Page12()));
                    },
                    child: SizedBox(
                      child: Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * .4,
                            height: MediaQuery.of(context).size.height * .180,
                            color: Colors.grey[200],
                            child: const Image(
                              image: NetworkImage("https://s.yimg.com/ny/api/res/1.2/HsbUmKQOEhBDoQ1OwM9bKg--/YXBwaWQ9aGlnaGxhbmRlcjt3PTY0MDtoPTU2Ng--/https://media.zenfs.com/en-us/homerun/us.autos.rideapart/51fa8cb390e239b74c6c081d4062e5f1"),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Expanded(
                            child: Text(
                              "MOTORCYCLE",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const Page13()));
                    },
                    child: SizedBox(
                      child: Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * .4,
                            height: MediaQuery.of(context).size.height * .180,
                            color: Colors.grey[200],
                            child: const Image(
                              image: NetworkImage("https://s2.r29static.com/bin/entry/1df/0,0,460,552/720x864,85/1448081/image.webp"),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Expanded(
                            child: Text(
                              "SKIN CARE",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const Page14()));
                    },
                    child: SizedBox(
                      child: Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * .4,
                            height: MediaQuery.of(context).size.height * .180,
                            color: Colors.grey[200],
                            child: const Image(
                              image: NetworkImage("https://miro.medium.com/v2/resize:fit:714/1*QcgqPgCgmLs8vQab4qP7OA.jpeg"),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Expanded(
                            child: Text(
                              "SMART PHONES",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const Page15()));
                    },
                    child: SizedBox(
                      child: Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * .4,
                            height: MediaQuery.of(context).size.height * .180,
                            color: Colors.grey[200],
                            child: const Image(
                              image: NetworkImage("https://media.istockphoto.com/id/1136317339/photo/sports-equipment-on-floor.jpg?s=612x612&w=0&k=20&c=-aI8u_Se89IC-HJZYH724ei5z-bIcSvRW6qUwyMtRyE="),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Expanded(
                            child: Text(
                              "SPORTS ACCESSORIES",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const Page16()));
                    },
                    child: SizedBox(
                      child: Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * .4,
                            height: MediaQuery.of(context).size.height * .180,
                            color: Colors.grey[200],
                            child: const Image(
                              image: NetworkImage("https://justpolarized.com/cdn/shop/articles/Category-3-sunglasses-_polarized-sunglasses.jpg?v=1638444174"),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Expanded(
                            child: Text(
                              "SUNGLASSES",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const Page17()));
                    },
                    child: SizedBox(
                      child: Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * .4,
                            height: MediaQuery.of(context).size.height * .180,
                            color: Colors.grey[200],
                            child: const Image(
                              image: NetworkImage( "https://static01.nyt.com/images/2010/12/03/technology/personaltech/03reader_span/03reader_span-articleLarge.jpg?quality=75&auto=webp&disable=upscale"),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Expanded(
                            child: Text(
                              "TABLETS",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const Page18()));
                    },
                    child: SizedBox(
                      child: Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * .4,
                            height: MediaQuery.of(context).size.height * .180,
                            color: Colors.grey[200],
                            child: const Image(
                              image: NetworkImage("https://www.max.co.nz/media/.renditions/catalog/category/Occasion_Tops_Category_Banner_Autumn_Desktop.jpg?format=jpeg&height=400"),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Expanded(
                            child: Text(
                              "TOPS",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const Page19()));
                    },
                    child: SizedBox(
                      child: Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * .4,
                            height: MediaQuery.of(context).size.height * .180,
                            color: Colors.grey[200],
                            child: const Image(
                              image: NetworkImage( "https://cdn.dribbble.com/users/220948/screenshots/6326245/attachments/1354757/artboard_3_4x.png?resize=400x300&vertical=center"),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Expanded(
                            child: Text(
                              "VEHICLES",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const Page20()));
                    },
                    child: SizedBox(
                      child: Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * .4,
                            height: MediaQuery.of(context).size.height * .180,
                            color: Colors.grey[200],
                            child: const Image(
                              image: NetworkImage( "https://cdn.shopify.com/s/files/1/0285/7710/4004/t/3/assets/30e46c10dd48--231117-Womens-Bags-Mobile-Category-Banner.jpg?v=1700191555"),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Expanded(
                            child: Text(
                              "WOMEN'S BAGS",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
