## 碰到的一个ActiveRecord的问题，求高手解决

---
### 问题执行
```>> ./run.sh ```

----
### 问题描述
``` app.rb ```

当存在一对多关系模型, ``` User 1 -> * Book ```,
在修改某user的books中的某个book的字段时,
当修改前```each```遍历该对象的books属性,
修改虽然成功更新对数据库的操作,
ActiveRecord模型却不能立即更新
