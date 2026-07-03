# homebrew-taps

Homebrew tap for agent-oriented programming tools.

## Formulae

| Formula | Description |
|---------|-------------|
| `jade`  | [JADE](https://jade.tilab.com/) — Java Agent DEvelopment Framework |
| `jason` | [Jason](https://github.com/jason-lang/jason) — AgentSpeak interpreter for multi-agent systems |

## Install

```bash
brew tap EmanueleSpadaro/taps
brew install jade    # or jason
```

> **Note**: If you were using the old individual taps (`EmanueleSpadaro/jade` or `EmanueleSpadaro/jason`), migrate by running:
> ```bash
> brew untap EmanueleSpadaro/jade EmanueleSpadaro/jason
> brew tap EmanueleSpadaro/taps
> ```

## Requirements

- macOS or Linux
- Java 21+ (automatically installed by Homebrew)

## Usage

```bash
jade -help
jason --version
```

Examples for each tool are in the `examples/` directory.

## License

MIT
