% cd��ʹ�õ�ǰ�ļ���·�����Ѵ��ļ��������ļ��з���һ��Ϳ���
% ����ļ�Ҳ������ļ�����
% ������Ҫ�ı��������ļ�����ֱ���޸�my_type������ֵ���滻txt��
%-------------------------------------------------------------------------%
%-------------------------------------------------------------------------%
my_type    = '*.txt';
%-------------------------------------------------------------------------%
fileFolder = fullfile(cd,'good');               % ����good�ļ��������з����������ļ�
dirOutput  = dir(fullfile(fileFolder,my_type)); % ��ȡ·��
fileNames  = {dirOutput.name}';                 % ��÷��������ļ���
fileNames  = char(fileNames);
[line,row] = size(fileNames);                   %����ļ����ĸ�������󳤶�
NewNames   = zeros(line,row+2);                 %�����µ��ʼ����洢����
%pre_line=line;%��סgood���˼���
for i=1:line
    NewNames(i,:)=[fileNames(i,:) ' 1'];        %��Ӻû����
end
NewNames   = char(NewNames);                    %��Ϊ�ַ���ʽ
disp(NewNames);                                 %��ʾһ��

save_path  = cd;                                %�ļ����洢�ڴ��ļ��ļ�������
file_name  = 'TEST.txt';                        %����ļ���
target     = fullfile(save_path,file_name);
fid        = fopen(target,'w+');                %��д��ķ�ʽ
for i=1:len
    fprintf(fid,[NewNames(i,:) '\r\n']);        %����д��
end
fileFolder = fullfile(cd,'bad');                % ����bad�ļ��������з����������ļ�
dirOutput  = dir(fullfile(fileFolder,my_type)); % ��ȡ·��
fileNames  = {dirOutput.name}';                 % ��÷��������ļ���
fileNames  = char(fileNames);
[line,row] = size(fileNames);                   %����ļ����ĸ�������󳤶�
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





