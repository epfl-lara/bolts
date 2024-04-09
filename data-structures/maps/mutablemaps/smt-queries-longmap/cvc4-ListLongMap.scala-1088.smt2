; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!22226 () Bool)

(assert start!22226)

(declare-fun b!233065 () Bool)

(declare-fun b_free!6281 () Bool)

(declare-fun b_next!6281 () Bool)

(assert (=> b!233065 (= b_free!6281 (not b_next!6281))))

(declare-fun tp!21984 () Bool)

(declare-fun b_and!13197 () Bool)

(assert (=> b!233065 (= tp!21984 b_and!13197)))

(declare-fun b!233050 () Bool)

(declare-fun e!151397 () Bool)

(declare-fun tp_is_empty!6143 () Bool)

(assert (=> b!233050 (= e!151397 tp_is_empty!6143)))

(declare-fun mapNonEmpty!10384 () Bool)

(declare-fun mapRes!10384 () Bool)

(declare-fun tp!21985 () Bool)

(declare-fun e!151392 () Bool)

(assert (=> mapNonEmpty!10384 (= mapRes!10384 (and tp!21985 e!151392))))

(declare-fun mapKey!10384 () (_ BitVec 32))

(declare-datatypes ((V!7837 0))(
  ( (V!7838 (val!3116 Int)) )
))
(declare-datatypes ((ValueCell!2728 0))(
  ( (ValueCellFull!2728 (v!5132 V!7837)) (EmptyCell!2728) )
))
(declare-fun mapValue!10384 () ValueCell!2728)

