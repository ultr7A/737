const args = process.argv.slice(2),
      server_name         = args[0],
      path_to_static_site = args[1],
      port                = args[2];

const config = `
server {
    listen 80;
    server_name ${server_name};

    location / {
        root ${path_to_static_site};
        index index.html;
    }

    location /api {
        proxy_pass http://localhost:${port};
        proxy_http_version 1.1;
        proxy_set_header Upgrade $http_upgrade;
        proxy_set_header Connection 'upgrade';
        proxy_set_header Host $host;
        proxy_cache_bypass $http_upgrade;
    }
}
`;

console.log(config);
