###############################
# Quotables MongoDB with data #
###############################
FROM mongo:5.0.6
COPY quotable.db/ /data/quotable.db/
COPY mongo.sh /mongo.sh
RUN chmod 777 /mongo.sh
CMD /mongo.sh
