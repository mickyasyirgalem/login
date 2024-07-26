// import 'dart:io';

// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:loginpage/utilites/show_error_dialog.dart';
// import 'package:firebase_storage/firebase_storage.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';

// class FinalQuestions extends StatefulWidget {
//   const FinalQuestions({super.key});

//   @override
//   State<FinalQuestions> createState() => _FinalQuestionsState();
// }

// class _FinalQuestionsState extends State<FinalQuestions> {
//   File? _imageFile;
//   String imageurl = '';
//   List<File?> items = [];
//   Future<void> _takePicture() async {
//     final picker = ImagePicker();
//     final imageFile = await picker.pickImage(source: ImageSource.camera);
//     if (imageFile == null) {
//       return;
//     }
//     setState(() {
//       _imageFile = File(imageFile.path);
//       items.add(_imageFile);
//     });
//   }

//   late Stream<QuerySnapshot> _imageStream;
//   final CollectionReference _referencetocoll =
//       FirebaseFirestore.instance.collection('imagestoshow');
//   @override
//   initState() {
//     super.initState();
//     _imageStream = _referencetocoll.snapshots();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//         child: Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Column(children: <Widget>[
//               const SizedBox(
//                 height: 50,
//               ),
//               ElevatedButton.icon(
//                 onPressed: _takePicture,
//                 icon: const Icon(Icons.camera_alt),
//                 label: const Text('Add Images'),
//               ),
//               ElevatedButton.icon(
//                 onPressed: () {},
//                 icon: const Icon(Icons.add),
//                 label: const Text('submit'),
//               ),
//               Material(
//                 child: Container(
//                     height: 150,
//                     width: double.infinity,
//                     decoration: BoxDecoration(
//                       color: Colors.grey,
//                       borderRadius: BorderRadius.circular(15),
//                     ),
//                     child: GridView.builder(
//                       itemCount: items.length,
//                       itemBuilder: (BuildContext context, int index) {
//                         return ListTile(
//                           leading: Container(
//                             height: 80,
//                             width: 80,
//                             child: _imageFile != null
//                                 ? Image.file(_imageFile!)
//                                 : Center(child: Text('No images yet')),
//                           ),
//                         );
//                       },
//                       gridDelegate:
//                           const SliverGridDelegateWithMaxCrossAxisExtent(
//                               maxCrossAxisExtent: 150),
//                     )),
//               ),
//             ])));
//   }
// }
//                 //   Map<String, dynamic> dataToSave = {
//                 //     'image': imageurl,
//                 //   };
//                 //   _referencetocoll.add(dataToSave);
//                 // },

// // StreamBuilder(
// //                     stream: _imageStream,
// //                     builder: (BuildContext context, AsyncSnapshot snapshot) {
// //                       if (snapshot.hasError) {
// //                         return Center(child: Text(snapshot.error.toString()));
// //                       }
// //                       if (snapshot.hasData) {
// //                         QuerySnapshot querySnap = snapshot.data;
// //                         List<QueryDocumentSnapshot> document = querySnap.docs;
// //                         List<Map> items =
// //                             document.map((e) => e.data() as Map).toList();












//                     // Reference referencetofirebase =
//                     //     FirebaseStorage.instance.ref();
//                     // Reference referencetofile =
//                     //     referencetofirebase.child('images');
//                     // Reference referencetouploadimage =
//                     //     referencetofile.child(uniqueName);
//                     //   await referencetouploadimage.putFile(File(file!.path));
//                     //   imageurl = await referencetouploadimage.getDownloadURL();