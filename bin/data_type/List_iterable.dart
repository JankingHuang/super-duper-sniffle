void main(List<String> args) {
  var nums = [1, 2, 3, 4];

  for (var i = 0; i < nums.length; i++) {
    print(nums[i]);
  }

  for (var item in nums) {
    print(item);
  }

  nums.forEach((element) {
    print(element);
  });

  var newNums = [];

  for (var i = 0; i < nums.length; i++) {
    newNums.add(nums[i] * nums[i]);
  }

  print(newNums);

  //等价于上面
  var nums1 = nums.map((e) => e * e);
  print(nums1);

  //where 判断数字是否是奇数。
  bool isOdd(n) => n * 2 == 1;
  var oddNum = nums.where((element) => isOdd(element));
  print(oddNum);

  // 使用any 检查
  print(nums.any(isOdd));

  print(nums.every(isOdd));

  var pairs = [
    [1, 2],
    [3, 4]
  ];

  //对二维函数进行降维
  var flattened = pairs.expand((element) => element.toList());
  print(flattened);

  // 折叠,对列表中的每个元素做运算
  int result =
      nums.fold(2, (previousValue, element) => previousValue * element);
  print(result);
}
