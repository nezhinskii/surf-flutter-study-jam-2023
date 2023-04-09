// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ticket_storage_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TicketStorageEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String url, TicketType type) add,
    required TResult Function() fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String url, TicketType type)? add,
    TResult? Function()? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String url, TicketType type)? add,
    TResult Function()? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_add value) add,
    required TResult Function(_fetch value) fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_add value)? add,
    TResult? Function(_fetch value)? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_add value)? add,
    TResult Function(_fetch value)? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketStorageEventCopyWith<$Res> {
  factory $TicketStorageEventCopyWith(
          TicketStorageEvent value, $Res Function(TicketStorageEvent) then) =
      _$TicketStorageEventCopyWithImpl<$Res, TicketStorageEvent>;
}

/// @nodoc
class _$TicketStorageEventCopyWithImpl<$Res, $Val extends TicketStorageEvent>
    implements $TicketStorageEventCopyWith<$Res> {
  _$TicketStorageEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_addCopyWith<$Res> {
  factory _$$_addCopyWith(_$_add value, $Res Function(_$_add) then) =
      __$$_addCopyWithImpl<$Res>;
  @useResult
  $Res call({String url, TicketType type});
}

/// @nodoc
class __$$_addCopyWithImpl<$Res>
    extends _$TicketStorageEventCopyWithImpl<$Res, _$_add>
    implements _$$_addCopyWith<$Res> {
  __$$_addCopyWithImpl(_$_add _value, $Res Function(_$_add) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? type = null,
  }) {
    return _then(_$_add(
      null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TicketType,
    ));
  }
}

/// @nodoc

class _$_add implements _add {
  const _$_add(this.url, this.type);

  @override
  final String url;
  @override
  final TicketType type;

  @override
  String toString() {
    return 'TicketStorageEvent.add(url: $url, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_add &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, url, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_addCopyWith<_$_add> get copyWith =>
      __$$_addCopyWithImpl<_$_add>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String url, TicketType type) add,
    required TResult Function() fetch,
  }) {
    return add(url, type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String url, TicketType type)? add,
    TResult? Function()? fetch,
  }) {
    return add?.call(url, type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String url, TicketType type)? add,
    TResult Function()? fetch,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(url, type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_add value) add,
    required TResult Function(_fetch value) fetch,
  }) {
    return add(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_add value)? add,
    TResult? Function(_fetch value)? fetch,
  }) {
    return add?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_add value)? add,
    TResult Function(_fetch value)? fetch,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(this);
    }
    return orElse();
  }
}

abstract class _add implements TicketStorageEvent {
  const factory _add(final String url, final TicketType type) = _$_add;

  String get url;
  TicketType get type;
  @JsonKey(ignore: true)
  _$$_addCopyWith<_$_add> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_fetchCopyWith<$Res> {
  factory _$$_fetchCopyWith(_$_fetch value, $Res Function(_$_fetch) then) =
      __$$_fetchCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_fetchCopyWithImpl<$Res>
    extends _$TicketStorageEventCopyWithImpl<$Res, _$_fetch>
    implements _$$_fetchCopyWith<$Res> {
  __$$_fetchCopyWithImpl(_$_fetch _value, $Res Function(_$_fetch) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_fetch implements _fetch {
  const _$_fetch();

  @override
  String toString() {
    return 'TicketStorageEvent.fetch()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_fetch);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String url, TicketType type) add,
    required TResult Function() fetch,
  }) {
    return fetch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String url, TicketType type)? add,
    TResult? Function()? fetch,
  }) {
    return fetch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String url, TicketType type)? add,
    TResult Function()? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_add value) add,
    required TResult Function(_fetch value) fetch,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_add value)? add,
    TResult? Function(_fetch value)? fetch,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_add value)? add,
    TResult Function(_fetch value)? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class _fetch implements TicketStorageEvent {
  const factory _fetch() = _$_fetch;
}

/// @nodoc
mixin _$TicketStorageState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Ticket> tickets) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Ticket> tickets)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Ticket> tickets)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_ShowingList value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_ShowingList value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_ShowingList value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketStorageStateCopyWith<$Res> {
  factory $TicketStorageStateCopyWith(
          TicketStorageState value, $Res Function(TicketStorageState) then) =
      _$TicketStorageStateCopyWithImpl<$Res, TicketStorageState>;
}

/// @nodoc
class _$TicketStorageStateCopyWithImpl<$Res, $Val extends TicketStorageState>
    implements $TicketStorageStateCopyWith<$Res> {
  _$TicketStorageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$TicketStorageStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'TicketStorageState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Ticket> tickets) loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Ticket> tickets)? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Ticket> tickets)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_ShowingList value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_ShowingList value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_ShowingList value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements TicketStorageState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_ShowingListCopyWith<$Res> {
  factory _$$_ShowingListCopyWith(
          _$_ShowingList value, $Res Function(_$_ShowingList) then) =
      __$$_ShowingListCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Ticket> tickets});
}

/// @nodoc
class __$$_ShowingListCopyWithImpl<$Res>
    extends _$TicketStorageStateCopyWithImpl<$Res, _$_ShowingList>
    implements _$$_ShowingListCopyWith<$Res> {
  __$$_ShowingListCopyWithImpl(
      _$_ShowingList _value, $Res Function(_$_ShowingList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tickets = null,
  }) {
    return _then(_$_ShowingList(
      null == tickets
          ? _value._tickets
          : tickets // ignore: cast_nullable_to_non_nullable
              as List<Ticket>,
    ));
  }
}

/// @nodoc

class _$_ShowingList implements _ShowingList {
  const _$_ShowingList(final List<Ticket> tickets) : _tickets = tickets;

  final List<Ticket> _tickets;
  @override
  List<Ticket> get tickets {
    if (_tickets is EqualUnmodifiableListView) return _tickets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tickets);
  }

  @override
  String toString() {
    return 'TicketStorageState.loaded(tickets: $tickets)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShowingList &&
            const DeepCollectionEquality().equals(other._tickets, _tickets));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_tickets));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ShowingListCopyWith<_$_ShowingList> get copyWith =>
      __$$_ShowingListCopyWithImpl<_$_ShowingList>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Ticket> tickets) loaded,
  }) {
    return loaded(tickets);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Ticket> tickets)? loaded,
  }) {
    return loaded?.call(tickets);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Ticket> tickets)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(tickets);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_ShowingList value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_ShowingList value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_ShowingList value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _ShowingList implements TicketStorageState {
  const factory _ShowingList(final List<Ticket> tickets) = _$_ShowingList;

  List<Ticket> get tickets;
  @JsonKey(ignore: true)
  _$$_ShowingListCopyWith<_$_ShowingList> get copyWith =>
      throw _privateConstructorUsedError;
}
