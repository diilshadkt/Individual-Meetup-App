import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SearchTextFieldWidget extends ConsumerWidget {
  const SearchTextFieldWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return TextField(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(15, 10, 7, 10),
        hintText: "Search",
        hintStyle: TextStyle(fontSize: 19),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Colors.grey, width: 3)),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey, width: 2),
            borderRadius: BorderRadius.circular(13)),
        prefixIcon: Padding(
          padding: const EdgeInsets.only(left: 17),
          child: const Icon(
            Icons.search_outlined,
            color: Colors.black,
            size: 35,
          ),
        ),
        suffixIcon: Padding(
          padding: const EdgeInsets.only(right: 17),
          child: Icon(
            Icons.mic_none_rounded,
            color: Colors.black,
            size: 35,
          ),
        ),
      ),
    );
  }
}



//  TextField(
//       decoration: InputDecoration(
//         filled: true,
//         fillColor: Colors.white,
//         hintText: "Search",
//         border: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(10),
//           borderSide: BorderSide(color: Colors.black, width: 3),
//         ),
       
        
//       ),
//     );