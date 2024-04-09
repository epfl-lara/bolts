; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!24020 () Bool)

(assert start!24020)

(declare-fun b!251318 () Bool)

(declare-fun b_free!6637 () Bool)

(declare-fun b_next!6637 () Bool)

(assert (=> b!251318 (= b_free!6637 (not b_next!6637))))

(declare-fun tp!23183 () Bool)

(declare-fun b_and!13683 () Bool)

(assert (=> b!251318 (= tp!23183 b_and!13683)))

(declare-fun b!251302 () Bool)

(declare-fun e!162983 () Bool)

(declare-datatypes ((SeekEntryResult!1136 0))(
  ( (MissingZero!1136 (index!6714 (_ BitVec 32))) (Found!1136 (index!6715 (_ BitVec 32))) (Intermediate!1136 (undefined!1948 Bool) (index!6716 (_ BitVec 32)) (x!24730 (_ BitVec 32))) (Undefined!1136) (MissingVacant!1136 (index!6717 (_ BitVec 32))) )
))
(declare-fun lt!125984 () SeekEntryResult!1136)

(assert (=> b!251302 (= e!162983 (is-Undefined!1136 lt!125984))))

(declare-fun b!251303 () Bool)

(declare-datatypes ((Unit!7773 0))(
  ( (Unit!7774) )
))
(declare-fun e!162992 () Unit!7773)

(declare-fun Unit!7775 () Unit!7773)

(assert (=> b!251303 (= e!162992 Unit!7775)))

(declare-fun lt!125985 () Unit!7773)

