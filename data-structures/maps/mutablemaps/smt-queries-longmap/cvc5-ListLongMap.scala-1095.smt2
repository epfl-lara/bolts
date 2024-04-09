; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!22492 () Bool)

(assert start!22492)

(declare-fun b!235006 () Bool)

(declare-fun b_free!6319 () Bool)

(declare-fun b_next!6319 () Bool)

(assert (=> b!235006 (= b_free!6319 (not b_next!6319))))

(declare-fun tp!22120 () Bool)

(declare-fun b_and!13263 () Bool)

(assert (=> b!235006 (= tp!22120 b_and!13263)))

(declare-fun b!235002 () Bool)

(declare-fun res!115256 () Bool)

(declare-fun e!152638 () Bool)

(assert (=> b!235002 (=> (not res!115256) (not e!152638))))

(declare-datatypes ((V!7889 0))(
  ( (V!7890 (val!3135 Int)) )
))
(declare-datatypes ((ValueCell!2747 0))(
  ( (ValueCellFull!2747 (v!5157 V!7889)) (EmptyCell!2747) )
))
(declare-datatypes ((array!11616 0))(
  ( (array!11617 (arr!5521 (Array (_ BitVec 32) ValueCell!2747)) (size!5858 (_ BitVec 32))) )
))
(declare-datatypes ((array!11618 0))(
  ( (array!11619 (arr!5522 (Array (_ BitVec 32) (_ BitVec 64))) (size!5859 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3394 0))(
  ( (LongMapFixedSize!3395 (defaultEntry!4366 Int) (mask!10328 (_ BitVec 32)) (extraKeys!4103 (_ BitVec 32)) (zeroValue!4207 V!7889) (minValue!4207 V!7889) (_size!1746 (_ BitVec 32)) (_keys!6438 array!11618) (_values!4349 array!11616) (_vacant!1746 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3394)

(assert (=> b!235002 (= res!115256 (and (= (size!5858 (_values!4349 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!10328 thiss!1504))) (= (size!5859 (_keys!6438 thiss!1504)) (size!5858 (_values!4349 thiss!1504))) (bvsge (mask!10328 thiss!1504) #b00000000000000000000000000000000) (bvsge (extraKeys!4103 thiss!1504) #b00000000000000000000000000000000) (bvsle (extraKeys!4103 thiss!1504) #b00000000000000000000000000000011)))))

(declare-fun b!235003 () Bool)

(declare-fun e!152635 () Bool)

(declare-fun tp_is_empty!6181 () Bool)

(assert (=> b!235003 (= e!152635 tp_is_empty!6181)))

(declare-fun mapNonEmpty!10463 () Bool)

(declare-fun mapRes!10463 () Bool)

(declare-fun tp!22121 () Bool)

(assert (=> mapNonEmpty!10463 (= mapRes!10463 (and tp!22121 e!152635))))

(declare-fun mapKey!10463 () (_ BitVec 32))

(declare-fun mapValue!10463 () ValueCell!2747)

(declare-fun mapRest!10463 () (Array (_ BitVec 32) ValueCell!2747))

(assert (=> mapNonEmpty!10463 (= (arr!5521 (_values!4349 thiss!1504)) (store mapRest!10463 mapKey!10463 mapValue!10463))))

(declare-fun b!235005 () Bool)

(declare-fun e!152639 () Bool)

(assert (=> b!235005 (= e!152639 e!152638)))

(declare-fun res!115254 () Bool)

(assert (=> b!235005 (=> (not res!115254) (not e!152638))))

(declare-datatypes ((SeekEntryResult!993 0))(
  ( (MissingZero!993 (index!6142 (_ BitVec 32))) (Found!993 (index!6143 (_ BitVec 32))) (Intermediate!993 (undefined!1805 Bool) (index!6144 (_ BitVec 32)) (x!23761 (_ BitVec 32))) (Undefined!993) (MissingVacant!993 (index!6145 (_ BitVec 32))) )
))
(declare-fun lt!118946 () SeekEntryResult!993)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!235005 (= res!115254 (or (= lt!118946 (MissingZero!993 index!297)) (= lt!118946 (MissingVacant!993 index!297))))))

(declare-fun key!932 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11618 (_ BitVec 32)) SeekEntryResult!993)

(assert (=> b!235005 (= lt!118946 (seekEntryOrOpen!0 key!932 (_keys!6438 thiss!1504) (mask!10328 thiss!1504)))))

(declare-fun e!152640 () Bool)

(declare-fun e!152634 () Bool)

(declare-fun array_inv!3629 (array!11618) Bool)

(declare-fun array_inv!3630 (array!11616) Bool)

(assert (=> b!235006 (= e!152634 (and tp!22120 tp_is_empty!6181 (array_inv!3629 (_keys!6438 thiss!1504)) (array_inv!3630 (_values!4349 thiss!1504)) e!152640))))

(declare-fun mapIsEmpty!10463 () Bool)

(assert (=> mapIsEmpty!10463 mapRes!10463))

(declare-fun b!235004 () Bool)

(declare-fun res!115252 () Bool)

(assert (=> b!235004 (=> (not res!115252) (not e!152639))))

(assert (=> b!235004 (= res!115252 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!115257 () Bool)

(assert (=> start!22492 (=> (not res!115257) (not e!152639))))

(declare-fun valid!1331 (LongMapFixedSize!3394) Bool)

(assert (=> start!22492 (= res!115257 (valid!1331 thiss!1504))))

(assert (=> start!22492 e!152639))

(assert (=> start!22492 e!152634))

(assert (=> start!22492 true))

(declare-fun b!235007 () Bool)

(declare-fun res!115253 () Bool)

(assert (=> b!235007 (=> (not res!115253) (not e!152638))))

(declare-datatypes ((tuple2!4616 0))(
  ( (tuple2!4617 (_1!2318 (_ BitVec 64)) (_2!2318 V!7889)) )
))
(declare-datatypes ((List!3549 0))(
  ( (Nil!3546) (Cons!3545 (h!4197 tuple2!4616) (t!8528 List!3549)) )
))
(declare-datatypes ((ListLongMap!3543 0))(
  ( (ListLongMap!3544 (toList!1787 List!3549)) )
))
(declare-fun contains!1657 (ListLongMap!3543 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1310 (array!11618 array!11616 (_ BitVec 32) (_ BitVec 32) V!7889 V!7889 (_ BitVec 32) Int) ListLongMap!3543)

(assert (=> b!235007 (= res!115253 (contains!1657 (getCurrentListMap!1310 (_keys!6438 thiss!1504) (_values!4349 thiss!1504) (mask!10328 thiss!1504) (extraKeys!4103 thiss!1504) (zeroValue!4207 thiss!1504) (minValue!4207 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4366 thiss!1504)) key!932))))

(declare-fun b!235008 () Bool)

(declare-fun e!152636 () Bool)

(assert (=> b!235008 (= e!152636 tp_is_empty!6181)))

(declare-fun b!235009 () Bool)

(assert (=> b!235009 (= e!152640 (and e!152636 mapRes!10463))))

(declare-fun condMapEmpty!10463 () Bool)

(declare-fun mapDefault!10463 () ValueCell!2747)

