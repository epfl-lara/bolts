; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!22012 () Bool)

(assert start!22012)

(declare-fun b!226155 () Bool)

(declare-fun b_free!6067 () Bool)

(declare-fun b_next!6067 () Bool)

(assert (=> b!226155 (= b_free!6067 (not b_next!6067))))

(declare-fun tp!21342 () Bool)

(declare-fun b_and!12983 () Bool)

(assert (=> b!226155 (= tp!21342 b_and!12983)))

(declare-fun b!226133 () Bool)

(declare-fun c!37479 () Bool)

(declare-datatypes ((SeekEntryResult!889 0))(
  ( (MissingZero!889 (index!5726 (_ BitVec 32))) (Found!889 (index!5727 (_ BitVec 32))) (Intermediate!889 (undefined!1701 Bool) (index!5728 (_ BitVec 32)) (x!23229 (_ BitVec 32))) (Undefined!889) (MissingVacant!889 (index!5729 (_ BitVec 32))) )
))
(declare-fun lt!113893 () SeekEntryResult!889)

(assert (=> b!226133 (= c!37479 (is-MissingVacant!889 lt!113893))))

(declare-fun e!146744 () Bool)

(declare-fun e!146742 () Bool)

(assert (=> b!226133 (= e!146744 e!146742)))

(declare-fun b!226134 () Bool)

(assert (=> b!226134 (= e!146742 (is-Undefined!889 lt!113893))))

(declare-fun b!226135 () Bool)

(declare-fun res!111329 () Bool)

(declare-fun e!146746 () Bool)

(assert (=> b!226135 (=> (not res!111329) (not e!146746))))

(declare-fun key!932 () (_ BitVec 64))

