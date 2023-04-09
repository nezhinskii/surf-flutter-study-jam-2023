// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ticket_downloading_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TicketDownloadingState {
  Ticket get ticket => throw _privateConstructorUsedError;
  int get index => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Ticket ticket, int index) notStarted,
    required TResult Function(
            Ticket ticket, int index, double current, double total)
        inProgress,
    required TResult Function(Ticket ticket, int index) ended,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Ticket ticket, int index)? notStarted,
    TResult? Function(Ticket ticket, int index, double current, double total)?
        inProgress,
    TResult? Function(Ticket ticket, int index)? ended,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Ticket ticket, int index)? notStarted,
    TResult Function(Ticket ticket, int index, double current, double total)?
        inProgress,
    TResult Function(Ticket ticket, int index)? ended,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotStarted value) notStarted,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(Downloaded value) ended,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NotStarted value)? notStarted,
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(Downloaded value)? ended,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotStarted value)? notStarted,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(Downloaded value)? ended,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TicketDownloadingStateCopyWith<TicketDownloadingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketDownloadingStateCopyWith<$Res> {
  factory $TicketDownloadingStateCopyWith(TicketDownloadingState value,
          $Res Function(TicketDownloadingState) then) =
      _$TicketDownloadingStateCopyWithImpl<$Res, TicketDownloadingState>;
  @useResult
  $Res call({Ticket ticket, int index});
}

/// @nodoc
class _$TicketDownloadingStateCopyWithImpl<$Res,
        $Val extends TicketDownloadingState>
    implements $TicketDownloadingStateCopyWith<$Res> {
  _$TicketDownloadingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ticket = null,
    Object? index = null,
  }) {
    return _then(_value.copyWith(
      ticket: null == ticket
          ? _value.ticket
          : ticket // ignore: cast_nullable_to_non_nullable
              as Ticket,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NotStartedCopyWith<$Res>
    implements $TicketDownloadingStateCopyWith<$Res> {
  factory _$$_NotStartedCopyWith(
          _$_NotStarted value, $Res Function(_$_NotStarted) then) =
      __$$_NotStartedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Ticket ticket, int index});
}

/// @nodoc
class __$$_NotStartedCopyWithImpl<$Res>
    extends _$TicketDownloadingStateCopyWithImpl<$Res, _$_NotStarted>
    implements _$$_NotStartedCopyWith<$Res> {
  __$$_NotStartedCopyWithImpl(
      _$_NotStarted _value, $Res Function(_$_NotStarted) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ticket = null,
    Object? index = null,
  }) {
    return _then(_$_NotStarted(
      null == ticket
          ? _value.ticket
          : ticket // ignore: cast_nullable_to_non_nullable
              as Ticket,
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_NotStarted implements _NotStarted {
  const _$_NotStarted(this.ticket, this.index);

  @override
  final Ticket ticket;
  @override
  final int index;

  @override
  String toString() {
    return 'TicketDownloadingState.notStarted(ticket: $ticket, index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NotStarted &&
            (identical(other.ticket, ticket) || other.ticket == ticket) &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ticket, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NotStartedCopyWith<_$_NotStarted> get copyWith =>
      __$$_NotStartedCopyWithImpl<_$_NotStarted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Ticket ticket, int index) notStarted,
    required TResult Function(
            Ticket ticket, int index, double current, double total)
        inProgress,
    required TResult Function(Ticket ticket, int index) ended,
  }) {
    return notStarted(ticket, index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Ticket ticket, int index)? notStarted,
    TResult? Function(Ticket ticket, int index, double current, double total)?
        inProgress,
    TResult? Function(Ticket ticket, int index)? ended,
  }) {
    return notStarted?.call(ticket, index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Ticket ticket, int index)? notStarted,
    TResult Function(Ticket ticket, int index, double current, double total)?
        inProgress,
    TResult Function(Ticket ticket, int index)? ended,
    required TResult orElse(),
  }) {
    if (notStarted != null) {
      return notStarted(ticket, index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotStarted value) notStarted,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(Downloaded value) ended,
  }) {
    return notStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NotStarted value)? notStarted,
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(Downloaded value)? ended,
  }) {
    return notStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotStarted value)? notStarted,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(Downloaded value)? ended,
    required TResult orElse(),
  }) {
    if (notStarted != null) {
      return notStarted(this);
    }
    return orElse();
  }
}

abstract class _NotStarted implements TicketDownloadingState {
  const factory _NotStarted(final Ticket ticket, final int index) =
      _$_NotStarted;

  @override
  Ticket get ticket;
  @override
  int get index;
  @override
  @JsonKey(ignore: true)
  _$$_NotStartedCopyWith<_$_NotStarted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_InProgressCopyWith<$Res>
    implements $TicketDownloadingStateCopyWith<$Res> {
  factory _$$_InProgressCopyWith(
          _$_InProgress value, $Res Function(_$_InProgress) then) =
      __$$_InProgressCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Ticket ticket, int index, double current, double total});
}

