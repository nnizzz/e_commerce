import 'package:flutter/material.dart';
import 'package:flutter_application_1/ecommerceapp/item.dart';


class fddetails extends StatelessWidget {
  const fddetails({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.push(
               context,
               MaterialPageRoute(builder: (context) => fooditems()),
             );
        }, 
        icon: Icon(Icons.arrow_back)),
        title: Text("Details"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.favorite_border),
          )
        ],
      ),

      body: Stack(
        children: [
      
          SingleChildScrollView(
            padding: EdgeInsets.only(bottom: 100),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                
                Container(
                  height: 300,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcREk7e-8-mwXTdxnrpKOPgf3cUyBUFQlYNnNg&s'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                SizedBox(height: 15),

                
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Vegetable Pizza",
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold)),
                      Text("79/-",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.red)),
                    ],
                  ),
                ),

                SizedBox(height: 10),

                
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    children: [
                      Icon(Icons.star, color: Colors.amber, size: 20),
                      Icon(Icons.star, color: Colors.amber, size: 20),
                      Icon(Icons.star, color: Colors.amber, size: 20),
                      Icon(Icons.star, color: Colors.amber, size: 20),
                      Icon(Icons.star_half, color: Colors.amber, size: 20),
                      SizedBox(width: 4),
                      Text("(1k+)", style: TextStyle(color: Colors.grey))
                    ],
                  ),
                ),

                SizedBox(height: 25),

                
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Text("Ingredients",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                ),
                Padding(
                  padding:
                       EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Text(
                    "pizza crust, tomato sauce, mozzarella cheese, green peppers, yellow peppers, olives, mushrooms",
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.black87,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
                SizedBox(height: 20,),


                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 16),
                  child: Text("Description",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                ),
                Padding(
                  padding:  EdgeInsets.all(16),
                  child: Text(
                   ' A fully loaded vegetarian pizza,featuring a variety of colorful toppings on a classic crust with a generous layer of melted cheese and red sauce. The round pizza is cut into slices and includes ingredients such as green bell peppers, black olives, sliced mushrooms, diced tomatoes, and yellow peppers or zucchini slices, all evenly distributed across the surface. The crust has a golden-brown edge, and the overall presentation suggests a fresh, vibrant, and appetizing meal.',
                   style: TextStyle(
                    fontSize: 17,
                    color: Colors.black87,
                    fontStyle: FontStyle.italic
                   ),
                  ),
                ),

                SizedBox(height: 80),
              ],
            ),
          ),

          
          Positioned(
            bottom: 20,
            right: 20,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 14),
                backgroundColor: Colors.red,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
              ),
              child: Text(
                "Add to Cart",
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
          ),
          Positioned(
            bottom: 20,
            left: 20,
            child: ElevatedButton(
              onPressed: (){}, 
              child: Row(
                children: [
                  IconButton(onPressed: (){}, 
                  icon: Icon(Icons.remove,
                  size: 12,)),
                  Text('1',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87),),
                  IconButton(onPressed: (){}, 
                  icon: Icon(Icons.add,
                  size: 12,))
                ],
              ), ))
        ],
      ),
    );
  }
}
