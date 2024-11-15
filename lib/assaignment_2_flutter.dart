
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.brown),
      debugShowCheckedModeBanner: false,
      home: HomeActivity(),
    );
  }
}

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text('MyProfile'),
        toolbarHeight: 50,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.add)),
          IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
          IconButton(onPressed: () {}, icon: Icon(Icons.phone)),
        ],
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildCircleAvatarWithText(Icons.icecream_outlined, 'Ice cream is very delicious'),
            SizedBox(height: 20),
            _buildCircleAvatarWithText(Icons.arrow_back_ios_new, 'Programing is not boring if you love it'),
            SizedBox(height: 20),
            _buildCircleAvatarWithText(Icons.egg_outlined, 'if you submit  code directly copy from chatgpt then mark will zero'),
          ],
        ),
      ),
    );
  }

  Widget _buildCircleAvatarWithText(IconData icon, String label) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 60,
          backgroundColor: Colors.black12,
          child: Icon(
            icon,
            size: 50,
            color: Colors.black,
          ),
        ),
        SizedBox(height: 8),
        Text(label, style: TextStyle(fontSize: 16)),
      ],
    );
  }
}








