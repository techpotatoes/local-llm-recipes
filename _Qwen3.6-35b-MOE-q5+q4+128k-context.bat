@echo off
title Qwen3.6-35B MoE - 2x GPU - Q5_K_M - 131k Context

set MODEL_PATH=D:\AI\HF_Cache\hub\models--bartowski--Qwen_Qwen3.6-35B-A3B-GGUF\snapshots\5c2410d71524f4f72b023ce8daf7a80528226d5f\Qwen_Qwen3.6-35B-A3B-Q5_K_M.gguf

:: This uses ik-llama instead of llama-server
:: Lowered -b to 512 to prevent VRAM spiking during heavy codebase/agentic prompt ingestion
:: Vision disabled
llama-server ^
  --alias "Qwen3.6-35B-A3B" ^
  -c 131072 ^
  --no-mmproj-offload ^
  --host 0.0.0.0 ^
  --port 8033 ^
  --model "%MODEL_PATH%" ^
  --jinja ^
  --split-mode layer ^
  -ts 16,12 ^
  --main-gpu 0 ^
  -ngl 999 ^
  -np 1 ^
  -b 512 ^
  -ub 1024 ^
  -fa on ^
  --no-mmap ^
  --mlock ^
  -ctk q4_0 ^
  -ctv q4_0 ^
  --parallel-tool-calls ^
  --reasoning off ^
  --reasoning-format deepseek ^
  -t 8 ^
  --temp 0.6 ^
  --top-p 0.95 ^
  --top-k 20 ^
  --min-p 0.0 ^
  --repeat-penalty 1.1 ^
  --presence-penalty 0.0

pause