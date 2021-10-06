import 'package:flutter/material.dart';

final _icons = <String,IconData>{
  'account_box': Icons.account_box,
  'work': Icons.work,
  'insights': Icons.insights,
  'local_activity': Icons.local_activity,
  'place': Icons.place,
  'add_task': Icons.add_task,
};

Icon getIcon(String nombreIcono) {
  return Icon(_icons[nombreIcono],color: Colors.purple);
}