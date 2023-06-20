import 'package:chat/controller/prefs_controller.dart';
import 'package:chat/styles/cores.dart';
import 'package:chat/widgets/aviso.dart';
import 'package:chat/widgets/mensagem_enviada.dart';
import 'package:chat/widgets/mensagem_recebida.dart';
import 'package:flutter/material.dart';

class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xFFF8F8F8),
        toolbarHeight: 110,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20),
          ),
        ),
        title: const SizedBox(
          width: 250,
          height: 45,
          child: TextField(
            cursorColor: Cores.corPrimaria,
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
                borderSide: BorderSide(
                  color: Cores.corPrimaria,
                ),
              ),
              label: Text(
                'Conectar',
                style: TextStyle(
                  color: Cores.corPrimaria,
                ),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
              ),
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Row(
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(999),
                    color: Cores.corPrimaria,
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromARGB(255, 80, 80, 80),
                        blurRadius: 4,
                        offset: Offset(0, 0),
                      ),
                    ],
                  ),
                  child: Center(
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.person_add_alt,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 6),
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(999),
                    color: Cores.corPrimaria,
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromARGB(255, 80, 80, 80),
                        blurRadius: 4,
                        offset: Offset(0, 0),
                      ),
                    ],
                  ),
                  child: Center(
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.person_off_outlined,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 15, 10, 0),
              child: SizedBox(
                height: 550,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Aviso.aviso('Aviso! Biston Gay'),
                      MensagemEnviada.mensagemEnviada('Salve mano!', '15:30'),
                      MensagemRecebida.mensagemRecebida('Salve', '15:31'),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: 100,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(50, 0, 0, 0),
                    blurRadius: 4,
                    offset: Offset(0, -4),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(999),
                        color: Cores.corPrimaria,
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromARGB(255, 80, 80, 80),
                            blurRadius: 4,
                            offset: Offset(0, 0),
                          ),
                        ],
                      ),
                      child: Center(
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.camera_alt_outlined,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 250,
                      height: 45,
                      child: TextField(
                        cursorColor: Cores.corPrimaria,
                        decoration: InputDecoration(
                          focusColor: Cores.corPrimaria,
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(15),
                            ),
                            borderSide: BorderSide(
                              color: Cores.corPrimaria,
                            ),
                          ),
                          label: Text(
                            'Digite uma mensagem',
                            style: TextStyle(
                              color: Cores.corPrimaria,
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(15),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(999),
                        color: Cores.corPrimaria,
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromARGB(255, 80, 80, 80),
                            blurRadius: 4,
                            offset: Offset(0, 0),
                          ),
                        ],
                      ),
                      child: Center(
                        child: IconButton(
                          onPressed: () async {
                            await PrefsController.teste();
                          },
                          icon: const Icon(
                            Icons.send,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
