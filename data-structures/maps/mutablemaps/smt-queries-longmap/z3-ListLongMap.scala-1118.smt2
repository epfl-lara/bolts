; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!22968 () Bool)

(assert start!22968)

(declare-fun b!240159 () Bool)

(declare-fun b_free!6459 () Bool)

(declare-fun b_next!6459 () Bool)

(assert (=> b!240159 (= b_free!6459 (not b_next!6459))))

(declare-fun tp!22581 () Bool)

(declare-fun b_and!13443 () Bool)

(assert (=> b!240159 (= tp!22581 b_and!13443)))

(declare-fun b!240138 () Bool)

(declare-fun e!155899 () Bool)

(declare-fun call!22336 () Bool)

(assert (=> b!240138 (= e!155899 (not call!22336))))

(declare-fun b!240139 () Bool)

(declare-fun e!155904 () Bool)

(declare-fun tp_is_empty!6321 () Bool)

(assert (=> b!240139 (= e!155904 tp_is_empty!6321)))

(declare-fun b!240140 () Bool)

(declare-fun res!117737 () Bool)

(assert (=> b!240140 (=> (not res!117737) (not e!155899))))

(declare-fun call!22335 () Bool)

(assert (=> b!240140 (= res!117737 call!22335)))

(declare-fun e!155902 () Bool)

(assert (=> b!240140 (= e!155902 e!155899)))

(declare-fun b!240141 () Bool)

(declare-fun res!117735 () Bool)

(assert (=> b!240141 (=> (not res!117735) (not e!155899))))

