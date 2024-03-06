# Custom Yolks

A custom collection of images than can be used with Pterodactyl's Egg system.

Pre-build images are hosted on docker hub at [`booky10/yolks`](https://hub.docker.com/r/booky10/yolks) (for `linux/amd64`) and [`booky10/yolksarm`](https://hub.docker.com/r/booky10/yolksarm) (for `linux/arm64/v8`), but can be self-hosted as well.

## Building

The tag base can be customized by setting the environment variable `TAG_BASE`. To automatically publish the images while building, set a value to environment variable `PUBLISH_IMAGES` (e.g. `true`). If you only want to build a specific image, set environment variable `WHITELIST` to the specific image name (e.g. `java-alpine`).

## Licensing

Like [pterodactyl/yolks](https://github.com/pterodactyl/yolks), all images and entrypoint scripts available in this repository are also licensed under the terms of the [MIT license](./LICENSE).

## Available Images

This list is sorted alphabetically, with ascending version numbers.

-   `bun`
    -   `1.0`
        -   `booky10/yolks:bun1.0`
        -   `booky10/yolksarm:bun1.0`
-   `go`
    -   `1.20`
        -   `booky10/yolks:go1.20`
        -   `booky10/yolksarm:go1.20`
    -   `1.21`
        -   `booky10/yolks:go1.21`
        -   `booky10/yolksarm:go1.21`
-   `go-nodejs`
    -   `1.20-18`
        -   `booky10/yolks:gonodejs1.20-18`
        -   `booky10/yolksarm:gonodejs1.20-18`
    -   `1.20-20`
        -   `booky10/yolks:gonodejs1.20-20`
        -   `booky10/yolksarm:gonodejs1.20-20`
    -   `1.21-18`
        -   `booky10/yolks:gonodejs1.21-18`
        -   `booky10/yolksarm:gonodejs1.21-18`
    -   `1.21-20`
        -   `booky10/yolks:gonodejs1.21-20`
        -   `booky10/yolksarm:gonodejs1.21-20`
-   `java`
    -   `8`
        -   `booky10/yolks:java8`
        -   `booky10/yolksarm:java8`
    -   `11`
        -   `booky10/yolks:java11`
        -   `booky10/yolksarm:java11`
    -   `16`
        -   `booky10/yolks:java16`
        -   `booky10/yolksarm:java16`
    -   `17`
        -   `booky10/yolks:java17`
        -   `booky10/yolksarm:java17`
    -   `18`
        -   `booky10/yolks:java18`
        -   `booky10/yolksarm:java18`
    -   `19`
        -   `booky10/yolks:java19`
        -   `booky10/yolksarm:java19`
    -   `20`
        -   `booky10/yolks:java20`
        -   `booky10/yolksarm:java20`
    -   `21`
        -   `booky10/yolks:java21`
        -   `booky10/yolksarm:java21`
-   `java-alpine`
    -   `8`
        -   `booky10/yolks:javaalpine8`
        -   `booky10/yolksarm:javaalpine8`
    -   `11`
        -   `booky10/yolks:javaalpine11`
        -   `booky10/yolksarm:javaalpine11`
    -   `16`
        -   `booky10/yolks:javaalpine16`
        -   `booky10/yolksarm:javaalpine16`
    -   `17`
        -   `booky10/yolks:javaalpine17`
        -   `booky10/yolksarm:javaalpine17`
    -   `18`
        -   `booky10/yolks:javaalpine18`
        -   `booky10/yolksarm:javaalpine18`
    -   `19`
        -   `booky10/yolks:javaalpine19`
        -   `booky10/yolksarm:javaalpine19`
    -   `20`
        -   `booky10/yolks:javaalpine20`
        -   `booky10/yolksarm:javaalpine20`
    -   `21`
        -   `booky10/yolks:javaalpine21`
        -   `booky10/yolksarm:javaalpine21`
-   `mariadb`
    -   `10.3`
        -   `booky10/yolks:mariadb10.3`
        -   `booky10/yolksarm:mariadb10.3`
    -   `10.4`
        -   `booky10/yolks:mariadb10.4`
        -   `booky10/yolksarm:mariadb10.4`
    -   `10.5`
        -   `booky10/yolks:mariadb10.5`
        -   `booky10/yolksarm:mariadb10.5`
    -   `10.6`
        -   `booky10/yolks:mariadb10.6`
        -   `booky10/yolksarm:mariadb10.6`
    -   `10.9`
        -   `booky10/yolks:mariadb10.9`
        -   `booky10/yolksarm:mariadb10.9`
    -   `10.10`
        -   `booky10/yolks:mariadb10.10`
        -   `booky10/yolksarm:mariadb10.10`
    -   `10.11`
        -   `booky10/yolks:mariadb10.11`
        -   `booky10/yolksarm:mariadb10.11`
    -   `11.0`
        -   `booky10/yolks:mariadb11.0`
        -   `booky10/yolksarm:mariadb11.0`
    -   `11.1`
        -   `booky10/yolks:mariadb11.1`
        -   `booky10/yolksarm:mariadb11.1`
    -   `11.2`
        -   `booky10/yolks:mariadb11.2`
        -   `booky10/yolksarm:mariadb11.2`
    -   `11.3`
        -   `booky10/yolks:mariadb11.3`
        -   `booky10/yolksarm:mariadb11.3`
-   `nodejs`
    -   `12`
        -   `booky10/yolks:nodejs12`
        -   `booky10/yolksarm:nodejs12`
    -   `14`
        -   `booky10/yolks:nodejs14`
        -   `booky10/yolksarm:nodejs14`
    -   `15`
        -   `booky10/yolks:nodejs15`
        -   `booky10/yolksarm:nodejs15`
    -   `16`
        -   `booky10/yolks:nodejs16`
        -   `booky10/yolksarm:nodejs16`
    -   `17`
        -   `booky10/yolks:nodejs17`
        -   `booky10/yolksarm:nodejs17`
    -   `18`
        -   `booky10/yolks:nodejs18`
        -   `booky10/yolksarm:nodejs18`
    -   `19`
        -   `booky10/yolks:nodejs19`
        -   `booky10/yolksarm:nodejs19`
    -   `20`
        -   `booky10/yolks:nodejs20`
        -   `booky10/yolksarm:nodejs20`
    -   `21`
        -   `booky10/yolks:nodejs21`
        -   `booky10/yolksarm:nodejs21`
-   `nodejs-gyp`
    -   `16`
        -   `booky10/yolks:nodejsgyp16`
        -   `booky10/yolksarm:nodejsgyp16`
    -   `18`
        -   `booky10/yolks:nodejsgyp18`
        -   `booky10/yolksarm:nodejsgyp18`
    -   `19`
        -   `booky10/yolks:nodejsgyp19`
        -   `booky10/yolksarm:nodejsgyp19`
    -   `20`
        -   `booky10/yolks:nodejsgyp20`
        -   `booky10/yolksarm:nodejsgyp20`
    -   `21`
        -   `booky10/yolks:nodejsgyp21`
        -   `booky10/yolksarm:nodejsgyp21`
-   `php`
    -   `8.1`
        -   `booky10/yolks:php8.1`
        -   `booky10/yolksarm:php8.1`
    -   `8.2`
        -   `booky10/yolks:php8.2`
        -   `booky10/yolksarm:php8.2`
    -   `8.3`
        -   `booky10/yolks:php8.3`
        -   `booky10/yolksarm:php8.3`
-   `php-nginx`
    -   `8.1`
        -   `booky10/yolks:phpnginx8.1`
        -   `booky10/yolksarm:phpnginx8.1`
-   `python`
    -   `3.8`
        -   `booky10/yolks:python3.8`
        -   `booky10/yolksarm:python3.8`
    -   `3.9`
        -   `booky10/yolks:python3.9`
        -   `booky10/yolksarm:python3.9`
    -   `3.10`
        -   `booky10/yolks:python3.10`
        -   `booky10/yolksarm:python3.10`
    -   `3.11`
        -   `booky10/yolks:python3.11`
        -   `booky10/yolksarm:python3.11`
    -   `3.12`
        -   `booky10/yolks:python3.12`
        -   `booky10/yolksarm:python3.12`
