import 'package:flutter/material.dart';
import 'package:my_project/theme.dart';

class StyledButton extends StatelessWidget {
  const StyledButton({super.key,required this.onPressed,required this.child});
final Function() onPressed;
final Widget child;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed:onPressed,
      child:Container(
        padding:EdgeInsets.symmetric(vertical:10,horizontal:20),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors:[AppColors.primaryColor,AppColors.primaryAccent],
            begin:Alignment.topCenter,
            end:Alignment.bottomCenter,
           

          ),
           borderRadius:BorderRadius.all(Radius.circular(10))
        ),
        child:child,
        )
        );
  }
}