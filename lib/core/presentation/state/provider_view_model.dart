import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ViewModelProvider<T extends ChangeNotifier> extends StatefulWidget {
  final T? viewModel;
  final Widget Function(BuildContext? context, T value, Widget? child)? builder;
  final Function(T)? onModelReady;

  const ViewModelProvider({
    Key? key,
    @required this.viewModel,
    @required this.builder,
    this.onModelReady,
  }) : super(key: key);

  @override
  _ViewModelProviderState<T> createState() => _ViewModelProviderState<T>();
}

class _ViewModelProviderState<T extends ChangeNotifier>
    extends State<ViewModelProvider<T>> {
  T? model;

  @override
  void initState() {
    model = widget.viewModel;
    if (widget.onModelReady != null) {
      widget.onModelReady!(model!);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<T>(
      create: (context) => model!,
      child: Consumer<T>(builder: widget.builder!),
    );
  }
}
