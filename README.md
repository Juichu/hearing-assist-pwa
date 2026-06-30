# 個人化輔聽校正系統 PWA

這個資料夾是可在手機與電腦瀏覽器運行的 PWA 版本。

## 檔案

- `index.html`：主程式
- `manifest.webmanifest`：PWA 安裝資訊
- `sw.js`：離線快取 service worker
- `icon.svg`：App icon
- `start-desktop-server.ps1`：Windows 本機啟動 server 腳本

## 電腦執行方式

在 PowerShell 執行：

```powershell
cd "C:\Users\19001278\Documents\Orion Cowork Workspace\hearing-assist-pwa"
.\start-desktop-server.ps1
```

然後用瀏覽器開：

```text
http://localhost:8000/index.html
```

## 手機執行方式

1. 手機與電腦連到同一個 Wi-Fi。
2. 在電腦執行 `start-desktop-server.ps1`。
3. PowerShell 會顯示類似：

```text
http://192.168.x.x:8000/index.html
```

4. 手機瀏覽器開啟該網址。

## 安裝到手機桌面

### Android Chrome

開啟網址後：

```text
右上角 ⋮ → 加到主畫面 / 安裝應用程式
```

### iPhone Safari

開啟網址後：

```text
分享 → 加入主畫面
```

## 重要限制

MIC / 即時輔聽 / 語音辨識需要瀏覽器允許權限。

- `localhost` 在電腦通常可以使用 MIC。
- 手機使用 `http://區域網路IP` 時，有些瀏覽器可能會限制 MIC。
- 若手機 MIC 無法啟動，請部署到 HTTPS，例如 GitHub Pages、Netlify、Vercel 或公司內部 HTTPS Server。

## 安全提醒

即時輔聽會將 MIC 聲音輸出到耳機或喇叭，建議使用耳機，避免回授尖叫。
