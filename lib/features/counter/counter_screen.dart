import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'counter_provider.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final count = context.watch<CounterProvider>().count;
    return Scaffold(
      appBar: AppBar(title: const Text('Counter')),
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
                  child: const Text('Increment'),
                ),
                const SizedBox(width: 12),
                OutlinedButton(
                  onPressed: () => context.read<CounterProvider>().reset(),
                  child: const Text('Reset'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
