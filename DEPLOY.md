# 外網部署指南：個人化輔聽校正系統

這個資料夾已經整理成可以部署到外網 HTTPS 的靜態網站 / PWA。

## 最推薦：Netlify 拖拉部署

這是最簡單的方法，不需要 Git 指令。

1. 打開 https://app.netlify.com/drop
2. 登入或註冊 Netlify。
3. 把整個資料夾拖進去：

```text
hearing-assist-pwa
```

或上傳壓縮檔：

```text
hearing-assist-external-package.zip
```

4. Netlify 會自動給你一個 HTTPS 網址，例如：

```text
https://your-site-name.netlify.app
```

5. 手機和電腦直接打開這個網址即可使用。

---

## GitHub Pages 部署

1. 在 GitHub 建立新的 repository，例如：

```text
hearing-assist-pwa
```

2. 上傳資料夾內所有檔案。
3. 到 repository 的：

```text
Settings → Pages
```

4. 設定：

```text
Source: Deploy from a branch
Branch: main
Folder: /root
```

5. 等待 1～3 分鐘，取得網址：

```text
https://你的帳號.github.io/hearing-assist-pwa/
```

---

## Vercel 部署

1. 打開 https://vercel.com/new
2. 匯入 GitHub repository，或使用 Vercel CLI。
3. Framework Preset 選：

```text
Other
```

4. Build Command 留空。
5. Output Directory 使用：

```text
.
```

6. 部署完成後會取得 HTTPS 網址。

---

## 需要上傳的檔案

請上傳整個 `hearing-assist-pwa` 資料夾內的所有檔案：

```text
index.html
manifest.webmanifest
sw.js
icon.svg
README.md
DEPLOY.md
netlify.toml
vercel.json
.nojekyll
start-desktop-server.ps1
```

其中 `start-desktop-server.ps1` 只給本機測試用，外網部署不是必要，但保留沒關係。

---

## 手機安裝方式

### Android Chrome

開啟 HTTPS 網址後：

```text
右上角 ⋮ → 加到主畫面 / 安裝應用程式
```

### iPhone Safari

開啟 HTTPS 網址後：

```text
分享 → 加入主畫面
```

---

## MIC / 即時輔聽注意事項

外網必須是 HTTPS 才比較能正常使用：

- MIC 權限
- 即時輔聽
- 語音辨識
- PWA 安裝

Netlify / Vercel / GitHub Pages 都會自動提供 HTTPS。

即時輔聽請務必使用耳機，避免手機或電腦喇叭造成回授尖叫。
