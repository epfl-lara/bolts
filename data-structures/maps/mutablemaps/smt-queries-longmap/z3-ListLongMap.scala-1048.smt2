; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!21984 () Bool)

(assert start!21984)

(declare-fun b!225096 () Bool)

(declare-fun b_free!6039 () Bool)

(declare-fun b_next!6039 () Bool)

(assert (=> b!225096 (= b_free!6039 (not b_next!6039))))

(declare-fun tp!21258 () Bool)

(declare-fun b_and!12955 () Bool)

(assert (=> b!225096 (= tp!21258 b_and!12955)))

(declare-fun mapIsEmpty!10021 () Bool)

(declare-fun mapRes!10021 () Bool)

(assert (=> mapIsEmpty!10021 mapRes!10021))

(declare-fun b!225083 () Bool)

(declare-datatypes ((Unit!6782 0))(
  ( (Unit!6783) )
))
(declare-fun e!146112 () Unit!6782)

(declare-fun Unit!6784 () Unit!6782)

(assert (=> b!225083 (= e!146112 Unit!6784)))

(declare-fun lt!113429 () Unit!6782)

(declare-datatypes ((V!7515 0))(
  ( (V!7516 (val!2995 Int)) )
))
(declare-datatypes ((ValueCell!2607 0))(
  ( (ValueCellFull!2607 (v!5011 V!7515)) (EmptyCell!2607) )
))
(declare-datatypes ((array!11044 0))(
  ( (array!11045 (arr!5241 (Array (_ BitVec 32) ValueCell!2607)) (size!5574 (_ BitVec 32))) )
))
(declare-datatypes ((array!11046 0))(
  ( (array!11047 (arr!5242 (Array (_ BitVec 32) (_ BitVec 64))) (size!5575 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3114 0))(
  ( (LongMapFixedSize!3115 (defaultEntry!4216 Int) (mask!10056 (_ BitVec 32)) (extraKeys!3953 (_ BitVec 32)) (zeroValue!4057 V!7515) (minValue!4057 V!7515) (_size!1606 (_ BitVec 32)) (_keys!6270 array!11046) (_values!4199 array!11044) (_vacant!1606 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3114)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun lemmaArrayContainsKeyThenInListMap!85 (array!11046 array!11044 (_ BitVec 32) (_ BitVec 32) V!7515 V!7515 (_ BitVec 64) (_ BitVec 32) Int) Unit!6782)

(assert (=> b!225083 (= lt!113429 (lemmaArrayContainsKeyThenInListMap!85 (_keys!6270 thiss!1504) (_values!4199 thiss!1504) (mask!10056 thiss!1504) (extraKeys!3953 thiss!1504) (zeroValue!4057 thiss!1504) (minValue!4057 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4216 thiss!1504)))))

(assert (=> b!225083 false))

(declare-fun b!225084 () Bool)

(declare-fun e!146120 () Bool)

(declare-fun e!146115 () Bool)

(assert (=> b!225084 (= e!146120 (not e!146115))))

(declare-fun res!110788 () Bool)

(assert (=> b!225084 (=> res!110788 e!146115)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!225084 (= res!110788 (not (validMask!0 (mask!10056 thiss!1504))))))

(declare-fun lt!113437 () array!11046)

(declare-fun arrayCountValidKeys!0 (array!11046 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!225084 (= (arrayCountValidKeys!0 lt!113437 #b00000000000000000000000000000000 (size!5575 (_keys!6270 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6270 thiss!1504) #b00000000000000000000000000000000 (size!5575 (_keys!6270 thiss!1504)))))))

(declare-fun lt!113435 () Unit!6782)

(declare-fun index!297 () (_ BitVec 32))

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!11046 (_ BitVec 32) (_ BitVec 64)) Unit!6782)

(assert (=> b!225084 (= lt!113435 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6270 thiss!1504) index!297 key!932))))

(declare-datatypes ((List!3370 0))(
  ( (Nil!3367) (Cons!3366 (h!4014 (_ BitVec 64)) (t!8337 List!3370)) )
))
(declare-fun arrayNoDuplicates!0 (array!11046 (_ BitVec 32) List!3370) Bool)

(assert (=> b!225084 (arrayNoDuplicates!0 lt!113437 #b00000000000000000000000000000000 Nil!3367)))

(assert (=> b!225084 (= lt!113437 (array!11047 (store (arr!5242 (_keys!6270 thiss!1504)) index!297 key!932) (size!5575 (_keys!6270 thiss!1504))))))

(declare-fun lt!113438 () Unit!6782)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!11046 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3370) Unit!6782)

(assert (=> b!225084 (= lt!113438 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6270 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3367))))

(declare-fun lt!113439 () Unit!6782)

(assert (=> b!225084 (= lt!113439 e!146112)))

(declare-fun c!37310 () Bool)

(declare-fun lt!113434 () Bool)

(assert (=> b!225084 (= c!37310 lt!113434)))

(declare-fun arrayContainsKey!0 (array!11046 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!225084 (= lt!113434 (arrayContainsKey!0 (_keys!6270 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun mapNonEmpty!10021 () Bool)

(declare-fun tp!21259 () Bool)

(declare-fun e!146118 () Bool)

(assert (=> mapNonEmpty!10021 (= mapRes!10021 (and tp!21259 e!146118))))

(declare-fun mapKey!10021 () (_ BitVec 32))

(declare-fun mapRest!10021 () (Array (_ BitVec 32) ValueCell!2607))

(declare-fun mapValue!10021 () ValueCell!2607)

(assert (=> mapNonEmpty!10021 (= (arr!5241 (_values!4199 thiss!1504)) (store mapRest!10021 mapKey!10021 mapValue!10021))))

(declare-fun b!225085 () Bool)

(declare-fun res!110790 () Bool)

(declare-fun e!146123 () Bool)

(assert (=> b!225085 (=> (not res!110790) (not e!146123))))

(assert (=> b!225085 (= res!110790 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!225087 () Bool)

(declare-fun tp_is_empty!5901 () Bool)

(assert (=> b!225087 (= e!146118 tp_is_empty!5901)))

(declare-fun b!225088 () Bool)

(declare-fun e!146122 () Unit!6782)

(declare-fun lt!113431 () Unit!6782)

(assert (=> b!225088 (= e!146122 lt!113431)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!255 (array!11046 array!11044 (_ BitVec 32) (_ BitVec 32) V!7515 V!7515 (_ BitVec 64) Int) Unit!6782)

(assert (=> b!225088 (= lt!113431 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!255 (_keys!6270 thiss!1504) (_values!4199 thiss!1504) (mask!10056 thiss!1504) (extraKeys!3953 thiss!1504) (zeroValue!4057 thiss!1504) (minValue!4057 thiss!1504) key!932 (defaultEntry!4216 thiss!1504)))))

(declare-fun c!37311 () Bool)

(declare-datatypes ((SeekEntryResult!875 0))(
  ( (MissingZero!875 (index!5670 (_ BitVec 32))) (Found!875 (index!5671 (_ BitVec 32))) (Intermediate!875 (undefined!1687 Bool) (index!5672 (_ BitVec 32)) (x!23175 (_ BitVec 32))) (Undefined!875) (MissingVacant!875 (index!5673 (_ BitVec 32))) )
))
(declare-fun lt!113432 () SeekEntryResult!875)

(get-info :version)

(assert (=> b!225088 (= c!37311 ((_ is MissingZero!875) lt!113432))))

(declare-fun e!146117 () Bool)

(assert (=> b!225088 e!146117))

(declare-fun bm!20946 () Bool)

(declare-fun call!20949 () Bool)

(assert (=> bm!20946 (= call!20949 (arrayContainsKey!0 (_keys!6270 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!225089 () Bool)

(declare-fun e!146124 () Bool)

(assert (=> b!225089 (= e!146123 e!146124)))

(declare-fun res!110791 () Bool)

(assert (=> b!225089 (=> (not res!110791) (not e!146124))))

(assert (=> b!225089 (= res!110791 (or (= lt!113432 (MissingZero!875 index!297)) (= lt!113432 (MissingVacant!875 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11046 (_ BitVec 32)) SeekEntryResult!875)

(assert (=> b!225089 (= lt!113432 (seekEntryOrOpen!0 key!932 (_keys!6270 thiss!1504) (mask!10056 thiss!1504)))))

(declare-fun b!225090 () Bool)

(declare-fun res!110786 () Bool)

(assert (=> b!225090 (=> res!110786 e!146115)))

(assert (=> b!225090 (= res!110786 (or (not (= (size!5575 (_keys!6270 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!10056 thiss!1504)))) (bvslt index!297 #b00000000000000000000000000000000) (bvsge index!297 (size!5575 (_keys!6270 thiss!1504)))))))

(declare-fun b!225091 () Bool)

(declare-fun res!110783 () Bool)

(declare-fun e!146125 () Bool)

(assert (=> b!225091 (=> (not res!110783) (not e!146125))))

(declare-fun call!20950 () Bool)

(assert (=> b!225091 (= res!110783 call!20950)))

(assert (=> b!225091 (= e!146117 e!146125)))

(declare-fun b!225092 () Bool)

(declare-fun res!110779 () Bool)

(assert (=> b!225092 (=> (not res!110779) (not e!146125))))

(assert (=> b!225092 (= res!110779 (= (select (arr!5242 (_keys!6270 thiss!1504)) (index!5670 lt!113432)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!225093 () Bool)

(declare-fun res!110787 () Bool)

(assert (=> b!225093 (=> res!110787 e!146115)))

(assert (=> b!225093 (= res!110787 lt!113434)))

(declare-fun b!225094 () Bool)

(declare-fun e!146111 () Bool)

(assert (=> b!225094 (= e!146111 tp_is_empty!5901)))

(declare-fun b!225095 () Bool)

(assert (=> b!225095 (= e!146124 e!146120)))

(declare-fun res!110780 () Bool)

(assert (=> b!225095 (=> (not res!110780) (not e!146120))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!225095 (= res!110780 (inRange!0 index!297 (mask!10056 thiss!1504)))))

(declare-fun lt!113430 () Unit!6782)

(assert (=> b!225095 (= lt!113430 e!146122)))

(declare-fun c!37313 () Bool)

(declare-datatypes ((tuple2!4434 0))(
  ( (tuple2!4435 (_1!2227 (_ BitVec 64)) (_2!2227 V!7515)) )
))
(declare-datatypes ((List!3371 0))(
  ( (Nil!3368) (Cons!3367 (h!4015 tuple2!4434) (t!8338 List!3371)) )
))
(declare-datatypes ((ListLongMap!3361 0))(
  ( (ListLongMap!3362 (toList!1696 List!3371)) )
))
(declare-fun contains!1564 (ListLongMap!3361 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1219 (array!11046 array!11044 (_ BitVec 32) (_ BitVec 32) V!7515 V!7515 (_ BitVec 32) Int) ListLongMap!3361)

(assert (=> b!225095 (= c!37313 (contains!1564 (getCurrentListMap!1219 (_keys!6270 thiss!1504) (_values!4199 thiss!1504) (mask!10056 thiss!1504) (extraKeys!3953 thiss!1504) (zeroValue!4057 thiss!1504) (minValue!4057 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4216 thiss!1504)) key!932))))

(declare-fun e!146113 () Bool)

(declare-fun e!146119 () Bool)

(declare-fun array_inv!3461 (array!11046) Bool)

(declare-fun array_inv!3462 (array!11044) Bool)

(assert (=> b!225096 (= e!146113 (and tp!21258 tp_is_empty!5901 (array_inv!3461 (_keys!6270 thiss!1504)) (array_inv!3462 (_values!4199 thiss!1504)) e!146119))))

(declare-fun b!225097 () Bool)

(assert (=> b!225097 (= e!146115 true)))

(declare-fun lt!113436 () Bool)

(assert (=> b!225097 (= lt!113436 (arrayNoDuplicates!0 (_keys!6270 thiss!1504) #b00000000000000000000000000000000 Nil!3367))))

(declare-fun b!225098 () Bool)

(declare-fun res!110782 () Bool)

(assert (=> b!225098 (=> res!110782 e!146115)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!11046 (_ BitVec 32)) Bool)

(assert (=> b!225098 (= res!110782 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6270 thiss!1504) (mask!10056 thiss!1504))))))

(declare-fun b!225099 () Bool)

(declare-fun res!110781 () Bool)

(assert (=> b!225099 (= res!110781 (= (select (arr!5242 (_keys!6270 thiss!1504)) (index!5673 lt!113432)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!146114 () Bool)

(assert (=> b!225099 (=> (not res!110781) (not e!146114))))

(declare-fun b!225100 () Bool)

(declare-fun c!37312 () Bool)

(assert (=> b!225100 (= c!37312 ((_ is MissingVacant!875) lt!113432))))

(declare-fun e!146116 () Bool)

(assert (=> b!225100 (= e!146117 e!146116)))

(declare-fun b!225101 () Bool)

(declare-fun res!110784 () Bool)

(assert (=> b!225101 (=> res!110784 e!146115)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!225101 (= res!110784 (not (validKeyInArray!0 key!932)))))

(declare-fun res!110789 () Bool)

(assert (=> start!21984 (=> (not res!110789) (not e!146123))))

(declare-fun valid!1248 (LongMapFixedSize!3114) Bool)

(assert (=> start!21984 (= res!110789 (valid!1248 thiss!1504))))

(assert (=> start!21984 e!146123))

(assert (=> start!21984 e!146113))

(assert (=> start!21984 true))

(declare-fun b!225086 () Bool)

(declare-fun Unit!6785 () Unit!6782)

(assert (=> b!225086 (= e!146112 Unit!6785)))

(declare-fun b!225102 () Bool)

(assert (=> b!225102 (= e!146116 e!146114)))

(declare-fun res!110785 () Bool)

(assert (=> b!225102 (= res!110785 call!20950)))

(assert (=> b!225102 (=> (not res!110785) (not e!146114))))

(declare-fun b!225103 () Bool)

(assert (=> b!225103 (= e!146114 (not call!20949))))

(declare-fun b!225104 () Bool)

(assert (=> b!225104 (= e!146116 ((_ is Undefined!875) lt!113432))))

(declare-fun b!225105 () Bool)

(assert (=> b!225105 (= e!146119 (and e!146111 mapRes!10021))))

(declare-fun condMapEmpty!10021 () Bool)

(declare-fun mapDefault!10021 () ValueCell!2607)

(assert (=> b!225105 (= condMapEmpty!10021 (= (arr!5241 (_values!4199 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2607)) mapDefault!10021)))))

(declare-fun b!225106 () Bool)

(declare-fun Unit!6786 () Unit!6782)

(assert (=> b!225106 (= e!146122 Unit!6786)))

(declare-fun lt!113433 () Unit!6782)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!247 (array!11046 array!11044 (_ BitVec 32) (_ BitVec 32) V!7515 V!7515 (_ BitVec 64) Int) Unit!6782)

(assert (=> b!225106 (= lt!113433 (lemmaInListMapThenSeekEntryOrOpenFindsIt!247 (_keys!6270 thiss!1504) (_values!4199 thiss!1504) (mask!10056 thiss!1504) (extraKeys!3953 thiss!1504) (zeroValue!4057 thiss!1504) (minValue!4057 thiss!1504) key!932 (defaultEntry!4216 thiss!1504)))))

(assert (=> b!225106 false))

(declare-fun bm!20947 () Bool)

(assert (=> bm!20947 (= call!20950 (inRange!0 (ite c!37311 (index!5670 lt!113432) (index!5673 lt!113432)) (mask!10056 thiss!1504)))))

(declare-fun b!225107 () Bool)

(assert (=> b!225107 (= e!146125 (not call!20949))))

(assert (= (and start!21984 res!110789) b!225085))

(assert (= (and b!225085 res!110790) b!225089))

(assert (= (and b!225089 res!110791) b!225095))

(assert (= (and b!225095 c!37313) b!225106))

(assert (= (and b!225095 (not c!37313)) b!225088))

(assert (= (and b!225088 c!37311) b!225091))

(assert (= (and b!225088 (not c!37311)) b!225100))

(assert (= (and b!225091 res!110783) b!225092))

(assert (= (and b!225092 res!110779) b!225107))

(assert (= (and b!225100 c!37312) b!225102))

(assert (= (and b!225100 (not c!37312)) b!225104))

(assert (= (and b!225102 res!110785) b!225099))

(assert (= (and b!225099 res!110781) b!225103))

(assert (= (or b!225091 b!225102) bm!20947))

(assert (= (or b!225107 b!225103) bm!20946))

(assert (= (and b!225095 res!110780) b!225084))

(assert (= (and b!225084 c!37310) b!225083))

(assert (= (and b!225084 (not c!37310)) b!225086))

(assert (= (and b!225084 (not res!110788)) b!225090))

(assert (= (and b!225090 (not res!110786)) b!225101))

(assert (= (and b!225101 (not res!110784)) b!225093))

(assert (= (and b!225093 (not res!110787)) b!225098))

(assert (= (and b!225098 (not res!110782)) b!225097))

(assert (= (and b!225105 condMapEmpty!10021) mapIsEmpty!10021))

(assert (= (and b!225105 (not condMapEmpty!10021)) mapNonEmpty!10021))

(assert (= (and mapNonEmpty!10021 ((_ is ValueCellFull!2607) mapValue!10021)) b!225087))

(assert (= (and b!225105 ((_ is ValueCellFull!2607) mapDefault!10021)) b!225094))

(assert (= b!225096 b!225105))

(assert (= start!21984 b!225096))

(declare-fun m!247827 () Bool)

(assert (=> b!225106 m!247827))

(declare-fun m!247829 () Bool)

(assert (=> b!225097 m!247829))

(declare-fun m!247831 () Bool)

(assert (=> bm!20946 m!247831))

(declare-fun m!247833 () Bool)

(assert (=> b!225096 m!247833))

(declare-fun m!247835 () Bool)

(assert (=> b!225096 m!247835))

(declare-fun m!247837 () Bool)

(assert (=> b!225092 m!247837))

(declare-fun m!247839 () Bool)

(assert (=> bm!20947 m!247839))

(declare-fun m!247841 () Bool)

(assert (=> b!225088 m!247841))

(declare-fun m!247843 () Bool)

(assert (=> mapNonEmpty!10021 m!247843))

(declare-fun m!247845 () Bool)

(assert (=> b!225083 m!247845))

(assert (=> b!225084 m!247831))

(declare-fun m!247847 () Bool)

(assert (=> b!225084 m!247847))

(declare-fun m!247849 () Bool)

(assert (=> b!225084 m!247849))

(declare-fun m!247851 () Bool)

(assert (=> b!225084 m!247851))

(declare-fun m!247853 () Bool)

(assert (=> b!225084 m!247853))

(declare-fun m!247855 () Bool)

(assert (=> b!225084 m!247855))

(declare-fun m!247857 () Bool)

(assert (=> b!225084 m!247857))

(declare-fun m!247859 () Bool)

(assert (=> b!225084 m!247859))

(declare-fun m!247861 () Bool)

(assert (=> start!21984 m!247861))

(declare-fun m!247863 () Bool)

(assert (=> b!225099 m!247863))

(declare-fun m!247865 () Bool)

(assert (=> b!225098 m!247865))

(declare-fun m!247867 () Bool)

(assert (=> b!225095 m!247867))

(declare-fun m!247869 () Bool)

(assert (=> b!225095 m!247869))

(assert (=> b!225095 m!247869))

(declare-fun m!247871 () Bool)

(assert (=> b!225095 m!247871))

(declare-fun m!247873 () Bool)

(assert (=> b!225101 m!247873))

(declare-fun m!247875 () Bool)

(assert (=> b!225089 m!247875))

(check-sat b_and!12955 (not mapNonEmpty!10021) (not b!225097) (not b!225098) (not b!225096) (not b!225084) (not b!225101) (not b!225106) (not bm!20947) (not b!225095) (not b!225088) (not b!225083) (not bm!20946) (not b_next!6039) (not b!225089) (not start!21984) tp_is_empty!5901)
(check-sat b_and!12955 (not b_next!6039))
