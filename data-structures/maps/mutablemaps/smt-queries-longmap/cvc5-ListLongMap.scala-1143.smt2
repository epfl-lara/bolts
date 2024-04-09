; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!23672 () Bool)

(assert start!23672)

(declare-fun b!248623 () Bool)

(declare-fun b_free!6607 () Bool)

(declare-fun b_next!6607 () Bool)

(assert (=> b!248623 (= b_free!6607 (not b_next!6607))))

(declare-fun tp!23075 () Bool)

(declare-fun b_and!13631 () Bool)

(assert (=> b!248623 (= tp!23075 b_and!13631)))

(declare-fun b!248608 () Bool)

(declare-datatypes ((Unit!7695 0))(
  ( (Unit!7696) )
))
(declare-fun e!161257 () Unit!7695)

(declare-fun Unit!7697 () Unit!7695)

(assert (=> b!248608 (= e!161257 Unit!7697)))

(declare-fun lt!124540 () Unit!7695)

(declare-datatypes ((V!8273 0))(
  ( (V!8274 (val!3279 Int)) )
))
(declare-datatypes ((ValueCell!2891 0))(
  ( (ValueCellFull!2891 (v!5335 V!8273)) (EmptyCell!2891) )
))
(declare-datatypes ((array!12248 0))(
  ( (array!12249 (arr!5809 (Array (_ BitVec 32) ValueCell!2891)) (size!6152 (_ BitVec 32))) )
))
(declare-datatypes ((array!12250 0))(
  ( (array!12251 (arr!5810 (Array (_ BitVec 32) (_ BitVec 64))) (size!6153 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3682 0))(
  ( (LongMapFixedSize!3683 (defaultEntry!4598 Int) (mask!10752 (_ BitVec 32)) (extraKeys!4335 (_ BitVec 32)) (zeroValue!4439 V!8273) (minValue!4439 V!8273) (_size!1890 (_ BitVec 32)) (_keys!6724 array!12250) (_values!4581 array!12248) (_vacant!1890 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3682)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun lemmaArrayContainsKeyThenInListMap!194 (array!12250 array!12248 (_ BitVec 32) (_ BitVec 32) V!8273 V!8273 (_ BitVec 64) (_ BitVec 32) Int) Unit!7695)

(assert (=> b!248608 (= lt!124540 (lemmaArrayContainsKeyThenInListMap!194 (_keys!6724 thiss!1504) (_values!4581 thiss!1504) (mask!10752 thiss!1504) (extraKeys!4335 thiss!1504) (zeroValue!4439 thiss!1504) (minValue!4439 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4598 thiss!1504)))))

(assert (=> b!248608 false))

(declare-fun b!248609 () Bool)

(declare-fun Unit!7698 () Unit!7695)

(assert (=> b!248609 (= e!161257 Unit!7698)))

(declare-fun b!248610 () Bool)

(declare-fun res!121850 () Bool)

(declare-fun e!161267 () Bool)

(assert (=> b!248610 (=> (not res!121850) (not e!161267))))

(declare-fun call!23315 () Bool)

(assert (=> b!248610 (= res!121850 call!23315)))

(declare-fun e!161262 () Bool)

(assert (=> b!248610 (= e!161262 e!161267)))

(declare-fun b!248611 () Bool)

(declare-fun e!161261 () Bool)

(declare-fun call!23316 () Bool)

(assert (=> b!248611 (= e!161261 (not call!23316))))

(declare-fun b!248612 () Bool)

(declare-fun e!161265 () Bool)

(assert (=> b!248612 (= e!161265 e!161261)))

(declare-fun res!121855 () Bool)

(assert (=> b!248612 (= res!121855 call!23315)))

(assert (=> b!248612 (=> (not res!121855) (not e!161261))))

(declare-fun b!248613 () Bool)

(declare-fun e!161269 () Bool)

(declare-fun tp_is_empty!6469 () Bool)

(assert (=> b!248613 (= e!161269 tp_is_empty!6469)))

(declare-fun b!248614 () Bool)

(declare-fun c!41649 () Bool)

(declare-datatypes ((SeekEntryResult!1122 0))(
  ( (MissingZero!1122 (index!6658 (_ BitVec 32))) (Found!1122 (index!6659 (_ BitVec 32))) (Intermediate!1122 (undefined!1934 Bool) (index!6660 (_ BitVec 32)) (x!24602 (_ BitVec 32))) (Undefined!1122) (MissingVacant!1122 (index!6661 (_ BitVec 32))) )
))
(declare-fun lt!124545 () SeekEntryResult!1122)

(assert (=> b!248614 (= c!41649 (is-MissingVacant!1122 lt!124545))))

(assert (=> b!248614 (= e!161262 e!161265)))

(declare-fun b!248615 () Bool)

(assert (=> b!248615 (= e!161265 (is-Undefined!1122 lt!124545))))

(declare-fun b!248616 () Bool)

(declare-fun e!161266 () Unit!7695)

(declare-fun Unit!7699 () Unit!7695)

(assert (=> b!248616 (= e!161266 Unit!7699)))

(declare-fun lt!124541 () Unit!7695)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!391 (array!12250 array!12248 (_ BitVec 32) (_ BitVec 32) V!8273 V!8273 (_ BitVec 64) Int) Unit!7695)

(assert (=> b!248616 (= lt!124541 (lemmaInListMapThenSeekEntryOrOpenFindsIt!391 (_keys!6724 thiss!1504) (_values!4581 thiss!1504) (mask!10752 thiss!1504) (extraKeys!4335 thiss!1504) (zeroValue!4439 thiss!1504) (minValue!4439 thiss!1504) key!932 (defaultEntry!4598 thiss!1504)))))

(assert (=> b!248616 false))

(declare-fun b!248617 () Bool)

(declare-fun e!161260 () Bool)

(declare-fun e!161264 () Bool)

(assert (=> b!248617 (= e!161260 e!161264)))

(declare-fun res!121849 () Bool)

(assert (=> b!248617 (=> (not res!121849) (not e!161264))))

(declare-fun index!297 () (_ BitVec 32))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!248617 (= res!121849 (inRange!0 index!297 (mask!10752 thiss!1504)))))

(declare-fun lt!124543 () Unit!7695)

(assert (=> b!248617 (= lt!124543 e!161266)))

(declare-fun c!41651 () Bool)

(declare-datatypes ((tuple2!4822 0))(
  ( (tuple2!4823 (_1!2421 (_ BitVec 64)) (_2!2421 V!8273)) )
))
(declare-datatypes ((List!3727 0))(
  ( (Nil!3724) (Cons!3723 (h!4381 tuple2!4822) (t!8762 List!3727)) )
))
(declare-datatypes ((ListLongMap!3749 0))(
  ( (ListLongMap!3750 (toList!1890 List!3727)) )
))
(declare-fun contains!1800 (ListLongMap!3749 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1413 (array!12250 array!12248 (_ BitVec 32) (_ BitVec 32) V!8273 V!8273 (_ BitVec 32) Int) ListLongMap!3749)

(assert (=> b!248617 (= c!41651 (contains!1800 (getCurrentListMap!1413 (_keys!6724 thiss!1504) (_values!4581 thiss!1504) (mask!10752 thiss!1504) (extraKeys!4335 thiss!1504) (zeroValue!4439 thiss!1504) (minValue!4439 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4598 thiss!1504)) key!932))))

(declare-fun mapNonEmpty!10985 () Bool)

(declare-fun mapRes!10985 () Bool)

(declare-fun tp!23074 () Bool)

(declare-fun e!161256 () Bool)

(assert (=> mapNonEmpty!10985 (= mapRes!10985 (and tp!23074 e!161256))))

(declare-fun mapValue!10985 () ValueCell!2891)

(declare-fun mapRest!10985 () (Array (_ BitVec 32) ValueCell!2891))

(declare-fun mapKey!10985 () (_ BitVec 32))

(assert (=> mapNonEmpty!10985 (= (arr!5809 (_values!4581 thiss!1504)) (store mapRest!10985 mapKey!10985 mapValue!10985))))

(declare-fun b!248618 () Bool)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!248618 (= e!161264 (not (validMask!0 (mask!10752 thiss!1504))))))

(declare-fun lt!124538 () array!12250)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12250 (_ BitVec 32)) Bool)