/// @nodoc
class __$$_InProgressCopyWithImpl<$Res>
    extends _$TicketDownloadingStateCopyWithImpl<$Res, _$_InProgress>
    implements _$$_InProgressCopyWith<$Res> {
  __$$_InProgressCopyWithImpl(
      _$_InProgress _value, $Res Function(_$_InProgress) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ticket = null,
    Object? index = null,
    Object? current = null,
    Object? total = null,
  }) {
    return _then(_$_InProgress(
      null == ticket
          ? _value.ticket
          : ticket // ignore: cast_nullable_to_non_nullable
              as Ticket,
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      null == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as double,
      null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_InProgress implements _InProgress {
  const _$_InProgress(this.ticket, this.index, this.current, this.total);

  @override
  final Ticket ticket;
  @override
  final int index;
  @override
  final double current;
  @override
  final double total;

  @override
  String toString() {
    return 'TicketDownloadingState.inProgress(ticket: $ticket, index: $index, current: $current, total: $total)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InProgress &&
            (identical(other.ticket, ticket) || other.ticket == ticket) &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.current, current) || other.current == current) &&
            (identical(other.total, total) || other.total == total));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ticket, index, current, total);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InProgressCopyWith<_$_InProgress> get copyWith =>
      __$$_InProgressCopyWithImpl<_$_InProgress>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Ticket ticket, int index) notStarted,
    required TResult Function(
            Ticket ticket, int index, double current, double total)
        inProgress,
    required TResult Function(Ticket ticket, int index) ended,
  }) {
    return inProgress(ticket, index, current, total);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Ticket ticket, int index)? notStarted,
    TResult? Function(Ticket ticket, int index, double current, double total)?
        inProgress,
    TResult? Function(Ticket ticket, int index)? ended,
  }) {
    return inProgress?.call(ticket, index, current, total);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Ticket ticket, int index)? notStarted,
    TResult Function(Ticket ticket, int index, double current, double total)?
        inProgress,
    TResult Function(Ticket ticket, int index)? ended,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(ticket, index, current, total);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotStarted value) notStarted,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(Downloaded value) ended,
  }) {
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NotStarted value)? notStarted,
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(Downloaded value)? ended,
  }) {
    return inProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotStarted value)? notStarted,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(Downloaded value)? ended,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }
}

abstract class _InProgress implements TicketDownloadingState {
  const factory _InProgress(final Ticket ticket, final int index,
      final double current, final double total) = _$_InProgress;

  @override
  Ticket get ticket;
  @override
  int get index;
  double get current;
  double get total;
  @override
  @JsonKey(ignore: true)
  _$$_InProgressCopyWith<_$_InProgress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DownloadedCopyWith<$Res>
    implements $TicketDownloadingStateCopyWith<$Res> {
  factory _$$DownloadedCopyWith(
          _$Downloaded value, $Res Function(_$Downloaded) then) =
      __$$DownloadedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Ticket ticket, int index});
}

/// @nodoc
class __$$DownloadedCopyWithImpl<$Res>
    extends _$TicketDownloadingStateCopyWithImpl<$Res, _$Downloaded>
    implements _$$DownloadedCopyWith<$Res> {
  __$$DownloadedCopyWithImpl(
      _$Downloaded _value, $Res Function(_$Downloaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ticket = null,
    Object? index = null,
  }) {
    return _then(_$Downloaded(
      null == ticket
          ? _value.ticket
          : ticket // ignore: cast_nullable_to_non_nullable
              as Ticket,
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$Downloaded implements Downloaded {
  const _$Downloaded(this.ticket, this.index);

  @override
  final Ticket ticket;
  @override
  final int index;

  @override
  String toString() {
    return 'TicketDownloadingState.ended(ticket: $ticket, index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Downloaded &&
            (identical(other.ticket, ticket) || other.ticket == ticket) &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ticket, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DownloadedCopyWith<_$Downloaded> get copyWith =>
      __$$DownloadedCopyWithImpl<_$Downloaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Ticket ticket, int index) notStarted,
    required TResult Function(
            Ticket ticket, int index, double current, double total)
        inProgress,
    required TResult Function(Ticket ticket, int index) ended,
  }) {
    return ended(ticket, index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Ticket ticket, int index)? notStarted,
    TResult? Function(Ticket ticket, int index, double current, double total)?
        inProgress,
    TResult? Function(Ticket ticket, int index)? ended,
  }) {
    return ended?.call(ticket, index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Ticket ticket, int index)? notStarted,
    TResult Function(Ticket ticket, int index, double current, double total)?
        inProgress,
    TResult Function(Ticket ticket, int index)? ended,
    required TResult orElse(),
  }) {
    if (ended != null) {
      return ended(ticket, index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotStarted value) notStarted,
    required TResult Function(_InProgress value) inProgress,
    required TResult Function(Downloaded value) ended,
  }) {
    return ended(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NotStarted value)? notStarted,
    TResult? Function(_InProgress value)? inProgress,
    TResult? Function(Downloaded value)? ended,
  }) {
    return ended?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotStarted value)? notStarted,
    TResult Function(_InProgress value)? inProgress,
    TResult Function(Downloaded value)? ended,
    required TResult orElse(),
  }) {
    if (ended != null) {
      return ended(this);
    }
    return orElse();
  }
}

abstract class Downloaded implements TicketDownloadingState {
  const factory Downloaded(final Ticket ticket, final int index) = _$Downloaded;

  @override
  Ticket get ticket;
  @override
  int get index;
  @override
  @JsonKey(ignore: true)
  _$$DownloadedCopyWith<_$Downloaded> get copyWith =>
      throw _privateConstructorUsedError;
}
