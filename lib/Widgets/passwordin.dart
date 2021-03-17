import 'package:flutter/material.dart';
import 'package:app/Widgets/fonts.dart';

class Passwordin extends StatelessWidget {
  const Passwordin({
    Key key,
    this.icon,
    @required this.hint,
    this.inputAction,
    this.inputType,
  }) : super(key: key);

  final IconData icon;
  final String hint;
  final TextInputType inputType;
  final TextInputAction inputAction;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  color: Colors.grey[600].withOpacity(0.5),
                  borderRadius: BorderRadius.circular(16)),
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(vertical: 20),
                  border: InputBorder.none,
                  hintText: hint,
                  hintStyle: kBodyText,
                ),
                style: kBodyText,
                obscureText: true,
                // keyboardType: TextInputType.emailAddress,
                keyboardType: inputType,
                // textInputAction: TextInputAction.next,
                textInputAction: inputAction,
              ),
            ),
          )
        ],
      ),
    );
  }
}
