import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:flutter/cupertino.dart';
import '../core/themes.dart';
import '../widgets/bottom_menu.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text(
          'Ayarlar',
          style: Theme.of(context)
              .textTheme
              .headlineLarge!
              .copyWith(color: Theme.of(context).colorScheme.onPrimary),
        ),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.palette),
            title: Text(
              'Tema',
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(color: Theme.of(context).colorScheme.onSecondary),
            ),
            trailing: Switch(
              value: Theme.of(context).brightness == Brightness.dark,
              onChanged: (value) {
                context.read<ThemeProvider>().toggleTheme();
              },
            ),
          ),
          const Divider(),
          ListTile(
            leading: Icon(
              Icons.notifications,
              color: Theme.of(context).colorScheme.onSecondary,
            ),
            title: Text(
              'Bildirimler',
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(color: Theme.of(context).colorScheme.onSecondary),
            ),
            trailing: Switch(
              value: true,
              onChanged: (value) {},
            ),
          ),
          const Divider(),
          ListTile(
            leading: Icon(
              Icons.language,
              color: Theme.of(context).colorScheme.onSecondary,
            ),
            title: Text(
              'Dil',
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(color: Theme.of(context).colorScheme.onSecondary),
            ),
            trailing: DropdownButton<String>(
              value: 'TR',
              items: ['TR', 'EN'].map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (String? newValue) {},
            ),
          ),
          const Divider(),
          ListTile(
            leading: Icon(
              Icons.info,
              color: Theme.of(context).colorScheme.onSecondary,
            ),
            title: Text('Uygulama Hakkında',
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Theme.of(context).colorScheme.onSecondary)),
            trailing: Icon(Icons.arrow_forward_ios,
                color: Theme.of(context).colorScheme.onSecondary, size: 16),
            onTap: () {},
          ),
          const Divider(),
          ListTile(
            leading: Icon(
              Icons.privacy_tip,
              color: Theme.of(context).colorScheme.onSecondary,
            ),
            title: Text(
              'Gizlilik Politikası',
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(color: Theme.of(context).colorScheme.onSecondary),
            ),
            trailing: Icon(Icons.arrow_forward_ios,
                color: Theme.of(context).colorScheme.onSecondary, size: 16),
            onTap: () {},
          ),
          const Divider(),
          ListTile(
            leading: Icon(
              Icons.info,
              color: Theme.of(context).colorScheme.onSecondary,
            ),
            title: Text('Giriş Yap',
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Theme.of(context).colorScheme.onSecondary)),
            trailing: Icon(Icons.arrow_forward_ios,
                color: Theme.of(context).colorScheme.onSecondary, size: 16),
            onTap: () {
              context.push("/login");
            },
          ),
          const Divider(),
          ListTile(
            leading:
                Icon(Icons.delete, color: Theme.of(context).colorScheme.error),
            title: Text(
              'Hesabı Sil',
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(color: Theme.of(context).colorScheme.onSecondary),
            ),
            onTap: () {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: Text(
                    "Uyarı",
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        color: Theme.of(context).colorScheme.onSecondary),
                  ),
                  content: Text(
                    "Hesabınızı Silmeye Emin misiniz?",
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: Theme.of(context).colorScheme.onSecondary),
                  ),
                  actions: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.check_circle,
                        color: Theme.of(context).colorScheme.onSecondary,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.check_circle,
                        color: Theme.of(context).colorScheme.error,
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}