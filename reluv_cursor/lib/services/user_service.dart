import 'dart:convert';
import 'dart:io';
import 'package:path_provider/path_provider.dart';
import '../models/user.dart';

class UserService {
  static const String _fileName = 'users.json';
  List<User> _users = [];
  bool _isInitialized = false;

  UserService() {
    _initialize();
  }

  Future<void> _initialize() async {
    await _loadUsers();
    _isInitialized = true;
  }

  Future<void> _loadUsers() async {
    try {
      final directory = await getApplicationDocumentsDirectory();
      final file = File('${directory.path}/$_fileName');
      
      if (await file.exists()) {
        final contents = await file.readAsString();
        final List<dynamic> jsonList = json.decode(contents);
        _users = jsonList.map((json) => User.fromJson(json)).toList();
      }
    } catch (e) {
      print('Error loading users: $e');
      _users = [];
    }
  }

  Future<void> _saveUsers() async {
    try {
      final directory = await getApplicationDocumentsDirectory();
      final file = File('${directory.path}/$_fileName');
      
      final jsonList = _users.map((user) => user.toJson()).toList();
      await file.writeAsString(json.encode(jsonList));
    } catch (e) {
      print('Error saving users: $e');
    }
  }

  Future<bool> register(User user) async {
    if (!_isInitialized) {
      await _initialize();
    }
    
    // Check if user already exists
    if (_users.any((u) => u.email == user.email)) {
      return false;
    }

    _users.add(user);
    await _saveUsers();
    return true;
  }

  Future<User?> login(String email, String password) async {
    if (!_isInitialized) {
      await _initialize();
    }

    try {
      final user = _users.firstWhere(
        (user) => user.email == email && user.password == password,
      );
      return user;
    } catch (e) {
      return null;
    }
  }

  Future<bool> isEmailRegistered(String email) async {
    if (!_isInitialized) {
      await _initialize();
    }
    return _users.any((user) => user.email == email);
  }
} 