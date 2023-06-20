import 'package:chat/styles/cores.dart';
import 'package:flutter/material.dart';

class MensagemRecebida {
  static mensagemRecebida(String mensagem, String horario) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
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
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: Cores.corPrimaria,
                      width: 2,
                    )),
                child: Text(
                  mensagem,
                  textAlign: TextAlign.start,
                  style: const TextStyle(
                    color: Cores.corPrimaria,
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
            child: Text(
              horario,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Color(0xFF8C8C8C),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
