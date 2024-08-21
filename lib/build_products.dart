import 'package:flutter/material.dart';
import 'package:untitled6/products_model.dart';

class BuildProducts extends StatelessWidget {
  const BuildProducts({super.key, required this.product});

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
                Text("${product.category}",
                style: TextStyle(
                  color: Colors.grey[400],
                  fontSize: 11,
                  fontWeight: FontWeight.w500
                ),
                ),
                const SizedBox(height: 10,),
                Text(" \$${product.price}",
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 16
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
