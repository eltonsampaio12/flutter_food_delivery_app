import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  const MyTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Icon(Icons.search, color: Colors.black),
          ),
          hintText: "Search",
          suffixIcon: const Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(Icons.filter_none_outlined, color: Colors.black),
          ),
          filled: true,
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(30),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(30),
          ),
        ),
      ),
    );
  }
}
