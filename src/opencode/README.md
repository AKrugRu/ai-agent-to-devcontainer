
# Add opencode to devcontainer (opencode)

Добавляем в devcontainer агента opencode последней версии

## Example Usage

```json
"features": {
    "ghcr.io/AKrugRu/devcontainer-features/opencode:1": {}
}

//монтируем volume для сохранения настроек
	"mounts": [
		"source=opencode-config,target=/home/vscode/.config/opencode/,type=volume",
		"source=opencode-local-shared,target=/home/vscode/.local/share/opencode,type=volume",
		"source=opencode-local-state,target=/home/vscode/.local/state/opencode,type=volume"
	],
```

## Options

| Options Id | Description | Type | Default Value |
|-----|-----|-----|-----|
| version | Укажите версию для установки | string | latest |

## Customizations

### VS Code Extensions

- `sst-dev.opencode`




---

_Note: This file was auto-generated from the [devcontainer-feature.json](https://github.com/AKrugRu/devcontainer-features/blob/main/src/opencode/devcontainer-feature.json).  Add additional notes to a `NOTES.md`._
