import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Perfil de Usuário',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: UserProfileScreen(),
    );
  }
}

class UserProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [

          Stack(
            alignment: Alignment.center,
            children: [
  
              Container(
                width: double.infinity,
                height: 200,
                color: Colors.blue,
              ),
              
              Positioned(
                bottom: 10,
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage('https://i.pinimg.com/474x/8b/ff/4a/8bff4a7645a1a2f322e0add49180cef8.jpg'), 
                ),
              ),
            ],
          ),
          
          SizedBox(height: 60), 

          Column(
            children: [
              Text(
                'Mateus Cristiano',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(
                'Quase desistindo da programação.',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[700],
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),

          SizedBox(height: 20), 

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text("Seguir"),
                  ),
                ),
                SizedBox(width: 20),

                Expanded(
                  child: OutlinedButton(
                    onPressed: () {},
                    child: Text("Mensagem"),
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
