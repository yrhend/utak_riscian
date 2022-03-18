import 'package:flutter/material.dart';
import 'package:utak_riscian/providers/audio_player_provider.dart';
import 'package:utak_riscian/providers/theme_provider.dart';
import 'package:utak_riscian/widgets/long_button_wdiget.dart';
import 'package:provider/provider.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String theme =
        context.read<ThemeProvider>().themeFromStorage == 0 ? 'OFF' : 'ON';

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
            Expanded(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    LongButtonWidget(
                      onPressed: () {
                        context.read<ThemeProvider>().changeTheme();
                        Navigator.pop(context);
                      },
                      title: 'THEME',
                      subtitle: 'Dark Theme : $theme',
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    LongButtonWidget(
                      onPressed: () {
                        context.read<AudioPlayerProvider>().soundSet();
                      },
                      title: 'SOUND',
                      subtitle: context.watch<AudioPlayerProvider>().volume == 0
                          ? 'OFF'
                          : 'ON',
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
