import 'package:chat/styles/cores.dart';
import 'package:flutter/material.dart';

class MensagemEnviada {
  static mensagemEnviada(String mensagem, String horario) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 2, 0, 2),
              child: Container(
                constraints: const BoxConstraints(
                  minWidth: 100,
                  maxWidth: 220,
                ),
                padding: const EdgeInsetsDirectional.fromSTEB(
                  18,
                  11,
                  18,
                  11,
                ),
                decoration: BoxDecoration(
                  color: Cores.corPrimaria,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Text(
                  mensagem,
                  textAlign: TextAlign.start,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ],
        ),
        Container(
          width: 60,
          height: 22,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7),
            color: const Color(0xFFF1F1F1),
          ),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  horario,
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF8C8C8C),
                  ),
                ),
                const Icon(Icons.done_all, size: 16),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
