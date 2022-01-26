import 'package:flutter/material.dart';
import 'package:pelatihan_mobile/image_picker_home.dart';

import 'login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ImagePickerHome()
        //Scaffold(
      //     appBar: AppBar(
      //       title: Text("Pelatihan Mobile"),
      //     ),
      //     body:
      //
      //     // IndexedStack(
      //     //   index: 1,
      //     //   children: [
      //     //     Container(
      //     //       color: Colors.green,
      //     //     ),
      //     //     Container(
      //     //       color: Colors.red,
      //     //       height: 400,
      //     //       width: 300,
      //     //     ),
      //     //     Container(
      //     //       color: Colors.amber,
      //     //       height: 200,
      //     //       width: 200,
      //     //     ),
      //     //   ],
      //     // )
      //
      //     // Padding(
      //     //   padding: EdgeInsets.all(8),
      //     //   child: GridView.builder(
      //     //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      //     //     itemBuilder: (context, index){
      //     //       return Image.asset('images/ekik.png');
      //     //     },
      //     //     itemCount: 4,
      //     //   ),
      //     // )
      //
      //     // ListView.separated(
      //     //   itemBuilder: (context, index) {
      //     //     return Card(
      //     //       child: Padding(
      //     //           padding: EdgeInsets.all(15),
      //     //           child: Text(
      //     //             "Index $index",
      //     //             style: TextStyle(fontSize: 30),
      //     //           )),
      //     //     );
      //     //   },
      //     //   itemCount: 15,
      //     //   separatorBuilder: (context, index){
      //     //     if(index % 5 == 0){
      //     //       return Container(
      //     //         color: Colors.amber,
      //     //         child: Text(
      //     //             "Ini Separator",
      //     //             style: TextStyle(fontSize: 24)
      //     //         ),
      //     //       );
      //     //     } else {
      //     //       return Divider(thickness: 15,);
      //     //     }
      //     //   },
      //     // )
      //
      //     // ListView(
      //     //   children: [
      //     //     Container(
      //     //       child: Padding(
      //     //           padding: EdgeInsets.all(8),
      //     //           child: Center(
      //     //             child: Text(
      //     //               "Ini Judul",
      //     //               style: TextStyle(
      //     //                   fontSize: 32, fontWeight: FontWeight.bold),
      //     //             ),
      //     //           )
      //     //       ),
      //     //     ),
      //     //     Text(
      //     //       "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
      //     //       style: TextStyle(fontSize: 28),
      //     //     ),
      //     //   ],
      //     // )
      //     ),
    );
  }
}
