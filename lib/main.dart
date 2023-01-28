import 'package:flutter/material.dart';
// import 'package:appcheck/appcheck.dart';
import 'package:installed_apps/app_info.dart';
import 'package:installed_apps/installed_apps.dart';
import 'package:helpers/helpers.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MaterialApp(home: Material(child: MyApp())));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: InstalledApps.getInstalledApps(true, true),
      builder: (context, snapshot) {
        return snapshot.connectionState == ConnectionState.done
            ? ListView.builder(
                itemCount: snapshot.data?.length ?? 0,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Image.memory(snapshot.data![index].icon!),
                    title: Text(snapshot.data?[index].name ?? 'N/A'),
                    subtitle: Text(snapshot.data?[index].packageName ?? 'N/A'),
                    onTap: () => InstalledApps.startApp(
                      snapshot.data![index].packageName!,
                    ),
                  );
                },
              )
            : const CircularProgressIndicator();
      },
    );
  }
}
