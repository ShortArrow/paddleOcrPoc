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
