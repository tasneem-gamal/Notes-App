import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notes/core/routing/app_router.dart';
import 'package:notes/core/routing/routes.dart';
import 'package:notes/features/home/logic/read_notes_cubit/notes_cubit.dart';

class Notes extends StatelessWidget {
  const Notes({super.key, required this.appRouter});
  final AppRouter appRouter;
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: ScreenUtil.defaultSize,
        minTextAdapt: true,
        child: BlocProvider(
          create: (context) => NotesCubit(),
          child: MaterialApp(
            title: 'Notes',
            theme: ThemeData(
              useMaterial3: false,
              scaffoldBackgroundColor: Colors.white,
              fontFamily: 'Inter',
            ),
            debugShowCheckedModeBanner: false,
            initialRoute: Routes.homeView,
            onGenerateRoute: appRouter.generateRoute,
          ),
        ));
  }
}
