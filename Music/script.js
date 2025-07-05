const audio = document.getElementById('audio');
const playPauseBtn = document.getElementById('play-pause');
const prevBtn = document.getElementById('prev');
const nextBtn = document.getElementById('next');
const seekSlider = document.getElementById('seek-slider');
const volumeSlider = document.getElementById('volume-slider');
const currentTimeEl = document.getElementById('current-time');
const durationEl = document.getElementById('duration');
const searchBtn = document.getElementById('search-btn');
const searchInput = document.getElementById('search-input');
const searchResults = document.getElementById('search-results');
const mainUI = document.getElementById('main-ui');
const searchView = document.getElementById('search-view');
const favoritesBtn = document.getElementById('play-favorites');
const favBtn = document.getElementById('fav-btn');

let songs = [];
let filtered = [];
let current = 0;

audio.volume = 0.5;
volumeSlider.value = audio.volume;

Papa.parse('songs.csv', {
  download: true,
  header: true,
  skipEmptyLines: true,
  complete: results => {
    songs = results.data.filter(s => s.file);
    filtered = songs.slice();
    restoreLastSongState();
  }
});

function renderResults() {
  searchResults.innerHTML = '';
  filtered.forEach((s, i) => {
    if (!s.file) return;
    const item = document.createElement('div');
    item.className = 'search-item';
    item.innerHTML = `<span class="song-info-text">${s.title || s.file} — ${s.artist || ''}</span>`;
    const btn = document.createElement('button');
    btn.className = 'fav-btn';
    btn.textContent = isFav(s) ? '♥' : '♡';
    btn.onclick = e => {
      e.stopPropagation();
      toggleFav(s);
      renderResults();
    };
    item.appendChild(btn);
    item.onclick = () => {
      loadSong(i, true);
      searchView.classList.add('hidden');
      mainUI.classList.remove('hidden');
      searchInput.value = '';
    };
    searchResults.appendChild(item);
  });
}

function loadSong(index, play = true) {
  const s = filtered[index];
  if (!s || !s.file) return;
  current = index;
  audio.src = 'songs/' + s.file;
  document.getElementById('song-info').innerHTML =
    `${s.title || s.file} — ${s.artist || 'Unknown'}<br><span class="album-text">${s.album || ''}</span>`;
  updateFavButton();
  if (play) {
    audio.play().then(() => playPauseBtn.textContent = '⏸️')
                 .catch(() => playPauseBtn.textContent = '▶️');
  } else {
    playPauseBtn.textContent = '▶️';
  }
}

playPauseBtn.onclick = () => {
  if (audio.paused) {
    audio.play();
    playPauseBtn.textContent = '⏸️';
  } else {
    audio.pause();
    playPauseBtn.textContent = '▶️';
  }
};
prevBtn.onclick = () => loadSong((current - 1 + filtered.length) % filtered.length, true);
nextBtn.onclick = () => loadSong((current + 1) % filtered.length, true);

// ✅ ✅ ✅ YouTube-style slider (Fixed!)
audio.ontimeupdate = () => {
  seekSlider.max = audio.duration || 0;
  seekSlider.value = audio.currentTime || 0;
  currentTimeEl.textContent = formatTime(audio.currentTime);
  durationEl.textContent = formatTime(audio.duration);
};
seekSlider.addEventListener('input', () => {
  audio.currentTime = seekSlider.value;
});

// Volume Slider
volumeSlider.oninput = () => {
  audio.volume = volumeSlider.value;
};

// Search & Filter
searchBtn.onclick = () => {
  if (searchView.classList.contains('hidden')) {
    mainUI.classList.add('hidden');
    searchView.classList.remove('hidden');
    filtered = songs.slice();
    renderResults();
  } else {
    searchView.classList.add('hidden');
    mainUI.classList.remove('hidden');
    searchInput.value = '';
  }
};
searchInput.oninput = () => {
  const q = searchInput.value.toLowerCase();
  filtered = songs.filter(s =>
    (s.title && s.title.toLowerCase().includes(q)) ||
    (s.artist && s.artist.toLowerCase().includes(q)) ||
    (s.album && s.album.toLowerCase().includes(q))
  );
  renderResults();
};
document.getElementById('close-search').onclick = () => {
  searchView.classList.add('hidden');
  mainUI.classList.remove('hidden');
  searchInput.value = '';
};

// Favorites
function toggleFav(s) {
  if (!s || !s.file) return;
  let favs = JSON.parse(localStorage.getItem('favorites') || '[]');
  const exists = favs.some(x => x.file === s.file);
  if (exists) {
    favs = favs.filter(x => x.file !== s.file);
  } else {
    favs.push(s);
  }
  localStorage.setItem('favorites', JSON.stringify(favs));
}
function isFav(s) {
  if (!s || !s.file) return false;
  const favs = JSON.parse(localStorage.getItem('favorites') || '[]');
  return favs.some(x => x.file === s.file);
}
favoritesBtn.onclick = () => {
  const favs = JSON.parse(localStorage.getItem('favorites') || '[]');
  if (favs.length > 0) {
    filtered = favs.slice();
    loadSong(0, true);
    mainUI.classList.remove('hidden');
    searchView.classList.add('hidden');
  }
};
audio.onended = () => nextBtn.click();
function updateFavButton() {
  const s = filtered[current];
  if (isFav(s)) {
    favBtn.textContent = '♥';
    favBtn.style.color = 'red';
  } else {
    favBtn.textContent = '♡';
    favBtn.style.color = '';
  }
}
favBtn.onclick = () => {
  toggleFav(filtered[current]);
  updateFavButton();
};

// Last Played Song & Time
function saveCurrentSongState() {
  const s = filtered[current];
  if (!s || !s.file) return;
  localStorage.setItem('currentSongState', JSON.stringify({
    file: s.file,
    time: audio.currentTime
  }));
}
function restoreLastSongState() {
  const saved = JSON.parse(localStorage.getItem('currentSongState') || '{}');
  if (saved.file) {
    const idx = songs.findIndex(x => x.file === saved.file);
    if (idx >= 0) {
      loadSong(idx, false);
      audio.currentTime = saved.time || 0;
      return;
    }
  }
  if (songs.length) loadSong(0, false);
}
audio.addEventListener('timeupdate', saveCurrentSongState);

// Time Format
function formatTime(sec) {
  const m = Math.floor(sec / 60) || 0;
  const s = Math.floor(sec % 60) || 0;
  return `${m}:${s < 10 ? '0' : ''}${s}`;
}

alert('Present');