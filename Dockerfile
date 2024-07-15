# ベースイメージとしてPythonを使用
FROM python:3

# 作業ディレクトリを設定
WORKDIR /app

# 環境変数を設定
# pycファイル(および__pycache__)の生成を行わないようにする
ENV PYTHONDONTWRITEBYTECODE 1
# 標準出力・標準エラーのストリームのバッファリングを行わない
ENV PYTHONUNBUFFERED 1

# 必要なPythonライブラリをインストール
COPY requirements.txt requirements
RUN pip install --upgrade pip && pip install --no-cache-dir -r requirements