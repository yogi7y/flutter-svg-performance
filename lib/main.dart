import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:vector_graphics/vector_graphics_compat.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      title: 'Material App',
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 500,
        itemBuilder: (context, index) => _Tile(index: index),
      ),
    );
  }
}

class _Tile extends StatelessWidget {
  const _Tile({required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const _SvgIcon(),
          const _SvgIcon(),
          const _SvgIcon(),
          const SizedBox(width: 20),
          Text('Item $index'),
        ],
      ),
    );
  }
}

class _SvgIcon extends StatelessWidget {
  const _SvgIcon();

  @override
  Widget build(BuildContext context) {
    return SvgPicture(
      AssetBytesLoader('assets/hammer-outlined.svg.vec'),
      height: 20,
      width: 20,
      colorFilter: const ColorFilter.mode(
        Colors.red,
        BlendMode.srcIn,
      ),
    );
    // return SvgPicture.asset(
    //   'assets/hammer-outlined.svg',
    // height: 20,
    // width: 20,
    // colorFilter: const ColorFilter.mode(
    //   Colors.red,
    //   BlendMode.srcIn,
    // ),
    // );
  }
}
