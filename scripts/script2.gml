/// scr_play_music("soundtrack.wav");
// Este script reproduce una canción y la hace repetir en un bucle.

var music_filename = argument0; // Nombre del archivo de música (por ejemplo, "soundtrack.wav")

// Verificamos si la música ya está reproduciéndose
var music_index = audio_play_sound(music_filename, 1, false);

if (music_index != -1) {
    // Verificamos si la música ya está en curso
    if (!audio_is_playing(music_index)) {
        // Si no está en curso, la reproducimos nuevamente desde el principio para lograr el bucle
        audio_play_sound(music_filename, 1, false);
    }
}
