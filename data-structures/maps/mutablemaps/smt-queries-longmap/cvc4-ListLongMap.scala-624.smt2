; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16108 () Bool)

(assert start!16108)

(declare-fun b!159951 () Bool)

(declare-fun b_free!3557 () Bool)

(declare-fun b_next!3557 () Bool)

(assert (=> b!159951 (= b_free!3557 (not b_next!3557))))

(declare-fun tp!13241 () Bool)

(declare-fun b_and!9989 () Bool)

(assert (=> b!159951 (= tp!13241 b_and!9989)))

(declare-fun mapNonEmpty!5726 () Bool)

(declare-fun mapRes!5726 () Bool)

(declare-fun tp!13240 () Bool)

(declare-fun e!104641 () Bool)

(assert (=> mapNonEmpty!5726 (= mapRes!5726 (and tp!13240 e!104641))))

(declare-datatypes ((V!4125 0))(
  ( (V!4126 (val!1724 Int)) )
))
(declare-datatypes ((ValueCell!1336 0))(
  ( (ValueCellFull!1336 (v!3585 V!4125)) (EmptyCell!1336) )
))
(declare-fun mapRest!5726 () (Array (_ BitVec 32) ValueCell!1336))

(declare-fun mapValue!5726 () ValueCell!1336)

(declare-fun mapKey!5726 () (_ BitVec 32))