(assert (=> b!226135 (= res!111329 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!226136 () Bool)

(declare-fun res!111333 () Bool)

(declare-fun e!146751 () Bool)

(assert (=> b!226136 (=> res!111333 e!146751)))

(declare-fun lt!113891 () Bool)

(assert (=> b!226136 (= res!111333 lt!113891)))

(declare-fun b!226138 () Bool)

(declare-fun e!146747 () Bool)

(declare-fun tp_is_empty!5929 () Bool)

(assert (=> b!226138 (= e!146747 tp_is_empty!5929)))

(declare-fun b!226139 () Bool)

(declare-fun e!146743 () Bool)

(assert (=> b!226139 (= e!146742 e!146743)))

(declare-fun res!111326 () Bool)

(declare-fun call!21033 () Bool)

(assert (=> b!226139 (= res!111326 call!21033)))

(assert (=> b!226139 (=> (not res!111326) (not e!146743))))

(declare-fun b!226140 () Bool)

(declare-fun res!111327 () Bool)

(assert (=> b!226140 (=> res!111327 e!146751)))

(declare-datatypes ((V!7553 0))(
  ( (V!7554 (val!3009 Int)) )
))
(declare-datatypes ((ValueCell!2621 0))(
  ( (ValueCellFull!2621 (v!5025 V!7553)) (EmptyCell!2621) )
))
(declare-datatypes ((array!11100 0))(
  ( (array!11101 (arr!5269 (Array (_ BitVec 32) ValueCell!2621)) (size!5602 (_ BitVec 32))) )
))
(declare-datatypes ((array!11102 0))(
  ( (array!11103 (arr!5270 (Array (_ BitVec 32) (_ BitVec 64))) (size!5603 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3142 0))(
  ( (LongMapFixedSize!3143 (defaultEntry!4230 Int) (mask!10080 (_ BitVec 32)) (extraKeys!3967 (_ BitVec 32)) (zeroValue!4071 V!7553) (minValue!4071 V!7553) (_size!1620 (_ BitVec 32)) (_keys!6284 array!11102) (_values!4213 array!11100) (_vacant!1620 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3142)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!226140 (= res!111327 (or (not (= (size!5603 (_keys!6284 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!10080 thiss!1504)))) (bvslt index!297 #b00000000000000000000000000000000) (bvsge index!297 (size!5603 (_keys!6284 thiss!1504)))))))

(declare-fun b!226141 () Bool)

(declare-datatypes ((Unit!6830 0))(
  ( (Unit!6831) )
))
(declare-fun e!146752 () Unit!6830)

(declare-fun Unit!6832 () Unit!6830)

(assert (=> b!226141 (= e!146752 Unit!6832)))

(declare-fun lt!113892 () Unit!6830)

(declare-fun lemmaArrayContainsKeyThenInListMap!92 (array!11102 array!11100 (_ BitVec 32) (_ BitVec 32) V!7553 V!7553 (_ BitVec 64) (_ BitVec 32) Int) Unit!6830)

(assert (=> b!226141 (= lt!113892 (lemmaArrayContainsKeyThenInListMap!92 (_keys!6284 thiss!1504) (_values!4213 thiss!1504) (mask!10080 thiss!1504) (extraKeys!3967 thiss!1504) (zeroValue!4071 thiss!1504) (minValue!4071 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4230 thiss!1504)))))

(assert (=> b!226141 false))

(declare-fun b!226142 () Bool)

(declare-fun res!111328 () Bool)

(assert (=> b!226142 (=> res!111328 e!146751)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!11102 (_ BitVec 32)) Bool)

(assert (=> b!226142 (= res!111328 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6284 thiss!1504) (mask!10080 thiss!1504))))))

(declare-fun b!226143 () Bool)

(declare-fun e!146749 () Bool)

(declare-fun e!146745 () Bool)

(assert (=> b!226143 (= e!146749 e!146745)))

(declare-fun res!111330 () Bool)

(assert (=> b!226143 (=> (not res!111330) (not e!146745))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!226143 (= res!111330 (inRange!0 index!297 (mask!10080 thiss!1504)))))

(declare-fun lt!113901 () Unit!6830)

(declare-fun e!146755 () Unit!6830)

(assert (=> b!226143 (= lt!113901 e!146755)))

(declare-fun c!37481 () Bool)

(declare-datatypes ((tuple2!4448 0))(
  ( (tuple2!4449 (_1!2234 (_ BitVec 64)) (_2!2234 V!7553)) )
))
(declare-datatypes ((List!3388 0))(
  ( (Nil!3385) (Cons!3384 (h!4032 tuple2!4448) (t!8355 List!3388)) )
))
(declare-datatypes ((ListLongMap!3375 0))(
  ( (ListLongMap!3376 (toList!1703 List!3388)) )
))
(declare-fun contains!1571 (ListLongMap!3375 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1226 (array!11102 array!11100 (_ BitVec 32) (_ BitVec 32) V!7553 V!7553 (_ BitVec 32) Int) ListLongMap!3375)

(assert (=> b!226143 (= c!37481 (contains!1571 (getCurrentListMap!1226 (_keys!6284 thiss!1504) (_values!4213 thiss!1504) (mask!10080 thiss!1504) (extraKeys!3967 thiss!1504) (zeroValue!4071 thiss!1504) (minValue!4071 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4230 thiss!1504)) key!932))))

(declare-fun b!226144 () Bool)

(assert (=> b!226144 (= e!146751 true)))

(declare-fun lt!113899 () Bool)

(declare-datatypes ((List!3389 0))(
  ( (Nil!3386) (Cons!3385 (h!4033 (_ BitVec 64)) (t!8356 List!3389)) )
))
(declare-fun arrayNoDuplicates!0 (array!11102 (_ BitVec 32) List!3389) Bool)

(assert (=> b!226144 (= lt!113899 (arrayNoDuplicates!0 (_keys!6284 thiss!1504) #b00000000000000000000000000000000 Nil!3386))))

(declare-fun b!226145 () Bool)

(declare-fun res!111336 () Bool)

(assert (=> b!226145 (=> res!111336 e!146751)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!226145 (= res!111336 (not (validKeyInArray!0 key!932)))))

(declare-fun b!226146 () Bool)

(declare-fun res!111335 () Bool)

(declare-fun e!146741 () Bool)

(assert (=> b!226146 (=> (not res!111335) (not e!146741))))

(assert (=> b!226146 (= res!111335 call!21033)))

(assert (=> b!226146 (= e!146744 e!146741)))

(declare-fun b!226147 () Bool)

(declare-fun Unit!6833 () Unit!6830)

(assert (=> b!226147 (= e!146752 Unit!6833)))

(declare-fun res!111332 () Bool)

(assert (=> start!22012 (=> (not res!111332) (not e!146746))))

(declare-fun valid!1256 (LongMapFixedSize!3142) Bool)

(assert (=> start!22012 (= res!111332 (valid!1256 thiss!1504))))

(assert (=> start!22012 e!146746))

(declare-fun e!146748 () Bool)

(assert (=> start!22012 e!146748))

(assert (=> start!22012 true))

(declare-fun b!226137 () Bool)

(declare-fun call!21034 () Bool)

(assert (=> b!226137 (= e!146743 (not call!21034))))

(declare-fun b!226148 () Bool)

(declare-fun e!146750 () Bool)

(assert (=> b!226148 (= e!146750 tp_is_empty!5929)))

(declare-fun mapNonEmpty!10063 () Bool)

(declare-fun mapRes!10063 () Bool)

(declare-fun tp!21343 () Bool)

(assert (=> mapNonEmpty!10063 (= mapRes!10063 (and tp!21343 e!146747))))

(declare-fun mapRest!10063 () (Array (_ BitVec 32) ValueCell!2621))

(declare-fun mapKey!10063 () (_ BitVec 32))

(declare-fun mapValue!10063 () ValueCell!2621)

(assert (=> mapNonEmpty!10063 (= (arr!5269 (_values!4213 thiss!1504)) (store mapRest!10063 mapKey!10063 mapValue!10063))))

(declare-fun mapIsEmpty!10063 () Bool)

(assert (=> mapIsEmpty!10063 mapRes!10063))

(declare-fun b!226149 () Bool)

(declare-fun Unit!6834 () Unit!6830)

(assert (=> b!226149 (= e!146755 Unit!6834)))

(declare-fun lt!113896 () Unit!6830)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!255 (array!11102 array!11100 (_ BitVec 32) (_ BitVec 32) V!7553 V!7553 (_ BitVec 64) Int) Unit!6830)

(assert (=> b!226149 (= lt!113896 (lemmaInListMapThenSeekEntryOrOpenFindsIt!255 (_keys!6284 thiss!1504) (_values!4213 thiss!1504) (mask!10080 thiss!1504) (extraKeys!3967 thiss!1504) (zeroValue!4071 thiss!1504) (minValue!4071 thiss!1504) key!932 (defaultEntry!4230 thiss!1504)))))

(assert (=> b!226149 false))

(declare-fun b!226150 () Bool)

(declare-fun lt!113898 () Unit!6830)

(assert (=> b!226150 (= e!146755 lt!113898)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!264 (array!11102 array!11100 (_ BitVec 32) (_ BitVec 32) V!7553 V!7553 (_ BitVec 64) Int) Unit!6830)

(assert (=> b!226150 (= lt!113898 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!264 (_keys!6284 thiss!1504) (_values!4213 thiss!1504) (mask!10080 thiss!1504) (extraKeys!3967 thiss!1504) (zeroValue!4071 thiss!1504) (minValue!4071 thiss!1504) key!932 (defaultEntry!4230 thiss!1504)))))

(declare-fun c!37480 () Bool)

(assert (=> b!226150 (= c!37480 (is-MissingZero!889 lt!113893))))

(assert (=> b!226150 e!146744))

(declare-fun b!226151 () Bool)

(declare-fun res!111331 () Bool)

(assert (=> b!226151 (=> (not res!111331) (not e!146741))))

(assert (=> b!226151 (= res!111331 (= (select (arr!5270 (_keys!6284 thiss!1504)) (index!5726 lt!113893)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!226152 () Bool)

(assert (=> b!226152 (= e!146746 e!146749)))

(declare-fun res!111334 () Bool)

(assert (=> b!226152 (=> (not res!111334) (not e!146749))))

(assert (=> b!226152 (= res!111334 (or (= lt!113893 (MissingZero!889 index!297)) (= lt!113893 (MissingVacant!889 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11102 (_ BitVec 32)) SeekEntryResult!889)

(assert (=> b!226152 (= lt!113893 (seekEntryOrOpen!0 key!932 (_keys!6284 thiss!1504) (mask!10080 thiss!1504)))))

(declare-fun b!226153 () Bool)

(declare-fun res!111325 () Bool)

(assert (=> b!226153 (= res!111325 (= (select (arr!5270 (_keys!6284 thiss!1504)) (index!5729 lt!113893)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!226153 (=> (not res!111325) (not e!146743))))

(declare-fun bm!21030 () Bool)

(assert (=> bm!21030 (= call!21033 (inRange!0 (ite c!37480 (index!5726 lt!113893) (index!5729 lt!113893)) (mask!10080 thiss!1504)))))

(declare-fun b!226154 () Bool)

(assert (=> b!226154 (= e!146741 (not call!21034))))

(declare-fun e!146753 () Bool)

(declare-fun array_inv!3475 (array!11102) Bool)

(declare-fun array_inv!3476 (array!11100) Bool)

(assert (=> b!226155 (= e!146748 (and tp!21342 tp_is_empty!5929 (array_inv!3475 (_keys!6284 thiss!1504)) (array_inv!3476 (_values!4213 thiss!1504)) e!146753))))

(declare-fun b!226156 () Bool)

(assert (=> b!226156 (= e!146753 (and e!146750 mapRes!10063))))

(declare-fun condMapEmpty!10063 () Bool)

(declare-fun mapDefault!10063 () ValueCell!2621)

