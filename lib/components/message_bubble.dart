import 'package:flash_chat_starting_project/constants.dart';
import 'package:flutter/material.dart';

class MessageBubble extends StatelessWidget {
  final String? message, sender;

  const MessageBubble({Key? key, this.message, this.sender}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(bubbleRadius),
          topRight: Radius.circular(bubbleRadius),
          bottomLeft: Radius.circular(bubbleRadius),
          bottomRight: Radius.circular(bubbleRadius),
        ),
        color: Colors.blue,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 12.0),
          child: Column(
            children: [
              Text(
                sender!,
                style: TextStyle(fontSize: 16,color: kChatEmailColor),
              ),
              SizedBox(height: 8),
              Text(
                message!,
                style: TextStyle(fontSize: 16),
              ),

            ],
          ),
        ),
      ),
    );
  }
}