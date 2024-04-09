; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16110 () Bool)

(assert start!16110)

(declare-fun b!159980 () Bool)

(declare-fun b_free!3559 () Bool)

(declare-fun b_next!3559 () Bool)

(assert (=> b!159980 (= b_free!3559 (not b_next!3559))))

(declare-fun tp!13246 () Bool)

(declare-fun b_and!9991 () Bool)

(assert (=> b!159980 (= tp!13246 b_and!9991)))

(declare-fun mapNonEmpty!5729 () Bool)

(declare-fun mapRes!5729 () Bool)

(declare-fun tp!13247 () Bool)

(declare-fun e!104659 () Bool)

(assert (=> mapNonEmpty!5729 (= mapRes!5729 (and tp!13247 e!104659))))

(declare-datatypes ((V!4129 0))(
  ( (V!4130 (val!1725 Int)) )
))
(declare-datatypes ((ValueCell!1337 0))(
  ( (ValueCellFull!1337 (v!3586 V!4129)) (EmptyCell!1337) )
))
(declare-fun mapRest!5729 () (Array (_ BitVec 32) ValueCell!1337))

(declare-fun mapKey!5729 () (_ BitVec 32))

(declare-datatypes ((array!5800 0))(
  ( (array!5801 (arr!2744 (Array (_ BitVec 32) (_ BitVec 64))) (size!3028 (_ BitVec 32))) )
))
(declare-datatypes ((array!5802 0))(
  ( (array!5803 (arr!2745 (Array (_ BitVec 32) ValueCell!1337)) (size!3029 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1582 0))(
  ( (LongMapFixedSize!1583 (defaultEntry!3233 Int) (mask!7795 (_ BitVec 32)) (extraKeys!2974 (_ BitVec 32)) (zeroValue!3076 V!4129) (minValue!3076 V!4129) (_size!840 (_ BitVec 32)) (_keys!5034 array!5800) (_values!3216 array!5802) (_vacant!840 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1582)

(declare-fun mapValue!5729 () ValueCell!1337)

(assert (=> mapNonEmpty!5729 (= (arr!2745 (_values!3216 thiss!1248)) (store mapRest!5729 mapKey!5729 mapValue!5729))))

(declare-fun b!159979 () Bool)

(declare-fun res!75699 () Bool)

(declare-fun e!104658 () Bool)

(assert (=> b!159979 (=> (not res!75699) (not e!104658))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!5800 (_ BitVec 32)) Bool)

(assert (=> b!159979 (= res!75699 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5034 thiss!1248) (mask!7795 thiss!1248)))))

(declare-fun tp_is_empty!3361 () Bool)

(declare-fun e!104660 () Bool)

(declare-fun e!104662 () Bool)

(declare-fun array_inv!1743 (array!5800) Bool)

(declare-fun array_inv!1744 (array!5802) Bool)

(assert (=> b!159980 (= e!104660 (and tp!13246 tp_is_empty!3361 (array_inv!1743 (_keys!5034 thiss!1248)) (array_inv!1744 (_values!3216 thiss!1248)) e!104662))))

(declare-fun b!159981 () Bool)

(declare-fun res!75701 () Bool)

(assert (=> b!159981 (=> (not res!75701) (not e!104658))))

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!334 0))(
  ( (MissingZero!334 (index!3504 (_ BitVec 32))) (Found!334 (index!3505 (_ BitVec 32))) (Intermediate!334 (undefined!1146 Bool) (index!3506 (_ BitVec 32)) (x!17678 (_ BitVec 32))) (Undefined!334) (MissingVacant!334 (index!3507 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!5800 (_ BitVec 32)) SeekEntryResult!334)

(assert (=> b!159981 (= res!75701 (is-Undefined!334 (seekEntryOrOpen!0 key!828 (_keys!5034 thiss!1248) (mask!7795 thiss!1248))))))

(declare-fun b!159982 () Bool)

(assert (=> b!159982 (= e!104659 tp_is_empty!3361)))

(declare-fun b!159983 () Bool)

(declare-fun res!75695 () Bool)

(assert (=> b!159983 (=> (not res!75695) (not e!104658))))

(declare-datatypes ((tuple2!2892 0))(
  ( (tuple2!2893 (_1!1456 (_ BitVec 64)) (_2!1456 V!4129)) )
))
(declare-datatypes ((List!1947 0))(
  ( (Nil!1944) (Cons!1943 (h!2556 tuple2!2892) (t!6757 List!1947)) )
))
(declare-datatypes ((ListLongMap!1901 0))(
  ( (ListLongMap!1902 (toList!966 List!1947)) )
))
(declare-fun contains!996 (ListLongMap!1901 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!626 (array!5800 array!5802 (_ BitVec 32) (_ BitVec 32) V!4129 V!4129 (_ BitVec 32) Int) ListLongMap!1901)

(assert (=> b!159983 (= res!75695 (contains!996 (getCurrentListMap!626 (_keys!5034 thiss!1248) (_values!3216 thiss!1248) (mask!7795 thiss!1248) (extraKeys!2974 thiss!1248) (zeroValue!3076 thiss!1248) (minValue!3076 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3233 thiss!1248)) key!828))))

(declare-fun b!159984 () Bool)

(declare-fun e!104663 () Bool)

(assert (=> b!159984 (= e!104662 (and e!104663 mapRes!5729))))

(declare-fun condMapEmpty!5729 () Bool)

(declare-fun mapDefault!5729 () ValueCell!1337)