(declare-datatypes ((V!8313 0))(
  ( (V!8314 (val!3294 Int)) )
))
(declare-datatypes ((ValueCell!2906 0))(
  ( (ValueCellFull!2906 (v!5358 V!8313)) (EmptyCell!2906) )
))
(declare-datatypes ((array!12318 0))(
  ( (array!12319 (arr!5839 (Array (_ BitVec 32) ValueCell!2906)) (size!6185 (_ BitVec 32))) )
))
(declare-datatypes ((array!12320 0))(
  ( (array!12321 (arr!5840 (Array (_ BitVec 32) (_ BitVec 64))) (size!6186 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3712 0))(
  ( (LongMapFixedSize!3713 (defaultEntry!4645 Int) (mask!10846 (_ BitVec 32)) (extraKeys!4382 (_ BitVec 32)) (zeroValue!4486 V!8313) (minValue!4486 V!8313) (_size!1905 (_ BitVec 32)) (_keys!6787 array!12320) (_values!4628 array!12318) (_vacant!1905 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3712)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!402 (array!12320 array!12318 (_ BitVec 32) (_ BitVec 32) V!8313 V!8313 (_ BitVec 64) Int) Unit!7773)

(assert (=> b!251303 (= lt!125985 (lemmaInListMapThenSeekEntryOrOpenFindsIt!402 (_keys!6787 thiss!1504) (_values!4628 thiss!1504) (mask!10846 thiss!1504) (extraKeys!4382 thiss!1504) (zeroValue!4486 thiss!1504) (minValue!4486 thiss!1504) key!932 (defaultEntry!4645 thiss!1504)))))

(assert (=> b!251303 false))

(declare-fun b!251304 () Bool)

(declare-fun e!162994 () Bool)

(declare-fun call!23645 () Bool)

(assert (=> b!251304 (= e!162994 (not call!23645))))

(declare-fun b!251305 () Bool)

(declare-fun e!162990 () Unit!7773)

(declare-fun Unit!7776 () Unit!7773)

(assert (=> b!251305 (= e!162990 Unit!7776)))

(declare-fun mapIsEmpty!11048 () Bool)

(declare-fun mapRes!11048 () Bool)

(assert (=> mapIsEmpty!11048 mapRes!11048))

(declare-fun b!251306 () Bool)

(declare-fun res!123066 () Bool)

(declare-fun e!162989 () Bool)

(assert (=> b!251306 (=> (not res!123066) (not e!162989))))

(assert (=> b!251306 (= res!123066 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!251307 () Bool)

(declare-fun res!123062 () Bool)

(assert (=> b!251307 (=> (not res!123062) (not e!162994))))

(declare-fun call!23644 () Bool)

(assert (=> b!251307 (= res!123062 call!23644)))

(declare-fun e!162988 () Bool)

(assert (=> b!251307 (= e!162988 e!162994)))

(declare-fun b!251308 () Bool)

(declare-fun e!162981 () Bool)

(assert (=> b!251308 (= e!162989 e!162981)))

(declare-fun res!123061 () Bool)

(assert (=> b!251308 (=> (not res!123061) (not e!162981))))

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!251308 (= res!123061 (or (= lt!125984 (MissingZero!1136 index!297)) (= lt!125984 (MissingVacant!1136 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12320 (_ BitVec 32)) SeekEntryResult!1136)

(assert (=> b!251308 (= lt!125984 (seekEntryOrOpen!0 key!932 (_keys!6787 thiss!1504) (mask!10846 thiss!1504)))))

(declare-fun b!251309 () Bool)

(declare-fun res!123060 () Bool)

(assert (=> b!251309 (=> (not res!123060) (not e!162994))))

(assert (=> b!251309 (= res!123060 (= (select (arr!5840 (_keys!6787 thiss!1504)) (index!6714 lt!125984)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!251310 () Bool)

(declare-fun e!162986 () Bool)

(assert (=> b!251310 (= e!162981 e!162986)))

(declare-fun res!123063 () Bool)

(assert (=> b!251310 (=> (not res!123063) (not e!162986))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!251310 (= res!123063 (inRange!0 index!297 (mask!10846 thiss!1504)))))

(declare-fun lt!125990 () Unit!7773)

(assert (=> b!251310 (= lt!125990 e!162992)))

(declare-fun c!42272 () Bool)

(declare-datatypes ((tuple2!4846 0))(
  ( (tuple2!4847 (_1!2433 (_ BitVec 64)) (_2!2433 V!8313)) )
))
(declare-datatypes ((List!3750 0))(
  ( (Nil!3747) (Cons!3746 (h!4407 tuple2!4846) (t!8795 List!3750)) )
))
(declare-datatypes ((ListLongMap!3773 0))(
  ( (ListLongMap!3774 (toList!1902 List!3750)) )
))
(declare-fun contains!1820 (ListLongMap!3773 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1425 (array!12320 array!12318 (_ BitVec 32) (_ BitVec 32) V!8313 V!8313 (_ BitVec 32) Int) ListLongMap!3773)

(assert (=> b!251310 (= c!42272 (contains!1820 (getCurrentListMap!1425 (_keys!6787 thiss!1504) (_values!4628 thiss!1504) (mask!10846 thiss!1504) (extraKeys!4382 thiss!1504) (zeroValue!4486 thiss!1504) (minValue!4486 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4645 thiss!1504)) key!932))))

(declare-fun res!123065 () Bool)

(assert (=> start!24020 (=> (not res!123065) (not e!162989))))

(declare-fun valid!1443 (LongMapFixedSize!3712) Bool)

(assert (=> start!24020 (= res!123065 (valid!1443 thiss!1504))))

(assert (=> start!24020 e!162989))

(declare-fun e!162982 () Bool)

(assert (=> start!24020 e!162982))

(assert (=> start!24020 true))

(declare-fun b!251311 () Bool)

(declare-fun e!162985 () Bool)

(declare-fun tp_is_empty!6499 () Bool)

(assert (=> b!251311 (= e!162985 tp_is_empty!6499)))

(declare-fun b!251312 () Bool)

(declare-fun c!42271 () Bool)

(assert (=> b!251312 (= c!42271 (is-MissingVacant!1136 lt!125984))))

(assert (=> b!251312 (= e!162988 e!162983)))

(declare-fun b!251313 () Bool)

(declare-fun e!162995 () Bool)

(assert (=> b!251313 (= e!162995 (or (not (= (size!6185 (_values!4628 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!10846 thiss!1504)))) (not (= (size!6186 (_keys!6787 thiss!1504)) (size!6185 (_values!4628 thiss!1504)))) (bvslt (mask!10846 thiss!1504) #b00000000000000000000000000000000) (bvslt (extraKeys!4382 thiss!1504) #b00000000000000000000000000000000) (bvsle (extraKeys!4382 thiss!1504) #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!11048 () Bool)

(declare-fun tp!23182 () Bool)

(assert (=> mapNonEmpty!11048 (= mapRes!11048 (and tp!23182 e!162985))))

(declare-fun mapRest!11048 () (Array (_ BitVec 32) ValueCell!2906))

(declare-fun mapValue!11048 () ValueCell!2906)

(declare-fun mapKey!11048 () (_ BitVec 32))

(assert (=> mapNonEmpty!11048 (= (arr!5839 (_values!4628 thiss!1504)) (store mapRest!11048 mapKey!11048 mapValue!11048))))

(declare-fun b!251314 () Bool)

(declare-fun e!162984 () Bool)

(assert (=> b!251314 (= e!162984 tp_is_empty!6499)))

(declare-fun b!251315 () Bool)

(declare-fun res!123067 () Bool)

(assert (=> b!251315 (= res!123067 (= (select (arr!5840 (_keys!6787 thiss!1504)) (index!6717 lt!125984)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!162991 () Bool)

(assert (=> b!251315 (=> (not res!123067) (not e!162991))))

(declare-fun b!251316 () Bool)

(assert (=> b!251316 (= e!162991 (not call!23645))))

(declare-fun bm!23641 () Bool)

(declare-fun arrayContainsKey!0 (array!12320 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!23641 (= call!23645 (arrayContainsKey!0 (_keys!6787 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!251317 () Bool)

(assert (=> b!251317 (= e!162983 e!162991)))

(declare-fun res!123059 () Bool)

(assert (=> b!251317 (= res!123059 call!23644)))

(assert (=> b!251317 (=> (not res!123059) (not e!162991))))

(declare-fun e!162987 () Bool)

(declare-fun array_inv!3847 (array!12320) Bool)

(declare-fun array_inv!3848 (array!12318) Bool)

(assert (=> b!251318 (= e!162982 (and tp!23183 tp_is_empty!6499 (array_inv!3847 (_keys!6787 thiss!1504)) (array_inv!3848 (_values!4628 thiss!1504)) e!162987))))

(declare-fun b!251319 () Bool)

(assert (=> b!251319 (= e!162986 (not e!162995))))

(declare-fun res!123064 () Bool)

(assert (=> b!251319 (=> res!123064 e!162995)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!251319 (= res!123064 (not (validMask!0 (mask!10846 thiss!1504))))))

(declare-fun lt!125981 () array!12320)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12320 (_ BitVec 32)) Bool)

(assert (=> b!251319 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!125981 (mask!10846 thiss!1504))))

(declare-fun lt!125988 () Unit!7773)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!12320 (_ BitVec 32) (_ BitVec 32)) Unit!7773)

(assert (=> b!251319 (= lt!125988 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!6787 thiss!1504) index!297 (mask!10846 thiss!1504)))))

(declare-fun arrayCountValidKeys!0 (array!12320 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!251319 (= (arrayCountValidKeys!0 lt!125981 #b00000000000000000000000000000000 (size!6186 (_keys!6787 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6787 thiss!1504) #b00000000000000000000000000000000 (size!6186 (_keys!6787 thiss!1504)))))))

(declare-fun lt!125987 () Unit!7773)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!12320 (_ BitVec 32) (_ BitVec 64)) Unit!7773)

(assert (=> b!251319 (= lt!125987 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6787 thiss!1504) index!297 key!932))))

(declare-datatypes ((List!3751 0))(
  ( (Nil!3748) (Cons!3747 (h!4408 (_ BitVec 64)) (t!8796 List!3751)) )
))
(declare-fun arrayNoDuplicates!0 (array!12320 (_ BitVec 32) List!3751) Bool)

(assert (=> b!251319 (arrayNoDuplicates!0 lt!125981 #b00000000000000000000000000000000 Nil!3748)))

(assert (=> b!251319 (= lt!125981 (array!12321 (store (arr!5840 (_keys!6787 thiss!1504)) index!297 key!932) (size!6186 (_keys!6787 thiss!1504))))))

(declare-fun lt!125986 () Unit!7773)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!12320 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3751) Unit!7773)

(assert (=> b!251319 (= lt!125986 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6787 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3748))))

(declare-fun lt!125982 () Unit!7773)

(assert (=> b!251319 (= lt!125982 e!162990)))

(declare-fun c!42274 () Bool)

(assert (=> b!251319 (= c!42274 (arrayContainsKey!0 (_keys!6787 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!251320 () Bool)

(declare-fun lt!125983 () Unit!7773)

(assert (=> b!251320 (= e!162992 lt!125983)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!402 (array!12320 array!12318 (_ BitVec 32) (_ BitVec 32) V!8313 V!8313 (_ BitVec 64) Int) Unit!7773)

(assert (=> b!251320 (= lt!125983 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!402 (_keys!6787 thiss!1504) (_values!4628 thiss!1504) (mask!10846 thiss!1504) (extraKeys!4382 thiss!1504) (zeroValue!4486 thiss!1504) (minValue!4486 thiss!1504) key!932 (defaultEntry!4645 thiss!1504)))))

(declare-fun c!42273 () Bool)

(assert (=> b!251320 (= c!42273 (is-MissingZero!1136 lt!125984))))

(assert (=> b!251320 e!162988))

(declare-fun b!251321 () Bool)

(declare-fun Unit!7777 () Unit!7773)

(assert (=> b!251321 (= e!162990 Unit!7777)))

(declare-fun lt!125989 () Unit!7773)

(declare-fun lemmaArrayContainsKeyThenInListMap!204 (array!12320 array!12318 (_ BitVec 32) (_ BitVec 32) V!8313 V!8313 (_ BitVec 64) (_ BitVec 32) Int) Unit!7773)

(assert (=> b!251321 (= lt!125989 (lemmaArrayContainsKeyThenInListMap!204 (_keys!6787 thiss!1504) (_values!4628 thiss!1504) (mask!10846 thiss!1504) (extraKeys!4382 thiss!1504) (zeroValue!4486 thiss!1504) (minValue!4486 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4645 thiss!1504)))))

(assert (=> b!251321 false))

(declare-fun bm!23642 () Bool)

(assert (=> bm!23642 (= call!23644 (inRange!0 (ite c!42273 (index!6714 lt!125984) (index!6717 lt!125984)) (mask!10846 thiss!1504)))))

(declare-fun b!251322 () Bool)

(assert (=> b!251322 (= e!162987 (and e!162984 mapRes!11048))))

(declare-fun condMapEmpty!11048 () Bool)

(declare-fun mapDefault!11048 () ValueCell!2906)

