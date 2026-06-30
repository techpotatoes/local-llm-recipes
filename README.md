# local-llm-recipes

Local LLM model recipes for running quantized models on consumer hardware.

## Hardware

| Component | Specification |
|-----------|---------------|
| GPU0 | RTX 5070 Ti 16GB |
| GPU1 | RTX 3060 12GB |
| CPU | Ryzen 7 7800X3D |
| RAM | 32GB DDR5 - 6000MHz |

## Performance

- **Q5+Q4** quantization runs at ~90 tokens/sec on this hardware

## Notes

- These are `.bat` scripts since this is also a gaming PC running Windows
- Parameters can be copied to Docker if needed

## Models

### Qwen3.6-35B-MOE

- **[256k context](./_Qwen3.6-35b-MOE-q4+q4+256k-context.bat)** - Extended context window
- **[128k context](./_Qwen3.6-35b-MOE-q5+q4+128k-context.bat)** - Balanced quality/speed
