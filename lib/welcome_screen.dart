import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.transparent, // Set background color to transparent
        buttonTheme: const ButtonThemeData(
          buttonColor: Colors.blue,
          textTheme: ButtonTextTheme.primary,
        ),
      ),
      darkTheme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.transparent, // Set background color to transparent
        buttonTheme: const ButtonThemeData(
          buttonColor: Colors.red,
          textTheme: ButtonTextTheme.primary,
        ),
      ),
      themeMode: ThemeMode.light,

      home: Scaffold(
        body: Stack(
          children: [
            // Background Image
            Image.asset(
              "images/background.jpg", // Replace with your image asset path
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    child: Image.asset("images/Scissors-image-remove.png", height: 100, width: 100,),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'SCISSOR\'S ',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  ),
                  SizedBox(height: 30),
                Icon(Icons.spa_rounded, size: 50,color:Color(0xFF7165D6)),


              Container(
                    child: Text(
                      'WELCOME TO SCISSOR\'S SALOON',
                      style: TextStyle(color: Colors.white,fontSize: 25, fontWeight: FontWeight.bold,),
                    ),
                  ),
                  SizedBox(height: 50),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 40,
                        child:IconButton(
                            onPressed:(
                                login()
                            ) ,
                            icon:  Icon(Icons.person,size: 70,color:Color(0xFF7165D6))) ,
                      ),
                      SizedBox(width: 15,),
                      Container(
                        child: Text(
                          "USER",
                          style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 40,
                        child: IconButton(
                            onPressed:(
                                login()
                            ),
                            icon: Icon(Icons.admin_panel_settings,size:70,color:Color(0xFF7165D6))) ,
                      ),
                      SizedBox(width: 15,),
                      Container(
                        child: Text(
                          "ADMIN",
                          style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),


                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  login() {}
}
