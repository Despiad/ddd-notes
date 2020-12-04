part of 'note_actor_bloc.dart';

@freezed
abstract class NoteActorEvent with _$NoteActorEvent {
  const factory NoteActorEvent.deleted(Note note) = _Deleted;
  // if you want to add an ability to success todo from UI, add an another NoteActorEvent then
}
