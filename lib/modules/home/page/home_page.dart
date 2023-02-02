import 'package:eternity_launcher/global/controllers/persisted_cubit.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:installed_apps/installed_apps.dart';
import 'package:installed_apps/app_info.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PersistedController _controller = GetIt.I.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<AppInfo>>(
        future: _controller.getApps(),
        builder: (context, snapshot) {
          return snapshot.connectionState == ConnectionState.done
              ? ListView.builder(
                  itemCount: snapshot.data?.length ?? 0,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: Image.memory(snapshot.data![index].icon!),
                      title: Text(snapshot.data?[index].name ?? 'N/A'),
                      subtitle:
                          Text(snapshot.data?[index].packageName ?? 'N/A'),
                      onTap: () => InstalledApps.startApp(
                        snapshot.data![index].packageName!,
                      ),
                    );
                  },
                )
              : const CircularProgressIndicator();
        },
      ),
    );
  }
}
