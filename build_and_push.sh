
docker build --build-arg slots=1 -t maiktheknife/my_flink:0.3-s1-2gb .
docker push maiktheknife/my_flink:0.3-s1-2gb

#docker build --build-arg slots=1 -t maiktheknife/my_flink:0.2-s1-2gb .
#docker push maiktheknife/my_flink:0.2-s1-2gb
#
#docker build --build-arg slots=4 -t maiktheknife/my_flink:0.2-s4-2gb .
#docker push maiktheknife/my_flink:0.2-s4-2gb
#
#docker build --build-arg slots=8 -t maiktheknife/my_flink:0.2-s8-2gb .
#docker push maiktheknife/my_flink:0.2-s8-2gb

read -p "Press [Enter]"