import 'package:flutter/material.dart';
import 'package:msifarm/details.dart';
import 'farm.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class GroceryStore {
  List<Farm> groceryStore = [
    Farm(
        id: 0,
        productName: "Fresh Avocados",
        image: "🥑",
        from: "Spain",
        nutrients: "Vitamin B, Vitamin K",
        quantity: "4 🥑",
        price: "6.50",
        organic: true,
        description:
            "A ripe avocado yields to gentle pressure when held in the palm of the hand and squeezed. The fruit is not sweet, but distinctly and subtly flavored, with smooth texture. The avocado is popular in vegetarian cuisine as a substitute for meats in sandwiches and salads because of its high fat content. Generally, avocado is served raw, though some cultivars, including the common 'Hass', can be cooked for a short time without becoming bitter. It is used as the base for the Mexican dip known as guacamole, as well as a spread on corn tortillas or toast, served with spices."),
    Farm(
        id: 1,
        productName: "Goat and Sheep Cheese",
        image: "🧀",
        from: "Portugal",
        nutrients: "Vitamin A, Calcium",
        quantity: "250g",
        price: "5.00",
        organic: false,
        description:
            "Creamy and distinct in flavor, goat cheese is a dairy product enjoyed around the world. Goat cheese comes in a wide variety of flavors and textures, from soft and spreadable fresh cheese to salty, crumbly aged cheese. Although it’s made using the same coagulation and separation process as cheese made from cow’s milk, goat cheese differs in nutrient content."),
    Farm(
        id: 2,
        productName: "Apollo Broccoli",
        image: "🥦",
        from: "Portugal",
        nutrients: "Vitamin C, Vitamin K",
        quantity: "3 🥦",
        price: "5.50",
        organic: true,
        description:
            "Broccoli is known to be a hearty and tasty vegetable which is rich in dozens of nutrients. It is said to pack the most nutritional punch of any vegetable. When we think about green vegetables to include in our diet, broccoli is one of the foremost veggies to come to our mind. Broccoli is a cruciferous vegetable and part of the cabbage family, which includes vegetables such as Brussel sprouts and kale. Although the tastes are different, broccoli and these other vegetables are from the same family."),
    Farm(
        id: 3,
        productName: "Baby Carrots",
        image: "🥕",
        from: "France",
        nutrients: "Vitamin A, Vitamin K",
        quantity: "20 🥕",
        price: "3.00",
        organic: true,
        description:
            "The carrot is a root vegetable that is often claimed to be the perfect health food. It is crunchy, tasty and highly nutritious. Carrots are a particularly good source of beta-carotene, fiber, vitamin K, potassium and antioxidants. Carrots have a number of health benefits. They are a weight loss friendly food and have been linked to lower cholesterol levels and improved eye health."),
    Farm(
        id: 4,
        productName: "Sweet Corncobs",
        image: "🌽",
        from: "Germany",
        nutrients: "Vitamin C, Magnesium",
        quantity: "2 🌽",
        price: "2.00",
        organic: false,
        description:
            "Also known as maize, corn is one of the most popular cereal grains in the world. Popcorn and sweet corn are commonly eaten varieties, but refined corn products are also widely consumed, frequently as ingredients in foods. These include tortillas, tortilla chips, polenta, cornmeal, corn flour, corn syrup, and corn oil. Whole-grain corn is as healthy as any cereal grain, rich in fiber and many vitamins, minerals, and antioxidants.")
  ];

  int getLength() {
    return groceryStore.length;
  }
}

class _HomePageState extends State<HomePage> {
  GroceryStore groceryList = GroceryStore();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Color.fromRGBO(154, 233, 204, 1)),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          drawer: Drawer(
            child: SafeArea(
              child: Column(
              children: [
                const DrawerHeader(
                  child: Icon(Icons.person)),
                ExpansionTile(
                  // textColor: Colors.red,
                  backgroundColor: Colors.blue,
                  title: const Text("Parent Category 1"),
                  leading: const Icon(Icons.person), //add icon
                  childrenPadding: const EdgeInsets.only(left: 60), //children padding
                  children: [
                    ListTile(
                      title: const Text("Child Category 1"),
                      onTap: () {
                        //action on press
                      },
                    ),

                    ListTile(
                      title: const Text("Child Category 2"),
                      onTap: () {
                        //action on press
                      },
                    ),

                    //more child menu
                  ],
                ),
                ExpansionTile(
                  title: const Text("Parent Category 2"),
                  leading: const Icon(Icons.person), //add icon
                  childrenPadding: const EdgeInsets.only(left: 60), //children padding
                  children: [
                    ListTile(
                      title: const Text("Child Category 1"),
                      onTap: () {
                        //action on press
                      },
                    ),

                    ListTile(
                      title: const Text("Child Category 2"),
                      onTap: () {
                        //action on press
                      },
                    ),

                    //more child menu
                  ],
                )
              ],
            )),
          ),
          appBar: AppBar(
            // foregroundColor: Colors.white,
            centerTitle: true,
            backgroundColor: Colors.transparent,
            title: const Text(
              "MSIFARM",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 23, fontWeight: FontWeight.w500),
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 40,
                ),
                const Text(
                  "Welcome to grocery store",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    "You can buy any fresh vegetable what you wanna need.",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                ListView.builder(
                    shrinkWrap: true,
                    itemCount: groceryList.getLength(),
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return DetailsPage(
                                id: groceryList.groceryStore[index].id);
                          }));
                        },
                        child: GroceryList(
                            productName:
                                groceryList.groceryStore[index].productName,
                            image: groceryList.groceryStore[index].image,
                            price: groceryList.groceryStore[index].price,
                            id: groceryList.groceryStore[index].id),
                      );
                    }),
              ],
            ),
          )),
    );
  }
}

// ignore: must_be_immutable
class GroceryList extends StatelessWidget {
  GroceryList(
      {super.key,
      required this.productName,
      required this.image,
      required this.price,
      required this.id});

  String productName;
  String image;
  bool organic = true;
  String price;
  int id;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
      child: Container(
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(23), bottomRight: Radius.circular(23)),
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 94, 245, 99),
              Color.fromARGB(255, 16, 237, 175)
            ])),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 20),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text(
              image,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
            ),
            Text(
              productName,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
            ),
            Text(
              price,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
            ),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.shopping_cart,
                  size: 20,
                )),
          ]),
        ),
      ),
    );
  }
}
