# Claude

Small Windows helper scripts for managing the **Claude Cowork VM service**
(`CoworkVMService`).

## Scripts

| Script | Purpose |
|---|---|
| [`disable-cowork.bat`](./disable-cowork.bat) | Stops `CoworkVMService` and sets its start type to **Disabled**. |
| [`enable-cowork.bat`](./enable-cowork.bat) | Reverts the above — sets the start type back to **Automatic** and starts the service. |

Both scripts must be run **as Administrator** (right-click → *Run as administrator*);
they abort with a message otherwise. Each prints the resulting service state when done.

## Usage

```bat
:: turn the service off
disable-cowork.bat

:: turn it back on
enable-cowork.bat
```

## License

[MIT](./LICENSE)
