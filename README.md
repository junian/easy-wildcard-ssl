## Installation

### Get Docker

Right now I'm using Docker because so far as my knowledge, it's portable on almost every system.
Here is the doc on how to install Docker on your system [https://docs.docker.com/install/](https://docs.docker.com/install/).

### Clone this Repository

```bash
git clone https://github.com/junian/easy-wildcard-ssl.git
```

### Set Cloudflare DNS

Because right now I'm using Cloudflare to manage all of my DNS, and since we're using DNS-01 challenge, this is needed.
Go to your Cloudflare dashboard, and get Global API Key: [https://dash.cloudflare.com/profile](https://dash.cloudflare.com/profile).

Create `.cloudflare.ini` file by copying `.cloudlfare.ini.example`:

```bash
cd easy-wildcard-ssl
cp .cloudflare.ini.example .cloudflare.ini
```

Change the content based on your Cloudflare credentials:

```ini
# Cloudflare API credentials used by Certbot
dns_cloudflare_email = cloudflare@example.com
dns_cloudflare_api_key = 0123456789abcdef0123456789abcdef01234567
```

### Create Wildcard SSL certificate

To generate wildcard ssl certificate, just do this:

```bash
./certbot-wildcard.sh example.com
```

### Renew

To renew certificate, just do this:

```bash
./certbot-renew.sh
```

## Credits

Thanks to EFF for providing `certbot` client. Support them by giving [donation](https://supporters.eff.org/donate/support-work-on-certbot).

Also thank you very much for `Let's Encrypt` for providing free SSL. Support them by giving [donation](https://letsencrypt.org/donate/).

## License

Do whatever you want, it's on [Public Domain](/LICENSE).
