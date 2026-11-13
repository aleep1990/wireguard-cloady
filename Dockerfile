# WireGuard on Cloady (fallback image build)
# NOTE: Cloady prefers docker-compose.yml when it exists at the repo root,
# so this Dockerfile is only a fallback. The compose file pins the same tag.
FROM lscr.io/linuxserver/wireguard:1.0.20260223

EXPOSE 51820/udp
