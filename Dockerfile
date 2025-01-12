# Python 3.12イメージをベースにする
FROM python:3.12.5-bullseye

# 作業ディレクトリを設定
WORKDIR /code

# 依存関係ファイルをコピー
COPY ./requirements.txt /code/requirements.txt

# 依存関係をインストール
RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt

# デフォルトの実行コマンド
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000", "--reload"]