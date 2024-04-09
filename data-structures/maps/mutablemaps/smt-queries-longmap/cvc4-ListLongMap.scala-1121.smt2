; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!22988 () Bool)

(assert start!22988)

(declare-fun b!240801 () Bool)

(declare-fun b_free!6479 () Bool)

(declare-fun b_next!6479 () Bool)

(assert (=> b!240801 (= b_free!6479 (not b_next!6479))))

(declare-fun tp!22640 () Bool)

(declare-fun b_and!13463 () Bool)

(assert (=> b!240801 (= tp!22640 b_and!13463)))

(declare-fun b!240796 () Bool)

(declare-datatypes ((Unit!7409 0))(
  ( (Unit!7410) )
))
(declare-fun e!156298 () Unit!7409)

(declare-fun Unit!7411 () Unit!7409)

(assert (=> b!240796 (= e!156298 Unit!7411)))

(declare-fun lt!121097 () Unit!7409)

(declare-datatypes ((V!8101 0))(
  ( (V!8102 (val!3215 Int)) )
))
(declare-datatypes ((ValueCell!2827 0))(
  ( (ValueCellFull!2827 (v!5249 V!8101)) (EmptyCell!2827) )
))
(declare-datatypes ((array!11960 0))(
  ( (array!11961 (arr!5681 (Array (_ BitVec 32) ValueCell!2827)) (size!6022 (_ BitVec 32))) )
))
(declare-datatypes ((array!11962 0))(
  ( (array!11963 (arr!5682 (Array (_ BitVec 32) (_ BitVec 64))) (size!6023 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3554 0))(
  ( (LongMapFixedSize!3555 (defaultEntry!4462 Int) (mask!10522 (_ BitVec 32)) (extraKeys!4199 (_ BitVec 32)) (zeroValue!4303 V!8101) (minValue!4303 V!8101) (_size!1826 (_ BitVec 32)) (_keys!6564 array!11962) (_values!4445 array!11960) (_vacant!1826 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3554)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!345 (array!11962 array!11960 (_ BitVec 32) (_ BitVec 32) V!8101 V!8101 (_ BitVec 64) Int) Unit!7409)

(assert (=> b!240796 (= lt!121097 (lemmaInListMapThenSeekEntryOrOpenFindsIt!345 (_keys!6564 thiss!1504) (_values!4445 thiss!1504) (mask!10522 thiss!1504) (extraKeys!4199 thiss!1504) (zeroValue!4303 thiss!1504) (minValue!4303 thiss!1504) key!932 (defaultEntry!4462 thiss!1504)))))

(assert (=> b!240796 false))

(declare-fun mapNonEmpty!10743 () Bool)

(declare-fun mapRes!10743 () Bool)

(declare-fun tp!22641 () Bool)

(declare-fun e!156289 () Bool)

(assert (=> mapNonEmpty!10743 (= mapRes!10743 (and tp!22641 e!156289))))

(declare-fun mapValue!10743 () ValueCell!2827)

(declare-fun mapRest!10743 () (Array (_ BitVec 32) ValueCell!2827))

(declare-fun mapKey!10743 () (_ BitVec 32))

(assert (=> mapNonEmpty!10743 (= (arr!5681 (_values!4445 thiss!1504)) (store mapRest!10743 mapKey!10743 mapValue!10743))))

(declare-fun b!240797 () Bool)

(declare-fun e!156299 () Bool)

(declare-fun e!156294 () Bool)

(assert (=> b!240797 (= e!156299 (and e!156294 mapRes!10743))))

(declare-fun condMapEmpty!10743 () Bool)

(declare-fun mapDefault!10743 () ValueCell!2827)

