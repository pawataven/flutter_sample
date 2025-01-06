import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
      );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _navItemIndex = 0; //ลำดัยที่ของปุ่มที่เลือก

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BottomNavigaionBar'),
        centerTitle: true,
      ),
      body: null,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.deepPurple, //สีพื้นหลัง
        fixedColor: Colors.yellow, //สีปุ่มที่ถูกเลือก

        showSelectedLabels: true, //แสดงข้อความบนปุ่มที่ถูกเลือก
        showUnselectedLabels: true, //แสดงข้อความบนปุ่มที่ไม่ถูกเลือก
        currentIndex: _navItemIndex,
        items: btnNavItem(),
        onTap: (index) {
          setState(() {
            _navItemIndex = index;
          });
        },
      ),
    );
  }

  List<BottomNavigationBarItem> btnNavItem() {
    var iconItem = [Icons.home, Icons.shopping_cart, Icons.person, Icons.help];
    var labelItem = ['Home', 'Product', 'Member', 'Hele'];
    var bgColorItem = [
      Colors.deepPurple,
      Colors.indigo,
      Colors.teal,
      Colors.brown
    ];

    List<BottomNavigationBarItem> mybtn;

    BottomNavigationBarItem createItem(index) {
      return BottomNavigationBarItem(
          icon: Icon(iconItem[index]),
          label: labelItem[index],
          backgroundColor: bgColorItem[index]);
    }

    mybtn = List.generate(iconItem.length, createItem);

    return mybtn;
  }
}