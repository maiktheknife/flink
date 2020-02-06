# test image
V=1.9.2
docker build --build-arg slots=1 --build-arg version=$V -t maiktheknife/my_flink:$V-s1-2gb .
docker push maiktheknife/my_flink:$V-s1-2gb

docker build --build-arg slots=4 --build-arg version=$V -t maiktheknife/my_flink:$V-s4-2gb .
docker push maiktheknife/my_flink:$V-s4-2gb

docker build --build-arg slots=8 --build-arg version=$V -t maiktheknife/my_flink:$V-s8-2gb .
docker push maiktheknife/my_flink:$V-s8-2gb

# regular image
V=1.7.2-hadoop28
docker build --build-arg slots=1 --build-arg version=$V -t maiktheknife/my_flink:$V-s1-2gb .
docker push maiktheknife/my_flink:$V-s1-2gb

docker build --build-arg slots=4 --build-arg version=$V -t maiktheknife/my_flink:$V-s4-2gb .
docker push maiktheknife/my_flink:$V-s4-2gb

docker build --build-arg slots=8 --build-arg version=$V -t maiktheknife/my_flink:$V-s8-2gb .
docker push maiktheknife/my_flink:$V-s8-2gb
