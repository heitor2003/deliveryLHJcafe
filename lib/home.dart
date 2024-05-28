import 'package:delivery_lhj_cafe/produtos/telaCapp.dart';
import 'package:flutter/material.dart';
import 'package:delivery_lhj_cafe/widgets/botoes.dart';
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Delivery LHJ cafe"),
      ),
      body: _bodyGrid(context),
    );

  }

  _bodyGrid(BuildContext context) {
    return GridView(
      scrollDirection: Axis.vertical,

      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),

      children: <Widget>[
        Buttons( "Teste", onPressed:(){ _abreOutraTela(context, TelaCapp());} ),
        Buttons( "Teste2", onPressed:() {_abreOutraTela(context, TelaCapp());} )
      ],
    );
  }

  _abreOutraTela(ctx, page) {
    Navigator.push(ctx, MaterialPageRoute(builder: (BuildContext context)
    {
      return page;
    }));
  }
}
