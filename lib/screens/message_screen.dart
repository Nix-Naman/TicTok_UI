import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class MessaegScreen extends StatelessWidget {
  const MessaegScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Icon(
            Icons.notifications_active_outlined,
            size: height / width * 100,
          ),
          const Divider(color: Colors.transparent),
          Center(
            child: AutoSizeText(
              "Notifications are'nt available",
              style:
                  Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 18),
            ),
          ),
          Center(
            child: AutoSizeText(
              "Notifications about your account will appear here",
              style: Theme.of(context)
                  .textTheme
                  .bodyText1!
                  .copyWith(fontSize: 14, color: Colors.grey),
            ),
          )
        ],
      ),
    );
  }
}
