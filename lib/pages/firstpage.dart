import 'dart:html';

import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
   String foodRadio = "";

   bool foodcheck = false;
   bool foodcheck2 = false;
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(title: Text("Neatwaree_124"), backgroundColor: Color.fromARGB(255, 156, 240, 243),
      ),
      body: Column(
        children: [
          createRadiomenu("ผัดเผ็ดปลาดุก","ผัดเผ็ดปลาดุก","150บาท"),
          createRadiomenu("ข้าวผัดชุดใหญ่","ข้าวผัดชุดใหญ่สำหรับ 6-10 คน","290บาท"),
          createRadiomenu("ข้าวผัดชุดเล็ก","ข้าวผัดชุดเล็กสำหรับ 3-5 คน","180บาท"),
          createRadiomenu("ตำยกครก","ตำยกครก","120บาท"),
          createRadiomenu("ยำรวมมิตร","ยำรวมมิตร","70บาท"),
          const Divider(),
          CheckboxListTile(
          controlAffinity: ListTileControlAffinity.leading,
          title: Text("เพิ่มไข่ดาว + 5 บาท"),
          value: foodcheck, onChanged:(value) {
          setState(() {
            foodcheck = value!;
          });
          
        },),
        CheckboxListTile(
          controlAffinity: ListTileControlAffinity.leading,
          title: Text("เพิ่มหมูทอด + 5 บาท"),
          value: foodcheck2, onChanged:(value) {
          setState(() {
            foodcheck2 = value!;
          });
          
        },)


        ],
    ),);
          
  
  }

  

  RadioListTile<String> createRadiomenu(
    String val, String title, String subtitle) {
    return RadioListTile(
        activeColor: Colors.brown,
        value: val,
        groupValue: foodRadio,
        secondary: Icon(Icons.shopping_bag),
        onChanged:(value) {
          setState(() {
          foodRadio = value!;
          });
          print(foodRadio);
        
        },
        title: Text(title),
        subtitle: Text(subtitle),
        );
  }
}

