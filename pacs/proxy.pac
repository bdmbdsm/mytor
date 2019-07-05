function FindProxyForURL(url, host) {
 if (
    dnsDomainIs(host, "yandex.com") ||
    dnsDomainIs(host, "yandex.ru") ||
    dnsDomainIs(host, "yandex.net") ||
    dnsDomainIs(host, "yandex.ua") ||
    dnsDomainIs(host, "vk.com") ||
    dnsDomainIs(host, "userapi.com") ||
    dnsDomainIs(host, "yastatic.net")
) {
   return "SOCKS5 localhost:9050";
 } else {
   return "DIRECT";
 }
}