(assert (=> b!248618 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!124538 (mask!10752 thiss!1504))))

(declare-fun lt!124537 () Unit!7695)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!12250 (_ BitVec 32) (_ BitVec 32)) Unit!7695)

(assert (=> b!248618 (= lt!124537 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!6724 thiss!1504) index!297 (mask!10752 thiss!1504)))))

(declare-fun arrayCountValidKeys!0 (array!12250 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!248618 (= (arrayCountValidKeys!0 lt!124538 #b00000000000000000000000000000000 (size!6153 (_keys!6724 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6724 thiss!1504) #b00000000000000000000000000000000 (size!6153 (_keys!6724 thiss!1504)))))))

(declare-fun lt!124536 () Unit!7695)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!12250 (_ BitVec 32) (_ BitVec 64)) Unit!7695)

(assert (=> b!248618 (= lt!124536 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6724 thiss!1504) index!297 key!932))))

(declare-datatypes ((List!3728 0))(
  ( (Nil!3725) (Cons!3724 (h!4382 (_ BitVec 64)) (t!8763 List!3728)) )
))
(declare-fun arrayNoDuplicates!0 (array!12250 (_ BitVec 32) List!3728) Bool)

(assert (=> b!248618 (arrayNoDuplicates!0 lt!124538 #b00000000000000000000000000000000 Nil!3725)))

(assert (=> b!248618 (= lt!124538 (array!12251 (store (arr!5810 (_keys!6724 thiss!1504)) index!297 key!932) (size!6153 (_keys!6724 thiss!1504))))))

(declare-fun lt!124544 () Unit!7695)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!12250 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3728) Unit!7695)

(assert (=> b!248618 (= lt!124544 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6724 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3725))))

