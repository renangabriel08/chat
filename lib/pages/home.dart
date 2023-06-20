import 'package:chat/pages/amigos.dart';
import 'package:chat/pages/chat.dart';
import 'package:chat/pages/config.dart';
import 'package:chat/styles/cores.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int paginaSelecionada = 0;
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    return Scaffold(
      body: IndexedStack(
        index: paginaSelecionada,
        children: const [
          Chat(),
          Amigos(),
          Config(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Cores.corPrimaria,
        currentIndex: paginaSelecionada,
        onTap: (value) => setState(() {
          paginaSelecionada = value;
        }),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_outlined),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people_outline_outlined),
            label: 'Amigos',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Configurações',
          ),
        ],
      ),
    );
  }
}
