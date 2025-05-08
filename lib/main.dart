import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_list/Provider/counter_provider.dart';

void main() => runApp(
  ChangeNotifierProvider(create: (context) => CounterProvider(), child: App()),
);

class App extends StatelessWidget {
  const App({super.key});
  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<CounterProvider>(context);
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("data")),
        body: Column(
          children: [
            Text("${counter.count}"),
            ElevatedButton(
              onPressed: () => counter.increment(),
              child: Text("+"),
            ),
            ElevatedButton(
              onPressed: () => counter.decreament(),
              child: Text("-"),
            ),
          ],
        ),
      ),
    );
  }
}
