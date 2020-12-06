// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values

class S {
  S();
  
  static S current;
  
  static const AppLocalizationDelegate delegate =
    AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false) ? locale.languageCode : locale.toString();
    final localeName = Intl.canonicalizedLocale(name); 
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      S.current = S();
      
      return S.current;
    });
  } 

  static S of(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Buscar`
  String get buscador {
    return Intl.message(
      'Buscar',
      name: 'buscador',
      desc: '',
      args: [],
    );
  }

  /// `Juegos Top`
  String get titulo1 {
    return Intl.message(
      'Juegos Top',
      name: 'titulo1',
      desc: '',
      args: [],
    );
  }

  /// `Juegos en lanzamiento`
  String get titulo2 {
    return Intl.message(
      'Juegos en lanzamiento',
      name: 'titulo2',
      desc: '',
      args: [],
    );
  }

  /// `Avisos`
  String get noticias {
    return Intl.message(
      'Avisos',
      name: 'noticias',
      desc: '',
      args: [],
    );
  }

  /// `Inicio`
  String get inicio {
    return Intl.message(
      'Inicio',
      name: 'inicio',
      desc: '',
      args: [],
    );
  }

  /// `Perfil`
  String get perfil {
    return Intl.message(
      'Perfil',
      name: 'perfil',
      desc: '',
      args: [],
    );
  }

  /// `Preferencias`
  String get preferencias {
    return Intl.message(
      'Preferencias',
      name: 'preferencias',
      desc: '',
      args: [],
    );
  }

  /// `Comprometerse con la comunidad. Comparte tus juegos favoritos`
  String get texto1 {
    return Intl.message(
      'Comprometerse con la comunidad. Comparte tus juegos favoritos',
      name: 'texto1',
      desc: '',
      args: [],
    );
  }

  /// `Iniciar Sesión`
  String get login {
    return Intl.message(
      'Iniciar Sesión',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `Registrarse`
  String get register {
    return Intl.message(
      'Registrarse',
      name: 'register',
      desc: '',
      args: [],
    );
  }

  /// `Game Zone`
  String get titulo_app {
    return Intl.message(
      'Game Zone',
      name: 'titulo_app',
      desc: '',
      args: [],
    );
  }

  /// `Usuario`
  String get usuario {
    return Intl.message(
      'Usuario',
      name: 'usuario',
      desc: '',
      args: [],
    );
  }

  /// `Contraseña`
  String get contrasena {
    return Intl.message(
      'Contraseña',
      name: 'contrasena',
      desc: '',
      args: [],
    );
  }

  /// `Incorrect Username or Password`
  String get texto2 {
    return Intl.message(
      'Incorrect Username or Password',
      name: 'texto2',
      desc: '',
      args: [],
    );
  }

  /// `Nombres`
  String get nombres {
    return Intl.message(
      'Nombres',
      name: 'nombres',
      desc: '',
      args: [],
    );
  }

  /// `Apellidos`
  String get apellidos {
    return Intl.message(
      'Apellidos',
      name: 'apellidos',
      desc: '',
      args: [],
    );
  }

  /// `Correo`
  String get email {
    return Intl.message(
      'Correo',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `Selecciona un Avatar`
  String get avatar {
    return Intl.message(
      'Selecciona un Avatar',
      name: 'avatar',
      desc: '',
      args: [],
    );
  }

  /// `Siguiente`
  String get next {
    return Intl.message(
      'Siguiente',
      name: 'next',
      desc: '',
      args: [],
    );
  }

  /// `Cancelar`
  String get cancel {
    return Intl.message(
      'Cancelar',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `Editar Perfil`
  String get edit {
    return Intl.message(
      'Editar Perfil',
      name: 'edit',
      desc: '',
      args: [],
    );
  }

  /// `Escoge un Avatar`
  String get escoger {
    return Intl.message(
      'Escoge un Avatar',
      name: 'escoger',
      desc: '',
      args: [],
    );
  }

  /// `Aplicar`
  String get aplicar {
    return Intl.message(
      'Aplicar',
      name: 'aplicar',
      desc: '',
      args: [],
    );
  }

  /// `Cerrar Sesion`
  String get finalizar {
    return Intl.message(
      'Cerrar Sesion',
      name: 'finalizar',
      desc: '',
      args: [],
    );
  }

  /// `¿Realmente quieres finalizar tu sesion?`
  String get texto3 {
    return Intl.message(
      '¿Realmente quieres finalizar tu sesion?',
      name: 'texto3',
      desc: '',
      args: [],
    );
  }

  /// `Si`
  String get afirmativo {
    return Intl.message(
      'Si',
      name: 'afirmativo',
      desc: '',
      args: [],
    );
  }

  /// `No`
  String get negativo {
    return Intl.message(
      'No',
      name: 'negativo',
      desc: '',
      args: [],
    );
  }

  /// `0.0.0-alpha.1`
  String get version {
    return Intl.message(
      '0.0.0-alpha.1',
      name: 'version',
      desc: '',
      args: [],
    );
  }

  /// `Un proyecto en desarrollo.\nHecho por: \nAlfred Casanova\nPatrick Quenta\nSamuel Lizargo\nPaulina Choqueneira`
  String get descripcion_app {
    return Intl.message(
      'Un proyecto en desarrollo.\nHecho por: \nAlfred Casanova\nPatrick Quenta\nSamuel Lizargo\nPaulina Choqueneira',
      name: 'descripcion_app',
      desc: '',
      args: [],
    );
  }

  /// `exitoso`
  String get exito {
    return Intl.message(
      'exitoso',
      name: 'exito',
      desc: '',
      args: [],
    );
  }

  /// `Contraseña cambiada exitosamente`
  String get cambio_pass {
    return Intl.message(
      'Contraseña cambiada exitosamente',
      name: 'cambio_pass',
      desc: '',
      args: [],
    );
  }

  /// `Aceptar`
  String get ok {
    return Intl.message(
      'Aceptar',
      name: 'ok',
      desc: '',
      args: [],
    );
  }

  /// `Cambio de contraseña`
  String get cambio {
    return Intl.message(
      'Cambio de contraseña',
      name: 'cambio',
      desc: '',
      args: [],
    );
  }

  /// `Acerca de`
  String get about {
    return Intl.message(
      'Acerca de',
      name: 'about',
      desc: '',
      args: [],
    );
  }

  /// `Ajustes`
  String get configuracion {
    return Intl.message(
      'Ajustes',
      name: 'configuracion',
      desc: '',
      args: [],
    );
  }

  /// `Cambio de Contraseña`
  String get Change_Password {
    return Intl.message(
      'Cambio de Contraseña',
      name: 'Change_Password',
      desc: '',
      args: [],
    );
  }

  /// `Contraseña Actual`
  String get Current_Password {
    return Intl.message(
      'Contraseña Actual',
      name: 'Current_Password',
      desc: '',
      args: [],
    );
  }

  /// `Contraseña Incorrecta`
  String get IncorrectPassword {
    return Intl.message(
      'Contraseña Incorrecta',
      name: 'IncorrectPassword',
      desc: '',
      args: [],
    );
  }

  /// `Introducir algun texto`
  String get texto4 {
    return Intl.message(
      'Introducir algun texto',
      name: 'texto4',
      desc: '',
      args: [],
    );
  }

  /// `Nueva Contraseña`
  String get New_Password {
    return Intl.message(
      'Nueva Contraseña',
      name: 'New_Password',
      desc: '',
      args: [],
    );
  }

  /// `Introduce una contraseña de minimo 6 caracteres`
  String get texto5 {
    return Intl.message(
      'Introduce una contraseña de minimo 6 caracteres',
      name: 'texto5',
      desc: '',
      args: [],
    );
  }

  /// `Confirma la nueva Contraseña`
  String get ConfirmacionPasswor {
    return Intl.message(
      'Confirma la nueva Contraseña',
      name: 'ConfirmacionPasswor',
      desc: '',
      args: [],
    );
  }

  /// `La contraseña no coincide`
  String get nocoincide {
    return Intl.message(
      'La contraseña no coincide',
      name: 'nocoincide',
      desc: '',
      args: [],
    );
  }

  /// `Cambiar`
  String get change {
    return Intl.message(
      'Cambiar',
      name: 'change',
      desc: '',
      args: [],
    );
  }

  /// `Favoritos`
  String get favorite {
    return Intl.message(
      'Favoritos',
      name: 'favorite',
      desc: '',
      args: [],
    );
  }

  /// `Reviews`
  String get reviews {
    return Intl.message(
      'Reviews',
      name: 'reviews',
      desc: '',
      args: [],
    );
  }

  /// `Enter para buscar`
  String get texto6 {
    return Intl.message(
      'Enter para buscar',
      name: 'texto6',
      desc: '',
      args: [],
    );
  }

  /// `Fecha de Lanzamiento: `
  String get gamedate {
    return Intl.message(
      'Fecha de Lanzamiento: ',
      name: 'gamedate',
      desc: '',
      args: [],
    );
  }

  /// `Desarrollado por: `
  String get developer {
    return Intl.message(
      'Desarrollado por: ',
      name: 'developer',
      desc: '',
      args: [],
    );
  }

  /// `No Reviews`
  String get noreviews {
    return Intl.message(
      'No Reviews',
      name: 'noreviews',
      desc: '',
      args: [],
    );
  }

  /// `Debes escribir algo...`
  String get notice1 {
    return Intl.message(
      'Debes escribir algo...',
      name: 'notice1',
      desc: '',
      args: [],
    );
  }

  /// `La calificacion no debe ser cero....`
  String get notice2 {
    return Intl.message(
      'La calificacion no debe ser cero....',
      name: 'notice2',
      desc: '',
      args: [],
    );
  }

  /// `Debes de poner algo....`
  String get notice3 {
    return Intl.message(
      'Debes de poner algo....',
      name: 'notice3',
      desc: '',
      args: [],
    );
  }

  /// `Como le gustaria calificar`
  String get notice4 {
    return Intl.message(
      'Como le gustaria calificar',
      name: 'notice4',
      desc: '',
      args: [],
    );
  }

  /// `Empieza a redactar`
  String get notice5 {
    return Intl.message(
      'Empieza a redactar',
      name: 'notice5',
      desc: '',
      args: [],
    );
  }

  /// `Publicar Review`
  String get notice6 {
    return Intl.message(
      'Publicar Review',
      name: 'notice6',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'es', countryCode: 'PE'),
      Locale.fromSubtags(languageCode: 'en', countryCode: 'US'),
      Locale.fromSubtags(languageCode: 'pt', countryCode: 'BR'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    if (locale != null) {
      for (var supportedLocale in supportedLocales) {
        if (supportedLocale.languageCode == locale.languageCode) {
          return true;
        }
      }
    }
    return false;
  }
}