import 'package:flutter/material.dart';

final _icons = <String, IconData>{
  'access_alarm': Icons.access_alarm,
  'access_alarms': Icons.access_alarms,
  'access_time': Icons.access_time,
  'accessibility': Icons.accessibility,
  'accessible': Icons.accessible,
  'account_balance': Icons.account_balance,
  'account_balance_wallet': Icons.account_balance_wallet,
  'account_box': Icons.account_box,
  'account_circle': Icons.account_circle,
  'add_a_photo': Icons.add_a_photo,
  'add_alarm': Icons.add_alarm,
  'add_alert': Icons.add_alert,
  'add_box': Icons.add_box,
  'add_circle': Icons.add_circle,
  'add_location': Icons.add_location,
  'add_shopping_cart': Icons.add_shopping_cart,
  'folder_open': Icons.folder_open,
  'folder_shared': Icons.folder_shared,
  'donut_large': Icons.donut_large,
  'input': Icons.input,
  'list': Icons.list,
};

Icon getIcon( String nombreIcono ){

  return Icon( _icons[nombreIcono], color: Colors.blue, );
}