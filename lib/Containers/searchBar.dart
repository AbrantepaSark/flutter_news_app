import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  SearchBar({Key? key}) : super(key: key);

  final _textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 5, bottom: 10),
      padding: const EdgeInsets.only(left: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        // boxShadow: const [
        //   BoxShadow(
        //     color: Colors.black,
        //     spreadRadius: 1,
        //     blurRadius: 0,
        //     offset: Offset(0.5, 1.5),
        //   )
        // ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: TextField(
          controller: _textController,
          keyboardType: TextInputType.text,
          textInputAction: TextInputAction.search,
          //autofocus: true,
          onSubmitted: (val) {
            // searchHandler(val);
          },
          decoration: InputDecoration(
            hintText: 'Search by name or category',
            hintStyle: const TextStyle(fontSize: 12),
            focusColor: Colors.blue,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
            suffixIcon: Container(
              color: const Color.fromARGB(255, 172, 65, 58),
              child: IconButton(
                onPressed: () => {},
                // onPressed: () => searchHandler(_textController.text),
                icon: const Icon(
                  Icons.search,
                  size: 25,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