(declare-datatypes ((array!5796 0))(
  ( (array!5797 (arr!2742 (Array (_ BitVec 32) (_ BitVec 64))) (size!3026 (_ BitVec 32))) )
))
(declare-datatypes ((array!5798 0))(
  ( (array!5799 (arr!2743 (Array (_ BitVec 32) ValueCell!1336)) (size!3027 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1580 0))(
  ( (LongMapFixedSize!1581 (defaultEntry!3232 Int) (mask!7792 (_ BitVec 32)) (extraKeys!2973 (_ BitVec 32)) (zeroValue!3075 V!4125) (minValue!3075 V!4125) (_size!839 (_ BitVec 32)) (_keys!5033 array!5796) (_values!3215 array!5798) (_vacant!839 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1580)

(assert (=> mapNonEmpty!5726 (= (arr!2743 (_values!3215 thiss!1248)) (store mapRest!5726 mapKey!5726 mapValue!5726))))

(declare-fun b!159946 () Bool)

(declare-fun res!75676 () Bool)

(declare-fun e!104645 () Bool)

(assert (=> b!159946 (=> (not res!75676) (not e!104645))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!159946 (= res!75676 (validMask!0 (mask!7792 thiss!1248)))))

(declare-fun b!159947 () Bool)

(declare-fun tp_is_empty!3359 () Bool)

(assert (=> b!159947 (= e!104641 tp_is_empty!3359)))

(declare-fun b!159948 () Bool)

(declare-fun e!104640 () Bool)

(assert (=> b!159948 (= e!104640 tp_is_empty!3359)))

(declare-fun b!159949 () Bool)

(declare-fun res!75675 () Bool)

(assert (=> b!159949 (=> (not res!75675) (not e!104645))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!159949 (= res!75675 (not (= key!828 (bvneg key!828))))))

(declare-fun res!75680 () Bool)

(assert (=> start!16108 (=> (not res!75680) (not e!104645))))

(declare-fun valid!731 (LongMapFixedSize!1580) Bool)

(assert (=> start!16108 (= res!75680 (valid!731 thiss!1248))))

(assert (=> start!16108 e!104645))

(declare-fun e!104643 () Bool)

(assert (=> start!16108 e!104643))

(assert (=> start!16108 true))

(declare-fun b!159950 () Bool)

(declare-fun res!75674 () Bool)

(assert (=> b!159950 (=> (not res!75674) (not e!104645))))

(declare-datatypes ((tuple2!2890 0))(
  ( (tuple2!2891 (_1!1455 (_ BitVec 64)) (_2!1455 V!4125)) )
))
(declare-datatypes ((List!1945 0))(
  ( (Nil!1942) (Cons!1941 (h!2554 tuple2!2890) (t!6755 List!1945)) )
))
(declare-datatypes ((ListLongMap!1899 0))(
  ( (ListLongMap!1900 (toList!965 List!1945)) )
))
(declare-fun contains!995 (ListLongMap!1899 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!625 (array!5796 array!5798 (_ BitVec 32) (_ BitVec 32) V!4125 V!4125 (_ BitVec 32) Int) ListLongMap!1899)

(assert (=> b!159950 (= res!75674 (contains!995 (getCurrentListMap!625 (_keys!5033 thiss!1248) (_values!3215 thiss!1248) (mask!7792 thiss!1248) (extraKeys!2973 thiss!1248) (zeroValue!3075 thiss!1248) (minValue!3075 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3232 thiss!1248)) key!828))))

(declare-fun e!104644 () Bool)

(declare-fun array_inv!1741 (array!5796) Bool)

(declare-fun array_inv!1742 (array!5798) Bool)

(assert (=> b!159951 (= e!104643 (and tp!13241 tp_is_empty!3359 (array_inv!1741 (_keys!5033 thiss!1248)) (array_inv!1742 (_values!3215 thiss!1248)) e!104644))))

(declare-fun b!159952 () Bool)

(declare-fun res!75679 () Bool)

(assert (=> b!159952 (=> (not res!75679) (not e!104645))))

(assert (=> b!159952 (= res!75679 (and (= (size!3027 (_values!3215 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!7792 thiss!1248))) (= (size!3026 (_keys!5033 thiss!1248)) (size!3027 (_values!3215 thiss!1248))) (bvsge (mask!7792 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!2973 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!2973 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun b!159953 () Bool)

(declare-fun res!75677 () Bool)

(assert (=> b!159953 (=> (not res!75677) (not e!104645))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!5796 (_ BitVec 32)) Bool)

(assert (=> b!159953 (= res!75677 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5033 thiss!1248) (mask!7792 thiss!1248)))))

(declare-fun b!159954 () Bool)

(assert (=> b!159954 (= e!104645 false)))

(declare-fun lt!82070 () Bool)

(declare-datatypes ((List!1946 0))(
  ( (Nil!1943) (Cons!1942 (h!2555 (_ BitVec 64)) (t!6756 List!1946)) )
))
(declare-fun arrayNoDuplicates!0 (array!5796 (_ BitVec 32) List!1946) Bool)

(assert (=> b!159954 (= lt!82070 (arrayNoDuplicates!0 (_keys!5033 thiss!1248) #b00000000000000000000000000000000 Nil!1943))))

(declare-fun mapIsEmpty!5726 () Bool)

(assert (=> mapIsEmpty!5726 mapRes!5726))

(declare-fun b!159955 () Bool)

(declare-fun res!75678 () Bool)

(assert (=> b!159955 (=> (not res!75678) (not e!104645))))

(declare-datatypes ((SeekEntryResult!333 0))(
  ( (MissingZero!333 (index!3500 (_ BitVec 32))) (Found!333 (index!3501 (_ BitVec 32))) (Intermediate!333 (undefined!1145 Bool) (index!3502 (_ BitVec 32)) (x!17669 (_ BitVec 32))) (Undefined!333) (MissingVacant!333 (index!3503 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!5796 (_ BitVec 32)) SeekEntryResult!333)

(assert (=> b!159955 (= res!75678 (is-Undefined!333 (seekEntryOrOpen!0 key!828 (_keys!5033 thiss!1248) (mask!7792 thiss!1248))))))

(declare-fun b!159956 () Bool)

(assert (=> b!159956 (= e!104644 (and e!104640 mapRes!5726))))

(declare-fun condMapEmpty!5726 () Bool)

(declare-fun mapDefault!5726 () ValueCell!1336)

