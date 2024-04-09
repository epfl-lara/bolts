; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!22208 () Bool)

(assert start!22208)

(declare-fun b!232532 () Bool)

(declare-fun b_free!6263 () Bool)

(declare-fun b_next!6263 () Bool)

(assert (=> b!232532 (= b_free!6263 (not b_next!6263))))

(declare-fun tp!21930 () Bool)

(declare-fun b_and!13179 () Bool)

(assert (=> b!232532 (= tp!21930 b_and!13179)))

(declare-fun b!232516 () Bool)

(declare-fun res!114182 () Bool)

(declare-fun e!151019 () Bool)

(assert (=> b!232516 (=> (not res!114182) (not e!151019))))

(declare-fun key!932 () (_ BitVec 64))

(assert (=> b!232516 (= res!114182 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapNonEmpty!10357 () Bool)

(declare-fun mapRes!10357 () Bool)

(declare-fun tp!21931 () Bool)

(declare-fun e!151014 () Bool)

(assert (=> mapNonEmpty!10357 (= mapRes!10357 (and tp!21931 e!151014))))

(declare-datatypes ((V!7813 0))(
  ( (V!7814 (val!3107 Int)) )
))
(declare-datatypes ((ValueCell!2719 0))(
  ( (ValueCellFull!2719 (v!5123 V!7813)) (EmptyCell!2719) )
))
(declare-fun mapValue!10357 () ValueCell!2719)

(declare-datatypes ((array!11492 0))(
  ( (array!11493 (arr!5465 (Array (_ BitVec 32) ValueCell!2719)) (size!5798 (_ BitVec 32))) )
))
(declare-datatypes ((array!11494 0))(
  ( (array!11495 (arr!5466 (Array (_ BitVec 32) (_ BitVec 64))) (size!5799 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3338 0))(
  ( (LongMapFixedSize!3339 (defaultEntry!4328 Int) (mask!10242 (_ BitVec 32)) (extraKeys!4065 (_ BitVec 32)) (zeroValue!4169 V!7813) (minValue!4169 V!7813) (_size!1718 (_ BitVec 32)) (_keys!6382 array!11494) (_values!4311 array!11492) (_vacant!1718 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3338)

(declare-fun mapKey!10357 () (_ BitVec 32))

(declare-fun mapRest!10357 () (Array (_ BitVec 32) ValueCell!2719))

(assert (=> mapNonEmpty!10357 (= (arr!5465 (_values!4311 thiss!1504)) (store mapRest!10357 mapKey!10357 mapValue!10357))))

(declare-fun b!232517 () Bool)

(declare-fun e!151011 () Bool)

(assert (=> b!232517 (= e!151019 e!151011)))

(declare-fun res!114183 () Bool)

(assert (=> b!232517 (=> (not res!114183) (not e!151011))))

(declare-datatypes ((SeekEntryResult!976 0))(
  ( (MissingZero!976 (index!6074 (_ BitVec 32))) (Found!976 (index!6075 (_ BitVec 32))) (Intermediate!976 (undefined!1788 Bool) (index!6076 (_ BitVec 32)) (x!23572 (_ BitVec 32))) (Undefined!976) (MissingVacant!976 (index!6077 (_ BitVec 32))) )
))
(declare-fun lt!117525 () SeekEntryResult!976)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!232517 (= res!114183 (or (= lt!117525 (MissingZero!976 index!297)) (= lt!117525 (MissingVacant!976 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11494 (_ BitVec 32)) SeekEntryResult!976)

(assert (=> b!232517 (= lt!117525 (seekEntryOrOpen!0 key!932 (_keys!6382 thiss!1504) (mask!10242 thiss!1504)))))

(declare-fun b!232519 () Bool)

(declare-fun tp_is_empty!6125 () Bool)

(assert (=> b!232519 (= e!151014 tp_is_empty!6125)))

(declare-fun bm!21618 () Bool)

(declare-fun c!38654 () Bool)

(declare-fun call!21621 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!21618 (= call!21621 (inRange!0 (ite c!38654 (index!6074 lt!117525) (index!6077 lt!117525)) (mask!10242 thiss!1504)))))

(declare-fun b!232520 () Bool)

(declare-fun e!151015 () Bool)

(declare-fun e!151010 () Bool)

(assert (=> b!232520 (= e!151015 (and e!151010 mapRes!10357))))

(declare-fun condMapEmpty!10357 () Bool)

(declare-fun mapDefault!10357 () ValueCell!2719)

