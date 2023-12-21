import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_ordering/constants.dart';
import 'package:food_ordering/widgets/item_details.dart';

class ItemScreen extends StatelessWidget {
  const ItemScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black45,
            ),
          ),
          title: const Text(
            'Cheese pizza',
            style: TextStyle(
              color: Colors.black,
              fontSize: 25,
            ),
          ),
          actions:  [
            Padding(
              padding:const EdgeInsets.only(right: 10),
              child: InkWell(
                onTap: () {
                  
                },
                child:const Icon(
                  Icons.favorite,
                  color: kColor,
                  size: 28,
                ),
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Mized Pizza with beef, chilli and cheese',
                style: TextStyle(
                  color: Colors.black45,
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 8,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.star,
                    color: kColor,
                    size: 22,
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  Text(
                    '4.7',
                    style: TextStyle(
                      color: Colors.black45,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.all(25),
                child: Image(
                  image: AssetImage(kPizzaImage),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const ItemDetails(
                    type: 'Calories',
                    typeVal: '120',
                  ),
                  Container(
                    height: 30,
                    width: 2,
                    color: Colors.black38,
                  ),
                  const ItemDetails(type: 'Volume', typeVal: '12 Inch'),
                  Container(
                    height: 30,
                    width: 2,
                    color: Colors.black38,
                  ),
                  const ItemDetails(type: 'Distance', typeVal: '1 KM'),
                ],
              ),
              const SizedBox(height: 40,),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          'Order',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black45,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                         SizedBox(height: 8,),
                        Row(
                          children: [
                            Icon(
                              Icons.add_circle_outline_rounded,
                              color: Colors.black45,
                            ),
                            SizedBox(width: 2,),
                            Text(
                              '01',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              width: 2,
                            ),

                            Icon(
                              CupertinoIcons.minus_circle,
                              color: Colors.black45,
                            ),
                          ],
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          'Delivery',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.black45,
                          ),
                        ),
                        SizedBox(height: 8,),
                        Text(
                          'Express',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.green,
                          ),
                        ),
                      ],
                    ),

                    Column(
                      children: [
                        Text(
                          'Price',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black45,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 8,),
                        Text(
                          '\$8.99',
                          style: TextStyle(
                            fontSize: 16,
                            color: kColor,
                            fontWeight: FontWeight.bold,
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
        bottomNavigationBar: InkWell(
          onTap: () {
            
          },
          child: Container(
            height: 60,
            margin:const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            padding:const EdgeInsets.symmetric(vertical: 20),
            decoration: BoxDecoration(
              color: kColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child:const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Add to Cart',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 10,),
                Icon(
                  Icons.add_circle_outline_rounded,
                  color: Colors.white,
                  size: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
