
Future<void> onJoin() async {
  if (_username.text.isEmpty || _channelName.text.isEmpty) {
    setState(() {
      check = 'Username and Channel Name are required fields';
    });
  } else {
    setState(() {
      check = '';
    });
    await _handleCameraAndMic(Permission.camera);
    await _handleCameraAndMic(Permission.microphone);
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => BroadcastPage(
          userName: _username.text,
          channelName: _channelName.text,
          isBroadcaster: _isBroadcaster,
        ),
      ),
    );
  }
}