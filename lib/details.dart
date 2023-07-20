import 'package:flutter/material.dart';
import 'package:msifarm/main.dart';
// import 'farm.dart';

// ignore: must_be_immutable
class DetailsPage extends StatelessWidget {
  DetailsPage({super.key, required this.id});
  int id;

  GroceryStore details = GroceryStore();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
            const Color.fromARGB(255, 33, 243, 184).withOpacity(.8),
            Colors.green.shade300.withOpacity(.8)
          ])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          foregroundColor: Colors.white,
          // automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          title: const Text(
            "Details",
            style: TextStyle(
                color: Colors.white, fontSize: 25, fontWeight: FontWeight.w500),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20,),
            child: Column(
              children: [
                SizedBox(
                  child: Stack(
                    alignment: Alignment.topRight,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Colors.white70,
                            borderRadius: BorderRadius.all(Radius.circular(40))
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 30),
                            child: Column(
                              children: [
                                Text(
                                  details.groceryStore[id].image,
                                  style: const TextStyle(
                                    fontSize: 50,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 30),
                                  child: Text(
                                    details.groceryStore[id].productName,
                                    style: const TextStyle(
                                        fontSize: 18, fontWeight: FontWeight.w400),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      children: [
                                        Text(
                                          "🌍 ${details.groceryStore[id].from}",
                                          style: const TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w400),
                                        ),
                                        const SizedBox(
                                          height: 7,
                                        ),
                                        Text(
                                          "📦 ${details.groceryStore[id].quantity}",
                                          style: const TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Text(
                                          "❤️ ${details.groceryStore[id].nutrients}",
                                          style: const TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w400,),
                                        ),
                                        const SizedBox(
                                          height: 7,
                                        ),
                                        Text(
                                          "🏷️ ${details.groceryStore[id].price} 💵",
                                          style: const TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 30,),
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    elevation: 5,
                                    shadowColor: const Color.fromARGB(255, 38, 50, 59),
                                    backgroundColor: Colors.green[300],
                                    foregroundColor: Colors.white,
                                    minimumSize: const Size(500, 50,),
                                  ),
                                    onPressed: () {},
                                    child: const Icon(
                                      Icons.shopping_cart,
                                      size: 25,
                                    )),
                                const SizedBox(
                                  height: 40,
                                ),
                                Text(
                                  details.groceryStore[id].description,
                                  textAlign: TextAlign.justify,
                                  style: const TextStyle(
                                      fontSize: 18, 
                                      fontWeight: FontWeight.w400,),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      details.groceryStore[id].organic?
                      Container(
                        margin: const EdgeInsets.only(right: 10,
                        ),
                        width: 90,
                        height: 90,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.green,
                        ),
                        child: const Text("Organic",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w400
                        ),),
                      ): Container(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
