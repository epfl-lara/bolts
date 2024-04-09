; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21982 () Bool)

(assert start!21982)

(declare-fun b!225023 () Bool)

(declare-fun b_free!6037 () Bool)

(declare-fun b_next!6037 () Bool)

(assert (=> b!225023 (= b_free!6037 (not b_next!6037))))

(declare-fun tp!21252 () Bool)

(declare-fun b_and!12953 () Bool)

(assert (=> b!225023 (= tp!21252 b_and!12953)))

(declare-fun b!225008 () Bool)

(declare-datatypes ((Unit!6777 0))(
  ( (Unit!6778) )
))
(declare-fun e!146078 () Unit!6777)

(declare-fun Unit!6779 () Unit!6777)

(assert (=> b!225008 (= e!146078 Unit!6779)))

(declare-fun lt!113402 () Unit!6777)

(declare-datatypes ((V!7513 0))(
  ( (V!7514 (val!2994 Int)) )
))
(declare-datatypes ((ValueCell!2606 0))(
  ( (ValueCellFull!2606 (v!5010 V!7513)) (EmptyCell!2606) )
))
(declare-datatypes ((array!11040 0))(
  ( (array!11041 (arr!5239 (Array (_ BitVec 32) ValueCell!2606)) (size!5572 (_ BitVec 32))) )
))
(declare-datatypes ((array!11042 0))(
  ( (array!11043 (arr!5240 (Array (_ BitVec 32) (_ BitVec 64))) (size!5573 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3112 0))(
  ( (LongMapFixedSize!3113 (defaultEntry!4215 Int) (mask!10055 (_ BitVec 32)) (extraKeys!3952 (_ BitVec 32)) (zeroValue!4056 V!7513) (minValue!4056 V!7513) (_size!1605 (_ BitVec 32)) (_keys!6269 array!11042) (_values!4198 array!11040) (_vacant!1605 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3112)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun lemmaArrayContainsKeyThenInListMap!84 (array!11042 array!11040 (_ BitVec 32) (_ BitVec 32) V!7513 V!7513 (_ BitVec 64) (_ BitVec 32) Int) Unit!6777)

(assert (=> b!225008 (= lt!113402 (lemmaArrayContainsKeyThenInListMap!84 (_keys!6269 thiss!1504) (_values!4198 thiss!1504) (mask!10055 thiss!1504) (extraKeys!3952 thiss!1504) (zeroValue!4056 thiss!1504) (minValue!4056 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4215 thiss!1504)))))

(assert (=> b!225008 false))

(declare-fun b!225009 () Bool)

(declare-fun res!110744 () Bool)

(declare-fun e!146074 () Bool)

(assert (=> b!225009 (=> res!110744 e!146074)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!225009 (= res!110744 (not (validKeyInArray!0 key!932)))))

(declare-fun b!225010 () Bool)

(declare-fun e!146075 () Bool)

(declare-fun call!20944 () Bool)

(assert (=> b!225010 (= e!146075 (not call!20944))))

(declare-fun b!225011 () Bool)

(declare-fun res!110746 () Bool)

(assert (=> b!225011 (=> (not res!110746) (not e!146075))))

(declare-fun call!20943 () Bool)

(assert (=> b!225011 (= res!110746 call!20943)))

(declare-fun e!146071 () Bool)

(assert (=> b!225011 (= e!146071 e!146075)))

(declare-fun b!225012 () Bool)

(declare-fun e!146077 () Bool)

(assert (=> b!225012 (= e!146077 (not e!146074))))

(declare-fun res!110741 () Bool)

(assert (=> b!225012 (=> res!110741 e!146074)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!225012 (= res!110741 (not (validMask!0 (mask!10055 thiss!1504))))))

(declare-fun lt!113398 () array!11042)

(declare-fun arrayCountValidKeys!0 (array!11042 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!225012 (= (arrayCountValidKeys!0 lt!113398 #b00000000000000000000000000000000 (size!5573 (_keys!6269 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6269 thiss!1504) #b00000000000000000000000000000000 (size!5573 (_keys!6269 thiss!1504)))))))

(declare-fun index!297 () (_ BitVec 32))

(declare-fun lt!113406 () Unit!6777)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!11042 (_ BitVec 32) (_ BitVec 64)) Unit!6777)

(assert (=> b!225012 (= lt!113406 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6269 thiss!1504) index!297 key!932))))

(declare-datatypes ((List!3368 0))(
  ( (Nil!3365) (Cons!3364 (h!4012 (_ BitVec 64)) (t!8335 List!3368)) )
))
(declare-fun arrayNoDuplicates!0 (array!11042 (_ BitVec 32) List!3368) Bool)

(assert (=> b!225012 (arrayNoDuplicates!0 lt!113398 #b00000000000000000000000000000000 Nil!3365)))

(assert (=> b!225012 (= lt!113398 (array!11043 (store (arr!5240 (_keys!6269 thiss!1504)) index!297 key!932) (size!5573 (_keys!6269 thiss!1504))))))

(declare-fun lt!113396 () Unit!6777)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!11042 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3368) Unit!6777)

(assert (=> b!225012 (= lt!113396 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6269 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3365))))

(declare-fun lt!113400 () Unit!6777)

(assert (=> b!225012 (= lt!113400 e!146078)))

(declare-fun c!37300 () Bool)

(declare-fun lt!113405 () Bool)

(assert (=> b!225012 (= c!37300 lt!113405)))

(declare-fun arrayContainsKey!0 (array!11042 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!225012 (= lt!113405 (arrayContainsKey!0 (_keys!6269 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!225014 () Bool)

(declare-fun e!146073 () Bool)

(declare-datatypes ((SeekEntryResult!874 0))(
  ( (MissingZero!874 (index!5666 (_ BitVec 32))) (Found!874 (index!5667 (_ BitVec 32))) (Intermediate!874 (undefined!1686 Bool) (index!5668 (_ BitVec 32)) (x!23174 (_ BitVec 32))) (Undefined!874) (MissingVacant!874 (index!5669 (_ BitVec 32))) )
))
(declare-fun lt!113401 () SeekEntryResult!874)

(assert (=> b!225014 (= e!146073 (is-Undefined!874 lt!113401))))

(declare-fun b!225015 () Bool)

(declare-fun e!146080 () Bool)

(declare-fun tp_is_empty!5899 () Bool)

(assert (=> b!225015 (= e!146080 tp_is_empty!5899)))

(declare-fun b!225016 () Bool)

(declare-fun res!110740 () Bool)

(declare-fun e!146070 () Bool)

(assert (=> b!225016 (=> (not res!110740) (not e!146070))))

(assert (=> b!225016 (= res!110740 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!225017 () Bool)

(declare-fun res!110748 () Bool)

(assert (=> b!225017 (=> res!110748 e!146074)))

(assert (=> b!225017 (= res!110748 lt!113405)))

(declare-fun b!225018 () Bool)

(declare-fun e!146079 () Bool)

(assert (=> b!225018 (= e!146079 (not call!20944))))

(declare-fun b!225019 () Bool)

(declare-fun e!146076 () Bool)

(assert (=> b!225019 (= e!146076 e!146077)))

(declare-fun res!110750 () Bool)

(assert (=> b!225019 (=> (not res!110750) (not e!146077))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!225019 (= res!110750 (inRange!0 index!297 (mask!10055 thiss!1504)))))

(declare-fun lt!113397 () Unit!6777)

(declare-fun e!146068 () Unit!6777)

(assert (=> b!225019 (= lt!113397 e!146068)))

(declare-fun c!37298 () Bool)

(declare-datatypes ((tuple2!4432 0))(
  ( (tuple2!4433 (_1!2226 (_ BitVec 64)) (_2!2226 V!7513)) )
))
(declare-datatypes ((List!3369 0))(
  ( (Nil!3366) (Cons!3365 (h!4013 tuple2!4432) (t!8336 List!3369)) )
))
(declare-datatypes ((ListLongMap!3359 0))(
  ( (ListLongMap!3360 (toList!1695 List!3369)) )
))
(declare-fun contains!1563 (ListLongMap!3359 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1218 (array!11042 array!11040 (_ BitVec 32) (_ BitVec 32) V!7513 V!7513 (_ BitVec 32) Int) ListLongMap!3359)

(assert (=> b!225019 (= c!37298 (contains!1563 (getCurrentListMap!1218 (_keys!6269 thiss!1504) (_values!4198 thiss!1504) (mask!10055 thiss!1504) (extraKeys!3952 thiss!1504) (zeroValue!4056 thiss!1504) (minValue!4056 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4215 thiss!1504)) key!932))))

(declare-fun mapIsEmpty!10018 () Bool)

(declare-fun mapRes!10018 () Bool)

(assert (=> mapIsEmpty!10018 mapRes!10018))

(declare-fun b!225020 () Bool)

(declare-fun c!37301 () Bool)

(assert (=> b!225020 (= c!37301 (is-MissingVacant!874 lt!113401))))

(assert (=> b!225020 (= e!146071 e!146073)))

(declare-fun b!225021 () Bool)

(declare-fun res!110745 () Bool)

(assert (=> b!225021 (=> (not res!110745) (not e!146075))))

(assert (=> b!225021 (= res!110745 (= (select (arr!5240 (_keys!6269 thiss!1504)) (index!5666 lt!113401)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!110742 () Bool)

(assert (=> start!21982 (=> (not res!110742) (not e!146070))))

(declare-fun valid!1247 (LongMapFixedSize!3112) Bool)

(assert (=> start!21982 (= res!110742 (valid!1247 thiss!1504))))

(assert (=> start!21982 e!146070))

(declare-fun e!146072 () Bool)

(assert (=> start!21982 e!146072))

(assert (=> start!21982 true))

(declare-fun b!225013 () Bool)

(declare-fun e!146067 () Bool)

(assert (=> b!225013 (= e!146067 tp_is_empty!5899)))

(declare-fun mapNonEmpty!10018 () Bool)

(declare-fun tp!21253 () Bool)

(assert (=> mapNonEmpty!10018 (= mapRes!10018 (and tp!21253 e!146067))))

(declare-fun mapKey!10018 () (_ BitVec 32))

(declare-fun mapValue!10018 () ValueCell!2606)

(declare-fun mapRest!10018 () (Array (_ BitVec 32) ValueCell!2606))

(assert (=> mapNonEmpty!10018 (= (arr!5239 (_values!4198 thiss!1504)) (store mapRest!10018 mapKey!10018 mapValue!10018))))

(declare-fun b!225022 () Bool)

(assert (=> b!225022 (= e!146074 true)))

(declare-fun lt!113399 () Bool)

(assert (=> b!225022 (= lt!113399 (arrayNoDuplicates!0 (_keys!6269 thiss!1504) #b00000000000000000000000000000000 Nil!3365))))

(declare-fun e!146069 () Bool)

(declare-fun array_inv!3459 (array!11042) Bool)

(declare-fun array_inv!3460 (array!11040) Bool)

(assert (=> b!225023 (= e!146072 (and tp!21252 tp_is_empty!5899 (array_inv!3459 (_keys!6269 thiss!1504)) (array_inv!3460 (_values!4198 thiss!1504)) e!146069))))

(declare-fun b!225024 () Bool)

(declare-fun lt!113403 () Unit!6777)

(assert (=> b!225024 (= e!146068 lt!113403)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!254 (array!11042 array!11040 (_ BitVec 32) (_ BitVec 32) V!7513 V!7513 (_ BitVec 64) Int) Unit!6777)

(assert (=> b!225024 (= lt!113403 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!254 (_keys!6269 thiss!1504) (_values!4198 thiss!1504) (mask!10055 thiss!1504) (extraKeys!3952 thiss!1504) (zeroValue!4056 thiss!1504) (minValue!4056 thiss!1504) key!932 (defaultEntry!4215 thiss!1504)))))

(declare-fun c!37299 () Bool)

(assert (=> b!225024 (= c!37299 (is-MissingZero!874 lt!113401))))

(assert (=> b!225024 e!146071))

(declare-fun b!225025 () Bool)

(declare-fun res!110743 () Bool)

(assert (=> b!225025 (= res!110743 (= (select (arr!5240 (_keys!6269 thiss!1504)) (index!5669 lt!113401)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!225025 (=> (not res!110743) (not e!146079))))

(declare-fun bm!20940 () Bool)

(assert (=> bm!20940 (= call!20943 (inRange!0 (ite c!37299 (index!5666 lt!113401) (index!5669 lt!113401)) (mask!10055 thiss!1504)))))

(declare-fun b!225026 () Bool)

(declare-fun Unit!6780 () Unit!6777)

(assert (=> b!225026 (= e!146068 Unit!6780)))

(declare-fun lt!113404 () Unit!6777)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!246 (array!11042 array!11040 (_ BitVec 32) (_ BitVec 32) V!7513 V!7513 (_ BitVec 64) Int) Unit!6777)

(assert (=> b!225026 (= lt!113404 (lemmaInListMapThenSeekEntryOrOpenFindsIt!246 (_keys!6269 thiss!1504) (_values!4198 thiss!1504) (mask!10055 thiss!1504) (extraKeys!3952 thiss!1504) (zeroValue!4056 thiss!1504) (minValue!4056 thiss!1504) key!932 (defaultEntry!4215 thiss!1504)))))

(assert (=> b!225026 false))

(declare-fun b!225027 () Bool)

(assert (=> b!225027 (= e!146070 e!146076)))

(declare-fun res!110751 () Bool)

(assert (=> b!225027 (=> (not res!110751) (not e!146076))))

(assert (=> b!225027 (= res!110751 (or (= lt!113401 (MissingZero!874 index!297)) (= lt!113401 (MissingVacant!874 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11042 (_ BitVec 32)) SeekEntryResult!874)

(assert (=> b!225027 (= lt!113401 (seekEntryOrOpen!0 key!932 (_keys!6269 thiss!1504) (mask!10055 thiss!1504)))))

(declare-fun b!225028 () Bool)

(declare-fun res!110747 () Bool)

(assert (=> b!225028 (=> res!110747 e!146074)))

(assert (=> b!225028 (= res!110747 (or (not (= (size!5573 (_keys!6269 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!10055 thiss!1504)))) (bvslt index!297 #b00000000000000000000000000000000) (bvsge index!297 (size!5573 (_keys!6269 thiss!1504)))))))

(declare-fun b!225029 () Bool)

(assert (=> b!225029 (= e!146073 e!146079)))

(declare-fun res!110749 () Bool)

(assert (=> b!225029 (= res!110749 call!20943)))

(assert (=> b!225029 (=> (not res!110749) (not e!146079))))

(declare-fun b!225030 () Bool)

(declare-fun Unit!6781 () Unit!6777)

(assert (=> b!225030 (= e!146078 Unit!6781)))

(declare-fun b!225031 () Bool)

(declare-fun res!110752 () Bool)

(assert (=> b!225031 (=> res!110752 e!146074)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!11042 (_ BitVec 32)) Bool)

(assert (=> b!225031 (= res!110752 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6269 thiss!1504) (mask!10055 thiss!1504))))))

(declare-fun bm!20941 () Bool)

(assert (=> bm!20941 (= call!20944 (arrayContainsKey!0 (_keys!6269 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!225032 () Bool)

(assert (=> b!225032 (= e!146069 (and e!146080 mapRes!10018))))

(declare-fun condMapEmpty!10018 () Bool)

(declare-fun mapDefault!10018 () ValueCell!2606)

