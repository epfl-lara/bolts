object EfficientFill {
  def fillByValueLong(size: Int)(v: Long): Array[Long] = {
    val a = new Array[Long](size)
    var i = 0
    while (i < a.length) {
      a(i) = v
      i += 1
    }
    a
  }

  def fillByValueValueCell[V](size: Int)(v: ValueCell[V]): Array[ValueCell[V]] = {
    val a = new Array[ValueCell[V]](size)
    var i = 0
    while (i < a.length) {
      a(i) = v
      i += 1
    }
    a
  }
}
