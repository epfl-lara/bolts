; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21994 () Bool)

(assert start!21994)

(declare-fun b!225466 () Bool)

(declare-fun b_free!6049 () Bool)

(declare-fun b_next!6049 () Bool)

(assert (=> b!225466 (= b_free!6049 (not b_next!6049))))

(declare-fun tp!21289 () Bool)

(declare-fun b_and!12965 () Bool)

(assert (=> b!225466 (= tp!21289 b_and!12965)))

(declare-fun b!225458 () Bool)

(declare-fun e!146350 () Bool)

(assert (=> b!225458 (= e!146350 true)))

(declare-fun lt!113599 () Bool)

(declare-datatypes ((V!7529 0))(
  ( (V!7530 (val!3000 Int)) )
))
(declare-datatypes ((ValueCell!2612 0))(
  ( (ValueCellFull!2612 (v!5016 V!7529)) (EmptyCell!2612) )
))
(declare-datatypes ((array!11064 0))(
  ( (array!11065 (arr!5251 (Array (_ BitVec 32) ValueCell!2612)) (size!5584 (_ BitVec 32))) )
))
(declare-datatypes ((array!11066 0))(
  ( (array!11067 (arr!5252 (Array (_ BitVec 32) (_ BitVec 64))) (size!5585 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3124 0))(
  ( (LongMapFixedSize!3125 (defaultEntry!4221 Int) (mask!10065 (_ BitVec 32)) (extraKeys!3958 (_ BitVec 32)) (zeroValue!4062 V!7529) (minValue!4062 V!7529) (_size!1611 (_ BitVec 32)) (_keys!6275 array!11066) (_values!4204 array!11064) (_vacant!1611 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3124)

(declare-datatypes ((List!3376 0))(
  ( (Nil!3373) (Cons!3372 (h!4020 (_ BitVec 64)) (t!8343 List!3376)) )
))
(declare-fun arrayNoDuplicates!0 (array!11066 (_ BitVec 32) List!3376) Bool)

(assert (=> b!225458 (= lt!113599 (arrayNoDuplicates!0 (_keys!6275 thiss!1504) #b00000000000000000000000000000000 Nil!3373))))

(declare-fun b!225459 () Bool)

(declare-fun res!110981 () Bool)

(assert (=> b!225459 (=> res!110981 e!146350)))

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!225459 (= res!110981 (or (not (= (size!5585 (_keys!6275 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!10065 thiss!1504)))) (bvslt index!297 #b00000000000000000000000000000000) (bvsge index!297 (size!5585 (_keys!6275 thiss!1504)))))))

(declare-fun res!110983 () Bool)

(declare-fun e!146348 () Bool)

(assert (=> start!21994 (=> (not res!110983) (not e!146348))))

(declare-fun valid!1250 (LongMapFixedSize!3124) Bool)

(assert (=> start!21994 (= res!110983 (valid!1250 thiss!1504))))

(assert (=> start!21994 e!146348))

(declare-fun e!146346 () Bool)

(assert (=> start!21994 e!146346))

(assert (=> start!21994 true))

(declare-fun b!225460 () Bool)

(declare-fun e!146337 () Bool)

(declare-fun tp_is_empty!5911 () Bool)

(assert (=> b!225460 (= e!146337 tp_is_empty!5911)))

(declare-fun mapIsEmpty!10036 () Bool)

(declare-fun mapRes!10036 () Bool)

(assert (=> mapIsEmpty!10036 mapRes!10036))

(declare-fun bm!20976 () Bool)

(declare-fun call!20980 () Bool)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!11066 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!20976 (= call!20980 (arrayContainsKey!0 (_keys!6275 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!225461 () Bool)

(declare-fun res!110978 () Bool)

(assert (=> b!225461 (=> res!110978 e!146350)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!225461 (= res!110978 (not (validKeyInArray!0 key!932)))))

(declare-fun b!225462 () Bool)

(declare-fun e!146344 () Bool)

(assert (=> b!225462 (= e!146344 (not e!146350))))

(declare-fun res!110977 () Bool)

(assert (=> b!225462 (=> res!110977 e!146350)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!225462 (= res!110977 (not (validMask!0 (mask!10065 thiss!1504))))))

(declare-fun lt!113595 () array!11066)

(declare-fun arrayCountValidKeys!0 (array!11066 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!225462 (= (arrayCountValidKeys!0 lt!113595 #b00000000000000000000000000000000 (size!5585 (_keys!6275 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6275 thiss!1504) #b00000000000000000000000000000000 (size!5585 (_keys!6275 thiss!1504)))))))

(declare-datatypes ((Unit!6797 0))(
  ( (Unit!6798) )
))
(declare-fun lt!113604 () Unit!6797)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!11066 (_ BitVec 32) (_ BitVec 64)) Unit!6797)

(assert (=> b!225462 (= lt!113604 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6275 thiss!1504) index!297 key!932))))

(assert (=> b!225462 (arrayNoDuplicates!0 lt!113595 #b00000000000000000000000000000000 Nil!3373)))

(assert (=> b!225462 (= lt!113595 (array!11067 (store (arr!5252 (_keys!6275 thiss!1504)) index!297 key!932) (size!5585 (_keys!6275 thiss!1504))))))

(declare-fun lt!113594 () Unit!6797)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!11066 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3376) Unit!6797)

(assert (=> b!225462 (= lt!113594 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6275 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3373))))

(declare-fun lt!113597 () Unit!6797)

(declare-fun e!146343 () Unit!6797)

(assert (=> b!225462 (= lt!113597 e!146343)))

(declare-fun c!37372 () Bool)

(declare-fun lt!113596 () Bool)

(assert (=> b!225462 (= c!37372 lt!113596)))

(assert (=> b!225462 (= lt!113596 (arrayContainsKey!0 (_keys!6275 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!225463 () Bool)

(declare-fun res!110974 () Bool)

(declare-fun e!146336 () Bool)

(assert (=> b!225463 (=> (not res!110974) (not e!146336))))

(declare-fun call!20979 () Bool)

(assert (=> b!225463 (= res!110974 call!20979)))

(declare-fun e!146338 () Bool)

(assert (=> b!225463 (= e!146338 e!146336)))

(declare-fun b!225464 () Bool)

(declare-fun Unit!6799 () Unit!6797)

(assert (=> b!225464 (= e!146343 Unit!6799)))

(declare-fun lt!113601 () Unit!6797)

(declare-fun lemmaArrayContainsKeyThenInListMap!87 (array!11066 array!11064 (_ BitVec 32) (_ BitVec 32) V!7529 V!7529 (_ BitVec 64) (_ BitVec 32) Int) Unit!6797)

(assert (=> b!225464 (= lt!113601 (lemmaArrayContainsKeyThenInListMap!87 (_keys!6275 thiss!1504) (_values!4204 thiss!1504) (mask!10065 thiss!1504) (extraKeys!3958 thiss!1504) (zeroValue!4062 thiss!1504) (minValue!4062 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4221 thiss!1504)))))

(assert (=> b!225464 false))

(declare-fun b!225465 () Bool)

(declare-fun e!146342 () Unit!6797)

(declare-fun lt!113600 () Unit!6797)

(assert (=> b!225465 (= e!146342 lt!113600)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!258 (array!11066 array!11064 (_ BitVec 32) (_ BitVec 32) V!7529 V!7529 (_ BitVec 64) Int) Unit!6797)

(assert (=> b!225465 (= lt!113600 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!258 (_keys!6275 thiss!1504) (_values!4204 thiss!1504) (mask!10065 thiss!1504) (extraKeys!3958 thiss!1504) (zeroValue!4062 thiss!1504) (minValue!4062 thiss!1504) key!932 (defaultEntry!4221 thiss!1504)))))

(declare-fun c!37370 () Bool)

(declare-datatypes ((SeekEntryResult!880 0))(
  ( (MissingZero!880 (index!5690 (_ BitVec 32))) (Found!880 (index!5691 (_ BitVec 32))) (Intermediate!880 (undefined!1692 Bool) (index!5692 (_ BitVec 32)) (x!23196 (_ BitVec 32))) (Undefined!880) (MissingVacant!880 (index!5693 (_ BitVec 32))) )
))
(declare-fun lt!113598 () SeekEntryResult!880)

(assert (=> b!225465 (= c!37370 (is-MissingZero!880 lt!113598))))

(assert (=> b!225465 e!146338))

(declare-fun e!146345 () Bool)

(declare-fun array_inv!3465 (array!11066) Bool)

(declare-fun array_inv!3466 (array!11064) Bool)

(assert (=> b!225466 (= e!146346 (and tp!21289 tp_is_empty!5911 (array_inv!3465 (_keys!6275 thiss!1504)) (array_inv!3466 (_values!4204 thiss!1504)) e!146345))))

(declare-fun b!225467 () Bool)

(declare-fun res!110985 () Bool)

(assert (=> b!225467 (=> (not res!110985) (not e!146336))))

(assert (=> b!225467 (= res!110985 (= (select (arr!5252 (_keys!6275 thiss!1504)) (index!5690 lt!113598)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!225468 () Bool)

(declare-fun Unit!6800 () Unit!6797)

(assert (=> b!225468 (= e!146343 Unit!6800)))

(declare-fun b!225469 () Bool)

(declare-fun res!110982 () Bool)

(assert (=> b!225469 (=> res!110982 e!146350)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!11066 (_ BitVec 32)) Bool)

(assert (=> b!225469 (= res!110982 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6275 thiss!1504) (mask!10065 thiss!1504))))))

(declare-fun b!225470 () Bool)

(declare-fun e!146349 () Bool)

(assert (=> b!225470 (= e!146345 (and e!146349 mapRes!10036))))

(declare-fun condMapEmpty!10036 () Bool)

(declare-fun mapDefault!10036 () ValueCell!2612)

