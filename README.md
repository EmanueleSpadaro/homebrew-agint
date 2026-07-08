# homebrew-agint

Homebrew tap for agent-oriented programming tools.

## Formulae

| Formula | Description |
|---------|-------------|
| `jade`  | [JADE](https://jade.tilab.com/) — Java Agent DEvelopment Framework |
| `jason` | [Jason](https://github.com/jason-lang/jason) — AgentSpeak interpreter for multi-agent systems |

## Install

```bash
brew tap EmanueleSpadaro/agint
brew install jade    # or jason
```

> **Note**: If you were using the old tap name (`EmanueleSpadaro/taps`), migrate by running:
> ```bash
> brew untap EmanueleSpadaro/taps
> brew tap EmanueleSpadaro/agint
> ```

## Requirements

- macOS or Linux
- Java 21+ (automatically installed by Homebrew)

### Development

Development tooling is managed via [mise](https://mise.jdx.dev) — see [`.mise.toml`](.mise.toml).

---

## JADE

Java Agent DEvelopment Framework — a framework to develop multi-agent systems in compliance with the FIPA specifications.

### Usage

```bash
jade -help
jade -gui
```

### Example

A minimal two-agent interaction is available in `examples/jade/`:

```bash
cd examples/jade
chmod +x run.sh
./run.sh
```

This starts a `ReceiverAgent` (waits for messages) and a `SenderAgent` (sends a message and waits for a reply), demonstrating `ACLMessage`, `CyclicBehaviour`, `OneShotBehaviour`, and blocking receive — the core mechanics of JADE agent communication.

### Editor Setup

For autocompletion and type checking on JADE classes, configure your editor's Java language server to include the JADE JAR.

#### Zed

Open the `examples/jade/` directory in Zed — everything is already configured:

- [`.zed/settings.json`](./examples/jade/.zed/settings.json) — JDT LS configuration
- [`.project`](./examples/jade/.project) and [`.classpath`](./examples/jade/.classpath) — Eclipse project metadata

JADE imports will resolve automatically.

#### VS Code

Create `examples/jade/.vscode/settings.json`:

```json
{
  "java.project.referencedLibraries": [
    "/opt/homebrew/opt/jade/libexec/jade/lib/jade.jar"
  ]
}
```

#### Other editors

Set your project classpath to:

```
$(brew --prefix jade)/libexec/jade/lib/jade.jar
```

---

## Jason

Java-based interpreter for an extended version of AgentSpeak.

### Usage

```bash
jason --version
jason my_agent.mas2j
```

### Examples

Run the hello world example to verify your installation:

```bash
cd examples/jason
jason hello.mas2j
```

---

## Attribution

Homebrew formulae to install JADE and Jason CLI. Created for the ["Agenti Intelligenti"](https://magistrale.informatica.unito.it/do/corsi.pl/Show?_id=85mm) course (Prof. Baldoni) — MSc Computer Science, Università di Torino.

## License

MIT
