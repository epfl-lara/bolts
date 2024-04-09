; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!21942 () Bool)

(assert start!21942)

(declare-fun b!223294 () Bool)

(declare-fun b_free!5997 () Bool)

(declare-fun b_next!5997 () Bool)

(assert (=> b!223294 (= b_free!5997 (not b_next!5997))))

(declare-fun tp!21132 () Bool)

(declare-fun b_and!12913 () Bool)

(assert (=> b!223294 (= tp!21132 b_and!12913)))

(declare-fun b!223273 () Bool)

(declare-fun e!145069 () Bool)

(declare-fun tp_is_empty!5859 () Bool)

(assert (=> b!223273 (= e!145069 tp_is_empty!5859)))

(declare-fun b!223275 () Bool)

(declare-fun e!145070 () Bool)

(declare-fun e!145067 () Bool)

(assert (=> b!223275 (= e!145070 e!145067)))

(declare-fun res!109733 () Bool)

(declare-fun call!20823 () Bool)

(assert (=> b!223275 (= res!109733 call!20823)))

(assert (=> b!223275 (=> (not res!109733) (not e!145067))))

(declare-fun b!223276 () Bool)

(declare-fun res!109739 () Bool)

(declare-fun e!145064 () Bool)

(assert (=> b!223276 (=> (not res!109739) (not e!145064))))

(declare-datatypes ((List!3338 0))(
  ( (Nil!3335) (Cons!3334 (h!3982 (_ BitVec 64)) (t!8305 List!3338)) )
))
(declare-fun noDuplicate!76 (List!3338) Bool)

(assert (=> b!223276 (= res!109739 (noDuplicate!76 Nil!3335))))

(declare-fun bm!20820 () Bool)

(declare-fun c!37060 () Bool)

(declare-datatypes ((V!7459 0))(
  ( (V!7460 (val!2974 Int)) )
))
(declare-datatypes ((ValueCell!2586 0))(
  ( (ValueCellFull!2586 (v!4990 V!7459)) (EmptyCell!2586) )
))
(declare-datatypes ((array!10960 0))(
  ( (array!10961 (arr!5199 (Array (_ BitVec 32) ValueCell!2586)) (size!5532 (_ BitVec 32))) )
))
(declare-datatypes ((array!10962 0))(
  ( (array!10963 (arr!5200 (Array (_ BitVec 32) (_ BitVec 64))) (size!5533 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3072 0))(
  ( (LongMapFixedSize!3073 (defaultEntry!4195 Int) (mask!10021 (_ BitVec 32)) (extraKeys!3932 (_ BitVec 32)) (zeroValue!4036 V!7459) (minValue!4036 V!7459) (_size!1585 (_ BitVec 32)) (_keys!6249 array!10962) (_values!4178 array!10960) (_vacant!1585 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3072)

(declare-datatypes ((SeekEntryResult!857 0))(
  ( (MissingZero!857 (index!5598 (_ BitVec 32))) (Found!857 (index!5599 (_ BitVec 32))) (Intermediate!857 (undefined!1669 Bool) (index!5600 (_ BitVec 32)) (x!23101 (_ BitVec 32))) (Undefined!857) (MissingVacant!857 (index!5601 (_ BitVec 32))) )
))
(declare-fun lt!112899 () SeekEntryResult!857)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!20820 (= call!20823 (inRange!0 (ite c!37060 (index!5598 lt!112899) (index!5601 lt!112899)) (mask!10021 thiss!1504)))))

(declare-fun b!223277 () Bool)

(declare-fun e!145063 () Bool)

(assert (=> b!223277 (= e!145063 tp_is_empty!5859)))

(declare-fun b!223278 () Bool)

(declare-fun res!109742 () Bool)

(assert (=> b!223278 (=> (not res!109742) (not e!145064))))

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!223278 (= res!109742 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!5533 (_keys!6249 thiss!1504)))))))

(declare-fun b!223279 () Bool)

(declare-fun c!37059 () Bool)

(get-info :version)

(assert (=> b!223279 (= c!37059 ((_ is MissingVacant!857) lt!112899))))

(declare-fun e!145068 () Bool)

(assert (=> b!223279 (= e!145068 e!145070)))

(declare-fun b!223280 () Bool)

(declare-fun res!109732 () Bool)

(assert (=> b!223280 (=> (not res!109732) (not e!145064))))

