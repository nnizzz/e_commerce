import 'package:flutter/material.dart';
import 'package:flutter_application_1/ecommerceapp/introscrn.dart';
import 'package:flutter_application_1/ecommerceapp/item.dart';
import 'package:carousel_slider/carousel_slider.dart';

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    final List rname = [
      'PizzaHut',
      'McDonalds',
      'KFC',
      'Dominos',
      'Subway',
      'Starbucks',
      'Baskin Robbins',
      'Taco Bell',
    ];
    final List rimg = [
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTyDC5_cIgv1yYmqunBVTHC_4ym9hBKJ-iWYA&s',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRC_ShstaAL_lCaJ0JCKz0vZ1_3E5TJbXbkgg&s',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTpf5W4K9BbQ0iosn9O82FzASE3cEcAbMKZqA&s',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTMT5fVjV3-wbXx77eme5XrWpTHDbfxWFxijg&s',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR6JwtLKUCOWdH6wUrv0FRdn406UhLAPCSVkw&s',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQZAH6tJ1lnXd2SQMw_DtILdhWy0Wk912ilA&s',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSGZZNqVB2F8UMajJkh3pK37BElr6FKF3Gi2A&s',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJQKMExAojoEXKhM-GvJREf3bnxOC9E-GYLQ&s',
    ];
    final List fdname = [
      'Cheese Burger',
      'Classic Pizza',
      'Chicken Sandwich',
      'Fried Chicken',
      'French Fries',
      'Pasta',
      'Shawarma',
      'Choco MilkShake',
      'Nuggets',
    ];

    final List fdimg = [
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTnzA563HfTiXVY-kiNpNQVax-mt4BtviviXA&s',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRqJTg20NbA6l-2TEBYMbNOAPSweNBOO_3pwQ&s',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSMYWrpsTCR9mYD79mfk8NGG85fszD0LXhauw&s',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQysIgk9RWymoYiu9CyXPOyRPPh_zIhXqPfdA&s',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRj9qSaSK7j9IB0ATLMc_Lcm37RwvRTO0xDzg&s',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRWxEqgGXTLTUQFovFMdfpC1D0k5kbo5a3DYg&s',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRwZMniz6JUWJ_Xgd-Jugw2zJ4Kdus75nGykg&s',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS9HAiS_1U-RMWuZpINGD1EyNcH5cSbLQNq-g&s',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSH54zuzkxmq5_PrFI9iE9jnvNtHDiNQlN1_w&s',
    ];

    final List rate = [
      '4.5', '4.1', '3.9', '2.6', '4.5', '3.7', '4.9', '4.2', '3.2',
    ];

    final List review = [
      '1K+', '800', '3K', '200', '1.8K+', '900', '300', '2K+', '500',
    ];

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => open()),
            );
          },
          icon: Icon(Icons.arrow_back_sharp),
        ),
        title: Container(
          padding: EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 250,
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.search_sharp),
                    ),
                    SizedBox(width: 8),
                    Text(
                      "Search Here...",
                      style: TextStyle(color: Colors.black87),
                    ),
                  ],
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.shopping_cart_outlined, color: Colors.black),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Restaurants",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "View All",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),

              SizedBox(height: 16),

              
              SizedBox(
                height: 120,
                child: CarouselSlider.builder(
                  itemCount: rname.length,
                  itemBuilder: (context, index, realIndex) {
                    return Container(
                      margin: EdgeInsets.symmetric(horizontal: 8),
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 218, 178, 178),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.network(rimg[index], height: 50, width: 50),
                          SizedBox(height: 8),
                          Text(
                            rname[index],
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 14),
                          ),
                        ],
                      ),
                    );
                  },
                  options: CarouselOptions(
                    height: 180,
                    enlargeCenterPage: true,
                    enlargeStrategy: CenterPageEnlargeStrategy.height,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 2),
                    viewportFraction: 0.32, 
                    enableInfiniteScroll: true,
                    autoPlayCurve: Curves.easeInOut,
                    scrollDirection: Axis.horizontal,
                  ),
                ),
              ),

              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Fast Foods',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => fooditems()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueGrey,
                      padding: EdgeInsets.symmetric(
                        horizontal: 14,
                        vertical: 8,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: Text(
                      "View All",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 10),
              GridView.builder(
                itemCount: 4,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 12,
                  crossAxisSpacing: 12,
                ),
                itemBuilder: (context, index) {
                  return Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.network(
                          fdimg[index],
                          height: 150,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(height: 5),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8),
                          child: Text(
                            fdname[index],
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        SizedBox(height: 5),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8),
                          child: Row(
                            children: [
                              Text(rate[index], style: TextStyle(fontSize: 13)),
                              SizedBox(width: 4),
                              Icon(Icons.star, size: 14, color: Colors.amber),
                              SizedBox(width: 4),
                              Text(
                                review[index],
                                style: TextStyle(fontSize: 12, color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
