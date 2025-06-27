import 'package:flutter/material.dart';

import 'widgets/search_view_body.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: const Text(
          "Search Screen",
          style: TextStyle(
            color: Colors.white,
            fontFamily: "Poppins",
            fontSize: 20,
          ),
        ),
      ),
      body: const SearchViewBody(),
    );
  }
}
