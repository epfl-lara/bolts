; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!22178 () Bool)

(assert start!22178)

(declare-fun b!231632 () Bool)

(declare-fun b_free!6233 () Bool)

(declare-fun b_next!6233 () Bool)

(assert (=> b!231632 (= b_free!6233 (not b_next!6233))))

(declare-fun tp!21840 () Bool)

(declare-fun b_and!13149 () Bool)

(assert (=> b!231632 (= tp!21840 b_and!13149)))

(declare-fun b!231616 () Bool)

(declare-fun res!113821 () Bool)

(declare-fun e!150382 () Bool)

(assert (=> b!231616 (=> (not res!113821) (not e!150382))))

(declare-fun key!932 () (_ BitVec 64))

(assert (=> b!231616 (= res!113821 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!231617 () Bool)

(declare-fun e!150380 () Bool)

(declare-fun e!150391 () Bool)

(assert (=> b!231617 (= e!150380 e!150391)))

(declare-fun res!113820 () Bool)

(assert (=> b!231617 (=> (not res!113820) (not e!150391))))

(declare-fun index!297 () (_ BitVec 32))

(declare-datatypes ((V!7773 0))(
  ( (V!7774 (val!3092 Int)) )
))
(declare-datatypes ((ValueCell!2704 0))(
  ( (ValueCellFull!2704 (v!5108 V!7773)) (EmptyCell!2704) )
))
(declare-datatypes ((array!11432 0))(
  ( (array!11433 (arr!5435 (Array (_ BitVec 32) ValueCell!2704)) (size!5768 (_ BitVec 32))) )
))
(declare-datatypes ((array!11434 0))(
  ( (array!11435 (arr!5436 (Array (_ BitVec 32) (_ BitVec 64))) (size!5769 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3308 0))(
  ( (LongMapFixedSize!3309 (defaultEntry!4313 Int) (mask!10217 (_ BitVec 32)) (extraKeys!4050 (_ BitVec 32)) (zeroValue!4154 V!7773) (minValue!4154 V!7773) (_size!1703 (_ BitVec 32)) (_keys!6367 array!11434) (_values!4296 array!11432) (_vacant!1703 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3308)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!231617 (= res!113820 (inRange!0 index!297 (mask!10217 thiss!1504)))))

(declare-datatypes ((Unit!7128 0))(
  ( (Unit!7129) )
))
(declare-fun lt!116849 () Unit!7128)

(declare-fun e!150388 () Unit!7128)

(assert (=> b!231617 (= lt!116849 e!150388)))

(declare-fun c!38475 () Bool)

(declare-datatypes ((tuple2!4560 0))(
  ( (tuple2!4561 (_1!2290 (_ BitVec 64)) (_2!2290 V!7773)) )
))
(declare-datatypes ((List!3503 0))(
  ( (Nil!3500) (Cons!3499 (h!4147 tuple2!4560) (t!8470 List!3503)) )
))
(declare-datatypes ((ListLongMap!3487 0))(
  ( (ListLongMap!3488 (toList!1759 List!3503)) )
))
(declare-fun lt!116850 () ListLongMap!3487)

(declare-fun contains!1622 (ListLongMap!3487 (_ BitVec 64)) Bool)

(assert (=> b!231617 (= c!38475 (contains!1622 lt!116850 key!932))))

(declare-fun getCurrentListMap!1282 (array!11434 array!11432 (_ BitVec 32) (_ BitVec 32) V!7773 V!7773 (_ BitVec 32) Int) ListLongMap!3487)

(assert (=> b!231617 (= lt!116850 (getCurrentListMap!1282 (_keys!6367 thiss!1504) (_values!4296 thiss!1504) (mask!10217 thiss!1504) (extraKeys!4050 thiss!1504) (zeroValue!4154 thiss!1504) (minValue!4154 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4313 thiss!1504)))))

(declare-fun b!231618 () Bool)

(declare-fun Unit!7130 () Unit!7128)

(assert (=> b!231618 (= e!150388 Unit!7130)))

(declare-fun lt!116856 () Unit!7128)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!303 (array!11434 array!11432 (_ BitVec 32) (_ BitVec 32) V!7773 V!7773 (_ BitVec 64) Int) Unit!7128)

(assert (=> b!231618 (= lt!116856 (lemmaInListMapThenSeekEntryOrOpenFindsIt!303 (_keys!6367 thiss!1504) (_values!4296 thiss!1504) (mask!10217 thiss!1504) (extraKeys!4050 thiss!1504) (zeroValue!4154 thiss!1504) (minValue!4154 thiss!1504) key!932 (defaultEntry!4313 thiss!1504)))))

(assert (=> b!231618 false))

(declare-fun b!231619 () Bool)

(declare-fun e!150385 () Bool)

(declare-fun tp_is_empty!6095 () Bool)

(assert (=> b!231619 (= e!150385 tp_is_empty!6095)))

(declare-fun b!231620 () Bool)

(declare-fun e!150381 () Bool)

(declare-fun e!150384 () Bool)

(assert (=> b!231620 (= e!150381 e!150384)))

(declare-fun res!113825 () Bool)

(declare-fun call!21531 () Bool)

(assert (=> b!231620 (= res!113825 call!21531)))

(assert (=> b!231620 (=> (not res!113825) (not e!150384))))

(declare-fun b!231621 () Bool)

(declare-fun e!150387 () Unit!7128)

(declare-fun Unit!7131 () Unit!7128)

(assert (=> b!231621 (= e!150387 Unit!7131)))

(declare-fun lt!116847 () Unit!7128)

(declare-fun lemmaArrayContainsKeyThenInListMap!138 (array!11434 array!11432 (_ BitVec 32) (_ BitVec 32) V!7773 V!7773 (_ BitVec 64) (_ BitVec 32) Int) Unit!7128)

(assert (=> b!231621 (= lt!116847 (lemmaArrayContainsKeyThenInListMap!138 (_keys!6367 thiss!1504) (_values!4296 thiss!1504) (mask!10217 thiss!1504) (extraKeys!4050 thiss!1504) (zeroValue!4154 thiss!1504) (minValue!4154 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4313 thiss!1504)))))

(assert (=> b!231621 false))

(declare-fun bm!21528 () Bool)

(declare-fun call!21532 () Bool)

(declare-fun arrayContainsKey!0 (array!11434 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!21528 (= call!21532 (arrayContainsKey!0 (_keys!6367 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!231622 () Bool)

(declare-fun res!113822 () Bool)

(declare-fun e!150389 () Bool)

(assert (=> b!231622 (=> (not res!113822) (not e!150389))))

(assert (=> b!231622 (= res!113822 call!21531)))

(declare-fun e!150383 () Bool)

(assert (=> b!231622 (= e!150383 e!150389)))

(declare-fun b!231623 () Bool)

(declare-fun res!113824 () Bool)

(declare-datatypes ((SeekEntryResult!964 0))(
  ( (MissingZero!964 (index!6026 (_ BitVec 32))) (Found!964 (index!6027 (_ BitVec 32))) (Intermediate!964 (undefined!1776 Bool) (index!6028 (_ BitVec 32)) (x!23520 (_ BitVec 32))) (Undefined!964) (MissingVacant!964 (index!6029 (_ BitVec 32))) )
))
(declare-fun lt!116852 () SeekEntryResult!964)

(assert (=> b!231623 (= res!113824 (= (select (arr!5436 (_keys!6367 thiss!1504)) (index!6029 lt!116852)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!231623 (=> (not res!113824) (not e!150384))))

(declare-fun b!231624 () Bool)

(assert (=> b!231624 (= e!150389 (not call!21532))))

(declare-fun b!231625 () Bool)

(declare-fun e!150390 () Bool)

(declare-fun mapRes!10312 () Bool)

(assert (=> b!231625 (= e!150390 (and e!150385 mapRes!10312))))

(declare-fun condMapEmpty!10312 () Bool)

(declare-fun mapDefault!10312 () ValueCell!2704)

