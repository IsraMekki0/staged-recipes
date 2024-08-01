:: check licenses
cargo-bundle-licenses ^
    --format yaml ^
    --output THIRDPARTY.yml || goto :error

:: build statically linked binary with Rust
cargo install --no-track --locked --root %LIBRARY_PREFIX% --path prqlc/prqlc || goto :error
