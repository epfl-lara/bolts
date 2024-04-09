; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!22106 () Bool)

(assert start!22106)

(declare-fun b!229439 () Bool)

(declare-fun b_free!6161 () Bool)

(declare-fun b_next!6161 () Bool)

(assert (=> b!229439 (= b_free!6161 (not b_next!6161))))

(declare-fun tp!21624 () Bool)

(declare-fun b_and!13077 () Bool)

(assert (=> b!229439 (= tp!21624 b_and!13077)))

(declare-fun bm!21312 () Bool)

(declare-fun call!21316 () Bool)

(declare-datatypes ((V!7677 0))(
  ( (V!7678 (val!3056 Int)) )
))
(declare-datatypes ((ValueCell!2668 0))(
  ( (ValueCellFull!2668 (v!5072 V!7677)) (EmptyCell!2668) )
))
(declare-datatypes ((array!11288 0))(
  ( (array!11289 (arr!5363 (Array (_ BitVec 32) ValueCell!2668)) (size!5696 (_ BitVec 32))) )
))
(declare-datatypes ((array!11290 0))(
  ( (array!11291 (arr!5364 (Array (_ BitVec 32) (_ BitVec 64))) (size!5697 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3236 0))(
  ( (LongMapFixedSize!3237 (defaultEntry!4277 Int) (mask!10157 (_ BitVec 32)) (extraKeys!4014 (_ BitVec 32)) (zeroValue!4118 V!7677) (minValue!4118 V!7677) (_size!1667 (_ BitVec 32)) (_keys!6331 array!11290) (_values!4260 array!11288) (_vacant!1667 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3236)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!11290 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!21312 (= call!21316 (arrayContainsKey!0 (_keys!6331 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!229426 () Bool)

(declare-fun res!112928 () Bool)

(declare-fun e!148860 () Bool)

(assert (=> b!229426 (=> res!112928 e!148860)))

(assert (=> b!229426 (= res!112928 (or (not (= (size!5696 (_values!4260 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!10157 thiss!1504)))) (not (= (size!5697 (_keys!6331 thiss!1504)) (size!5696 (_values!4260 thiss!1504)))) (bvslt (mask!10157 thiss!1504) #b00000000000000000000000000000000) (bvslt (extraKeys!4014 thiss!1504) #b00000000000000000000000000000000) (bvsgt (extraKeys!4014 thiss!1504) #b00000000000000000000000000000011)))))

(declare-fun b!229427 () Bool)

(declare-datatypes ((Unit!6999 0))(
  ( (Unit!7000) )
))
(declare-fun e!148866 () Unit!6999)

(declare-fun Unit!7001 () Unit!6999)

(assert (=> b!229427 (= e!148866 Unit!7001)))

(declare-fun lt!115444 () Unit!6999)

(declare-fun lemmaArrayContainsKeyThenInListMap!116 (array!11290 array!11288 (_ BitVec 32) (_ BitVec 32) V!7677 V!7677 (_ BitVec 64) (_ BitVec 32) Int) Unit!6999)

(assert (=> b!229427 (= lt!115444 (lemmaArrayContainsKeyThenInListMap!116 (_keys!6331 thiss!1504) (_values!4260 thiss!1504) (mask!10157 thiss!1504) (extraKeys!4014 thiss!1504) (zeroValue!4118 thiss!1504) (minValue!4118 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4277 thiss!1504)))))

(assert (=> b!229427 false))

(declare-fun call!21315 () Bool)

(declare-fun bm!21313 () Bool)

(declare-fun c!38043 () Bool)

(declare-datatypes ((SeekEntryResult!932 0))(
  ( (MissingZero!932 (index!5898 (_ BitVec 32))) (Found!932 (index!5899 (_ BitVec 32))) (Intermediate!932 (undefined!1744 Bool) (index!5900 (_ BitVec 32)) (x!23392 (_ BitVec 32))) (Undefined!932) (MissingVacant!932 (index!5901 (_ BitVec 32))) )
))
(declare-fun lt!115447 () SeekEntryResult!932)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!21313 (= call!21315 (inRange!0 (ite c!38043 (index!5898 lt!115447) (index!5901 lt!115447)) (mask!10157 thiss!1504)))))

(declare-fun b!229428 () Bool)

(declare-fun res!112927 () Bool)

(assert (=> b!229428 (=> res!112927 e!148860)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!11290 (_ BitVec 32)) Bool)

(assert (=> b!229428 (= res!112927 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6331 thiss!1504) (mask!10157 thiss!1504))))))

(declare-fun b!229429 () Bool)

(declare-fun res!112933 () Bool)

(assert (=> b!229429 (= res!112933 (= (select (arr!5364 (_keys!6331 thiss!1504)) (index!5901 lt!115447)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!148870 () Bool)

(assert (=> b!229429 (=> (not res!112933) (not e!148870))))

(declare-fun b!229430 () Bool)

(declare-fun res!112926 () Bool)

(declare-fun e!148867 () Bool)

(assert (=> b!229430 (=> (not res!112926) (not e!148867))))

(assert (=> b!229430 (= res!112926 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!229431 () Bool)

(declare-fun e!148863 () Bool)

(assert (=> b!229431 (= e!148867 e!148863)))

(declare-fun res!112932 () Bool)

(assert (=> b!229431 (=> (not res!112932) (not e!148863))))

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!229431 (= res!112932 (or (= lt!115447 (MissingZero!932 index!297)) (= lt!115447 (MissingVacant!932 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11290 (_ BitVec 32)) SeekEntryResult!932)

(assert (=> b!229431 (= lt!115447 (seekEntryOrOpen!0 key!932 (_keys!6331 thiss!1504) (mask!10157 thiss!1504)))))

(declare-fun b!229432 () Bool)

(declare-fun e!148864 () Bool)

(declare-fun e!148858 () Bool)

(declare-fun mapRes!10204 () Bool)

(assert (=> b!229432 (= e!148864 (and e!148858 mapRes!10204))))

(declare-fun condMapEmpty!10204 () Bool)

(declare-fun mapDefault!10204 () ValueCell!2668)

