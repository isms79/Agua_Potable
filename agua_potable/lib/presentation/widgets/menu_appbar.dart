import 'package:flutter/material.dart';

class MenuAppbar extends StatelessWidget implements PreferredSizeWidget {
  const MenuAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text('Mizu no Hydra'),
      backgroundColor:  Colors.lightBlueAccent.shade700,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size(0, kToolbarHeight);
}
