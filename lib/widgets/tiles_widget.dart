import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:icons_flutter/icons_flutter.dart';


class TilesWidget extends StatelessWidget {
  final String title;
  final IconData leading;
  final Function()? onTap;

  const TilesWidget({
    Key? key,
    required this.title,
    required this.leading,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
        onTap: onTap,
        leading: Icon(leading, color: Colors.grey.shade700),
        title: Text(
          title,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        trailing: title != "Settings"
            ? const Icon(
                AntDesign.right,
                size: 16,
              )
            : SvgPicture.asset(
                "assets/images/usa.svg",
                width: 15,
                height: 20,
              ));
  }
}