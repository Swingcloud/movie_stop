# 安裝步驟

1. bundle install
```
  $ bundle install
```

2. run migration
```
  $ rails db:migrate
```

3. run seeds
```
$ rails db:seed
```

# 實作任務
1. 在首頁中印出所有電影，包括電影名稱、簡介、發行年月、語言、放映長度(title, overview, release_date, language, runtime)
  * 提示1： 首頁設定為 `movies#index`
  * 提示2： 電影名稱使用 `<h3>` 標籤，其餘使用 `<p>` 標籤，並且裝在一個 `<div>` 標籤裡
2. 使用者可以在首頁看到電影分類(genres)清單
  * 提示： 如果在首頁拿到電影分類的資料，需要在controller加上什麼呢？
3. 按下清單中的電影分類，可以看到該分類的電影
  * 提示： 應用關聯，讓電影種類可以呼叫到電影的寫法是什麼？
