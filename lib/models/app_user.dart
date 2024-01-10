import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'app_user.g.dart';

abstract class AppUser implements Built<AppUser, AppUserBuilder> {
  factory AppUser([AppUserBuilder Function(AppUserBuilder builder) updates]) =
      _$AppUser;

  AppUser._();

  int? get id;

  @BuiltValueField(wireName: 'firstname')
  String? get firstName;

  @BuiltValueField(wireName: 'lastname')
  String? get lastName;

  String? get email;

  @BuiltValueField(wireName: 'phone_number')
  String? get mobile;

  String? get gender;

  String? get dob;

  static Serializer<AppUser> get serializer => _$appUserSerializer;
}
