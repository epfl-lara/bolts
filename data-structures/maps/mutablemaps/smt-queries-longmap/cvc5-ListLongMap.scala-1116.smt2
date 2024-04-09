; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!22954 () Bool)

(assert start!22954)

(declare-fun b!239689 () Bool)

(declare-fun b_free!6445 () Bool)

(declare-fun b_next!6445 () Bool)

(assert (=> b!239689 (= b_free!6445 (not b_next!6445))))

(declare-fun tp!22539 () Bool)

(declare-fun b_and!13429 () Bool)

(assert (=> b!239689 (= tp!22539 b_and!13429)))

(declare-fun b!239678 () Bool)

(declare-fun res!117485 () Bool)

(declare-fun e!155625 () Bool)

(assert (=> b!239678 (=> (not res!117485) (not e!155625))))

(declare-datatypes ((V!8057 0))(
  ( (V!8058 (val!3198 Int)) )
))
(declare-datatypes ((ValueCell!2810 0))(
  ( (ValueCellFull!2810 (v!5232 V!8057)) (EmptyCell!2810) )
))
(declare-datatypes ((array!11892 0))(
  ( (array!11893 (arr!5647 (Array (_ BitVec 32) ValueCell!2810)) (size!5988 (_ BitVec 32))) )
))
(declare-datatypes ((array!11894 0))(
  ( (array!11895 (arr!5648 (Array (_ BitVec 32) (_ BitVec 64))) (size!5989 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3520 0))(
  ( (LongMapFixedSize!3521 (defaultEntry!4445 Int) (mask!10495 (_ BitVec 32)) (extraKeys!4182 (_ BitVec 32)) (zeroValue!4286 V!8057) (minValue!4286 V!8057) (_size!1809 (_ BitVec 32)) (_keys!6547 array!11894) (_values!4428 array!11892) (_vacant!1809 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3520)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!239678 (= res!117485 (validMask!0 (mask!10495 thiss!1504)))))

(declare-fun bm!22290 () Bool)

(declare-fun call!22293 () Bool)

(declare-datatypes ((SeekEntryResult!1046 0))(
  ( (MissingZero!1046 (index!6354 (_ BitVec 32))) (Found!1046 (index!6355 (_ BitVec 32))) (Intermediate!1046 (undefined!1858 Bool) (index!6356 (_ BitVec 32)) (x!24134 (_ BitVec 32))) (Undefined!1046) (MissingVacant!1046 (index!6357 (_ BitVec 32))) )
))
(declare-fun lt!120869 () SeekEntryResult!1046)

(declare-fun c!39936 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!22290 (= call!22293 (inRange!0 (ite c!39936 (index!6354 lt!120869) (index!6357 lt!120869)) (mask!10495 thiss!1504)))))

(declare-fun b!239679 () Bool)

(declare-fun res!117493 () Bool)

(assert (=> b!239679 (=> (not res!117493) (not e!155625))))

(assert (=> b!239679 (= res!117493 (and (= (size!5988 (_values!4428 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!10495 thiss!1504))) (= (size!5989 (_keys!6547 thiss!1504)) (size!5988 (_values!4428 thiss!1504))) (bvsge (mask!10495 thiss!1504) #b00000000000000000000000000000000) (bvsge (extraKeys!4182 thiss!1504) #b00000000000000000000000000000000) (bvsle (extraKeys!4182 thiss!1504) #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!10692 () Bool)

(declare-fun mapRes!10692 () Bool)

(declare-fun tp!22538 () Bool)

(declare-fun e!155635 () Bool)

(assert (=> mapNonEmpty!10692 (= mapRes!10692 (and tp!22538 e!155635))))

(declare-fun mapRest!10692 () (Array (_ BitVec 32) ValueCell!2810))

(declare-fun mapValue!10692 () ValueCell!2810)

(declare-fun mapKey!10692 () (_ BitVec 32))

(assert (=> mapNonEmpty!10692 (= (arr!5647 (_values!4428 thiss!1504)) (store mapRest!10692 mapKey!10692 mapValue!10692))))

(declare-fun b!239681 () Bool)

(declare-fun res!117488 () Bool)

(declare-fun e!155629 () Bool)

(assert (=> b!239681 (=> (not res!117488) (not e!155629))))

(declare-fun key!932 () (_ BitVec 64))

(assert (=> b!239681 (= res!117488 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!239682 () Bool)

(declare-fun e!155633 () Bool)

(assert (=> b!239682 (= e!155633 (is-Undefined!1046 lt!120869))))

(declare-fun b!239683 () Bool)

(declare-fun res!117492 () Bool)

(assert (=> b!239683 (= res!117492 (= (select (arr!5648 (_keys!6547 thiss!1504)) (index!6357 lt!120869)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!155632 () Bool)

(assert (=> b!239683 (=> (not res!117492) (not e!155632))))

(declare-fun b!239684 () Bool)

(declare-datatypes ((Unit!7362 0))(
  ( (Unit!7363) )
))
(declare-fun e!155624 () Unit!7362)

(declare-fun Unit!7364 () Unit!7362)

(assert (=> b!239684 (= e!155624 Unit!7364)))

(declare-fun lt!120870 () Unit!7362)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!332 (array!11894 array!11892 (_ BitVec 32) (_ BitVec 32) V!8057 V!8057 (_ BitVec 64) Int) Unit!7362)

(assert (=> b!239684 (= lt!120870 (lemmaInListMapThenSeekEntryOrOpenFindsIt!332 (_keys!6547 thiss!1504) (_values!4428 thiss!1504) (mask!10495 thiss!1504) (extraKeys!4182 thiss!1504) (zeroValue!4286 thiss!1504) (minValue!4286 thiss!1504) key!932 (defaultEntry!4445 thiss!1504)))))

(assert (=> b!239684 false))

(declare-fun b!239685 () Bool)

(declare-fun res!117489 () Bool)

(assert (=> b!239685 (=> (not res!117489) (not e!155625))))

(declare-fun arrayContainsKey!0 (array!11894 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!239685 (= res!117489 (arrayContainsKey!0 (_keys!6547 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!239686 () Bool)

(declare-fun res!117494 () Bool)

(declare-fun e!155634 () Bool)

(assert (=> b!239686 (=> (not res!117494) (not e!155634))))

(assert (=> b!239686 (= res!117494 (= (select (arr!5648 (_keys!6547 thiss!1504)) (index!6354 lt!120869)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!239687 () Bool)

(declare-fun e!155628 () Bool)

(declare-fun tp_is_empty!6307 () Bool)

(assert (=> b!239687 (= e!155628 tp_is_empty!6307)))

(declare-fun b!239688 () Bool)

(declare-fun e!155630 () Bool)

(assert (=> b!239688 (= e!155630 e!155625)))

(declare-fun res!117491 () Bool)

(assert (=> b!239688 (=> (not res!117491) (not e!155625))))

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!239688 (= res!117491 (inRange!0 index!297 (mask!10495 thiss!1504)))))

(declare-fun lt!120868 () Unit!7362)

(assert (=> b!239688 (= lt!120868 e!155624)))

(declare-fun c!39935 () Bool)

(declare-datatypes ((tuple2!4708 0))(
  ( (tuple2!4709 (_1!2364 (_ BitVec 64)) (_2!2364 V!8057)) )
))
(declare-datatypes ((List!3618 0))(
  ( (Nil!3615) (Cons!3614 (h!4270 tuple2!4708) (t!8621 List!3618)) )
))
(declare-datatypes ((ListLongMap!3635 0))(
  ( (ListLongMap!3636 (toList!1833 List!3618)) )
))
(declare-fun contains!1715 (ListLongMap!3635 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1356 (array!11894 array!11892 (_ BitVec 32) (_ BitVec 32) V!8057 V!8057 (_ BitVec 32) Int) ListLongMap!3635)

(assert (=> b!239688 (= c!39935 (contains!1715 (getCurrentListMap!1356 (_keys!6547 thiss!1504) (_values!4428 thiss!1504) (mask!10495 thiss!1504) (extraKeys!4182 thiss!1504) (zeroValue!4286 thiss!1504) (minValue!4286 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4445 thiss!1504)) key!932))))

(declare-fun mapIsEmpty!10692 () Bool)

(assert (=> mapIsEmpty!10692 mapRes!10692))

(declare-fun b!239680 () Bool)

(declare-fun e!155627 () Bool)

(assert (=> b!239680 (= e!155627 (and e!155628 mapRes!10692))))

(declare-fun condMapEmpty!10692 () Bool)

(declare-fun mapDefault!10692 () ValueCell!2810)

