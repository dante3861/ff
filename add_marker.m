% cd是使用当前文件夹路径，把此文件和两个文件夹放在一起就可以
% 输出文件也在这个文件夹内
% 此外想要改变搜索的文件类型直接修改my_type变量的值（替换txt）
%-------------------------------------------------------------------------%
%-------------------------------------------------------------------------%
my_type    = '*.txt';
%-------------------------------------------------------------------------%
fileFolder = fullfile(cd,'good');               % 遍历good文件夹下所有符合条件的文件
dirOutput  = dir(fullfile(fileFolder,my_type)); % 提取路径
fileNames  = {dirOutput.name}';                 % 获得符合条件文件名
fileNames  = char(fileNames);
[line,row] = size(fileNames);                   %获得文件名的个数和最大长度
NewNames   = zeros(line,row+2);                 %建立新的问件名存储矩阵
%pre_line=line;%记住good用了几行
for i=1:line
    NewNames(i,:)=[fileNames(i,:) ' 1'];        %添加好坏标记
end
NewNames   = char(NewNames);                    %变为字符形式
disp(NewNames);                                 %显示一下

save_path  = cd;                                %文件件存储在此文件文件夹下面
file_name  = 'TEST.txt';                        %输出文件名
target     = fullfile(save_path,file_name);
fid        = fopen(target,'w+');                %以写入的方式
for i=1:len
    fprintf(fid,[NewNames(i,:) '\r\n']);        %逐行写入
end
fileFolder = fullfile(cd,'bad');                % 遍历bad文件夹下所有符合条件的文件
dirOutput  = dir(fullfile(fileFolder,my_type)); % 提取路径
fileNames  = {dirOutput.name}';                 % 获得符合条件文件名
fileNames  = char(fileNames);
[line,row] = size(fileNames);                   %获得文件名的个数和最大长度
NewNames   = zeros(line,row+2);
for i=1:len
    NewNames(i,:)=[fileNames(i,:) ' 2'];
end
NewNames   = char(NewNames);
disp(NewNames);
for i=1:len
    fprintf(fid,[NewNames(i,:) '\r\n']);
end
fclose(fid);





