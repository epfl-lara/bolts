; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!22180 () Bool)

(assert start!22180)

(declare-fun b!231691 () Bool)

(declare-fun b_free!6235 () Bool)

(declare-fun b_next!6235 () Bool)

(assert (=> b!231691 (= b_free!6235 (not b_next!6235))))

(declare-fun tp!21846 () Bool)

(declare-fun b_and!13151 () Bool)

(assert (=> b!231691 (= tp!21846 b_and!13151)))

(declare-fun b!231676 () Bool)

(declare-datatypes ((Unit!7132 0))(
  ( (Unit!7133) )
))
(declare-fun e!150427 () Unit!7132)

(declare-fun lt!116891 () Unit!7132)

(assert (=> b!231676 (= e!150427 lt!116891)))

(declare-datatypes ((V!7777 0))(
  ( (V!7778 (val!3093 Int)) )
))
(declare-datatypes ((ValueCell!2705 0))(
  ( (ValueCellFull!2705 (v!5109 V!7777)) (EmptyCell!2705) )
))
(declare-datatypes ((array!11436 0))(
  ( (array!11437 (arr!5437 (Array (_ BitVec 32) ValueCell!2705)) (size!5770 (_ BitVec 32))) )
))
(declare-datatypes ((array!11438 0))(
  ( (array!11439 (arr!5438 (Array (_ BitVec 32) (_ BitVec 64))) (size!5771 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3310 0))(
  ( (LongMapFixedSize!3311 (defaultEntry!4314 Int) (mask!10220 (_ BitVec 32)) (extraKeys!4051 (_ BitVec 32)) (zeroValue!4155 V!7777) (minValue!4155 V!7777) (_size!1704 (_ BitVec 32)) (_keys!6368 array!11438) (_values!4297 array!11436) (_vacant!1704 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3310)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!318 (array!11438 array!11436 (_ BitVec 32) (_ BitVec 32) V!7777 V!7777 (_ BitVec 64) Int) Unit!7132)

(assert (=> b!231676 (= lt!116891 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!318 (_keys!6368 thiss!1504) (_values!4297 thiss!1504) (mask!10220 thiss!1504) (extraKeys!4051 thiss!1504) (zeroValue!4155 thiss!1504) (minValue!4155 thiss!1504) key!932 (defaultEntry!4314 thiss!1504)))))

(declare-fun c!38489 () Bool)

(declare-datatypes ((SeekEntryResult!965 0))(
  ( (MissingZero!965 (index!6030 (_ BitVec 32))) (Found!965 (index!6031 (_ BitVec 32))) (Intermediate!965 (undefined!1777 Bool) (index!6032 (_ BitVec 32)) (x!23529 (_ BitVec 32))) (Undefined!965) (MissingVacant!965 (index!6033 (_ BitVec 32))) )
))
(declare-fun lt!116885 () SeekEntryResult!965)

(assert (=> b!231676 (= c!38489 (is-MissingZero!965 lt!116885))))

(declare-fun e!150425 () Bool)

(assert (=> b!231676 e!150425))

(declare-fun bm!21534 () Bool)

(declare-fun call!21537 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!21534 (= call!21537 (inRange!0 (ite c!38489 (index!6030 lt!116885) (index!6033 lt!116885)) (mask!10220 thiss!1504)))))

(declare-fun b!231677 () Bool)

(declare-fun e!150432 () Bool)

(declare-fun e!150431 () Bool)

(assert (=> b!231677 (= e!150432 e!150431)))

(declare-fun res!113847 () Bool)

(assert (=> b!231677 (= res!113847 call!21537)))

(assert (=> b!231677 (=> (not res!113847) (not e!150431))))

(declare-fun b!231678 () Bool)

(declare-fun c!38487 () Bool)

(assert (=> b!231678 (= c!38487 (is-MissingVacant!965 lt!116885))))

(assert (=> b!231678 (= e!150425 e!150432)))

(declare-fun b!231679 () Bool)

(declare-fun res!113850 () Bool)

(assert (=> b!231679 (= res!113850 (= (select (arr!5438 (_keys!6368 thiss!1504)) (index!6033 lt!116885)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!231679 (=> (not res!113850) (not e!150431))))

(declare-fun b!231680 () Bool)

(declare-fun call!21538 () Bool)

(assert (=> b!231680 (= e!150431 (not call!21538))))

(declare-fun b!231681 () Bool)

(declare-fun e!150430 () Unit!7132)

(declare-fun Unit!7134 () Unit!7132)

(assert (=> b!231681 (= e!150430 Unit!7134)))

(declare-fun b!231682 () Bool)

(declare-fun e!150426 () Bool)

(declare-fun e!150429 () Bool)

(assert (=> b!231682 (= e!150426 e!150429)))

(declare-fun res!113846 () Bool)

(assert (=> b!231682 (=> (not res!113846) (not e!150429))))

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!231682 (= res!113846 (or (= lt!116885 (MissingZero!965 index!297)) (= lt!116885 (MissingVacant!965 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11438 (_ BitVec 32)) SeekEntryResult!965)

(assert (=> b!231682 (= lt!116885 (seekEntryOrOpen!0 key!932 (_keys!6368 thiss!1504) (mask!10220 thiss!1504)))))

(declare-fun res!113844 () Bool)

(assert (=> start!22180 (=> (not res!113844) (not e!150426))))

(declare-fun valid!1304 (LongMapFixedSize!3310) Bool)

(assert (=> start!22180 (= res!113844 (valid!1304 thiss!1504))))

(assert (=> start!22180 e!150426))

(declare-fun e!150420 () Bool)

(assert (=> start!22180 e!150420))

(assert (=> start!22180 true))

(declare-fun tp_is_empty!6097 () Bool)

(assert (=> start!22180 tp_is_empty!6097))

(declare-fun b!231683 () Bool)

(declare-fun e!150424 () Bool)

(assert (=> b!231683 (= e!150424 tp_is_empty!6097)))

(declare-fun mapNonEmpty!10315 () Bool)

(declare-fun mapRes!10315 () Bool)

(declare-fun tp!21847 () Bool)

(declare-fun e!150422 () Bool)

(assert (=> mapNonEmpty!10315 (= mapRes!10315 (and tp!21847 e!150422))))

(declare-fun mapRest!10315 () (Array (_ BitVec 32) ValueCell!2705))

(declare-fun mapValue!10315 () ValueCell!2705)

(declare-fun mapKey!10315 () (_ BitVec 32))

(assert (=> mapNonEmpty!10315 (= (arr!5437 (_values!4297 thiss!1504)) (store mapRest!10315 mapKey!10315 mapValue!10315))))

(declare-fun b!231684 () Bool)

(declare-fun res!113845 () Bool)

(declare-fun e!150428 () Bool)

(assert (=> b!231684 (=> (not res!113845) (not e!150428))))

(assert (=> b!231684 (= res!113845 call!21537)))

(assert (=> b!231684 (= e!150425 e!150428)))

(declare-fun bm!21535 () Bool)

(declare-fun arrayContainsKey!0 (array!11438 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!21535 (= call!21538 (arrayContainsKey!0 (_keys!6368 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!231685 () Bool)

(declare-fun e!150433 () Bool)

(assert (=> b!231685 (= e!150433 (and e!150424 mapRes!10315))))

(declare-fun condMapEmpty!10315 () Bool)

(declare-fun mapDefault!10315 () ValueCell!2705)

