import 'package:flutter/material.dart';

class Museums extends StatefulWidget {
  const Museums({super.key});

  @override
  State<Museums> createState() => _MuseumsState();
}

class _MuseumsState extends State<Museums>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}