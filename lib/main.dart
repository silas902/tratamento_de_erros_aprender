

import 'package:flutter/material.dart';

import 'core/gateway/gateway.dart';
import 'core/goku/goku.dart';
import 'core/log/log.dart';


void main() {
  ModularApp(module:AppModule() , child: const AppWiget());
}

class AppModule extends Module {
  @override
  void binds (i) {
    
    
    i.add<Dio>(() => Goku(options: BaseOptions(baseUrl: 'https://rjbjrdwojcfupviasnlm.supabase.co')));
  }
  @override
  void routes (r){
    r.child('/', child: (_) => HomePage());

    
  }
  
}

class AppWiget extends StatelessWidget {
  const AppWiget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
     routerConfig: Modular.routerConfig,
    );
  } 
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final IGateway gateway;

  @override
  Widget build(BuildContext context) {
    return SizedBox();
  }
}



void testPrint () {
  Log.d(mensagen: 'não foi para o servidor kkkk');
}




