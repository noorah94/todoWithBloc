abstract class TaskEvents {}

class Add extends TaskEvents {
  String name;
  Add(this.name);
}

class IsFinish extends TaskEvents {
  int index;
  IsFinish(this.index);
}
