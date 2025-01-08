---
title: "Paddle OCR PoC"
---
## Summary

PoC

## Run

```bash
docker build . -t paddleocr:poc
mkdir -p ./work
touch ./work/Untitled.png
docker run -v ./work:/work --rm paddleocr:poc Untitled.png
```

If you want to run it multiple times, bind mount `.paddleocr` to make it quicker.

```bash
mkdir -p ./.paddleocr
docker run \
  -v ./work:/work \
  -v ./.paddleocr:/root/.paddleocr \
  --rm paddleocr:poc \
  Untitled.png
```
