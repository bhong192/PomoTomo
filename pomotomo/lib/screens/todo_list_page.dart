// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';
//
// class  todo_list_page extends StatefulWidget {
//   const todo_list_page({Key? key}) : super(key: key);
//
//   @override
//   _State createState() => _State();
// }
//
// class _State extends State<todo_list_page> {
//
//   List<String> tasks = [
//     "Task 1",
//     "Task 2",
//     "Task 3"
//   ];
//
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: StreamBuilder<QuerySnapshot>(
//         stream: FirebaseFirestore.instance.collection("users").snapshots(),
//         builder: (context, snapshot){
//           if(snapshot.hasError){
//             return const Text("Error in snapshot");
//           }
//           else if(snapshot.hasData || snapshot.data != null){
//             return ListView.builder(
//               shrinkWrap: true,
//               itemCount: snapshot.data?.docs.length,
//               itemBuilder: (BuildContext context, int index){
//                 QueryDocumentSnapshot<Object?>? documentSnapshot = snapshot.data?.docs[index];
//                 return Dismissible(
//                   key: Key(index.toString()),
//                   child: Card(
//                     elevation: 4,
//                     child: ListTile(
//                       title: Text((documentSnapshot != null) ? (documentSnapshot["todoTitle"]): ""),
//                       subtitle: Text((documentSnapshot != null)?((documentSnapshot["todoDesc"] != null)
//                       ? documentSnapshot["todoDesc"] : ""): ""),
//                       trailing: IconButton(
//                         icon: const Icon(Icons.delete),
//                         color: Colors.red,
//                         onPressed: (){
//                           setState((){
//
//                           });
//                         },
//                       )
//                     ),
//                   ),
//                 ),
//               }
//             );
//           }
//         }
//       ),
//
//
//       );
//   }
// }
