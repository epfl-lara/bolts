; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!21954 () Bool)

(assert start!21954)

(declare-fun b!223866 () Bool)

(declare-fun b_free!6009 () Bool)

(declare-fun b_next!6009 () Bool)

(assert (=> b!223866 (= b_free!6009 (not b_next!6009))))

(declare-fun tp!21169 () Bool)

(declare-fun b_and!12925 () Bool)

(assert (=> b!223866 (= tp!21169 b_and!12925)))

(declare-fun b!223849 () Bool)

(declare-fun e!145392 () Bool)

(declare-fun e!145391 () Bool)

(declare-fun mapRes!9976 () Bool)

(assert (=> b!223849 (= e!145392 (and e!145391 mapRes!9976))))

(declare-fun condMapEmpty!9976 () Bool)

(declare-datatypes ((V!7475 0))(
  ( (V!7476 (val!2980 Int)) )
))
(declare-datatypes ((ValueCell!2592 0))(
  ( (ValueCellFull!2592 (v!4996 V!7475)) (EmptyCell!2592) )
))
(declare-datatypes ((array!10984 0))(
  ( (array!10985 (arr!5211 (Array (_ BitVec 32) ValueCell!2592)) (size!5544 (_ BitVec 32))) )
))
(declare-datatypes ((array!10986 0))(
  ( (array!10987 (arr!5212 (Array (_ BitVec 32) (_ BitVec 64))) (size!5545 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3084 0))(
  ( (LongMapFixedSize!3085 (defaultEntry!4201 Int) (mask!10031 (_ BitVec 32)) (extraKeys!3938 (_ BitVec 32)) (zeroValue!4042 V!7475) (minValue!4042 V!7475) (_size!1591 (_ BitVec 32)) (_keys!6255 array!10986) (_values!4184 array!10984) (_vacant!1591 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3084)

(declare-fun mapDefault!9976 () ValueCell!2592)

(assert (=> b!223849 (= condMapEmpty!9976 (= (arr!5211 (_values!4184 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2592)) mapDefault!9976)))))

(declare-fun b!223850 () Bool)

(declare-datatypes ((Unit!6727 0))(
  ( (Unit!6728) )
))
(declare-fun e!145395 () Unit!6727)

(declare-fun Unit!6729 () Unit!6727)

(assert (=> b!223850 (= e!145395 Unit!6729)))

(declare-fun lt!113041 () Unit!6727)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!236 (array!10986 array!10984 (_ BitVec 32) (_ BitVec 32) V!7475 V!7475 (_ BitVec 64) Int) Unit!6727)

(assert (=> b!223850 (= lt!113041 (lemmaInListMapThenSeekEntryOrOpenFindsIt!236 (_keys!6255 thiss!1504) (_values!4184 thiss!1504) (mask!10031 thiss!1504) (extraKeys!3938 thiss!1504) (zeroValue!4042 thiss!1504) (minValue!4042 thiss!1504) key!932 (defaultEntry!4201 thiss!1504)))))

(assert (=> b!223850 false))

(declare-fun b!223851 () Bool)

(declare-fun res!110095 () Bool)

(declare-fun e!145382 () Bool)

(assert (=> b!223851 (=> (not res!110095) (not e!145382))))

(declare-datatypes ((SeekEntryResult!863 0))(
  ( (MissingZero!863 (index!5622 (_ BitVec 32))) (Found!863 (index!5623 (_ BitVec 32))) (Intermediate!863 (undefined!1675 Bool) (index!5624 (_ BitVec 32)) (x!23123 (_ BitVec 32))) (Undefined!863) (MissingVacant!863 (index!5625 (_ BitVec 32))) )
))
(declare-fun lt!113039 () SeekEntryResult!863)

(assert (=> b!223851 (= res!110095 (= (select (arr!5212 (_keys!6255 thiss!1504)) (index!5622 lt!113039)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!20856 () Bool)

(declare-fun call!20860 () Bool)

(declare-fun arrayContainsKey!0 (array!10986 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!20856 (= call!20860 (arrayContainsKey!0 (_keys!6255 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!223852 () Bool)

(declare-fun e!145393 () Bool)

(assert (=> b!223852 (= e!145393 (not call!20860))))

(declare-fun b!223853 () Bool)

(declare-fun e!145387 () Bool)

(get-info :version)

(assert (=> b!223853 (= e!145387 ((_ is Undefined!863) lt!113039))))

(declare-fun b!223854 () Bool)

(assert (=> b!223854 (= e!145387 e!145393)))

(declare-fun res!110088 () Bool)

(declare-fun call!20859 () Bool)

(assert (=> b!223854 (= res!110088 call!20859)))

(assert (=> b!223854 (=> (not res!110088) (not e!145393))))

(declare-fun b!223855 () Bool)

(declare-fun lt!113036 () Unit!6727)

(assert (=> b!223855 (= e!145395 lt!113036)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!244 (array!10986 array!10984 (_ BitVec 32) (_ BitVec 32) V!7475 V!7475 (_ BitVec 64) Int) Unit!6727)

(assert (=> b!223855 (= lt!113036 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!244 (_keys!6255 thiss!1504) (_values!4184 thiss!1504) (mask!10031 thiss!1504) (extraKeys!3938 thiss!1504) (zeroValue!4042 thiss!1504) (minValue!4042 thiss!1504) key!932 (defaultEntry!4201 thiss!1504)))))

(declare-fun c!37132 () Bool)

(assert (=> b!223855 (= c!37132 ((_ is MissingZero!863) lt!113039))))

(declare-fun e!145381 () Bool)

(assert (=> b!223855 e!145381))

(declare-fun b!223856 () Bool)

(declare-fun res!110100 () Bool)

(assert (=> b!223856 (= res!110100 (= (select (arr!5212 (_keys!6255 thiss!1504)) (index!5625 lt!113039)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!223856 (=> (not res!110100) (not e!145393))))

(declare-fun b!223857 () Bool)

(declare-fun res!110087 () Bool)

(declare-fun e!145396 () Bool)

(assert (=> b!223857 (=> (not res!110087) (not e!145396))))

(declare-datatypes ((List!3347 0))(
  ( (Nil!3344) (Cons!3343 (h!3991 (_ BitVec 64)) (t!8314 List!3347)) )
))
(declare-fun contains!1546 (List!3347 (_ BitVec 64)) Bool)

(assert (=> b!223857 (= res!110087 (not (contains!1546 Nil!3344 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!223858 () Bool)

(declare-fun e!145388 () Bool)

(declare-fun e!145379 () Bool)

(assert (=> b!223858 (= e!145388 e!145379)))

(declare-fun res!110099 () Bool)

(assert (=> b!223858 (=> (not res!110099) (not e!145379))))

(declare-fun index!297 () (_ BitVec 32))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!223858 (= res!110099 (inRange!0 index!297 (mask!10031 thiss!1504)))))

(declare-fun lt!113042 () Unit!6727)

(assert (=> b!223858 (= lt!113042 e!145395)))

(declare-fun c!37131 () Bool)

(declare-datatypes ((tuple2!4412 0))(
  ( (tuple2!4413 (_1!2216 (_ BitVec 64)) (_2!2216 V!7475)) )
))
(declare-datatypes ((List!3348 0))(
  ( (Nil!3345) (Cons!3344 (h!3992 tuple2!4412) (t!8315 List!3348)) )
))
(declare-datatypes ((ListLongMap!3339 0))(
  ( (ListLongMap!3340 (toList!1685 List!3348)) )
))
(declare-fun contains!1547 (ListLongMap!3339 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1208 (array!10986 array!10984 (_ BitVec 32) (_ BitVec 32) V!7475 V!7475 (_ BitVec 32) Int) ListLongMap!3339)

(assert (=> b!223858 (= c!37131 (contains!1547 (getCurrentListMap!1208 (_keys!6255 thiss!1504) (_values!4184 thiss!1504) (mask!10031 thiss!1504) (extraKeys!3938 thiss!1504) (zeroValue!4042 thiss!1504) (minValue!4042 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4201 thiss!1504)) key!932))))

(declare-fun res!110103 () Bool)

(declare-fun e!145386 () Bool)

(assert (=> start!21954 (=> (not res!110103) (not e!145386))))

(declare-fun valid!1235 (LongMapFixedSize!3084) Bool)

(assert (=> start!21954 (= res!110103 (valid!1235 thiss!1504))))

(assert (=> start!21954 e!145386))

(declare-fun e!145380 () Bool)

(assert (=> start!21954 e!145380))

(assert (=> start!21954 true))

(declare-fun b!223859 () Bool)

(declare-fun res!110101 () Bool)

(assert (=> b!223859 (=> (not res!110101) (not e!145396))))

(declare-fun lt!113038 () Bool)

(assert (=> b!223859 (= res!110101 (not lt!113038))))

(declare-fun b!223860 () Bool)

(assert (=> b!223860 (= e!145379 e!145396)))

(declare-fun res!110089 () Bool)

(assert (=> b!223860 (=> (not res!110089) (not e!145396))))

(assert (=> b!223860 (= res!110089 (and (bvslt (size!5545 (_keys!6255 thiss!1504)) #b01111111111111111111111111111111) (bvslt #b00000000000000000000000000000000 (size!5545 (_keys!6255 thiss!1504)))))))

(declare-fun lt!113043 () Unit!6727)

(declare-fun e!145394 () Unit!6727)

(assert (=> b!223860 (= lt!113043 e!145394)))

(declare-fun c!37130 () Bool)

(assert (=> b!223860 (= c!37130 lt!113038)))

(assert (=> b!223860 (= lt!113038 (arrayContainsKey!0 (_keys!6255 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!223861 () Bool)

(declare-fun res!110090 () Bool)

(assert (=> b!223861 (=> (not res!110090) (not e!145396))))

(assert (=> b!223861 (= res!110090 (not (contains!1546 Nil!3344 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!223862 () Bool)

(declare-fun e!145390 () Bool)

(declare-fun e!145384 () Bool)

(assert (=> b!223862 (= e!145390 e!145384)))

(declare-fun res!110093 () Bool)

(assert (=> b!223862 (=> (not res!110093) (not e!145384))))

(assert (=> b!223862 (= res!110093 (bvsle #b00000000000000000000000000000000 index!297))))

(declare-fun b!223863 () Bool)

(declare-fun e!145389 () Bool)

(declare-fun tp_is_empty!5871 () Bool)

(assert (=> b!223863 (= e!145389 tp_is_empty!5871)))

(declare-fun b!223864 () Bool)

(assert (=> b!223864 (= e!145382 (not call!20860))))

(declare-fun b!223865 () Bool)

(declare-fun e!145383 () Bool)

(assert (=> b!223865 (= e!145383 (contains!1546 Nil!3344 key!932))))

(declare-fun array_inv!3439 (array!10986) Bool)

(declare-fun array_inv!3440 (array!10984) Bool)

(assert (=> b!223866 (= e!145380 (and tp!21169 tp_is_empty!5871 (array_inv!3439 (_keys!6255 thiss!1504)) (array_inv!3440 (_values!4184 thiss!1504)) e!145392))))

(declare-fun b!223867 () Bool)

(declare-fun Unit!6730 () Unit!6727)

(assert (=> b!223867 (= e!145394 Unit!6730)))

(declare-fun lt!113037 () Unit!6727)

(declare-fun lemmaArrayContainsKeyThenInListMap!75 (array!10986 array!10984 (_ BitVec 32) (_ BitVec 32) V!7475 V!7475 (_ BitVec 64) (_ BitVec 32) Int) Unit!6727)

(assert (=> b!223867 (= lt!113037 (lemmaArrayContainsKeyThenInListMap!75 (_keys!6255 thiss!1504) (_values!4184 thiss!1504) (mask!10031 thiss!1504) (extraKeys!3938 thiss!1504) (zeroValue!4042 thiss!1504) (minValue!4042 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4201 thiss!1504)))))

(assert (=> b!223867 false))

(declare-fun b!223868 () Bool)

(declare-fun res!110094 () Bool)

(assert (=> b!223868 (=> (not res!110094) (not e!145396))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!223868 (= res!110094 (validKeyInArray!0 key!932))))

(declare-fun b!223869 () Bool)

(assert (=> b!223869 (= e!145396 false)))

(declare-fun lt!113040 () Bool)

(assert (=> b!223869 (= lt!113040 (contains!1546 Nil!3344 key!932))))

(declare-fun mapIsEmpty!9976 () Bool)

(assert (=> mapIsEmpty!9976 mapRes!9976))

(declare-fun b!223870 () Bool)

(declare-fun res!110097 () Bool)

(assert (=> b!223870 (=> (not res!110097) (not e!145396))))

(declare-fun noDuplicate!81 (List!3347) Bool)

(assert (=> b!223870 (= res!110097 (noDuplicate!81 Nil!3344))))

(declare-fun b!223871 () Bool)

(assert (=> b!223871 (= e!145391 tp_is_empty!5871)))

(declare-fun mapNonEmpty!9976 () Bool)

(declare-fun tp!21168 () Bool)

(assert (=> mapNonEmpty!9976 (= mapRes!9976 (and tp!21168 e!145389))))

(declare-fun mapKey!9976 () (_ BitVec 32))

(declare-fun mapRest!9976 () (Array (_ BitVec 32) ValueCell!2592))

(declare-fun mapValue!9976 () ValueCell!2592)

(assert (=> mapNonEmpty!9976 (= (arr!5211 (_values!4184 thiss!1504)) (store mapRest!9976 mapKey!9976 mapValue!9976))))

(declare-fun b!223872 () Bool)

(declare-fun res!110085 () Bool)

(assert (=> b!223872 (=> (not res!110085) (not e!145396))))

(assert (=> b!223872 (= res!110085 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!5545 (_keys!6255 thiss!1504)))))))

(declare-fun b!223873 () Bool)

(assert (=> b!223873 (= e!145386 e!145388)))

(declare-fun res!110086 () Bool)

(assert (=> b!223873 (=> (not res!110086) (not e!145388))))

(assert (=> b!223873 (= res!110086 (or (= lt!113039 (MissingZero!863 index!297)) (= lt!113039 (MissingVacant!863 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!10986 (_ BitVec 32)) SeekEntryResult!863)

(assert (=> b!223873 (= lt!113039 (seekEntryOrOpen!0 key!932 (_keys!6255 thiss!1504) (mask!10031 thiss!1504)))))

(declare-fun b!223874 () Bool)

(declare-fun res!110091 () Bool)

(assert (=> b!223874 (=> (not res!110091) (not e!145396))))

(assert (=> b!223874 (= res!110091 e!145390)))

(declare-fun res!110098 () Bool)

(assert (=> b!223874 (=> res!110098 e!145390)))

(assert (=> b!223874 (= res!110098 e!145383)))

(declare-fun res!110092 () Bool)

(assert (=> b!223874 (=> (not res!110092) (not e!145383))))

(assert (=> b!223874 (= res!110092 (bvsgt #b00000000000000000000000000000000 index!297))))

(declare-fun b!223875 () Bool)

(declare-fun res!110102 () Bool)

(assert (=> b!223875 (=> (not res!110102) (not e!145386))))

(assert (=> b!223875 (= res!110102 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun bm!20857 () Bool)

(assert (=> bm!20857 (= call!20859 (inRange!0 (ite c!37132 (index!5622 lt!113039) (index!5625 lt!113039)) (mask!10031 thiss!1504)))))

(declare-fun b!223876 () Bool)

(assert (=> b!223876 (= e!145384 (not (contains!1546 Nil!3344 key!932)))))

(declare-fun b!223877 () Bool)

(declare-fun res!110104 () Bool)

(assert (=> b!223877 (=> (not res!110104) (not e!145382))))

(assert (=> b!223877 (= res!110104 call!20859)))

(assert (=> b!223877 (= e!145381 e!145382)))

(declare-fun b!223878 () Bool)

(declare-fun c!37133 () Bool)

(assert (=> b!223878 (= c!37133 ((_ is MissingVacant!863) lt!113039))))

(assert (=> b!223878 (= e!145381 e!145387)))

(declare-fun b!223879 () Bool)

(declare-fun Unit!6731 () Unit!6727)

(assert (=> b!223879 (= e!145394 Unit!6731)))

(declare-fun b!223880 () Bool)

(declare-fun res!110096 () Bool)

(assert (=> b!223880 (=> (not res!110096) (not e!145396))))

(declare-fun arrayNoDuplicates!0 (array!10986 (_ BitVec 32) List!3347) Bool)

(assert (=> b!223880 (= res!110096 (arrayNoDuplicates!0 (_keys!6255 thiss!1504) #b00000000000000000000000000000000 Nil!3344))))

(assert (= (and start!21954 res!110103) b!223875))

(assert (= (and b!223875 res!110102) b!223873))

(assert (= (and b!223873 res!110086) b!223858))

(assert (= (and b!223858 c!37131) b!223850))

(assert (= (and b!223858 (not c!37131)) b!223855))

(assert (= (and b!223855 c!37132) b!223877))

(assert (= (and b!223855 (not c!37132)) b!223878))

(assert (= (and b!223877 res!110104) b!223851))

(assert (= (and b!223851 res!110095) b!223864))

(assert (= (and b!223878 c!37133) b!223854))

(assert (= (and b!223878 (not c!37133)) b!223853))

(assert (= (and b!223854 res!110088) b!223856))

(assert (= (and b!223856 res!110100) b!223852))

(assert (= (or b!223877 b!223854) bm!20857))

(assert (= (or b!223864 b!223852) bm!20856))

(assert (= (and b!223858 res!110099) b!223860))

(assert (= (and b!223860 c!37130) b!223867))

(assert (= (and b!223860 (not c!37130)) b!223879))

(assert (= (and b!223860 res!110089) b!223870))

(assert (= (and b!223870 res!110097) b!223857))

(assert (= (and b!223857 res!110087) b!223861))

(assert (= (and b!223861 res!110090) b!223874))

(assert (= (and b!223874 res!110092) b!223865))

(assert (= (and b!223874 (not res!110098)) b!223862))

(assert (= (and b!223862 res!110093) b!223876))

(assert (= (and b!223874 res!110091) b!223880))

(assert (= (and b!223880 res!110096) b!223872))

(assert (= (and b!223872 res!110085) b!223868))

(assert (= (and b!223868 res!110094) b!223859))

(assert (= (and b!223859 res!110101) b!223869))

(assert (= (and b!223849 condMapEmpty!9976) mapIsEmpty!9976))

(assert (= (and b!223849 (not condMapEmpty!9976)) mapNonEmpty!9976))

(assert (= (and mapNonEmpty!9976 ((_ is ValueCellFull!2592) mapValue!9976)) b!223863))

(assert (= (and b!223849 ((_ is ValueCellFull!2592) mapDefault!9976)) b!223871))

(assert (= b!223866 b!223849))

(assert (= start!21954 b!223866))

(declare-fun m!247183 () Bool)

(assert (=> b!223861 m!247183))

(declare-fun m!247185 () Bool)

(assert (=> bm!20856 m!247185))

(declare-fun m!247187 () Bool)

(assert (=> mapNonEmpty!9976 m!247187))

(declare-fun m!247189 () Bool)

(assert (=> start!21954 m!247189))

(declare-fun m!247191 () Bool)

(assert (=> b!223856 m!247191))

(assert (=> b!223860 m!247185))

(declare-fun m!247193 () Bool)

(assert (=> bm!20857 m!247193))

(declare-fun m!247195 () Bool)

(assert (=> b!223851 m!247195))

(declare-fun m!247197 () Bool)

(assert (=> b!223870 m!247197))

(declare-fun m!247199 () Bool)

(assert (=> b!223868 m!247199))

(declare-fun m!247201 () Bool)

(assert (=> b!223857 m!247201))

(declare-fun m!247203 () Bool)

(assert (=> b!223873 m!247203))

(declare-fun m!247205 () Bool)

(assert (=> b!223876 m!247205))

(declare-fun m!247207 () Bool)

(assert (=> b!223855 m!247207))

(declare-fun m!247209 () Bool)

(assert (=> b!223867 m!247209))

(declare-fun m!247211 () Bool)

(assert (=> b!223850 m!247211))

(assert (=> b!223869 m!247205))

(declare-fun m!247213 () Bool)

(assert (=> b!223858 m!247213))

(declare-fun m!247215 () Bool)

(assert (=> b!223858 m!247215))

(assert (=> b!223858 m!247215))

(declare-fun m!247217 () Bool)

(assert (=> b!223858 m!247217))

(declare-fun m!247219 () Bool)

(assert (=> b!223880 m!247219))

(assert (=> b!223865 m!247205))

(declare-fun m!247221 () Bool)

(assert (=> b!223866 m!247221))

(declare-fun m!247223 () Bool)

(assert (=> b!223866 m!247223))

(check-sat (not bm!20856) (not bm!20857) (not b!223880) (not b!223858) (not b!223869) (not b!223857) b_and!12925 (not b!223873) (not b!223865) (not b!223867) (not b!223860) (not start!21954) tp_is_empty!5871 (not b!223868) (not b!223870) (not b!223866) (not b!223855) (not mapNonEmpty!9976) (not b!223861) (not b!223876) (not b_next!6009) (not b!223850))
(check-sat b_and!12925 (not b_next!6009))
