import 'package:app_figurinhas_copa22/styles/colors_styles.dart';
import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;

  const RoundedButton({
    super.key,
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 3,
      shadowColor: Colors.grey.withOpacity(0.2),
      shape: CircleBorder(),
      child: DecoratedBox(
        decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.white),
        child: IconButton(
          onPressed: onPressed,
          icon: Icon(
            icon,
            color: context.colors.greyDart,
          ),
        ),
      ),
    );
  }
}
