FROM ghcr.io/m1k1o/neko/google-chrome:latest

# Pantalla
ENV NEKO_SCREEN=1280x720@30

# Passwords
ENV NEKO_PASSWORD=user123
ENV NEKO_PASSWORD_ADMIN=admin123

# Puerto HTTP (Railway asigna PORT automaticamente)
ENV NEKO_BIND=:8080

# WebRTC en modo ICE lite + solo TCP para que funcione sin UDP
ENV NEKO_ICELITE=1
ENV NEKO_TCPMUX=8080
ENV NEKO_UDPMUX=0

# Desactivar EPR (UDP range) - Railway no soporta UDP
ENV NEKO_EPR=

# Navegador arranca en nueva tab limpia
ENV NEKO_IMPLICIT_CONTROL=true
ENV NEKO_HEARTBEAT_INTERVAL=120

EXPOSE 8080
