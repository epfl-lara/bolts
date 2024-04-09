; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!21960 () Bool)

(assert start!21960)

(declare-fun b!224145 () Bool)

(declare-fun b_free!6015 () Bool)

(declare-fun b_next!6015 () Bool)

(assert (=> b!224145 (= b_free!6015 (not b_next!6015))))

(declare-fun tp!21187 () Bool)

(declare-fun b_and!12931 () Bool)

(assert (=> b!224145 (= tp!21187 b_and!12931)))

(declare-fun b!224137 () Bool)

(declare-fun res!110282 () Bool)

(declare-fun e!145553 () Bool)

(assert (=> b!224137 (=> (not res!110282) (not e!145553))))

(declare-fun call!20877 () Bool)

(assert (=> b!224137 (= res!110282 call!20877)))

(declare-fun e!145545 () Bool)

(assert (=> b!224137 (= e!145545 e!145553)))

(declare-fun b!224138 () Bool)

(declare-fun e!145556 () Bool)

(declare-fun key!932 () (_ BitVec 64))

(declare-datatypes ((List!3353 0))(
  ( (Nil!3350) (Cons!3349 (h!3997 (_ BitVec 64)) (t!8320 List!3353)) )
))
(declare-fun contains!1552 (List!3353 (_ BitVec 64)) Bool)

(assert (=> b!224138 (= e!145556 (contains!1552 Nil!3350 key!932))))

(declare-fun b!224139 () Bool)

(declare-fun e!145558 () Bool)

(declare-fun tp_is_empty!5877 () Bool)

(assert (=> b!224139 (= e!145558 tp_is_empty!5877)))

(declare-fun b!224140 () Bool)

(declare-fun res!110265 () Bool)

(declare-fun e!145546 () Bool)

(assert (=> b!224140 (=> (not res!110265) (not e!145546))))

