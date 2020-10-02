<?php
include '/var/www/html/public/task3/FileSeekableIterator.php';

# Fatal error: Allowed memory size of 134217728 bytes exhausted (tried to allocate 98569983 bytes) in /var/www/html/public/task3/File.php on line 28
//$filePath = __DIR__ . '/task3/File.txt';

$filePath = __DIR__ . '/task3/source_file.txt';
echo 'FilePath: '.$filePath . '<br>';

$fileSeekableIterator = new FileSeekableIterator($filePath);
$fileSeekableIterator->rewind();
$fileSeekableIterator->next();
$fileSeekableIterator->next();
$fileSeekableIterator->seek(1);
$fileSeekableIterator->next();
echo $fileSeekableIterator->current();

?>