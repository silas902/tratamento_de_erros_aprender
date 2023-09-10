
import 'package:flutter/material.dart';

class Log {
  final String mensagen;
  final IconData icon;
  final Color color;
  final String title;

  Log.d({required this.mensagen}) : icon = Icons.code, color = Colors.blue, title = 'DEBUG';
  Log.e({required this.mensagen}) : icon = Icons.block, color = Colors.red, title = 'ERROR';
  Log.i({required this.mensagen}) : icon = Icons.info, color = Colors.green, title = 'INFO';
  Log.v({required this.mensagen}) : icon = Icons.abc, color = Colors.purple, title = 'VERBOSE';
  Log.w({required this.mensagen}) : icon = Icons.warning, color = Colors.amber, title = 'WARNING';
  Log.wtf({required this.mensagen}) : icon = Icons.warning_amber_outlined, color = Colors.orange, title = 'FUDEO QUE PORRA E ESSA VEI!';

   
}