; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!22978 () Bool)

(assert start!22978)

(declare-fun b!240496 () Bool)

(declare-fun b_free!6469 () Bool)

(declare-fun b_next!6469 () Bool)

(assert (=> b!240496 (= b_free!6469 (not b_next!6469))))

(declare-fun tp!22611 () Bool)

(declare-fun b_and!13453 () Bool)

(assert (=> b!240496 (= tp!22611 b_and!13453)))

(declare-fun b!240490 () Bool)

(declare-fun res!117937 () Bool)

(declare-datatypes ((V!8089 0))(
  ( (V!8090 (val!3210 Int)) )
))
(declare-datatypes ((ValueCell!2822 0))(
  ( (ValueCellFull!2822 (v!5244 V!8089)) (EmptyCell!2822) )
))
(declare-datatypes ((array!11940 0))(
  ( (array!11941 (arr!5671 (Array (_ BitVec 32) ValueCell!2822)) (size!6012 (_ BitVec 32))) )
))
(declare-datatypes ((array!11942 0))(
  ( (array!11943 (arr!5672 (Array (_ BitVec 32) (_ BitVec 64))) (size!6013 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3544 0))(
  ( (LongMapFixedSize!3545 (defaultEntry!4457 Int) (mask!10515 (_ BitVec 32)) (extraKeys!4194 (_ BitVec 32)) (zeroValue!4298 V!8089) (minValue!4298 V!8089) (_size!1821 (_ BitVec 32)) (_keys!6559 array!11942) (_values!4440 array!11940) (_vacant!1821 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3544)

(declare-datatypes ((SeekEntryResult!1057 0))(
  ( (MissingZero!1057 (index!6398 (_ BitVec 32))) (Found!1057 (index!6399 (_ BitVec 32))) (Intermediate!1057 (undefined!1869 Bool) (index!6400 (_ BitVec 32)) (x!24177 (_ BitVec 32))) (Undefined!1057) (MissingVacant!1057 (index!6401 (_ BitVec 32))) )
))
(declare-fun lt!121018 () SeekEntryResult!1057)

(assert (=> b!240490 (= res!117937 (= (select (arr!5672 (_keys!6559 thiss!1504)) (index!6401 lt!121018)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!156099 () Bool)

(assert (=> b!240490 (=> (not res!117937) (not e!156099))))

(declare-fun b!240491 () Bool)

(declare-datatypes ((Unit!7397 0))(
  ( (Unit!7398) )
))
(declare-fun e!156096 () Unit!7397)

(declare-fun lt!121015 () Unit!7397)

(assert (=> b!240491 (= e!156096 lt!121015)))

(declare-fun key!932 () (_ BitVec 64))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!351 (array!11942 array!11940 (_ BitVec 32) (_ BitVec 32) V!8089 V!8089 (_ BitVec 64) Int) Unit!7397)

(assert (=> b!240491 (= lt!121015 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!351 (_keys!6559 thiss!1504) (_values!4440 thiss!1504) (mask!10515 thiss!1504) (extraKeys!4194 thiss!1504) (zeroValue!4298 thiss!1504) (minValue!4298 thiss!1504) key!932 (defaultEntry!4457 thiss!1504)))))

(declare-fun c!40043 () Bool)

(assert (=> b!240491 (= c!40043 (is-MissingZero!1057 lt!121018))))

(declare-fun e!156093 () Bool)

(assert (=> b!240491 e!156093))

(declare-fun b!240492 () Bool)

(declare-fun e!156104 () Bool)

(declare-fun e!156095 () Bool)

(declare-fun mapRes!10728 () Bool)

(assert (=> b!240492 (= e!156104 (and e!156095 mapRes!10728))))

(declare-fun condMapEmpty!10728 () Bool)

(declare-fun mapDefault!10728 () ValueCell!2822)

