; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!22952 () Bool)

(assert start!22952)

(declare-fun b!239631 () Bool)

(declare-fun b_free!6443 () Bool)

(declare-fun b_next!6443 () Bool)

(assert (=> b!239631 (= b_free!6443 (not b_next!6443))))

(declare-fun tp!22532 () Bool)

(declare-fun b_and!13427 () Bool)

(assert (=> b!239631 (= tp!22532 b_and!13427)))

(declare-fun b!239616 () Bool)

(declare-fun res!117453 () Bool)

(declare-fun e!155589 () Bool)

(assert (=> b!239616 (=> (not res!117453) (not e!155589))))

(declare-fun key!932 () (_ BitVec 64))

(assert (=> b!239616 (= res!117453 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!239617 () Bool)

(declare-datatypes ((Unit!7359 0))(
  ( (Unit!7360) )
))
(declare-fun e!155594 () Unit!7359)

(declare-fun Unit!7361 () Unit!7359)

(assert (=> b!239617 (= e!155594 Unit!7361)))

(declare-fun lt!120859 () Unit!7359)

(declare-datatypes ((V!8053 0))(
  ( (V!8054 (val!3197 Int)) )
))
(declare-datatypes ((ValueCell!2809 0))(
  ( (ValueCellFull!2809 (v!5231 V!8053)) (EmptyCell!2809) )
))
(declare-datatypes ((array!11888 0))(
  ( (array!11889 (arr!5645 (Array (_ BitVec 32) ValueCell!2809)) (size!5986 (_ BitVec 32))) )
))
(declare-datatypes ((array!11890 0))(
  ( (array!11891 (arr!5646 (Array (_ BitVec 32) (_ BitVec 64))) (size!5987 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3518 0))(
  ( (LongMapFixedSize!3519 (defaultEntry!4444 Int) (mask!10492 (_ BitVec 32)) (extraKeys!4181 (_ BitVec 32)) (zeroValue!4285 V!8053) (minValue!4285 V!8053) (_size!1808 (_ BitVec 32)) (_keys!6546 array!11890) (_values!4427 array!11888) (_vacant!1808 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3518)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!331 (array!11890 array!11888 (_ BitVec 32) (_ BitVec 32) V!8053 V!8053 (_ BitVec 64) Int) Unit!7359)

(assert (=> b!239617 (= lt!120859 (lemmaInListMapThenSeekEntryOrOpenFindsIt!331 (_keys!6546 thiss!1504) (_values!4427 thiss!1504) (mask!10492 thiss!1504) (extraKeys!4181 thiss!1504) (zeroValue!4285 thiss!1504) (minValue!4285 thiss!1504) key!932 (defaultEntry!4444 thiss!1504)))))

(assert (=> b!239617 false))

(declare-fun b!239618 () Bool)

(declare-fun e!155596 () Bool)

(assert (=> b!239618 (= e!155589 e!155596)))

(declare-fun res!117454 () Bool)

(assert (=> b!239618 (=> (not res!117454) (not e!155596))))

(declare-datatypes ((SeekEntryResult!1045 0))(
  ( (MissingZero!1045 (index!6350 (_ BitVec 32))) (Found!1045 (index!6351 (_ BitVec 32))) (Intermediate!1045 (undefined!1857 Bool) (index!6352 (_ BitVec 32)) (x!24125 (_ BitVec 32))) (Undefined!1045) (MissingVacant!1045 (index!6353 (_ BitVec 32))) )
))
(declare-fun lt!120857 () SeekEntryResult!1045)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!239618 (= res!117454 (or (= lt!120857 (MissingZero!1045 index!297)) (= lt!120857 (MissingVacant!1045 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11890 (_ BitVec 32)) SeekEntryResult!1045)

(assert (=> b!239618 (= lt!120857 (seekEntryOrOpen!0 key!932 (_keys!6546 thiss!1504) (mask!10492 thiss!1504)))))

(declare-fun b!239619 () Bool)

(declare-fun res!117460 () Bool)

(declare-fun e!155597 () Bool)

(assert (=> b!239619 (=> (not res!117460) (not e!155597))))

(declare-fun arrayContainsKey!0 (array!11890 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!239619 (= res!117460 (arrayContainsKey!0 (_keys!6546 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun res!117457 () Bool)

(assert (=> start!22952 (=> (not res!117457) (not e!155589))))

(declare-fun valid!1379 (LongMapFixedSize!3518) Bool)

(assert (=> start!22952 (= res!117457 (valid!1379 thiss!1504))))

(assert (=> start!22952 e!155589))

(declare-fun e!155590 () Bool)

(assert (=> start!22952 e!155590))

(assert (=> start!22952 true))

(declare-fun b!239620 () Bool)

(declare-fun e!155593 () Bool)

(declare-fun call!22287 () Bool)

(assert (=> b!239620 (= e!155593 (not call!22287))))

(declare-fun b!239621 () Bool)

(declare-fun e!155592 () Bool)

(assert (=> b!239621 (= e!155592 (not call!22287))))

(declare-fun mapNonEmpty!10689 () Bool)

(declare-fun mapRes!10689 () Bool)

(declare-fun tp!22533 () Bool)

(declare-fun e!155585 () Bool)

(assert (=> mapNonEmpty!10689 (= mapRes!10689 (and tp!22533 e!155585))))

(declare-fun mapRest!10689 () (Array (_ BitVec 32) ValueCell!2809))

(declare-fun mapKey!10689 () (_ BitVec 32))

(declare-fun mapValue!10689 () ValueCell!2809)

(assert (=> mapNonEmpty!10689 (= (arr!5645 (_values!4427 thiss!1504)) (store mapRest!10689 mapKey!10689 mapValue!10689))))

(declare-fun b!239622 () Bool)

(declare-fun res!117456 () Bool)

(assert (=> b!239622 (=> (not res!117456) (not e!155597))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!239622 (= res!117456 (validMask!0 (mask!10492 thiss!1504)))))

(declare-fun b!239623 () Bool)

(assert (=> b!239623 (= e!155597 (and (= (size!5986 (_values!4427 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!10492 thiss!1504))) (= (size!5987 (_keys!6546 thiss!1504)) (size!5986 (_values!4427 thiss!1504))) (bvsge (mask!10492 thiss!1504) #b00000000000000000000000000000000) (bvsge (extraKeys!4181 thiss!1504) #b00000000000000000000000000000000) (bvsgt (extraKeys!4181 thiss!1504) #b00000000000000000000000000000011)))))

(declare-fun b!239624 () Bool)

(declare-fun e!155586 () Bool)

(declare-fun tp_is_empty!6305 () Bool)

(assert (=> b!239624 (= e!155586 tp_is_empty!6305)))

(declare-fun b!239625 () Bool)

(declare-fun e!155588 () Bool)

(assert (=> b!239625 (= e!155588 e!155592)))

(declare-fun res!117455 () Bool)

(declare-fun call!22288 () Bool)

(assert (=> b!239625 (= res!117455 call!22288)))

(assert (=> b!239625 (=> (not res!117455) (not e!155592))))

(declare-fun b!239626 () Bool)

(assert (=> b!239626 (= e!155596 e!155597)))

(declare-fun res!117458 () Bool)

(assert (=> b!239626 (=> (not res!117458) (not e!155597))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!239626 (= res!117458 (inRange!0 index!297 (mask!10492 thiss!1504)))))

(declare-fun lt!120858 () Unit!7359)

(assert (=> b!239626 (= lt!120858 e!155594)))

(declare-fun c!39927 () Bool)

(declare-datatypes ((tuple2!4706 0))(
  ( (tuple2!4707 (_1!2363 (_ BitVec 64)) (_2!2363 V!8053)) )
))
(declare-datatypes ((List!3617 0))(
  ( (Nil!3614) (Cons!3613 (h!4269 tuple2!4706) (t!8620 List!3617)) )
))
(declare-datatypes ((ListLongMap!3633 0))(
  ( (ListLongMap!3634 (toList!1832 List!3617)) )
))
(declare-fun contains!1714 (ListLongMap!3633 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1355 (array!11890 array!11888 (_ BitVec 32) (_ BitVec 32) V!8053 V!8053 (_ BitVec 32) Int) ListLongMap!3633)

(assert (=> b!239626 (= c!39927 (contains!1714 (getCurrentListMap!1355 (_keys!6546 thiss!1504) (_values!4427 thiss!1504) (mask!10492 thiss!1504) (extraKeys!4181 thiss!1504) (zeroValue!4285 thiss!1504) (minValue!4285 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4444 thiss!1504)) key!932))))

(declare-fun b!239627 () Bool)

(declare-fun res!117452 () Bool)

(assert (=> b!239627 (=> (not res!117452) (not e!155593))))

(assert (=> b!239627 (= res!117452 (= (select (arr!5646 (_keys!6546 thiss!1504)) (index!6350 lt!120857)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun c!39928 () Bool)

(declare-fun bm!22284 () Bool)

(assert (=> bm!22284 (= call!22288 (inRange!0 (ite c!39928 (index!6350 lt!120857) (index!6353 lt!120857)) (mask!10492 thiss!1504)))))

(declare-fun b!239628 () Bool)

(declare-fun res!117461 () Bool)

(assert (=> b!239628 (= res!117461 (= (select (arr!5646 (_keys!6546 thiss!1504)) (index!6353 lt!120857)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!239628 (=> (not res!117461) (not e!155592))))

(declare-fun b!239629 () Bool)

(assert (=> b!239629 (= e!155585 tp_is_empty!6305)))

(declare-fun mapIsEmpty!10689 () Bool)

(assert (=> mapIsEmpty!10689 mapRes!10689))

(declare-fun b!239630 () Bool)

(declare-fun res!117459 () Bool)

(assert (=> b!239630 (=> (not res!117459) (not e!155593))))

(assert (=> b!239630 (= res!117459 call!22288)))

(declare-fun e!155587 () Bool)

(assert (=> b!239630 (= e!155587 e!155593)))

(declare-fun e!155595 () Bool)

(declare-fun array_inv!3725 (array!11890) Bool)

(declare-fun array_inv!3726 (array!11888) Bool)

(assert (=> b!239631 (= e!155590 (and tp!22532 tp_is_empty!6305 (array_inv!3725 (_keys!6546 thiss!1504)) (array_inv!3726 (_values!4427 thiss!1504)) e!155595))))

(declare-fun b!239632 () Bool)

(declare-fun lt!120856 () Unit!7359)

(assert (=> b!239632 (= e!155594 lt!120856)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!344 (array!11890 array!11888 (_ BitVec 32) (_ BitVec 32) V!8053 V!8053 (_ BitVec 64) Int) Unit!7359)

(assert (=> b!239632 (= lt!120856 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!344 (_keys!6546 thiss!1504) (_values!4427 thiss!1504) (mask!10492 thiss!1504) (extraKeys!4181 thiss!1504) (zeroValue!4285 thiss!1504) (minValue!4285 thiss!1504) key!932 (defaultEntry!4444 thiss!1504)))))

(assert (=> b!239632 (= c!39928 (is-MissingZero!1045 lt!120857))))

(assert (=> b!239632 e!155587))

(declare-fun bm!22285 () Bool)

(assert (=> bm!22285 (= call!22287 (arrayContainsKey!0 (_keys!6546 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!239633 () Bool)

(declare-fun c!39926 () Bool)

(assert (=> b!239633 (= c!39926 (is-MissingVacant!1045 lt!120857))))

(assert (=> b!239633 (= e!155587 e!155588)))

(declare-fun b!239634 () Bool)

(assert (=> b!239634 (= e!155588 (is-Undefined!1045 lt!120857))))

(declare-fun b!239635 () Bool)

(assert (=> b!239635 (= e!155595 (and e!155586 mapRes!10689))))

(declare-fun condMapEmpty!10689 () Bool)

(declare-fun mapDefault!10689 () ValueCell!2809)

