; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!23130 () Bool)

(assert start!23130)

(declare-fun b!242400 () Bool)

(declare-fun b_free!6509 () Bool)

(declare-fun b_next!6509 () Bool)

(assert (=> b!242400 (= b_free!6509 (not b_next!6509))))

(declare-fun tp!22741 () Bool)

(declare-fun b_and!13503 () Bool)

(assert (=> b!242400 (= tp!22741 b_and!13503)))

(declare-fun b!242397 () Bool)

(declare-fun e!157344 () Bool)

(declare-datatypes ((List!3656 0))(
  ( (Nil!3653) (Cons!3652 (h!4309 (_ BitVec 64)) (t!8665 List!3656)) )
))
(declare-fun contains!1743 (List!3656 (_ BitVec 64)) Bool)

(assert (=> b!242397 (= e!157344 (contains!1743 Nil!3653 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!242398 () Bool)

(declare-fun res!118784 () Bool)

(declare-fun e!157337 () Bool)

(assert (=> b!242398 (=> (not res!118784) (not e!157337))))

(declare-fun call!22585 () Bool)

(assert (=> b!242398 (= res!118784 call!22585)))

(declare-fun e!157347 () Bool)

(assert (=> b!242398 (= e!157347 e!157337)))

(declare-fun b!242399 () Bool)

(declare-fun res!118785 () Bool)

(declare-fun e!157341 () Bool)

(assert (=> b!242399 (=> (not res!118785) (not e!157341))))

(declare-fun key!932 () (_ BitVec 64))

(assert (=> b!242399 (= res!118785 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun tp_is_empty!6371 () Bool)

(declare-fun e!157333 () Bool)

(declare-fun e!157346 () Bool)

(declare-datatypes ((V!8141 0))(
  ( (V!8142 (val!3230 Int)) )
))
(declare-datatypes ((ValueCell!2842 0))(
  ( (ValueCellFull!2842 (v!5267 V!8141)) (EmptyCell!2842) )
))
(declare-datatypes ((array!12026 0))(
  ( (array!12027 (arr!5711 (Array (_ BitVec 32) ValueCell!2842)) (size!6053 (_ BitVec 32))) )
))
(declare-datatypes ((array!12028 0))(
  ( (array!12029 (arr!5712 (Array (_ BitVec 32) (_ BitVec 64))) (size!6054 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3584 0))(
  ( (LongMapFixedSize!3585 (defaultEntry!4493 Int) (mask!10574 (_ BitVec 32)) (extraKeys!4230 (_ BitVec 32)) (zeroValue!4334 V!8141) (minValue!4334 V!8141) (_size!1841 (_ BitVec 32)) (_keys!6601 array!12028) (_values!4476 array!12026) (_vacant!1841 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3584)

(declare-fun array_inv!3769 (array!12028) Bool)

(declare-fun array_inv!3770 (array!12026) Bool)

(assert (=> b!242400 (= e!157346 (and tp!22741 tp_is_empty!6371 (array_inv!3769 (_keys!6601 thiss!1504)) (array_inv!3770 (_values!4476 thiss!1504)) e!157333))))

(declare-fun b!242401 () Bool)

(declare-fun e!157345 () Bool)

(assert (=> b!242401 (= e!157341 e!157345)))

(declare-fun res!118786 () Bool)

(assert (=> b!242401 (=> (not res!118786) (not e!157345))))

(declare-datatypes ((SeekEntryResult!1075 0))(
  ( (MissingZero!1075 (index!6470 (_ BitVec 32))) (Found!1075 (index!6471 (_ BitVec 32))) (Intermediate!1075 (undefined!1887 Bool) (index!6472 (_ BitVec 32)) (x!24281 (_ BitVec 32))) (Undefined!1075) (MissingVacant!1075 (index!6473 (_ BitVec 32))) )
))
(declare-fun lt!121791 () SeekEntryResult!1075)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!242401 (= res!118786 (or (= lt!121791 (MissingZero!1075 index!297)) (= lt!121791 (MissingVacant!1075 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12028 (_ BitVec 32)) SeekEntryResult!1075)

(assert (=> b!242401 (= lt!121791 (seekEntryOrOpen!0 key!932 (_keys!6601 thiss!1504) (mask!10574 thiss!1504)))))

(declare-fun b!242402 () Bool)

(declare-fun e!157343 () Bool)

(declare-fun call!22584 () Bool)

(assert (=> b!242402 (= e!157343 (not call!22584))))

(declare-fun mapIsEmpty!10798 () Bool)

(declare-fun mapRes!10798 () Bool)

(assert (=> mapIsEmpty!10798 mapRes!10798))

(declare-fun b!242403 () Bool)

(declare-fun e!157336 () Bool)

(assert (=> b!242403 (= e!157336 (is-Undefined!1075 lt!121791))))

(declare-fun b!242404 () Bool)

(declare-datatypes ((Unit!7475 0))(
  ( (Unit!7476) )
))
(declare-fun e!157335 () Unit!7475)

(declare-fun Unit!7477 () Unit!7475)

(assert (=> b!242404 (= e!157335 Unit!7477)))

(declare-fun lt!121792 () Unit!7475)

(declare-fun lemmaArrayContainsKeyThenInListMap!159 (array!12028 array!12026 (_ BitVec 32) (_ BitVec 32) V!8141 V!8141 (_ BitVec 64) (_ BitVec 32) Int) Unit!7475)

(assert (=> b!242404 (= lt!121792 (lemmaArrayContainsKeyThenInListMap!159 (_keys!6601 thiss!1504) (_values!4476 thiss!1504) (mask!10574 thiss!1504) (extraKeys!4230 thiss!1504) (zeroValue!4334 thiss!1504) (minValue!4334 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4493 thiss!1504)))))

(assert (=> b!242404 false))

(declare-fun b!242405 () Bool)

(declare-fun res!118788 () Bool)

(assert (=> b!242405 (=> (not res!118788) (not e!157337))))

(assert (=> b!242405 (= res!118788 (= (select (arr!5712 (_keys!6601 thiss!1504)) (index!6470 lt!121791)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!242406 () Bool)

(declare-fun res!118793 () Bool)

(declare-fun e!157334 () Bool)

(assert (=> b!242406 (=> (not res!118793) (not e!157334))))

(declare-fun noDuplicate!90 (List!3656) Bool)

(assert (=> b!242406 (= res!118793 (noDuplicate!90 Nil!3653))))

(declare-fun b!242407 () Bool)

(declare-fun Unit!7478 () Unit!7475)

(assert (=> b!242407 (= e!157335 Unit!7478)))

(declare-fun bm!22581 () Bool)

(declare-fun c!40437 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!22581 (= call!22585 (inRange!0 (ite c!40437 (index!6470 lt!121791) (index!6473 lt!121791)) (mask!10574 thiss!1504)))))

(declare-fun bm!22582 () Bool)

(declare-fun arrayContainsKey!0 (array!12028 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!22582 (= call!22584 (arrayContainsKey!0 (_keys!6601 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun mapNonEmpty!10798 () Bool)

(declare-fun tp!22740 () Bool)

(declare-fun e!157342 () Bool)

(assert (=> mapNonEmpty!10798 (= mapRes!10798 (and tp!22740 e!157342))))

(declare-fun mapKey!10798 () (_ BitVec 32))

(declare-fun mapValue!10798 () ValueCell!2842)

(declare-fun mapRest!10798 () (Array (_ BitVec 32) ValueCell!2842))

(assert (=> mapNonEmpty!10798 (= (arr!5711 (_values!4476 thiss!1504)) (store mapRest!10798 mapKey!10798 mapValue!10798))))

(declare-fun res!118790 () Bool)

(assert (=> start!23130 (=> (not res!118790) (not e!157341))))

(declare-fun valid!1398 (LongMapFixedSize!3584) Bool)

(assert (=> start!23130 (= res!118790 (valid!1398 thiss!1504))))

(assert (=> start!23130 e!157341))

(assert (=> start!23130 e!157346))

(assert (=> start!23130 true))

(declare-fun b!242408 () Bool)

(assert (=> b!242408 (= e!157337 (not call!22584))))

(declare-fun b!242409 () Bool)

(declare-fun c!40439 () Bool)

(assert (=> b!242409 (= c!40439 (is-MissingVacant!1075 lt!121791))))

(assert (=> b!242409 (= e!157347 e!157336)))

(declare-fun b!242410 () Bool)

(declare-fun e!157339 () Bool)

(assert (=> b!242410 (= e!157333 (and e!157339 mapRes!10798))))

(declare-fun condMapEmpty!10798 () Bool)

(declare-fun mapDefault!10798 () ValueCell!2842)

