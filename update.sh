# 移动、修改该文件（假如存在的话）、先删除backup (如果有）
rm ~/Library/Developer/Xcode/Templates.backup
mv ~/Library/Developer/Xcode/Templates ~/Library/Developer/Xcode/Templates.backup

# 先移除原来的文件
#rm ~/Library/Developer/Xcode/UserData/CodeSnippets

#pwd 代表当前路径
#ln 命令是链接两个文件 如：ln -s file1 file2 (即将这两个文件保持一致性)
SRC_HOME=`pwd`
ln -s ${SRC_HOME}/Templates ~/Library/Developer/Xcode/Templates
echo "done"
