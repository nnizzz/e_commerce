import 'package:flutter/material.dart';
import 'package:flutter_application_1/ecommerceapp/homescrn.dart';

class open extends StatelessWidget {
  const open({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.deepOrange,
              Colors.orangeAccent,
              Colors.amber,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, 
          children: [
            Image.network(
               'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSMVlgZb34R8f9ulRopJGxiZK4inR-4Ek6Fqg&s',
               height: 150,
             ),

             SizedBox(height: 10),

             Text(
              'Eatzy',
              style: TextStyle(
                fontSize: 42,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                color: Colors.black,
              ),
            ),
            
             SizedBox(height: 10),

             Text(
              'Bringing your cravings closer than ever!',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Colors.black87,
                fontWeight: FontWeight.bold
              ),
            ),
            
            SizedBox(height: 40),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const home()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.pinkAccent,
                padding: const EdgeInsets.symmetric(
                    horizontal: 50, vertical: 14),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: const Text(
                'Get Started',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