(assert (=> b!224140 (= res!110265 (not (contains!1552 Nil!3350 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!224141 () Bool)

(declare-datatypes ((Unit!6739 0))(
  ( (Unit!6740) )
))
(declare-fun e!145542 () Unit!6739)

(declare-fun Unit!6741 () Unit!6739)

(assert (=> b!224141 (= e!145542 Unit!6741)))

(declare-fun lt!113112 () Unit!6739)

(declare-datatypes ((V!7483 0))(
  ( (V!7484 (val!2983 Int)) )
))
(declare-datatypes ((ValueCell!2595 0))(
  ( (ValueCellFull!2595 (v!4999 V!7483)) (EmptyCell!2595) )
))
(declare-datatypes ((array!10996 0))(
  ( (array!10997 (arr!5217 (Array (_ BitVec 32) ValueCell!2595)) (size!5550 (_ BitVec 32))) )
))
(declare-datatypes ((array!10998 0))(
  ( (array!10999 (arr!5218 (Array (_ BitVec 32) (_ BitVec 64))) (size!5551 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3090 0))(
  ( (LongMapFixedSize!3091 (defaultEntry!4204 Int) (mask!10036 (_ BitVec 32)) (extraKeys!3941 (_ BitVec 32)) (zeroValue!4045 V!7483) (minValue!4045 V!7483) (_size!1594 (_ BitVec 32)) (_keys!6258 array!10998) (_values!4187 array!10996) (_vacant!1594 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3090)

(declare-fun lemmaArrayContainsKeyThenInListMap!77 (array!10998 array!10996 (_ BitVec 32) (_ BitVec 32) V!7483 V!7483 (_ BitVec 64) (_ BitVec 32) Int) Unit!6739)

(assert (=> b!224141 (= lt!113112 (lemmaArrayContainsKeyThenInListMap!77 (_keys!6258 thiss!1504) (_values!4187 thiss!1504) (mask!10036 thiss!1504) (extraKeys!3941 thiss!1504) (zeroValue!4045 thiss!1504) (minValue!4045 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4204 thiss!1504)))))

(assert (=> b!224141 false))

(declare-fun b!224142 () Bool)

(declare-fun e!145552 () Bool)

(declare-datatypes ((SeekEntryResult!866 0))(
  ( (MissingZero!866 (index!5634 (_ BitVec 32))) (Found!866 (index!5635 (_ BitVec 32))) (Intermediate!866 (undefined!1678 Bool) (index!5636 (_ BitVec 32)) (x!23134 (_ BitVec 32))) (Undefined!866) (MissingVacant!866 (index!5637 (_ BitVec 32))) )
))
(declare-fun lt!113114 () SeekEntryResult!866)

(get-info :version)

(assert (=> b!224142 (= e!145552 ((_ is Undefined!866) lt!113114))))

(declare-fun b!224143 () Bool)

(assert (=> b!224143 (= e!145546 false)))

(declare-fun lt!113109 () Bool)

(assert (=> b!224143 (= lt!113109 (contains!1552 Nil!3350 key!932))))

(declare-fun e!145555 () Bool)

(declare-fun e!145543 () Bool)

(declare-fun array_inv!3443 (array!10998) Bool)

(declare-fun array_inv!3444 (array!10996) Bool)

(assert (=> b!224145 (= e!145543 (and tp!21187 tp_is_empty!5877 (array_inv!3443 (_keys!6258 thiss!1504)) (array_inv!3444 (_values!4187 thiss!1504)) e!145555))))

(declare-fun mapIsEmpty!9985 () Bool)

(declare-fun mapRes!9985 () Bool)

(assert (=> mapIsEmpty!9985 mapRes!9985))

(declare-fun b!224146 () Bool)

(declare-fun e!145557 () Unit!6739)

(declare-fun lt!113115 () Unit!6739)

(assert (=> b!224146 (= e!145557 lt!113115)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!246 (array!10998 array!10996 (_ BitVec 32) (_ BitVec 32) V!7483 V!7483 (_ BitVec 64) Int) Unit!6739)

(assert (=> b!224146 (= lt!113115 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!246 (_keys!6258 thiss!1504) (_values!4187 thiss!1504) (mask!10036 thiss!1504) (extraKeys!3941 thiss!1504) (zeroValue!4045 thiss!1504) (minValue!4045 thiss!1504) key!932 (defaultEntry!4204 thiss!1504)))))

(declare-fun c!37166 () Bool)

(assert (=> b!224146 (= c!37166 ((_ is MissingZero!866) lt!113114))))

(assert (=> b!224146 e!145545))

(declare-fun bm!20874 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!20874 (= call!20877 (inRange!0 (ite c!37166 (index!5634 lt!113114) (index!5637 lt!113114)) (mask!10036 thiss!1504)))))

(declare-fun bm!20875 () Bool)

(declare-fun call!20878 () Bool)

(declare-fun arrayContainsKey!0 (array!10998 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!20875 (= call!20878 (arrayContainsKey!0 (_keys!6258 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!224147 () Bool)

(assert (=> b!224147 (= e!145553 (not call!20878))))

(declare-fun b!224148 () Bool)

(declare-fun res!110283 () Bool)

(declare-fun e!145541 () Bool)

(assert (=> b!224148 (=> (not res!110283) (not e!145541))))

(assert (=> b!224148 (= res!110283 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!224149 () Bool)

(declare-fun res!110271 () Bool)

(assert (=> b!224149 (=> (not res!110271) (not e!145546))))

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!224149 (= res!110271 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!5551 (_keys!6258 thiss!1504)))))))

(declare-fun b!224150 () Bool)

(declare-fun e!145549 () Bool)

(assert (=> b!224150 (= e!145552 e!145549)))

(declare-fun res!110277 () Bool)

(assert (=> b!224150 (= res!110277 call!20877)))

(assert (=> b!224150 (=> (not res!110277) (not e!145549))))

(declare-fun b!224151 () Bool)

(declare-fun res!110276 () Bool)

(assert (=> b!224151 (=> (not res!110276) (not e!145546))))

(declare-fun arrayNoDuplicates!0 (array!10998 (_ BitVec 32) List!3353) Bool)

(assert (=> b!224151 (= res!110276 (arrayNoDuplicates!0 (_keys!6258 thiss!1504) #b00000000000000000000000000000000 Nil!3350))))

(declare-fun b!224152 () Bool)

(declare-fun e!145551 () Bool)

(assert (=> b!224152 (= e!145541 e!145551)))

(declare-fun res!110268 () Bool)

(assert (=> b!224152 (=> (not res!110268) (not e!145551))))

(assert (=> b!224152 (= res!110268 (or (= lt!113114 (MissingZero!866 index!297)) (= lt!113114 (MissingVacant!866 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!10998 (_ BitVec 32)) SeekEntryResult!866)

(assert (=> b!224152 (= lt!113114 (seekEntryOrOpen!0 key!932 (_keys!6258 thiss!1504) (mask!10036 thiss!1504)))))

(declare-fun b!224153 () Bool)

(declare-fun res!110273 () Bool)

(assert (=> b!224153 (=> (not res!110273) (not e!145546))))

(declare-fun noDuplicate!83 (List!3353) Bool)

(assert (=> b!224153 (= res!110273 (noDuplicate!83 Nil!3350))))

(declare-fun b!224154 () Bool)

(declare-fun Unit!6742 () Unit!6739)

(assert (=> b!224154 (= e!145542 Unit!6742)))

(declare-fun b!224155 () Bool)

(declare-fun e!145550 () Bool)

(assert (=> b!224155 (= e!145550 e!145546)))

(declare-fun res!110275 () Bool)

(assert (=> b!224155 (=> (not res!110275) (not e!145546))))

(assert (=> b!224155 (= res!110275 (and (bvslt (size!5551 (_keys!6258 thiss!1504)) #b01111111111111111111111111111111) (bvslt #b00000000000000000000000000000000 (size!5551 (_keys!6258 thiss!1504)))))))

(declare-fun lt!113108 () Unit!6739)

(assert (=> b!224155 (= lt!113108 e!145542)))

(declare-fun c!37168 () Bool)

(declare-fun lt!113110 () Bool)

(assert (=> b!224155 (= c!37168 lt!113110)))

(assert (=> b!224155 (= lt!113110 (arrayContainsKey!0 (_keys!6258 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun mapNonEmpty!9985 () Bool)

(declare-fun tp!21186 () Bool)

(assert (=> mapNonEmpty!9985 (= mapRes!9985 (and tp!21186 e!145558))))

(declare-fun mapKey!9985 () (_ BitVec 32))

(declare-fun mapRest!9985 () (Array (_ BitVec 32) ValueCell!2595))

(declare-fun mapValue!9985 () ValueCell!2595)

(assert (=> mapNonEmpty!9985 (= (arr!5217 (_values!4187 thiss!1504)) (store mapRest!9985 mapKey!9985 mapValue!9985))))

(declare-fun b!224156 () Bool)

(declare-fun res!110272 () Bool)

(assert (=> b!224156 (=> (not res!110272) (not e!145546))))

(declare-fun e!145548 () Bool)

(assert (=> b!224156 (= res!110272 e!145548)))

(declare-fun res!110279 () Bool)

(assert (=> b!224156 (=> res!110279 e!145548)))

(assert (=> b!224156 (= res!110279 e!145556)))

(declare-fun res!110274 () Bool)

(assert (=> b!224156 (=> (not res!110274) (not e!145556))))

(assert (=> b!224156 (= res!110274 (bvsgt #b00000000000000000000000000000000 index!297))))

(declare-fun b!224157 () Bool)

(assert (=> b!224157 (= e!145549 (not call!20878))))

(declare-fun b!224158 () Bool)

(declare-fun res!110278 () Bool)

(assert (=> b!224158 (=> (not res!110278) (not e!145546))))

(assert (=> b!224158 (= res!110278 (not lt!113110))))

(declare-fun b!224159 () Bool)

(assert (=> b!224159 (= e!145551 e!145550)))

(declare-fun res!110281 () Bool)

(assert (=> b!224159 (=> (not res!110281) (not e!145550))))

(assert (=> b!224159 (= res!110281 (inRange!0 index!297 (mask!10036 thiss!1504)))))

(declare-fun lt!113111 () Unit!6739)

(assert (=> b!224159 (= lt!113111 e!145557)))

(declare-fun c!37167 () Bool)

(declare-datatypes ((tuple2!4418 0))(
  ( (tuple2!4419 (_1!2219 (_ BitVec 64)) (_2!2219 V!7483)) )
))
(declare-datatypes ((List!3354 0))(
  ( (Nil!3351) (Cons!3350 (h!3998 tuple2!4418) (t!8321 List!3354)) )
))
(declare-datatypes ((ListLongMap!3345 0))(
  ( (ListLongMap!3346 (toList!1688 List!3354)) )
))
(declare-fun contains!1553 (ListLongMap!3345 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1211 (array!10998 array!10996 (_ BitVec 32) (_ BitVec 32) V!7483 V!7483 (_ BitVec 32) Int) ListLongMap!3345)

(assert (=> b!224159 (= c!37167 (contains!1553 (getCurrentListMap!1211 (_keys!6258 thiss!1504) (_values!4187 thiss!1504) (mask!10036 thiss!1504) (extraKeys!3941 thiss!1504) (zeroValue!4045 thiss!1504) (minValue!4045 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4204 thiss!1504)) key!932))))

(declare-fun b!224160 () Bool)

(declare-fun e!145554 () Bool)

(assert (=> b!224160 (= e!145554 tp_is_empty!5877)))

(declare-fun b!224161 () Bool)

(declare-fun res!110270 () Bool)

(assert (=> b!224161 (=> (not res!110270) (not e!145553))))

(assert (=> b!224161 (= res!110270 (= (select (arr!5218 (_keys!6258 thiss!1504)) (index!5634 lt!113114)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!224162 () Bool)

(declare-fun res!110280 () Bool)

(assert (=> b!224162 (=> (not res!110280) (not e!145546))))

(assert (=> b!224162 (= res!110280 (not (contains!1552 Nil!3350 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!224163 () Bool)

(assert (=> b!224163 (= e!145555 (and e!145554 mapRes!9985))))

(declare-fun condMapEmpty!9985 () Bool)

(declare-fun mapDefault!9985 () ValueCell!2595)

(assert (=> b!224163 (= condMapEmpty!9985 (= (arr!5217 (_values!4187 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2595)) mapDefault!9985)))))

(declare-fun b!224164 () Bool)

(declare-fun Unit!6743 () Unit!6739)

(assert (=> b!224164 (= e!145557 Unit!6743)))

(declare-fun lt!113113 () Unit!6739)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!238 (array!10998 array!10996 (_ BitVec 32) (_ BitVec 32) V!7483 V!7483 (_ BitVec 64) Int) Unit!6739)

(assert (=> b!224164 (= lt!113113 (lemmaInListMapThenSeekEntryOrOpenFindsIt!238 (_keys!6258 thiss!1504) (_values!4187 thiss!1504) (mask!10036 thiss!1504) (extraKeys!3941 thiss!1504) (zeroValue!4045 thiss!1504) (minValue!4045 thiss!1504) key!932 (defaultEntry!4204 thiss!1504)))))

(assert (=> b!224164 false))

(declare-fun b!224165 () Bool)

(declare-fun e!145547 () Bool)

(assert (=> b!224165 (= e!145547 (not (contains!1552 Nil!3350 key!932)))))

(declare-fun b!224166 () Bool)

(declare-fun res!110269 () Bool)

(assert (=> b!224166 (= res!110269 (= (select (arr!5218 (_keys!6258 thiss!1504)) (index!5637 lt!113114)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!224166 (=> (not res!110269) (not e!145549))))

(declare-fun b!224144 () Bool)

(assert (=> b!224144 (= e!145548 e!145547)))

(declare-fun res!110266 () Bool)

(assert (=> b!224144 (=> (not res!110266) (not e!145547))))

(assert (=> b!224144 (= res!110266 (bvsle #b00000000000000000000000000000000 index!297))))

(declare-fun res!110267 () Bool)

(assert (=> start!21960 (=> (not res!110267) (not e!145541))))

(declare-fun valid!1237 (LongMapFixedSize!3090) Bool)

(assert (=> start!21960 (= res!110267 (valid!1237 thiss!1504))))

(assert (=> start!21960 e!145541))

(assert (=> start!21960 e!145543))

(assert (=> start!21960 true))

(declare-fun b!224167 () Bool)

(declare-fun c!37169 () Bool)

(assert (=> b!224167 (= c!37169 ((_ is MissingVacant!866) lt!113114))))

(assert (=> b!224167 (= e!145545 e!145552)))

(declare-fun b!224168 () Bool)

(declare-fun res!110284 () Bool)

(assert (=> b!224168 (=> (not res!110284) (not e!145546))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!224168 (= res!110284 (validKeyInArray!0 key!932))))

(assert (= (and start!21960 res!110267) b!224148))

(assert (= (and b!224148 res!110283) b!224152))

(assert (= (and b!224152 res!110268) b!224159))

(assert (= (and b!224159 c!37167) b!224164))

(assert (= (and b!224159 (not c!37167)) b!224146))

(assert (= (and b!224146 c!37166) b!224137))

(assert (= (and b!224146 (not c!37166)) b!224167))

(assert (= (and b!224137 res!110282) b!224161))

(assert (= (and b!224161 res!110270) b!224147))

(assert (= (and b!224167 c!37169) b!224150))

(assert (= (and b!224167 (not c!37169)) b!224142))

(assert (= (and b!224150 res!110277) b!224166))

(assert (= (and b!224166 res!110269) b!224157))

(assert (= (or b!224137 b!224150) bm!20874))

(assert (= (or b!224147 b!224157) bm!20875))

(assert (= (and b!224159 res!110281) b!224155))

(assert (= (and b!224155 c!37168) b!224141))

(assert (= (and b!224155 (not c!37168)) b!224154))

(assert (= (and b!224155 res!110275) b!224153))

(assert (= (and b!224153 res!110273) b!224140))

(assert (= (and b!224140 res!110265) b!224162))

(assert (= (and b!224162 res!110280) b!224156))

(assert (= (and b!224156 res!110274) b!224138))

(assert (= (and b!224156 (not res!110279)) b!224144))

(assert (= (and b!224144 res!110266) b!224165))

(assert (= (and b!224156 res!110272) b!224151))

(assert (= (and b!224151 res!110276) b!224149))

(assert (= (and b!224149 res!110271) b!224168))

(assert (= (and b!224168 res!110284) b!224158))

(assert (= (and b!224158 res!110278) b!224143))

(assert (= (and b!224163 condMapEmpty!9985) mapIsEmpty!9985))

(assert (= (and b!224163 (not condMapEmpty!9985)) mapNonEmpty!9985))

(assert (= (and mapNonEmpty!9985 ((_ is ValueCellFull!2595) mapValue!9985)) b!224139))

(assert (= (and b!224163 ((_ is ValueCellFull!2595) mapDefault!9985)) b!224160))

(assert (= b!224145 b!224163))

(assert (= start!21960 b!224145))

(declare-fun m!247309 () Bool)

(assert (=> b!224138 m!247309))

(declare-fun m!247311 () Bool)

(assert (=> bm!20874 m!247311))

(assert (=> b!224165 m!247309))

(assert (=> b!224143 m!247309))

(declare-fun m!247313 () Bool)

(assert (=> b!224152 m!247313))

(declare-fun m!247315 () Bool)

(assert (=> b!224166 m!247315))

(declare-fun m!247317 () Bool)

(assert (=> start!21960 m!247317))

(declare-fun m!247319 () Bool)

(assert (=> b!224145 m!247319))

(declare-fun m!247321 () Bool)

(assert (=> b!224145 m!247321))

(declare-fun m!247323 () Bool)

(assert (=> b!224151 m!247323))

(declare-fun m!247325 () Bool)

(assert (=> b!224146 m!247325))

(declare-fun m!247327 () Bool)

(assert (=> b!224168 m!247327))

(declare-fun m!247329 () Bool)

(assert (=> b!224159 m!247329))

(declare-fun m!247331 () Bool)

(assert (=> b!224159 m!247331))

(assert (=> b!224159 m!247331))

(declare-fun m!247333 () Bool)

(assert (=> b!224159 m!247333))

(declare-fun m!247335 () Bool)

(assert (=> b!224155 m!247335))

(declare-fun m!247337 () Bool)

(assert (=> b!224164 m!247337))

(declare-fun m!247339 () Bool)

(assert (=> b!224162 m!247339))

(declare-fun m!247341 () Bool)

(assert (=> mapNonEmpty!9985 m!247341))

(declare-fun m!247343 () Bool)

(assert (=> b!224140 m!247343))

(declare-fun m!247345 () Bool)

(assert (=> b!224153 m!247345))

(declare-fun m!247347 () Bool)

(assert (=> b!224161 m!247347))

(declare-fun m!247349 () Bool)

(assert (=> b!224141 m!247349))

(assert (=> bm!20875 m!247335))

(check-sat (not b!224146) (not b!224164) (not b!224140) (not b!224152) (not bm!20874) (not b_next!6015) (not b!224143) b_and!12931 (not mapNonEmpty!9985) (not b!224159) (not bm!20875) (not b!224138) (not b!224153) (not start!21960) (not b!224141) (not b!224165) (not b!224145) (not b!224168) (not b!224162) tp_is_empty!5877 (not b!224155) (not b!224151))
(check-sat b_and!12931 (not b_next!6015))
