# Copyright 2020 Jack Grigg
#
# Licensed under the Apache License, Version 2.0 <LICENSE-APACHE or
# http://www.apache.org/licenses/LICENSE-2.0> or the MIT license
# <LICENSE-MIT or http://opensource.org/licenses/MIT>, at your
# option. This file may not be copied, modified, or distributed
# except according to those terms.

### Localization for strings in the rage CLI tools

-age = age
-rage = rage

## CLI flags

-flag-armor = -a/--armor
-flag-decrypt = -d/--decrypt
-flag-identity = -i/--identity
-flag-recipient = -r/--recipient
-flag-passphrase = -p/--passphrase
-flag-max-work-factor = --max-work-factor
-flag-unstable = --features unstable

## Usage

-input = INPUT
-output = OUTPUT
-identity = IDENTITY
-recipient = RECIPIENT

usage-header = Usage:

rage-usage =
    {usage-header}
      {$usage_a}
      {$usage_b}

    {$flags}

    {-input} por defecto a standard input, y {-output} por defecto standard output.

    {-recipient} puede ser:
    - Una clave pública {-age}, como es generada por {$keygen_name} ("age1...").
    - Una clave pública SSH ("ssh-ed25519 AAAA...", "ssh-rsa AAAA...").
    - Una ruta a un archivo que contenga un destinatario {-age} por
      línea (ignorando comentarios con el prefijo "#" y líneas vacías).

    {-identity} es una ruta a una archivo con una identidad {-age} por línea
    (ignorando comentarios con el prefijo "#" y líneas vacías), o a un archivo
    de claves SSH. Pueden proveerse múltiples idendidades, cualquiera que no sea
    utilizada será ignorada.

    Ejemplo:
    {"  "}{$example_a}
    {"  "}{tty-pubkey}: {$example_a_output}
    {"  "}{$example_b}
    {"  "}{$example_c}

## Keygen messages

tty-pubkey = Clave pública
identity-file-created = creada
identity-file-pubkey = clave pública

## Encryption messages

autogenerated-passphrase = Utilizando una frase contraseña autogenerada:
type-passphrase = Escriba su frase contraseña
prompt-passphrase = Frase contraseña

## General errors

err-failed-to-open-output = Fallo al abrir output: {$err}
err-failed-to-write-output = Fallo al escribir al output: {$err}
err-passphrase-timed-out = Tiempo de espera para ingresar frase contraseña agotado.

err-ux-A = Acaso {-rage} no hizo lo que esperabas? Puede que un error te sea mas útil?
err-ux-B = Contanos
# Put (len(A) - len(B) - 32) spaces here.
err-ux-C = {"                                "}

## Encryption errors

err-enc-broken-stdout = No se pudo escribir a stdout: {$err}
rec-enc-broken-stdout = Estás enviando por pipe a un programa que no está leyendo desde stdin?

err-enc-broken-file = No se pudo escribir al archivo: {$err}

err-enc-identity = {-flag-identity} no puede ser utilizado en modo encripción.
rec-enc-identity = ¿Te olvidaste de especificar {-flag-decrypt}?

err-enc-invalid-recipient = Destinatario inválido '{$recipient}'

err-enc-missing-recipients = No se encontraron destinatarios.
rec-enc-missing-recipients = ¿Te olvidaste de especificar {-flag-recipient}?

err-enc-mixed-recipient-passphrase = {-flag-recipient} no puede ser usado con {-flag-passphrase}
err-enc-passphrase-without-file = El archivo a encriptar debe ser pasado como argumento cuando se utiliza {-flag-passphrase}

## Decryption errors

rec-dec-excessive-work = Para desencriptar, intenta con {-flag-max-work-factor} {$wf}

err-dec-armor-flag = {-flag-armor} no puede ser usado con {-flag-decrypt}.
rec-dec-armor-flag = Nota que los archivos blindados son detectados automáticamente.

err-dec-identity-not-found = Archivo identidad no encontrado: {$filename}

err-dec-missing-identities = No se encontraron las identidades.
rec-dec-missing-identities = ¿Te olvidaste de especificar {-flag-identity}?

err-dec-passphrase-flag = {-flag-passphrase} no puede ser usado con {-flag-decrypt}.
rec-dec-passphrase-flag = Nota que los archivos encriptados con frases contraseñas son detectados automáticamente.

err-dec-passphrase-without-file-win =
    Este archivo requiere una frase contraseña. En Windows
    los archivos a desencriptar deben ser pasados posicionalmente
    como argumentos cuando se desencripta con una frase contraseña.

err-dec-recipient-flag = {-flag-recipient} no puede ser usado con {-flag-decrypt}.
rec-dec-recipient-flag = ¿Tenías la intención de utilizar {-flag-identity} para especificar una clave privada?

## rage-mount strings

-flag-mnt-types = -t/--types

info-decrypting = Desencriptando {$filename}
info-mounting-as-fuse = Montando como sistema de archivos FUSE

err-mnt-missing-filename = Falta el nombre de archivo.
err-mnt-missing-mountpoint = Falta el punto de montaje.
err-mnt-missing-types = Falta {-flag-mnt-types}.
err-mnt-unknown-type = Tipo de sistema de archivos desconocido "{$fs_type}"

## Unstable features

test-unstable = Para probar esto, compilar {-rage} con {-flag-unstable}.
