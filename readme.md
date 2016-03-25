# AdmCode Starter Template

Create [PHP](http://php.net/) projects based on [ADMCode's](http://admcode.com.br/) template.

## Installation

### Pre-requisites

You need the following installed in your environment before we begin:

- [PHP](http://php.net/) >= 5.5.9
- The following extensions enabled in php.ini:
	- OpenSSL PHP Extension
	- PDO PHP Extension
	- Mbstring PHP Extension
- [Composer](https://getcomposer.org/)

### Clone this repository

```bash
$ git clone https://github.com/admcode/admcode-starter.git
$ cd admcode-starter
```

### Configure your environment file

Run the `create-app-env.sh` script and follow the instructions to create a `.env` file to your project.
```bash
$ sh create-app-env.sh
```
If somehow you managed to screw up the `.env` file, just run the script again to make a new one.

### PHP dependencies

Install PHP dependencies through composer by running:

```bash
$ composer install
```

## Usage

### Important

Your project must be served from the public folder in the server root.

```
// These will work
www.fakedomain.com/public/
localhost/public/

// These won't
www.fakedomain.com/admcode-starter/public/
localhost/admcode-starter/public/
```

### Change your project encryption key

To change your project encryption key, run the `create-app-key.sh` and replace your previous project encryption key in the `.env` file with the key generated.

```bash
$ sh create-app-key.sh
```

## Contributing

- [Fork it](fork)
- Create your feature branch
```bash
$ git checkout -b my-new-feature
```
- Commit your changes
```bash
$ git commit -am 'Add some feature'
```
- Push to the branch
```bash
$ git push origin my-new-feature
```
- Create a new Pull Request

## License

[MIT](LICENSE) © ADMCODE, unless stated otherwise.