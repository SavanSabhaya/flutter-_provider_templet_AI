import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import 'counter_provider.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final count = context.watch<CounterProvider>().count;
    final l10n = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: AppBar(title: Text(l10n.counterTitle)),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              '$count',
              style: Theme.of(context).textTheme.displayMedium,
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                FilledButton(
                  onPressed: () => context.read<CounterProvider>().increment(),
                  child: Text(l10n.increment),
                ),
                const SizedBox(width: 12),
                OutlinedButton(
                  onPressed: () => context.read<CounterProvider>().reset(),
                  child: Text(l10n.reset),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
