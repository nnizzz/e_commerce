import 'package:flutter/material.dart';
import 'package:flutter_application_1/ecommerceapp/detail.dart';
import 'package:flutter_application_1/ecommerceapp/homescrn.dart';


class fooditems extends StatelessWidget {
  const fooditems({super.key});

  @override
  Widget build(BuildContext context) {
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
              MaterialPageRoute(builder: (context) => home()),
            );
          },
          icon: Icon(Icons.arrow_back),
        ),
        title: const Text(
          'Fast Foods',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search_sharp)),
          IconButton(onPressed: () {}, icon: Icon(Icons.list_sharp)),
        ],
      ),

      body: Padding(
        padding: EdgeInsets.all(10),
        child: GridView.builder(
          itemCount: fdname.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 12,
            crossAxisSpacing: 12,
            mainAxisExtent: 230,
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

                  SizedBox(height: 8),

                  
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 8),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => fddetails(
                              
                            ),
                          ),
                        );
                      },
                      child: Text(
                        fdname[index],
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.black, 
                        ),
                      ),
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Text(
                      "All Recipes",
                      style: TextStyle(color: Colors.grey, fontSize: 12),
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
      ),
    );
  }
}
