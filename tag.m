% cd means present file path
% output also in this path
% change value of my_type if you want to change the file type
%-------------------------------------------------------------------------%
%-------------------------------------------------------------------------%
my_type    = '*.jpg';
%-------------------------------------------------------------------------%
fileFolder = fullfile(cd,'pretest_good');               
dirOutput  = dir(fullfile(fileFolder,my_type)); 
fileNames  = {dirOutput.name}';                 
fileNames  = char(fileNames);
[line,row] = size(fileNames);                   
NewNames   = zeros(line,row+2);                 
pre_line=line;
for i=1:line
    NewNames(i,:)=[fileNames(i,:) ' 1'];        
end
NewNames   = char(NewNames);                   
disp(NewNames);                               

save_path  = cd;                               
file_name  = 'TEST.txt';                        
target     = fullfile(save_path,file_name);
fid        = fopen(target,'w+');                
for i=1:line
    fprintf(fid,[NewNames(i,:) '\r\n']);        
end
fileFolder = fullfile(cd,'pretest_bad');                
dirOutput  = dir(fullfile(fileFolder,my_type)); 
fileNames  = {dirOutput.name}';                 
fileNames  = char(fileNames);
[line,row] = size(fileNames);                   
NewNames   = zeros(line,row+2);
for i=1:line
    NewNames(i,:)=[fileNames(i,:) ' 2'];
end
NewNames   = char(NewNames);
disp(NewNames);
for i=1:line
    fprintf(fid,[NewNames(i,:) '\r\n']);
end
fclose(fid);
