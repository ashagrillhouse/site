document.addEventListener('DOMContentLoaded', () => {
  // DOM Elements
  const audio = document.getElementById('audio');
  const playPauseBtn = document.getElementById('play-pause');
  const prevBtn = document.getElementById('prev');
  const nextBtn = document.getElementById('next');
  const seekSlider = document.getElementById('seek-slider');
  const currentTimeEl = document.getElementById('current-time');
  const durationEl = document.getElementById('duration');
  const volumeSlider = document.getElementById('volume-slider');
  const songInfoEl = document.getElementById('song-info');
  const albumTextEl = document.querySelector('.album-text');
  const favBtn = document.getElementById('fav-btn');
  const searchBtn = document.getElementById('search-btn');
  const playFavoritesBtn = document.getElementById('play-favorites');
  const searchView = document.getElementById('search-view');
  const searchInput = document.getElementById('search-input');
  const closeSearchBtn = document.getElementById('close-search');
  const searchResults = document.getElementById('search-results');

  // Player state
  let songs = [];
  let currentSongIndex = 0;
  let favorites = JSON.parse(localStorage.getItem('favorites')) || [];
  let isPlaying = false;

  // Load songs from CSV
  function loadSongs() {
    Papa.parse('songs.csv', {
      download: true,
      header: true,
      complete: function(results) {
        songs = results.data.filter(song => song.file);
        if (songs.length > 0) {
          loadSong(currentSongIndex);
        }
      }
    });
  }

  // Load a song by index
  function loadSong(index) {
    if (index < 0 || index >= songs.length) return;
    
    currentSongIndex = index;
    const song = songs[index];
    
    audio.src = `songs/${song.file}`;
    songInfoEl.innerHTML = `${song.title || 'Unknown Title'} — ${song.artist || 'Unknown Artist'}`;
    albumTextEl.textContent = song.album || '';
    
    // Update favorite button
    const isFavorite = favorites.includes(song.file);
    favBtn.textContent = isFavorite ? '❤️' : '♡';
    
    // If already playing, continue playing
    if (isPlaying) {
      audio.play().catch(e => console.error('Playback failed:', e));
    }
  }

  // Play/pause toggle
  function togglePlayPause() {
    if (isPlaying) {
      audio.pause();
    } else {
      audio.play().catch(e => console.error('Playback failed:', e));
    }
    isPlaying = !isPlaying;
    updatePlayPauseButton();
  }

  // Update play/pause button
  function updatePlayPauseButton() {
    playPauseBtn.textContent = isPlaying ? '⏸️' : '▶️';
  }

  // Previous song
  function prevSong() {
    let newIndex = currentSongIndex - 1;
    if (newIndex < 0) newIndex = songs.length - 1;
    loadSong(newIndex);
    if (isPlaying) {
      audio.play().catch(e => console.error('Playback failed:', e));
    }
  }

  // Next song
  function nextSong() {
    let newIndex = currentSongIndex + 1;
    if (newIndex >= songs.length) newIndex = 0;
    loadSong(newIndex);
    if (isPlaying) {
      audio.play().catch(e => console.error('Playback failed:', e));
    }
  }

  // Toggle favorite
  function toggleFavorite() {
    const songFile = songs[currentSongIndex].file;
    const index = favorites.indexOf(songFile);
    
    if (index === -1) {
      favorites.push(songFile);
      favBtn.textContent = '❤️';
    } else {
      favorites.splice(index, 1);
      favBtn.textContent = '♡';
    }
    
    localStorage.setItem('favorites', JSON.stringify(favorites));
  }

  // Play favorites
  function playFavorites() {
    if (favorites.length === 0) {
      alert('No favorites added yet!');
      return;
    }
    
    // Filter songs to only favorites
    const favoriteSongs = songs.filter(song => favorites.includes(song.file));
    if (favoriteSongs.length === 0) {
      alert('No favorite songs found in the current list!');
      return;
    }
    
    // Create a temporary playlist of favorites
    const originalSongs = [...songs];
    songs = favoriteSongs;
    currentSongIndex = 0;
    loadSong(currentSongIndex);
    if (!isPlaying) togglePlayPause();
    
    // Restore original songs when done
    const restoreOriginal = () => {
      songs = originalSongs;
      audio.removeEventListener('ended', restoreOriginal);
    };
    
    audio.addEventListener('ended', restoreOriginal);
  }

  // Search songs
  function searchSongs() {
    searchView.classList.remove('hidden');
    searchInput.focus();
  }

  // Close search
  function closeSearch() {
    searchView.classList.add('hidden');
    searchInput.value = '';
    searchResults.innerHTML = '';
  }

  // Handle search input
  function handleSearchInput() {
    const query = searchInput.value.toLowerCase();
    if (query.length < 1) {
      searchResults.innerHTML = '';
      return;
    }
    
    const results = songs.filter(song => 
      (song.title && song.title.toLowerCase().includes(query)) ||
      (song.artist && song.artist.toLowerCase().includes(query)) ||
      (song.album && song.album.toLowerCase().includes(query))
    );
    
    displaySearchResults(results);
  }

  // Display search results
  function displaySearchResults(results) {
    searchResults.innerHTML = '';
    
    if (results.length === 0) {
      searchResults.innerHTML = '<div class="song-item">No results found</div>';
      return;
    }
    
    results.forEach((song, index) => {
      const songEl = document.createElement('div');
      songEl.className = 'song-item';
      songEl.innerHTML = `${song.title || 'Unknown Title'} — ${song.artist || 'Unknown Artist'}`;
      songEl.addEventListener('click', () => {
        currentSongIndex = songs.findIndex(s => s.file === song.file);
        loadSong(currentSongIndex);
        if (!isPlaying) togglePlayPause();
        closeSearch();
      });
      searchResults.appendChild(songEl);
    });
  }

  // Format time (seconds to MM:SS)
  function formatTime(seconds) {
    const minutes = Math.floor(seconds / 60);
    const secs = Math.floor(seconds % 60);
    return `${minutes}:${secs < 10 ? '0' : ''}${secs}`;
  }

  // Event listeners
  playPauseBtn.addEventListener('click', togglePlayPause);
  prevBtn.addEventListener('click', prevSong);
  nextBtn.addEventListener('click', nextSong);
  favBtn.addEventListener('click', toggleFavorite);
  searchBtn.addEventListener('click', searchSongs);
  playFavoritesBtn.addEventListener('click', playFavorites);
  closeSearchBtn.addEventListener('click', closeSearch);
  searchInput.addEventListener('input', handleSearchInput);

  // Seek slider
  seekSlider.addEventListener('input', () => {
    audio.currentTime = seekSlider.value;
  });

  // Volume slider
  volumeSlider.addEventListener('input', () => {
    audio.volume = volumeSlider.value;
  });

  // Audio events
  audio.addEventListener('timeupdate', () => {
    const currentTime = audio.currentTime;
    const duration = audio.duration || 0;
    
    seekSlider.value = currentTime;
    seekSlider.max = duration;
    
    currentTimeEl.textContent = formatTime(currentTime);
    durationEl.textContent = formatTime(duration);
  });

  audio.addEventListener('ended', nextSong);
  audio.addEventListener('play', () => {
    isPlaying = true;
    updatePlayPauseButton();
  });

  audio.addEventListener('pause', () => {
    isPlaying = false;
    updatePlayPauseButton();
  });

  // Initialize
  loadSongs();
});