(declare-datatypes ((V!8075 0))(
  ( (V!8076 (val!3205 Int)) )
))
(declare-datatypes ((ValueCell!2817 0))(
  ( (ValueCellFull!2817 (v!5239 V!8075)) (EmptyCell!2817) )
))
(declare-datatypes ((array!11920 0))(
  ( (array!11921 (arr!5661 (Array (_ BitVec 32) ValueCell!2817)) (size!6002 (_ BitVec 32))) )
))
(declare-datatypes ((array!11922 0))(
  ( (array!11923 (arr!5662 (Array (_ BitVec 32) (_ BitVec 64))) (size!6003 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3534 0))(
  ( (LongMapFixedSize!3535 (defaultEntry!4452 Int) (mask!10506 (_ BitVec 32)) (extraKeys!4189 (_ BitVec 32)) (zeroValue!4293 V!8075) (minValue!4293 V!8075) (_size!1816 (_ BitVec 32)) (_keys!6554 array!11922) (_values!4435 array!11920) (_vacant!1816 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3534)

(declare-datatypes ((SeekEntryResult!1053 0))(
  ( (MissingZero!1053 (index!6382 (_ BitVec 32))) (Found!1053 (index!6383 (_ BitVec 32))) (Intermediate!1053 (undefined!1865 Bool) (index!6384 (_ BitVec 32)) (x!24157 (_ BitVec 32))) (Undefined!1053) (MissingVacant!1053 (index!6385 (_ BitVec 32))) )
))
(declare-fun lt!120955 () SeekEntryResult!1053)

(assert (=> b!240141 (= res!117735 (= (select (arr!5662 (_keys!6554 thiss!1504)) (index!6382 lt!120955)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!240143 () Bool)

(declare-fun res!117742 () Bool)

(declare-fun e!155897 () Bool)

(assert (=> b!240143 (=> (not res!117742) (not e!155897))))

(declare-fun key!932 () (_ BitVec 64))

(assert (=> b!240143 (= res!117742 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!240144 () Bool)

(declare-fun res!117740 () Bool)

(declare-fun e!155903 () Bool)

(assert (=> b!240144 (=> (not res!117740) (not e!155903))))

(declare-datatypes ((List!3627 0))(
  ( (Nil!3624) (Cons!3623 (h!4279 (_ BitVec 64)) (t!8630 List!3627)) )
))
(declare-fun arrayNoDuplicates!0 (array!11922 (_ BitVec 32) List!3627) Bool)

(assert (=> b!240144 (= res!117740 (arrayNoDuplicates!0 (_keys!6554 thiss!1504) #b00000000000000000000000000000000 Nil!3624))))

(declare-fun b!240145 () Bool)

(declare-fun res!117743 () Bool)

(assert (=> b!240145 (= res!117743 (= (select (arr!5662 (_keys!6554 thiss!1504)) (index!6385 lt!120955)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!155907 () Bool)

(assert (=> b!240145 (=> (not res!117743) (not e!155907))))

(declare-fun b!240146 () Bool)

(declare-fun e!155908 () Bool)

(assert (=> b!240146 (= e!155908 e!155907)))

(declare-fun res!117739 () Bool)

(assert (=> b!240146 (= res!117739 call!22335)))

(assert (=> b!240146 (=> (not res!117739) (not e!155907))))

(declare-fun b!240147 () Bool)

(declare-fun e!155898 () Bool)

(assert (=> b!240147 (= e!155897 e!155898)))

(declare-fun res!117738 () Bool)

(assert (=> b!240147 (=> (not res!117738) (not e!155898))))

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!240147 (= res!117738 (or (= lt!120955 (MissingZero!1053 index!297)) (= lt!120955 (MissingVacant!1053 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11922 (_ BitVec 32)) SeekEntryResult!1053)

(assert (=> b!240147 (= lt!120955 (seekEntryOrOpen!0 key!932 (_keys!6554 thiss!1504) (mask!10506 thiss!1504)))))

(declare-fun b!240148 () Bool)

(declare-fun res!117746 () Bool)

(assert (=> b!240148 (=> (not res!117746) (not e!155903))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!11922 (_ BitVec 32)) Bool)

(assert (=> b!240148 (= res!117746 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6554 thiss!1504) (mask!10506 thiss!1504)))))

(declare-fun b!240149 () Bool)

(declare-fun res!117744 () Bool)

(assert (=> b!240149 (=> (not res!117744) (not e!155903))))

(declare-fun arrayContainsKey!0 (array!11922 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!240149 (= res!117744 (arrayContainsKey!0 (_keys!6554 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!240150 () Bool)

(declare-fun res!117741 () Bool)

(assert (=> b!240150 (=> (not res!117741) (not e!155903))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!240150 (= res!117741 (validMask!0 (mask!10506 thiss!1504)))))

(declare-fun mapIsEmpty!10713 () Bool)

(declare-fun mapRes!10713 () Bool)

(assert (=> mapIsEmpty!10713 mapRes!10713))

(declare-fun b!240151 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!240151 (= e!155903 (not (validKeyInArray!0 key!932)))))

(declare-fun b!240152 () Bool)

(declare-datatypes ((Unit!7382 0))(
  ( (Unit!7383) )
))
(declare-fun e!155905 () Unit!7382)

(declare-fun lt!120954 () Unit!7382)

(assert (=> b!240152 (= e!155905 lt!120954)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!348 (array!11922 array!11920 (_ BitVec 32) (_ BitVec 32) V!8075 V!8075 (_ BitVec 64) Int) Unit!7382)

(assert (=> b!240152 (= lt!120954 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!348 (_keys!6554 thiss!1504) (_values!4435 thiss!1504) (mask!10506 thiss!1504) (extraKeys!4189 thiss!1504) (zeroValue!4293 thiss!1504) (minValue!4293 thiss!1504) key!932 (defaultEntry!4452 thiss!1504)))))

(declare-fun c!40000 () Bool)

(get-info :version)

(assert (=> b!240152 (= c!40000 ((_ is MissingZero!1053) lt!120955))))

(assert (=> b!240152 e!155902))

(declare-fun b!240153 () Bool)

(assert (=> b!240153 (= e!155908 ((_ is Undefined!1053) lt!120955))))

(declare-fun b!240154 () Bool)

(declare-fun c!39999 () Bool)

(assert (=> b!240154 (= c!39999 ((_ is MissingVacant!1053) lt!120955))))

(assert (=> b!240154 (= e!155902 e!155908)))

(declare-fun bm!22332 () Bool)

(assert (=> bm!22332 (= call!22336 (arrayContainsKey!0 (_keys!6554 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!240155 () Bool)

(declare-fun e!155906 () Bool)

(assert (=> b!240155 (= e!155906 (and e!155904 mapRes!10713))))

(declare-fun condMapEmpty!10713 () Bool)

(declare-fun mapDefault!10713 () ValueCell!2817)

(assert (=> b!240155 (= condMapEmpty!10713 (= (arr!5661 (_values!4435 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2817)) mapDefault!10713)))))

(declare-fun b!240156 () Bool)

(declare-fun res!117736 () Bool)

(assert (=> b!240156 (=> (not res!117736) (not e!155903))))

(assert (=> b!240156 (= res!117736 (and (= (size!6002 (_values!4435 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!10506 thiss!1504))) (= (size!6003 (_keys!6554 thiss!1504)) (size!6002 (_values!4435 thiss!1504))) (bvsge (mask!10506 thiss!1504) #b00000000000000000000000000000000) (bvsge (extraKeys!4189 thiss!1504) #b00000000000000000000000000000000) (bvsle (extraKeys!4189 thiss!1504) #b00000000000000000000000000000011)))))

(declare-fun res!117745 () Bool)

(assert (=> start!22968 (=> (not res!117745) (not e!155897))))

(declare-fun valid!1384 (LongMapFixedSize!3534) Bool)

(assert (=> start!22968 (= res!117745 (valid!1384 thiss!1504))))

(assert (=> start!22968 e!155897))

(declare-fun e!155901 () Bool)

(assert (=> start!22968 e!155901))

(assert (=> start!22968 true))

(declare-fun b!240142 () Bool)

(assert (=> b!240142 (= e!155907 (not call!22336))))

(declare-fun b!240157 () Bool)

(assert (=> b!240157 (= e!155898 e!155903)))

(declare-fun res!117734 () Bool)

(assert (=> b!240157 (=> (not res!117734) (not e!155903))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!240157 (= res!117734 (inRange!0 index!297 (mask!10506 thiss!1504)))))

(declare-fun lt!120953 () Unit!7382)

(assert (=> b!240157 (= lt!120953 e!155905)))

(declare-fun c!39998 () Bool)

(declare-datatypes ((tuple2!4720 0))(
  ( (tuple2!4721 (_1!2370 (_ BitVec 64)) (_2!2370 V!8075)) )
))
(declare-datatypes ((List!3628 0))(
  ( (Nil!3625) (Cons!3624 (h!4280 tuple2!4720) (t!8631 List!3628)) )
))
(declare-datatypes ((ListLongMap!3647 0))(
  ( (ListLongMap!3648 (toList!1839 List!3628)) )
))
(declare-fun contains!1721 (ListLongMap!3647 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1362 (array!11922 array!11920 (_ BitVec 32) (_ BitVec 32) V!8075 V!8075 (_ BitVec 32) Int) ListLongMap!3647)

(assert (=> b!240157 (= c!39998 (contains!1721 (getCurrentListMap!1362 (_keys!6554 thiss!1504) (_values!4435 thiss!1504) (mask!10506 thiss!1504) (extraKeys!4189 thiss!1504) (zeroValue!4293 thiss!1504) (minValue!4293 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4452 thiss!1504)) key!932))))

(declare-fun b!240158 () Bool)

(declare-fun e!155900 () Bool)

(assert (=> b!240158 (= e!155900 tp_is_empty!6321)))

(declare-fun array_inv!3737 (array!11922) Bool)

(declare-fun array_inv!3738 (array!11920) Bool)

(assert (=> b!240159 (= e!155901 (and tp!22581 tp_is_empty!6321 (array_inv!3737 (_keys!6554 thiss!1504)) (array_inv!3738 (_values!4435 thiss!1504)) e!155906))))

(declare-fun bm!22333 () Bool)

(assert (=> bm!22333 (= call!22335 (inRange!0 (ite c!40000 (index!6382 lt!120955) (index!6385 lt!120955)) (mask!10506 thiss!1504)))))

(declare-fun b!240160 () Bool)

(declare-fun Unit!7384 () Unit!7382)

(assert (=> b!240160 (= e!155905 Unit!7384)))

(declare-fun lt!120952 () Unit!7382)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!338 (array!11922 array!11920 (_ BitVec 32) (_ BitVec 32) V!8075 V!8075 (_ BitVec 64) Int) Unit!7382)

(assert (=> b!240160 (= lt!120952 (lemmaInListMapThenSeekEntryOrOpenFindsIt!338 (_keys!6554 thiss!1504) (_values!4435 thiss!1504) (mask!10506 thiss!1504) (extraKeys!4189 thiss!1504) (zeroValue!4293 thiss!1504) (minValue!4293 thiss!1504) key!932 (defaultEntry!4452 thiss!1504)))))

(assert (=> b!240160 false))

(declare-fun mapNonEmpty!10713 () Bool)

(declare-fun tp!22580 () Bool)

(assert (=> mapNonEmpty!10713 (= mapRes!10713 (and tp!22580 e!155900))))

(declare-fun mapRest!10713 () (Array (_ BitVec 32) ValueCell!2817))

(declare-fun mapKey!10713 () (_ BitVec 32))

(declare-fun mapValue!10713 () ValueCell!2817)

(assert (=> mapNonEmpty!10713 (= (arr!5661 (_values!4435 thiss!1504)) (store mapRest!10713 mapKey!10713 mapValue!10713))))

(assert (= (and start!22968 res!117745) b!240143))

(assert (= (and b!240143 res!117742) b!240147))

(assert (= (and b!240147 res!117738) b!240157))

(assert (= (and b!240157 c!39998) b!240160))

(assert (= (and b!240157 (not c!39998)) b!240152))

(assert (= (and b!240152 c!40000) b!240140))

(assert (= (and b!240152 (not c!40000)) b!240154))

(assert (= (and b!240140 res!117737) b!240141))

(assert (= (and b!240141 res!117735) b!240138))

(assert (= (and b!240154 c!39999) b!240146))

(assert (= (and b!240154 (not c!39999)) b!240153))

(assert (= (and b!240146 res!117739) b!240145))

(assert (= (and b!240145 res!117743) b!240142))

(assert (= (or b!240140 b!240146) bm!22333))

(assert (= (or b!240138 b!240142) bm!22332))

(assert (= (and b!240157 res!117734) b!240149))

(assert (= (and b!240149 res!117744) b!240150))

(assert (= (and b!240150 res!117741) b!240156))

(assert (= (and b!240156 res!117736) b!240148))

(assert (= (and b!240148 res!117746) b!240144))

(assert (= (and b!240144 res!117740) b!240151))

(assert (= (and b!240155 condMapEmpty!10713) mapIsEmpty!10713))

(assert (= (and b!240155 (not condMapEmpty!10713)) mapNonEmpty!10713))

(assert (= (and mapNonEmpty!10713 ((_ is ValueCellFull!2817) mapValue!10713)) b!240158))

(assert (= (and b!240155 ((_ is ValueCellFull!2817) mapDefault!10713)) b!240139))

(assert (= b!240159 b!240155))

(assert (= start!22968 b!240159))

(declare-fun m!259861 () Bool)

(assert (=> b!240159 m!259861))

(declare-fun m!259863 () Bool)

(assert (=> b!240159 m!259863))

(declare-fun m!259865 () Bool)

(assert (=> mapNonEmpty!10713 m!259865))

(declare-fun m!259867 () Bool)

(assert (=> bm!22332 m!259867))

(assert (=> b!240149 m!259867))

(declare-fun m!259869 () Bool)

(assert (=> b!240152 m!259869))

(declare-fun m!259871 () Bool)

(assert (=> b!240144 m!259871))

(declare-fun m!259873 () Bool)

(assert (=> start!22968 m!259873))

(declare-fun m!259875 () Bool)

(assert (=> b!240147 m!259875))

(declare-fun m!259877 () Bool)

(assert (=> b!240150 m!259877))

(declare-fun m!259879 () Bool)

(assert (=> b!240151 m!259879))

(declare-fun m!259881 () Bool)

(assert (=> b!240145 m!259881))

(declare-fun m!259883 () Bool)

(assert (=> b!240157 m!259883))

(declare-fun m!259885 () Bool)

(assert (=> b!240157 m!259885))

(assert (=> b!240157 m!259885))

(declare-fun m!259887 () Bool)

(assert (=> b!240157 m!259887))

(declare-fun m!259889 () Bool)

(assert (=> b!240160 m!259889))

(declare-fun m!259891 () Bool)

(assert (=> bm!22333 m!259891))

(declare-fun m!259893 () Bool)

(assert (=> b!240148 m!259893))

(declare-fun m!259895 () Bool)

(assert (=> b!240141 m!259895))

(check-sat (not b!240149) (not bm!22333) tp_is_empty!6321 (not b!240151) (not b!240144) (not b_next!6459) (not b!240152) (not b!240157) (not b!240150) (not bm!22332) (not b!240159) (not b!240147) (not b!240148) b_and!13443 (not b!240160) (not mapNonEmpty!10713) (not start!22968))
(check-sat b_and!13443 (not b_next!6459))