(declare-fun lt!124542 () Unit!7695)

(assert (=> b!248618 (= lt!124542 e!161257)))

(declare-fun c!41652 () Bool)

(declare-fun arrayContainsKey!0 (array!12250 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!248618 (= c!41652 (arrayContainsKey!0 (_keys!6724 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!248619 () Bool)

(declare-fun res!121853 () Bool)

(declare-fun e!161258 () Bool)

(assert (=> b!248619 (=> (not res!121853) (not e!161258))))

(assert (=> b!248619 (= res!121853 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!248620 () Bool)

(assert (=> b!248620 (= e!161267 (not call!23316))))

(declare-fun b!248621 () Bool)

(declare-fun res!121852 () Bool)

(assert (=> b!248621 (=> (not res!121852) (not e!161267))))

(assert (=> b!248621 (= res!121852 (= (select (arr!5810 (_keys!6724 thiss!1504)) (index!6658 lt!124545)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mapIsEmpty!10985 () Bool)

(assert (=> mapIsEmpty!10985 mapRes!10985))

(declare-fun bm!23312 () Bool)

(declare-fun c!41650 () Bool)

(assert (=> bm!23312 (= call!23315 (inRange!0 (ite c!41650 (index!6658 lt!124545) (index!6661 lt!124545)) (mask!10752 thiss!1504)))))

(declare-fun b!248622 () Bool)

(assert (=> b!248622 (= e!161258 e!161260)))

(declare-fun res!121848 () Bool)

(assert (=> b!248622 (=> (not res!121848) (not e!161260))))

(assert (=> b!248622 (= res!121848 (or (= lt!124545 (MissingZero!1122 index!297)) (= lt!124545 (MissingVacant!1122 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12250 (_ BitVec 32)) SeekEntryResult!1122)

(assert (=> b!248622 (= lt!124545 (seekEntryOrOpen!0 key!932 (_keys!6724 thiss!1504) (mask!10752 thiss!1504)))))

(declare-fun bm!23313 () Bool)

(assert (=> bm!23313 (= call!23316 (arrayContainsKey!0 (_keys!6724 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun e!161263 () Bool)

(declare-fun e!161259 () Bool)

(declare-fun array_inv!3825 (array!12250) Bool)

(declare-fun array_inv!3826 (array!12248) Bool)

(assert (=> b!248623 (= e!161259 (and tp!23075 tp_is_empty!6469 (array_inv!3825 (_keys!6724 thiss!1504)) (array_inv!3826 (_values!4581 thiss!1504)) e!161263))))

(declare-fun res!121851 () Bool)

(assert (=> start!23672 (=> (not res!121851) (not e!161258))))

(declare-fun valid!1433 (LongMapFixedSize!3682) Bool)

(assert (=> start!23672 (= res!121851 (valid!1433 thiss!1504))))

(assert (=> start!23672 e!161258))

(assert (=> start!23672 e!161259))

(assert (=> start!23672 true))

(declare-fun b!248624 () Bool)

(assert (=> b!248624 (= e!161256 tp_is_empty!6469)))

(declare-fun b!248625 () Bool)

(declare-fun lt!124539 () Unit!7695)

(assert (=> b!248625 (= e!161266 lt!124539)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!391 (array!12250 array!12248 (_ BitVec 32) (_ BitVec 32) V!8273 V!8273 (_ BitVec 64) Int) Unit!7695)

(assert (=> b!248625 (= lt!124539 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!391 (_keys!6724 thiss!1504) (_values!4581 thiss!1504) (mask!10752 thiss!1504) (extraKeys!4335 thiss!1504) (zeroValue!4439 thiss!1504) (minValue!4439 thiss!1504) key!932 (defaultEntry!4598 thiss!1504)))))

(assert (=> b!248625 (= c!41650 (is-MissingZero!1122 lt!124545))))

(assert (=> b!248625 e!161262))

(declare-fun b!248626 () Bool)

(assert (=> b!248626 (= e!161263 (and e!161269 mapRes!10985))))

(declare-fun condMapEmpty!10985 () Bool)

(declare-fun mapDefault!10985 () ValueCell!2891)

