import 'package:delivery_lhj_cafe/imagens.dart';
import 'package:delivery_lhj_cafe/produtos/telaCafe.dart';
import 'package:delivery_lhj_cafe/produtos/telaCafeGelado.dart';
import 'package:delivery_lhj_cafe/produtos/telaCapp.dart';
import 'package:delivery_lhj_cafe/produtos/telaChocolate.dart';
import 'package:delivery_lhj_cafe/produtos/telaCookie.dart';
import 'package:delivery_lhj_cafe/produtos/telaDonut.dart';
import 'package:delivery_lhj_cafe/produtos/telaPaoChapa.dart';
import 'package:delivery_lhj_cafe/produtos/telaPaoQueijo.dart';

import '';
import 'package:flutter/material.dart';
import 'package:delivery_lhj_cafe/widgets/botoes.dart';
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: Text("Delivery LHJ cafe"),
        actions: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: SuaImagem(caminhoArquivo: 'imagens/lhjCafe.png',),
      ),
      ],
      ),
      body: _bodyCol(context),
    );

  }

  _bodyCol(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Buttons( "Cappuccino", onPressed:(){ _abreOutraTela(context, TelaCapp());} ),
              Buttons( "Café Espresso", onPressed:() {_abreOutraTela(context, TelaCafe());} ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Buttons( "Café Gelado", onPressed:() {_abreOutraTela(context, TelaCafeGelado());} ),
              Buttons( "Chocolate Quente", onPressed:() {_abreOutraTela(context, TelaChocolate());} ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Buttons( "Cookie", onPressed:() {_abreOutraTela(context, TelaCookie());} ),
              Buttons( "Donut", onPressed:() {_abreOutraTela(context, TelaDonut());} ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Buttons( "Pão na Chapa", onPressed:() {_abreOutraTela(context, TelaPaoChapa());} ),
              Buttons( "Pão de Queijo", onPressed:() {_abreOutraTela(context, TelaPaoQueijo());} )
            ],
          )
        ],
      ),
    );
        /*


        */
  }

  _abreOutraTela(ctx, page) {
    Navigator.push(ctx, MaterialPageRoute(builder: (BuildContext context)
    {
      return page;
    }));
  }
}
