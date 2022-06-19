
import 'package:flutter/material.dart';
import 'package:tot_scaffold/pages/program_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.shopping_cart),
        title: const Text('Shopping App'),
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.settings)),
          IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert)),
        ],
      ),

      floatingActionButton: FloatingActionButton.extended(
        onPressed: (){},
        label: const Text('Buy More'),
        icon: const Icon(Icons.add),
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index){
          setState((){
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(Icons.home)),
          BottomNavigationBarItem(
              label: 'Programs',
              icon: Icon(Icons.paste_rounded)),
          BottomNavigationBarItem(
              label: 'Contact Us',
              icon: Icon(Icons.phone)),

        ],

      ),

      body: IndexedStack(
        index: _currentIndex,
        children: const [
          Center(child: Text('Home'),),
          ProgramPage(),
          Center(child: Text('Contact Us'),),

        ],
      ),
    );
  }
}
