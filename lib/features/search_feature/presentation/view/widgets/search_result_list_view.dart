import 'package:flutter/material.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: 10,
      itemBuilder: (context, index) {
        // return const BookListViewItem();
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: const Text('data'),
        );
      },
    );
  }
}
