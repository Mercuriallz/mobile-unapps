import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:mobile_unapps/config/env_manager.dart';
import 'package:mobile_unapps/constant/route/app_router.dart';
import 'package:mobile_unapps/cubit/auth/login_cubit.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EnvManager.initialize();
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => LoginCubit()),
      ],
      child: MaterialApp.router(
        
        routerConfig: router,
        theme: ThemeData(useMaterial3: false,
        
        ),
        debugShowCheckedModeBanner: false,
      
      ),
    ),
  );
}
