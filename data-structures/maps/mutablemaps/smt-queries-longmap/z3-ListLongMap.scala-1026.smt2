; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!21852 () Bool)

(assert start!21852)

(declare-fun b!219895 () Bool)

(declare-fun b_free!5907 () Bool)

(declare-fun b_next!5907 () Bool)

(assert (=> b!219895 (= b_free!5907 (not b_next!5907))))

(declare-fun tp!20863 () Bool)

(declare-fun b_and!12823 () Bool)

(assert (=> b!219895 (= tp!20863 b_and!12823)))

(declare-fun b!219884 () Bool)

(declare-fun res!107810 () Bool)

(declare-fun e!143017 () Bool)

(assert (=> b!219884 (=> (not res!107810) (not e!143017))))

(declare-datatypes ((V!7339 0))(
  ( (V!7340 (val!2929 Int)) )
))
(declare-datatypes ((ValueCell!2541 0))(
  ( (ValueCellFull!2541 (v!4945 V!7339)) (EmptyCell!2541) )
))
(declare-datatypes ((array!10780 0))(
  ( (array!10781 (arr!5109 (Array (_ BitVec 32) ValueCell!2541)) (size!5442 (_ BitVec 32))) )
))
(declare-datatypes ((array!10782 0))(
  ( (array!10783 (arr!5110 (Array (_ BitVec 32) (_ BitVec 64))) (size!5443 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2982 0))(
  ( (LongMapFixedSize!2983 (defaultEntry!4150 Int) (mask!9946 (_ BitVec 32)) (extraKeys!3887 (_ BitVec 32)) (zeroValue!3991 V!7339) (minValue!3991 V!7339) (_size!1540 (_ BitVec 32)) (_keys!6204 array!10782) (_values!4133 array!10780) (_vacant!1540 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!2982)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!10782 (_ BitVec 32)) Bool)

(assert (=> b!219884 (= res!107810 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6204 thiss!1504) (mask!9946 thiss!1504)))))

(declare-fun b!219885 () Bool)

(declare-fun res!107813 () Bool)

(declare-datatypes ((SeekEntryResult!814 0))(
  ( (MissingZero!814 (index!5426 (_ BitVec 32))) (Found!814 (index!5427 (_ BitVec 32))) (Intermediate!814 (undefined!1626 Bool) (index!5428 (_ BitVec 32)) (x!22938 (_ BitVec 32))) (Undefined!814) (MissingVacant!814 (index!5429 (_ BitVec 32))) )
))
(declare-fun lt!112086 () SeekEntryResult!814)

(assert (=> b!219885 (= res!107813 (= (select (arr!5110 (_keys!6204 thiss!1504)) (index!5429 lt!112086)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!143014 () Bool)

(assert (=> b!219885 (=> (not res!107813) (not e!143014))))

(declare-fun b!219886 () Bool)

(declare-fun c!36596 () Bool)

(get-info :version)

(assert (=> b!219886 (= c!36596 ((_ is MissingVacant!814) lt!112086))))

(declare-fun e!143015 () Bool)

(declare-fun e!143008 () Bool)

(assert (=> b!219886 (= e!143015 e!143008)))

(declare-fun b!219887 () Bool)

(assert (=> b!219887 (= e!143017 false)))

(declare-fun lt!112089 () Bool)

(declare-datatypes ((List!3272 0))(
  ( (Nil!3269) (Cons!3268 (h!3916 (_ BitVec 64)) (t!8239 List!3272)) )
))
(declare-fun arrayNoDuplicates!0 (array!10782 (_ BitVec 32) List!3272) Bool)

(assert (=> b!219887 (= lt!112089 (arrayNoDuplicates!0 (_keys!6204 thiss!1504) #b00000000000000000000000000000000 Nil!3269))))

(declare-fun b!219888 () Bool)

(declare-fun e!143005 () Bool)

(declare-fun call!20553 () Bool)

(assert (=> b!219888 (= e!143005 (not call!20553))))

(declare-fun b!219889 () Bool)

(declare-fun e!143013 () Bool)

(assert (=> b!219889 (= e!143013 e!143017)))

(declare-fun res!107807 () Bool)

(assert (=> b!219889 (=> (not res!107807) (not e!143017))))

(declare-fun index!297 () (_ BitVec 32))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!219889 (= res!107807 (inRange!0 index!297 (mask!9946 thiss!1504)))))

(declare-datatypes ((Unit!6557 0))(
  ( (Unit!6558) )
))
(declare-fun lt!112087 () Unit!6557)

(declare-fun e!143006 () Unit!6557)

(assert (=> b!219889 (= lt!112087 e!143006)))

(declare-fun c!36594 () Bool)

(declare-fun key!932 () (_ BitVec 64))

(declare-datatypes ((tuple2!4346 0))(
  ( (tuple2!4347 (_1!2183 (_ BitVec 64)) (_2!2183 V!7339)) )
))
(declare-datatypes ((List!3273 0))(
  ( (Nil!3270) (Cons!3269 (h!3917 tuple2!4346) (t!8240 List!3273)) )
))
(declare-datatypes ((ListLongMap!3273 0))(
  ( (ListLongMap!3274 (toList!1652 List!3273)) )
))
(declare-fun contains!1489 (ListLongMap!3273 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1175 (array!10782 array!10780 (_ BitVec 32) (_ BitVec 32) V!7339 V!7339 (_ BitVec 32) Int) ListLongMap!3273)

(assert (=> b!219889 (= c!36594 (contains!1489 (getCurrentListMap!1175 (_keys!6204 thiss!1504) (_values!4133 thiss!1504) (mask!9946 thiss!1504) (extraKeys!3887 thiss!1504) (zeroValue!3991 thiss!1504) (minValue!3991 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4150 thiss!1504)) key!932))))

(declare-fun b!219890 () Bool)

(declare-fun res!107812 () Bool)

(assert (=> b!219890 (=> (not res!107812) (not e!143005))))

(declare-fun call!20554 () Bool)

(assert (=> b!219890 (= res!107812 call!20554)))

(assert (=> b!219890 (= e!143015 e!143005)))

(declare-fun mapIsEmpty!9823 () Bool)

(declare-fun mapRes!9823 () Bool)

(assert (=> mapIsEmpty!9823 mapRes!9823))

(declare-fun b!219891 () Bool)

(declare-fun res!107805 () Bool)

(assert (=> b!219891 (=> (not res!107805) (not e!143005))))

(assert (=> b!219891 (= res!107805 (= (select (arr!5110 (_keys!6204 thiss!1504)) (index!5426 lt!112086)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mapNonEmpty!9823 () Bool)

(declare-fun tp!20862 () Bool)

(declare-fun e!143009 () Bool)

(assert (=> mapNonEmpty!9823 (= mapRes!9823 (and tp!20862 e!143009))))

(declare-fun mapValue!9823 () ValueCell!2541)

(declare-fun mapRest!9823 () (Array (_ BitVec 32) ValueCell!2541))

(declare-fun mapKey!9823 () (_ BitVec 32))

(assert (=> mapNonEmpty!9823 (= (arr!5109 (_values!4133 thiss!1504)) (store mapRest!9823 mapKey!9823 mapValue!9823))))

(declare-fun b!219892 () Bool)

(assert (=> b!219892 (= e!143008 ((_ is Undefined!814) lt!112086))))

(declare-fun c!36595 () Bool)

(declare-fun bm!20550 () Bool)

(assert (=> bm!20550 (= call!20554 (inRange!0 (ite c!36595 (index!5426 lt!112086) (index!5429 lt!112086)) (mask!9946 thiss!1504)))))

(declare-fun res!107804 () Bool)

(declare-fun e!143007 () Bool)

(assert (=> start!21852 (=> (not res!107804) (not e!143007))))

(declare-fun valid!1198 (LongMapFixedSize!2982) Bool)

(assert (=> start!21852 (= res!107804 (valid!1198 thiss!1504))))

(assert (=> start!21852 e!143007))

(declare-fun e!143011 () Bool)

(assert (=> start!21852 e!143011))

(assert (=> start!21852 true))

(declare-fun b!219893 () Bool)

(declare-fun res!107808 () Bool)

(assert (=> b!219893 (=> (not res!107808) (not e!143017))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!219893 (= res!107808 (validMask!0 (mask!9946 thiss!1504)))))

(declare-fun b!219894 () Bool)

(declare-fun res!107814 () Bool)

(assert (=> b!219894 (=> (not res!107814) (not e!143017))))

(assert (=> b!219894 (= res!107814 (and (= (size!5442 (_values!4133 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!9946 thiss!1504))) (= (size!5443 (_keys!6204 thiss!1504)) (size!5442 (_values!4133 thiss!1504))) (bvsge (mask!9946 thiss!1504) #b00000000000000000000000000000000) (bvsge (extraKeys!3887 thiss!1504) #b00000000000000000000000000000000) (bvsle (extraKeys!3887 thiss!1504) #b00000000000000000000000000000011)))))

(declare-fun tp_is_empty!5769 () Bool)

(declare-fun e!143012 () Bool)

(declare-fun array_inv!3373 (array!10782) Bool)

(declare-fun array_inv!3374 (array!10780) Bool)

(assert (=> b!219895 (= e!143011 (and tp!20863 tp_is_empty!5769 (array_inv!3373 (_keys!6204 thiss!1504)) (array_inv!3374 (_values!4133 thiss!1504)) e!143012))))

(declare-fun b!219896 () Bool)

(declare-fun lt!112088 () Unit!6557)

(assert (=> b!219896 (= e!143006 lt!112088)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!209 (array!10782 array!10780 (_ BitVec 32) (_ BitVec 32) V!7339 V!7339 (_ BitVec 64) Int) Unit!6557)

(assert (=> b!219896 (= lt!112088 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!209 (_keys!6204 thiss!1504) (_values!4133 thiss!1504) (mask!9946 thiss!1504) (extraKeys!3887 thiss!1504) (zeroValue!3991 thiss!1504) (minValue!3991 thiss!1504) key!932 (defaultEntry!4150 thiss!1504)))))

(assert (=> b!219896 (= c!36595 ((_ is MissingZero!814) lt!112086))))

(assert (=> b!219896 e!143015))

(declare-fun b!219897 () Bool)

(declare-fun e!143010 () Bool)

(assert (=> b!219897 (= e!143012 (and e!143010 mapRes!9823))))

(declare-fun condMapEmpty!9823 () Bool)

(declare-fun mapDefault!9823 () ValueCell!2541)

(assert (=> b!219897 (= condMapEmpty!9823 (= (arr!5109 (_values!4133 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2541)) mapDefault!9823)))))

(declare-fun bm!20551 () Bool)

(declare-fun arrayContainsKey!0 (array!10782 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!20551 (= call!20553 (arrayContainsKey!0 (_keys!6204 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!219898 () Bool)

(declare-fun res!107806 () Bool)

(assert (=> b!219898 (=> (not res!107806) (not e!143017))))

(assert (=> b!219898 (= res!107806 (arrayContainsKey!0 (_keys!6204 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!219899 () Bool)

(assert (=> b!219899 (= e!143008 e!143014)))

(declare-fun res!107815 () Bool)

(assert (=> b!219899 (= res!107815 call!20554)))

(assert (=> b!219899 (=> (not res!107815) (not e!143014))))

(declare-fun b!219900 () Bool)

(declare-fun Unit!6559 () Unit!6557)

(assert (=> b!219900 (= e!143006 Unit!6559)))

(declare-fun lt!112085 () Unit!6557)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!200 (array!10782 array!10780 (_ BitVec 32) (_ BitVec 32) V!7339 V!7339 (_ BitVec 64) Int) Unit!6557)

(assert (=> b!219900 (= lt!112085 (lemmaInListMapThenSeekEntryOrOpenFindsIt!200 (_keys!6204 thiss!1504) (_values!4133 thiss!1504) (mask!9946 thiss!1504) (extraKeys!3887 thiss!1504) (zeroValue!3991 thiss!1504) (minValue!3991 thiss!1504) key!932 (defaultEntry!4150 thiss!1504)))))

(assert (=> b!219900 false))

(declare-fun b!219901 () Bool)

(declare-fun res!107811 () Bool)

(assert (=> b!219901 (=> (not res!107811) (not e!143007))))

(assert (=> b!219901 (= res!107811 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!219902 () Bool)

(assert (=> b!219902 (= e!143007 e!143013)))

(declare-fun res!107809 () Bool)

(assert (=> b!219902 (=> (not res!107809) (not e!143013))))

(assert (=> b!219902 (= res!107809 (or (= lt!112086 (MissingZero!814 index!297)) (= lt!112086 (MissingVacant!814 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!10782 (_ BitVec 32)) SeekEntryResult!814)

(assert (=> b!219902 (= lt!112086 (seekEntryOrOpen!0 key!932 (_keys!6204 thiss!1504) (mask!9946 thiss!1504)))))

(declare-fun b!219903 () Bool)

(assert (=> b!219903 (= e!143014 (not call!20553))))

(declare-fun b!219904 () Bool)

(assert (=> b!219904 (= e!143010 tp_is_empty!5769)))

(declare-fun b!219905 () Bool)

(assert (=> b!219905 (= e!143009 tp_is_empty!5769)))

(assert (= (and start!21852 res!107804) b!219901))

(assert (= (and b!219901 res!107811) b!219902))

(assert (= (and b!219902 res!107809) b!219889))

(assert (= (and b!219889 c!36594) b!219900))

(assert (= (and b!219889 (not c!36594)) b!219896))

(assert (= (and b!219896 c!36595) b!219890))

(assert (= (and b!219896 (not c!36595)) b!219886))

(assert (= (and b!219890 res!107812) b!219891))

(assert (= (and b!219891 res!107805) b!219888))

(assert (= (and b!219886 c!36596) b!219899))

(assert (= (and b!219886 (not c!36596)) b!219892))

(assert (= (and b!219899 res!107815) b!219885))

(assert (= (and b!219885 res!107813) b!219903))

(assert (= (or b!219890 b!219899) bm!20550))

(assert (= (or b!219888 b!219903) bm!20551))

(assert (= (and b!219889 res!107807) b!219898))

(assert (= (and b!219898 res!107806) b!219893))

(assert (= (and b!219893 res!107808) b!219894))

(assert (= (and b!219894 res!107814) b!219884))

(assert (= (and b!219884 res!107810) b!219887))

(assert (= (and b!219897 condMapEmpty!9823) mapIsEmpty!9823))

(assert (= (and b!219897 (not condMapEmpty!9823)) mapNonEmpty!9823))

(assert (= (and mapNonEmpty!9823 ((_ is ValueCellFull!2541) mapValue!9823)) b!219905))

(assert (= (and b!219897 ((_ is ValueCellFull!2541) mapDefault!9823)) b!219904))

(assert (= b!219895 b!219897))

(assert (= start!21852 b!219895))

(declare-fun m!245279 () Bool)

(assert (=> b!219887 m!245279))

(declare-fun m!245281 () Bool)

(assert (=> b!219900 m!245281))

(declare-fun m!245283 () Bool)

(assert (=> b!219895 m!245283))

(declare-fun m!245285 () Bool)

(assert (=> b!219895 m!245285))

(declare-fun m!245287 () Bool)

(assert (=> b!219902 m!245287))

(declare-fun m!245289 () Bool)

(assert (=> b!219898 m!245289))

(declare-fun m!245291 () Bool)

(assert (=> b!219893 m!245291))

(declare-fun m!245293 () Bool)

(assert (=> b!219884 m!245293))

(declare-fun m!245295 () Bool)

(assert (=> start!21852 m!245295))

(declare-fun m!245297 () Bool)

(assert (=> mapNonEmpty!9823 m!245297))

(declare-fun m!245299 () Bool)

(assert (=> b!219885 m!245299))

(declare-fun m!245301 () Bool)

(assert (=> bm!20550 m!245301))

(assert (=> bm!20551 m!245289))

(declare-fun m!245303 () Bool)

(assert (=> b!219889 m!245303))

(declare-fun m!245305 () Bool)

(assert (=> b!219889 m!245305))

(assert (=> b!219889 m!245305))

(declare-fun m!245307 () Bool)

(assert (=> b!219889 m!245307))

(declare-fun m!245309 () Bool)

(assert (=> b!219896 m!245309))

(declare-fun m!245311 () Bool)

(assert (=> b!219891 m!245311))

(check-sat tp_is_empty!5769 (not bm!20551) (not b!219889) (not start!21852) (not b!219884) (not b!219895) (not b_next!5907) b_and!12823 (not b!219896) (not b!219887) (not b!219893) (not b!219900) (not mapNonEmpty!9823) (not b!219902) (not b!219898) (not bm!20550))
(check-sat b_and!12823 (not b_next!5907))
