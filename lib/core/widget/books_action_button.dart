import 'package:bookly11/features/home_feature/data/models/book_model.dart';
import 'package:bookly11/features/home_feature/presentation/view/widgets/custom_button_action_book.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ButtonBooksAction extends StatelessWidget {
  const ButtonBooksAction({super.key, required this.bookModel});
final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          Expanded(
            child: CustomButtonActionBook(

                backgroundColor: Colors.white,
                textColor: Colors.black,
                text: '0\$',
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  bottomLeft: Radius.circular(16),
                )),
          ),
          SizedBox(width: 1.5),
          Expanded(
            child: CustomButtonActionBook(
                onPressed:() async {
                  Uri _url = Uri.parse(bookModel.volumeInfo.previewLink!);
                  if (!await launchUrl(_url)) {
                  throw Exception('Could not launch $_url');
                  }
                } ,
                backgroundColor: Color(0xffEF8262),
                textColor: Colors.white,
                text: 'Free preview',
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(16),
                  bottomRight: Radius.circular(16),
                )),
          ),
        ],
      ),
    );
  }
}
