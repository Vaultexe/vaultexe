> **Note**: This document is a continuation of the [main README.md](https://github.com/Vaultexe/.github/blob/main/profile/README.md) file.

# 🦸🏻‍♂️ Vaultexe super repo

## 🚀 Getting Started

### 🏗️ Setup environments

You need to setup the productionn environment files for each project.
These ``.env`` files are secret, and should not be commited to the repository.

```bash
cd env/
cat .env.dev > .env
cat db.dev.env > db.env
cat redis.dev.env > redis.env
cat pgadmin.dev.env > pgadmin.env
```

> **Note:** You need to checkout each of the sub-repos' own documentation to setup them up too.

### 🐳 Run the project (`Dev`)

```bash
./run.sh
```

### 🐳 Run the project (`Prod`)

- Remove [`docker-compose.override.yml`](./docker-compose.override.yml) file which is used to override some configurations for development.

- Customize all environment variables in [`env/`](./env/) directory and replace all sensitice screts/passwords with your own.

- Spin up the containers

```bash
./run.prod.sh
```
