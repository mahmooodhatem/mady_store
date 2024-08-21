import 'package:flutter/material.dart';
import 'bags_model.dart';
class BuildBags extends StatelessWidget {
  const BuildBags({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width*.4,
            height: MediaQuery.of(context).size.height*.180 ,
            color: Colors.grey[200],
            child: Image(
              image: NetworkImage(
                  "${product.thumbnail}"
              ),
            ),
          ),
          const SizedBox(height: 10,),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("${product.title}",
                  style: const TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 5,),
                Text(" \$${product.price}",
                  style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16
                  ),
                ),
                const SizedBox(height: 5,),
                Text("${product.warrantyInformation}",
                  style: TextStyle(
                      color: Colors.grey[400],
                      fontSize: 11,
                      fontWeight: FontWeight.w500
                  ),
                ),
                const SizedBox(height: 5,),
                Text("In stock: ${product.stock}",
                  style: TextStyle(
                      color: Colors.grey[400],
                      fontSize: 11,
                      fontWeight: FontWeight.w500
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}