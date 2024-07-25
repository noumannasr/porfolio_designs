import 'package:flutter/material.dart';

class RemovableList extends StatefulWidget {
  const RemovableList({super.key});

  @override
  State<RemovableList> createState() => _RemovableListState();
}

class _RemovableListState extends State<RemovableList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: ListView.builder(
        // reverse: true,
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          itemCount: 1,
          itemBuilder: (BuildContext context, index) {
            return DismissibleListItem(itemName: 'Test', onRemove: (int ) {  },);
          })

    );
  }
}







class DismissibleListItem extends StatefulWidget {
  final String itemName;
  final Function(int) onRemove;

  const DismissibleListItem({
    Key? key,
    required this.itemName,
    required this.onRemove,
  }) : super(key: key);

  @override
  State<DismissibleListItem> createState() => _DismissibleListItemState();
}

class _DismissibleListItemState extends State<DismissibleListItem>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<Offset> _slideAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    _slideAnimation = Tween<Offset>(
      begin: Offset.zero,
      end: const Offset(-0.5, 0), // Slide list item by half its width
    ).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: UniqueKey(), // Important for smooth animations
      background: _buildDismissBackground(),

      secondaryBackground: _buildDismissBackground(reverse: true),
       // Trigger removal with 70% swipe distance
      onDismissed: (direction) {
        if (direction == DismissDirection.endToStart) {
          widget.onRemove(0); // Call removal function
          _controller.forward(); // Start animation
        }
      },
      child: SlideTransition(
        position: _slideAnimation,
        child: ListTile(
          title: Text(widget.itemName),
          trailing: _buildFingerIcon(),
        ),
      ),
    );
  }

  Widget _buildDismissBackground({bool reverse = false}) {
    return Container(
      color: Colors.red,
      alignment: AlignmentDirectional.centerEnd,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Icon(
          Icons.delete,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget _buildFingerIcon() {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.grey.shade200,
      ),
      child: Icon(
        Icons.swipe_left,
        color: Colors.grey.shade700,
        size: 20.0,
      ),
    );
  }
}