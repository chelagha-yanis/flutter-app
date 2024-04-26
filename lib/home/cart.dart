import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

class cartpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFC7D9FE),
      body: ListView(
        children: [
          const SizedBox(
            height: 16,
          ),
          headers(context),
          const SizedBox(height: 10),
          bullshit(),
          searchYakho(context),
          almofid(),
        ],
      ),
    );
  }

  Widget headers(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          Material(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25),
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          const Spacer(),
          Material(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25),
            child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return details();
                }));
              },
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Icon(
                  Icons.shopping_cart,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget bullshit() {
  return Row(
    children: [
      Padding(
        padding: const EdgeInsets.all(12),
        child: Text(
          'Bags',
          style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Color(0xFF20005E)),
        ),
      ),
      Spacer(),
      Material(
        color: Color(0xFF20005E),
        borderRadius: BorderRadius.circular(25),
        child: InkWell(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
        ),
      ),
      SizedBox(
        width: 10,
      )
    ],
  );
}

Widget searchYakho(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: GestureDetector(
      onTap: () {
        showModalBottomSheet(
          context: context,
          backgroundColor: Colors.transparent,
          barrierColor: Colors.white54,
          builder: (BuildContext context) {
            return Container(
              height: 700,
              width: 900,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  )),
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 5,
                    width: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.black38),
                  ),
                  SizedBox(
                    height: 300,
                    child: Column(
                      children: [
                        const CustomerSpacer(),
                        Text(
                          "Sort by",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: MaterialButton(
                            onPressed: () {
                              Provider.of<Bags>(context, listen: false)
                                  .sortByPriceAscending();
                              Navigator.pop(context);
                            },
                            child: Container(
                              height: 25,
                              width: 900,
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 12),
                              decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                              ),
                              child: const Text(
                                "Price: Lowest To Highest",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: MaterialButton(
                            onPressed: () {
                              Provider.of<Bags>(context, listen: false)
                                  .sortByPriceDescending();
                              Navigator.pop(context);
                            },
                            child: Container(
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 12),
                              height: 25,
                              width: 900,
                              decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                              ),
                              child: Text(
                                "Price: Highest To Lowest",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                  fontFamily: "Poppins",
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: MaterialButton(
                            onPressed: () {
                              Provider.of<Bags>(context, listen: false)
                                  .sortByCustomerReview();
                              Navigator.pop(context);
                            },
                            child: Container(
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 12),
                              height: 25,
                              width: 900,
                              decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                              ),
                              child: Text(
                                "Customer Review",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                  fontFamily: "Poppins",
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
      child: Container(
        height: 50,
        margin: const EdgeInsets.symmetric(horizontal: 8),
        padding: const EdgeInsets.fromLTRB(8, 2, 8, 2),
        decoration: BoxDecoration(
          color: const Color(0xFFF7FAFF),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 1),
          child: Row(
            children: [
              Material(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(8),
                child: InkWell(
                  onTap: () {},
                  borderRadius: BorderRadius.circular(8),
                  child: Container(
                    height: 40,
                    width: 40,
                    alignment: Alignment.center,
                    child: const Icon(Icons.filter_list, color: Colors.black),
                  ),
                ),
              ),
              const Spacer(),
              const Center(
                  child: Icon(Icons.swap_vert, color: Colors.black, size: 20)),
              const Text(
                'Price : lowest to highest',
                style: TextStyle(fontSize: 10),
              ),
              const Spacer(),
              Material(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(8),
                child: InkWell(
                  onTap: () {},
                  borderRadius: BorderRadius.circular(8),
                  child: Container(
                    height: 40,
                    width: 40,
                    alignment: Alignment.center,
                    child: const Icon(Icons.view_module, color: Colors.black),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

class Bags extends ChangeNotifier {
  // Method to sort bags by price in ascending order
  void sortByPriceAscending() {
    _coolBags.sort((a, b) => a.price.compareTo(b.price));
    notifyListeners();
  }

  // Method to sort bags by price in descending order
  void sortByPriceDescending() {
    _coolBags.sort((a, b) => b.price.compareTo(a.price));
    notifyListeners();
  }

  // Method to sort bags by customer reviews
  void sortByCustomerReview() {
    _coolBags.sort((a, b) => b.rate.compareTo(a.rate));
    notifyListeners();
  }

  // list of items on sale
  Bags({
    required this.id,
    required this.image,
    required this.name,
    required this.price,
    required this.rate,
    required this.description,
  });

  String id;
  String image;
  String name;
  int price;
  double rate;
  String description;

  factory Bags.fromJson(Map<String, dynamic> json) => Bags(
        id: json["id"],
        image: json["image"],
        name: json["name"],
        price: json["price"],
        rate: json["rate"].toDouble(),
        description: json["description"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "image": image,
        "name": name,
        "price": price,
        "rate": rate,
        "description": description,
      };

  //bool isPriceAscending = true;
}

final List newbag = [
  Bags(
      id: '1',
      image: 'images/1.png',
      name: 'Sport Bag',
      price: 150,
      rate: 4.5,
      description: 'It might be pricy but it worth it'),
  Bags(
      id: '2',
      image: 'images/2.png',
      name: 'Back Bag',
      price: 200,
      rate: 4.5,
      description: 'This bag is so amazing'),
  Bags(
      id: '3',
      image: 'images/3.png',
      name: 'Traveling Bag',
      price: 100,
      rate: 4,
      description: 'This bag can hold all your staff'),
];

final List _coolBags = [
  Bags(
      id: '1',
      image: 'images/1.png',
      name: 'Sport Bag',
      price: 500,
      rate: 4.5,
      description: 'It might be pricy but it worth it'),
  Bags(
      id: '2',
      image: 'images/2.png',
      name: 'Back Bag',
      price: 200,
      rate: 4.5,
      description: 'This bag is so amazing'),
  Bags(
      id: '3',
      image: 'images/3.png',
      name: 'Traveling Bag',
      price: 100,
      rate: 4,
      description: 'This bag can hold all your staff'),
  Bags(
      id: '4',
      image: 'images/4.png',
      name: 'School Bag',
      price: 120,
      rate: 4.8,
      description: 'This bag is so amazing'),
  Bags(
      id: '5',
      image: 'images/5.png',
      name: 'Purs',
      price: 120,
      rate: 4.8,
      description: 'This is it it is your dream purs'),
  Bags(
      id: '6',
      image: 'images/6.png',
      name: 'Hicking Bag',
      price: 400,
      rate: 5,
      description: 'This bag can hold all your staff'),
];

// list of cart items
List _CartItems = [];
get coolBags => _coolBags;
get cartitems => _CartItems;

// add item to cart
void addItemsToCart(int index) {
  _CartItems.add(_coolBags[index]);
  ChangeNotifier();
}

// remove item form cart
void removeItemFromCart(int index) {
  _CartItems.removeAt(index);
  ChangeNotifier();
}

// calculate total price
String calculateTotal() {
  double totalPrice = 0;
  for (int i = 0; i < _coolBags.length; i++) {
    totalPrice += double.parse(_coolBags[i][1]);
  }
  return totalPrice.toStringAsFixed(2);
}

Widget almofid() {
  return GridView.builder(
    itemCount: coolBags.length,
    shrinkWrap: true,
    physics: const NeverScrollableScrollPhysics(),
    padding: const EdgeInsets.all(16),
    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      mainAxisSpacing: 8,
      crossAxisSpacing: 8,
      mainAxisExtent: 300,
    ),
    itemBuilder: (context, index) {
      Bags bags = coolBags[index];
      return GestureDetector(
        onTap: () {},
        child: Container(
          height: 300,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          padding: const EdgeInsets.all(8),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Image.asset(
                        bags.image,
                        width: 120,
                        height: 120,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(
                    bags.name,
                    style: Theme.of(context).textTheme.headline6,
                    textAlign: TextAlign.center,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      Text(
                        '\ ${bags.price} DA',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Poppins",
                        ),
                      ),
                      const Spacer(),
                      const Icon(
                        Icons.star,
                        color: Color(0xFFF7E11D),
                      ),
                      Text(
                        bags.rate.toString(),
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Poppins",
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Positioned(
                top: 2,
                left: 1,
                child: Container(
                  height: 20,
                  width: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: const Color(0xFF20005E),
                  ),
                  child: Center(
                    child: Text(
                      '50% OFF',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Poppins",
                      ),
                    ),
                  ),
                ),
              ),
              const Align(
                alignment: Alignment.bottomRight,
                child: Material(
                  color: Color(0xFF20005E),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    bottomRight: Radius.circular(16),
                  ),
                  child: InkWell(
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      );
    },
  );
}

class details extends StatefulWidget {
  @override
  State<details> createState() => _detailsState();
}

class _detailsState extends State<details> {
  int a = 1; // Moved here to manage state

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFC7D9FE),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            //headers(context), // go back icon,
            bullshit(), // mycart
            diss(), // dissmisible wiget
            codeproo(),
            const SizedBox(
              height: 10,
            ),
            bullshitnbr2(),
            const SizedBox(
              height: 10,
            ),
            checkouttt(),
          ],
        ),
      ),
    );
  }

  Widget bullshit() {
    return const Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(5),
          child: Text(
            'My Cart',
            style: TextStyle(
                fontFamily: "Poppins",
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF20005E)),
          ),
        ),
      ],
    );
  }

  Widget diss() {
    return Expanded(
      child: ListView.builder(
        itemCount: newbag.length,
        itemBuilder: (context, index) {
          Bags bags = newbag[index];
          return Dismissible(
              background: Container(
                color: Colors.red,
                child: Icon(Icons.delete),
              ),
              key: ValueKey<int>(bags.hashCode),
              onDismissed: (direction) {
                newbag.removeAt(index);
              },
              child: Column(
                children: [
                  Container(
                    height: 90,
                    margin: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 70,
                          width: 70,
                          margin: EdgeInsets.only(right: 15),
                          child: Image.asset(bags.image),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                bags.name,
                                style: const TextStyle(
                                  fontFamily: "Poppins",
                                  fontSize: 20,
                                ),
                                maxLines: 1,
                              ),
                            ),
                            Text(
                              bags.description,
                              style: const TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 9,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            const SizedBox(
                              height: 2,
                            ),
                            Text(
                              '\ ${bags.price} DA',
                              style: const TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        const Spacer(),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 5,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Icon(
                                Icons.delete,
                                color: Colors.white,
                              ),
                              Row(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        if (a > 0) {
                                          a--;
                                        }
                                      });
                                    },
                                    child: Container(
                                      padding: EdgeInsets.all(4),
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          //borderRadius: BorderRadius.circular(20),
                                          boxShadow: [
                                            BoxShadow(
                                                color: Colors.grey
                                                    .withOpacity(0.5),
                                                //spreadRadius: 1,
                                                blurRadius: 10)
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(30)),
                                      child: Icon(
                                        CupertinoIcons.minus,
                                        size: 15,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.symmetric(horizontal: 3),
                                    child: Text(
                                      a.toString(),
                                      style: TextStyle(fontSize: 14),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        a++;
                                      });
                                    },
                                    child: Container(
                                      padding: EdgeInsets.all(4),
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          //borderRadius: BorderRadius.circular(20),
                                          boxShadow: [
                                            BoxShadow(
                                                color: Colors.grey
                                                    .withOpacity(0.5),
                                                //spreadRadius: 1,
                                                blurRadius: 10)
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(30)),
                                      child: Icon(
                                        CupertinoIcons.plus,
                                        size: 15,
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ));
        },
      ),
    );
  }

  Widget codeproo() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 50,
            margin: const EdgeInsets.symmetric(horizontal: 8),
            padding: const EdgeInsets.fromLTRB(8, 2, 8, 2),
            decoration: BoxDecoration(
              color: const Color(0xFFF7FAFF),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 1),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Promo Code',
                          hintStyle:
                              TextStyle(color: Colors.grey, fontSize: 15),
                        ),
                      ),
                    ),
                  ),
                  const Spacer(),
                  Material(
                    color: Color(0xFFC7D9FE),
                    borderRadius: BorderRadius.circular(8),
                    child: InkWell(
                      onTap: () {},
                      borderRadius: BorderRadius.circular(8),
                      child: Container(
                        height: 40,
                        width: 60,
                        alignment: Alignment.center,
                        child: const Text(
                          'Apply',
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF20005E),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget bullshitnbr2() {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          child: const Text(
            "Total (3 items):",
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Color(0xFF20005E)),
          ),
        ),
        const Spacer(),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          child: const Text(
            "450 DA",
            style: TextStyle(
                fontFamily: "Poppins",
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF20005E)),
          ),
        ),
      ],
    );
  }

  Widget checkouttt() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 50,
            margin: const EdgeInsets.symmetric(horizontal: 8),
            padding: const EdgeInsets.fromLTRB(8, 2, 8, 2),
            decoration: BoxDecoration(
              color: const Color(0xFF20005E),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 1),
              child: Row(
                children: [
                  Container(
                    child: const Text(
                      'Proceed to Checkout',
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const Spacer(),
                  Material(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    child: InkWell(
                      onTap: () {},
                      borderRadius: BorderRadius.circular(8),
                      child: Container(
                        height: 40,
                        width: 60,
                        alignment: Alignment.center,
                        child: const Icon(
                          Icons.arrow_forward,
                          color: Color(0xFF20005E),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class CustomerSpacer extends StatelessWidget {
  const CustomerSpacer({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 10,
    );
  }
}
