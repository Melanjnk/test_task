<?php
include '/var/www/html/public/task3/FileSeekableIterator.php';

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