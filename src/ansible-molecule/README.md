
# Install ansible and molecule to devcontainer (ansible-molecule)

Добавляем в devcontainer ansible и molecule

## Example Usage

```json
"features": {
    "ghcr.io/AKrugRu/devcontainer-features/ansible-molecule:1": {}
},

"mounts": [
    "source=${localEnv:HOME}/.gitconfig,target=/home/vscode/.gitconfig,type=bind,consistency=cached", // пробрасываем .gitconfig
    "source=${localEnv:HOME}/.ssh,target=/home/vscode/.ssh,type=bind,ro=true", // пробрасываем ключи
    "source=${localEnv:HOME}/.ssh/known_hosts,target=/home/vscode/.ssh/known_hosts,type=bind" // пробрасываем known_hosts
]
```

## Options

| Options Id | Description | Type | Default Value |
|-----|-----|-----|-----|
| ansible_version | Укажите версию для установки | string | latest |
| molecule_version | Укажите версию для установки | string | latest |

## Customizations

### VS Code Extensions

- `redhat.ansible`



---

_Note: This file was auto-generated from the [devcontainer-feature.json](https://github.com/AKrugRu/devcontainer-features/blob/main/src/ansible-molecule/devcontainer-feature.json).  Add additional notes to a `NOTES.md`._
