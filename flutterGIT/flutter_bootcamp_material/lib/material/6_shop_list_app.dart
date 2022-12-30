import 'package:bootcamp_material/material/module15_resources/set_state_example.dart';
import 'package:flutter/material.dart';

// class _Product {
//   _Product({required this.name, required this.qty});
//   String name;
//   int qty;
//   bool inCart = false;

//   int firstqty = 0;

//   void decrement() {
//     firstqty += 1;
//     if (this.qty != 0) {
//       this.qty -= 1;
//     } else {
//       this.qty = firstqty - 1;
//       this.firstqty = 0;
//     }
//     this.inCart = (qty == 0) ? true : false;
//   }
// }

// List<_Product> productData = [
//   _Product(name: "Telur", qty: 3),
//   _Product(name: "Gula", qty: 2),
//   _Product(name: "Tepung", qty: 2)
// ];

// class _ProductList extends StatefulWidget {
//   _ProductList({super.key});

//   @override
//   State<_ProductList> createState() => __ProductListState();
// }

// class __ProductListState extends State<_ProductList> {
//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       itemCount: productData.length,
//       itemBuilder: (context, index) {
//         return ListTile(
//           contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
//           onTap: () {
//             setState(() {
//               productData[index].decrement();
//             });
//           },
//           leading: CircleAvatar(
//             backgroundColor:
//                 productData[index].inCart ? Colors.grey : Colors.amber,
//             radius: 30,
//             child: Text(
//               productData[index].name[0],
//               style: TextStyle(fontSize: 24, color: Colors.white),
//             ),
//           ),
//           title: Text(
//             "${productData[index].name} x${productData[index].qty}",
//             style: productData[index].inCart
//                 ? TextStyle(
//                     color: Colors.black38,
//                     fontSize: 24,
//                     decoration: TextDecoration.lineThrough)
//                 : TextStyle(
//                     fontSize: 24,
//                   ),
//           ),
//         );
//       },
//     );
//   }
// }

// List<Item> dataItem = [
//   Item(itemName: "saus tomat", itemQty: 2),
//   Item(itemName: "kecap", itemQty: 4),
//   Item(itemName: "acar", itemQty: 3)
// ];
List<String> dataItem = ["Andrian", "putri", "mawar", "indah"];
// List<double> itemQty = [];
final textController = TextEditingController();
int? dataIteml;
IconData buttonIcon = Icons.add;

class ShopListApp extends StatefulWidget {
  const ShopListApp({super.key});

  @override
  State<ShopListApp> createState() => _ShopListAppState();
}

class _ShopListAppState extends State<ShopListApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shop List App',
      home: Scaffold(
        drawer: Drawer(
            child: ListView(
          children: [
            DrawerHeader(
              child: Text("Profil"),
              decoration: BoxDecoration(color: Colors.blue),
            ),
            ListTile(
              onTap: () {
                print("ITEM 1 pressed");
              },
              leading: Icon(Icons.people),
              title: Text("Anggota"),
              trailing:
                  IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz)),
            ),
            ListTile(
              onTap: () {
                print("ITEM 1 pressed");
              },
              leading: Icon(Icons.mail),
              title: Text("Mail"),
              trailing:
                  IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz)),
            )
          ],
        )),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: 0,
            fixedColor: Colors.blue,
            items: const [
              BottomNavigationBarItem(
                label: "Home",
                icon: Icon(Icons.home),
              ),
              BottomNavigationBarItem(
                label: "Search",
                icon: Icon(Icons.search),
              ),
              BottomNavigationBarItem(
                label: "Profile",
                icon: Icon(Icons.account_circle),
              ),
            ],
            onTap: (int indexOfItem) {}),
        appBar: AppBar(
          title: Row(
            children: [
              Expanded(
                child: TextField(
                  controller: textController,
                ),
              ),
              ElevatedButton(
                child: Icon(buttonIcon),
                onPressed: () {
                  setState(() {
                    if (dataIteml != null) {
                      dataItem[dataIteml!] = textController.text;
                      dataIteml = null;
                    } else {
                      // dataItem.add(textController.text);
                    }
                    dataItem.add(textController.text);
                    // textController.clear();
                  });
                  print(dataItem);
                },
              ),
            ],
          ),
        ),
        body: ProductList(),
      ),
    );
  }
}

// class Item {
//   String itemName;
//   int itemQty;
//   Item({required this.itemName, required this.itemQty});
// }

class ProductList extends StatefulWidget {
  const ProductList({super.key});

  @override
  State<ProductList> createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  // List<String> dataItem = ["telur", "tepung", "teriyaki"];
  // List<int> dataQty = [2, 4, 3];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: dataItem.length,
        itemBuilder: (context, i) {
          return ListTile(
              title: Text("${dataItem[i]}"),
              // title: Text("${dataItem[i]} x${itemQty[i]}"),
              onTap: () {
                setState(() {
                  dataIteml = i;
                  textController.text = dataItem[i];
                  buttonIcon = Icons.save;
                });
              },
              trailing: IconButton(
                icon: Icon(Icons.delete),
                onPressed: () {
                  setState(() {
                    dataItem.removeAt(i);
                  });
                },
              ),
              leading: CircleAvatar(
                  backgroundColor:
                      (dataItem[i] != 0) ? Colors.amber : Colors.grey),
              onLongPress: (dataItem[i] != 0)
                  ? () {
                      setState(() {
                        // itemQty[i] - 1;
                      });
                    }
                  : null);
        });
  }
}
