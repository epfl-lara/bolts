; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!22946 () Bool)

(assert start!22946)

(declare-fun b!239452 () Bool)

(declare-fun b_free!6437 () Bool)

(declare-fun b_next!6437 () Bool)

(assert (=> b!239452 (= b_free!6437 (not b_next!6437))))

(declare-fun tp!22515 () Bool)

(declare-fun b_and!13421 () Bool)

(assert (=> b!239452 (= tp!22515 b_and!13421)))

(declare-fun b!239436 () Bool)

(declare-fun c!39900 () Bool)

(declare-datatypes ((SeekEntryResult!1043 0))(
  ( (MissingZero!1043 (index!6342 (_ BitVec 32))) (Found!1043 (index!6343 (_ BitVec 32))) (Intermediate!1043 (undefined!1855 Bool) (index!6344 (_ BitVec 32)) (x!24115 (_ BitVec 32))) (Undefined!1043) (MissingVacant!1043 (index!6345 (_ BitVec 32))) )
))
(declare-fun lt!120823 () SeekEntryResult!1043)

(assert (=> b!239436 (= c!39900 (is-MissingVacant!1043 lt!120823))))

(declare-fun e!155472 () Bool)

(declare-fun e!155476 () Bool)

(assert (=> b!239436 (= e!155472 e!155476)))

(declare-fun b!239437 () Bool)

(declare-fun res!117366 () Bool)

(declare-fun e!155469 () Bool)

(assert (=> b!239437 (=> (not res!117366) (not e!155469))))

(declare-fun key!932 () (_ BitVec 64))

