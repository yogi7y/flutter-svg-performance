# SVG Performance in Flutter

Sample project to test the performance of SVG when colour filter is applied.

## Key Findings

- Using `.vec` files (as recommended by the `flutter_svg` package) provides optimal performance with ~60 FPS
- Applying `ColorFilter` to SVGs reduces performance to ~30 FPS
- The performance hit is likely due to `saveLayer` operations in Flutter's rendering pipeline

## Project Setup

The sample project includes:

- A scrolling list with 500 items
- Each item contains 3 SVG icons with color filters applied
- Uses `flutter_svg` and `vector_graphics` packages for SVG rendering

## Technical Details

The performance drop occurs when using `ColorFilter.mode()` to change SVG colors. This is because color filters internally trigger `saveLayer` which is computationally expensive.

> **Note:** To accurately measure the performance, ensure you run the project in profile mode.
