import 'package:flutter/material.dart';
import '../widgets/food_item.dart';
import 'cart_page.dart';

class FoodListPage extends StatefulWidget {
  const FoodListPage({super.key});

  @override
  State<FoodListPage> createState() => _FoodListPageState();
}

class _FoodListPageState extends State<FoodListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("รายการอาหาร"),
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const CartPage()),
              );
              setState(() {});
            },
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
         child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            SizedBox(height: 10),
            Text("อาหารคาว", style: TextStyle(fontSize: 18)),

            FoodItem(name: "ไข่ป่าม", imagePath: "assets/images/egg.jpg"),
            FoodItem(name: "ข้าวซอย", imagePath: "assets/images/rice.jpg"),
            FoodItem(name: "จอผักกาด", imagePath: "assets/images/monitor.jpg"),
            FoodItem(name: "ลาบเหนือ", imagePath: "assets/images/larb.jpg"),
            ],
         ),
              ),
              const SizedBox(width: 16,),

              Expanded(
         child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            SizedBox(height: 20),
            Text("ของหวาน", style: TextStyle(fontSize: 18)),

            FoodItem(name: "ลูกชุบ", imagePath: "assets/images/baby.jpg"),
            FoodItem(name: "ขนมใส่ไส้", imagePath: "assets/images/candy.jpg"),
            FoodItem(name: "ขนมชั้น", imagePath: "assets/images/floor.jpg"),
          ],
          ),
              ),
          ],
          ),
          
        ),
      ),
    );
  }
}