(assert (=> b!239437 (= res!117366 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun bm!22266 () Bool)

(declare-fun call!22269 () Bool)

(declare-datatypes ((V!8045 0))(
  ( (V!8046 (val!3194 Int)) )
))
(declare-datatypes ((ValueCell!2806 0))(
  ( (ValueCellFull!2806 (v!5228 V!8045)) (EmptyCell!2806) )
))
(declare-datatypes ((array!11876 0))(
  ( (array!11877 (arr!5639 (Array (_ BitVec 32) ValueCell!2806)) (size!5980 (_ BitVec 32))) )
))
(declare-datatypes ((array!11878 0))(
  ( (array!11879 (arr!5640 (Array (_ BitVec 32) (_ BitVec 64))) (size!5981 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3512 0))(
  ( (LongMapFixedSize!3513 (defaultEntry!4441 Int) (mask!10487 (_ BitVec 32)) (extraKeys!4178 (_ BitVec 32)) (zeroValue!4282 V!8045) (minValue!4282 V!8045) (_size!1805 (_ BitVec 32)) (_keys!6543 array!11878) (_values!4424 array!11876) (_vacant!1805 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3512)

(declare-fun arrayContainsKey!0 (array!11878 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!22266 (= call!22269 (arrayContainsKey!0 (_keys!6543 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!239438 () Bool)

(declare-fun e!155479 () Bool)

(assert (=> b!239438 (= e!155469 e!155479)))

(declare-fun res!117364 () Bool)

(assert (=> b!239438 (=> (not res!117364) (not e!155479))))

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!239438 (= res!117364 (or (= lt!120823 (MissingZero!1043 index!297)) (= lt!120823 (MissingVacant!1043 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11878 (_ BitVec 32)) SeekEntryResult!1043)

(assert (=> b!239438 (= lt!120823 (seekEntryOrOpen!0 key!932 (_keys!6543 thiss!1504) (mask!10487 thiss!1504)))))

(declare-fun b!239439 () Bool)

(declare-fun e!155473 () Bool)

(assert (=> b!239439 (= e!155476 e!155473)))

(declare-fun res!117363 () Bool)

(declare-fun call!22270 () Bool)

(assert (=> b!239439 (= res!117363 call!22270)))

(assert (=> b!239439 (=> (not res!117363) (not e!155473))))

(declare-fun b!239440 () Bool)

(assert (=> b!239440 (= e!155476 (is-Undefined!1043 lt!120823))))

(declare-fun mapNonEmpty!10680 () Bool)

(declare-fun mapRes!10680 () Bool)

(declare-fun tp!22514 () Bool)

(declare-fun e!155475 () Bool)

(assert (=> mapNonEmpty!10680 (= mapRes!10680 (and tp!22514 e!155475))))

(declare-fun mapValue!10680 () ValueCell!2806)

(declare-fun mapKey!10680 () (_ BitVec 32))

(declare-fun mapRest!10680 () (Array (_ BitVec 32) ValueCell!2806))

(assert (=> mapNonEmpty!10680 (= (arr!5639 (_values!4424 thiss!1504)) (store mapRest!10680 mapKey!10680 mapValue!10680))))

(declare-fun b!239441 () Bool)

(declare-fun e!155474 () Bool)

(assert (=> b!239441 (= e!155479 e!155474)))

(declare-fun res!117370 () Bool)

(assert (=> b!239441 (=> (not res!117370) (not e!155474))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!239441 (= res!117370 (inRange!0 index!297 (mask!10487 thiss!1504)))))

(declare-datatypes ((Unit!7353 0))(
  ( (Unit!7354) )
))
(declare-fun lt!120822 () Unit!7353)

(declare-fun e!155478 () Unit!7353)

(assert (=> b!239441 (= lt!120822 e!155478)))

(declare-fun c!39901 () Bool)

(declare-datatypes ((tuple2!4702 0))(
  ( (tuple2!4703 (_1!2361 (_ BitVec 64)) (_2!2361 V!8045)) )
))
(declare-datatypes ((List!3615 0))(
  ( (Nil!3612) (Cons!3611 (h!4267 tuple2!4702) (t!8618 List!3615)) )
))
(declare-datatypes ((ListLongMap!3629 0))(
  ( (ListLongMap!3630 (toList!1830 List!3615)) )
))
(declare-fun contains!1712 (ListLongMap!3629 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1353 (array!11878 array!11876 (_ BitVec 32) (_ BitVec 32) V!8045 V!8045 (_ BitVec 32) Int) ListLongMap!3629)

(assert (=> b!239441 (= c!39901 (contains!1712 (getCurrentListMap!1353 (_keys!6543 thiss!1504) (_values!4424 thiss!1504) (mask!10487 thiss!1504) (extraKeys!4178 thiss!1504) (zeroValue!4282 thiss!1504) (minValue!4282 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4441 thiss!1504)) key!932))))

(declare-fun b!239442 () Bool)

(declare-fun lt!120821 () Unit!7353)

(assert (=> b!239442 (= e!155478 lt!120821)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!342 (array!11878 array!11876 (_ BitVec 32) (_ BitVec 32) V!8045 V!8045 (_ BitVec 64) Int) Unit!7353)

(assert (=> b!239442 (= lt!120821 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!342 (_keys!6543 thiss!1504) (_values!4424 thiss!1504) (mask!10487 thiss!1504) (extraKeys!4178 thiss!1504) (zeroValue!4282 thiss!1504) (minValue!4282 thiss!1504) key!932 (defaultEntry!4441 thiss!1504)))))

(declare-fun c!39899 () Bool)

(assert (=> b!239442 (= c!39899 (is-MissingZero!1043 lt!120823))))

(assert (=> b!239442 e!155472))

(declare-fun b!239443 () Bool)

(declare-fun e!155470 () Bool)

(declare-fun tp_is_empty!6299 () Bool)

(assert (=> b!239443 (= e!155470 tp_is_empty!6299)))

(declare-fun b!239444 () Bool)

(declare-fun e!155468 () Bool)

(assert (=> b!239444 (= e!155468 (not call!22269))))

(declare-fun mapIsEmpty!10680 () Bool)

(assert (=> mapIsEmpty!10680 mapRes!10680))

(declare-fun b!239446 () Bool)

(declare-fun res!117365 () Bool)

(assert (=> b!239446 (=> (not res!117365) (not e!155474))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!239446 (= res!117365 (validMask!0 (mask!10487 thiss!1504)))))

(declare-fun b!239447 () Bool)

(declare-fun res!117368 () Bool)

(assert (=> b!239447 (=> (not res!117368) (not e!155474))))

(assert (=> b!239447 (= res!117368 (arrayContainsKey!0 (_keys!6543 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!239448 () Bool)

(declare-fun res!117369 () Bool)

(assert (=> b!239448 (=> (not res!117369) (not e!155468))))

(assert (=> b!239448 (= res!117369 call!22270)))

(assert (=> b!239448 (= e!155472 e!155468)))

(declare-fun b!239449 () Bool)

(declare-fun Unit!7355 () Unit!7353)

(assert (=> b!239449 (= e!155478 Unit!7355)))

(declare-fun lt!120820 () Unit!7353)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!329 (array!11878 array!11876 (_ BitVec 32) (_ BitVec 32) V!8045 V!8045 (_ BitVec 64) Int) Unit!7353)

(assert (=> b!239449 (= lt!120820 (lemmaInListMapThenSeekEntryOrOpenFindsIt!329 (_keys!6543 thiss!1504) (_values!4424 thiss!1504) (mask!10487 thiss!1504) (extraKeys!4178 thiss!1504) (zeroValue!4282 thiss!1504) (minValue!4282 thiss!1504) key!932 (defaultEntry!4441 thiss!1504)))))

(assert (=> b!239449 false))

(declare-fun b!239450 () Bool)

(assert (=> b!239450 (= e!155475 tp_is_empty!6299)))

(declare-fun b!239451 () Bool)

(declare-fun res!117367 () Bool)

(assert (=> b!239451 (=> (not res!117367) (not e!155468))))

(assert (=> b!239451 (= res!117367 (= (select (arr!5640 (_keys!6543 thiss!1504)) (index!6342 lt!120823)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!155477 () Bool)

(declare-fun e!155471 () Bool)

(declare-fun array_inv!3721 (array!11878) Bool)

(declare-fun array_inv!3722 (array!11876) Bool)

(assert (=> b!239452 (= e!155471 (and tp!22515 tp_is_empty!6299 (array_inv!3721 (_keys!6543 thiss!1504)) (array_inv!3722 (_values!4424 thiss!1504)) e!155477))))

(declare-fun res!117371 () Bool)

(assert (=> start!22946 (=> (not res!117371) (not e!155469))))

(declare-fun valid!1377 (LongMapFixedSize!3512) Bool)

(assert (=> start!22946 (= res!117371 (valid!1377 thiss!1504))))

(assert (=> start!22946 e!155469))

(assert (=> start!22946 e!155471))

(assert (=> start!22946 true))

(declare-fun b!239445 () Bool)

(assert (=> b!239445 (= e!155477 (and e!155470 mapRes!10680))))

(declare-fun condMapEmpty!10680 () Bool)

(declare-fun mapDefault!10680 () ValueCell!2806)

