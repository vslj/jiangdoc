#!/usr/bin/env sh

# 构建
echo "开始构建..."
npm run build

# 进入构建目录
cd dist

# 初始化 git
git init
git add -A
git commit -m 'deploy'

# 推送到 gitee pages 分支
git push -f https://gitee.com/jiangshunliang/jiangdoc.git master:gh-pages

cd -

echo "部署完成！"