# UBill SDK Generator

This repository provides the configuration, templates, and OpenAPI specification used to generate the official SDK
for [UBill](https://ubill.ge).

## What’s Inside

- **`spec/openapi.yaml`** – OpenAPI 3.1.0 specification describing the UBill API.
- **`config/`** – [OpenAPI Generator](https://openapi-generator.tech/) configurations for different SDKs to generate.
- **`templates/`** – Custom templates for SDK generation tailored to each target language and code style.

## Code Generation

These SDKs are automatically generated using OpenAPI Generator from the OpenAPI 3.1 specification. This ensures:

- ✅ Consistency across all language implementations
- 🔄 Automatic updates when the API evolves
- 🧩 Comprehensive coverage of all API features
- 🔒 Type-safe client libraries with native language support
- 🛠️ Easy integration into client projects using modern tooling

> Changes made to the `spec/`, `config/`, or `templates/` directories will trigger the automatic generation of
> target SDK.

## Available SDKs

| Language   | Package Manager | Location                                       |
|------------|-----------------|------------------------------------------------|
| Go         | Go modules      | [sdk-go](https://github.com/ubill-ge/sdk-go)   |
| PHP        | Composer        | [sdk-php](https://github.com/ubill-ge/sdk-php) |
| TypeScript | NPM             | [sdk-ts](https://github.com/ubill-ge/sdk-ts)   |

## Usage

### 1. Install the dependencies

```bash
pnpm install
```

### 2. Generate the SDK

```bash
pnpm generate "php" "../sdk-php"
```

## License

This project is licensed under the MIT License. See the [LICENSE](./LICENSE) file for details.

## Contributions

Contributions are welcome! Please open issues or submit pull requests to improve templates or enhance compatibility
across languages.

## Authors

- [Temuri Takalandze](https://www.abgeo.dev) – *Maintainer*
