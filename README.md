# WireGuard on Cloady

سرور WireGuard روی Cloady — برای همان فضای کاری رایگان که Xray/VLESS هم رویش است.

## Deploy

1. در Cloady یک اپ جدید از همین ریپو بسازید:
   `https://github.com/aleep1990/wireguard-cloady`
   Workspace: `aleep1990` — Region: `ind1` (India) — Environment: `production`
2. پیش‌نمایش قیمت باید **$0.00** باشد. اگر کارت خواست، متوقف شوید و کارت اضافه نکنید.
3. بعد از بالا آمدن اپ، در `Settings → Environment` مقدار `SERVERURL` را
   به هاست‌نیم خود اپ (مثلاً `wireguard-xxxx-aleep1990.cloady.io`) تغییر دهید
   و Redeploy کنید — کانفیگ پیر با همان کلیدها بازسازی می‌شود.
4. فایل `/config/peer1/peer1.conf` را از Files/Terminal بخوانید و در اپ
   WireGuard گوشی وارد کنید.

## مشخصات

- ایمیج: `lscr.io/linuxserver/wireguard:1.0.20260223`
  (آخرین تگ در Docker Hub، بررسی‌شده ۱۳ نوامبر ۲۰۲۶)
- پورت: `51820/udp` — روی Cloady فقط روی IPv6 منتشر می‌شود؛
  گوشی باید IPv6 داشته باشد.
- ساب‌نت داخلی: `10.13.13.0` — همهٔ ترافیک پیر از تونل می‌گذرد (`0.0.0.0/0`).

## هشدارها

- هیچ کلید/سکرتی در این ریپو نیست؛ کلیدها موقع اجرا ساخته می‌شوند و در
  والیوم `wg-config` می‌مانند.
- اگر کانتینر به `/dev/net/tun` یا `NET_ADMIN` دسترسی نداشته باشد،
  WireGuard بالا نمی‌آید — لاگ را برای خطاهای tun/capability بررسی کنید.
  مستندات Cloady دربارهٔ `cap_add`/`sysctls` چیزی نمی‌گوید (نامشخص).
- جزئیات کامل در `DEPLOY.md` در
  `~/workspace/tool-installs/wireguard-cloady/DEPLOY.md` است.
