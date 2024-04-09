; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!22042 () Bool)

(assert start!22042)

(declare-fun b!227220 () Bool)

(declare-fun b_free!6097 () Bool)

(declare-fun b_next!6097 () Bool)

(assert (=> b!227220 (= b_free!6097 (not b_next!6097))))

(declare-fun tp!21433 () Bool)

(declare-fun b_and!13013 () Bool)

(assert (=> b!227220 (= tp!21433 b_and!13013)))

(declare-fun b!227218 () Bool)

(declare-fun e!147418 () Bool)

(declare-fun call!21123 () Bool)

(assert (=> b!227218 (= e!147418 (not call!21123))))

(declare-fun b!227219 () Bool)

(declare-datatypes ((Unit!6882 0))(
  ( (Unit!6883) )
))
(declare-fun e!147425 () Unit!6882)

(declare-fun Unit!6884 () Unit!6882)

(assert (=> b!227219 (= e!147425 Unit!6884)))

(declare-fun lt!114390 () Unit!6882)

(declare-datatypes ((V!7593 0))(
  ( (V!7594 (val!3024 Int)) )
))
(declare-datatypes ((ValueCell!2636 0))(
  ( (ValueCellFull!2636 (v!5040 V!7593)) (EmptyCell!2636) )
))
(declare-datatypes ((array!11160 0))(
  ( (array!11161 (arr!5299 (Array (_ BitVec 32) ValueCell!2636)) (size!5632 (_ BitVec 32))) )
))
(declare-datatypes ((array!11162 0))(
  ( (array!11163 (arr!5300 (Array (_ BitVec 32) (_ BitVec 64))) (size!5633 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3172 0))(
  ( (LongMapFixedSize!3173 (defaultEntry!4245 Int) (mask!10105 (_ BitVec 32)) (extraKeys!3982 (_ BitVec 32)) (zeroValue!4086 V!7593) (minValue!4086 V!7593) (_size!1635 (_ BitVec 32)) (_keys!6299 array!11162) (_values!4228 array!11160) (_vacant!1635 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3172)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun lemmaArrayContainsKeyThenInListMap!101 (array!11162 array!11160 (_ BitVec 32) (_ BitVec 32) V!7593 V!7593 (_ BitVec 64) (_ BitVec 32) Int) Unit!6882)

(assert (=> b!227219 (= lt!114390 (lemmaArrayContainsKeyThenInListMap!101 (_keys!6299 thiss!1504) (_values!4228 thiss!1504) (mask!10105 thiss!1504) (extraKeys!3982 thiss!1504) (zeroValue!4086 thiss!1504) (minValue!4086 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4245 thiss!1504)))))

(assert (=> b!227219 false))

(declare-fun tp_is_empty!5959 () Bool)

(declare-fun e!147426 () Bool)

(declare-fun e!147417 () Bool)

(declare-fun array_inv!3493 (array!11162) Bool)

(declare-fun array_inv!3494 (array!11160) Bool)

(assert (=> b!227220 (= e!147417 (and tp!21433 tp_is_empty!5959 (array_inv!3493 (_keys!6299 thiss!1504)) (array_inv!3494 (_values!4228 thiss!1504)) e!147426))))

(declare-fun b!227221 () Bool)

(declare-fun res!111870 () Bool)

(declare-fun e!147428 () Bool)

(assert (=> b!227221 (=> (not res!111870) (not e!147428))))

(declare-fun call!21124 () Bool)

(assert (=> b!227221 (= res!111870 call!21124)))

(declare-fun e!147429 () Bool)

(assert (=> b!227221 (= e!147429 e!147428)))

(declare-fun bm!21120 () Bool)

(declare-fun arrayContainsKey!0 (array!11162 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!21120 (= call!21123 (arrayContainsKey!0 (_keys!6299 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!227222 () Bool)

(declare-fun Unit!6885 () Unit!6882)

(assert (=> b!227222 (= e!147425 Unit!6885)))

(declare-fun res!111878 () Bool)

(declare-fun e!147422 () Bool)

(assert (=> start!22042 (=> (not res!111878) (not e!147422))))

(declare-fun valid!1265 (LongMapFixedSize!3172) Bool)

(assert (=> start!22042 (= res!111878 (valid!1265 thiss!1504))))

(assert (=> start!22042 e!147422))

(assert (=> start!22042 e!147417))

(assert (=> start!22042 true))

(declare-fun b!227223 () Bool)

(declare-fun res!111871 () Bool)

(declare-datatypes ((SeekEntryResult!902 0))(
  ( (MissingZero!902 (index!5778 (_ BitVec 32))) (Found!902 (index!5779 (_ BitVec 32))) (Intermediate!902 (undefined!1714 Bool) (index!5780 (_ BitVec 32)) (x!23282 (_ BitVec 32))) (Undefined!902) (MissingVacant!902 (index!5781 (_ BitVec 32))) )
))
(declare-fun lt!114395 () SeekEntryResult!902)

(assert (=> b!227223 (= res!111871 (= (select (arr!5300 (_keys!6299 thiss!1504)) (index!5781 lt!114395)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!227223 (=> (not res!111871) (not e!147418))))

(declare-fun b!227224 () Bool)

(declare-fun e!147424 () Bool)

(declare-fun e!147427 () Bool)

(assert (=> b!227224 (= e!147424 (not e!147427))))

(declare-fun res!111879 () Bool)

(assert (=> b!227224 (=> res!111879 e!147427)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!227224 (= res!111879 (not (validMask!0 (mask!10105 thiss!1504))))))

(declare-fun lt!114392 () array!11162)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!11162 (_ BitVec 32)) Bool)

(assert (=> b!227224 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!114392 (mask!10105 thiss!1504))))

(declare-fun index!297 () (_ BitVec 32))

(declare-fun lt!114388 () Unit!6882)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!11162 (_ BitVec 32) (_ BitVec 32)) Unit!6882)

(assert (=> b!227224 (= lt!114388 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!6299 thiss!1504) index!297 (mask!10105 thiss!1504)))))

(declare-fun arrayCountValidKeys!0 (array!11162 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!227224 (= (arrayCountValidKeys!0 lt!114392 #b00000000000000000000000000000000 (size!5633 (_keys!6299 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6299 thiss!1504) #b00000000000000000000000000000000 (size!5633 (_keys!6299 thiss!1504)))))))

(declare-fun lt!114394 () Unit!6882)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!11162 (_ BitVec 32) (_ BitVec 64)) Unit!6882)

(assert (=> b!227224 (= lt!114394 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6299 thiss!1504) index!297 key!932))))

(declare-datatypes ((List!3407 0))(
  ( (Nil!3404) (Cons!3403 (h!4051 (_ BitVec 64)) (t!8374 List!3407)) )
))
(declare-fun arrayNoDuplicates!0 (array!11162 (_ BitVec 32) List!3407) Bool)

(assert (=> b!227224 (arrayNoDuplicates!0 lt!114392 #b00000000000000000000000000000000 Nil!3404)))

(assert (=> b!227224 (= lt!114392 (array!11163 (store (arr!5300 (_keys!6299 thiss!1504)) index!297 key!932) (size!5633 (_keys!6299 thiss!1504))))))

(declare-fun lt!114396 () Unit!6882)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!11162 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3407) Unit!6882)

(assert (=> b!227224 (= lt!114396 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6299 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3404))))

(declare-fun lt!114393 () Unit!6882)

(assert (=> b!227224 (= lt!114393 e!147425)))

(declare-fun c!37661 () Bool)

(assert (=> b!227224 (= c!37661 (arrayContainsKey!0 (_keys!6299 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!227225 () Bool)

(declare-fun e!147421 () Unit!6882)

(declare-fun lt!114391 () Unit!6882)

(assert (=> b!227225 (= e!147421 lt!114391)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!274 (array!11162 array!11160 (_ BitVec 32) (_ BitVec 32) V!7593 V!7593 (_ BitVec 64) Int) Unit!6882)

(assert (=> b!227225 (= lt!114391 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!274 (_keys!6299 thiss!1504) (_values!4228 thiss!1504) (mask!10105 thiss!1504) (extraKeys!3982 thiss!1504) (zeroValue!4086 thiss!1504) (minValue!4086 thiss!1504) key!932 (defaultEntry!4245 thiss!1504)))))

(declare-fun c!37658 () Bool)

(assert (=> b!227225 (= c!37658 (is-MissingZero!902 lt!114395))))

(assert (=> b!227225 e!147429))

(declare-fun b!227226 () Bool)

(declare-fun e!147420 () Bool)

(assert (=> b!227226 (= e!147420 e!147424)))

(declare-fun res!111874 () Bool)

(assert (=> b!227226 (=> (not res!111874) (not e!147424))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!227226 (= res!111874 (inRange!0 index!297 (mask!10105 thiss!1504)))))

(declare-fun lt!114387 () Unit!6882)

(assert (=> b!227226 (= lt!114387 e!147421)))

(declare-fun c!37659 () Bool)

(declare-datatypes ((tuple2!4464 0))(
  ( (tuple2!4465 (_1!2242 (_ BitVec 64)) (_2!2242 V!7593)) )
))
(declare-datatypes ((List!3408 0))(
  ( (Nil!3405) (Cons!3404 (h!4052 tuple2!4464) (t!8375 List!3408)) )
))
(declare-datatypes ((ListLongMap!3391 0))(
  ( (ListLongMap!3392 (toList!1711 List!3408)) )
))
(declare-fun contains!1579 (ListLongMap!3391 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1234 (array!11162 array!11160 (_ BitVec 32) (_ BitVec 32) V!7593 V!7593 (_ BitVec 32) Int) ListLongMap!3391)

(assert (=> b!227226 (= c!37659 (contains!1579 (getCurrentListMap!1234 (_keys!6299 thiss!1504) (_values!4228 thiss!1504) (mask!10105 thiss!1504) (extraKeys!3982 thiss!1504) (zeroValue!4086 thiss!1504) (minValue!4086 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4245 thiss!1504)) key!932))))

(declare-fun b!227227 () Bool)

(assert (=> b!227227 (= e!147428 (not call!21123))))

(declare-fun b!227228 () Bool)

(declare-fun res!111880 () Bool)

(assert (=> b!227228 (=> (not res!111880) (not e!147422))))

(assert (=> b!227228 (= res!111880 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!227229 () Bool)

(declare-fun res!111876 () Bool)

(assert (=> b!227229 (=> res!111876 e!147427)))

(assert (=> b!227229 (= res!111876 (or (not (= (size!5632 (_values!4228 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!10105 thiss!1504)))) (not (= (size!5633 (_keys!6299 thiss!1504)) (size!5632 (_values!4228 thiss!1504)))) (bvslt (mask!10105 thiss!1504) #b00000000000000000000000000000000) (bvslt (extraKeys!3982 thiss!1504) #b00000000000000000000000000000000) (bvsgt (extraKeys!3982 thiss!1504) #b00000000000000000000000000000011)))))

(declare-fun b!227230 () Bool)

(declare-fun e!147423 () Bool)

(assert (=> b!227230 (= e!147423 e!147418)))

(declare-fun res!111873 () Bool)

(assert (=> b!227230 (= res!111873 call!21124)))

(assert (=> b!227230 (=> (not res!111873) (not e!147418))))

(declare-fun b!227231 () Bool)

(declare-fun res!111875 () Bool)

(assert (=> b!227231 (=> (not res!111875) (not e!147428))))

(assert (=> b!227231 (= res!111875 (= (select (arr!5300 (_keys!6299 thiss!1504)) (index!5778 lt!114395)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!227232 () Bool)

(declare-fun e!147419 () Bool)

(assert (=> b!227232 (= e!147419 tp_is_empty!5959)))

(declare-fun b!227233 () Bool)

(assert (=> b!227233 (= e!147423 (is-Undefined!902 lt!114395))))

(declare-fun b!227234 () Bool)

(declare-fun Unit!6886 () Unit!6882)

(assert (=> b!227234 (= e!147421 Unit!6886)))

(declare-fun lt!114389 () Unit!6882)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!263 (array!11162 array!11160 (_ BitVec 32) (_ BitVec 32) V!7593 V!7593 (_ BitVec 64) Int) Unit!6882)

(assert (=> b!227234 (= lt!114389 (lemmaInListMapThenSeekEntryOrOpenFindsIt!263 (_keys!6299 thiss!1504) (_values!4228 thiss!1504) (mask!10105 thiss!1504) (extraKeys!3982 thiss!1504) (zeroValue!4086 thiss!1504) (minValue!4086 thiss!1504) key!932 (defaultEntry!4245 thiss!1504)))))

(assert (=> b!227234 false))

(declare-fun b!227235 () Bool)

(declare-fun c!37660 () Bool)

(assert (=> b!227235 (= c!37660 (is-MissingVacant!902 lt!114395))))

(assert (=> b!227235 (= e!147429 e!147423)))

(declare-fun b!227236 () Bool)

(assert (=> b!227236 (= e!147427 true)))

(declare-fun lt!114386 () Bool)

(assert (=> b!227236 (= lt!114386 (arrayNoDuplicates!0 (_keys!6299 thiss!1504) #b00000000000000000000000000000000 Nil!3404))))

(declare-fun mapNonEmpty!10108 () Bool)

(declare-fun mapRes!10108 () Bool)

(declare-fun tp!21432 () Bool)

(assert (=> mapNonEmpty!10108 (= mapRes!10108 (and tp!21432 e!147419))))

(declare-fun mapRest!10108 () (Array (_ BitVec 32) ValueCell!2636))

(declare-fun mapKey!10108 () (_ BitVec 32))

(declare-fun mapValue!10108 () ValueCell!2636)

(assert (=> mapNonEmpty!10108 (= (arr!5299 (_values!4228 thiss!1504)) (store mapRest!10108 mapKey!10108 mapValue!10108))))

(declare-fun mapIsEmpty!10108 () Bool)

(assert (=> mapIsEmpty!10108 mapRes!10108))

(declare-fun b!227237 () Bool)

(declare-fun res!111877 () Bool)

(assert (=> b!227237 (=> res!111877 e!147427)))

(assert (=> b!227237 (= res!111877 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6299 thiss!1504) (mask!10105 thiss!1504))))))

(declare-fun bm!21121 () Bool)

(assert (=> bm!21121 (= call!21124 (inRange!0 (ite c!37658 (index!5778 lt!114395) (index!5781 lt!114395)) (mask!10105 thiss!1504)))))

(declare-fun b!227238 () Bool)

(assert (=> b!227238 (= e!147422 e!147420)))

(declare-fun res!111872 () Bool)

(assert (=> b!227238 (=> (not res!111872) (not e!147420))))

(assert (=> b!227238 (= res!111872 (or (= lt!114395 (MissingZero!902 index!297)) (= lt!114395 (MissingVacant!902 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11162 (_ BitVec 32)) SeekEntryResult!902)

(assert (=> b!227238 (= lt!114395 (seekEntryOrOpen!0 key!932 (_keys!6299 thiss!1504) (mask!10105 thiss!1504)))))

(declare-fun b!227239 () Bool)

(declare-fun e!147416 () Bool)

(assert (=> b!227239 (= e!147426 (and e!147416 mapRes!10108))))

(declare-fun condMapEmpty!10108 () Bool)

(declare-fun mapDefault!10108 () ValueCell!2636)