(declare-datatypes ((array!11528 0))(
  ( (array!11529 (arr!5483 (Array (_ BitVec 32) ValueCell!2728)) (size!5816 (_ BitVec 32))) )
))
(declare-datatypes ((array!11530 0))(
  ( (array!11531 (arr!5484 (Array (_ BitVec 32) (_ BitVec 64))) (size!5817 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3356 0))(
  ( (LongMapFixedSize!3357 (defaultEntry!4337 Int) (mask!10257 (_ BitVec 32)) (extraKeys!4074 (_ BitVec 32)) (zeroValue!4178 V!7837) (minValue!4178 V!7837) (_size!1727 (_ BitVec 32)) (_keys!6391 array!11530) (_values!4320 array!11528) (_vacant!1727 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3356)

(declare-fun mapRest!10384 () (Array (_ BitVec 32) ValueCell!2728))

(assert (=> mapNonEmpty!10384 (= (arr!5483 (_values!4320 thiss!1504)) (store mapRest!10384 mapKey!10384 mapValue!10384))))

(declare-fun res!114410 () Bool)

(declare-fun e!151388 () Bool)

(assert (=> start!22226 (=> (not res!114410) (not e!151388))))

(declare-fun valid!1318 (LongMapFixedSize!3356) Bool)

(assert (=> start!22226 (= res!114410 (valid!1318 thiss!1504))))

(assert (=> start!22226 e!151388))

(declare-fun e!151398 () Bool)

(assert (=> start!22226 e!151398))

(assert (=> start!22226 true))

(declare-fun b!233051 () Bool)

(assert (=> b!233051 (= e!151392 tp_is_empty!6143)))

(declare-fun b!233052 () Bool)

(declare-fun c!38756 () Bool)

(declare-datatypes ((SeekEntryResult!983 0))(
  ( (MissingZero!983 (index!6102 (_ BitVec 32))) (Found!983 (index!6103 (_ BitVec 32))) (Intermediate!983 (undefined!1795 Bool) (index!6104 (_ BitVec 32)) (x!23603 (_ BitVec 32))) (Undefined!983) (MissingVacant!983 (index!6105 (_ BitVec 32))) )
))
(declare-fun lt!117924 () SeekEntryResult!983)

(assert (=> b!233052 (= c!38756 (is-MissingVacant!983 lt!117924))))

(declare-fun e!151390 () Bool)

(declare-fun e!151391 () Bool)

(assert (=> b!233052 (= e!151390 e!151391)))

(declare-fun b!233053 () Bool)

(declare-fun res!114412 () Bool)

(assert (=> b!233053 (=> (not res!114412) (not e!151388))))

(declare-fun key!932 () (_ BitVec 64))

(assert (=> b!233053 (= res!114412 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapIsEmpty!10384 () Bool)

(assert (=> mapIsEmpty!10384 mapRes!10384))

(declare-fun b!233054 () Bool)

(declare-fun e!151389 () Bool)

(declare-fun call!21676 () Bool)

(assert (=> b!233054 (= e!151389 (not call!21676))))

(declare-fun b!233055 () Bool)

(declare-fun res!114411 () Bool)

(assert (=> b!233055 (=> (not res!114411) (not e!151389))))

(assert (=> b!233055 (= res!114411 (= (select (arr!5484 (_keys!6391 thiss!1504)) (index!6102 lt!117924)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!233056 () Bool)

(declare-fun e!151394 () Bool)

(assert (=> b!233056 (= e!151391 e!151394)))

(declare-fun res!114408 () Bool)

(declare-fun call!21675 () Bool)

(assert (=> b!233056 (= res!114408 call!21675)))

(assert (=> b!233056 (=> (not res!114408) (not e!151394))))

(declare-fun b!233057 () Bool)

(assert (=> b!233057 (= e!151394 (not call!21676))))

(declare-fun bm!21672 () Bool)

(declare-fun arrayContainsKey!0 (array!11530 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!21672 (= call!21676 (arrayContainsKey!0 (_keys!6391 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!233058 () Bool)

(declare-datatypes ((Unit!7205 0))(
  ( (Unit!7206) )
))
(declare-fun e!151395 () Unit!7205)

(declare-fun lt!117927 () Unit!7205)

(assert (=> b!233058 (= e!151395 lt!117927)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!330 (array!11530 array!11528 (_ BitVec 32) (_ BitVec 32) V!7837 V!7837 (_ BitVec 64) Int) Unit!7205)

(assert (=> b!233058 (= lt!117927 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!330 (_keys!6391 thiss!1504) (_values!4320 thiss!1504) (mask!10257 thiss!1504) (extraKeys!4074 thiss!1504) (zeroValue!4178 thiss!1504) (minValue!4178 thiss!1504) key!932 (defaultEntry!4337 thiss!1504)))))

(declare-fun c!38754 () Bool)

(assert (=> b!233058 (= c!38754 (is-MissingZero!983 lt!117924))))

(assert (=> b!233058 e!151390))

(declare-fun b!233059 () Bool)

(declare-fun e!151399 () Bool)

(assert (=> b!233059 (= e!151388 e!151399)))

(declare-fun res!114409 () Bool)

(assert (=> b!233059 (=> (not res!114409) (not e!151399))))

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!233059 (= res!114409 (or (= lt!117924 (MissingZero!983 index!297)) (= lt!117924 (MissingVacant!983 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11530 (_ BitVec 32)) SeekEntryResult!983)

(assert (=> b!233059 (= lt!117924 (seekEntryOrOpen!0 key!932 (_keys!6391 thiss!1504) (mask!10257 thiss!1504)))))

(declare-fun b!233060 () Bool)

(declare-fun res!114406 () Bool)

(assert (=> b!233060 (=> (not res!114406) (not e!151389))))

(assert (=> b!233060 (= res!114406 call!21675)))

(assert (=> b!233060 (= e!151390 e!151389)))

(declare-fun b!233061 () Bool)

(declare-fun e!151393 () Bool)

(assert (=> b!233061 (= e!151393 (and e!151397 mapRes!10384))))

(declare-fun condMapEmpty!10384 () Bool)

(declare-fun mapDefault!10384 () ValueCell!2728)

