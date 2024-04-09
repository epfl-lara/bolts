; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!22174 () Bool)

(assert start!22174)

(declare-fun b!231511 () Bool)

(declare-fun b_free!6229 () Bool)

(declare-fun b_next!6229 () Bool)

(assert (=> b!231511 (= b_free!6229 (not b_next!6229))))

(declare-fun tp!21829 () Bool)

(declare-fun b_and!13145 () Bool)

(assert (=> b!231511 (= tp!21829 b_and!13145)))

(declare-fun b!231496 () Bool)

(declare-fun e!150304 () Bool)

(declare-fun e!150307 () Bool)

(assert (=> b!231496 (= e!150304 e!150307)))

(declare-fun res!113776 () Bool)

(assert (=> b!231496 (=> (not res!113776) (not e!150307))))

(declare-datatypes ((SeekEntryResult!962 0))(
  ( (MissingZero!962 (index!6018 (_ BitVec 32))) (Found!962 (index!6019 (_ BitVec 32))) (Intermediate!962 (undefined!1774 Bool) (index!6020 (_ BitVec 32)) (x!23518 (_ BitVec 32))) (Undefined!962) (MissingVacant!962 (index!6021 (_ BitVec 32))) )
))
(declare-fun lt!116769 () SeekEntryResult!962)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!231496 (= res!113776 (or (= lt!116769 (MissingZero!962 index!297)) (= lt!116769 (MissingVacant!962 index!297))))))

(declare-fun key!932 () (_ BitVec 64))

(declare-datatypes ((V!7769 0))(
  ( (V!7770 (val!3090 Int)) )
))
(declare-datatypes ((ValueCell!2702 0))(
  ( (ValueCellFull!2702 (v!5106 V!7769)) (EmptyCell!2702) )
))
(declare-datatypes ((array!11424 0))(
  ( (array!11425 (arr!5431 (Array (_ BitVec 32) ValueCell!2702)) (size!5764 (_ BitVec 32))) )
))
(declare-datatypes ((array!11426 0))(
  ( (array!11427 (arr!5432 (Array (_ BitVec 32) (_ BitVec 64))) (size!5765 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3304 0))(
  ( (LongMapFixedSize!3305 (defaultEntry!4311 Int) (mask!10215 (_ BitVec 32)) (extraKeys!4048 (_ BitVec 32)) (zeroValue!4152 V!7769) (minValue!4152 V!7769) (_size!1701 (_ BitVec 32)) (_keys!6365 array!11426) (_values!4294 array!11424) (_vacant!1701 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3304)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11426 (_ BitVec 32)) SeekEntryResult!962)

(assert (=> b!231496 (= lt!116769 (seekEntryOrOpen!0 key!932 (_keys!6365 thiss!1504) (mask!10215 thiss!1504)))))

(declare-fun b!231497 () Bool)

(declare-fun res!113773 () Bool)

(declare-fun e!150300 () Bool)

(assert (=> b!231497 (=> (not res!113773) (not e!150300))))

(declare-fun call!21520 () Bool)

(assert (=> b!231497 (= res!113773 call!21520)))

(declare-fun e!150305 () Bool)

(assert (=> b!231497 (= e!150305 e!150300)))

(declare-fun b!231498 () Bool)

(declare-fun res!113775 () Bool)

(assert (=> b!231498 (=> (not res!113775) (not e!150304))))

(assert (=> b!231498 (= res!113775 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!231499 () Bool)

(declare-fun res!113778 () Bool)

(assert (=> b!231499 (= res!113778 (= (select (arr!5432 (_keys!6365 thiss!1504)) (index!6021 lt!116769)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!150301 () Bool)

(assert (=> b!231499 (=> (not res!113778) (not e!150301))))

(declare-fun mapIsEmpty!10306 () Bool)

(declare-fun mapRes!10306 () Bool)

(assert (=> mapIsEmpty!10306 mapRes!10306))

(declare-fun b!231500 () Bool)

(declare-fun e!150302 () Bool)

(declare-fun tp_is_empty!6091 () Bool)

(assert (=> b!231500 (= e!150302 tp_is_empty!6091)))

(declare-fun bm!21516 () Bool)

(declare-fun c!38451 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!21516 (= call!21520 (inRange!0 (ite c!38451 (index!6018 lt!116769) (index!6021 lt!116769)) (mask!10215 thiss!1504)))))

(declare-fun b!231501 () Bool)

(declare-fun e!150296 () Bool)

(assert (=> b!231501 (= e!150296 (and e!150302 mapRes!10306))))

(declare-fun condMapEmpty!10306 () Bool)

(declare-fun mapDefault!10306 () ValueCell!2702)

