class MyElement {
  bool head = false;
  bool tail = false;
  MyElement nextNode = null;
  MyElement previousNode = null;

  final String text;

  MyElement(this.text) {}
}

class MyLinkedList {
  MyElement actualNode = null;

  int _length = 0;

  MyLinkedList({MyElement node}) {
    addNode(node);
  }

  addNode(MyElement node) {
    if (actualNode == null && this._length == 0) {
      node.head = true;
      node.tail = true;
      actualNode = node;
      this._length++;
    } else {
      this.actualNode.nextNode = node;
      this.actualNode.tail = false;
      node.previousNode = actualNode;
      node.tail = true;
      this.actualNode = node;
      this._length++;
    }
  }

  // printReverse() {
  //   if (actualNode == null) {
  //     print('List is empty');
  //   } else if (actualNode.head == true) {
  //     while (actualNode.tail == true) {
  //       actualNode = actualNode.nextNode;
  //     }
  //     while (actualNode != null) {
  //       print(actualNode.text);
  //       actualNode = actualNode.previousNode;
  //     }
  //   } else if (actualNode.tail == true) {
  //     while (actualNode != null) {
  //       print(actualNode.text);
  //       actualNode = actualNode.previousNode;
  //     }
  //   }
  // }

  printNodes() {
    if (actualNode == null) {
      print('List is empty');
    } else if (actualNode.head == true) {
      while (actualNode != false) {
        print(actualNode.text);
        actualNode = actualNode.nextNode;
      }
    } else if (actualNode.tail) {
      while (!actualNode.head) {
        actualNode = actualNode.previousNode;
      }
      while (actualNode != null) {
        print(actualNode.text);
        actualNode = actualNode.nextNode;
      }
    }
  }

  reverseLinkedList() {
    while (!actualNode.head) {
      if (actualNode.tail == true) {
        actualNode.tail = false;
        actualNode.head = true;
      }
      MyElement prev = actualNode.previousNode;
      actualNode.previousNode = actualNode.nextNode;
      actualNode.nextNode = prev;

      actualNode = prev;
    }

    if (actualNode.head) {
      actualNode.head = false;
      actualNode.tail = true;
      MyElement prev = actualNode.previousNode;
      actualNode.previousNode = actualNode.nextNode;
      actualNode.nextNode = prev;
    }
  }
}

main(List<String> args) {
  MyLinkedList list = MyLinkedList(node: MyElement('0'));

  list.addNode(MyElement('1'));
  list.addNode(MyElement('2'));
  list.addNode(MyElement('3'));
  list.addNode(MyElement('4'));
  list.addNode(MyElement('5'));
  list.addNode(MyElement('6'));

  list.reverseLinkedList();
  list.reverseLinkedList();
  list.printNodes();
  // list.printReverse();
}
