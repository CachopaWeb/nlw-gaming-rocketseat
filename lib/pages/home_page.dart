import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  Widget _buildContainer() {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(8),
        ),
        gradient: LinearGradient(
          colors: [
            Color.fromRGBO(149, 114, 252, 1),
            Color.fromRGBO(67, 231, 173, 1),
            Color.fromRGBO(226, 212, 92, 1),
          ],
        ),
      ),
      height: 112,
      child: Container(
        margin: const EdgeInsets.only(top: 5),
        decoration: const BoxDecoration(
          color: Color.fromRGBO(42, 38, 52, 1),
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        SizedBox(
          height: size.height,
          width: size.width,
          child: Image.asset(
            'images/background-galaxy.png',
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          top: 20,
          right: (size.width - 250) / 2,
          left: (size.width - 250) / 2,
          child: Image.asset('images/Logo.png'),
        ),
        Positioned(bottom: 30, left: 50, right: 50, child: _buildContainer())
      ],
    );
  }
}
