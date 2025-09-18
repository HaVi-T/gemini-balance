# 使用官方的 gemini-balance 映像作為基礎
FROM ghcr.io/snailyp/gemini-balance:latest

# 複製啟動腳本到容器中
COPY start.sh /app/start.sh

# 給啟動腳本執行權限
RUN chmod +x /app/start.sh

# 設定工作目錄
WORKDIR /app

# 使用動態 PORT（預設 8000，但可透過環境變數覆蓋）
EXPOSE 8000

# 使用啟動腳本來運行應用程式
CMD ["/app/start.sh"]
