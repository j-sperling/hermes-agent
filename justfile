set shell := ["bash", "-euo", "pipefail", "-c"]

default:
  @just --list

sync:
  uv sync --locked

sync-check:
  uv sync --locked --check

python-version:
  uv run python -V

lint:
  uv run ruff check .

typecheck:
  uv run ty check

test:
  uv run pytest

npm-setup:
  npm install

web-build:
  npm run build --workspace web

tui-build:
  npm run build --workspace ui-tui
