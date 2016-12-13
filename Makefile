DOCUMENT = document
wordcount:
	@perl texcount.pl $(DOCUMENT).tex -inc          | awk '/total/ {getline; print "词数    :",$$4}' 
	@perl texcount.pl $(DOCUMENT).tex -inc -char    | awk '/total/ {getline; print "字符数  :",$$4}' 
	@perl texcount.pl $(DOCUMENT).tex -inc -ch-only | awk '/total/ {getline; print "中文字数:",$$4}' 
