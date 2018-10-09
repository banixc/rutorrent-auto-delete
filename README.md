# rutorrent-auto-delete

Auto delete old torrents to keep disk space usage under a certain ratio and prevent rutorrent from crashing.

# How to use
1. Copy ```config.example.js``` to ```config.js``` 
2. Edit ```config.js```
3. Run:
```
npm install
npm start
```

# Requirement
ES6-compatible Node.js

# Running with Docker

1. ```docker build -t rutorrent-auto-delete .```
2. Copy ```config.example.js``` to ```/path/to/config.js``` and edit ```/path/to/config.js```
3. ```docker run --name rutorrent-auto-delete -v /path/to/config:/usr/src/app/config rutorrent-auto-delete```

