; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75338 () Bool)

(assert start!75338)

(declare-fun b!887030 () Bool)

(declare-fun b_free!15509 () Bool)

(declare-fun b_next!15509 () Bool)

(assert (=> b!887030 (= b_free!15509 (not b_next!15509))))

(declare-fun tp!54461 () Bool)

(declare-fun b_and!25733 () Bool)

(assert (=> b!887030 (= tp!54461 b_and!25733)))

(declare-fun mapNonEmpty!28275 () Bool)

(declare-fun mapRes!28275 () Bool)

(declare-fun tp!54462 () Bool)

(declare-fun e!493958 () Bool)

(assert (=> mapNonEmpty!28275 (= mapRes!28275 (and tp!54462 e!493958))))

(declare-fun mapKey!28275 () (_ BitVec 32))

(declare-datatypes ((V!28747 0))(
  ( (V!28748 (val!8969 Int)) )
))
(declare-datatypes ((ValueCell!8437 0))(
  ( (ValueCellFull!8437 (v!11414 V!28747)) (EmptyCell!8437) )
))
(declare-fun mapValue!28275 () ValueCell!8437)

(declare-datatypes ((array!51620 0))(
  ( (array!51621 (arr!24822 (Array (_ BitVec 32) ValueCell!8437)) (size!25263 (_ BitVec 32))) )
))
(declare-datatypes ((array!51622 0))(
  ( (array!51623 (arr!24823 (Array (_ BitVec 32) (_ BitVec 64))) (size!25264 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3890 0))(
  ( (LongMapFixedSize!3891 (defaultEntry!5133 Int) (mask!25519 (_ BitVec 32)) (extraKeys!4826 (_ BitVec 32)) (zeroValue!4930 V!28747) (minValue!4930 V!28747) (_size!2000 (_ BitVec 32)) (_keys!9804 array!51622) (_values!5117 array!51620) (_vacant!2000 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1044 0))(
  ( (Cell!1045 (v!11415 LongMapFixedSize!3890)) )
))
(declare-datatypes ((LongMap!1044 0))(
  ( (LongMap!1045 (underlying!533 Cell!1044)) )
))
(declare-fun thiss!833 () LongMap!1044)

(declare-fun mapRest!28275 () (Array (_ BitVec 32) ValueCell!8437))

(assert (=> mapNonEmpty!28275 (= (arr!24822 (_values!5117 (v!11415 (underlying!533 thiss!833)))) (store mapRest!28275 mapKey!28275 mapValue!28275))))

(declare-fun b!887028 () Bool)

(declare-fun e!493963 () Bool)

(assert (=> b!887028 (= e!493963 false)))

(declare-fun lt!401154 () Bool)

(declare-fun key!673 () (_ BitVec 64))

(declare-fun contains!4299 (LongMap!1044 (_ BitVec 64)) Bool)

(assert (=> b!887028 (= lt!401154 (contains!4299 thiss!833 key!673))))

(declare-fun lt!401153 () V!28747)

(declare-fun apply!390 (LongMapFixedSize!3890 (_ BitVec 64)) V!28747)

(assert (=> b!887028 (= lt!401153 (apply!390 (v!11415 (underlying!533 thiss!833)) key!673))))

(declare-fun b!887029 () Bool)

(declare-fun e!493960 () Bool)

(declare-fun e!493964 () Bool)

(assert (=> b!887029 (= e!493960 (and e!493964 mapRes!28275))))

(declare-fun condMapEmpty!28275 () Bool)

(declare-fun mapDefault!28275 () ValueCell!8437)

