.PHONY: preview render clean

# Default target
all: render

# Start local preview server
preview:
	quarto preview

# Render the website
render:
	quarto render

# Clean build artifacts
clean:
	rm -rf _site/
	rm -rf .quarto/
	find . -name ".DS_Store" -delete

# Watch for changes and preview (macOS)
watch:
	fswatch -o . | xargs -n1 -I{} make preview

# Help target
help:
	@echo "Available targets:"
	@echo "  preview  - Start local preview server"
	@echo "  render   - Build the website"
	@echo "  clean    - Remove build artifacts"
	@echo "  watch    - Watch for changes and preview (macOS)"
	@echo "  help     - Show this help message"