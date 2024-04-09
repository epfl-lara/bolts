; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!22160 () Bool)

(assert start!22160)

(declare-fun b!231078 () Bool)

(declare-fun b_free!6215 () Bool)

(declare-fun b_next!6215 () Bool)

(assert (=> b!231078 (= b_free!6215 (not b_next!6215))))

(declare-fun tp!21786 () Bool)

(declare-fun b_and!13131 () Bool)

(assert (=> b!231078 (= tp!21786 b_and!13131)))

(declare-fun b!231076 () Bool)

(declare-datatypes ((Unit!7097 0))(
  ( (Unit!7098) )
))
(declare-fun e!150012 () Unit!7097)

(declare-fun lt!116478 () Unit!7097)

(assert (=> b!231076 (= e!150012 lt!116478)))

(declare-datatypes ((V!7749 0))(
  ( (V!7750 (val!3083 Int)) )
))
(declare-datatypes ((ValueCell!2695 0))(
  ( (ValueCellFull!2695 (v!5099 V!7749)) (EmptyCell!2695) )
))
(declare-datatypes ((array!11396 0))(
  ( (array!11397 (arr!5417 (Array (_ BitVec 32) ValueCell!2695)) (size!5750 (_ BitVec 32))) )
))
(declare-datatypes ((array!11398 0))(
  ( (array!11399 (arr!5418 (Array (_ BitVec 32) (_ BitVec 64))) (size!5751 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3290 0))(
  ( (LongMapFixedSize!3291 (defaultEntry!4304 Int) (mask!10202 (_ BitVec 32)) (extraKeys!4041 (_ BitVec 32)) (zeroValue!4145 V!7749) (minValue!4145 V!7749) (_size!1694 (_ BitVec 32)) (_keys!6358 array!11398) (_values!4287 array!11396) (_vacant!1694 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3290)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!313 (array!11398 array!11396 (_ BitVec 32) (_ BitVec 32) V!7749 V!7749 (_ BitVec 64) Int) Unit!7097)

(assert (=> b!231076 (= lt!116478 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!313 (_keys!6358 thiss!1504) (_values!4287 thiss!1504) (mask!10202 thiss!1504) (extraKeys!4041 thiss!1504) (zeroValue!4145 thiss!1504) (minValue!4145 thiss!1504) key!932 (defaultEntry!4304 thiss!1504)))))

(declare-fun c!38367 () Bool)

(declare-datatypes ((SeekEntryResult!957 0))(
  ( (MissingZero!957 (index!5998 (_ BitVec 32))) (Found!957 (index!5999 (_ BitVec 32))) (Intermediate!957 (undefined!1769 Bool) (index!6000 (_ BitVec 32)) (x!23489 (_ BitVec 32))) (Undefined!957) (MissingVacant!957 (index!6001 (_ BitVec 32))) )
))
(declare-fun lt!116465 () SeekEntryResult!957)

(assert (=> b!231076 (= c!38367 (is-MissingZero!957 lt!116465))))

(declare-fun e!150011 () Bool)

(assert (=> b!231076 e!150011))

(declare-fun b!231077 () Bool)

(declare-fun e!150008 () Unit!7097)

(declare-fun Unit!7099 () Unit!7097)

(assert (=> b!231077 (= e!150008 Unit!7099)))

(declare-fun e!150005 () Bool)

(declare-fun e!150003 () Bool)

(declare-fun tp_is_empty!6077 () Bool)

(declare-fun array_inv!3563 (array!11398) Bool)

(declare-fun array_inv!3564 (array!11396) Bool)

(assert (=> b!231078 (= e!150003 (and tp!21786 tp_is_empty!6077 (array_inv!3563 (_keys!6358 thiss!1504)) (array_inv!3564 (_values!4287 thiss!1504)) e!150005))))

(declare-fun b!231079 () Bool)

(declare-fun res!113611 () Bool)

(declare-fun e!150004 () Bool)

(assert (=> b!231079 (=> (not res!113611) (not e!150004))))

(assert (=> b!231079 (= res!113611 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!231080 () Bool)

(declare-fun c!38369 () Bool)

(assert (=> b!231080 (= c!38369 (is-MissingVacant!957 lt!116465))))

(declare-fun e!150009 () Bool)

(assert (=> b!231080 (= e!150011 e!150009)))

(declare-fun b!231081 () Bool)

(declare-fun e!150001 () Bool)

(declare-fun mapRes!10285 () Bool)

(assert (=> b!231081 (= e!150005 (and e!150001 mapRes!10285))))

(declare-fun condMapEmpty!10285 () Bool)

(declare-fun mapDefault!10285 () ValueCell!2695)