(declare-fun contains!1537 (List!3338 (_ BitVec 64)) Bool)

(assert (=> b!223280 (= res!109732 (not (contains!1537 Nil!3335 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!223281 () Bool)

(declare-fun res!109737 () Bool)

(declare-fun e!145065 () Bool)

(assert (=> b!223281 (=> (not res!109737) (not e!145065))))

(assert (=> b!223281 (= res!109737 call!20823)))

(assert (=> b!223281 (= e!145068 e!145065)))

(declare-fun b!223282 () Bool)

(declare-fun e!145057 () Bool)

(declare-fun e!145071 () Bool)

(assert (=> b!223282 (= e!145057 e!145071)))

(declare-fun res!109725 () Bool)

(assert (=> b!223282 (=> (not res!109725) (not e!145071))))

(assert (=> b!223282 (= res!109725 (inRange!0 index!297 (mask!10021 thiss!1504)))))

(declare-datatypes ((Unit!6705 0))(
  ( (Unit!6706) )
))
(declare-fun lt!112895 () Unit!6705)

(declare-fun e!145059 () Unit!6705)

(assert (=> b!223282 (= lt!112895 e!145059)))

(declare-fun c!37058 () Bool)

(declare-fun key!932 () (_ BitVec 64))

(declare-datatypes ((tuple2!4406 0))(
  ( (tuple2!4407 (_1!2213 (_ BitVec 64)) (_2!2213 V!7459)) )
))
(declare-datatypes ((List!3339 0))(
  ( (Nil!3336) (Cons!3335 (h!3983 tuple2!4406) (t!8306 List!3339)) )
))
(declare-datatypes ((ListLongMap!3333 0))(
  ( (ListLongMap!3334 (toList!1682 List!3339)) )
))
(declare-fun contains!1538 (ListLongMap!3333 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1205 (array!10962 array!10960 (_ BitVec 32) (_ BitVec 32) V!7459 V!7459 (_ BitVec 32) Int) ListLongMap!3333)

(assert (=> b!223282 (= c!37058 (contains!1538 (getCurrentListMap!1205 (_keys!6249 thiss!1504) (_values!4178 thiss!1504) (mask!10021 thiss!1504) (extraKeys!3932 thiss!1504) (zeroValue!4036 thiss!1504) (minValue!4036 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4195 thiss!1504)) key!932))))

(declare-fun b!223283 () Bool)

(declare-fun res!109740 () Bool)

(assert (=> b!223283 (=> (not res!109740) (not e!145064))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!223283 (= res!109740 (validKeyInArray!0 key!932))))

(declare-fun b!223284 () Bool)

(declare-fun e!145060 () Bool)

(declare-fun mapRes!9958 () Bool)

(assert (=> b!223284 (= e!145060 (and e!145069 mapRes!9958))))

(declare-fun condMapEmpty!9958 () Bool)

(declare-fun mapDefault!9958 () ValueCell!2586)

(assert (=> b!223284 (= condMapEmpty!9958 (= (arr!5199 (_values!4178 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2586)) mapDefault!9958)))))

(declare-fun b!223285 () Bool)

(declare-fun res!109736 () Bool)

(assert (=> b!223285 (=> (not res!109736) (not e!145064))))

(declare-fun arrayNoDuplicates!0 (array!10962 (_ BitVec 32) List!3338) Bool)

(assert (=> b!223285 (= res!109736 (arrayNoDuplicates!0 (_keys!6249 thiss!1504) #b00000000000000000000000000000000 Nil!3335))))

(declare-fun b!223286 () Bool)

(declare-fun res!109735 () Bool)

(declare-fun e!145055 () Bool)

(assert (=> b!223286 (=> (not res!109735) (not e!145055))))

(assert (=> b!223286 (= res!109735 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!223287 () Bool)

(assert (=> b!223287 (= e!145064 false)))

(declare-fun lt!112898 () Bool)

(assert (=> b!223287 (= lt!112898 (contains!1537 Nil!3335 key!932))))

(declare-fun b!223288 () Bool)

(declare-fun e!145066 () Bool)

(declare-fun e!145061 () Bool)

(assert (=> b!223288 (= e!145066 e!145061)))

(declare-fun res!109743 () Bool)

(assert (=> b!223288 (=> (not res!109743) (not e!145061))))

(assert (=> b!223288 (= res!109743 (bvsle #b00000000000000000000000000000000 index!297))))

(declare-fun b!223289 () Bool)

(declare-fun res!109738 () Bool)

(assert (=> b!223289 (=> (not res!109738) (not e!145065))))

(assert (=> b!223289 (= res!109738 (= (select (arr!5200 (_keys!6249 thiss!1504)) (index!5598 lt!112899)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!223290 () Bool)

(declare-fun call!20824 () Bool)

(assert (=> b!223290 (= e!145065 (not call!20824))))

(declare-fun b!223291 () Bool)

(declare-fun res!109734 () Bool)

(assert (=> b!223291 (=> (not res!109734) (not e!145064))))

(declare-fun lt!112897 () Bool)

(assert (=> b!223291 (= res!109734 (not lt!112897))))

(declare-fun b!223292 () Bool)

(declare-fun e!145072 () Bool)

(assert (=> b!223292 (= e!145072 (contains!1537 Nil!3335 key!932))))

(declare-fun b!223293 () Bool)

(declare-fun res!109727 () Bool)

(assert (=> b!223293 (=> (not res!109727) (not e!145064))))

(assert (=> b!223293 (= res!109727 e!145066)))

(declare-fun res!109741 () Bool)

(assert (=> b!223293 (=> res!109741 e!145066)))

(assert (=> b!223293 (= res!109741 e!145072)))

(declare-fun res!109728 () Bool)

(assert (=> b!223293 (=> (not res!109728) (not e!145072))))

(assert (=> b!223293 (= res!109728 (bvsgt #b00000000000000000000000000000000 index!297))))

(declare-fun e!145062 () Bool)

(declare-fun array_inv!3431 (array!10962) Bool)

(declare-fun array_inv!3432 (array!10960) Bool)

(assert (=> b!223294 (= e!145062 (and tp!21132 tp_is_empty!5859 (array_inv!3431 (_keys!6249 thiss!1504)) (array_inv!3432 (_values!4178 thiss!1504)) e!145060))))

(declare-fun b!223295 () Bool)

(declare-fun Unit!6707 () Unit!6705)

(assert (=> b!223295 (= e!145059 Unit!6707)))

(declare-fun lt!112894 () Unit!6705)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!232 (array!10962 array!10960 (_ BitVec 32) (_ BitVec 32) V!7459 V!7459 (_ BitVec 64) Int) Unit!6705)

(assert (=> b!223295 (= lt!112894 (lemmaInListMapThenSeekEntryOrOpenFindsIt!232 (_keys!6249 thiss!1504) (_values!4178 thiss!1504) (mask!10021 thiss!1504) (extraKeys!3932 thiss!1504) (zeroValue!4036 thiss!1504) (minValue!4036 thiss!1504) key!932 (defaultEntry!4195 thiss!1504)))))

(assert (=> b!223295 false))

(declare-fun b!223296 () Bool)

(declare-fun e!145058 () Unit!6705)

(declare-fun Unit!6708 () Unit!6705)

(assert (=> b!223296 (= e!145058 Unit!6708)))

(declare-fun lt!112893 () Unit!6705)

(declare-fun lemmaArrayContainsKeyThenInListMap!70 (array!10962 array!10960 (_ BitVec 32) (_ BitVec 32) V!7459 V!7459 (_ BitVec 64) (_ BitVec 32) Int) Unit!6705)

(assert (=> b!223296 (= lt!112893 (lemmaArrayContainsKeyThenInListMap!70 (_keys!6249 thiss!1504) (_values!4178 thiss!1504) (mask!10021 thiss!1504) (extraKeys!3932 thiss!1504) (zeroValue!4036 thiss!1504) (minValue!4036 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4195 thiss!1504)))))

(assert (=> b!223296 false))

(declare-fun b!223297 () Bool)

(declare-fun lt!112892 () Unit!6705)

(assert (=> b!223297 (= e!145059 lt!112892)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!240 (array!10962 array!10960 (_ BitVec 32) (_ BitVec 32) V!7459 V!7459 (_ BitVec 64) Int) Unit!6705)

(assert (=> b!223297 (= lt!112892 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!240 (_keys!6249 thiss!1504) (_values!4178 thiss!1504) (mask!10021 thiss!1504) (extraKeys!3932 thiss!1504) (zeroValue!4036 thiss!1504) (minValue!4036 thiss!1504) key!932 (defaultEntry!4195 thiss!1504)))))

(assert (=> b!223297 (= c!37060 ((_ is MissingZero!857) lt!112899))))

(assert (=> b!223297 e!145068))

(declare-fun res!109730 () Bool)

(assert (=> start!21942 (=> (not res!109730) (not e!145055))))

(declare-fun valid!1229 (LongMapFixedSize!3072) Bool)

(assert (=> start!21942 (= res!109730 (valid!1229 thiss!1504))))

(assert (=> start!21942 e!145055))

(assert (=> start!21942 e!145062))

(assert (=> start!21942 true))

(declare-fun b!223274 () Bool)

(assert (=> b!223274 (= e!145070 ((_ is Undefined!857) lt!112899))))

(declare-fun b!223298 () Bool)

(assert (=> b!223298 (= e!145061 (not (contains!1537 Nil!3335 key!932)))))

(declare-fun b!223299 () Bool)

(declare-fun Unit!6709 () Unit!6705)

(assert (=> b!223299 (= e!145058 Unit!6709)))

(declare-fun mapIsEmpty!9958 () Bool)

(assert (=> mapIsEmpty!9958 mapRes!9958))

(declare-fun b!223300 () Bool)

(declare-fun res!109729 () Bool)

(assert (=> b!223300 (= res!109729 (= (select (arr!5200 (_keys!6249 thiss!1504)) (index!5601 lt!112899)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!223300 (=> (not res!109729) (not e!145067))))

(declare-fun b!223301 () Bool)

(assert (=> b!223301 (= e!145071 e!145064)))

(declare-fun res!109744 () Bool)

(assert (=> b!223301 (=> (not res!109744) (not e!145064))))

(assert (=> b!223301 (= res!109744 (and (bvslt (size!5533 (_keys!6249 thiss!1504)) #b01111111111111111111111111111111) (bvslt #b00000000000000000000000000000000 (size!5533 (_keys!6249 thiss!1504)))))))

(declare-fun lt!112896 () Unit!6705)

(assert (=> b!223301 (= lt!112896 e!145058)))

(declare-fun c!37061 () Bool)

(assert (=> b!223301 (= c!37061 lt!112897)))

(declare-fun arrayContainsKey!0 (array!10962 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!223301 (= lt!112897 (arrayContainsKey!0 (_keys!6249 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun bm!20821 () Bool)

(assert (=> bm!20821 (= call!20824 (arrayContainsKey!0 (_keys!6249 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!223302 () Bool)

(declare-fun res!109726 () Bool)

(assert (=> b!223302 (=> (not res!109726) (not e!145064))))

(assert (=> b!223302 (= res!109726 (not (contains!1537 Nil!3335 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapNonEmpty!9958 () Bool)

(declare-fun tp!21133 () Bool)

(assert (=> mapNonEmpty!9958 (= mapRes!9958 (and tp!21133 e!145063))))

(declare-fun mapRest!9958 () (Array (_ BitVec 32) ValueCell!2586))

(declare-fun mapKey!9958 () (_ BitVec 32))

(declare-fun mapValue!9958 () ValueCell!2586)

(assert (=> mapNonEmpty!9958 (= (arr!5199 (_values!4178 thiss!1504)) (store mapRest!9958 mapKey!9958 mapValue!9958))))

(declare-fun b!223303 () Bool)

(assert (=> b!223303 (= e!145055 e!145057)))

(declare-fun res!109731 () Bool)

(assert (=> b!223303 (=> (not res!109731) (not e!145057))))

(assert (=> b!223303 (= res!109731 (or (= lt!112899 (MissingZero!857 index!297)) (= lt!112899 (MissingVacant!857 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!10962 (_ BitVec 32)) SeekEntryResult!857)

(assert (=> b!223303 (= lt!112899 (seekEntryOrOpen!0 key!932 (_keys!6249 thiss!1504) (mask!10021 thiss!1504)))))

(declare-fun b!223304 () Bool)

(assert (=> b!223304 (= e!145067 (not call!20824))))

(assert (= (and start!21942 res!109730) b!223286))

(assert (= (and b!223286 res!109735) b!223303))

(assert (= (and b!223303 res!109731) b!223282))

(assert (= (and b!223282 c!37058) b!223295))

(assert (= (and b!223282 (not c!37058)) b!223297))

(assert (= (and b!223297 c!37060) b!223281))

(assert (= (and b!223297 (not c!37060)) b!223279))

(assert (= (and b!223281 res!109737) b!223289))

(assert (= (and b!223289 res!109738) b!223290))

(assert (= (and b!223279 c!37059) b!223275))

(assert (= (and b!223279 (not c!37059)) b!223274))

(assert (= (and b!223275 res!109733) b!223300))

(assert (= (and b!223300 res!109729) b!223304))

(assert (= (or b!223281 b!223275) bm!20820))

(assert (= (or b!223290 b!223304) bm!20821))

(assert (= (and b!223282 res!109725) b!223301))

(assert (= (and b!223301 c!37061) b!223296))

(assert (= (and b!223301 (not c!37061)) b!223299))

(assert (= (and b!223301 res!109744) b!223276))

(assert (= (and b!223276 res!109739) b!223280))

(assert (= (and b!223280 res!109732) b!223302))

(assert (= (and b!223302 res!109726) b!223293))

(assert (= (and b!223293 res!109728) b!223292))

(assert (= (and b!223293 (not res!109741)) b!223288))

(assert (= (and b!223288 res!109743) b!223298))

(assert (= (and b!223293 res!109727) b!223285))

(assert (= (and b!223285 res!109736) b!223278))

(assert (= (and b!223278 res!109742) b!223283))

(assert (= (and b!223283 res!109740) b!223291))

(assert (= (and b!223291 res!109734) b!223287))

(assert (= (and b!223284 condMapEmpty!9958) mapIsEmpty!9958))

(assert (= (and b!223284 (not condMapEmpty!9958)) mapNonEmpty!9958))

(assert (= (and mapNonEmpty!9958 ((_ is ValueCellFull!2586) mapValue!9958)) b!223277))

(assert (= (and b!223284 ((_ is ValueCellFull!2586) mapDefault!9958)) b!223273))

(assert (= b!223294 b!223284))

(assert (= start!21942 b!223294))

(declare-fun m!246931 () Bool)

(assert (=> bm!20821 m!246931))

(declare-fun m!246933 () Bool)

(assert (=> b!223282 m!246933))

(declare-fun m!246935 () Bool)

(assert (=> b!223282 m!246935))

(assert (=> b!223282 m!246935))

(declare-fun m!246937 () Bool)

(assert (=> b!223282 m!246937))

(declare-fun m!246939 () Bool)

(assert (=> b!223302 m!246939))

(declare-fun m!246941 () Bool)

(assert (=> b!223300 m!246941))

(declare-fun m!246943 () Bool)

(assert (=> b!223280 m!246943))

(declare-fun m!246945 () Bool)

(assert (=> b!223294 m!246945))

(declare-fun m!246947 () Bool)

(assert (=> b!223294 m!246947))

(declare-fun m!246949 () Bool)

(assert (=> b!223303 m!246949))

(declare-fun m!246951 () Bool)

(assert (=> start!21942 m!246951))

(declare-fun m!246953 () Bool)

(assert (=> b!223298 m!246953))

(declare-fun m!246955 () Bool)

(assert (=> b!223297 m!246955))

(declare-fun m!246957 () Bool)

(assert (=> b!223276 m!246957))

(declare-fun m!246959 () Bool)

(assert (=> b!223285 m!246959))

(declare-fun m!246961 () Bool)

(assert (=> b!223295 m!246961))

(assert (=> b!223301 m!246931))

(declare-fun m!246963 () Bool)

(assert (=> b!223296 m!246963))

(declare-fun m!246965 () Bool)

(assert (=> b!223283 m!246965))

(declare-fun m!246967 () Bool)

(assert (=> bm!20820 m!246967))

(assert (=> b!223292 m!246953))

(assert (=> b!223287 m!246953))

(declare-fun m!246969 () Bool)

(assert (=> mapNonEmpty!9958 m!246969))

(declare-fun m!246971 () Bool)

(assert (=> b!223289 m!246971))

(check-sat tp_is_empty!5859 (not b!223287) (not b!223301) (not start!21942) (not b!223302) (not b!223303) (not bm!20821) (not bm!20820) (not b!223298) (not b_next!5997) (not b!223276) (not b!223297) (not b!223285) (not mapNonEmpty!9958) (not b!223292) (not b!223296) (not b!223283) (not b!223282) (not b!223295) (not b!223294) (not b!223280) b_and!12913)
(check-sat b_and!12913 (not b_next!5997))
