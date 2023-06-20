import 'package:flutter/material.dart';

class Aviso {
  static aviso(aviso) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          constraints: const BoxConstraints(
            maxWidth: 150,
            minWidth: 100,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.grey),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Text(
                aviso,
                style: const TextStyle(color: Colors.grey),
              ),
            ),
          ),
        )
      ],
    );
  }
}
