; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!413260 () Bool)

(assert start!413260)

(declare-fun b!4303219 () Bool)

(declare-fun b_free!128251 () Bool)

(declare-fun b_next!128955 () Bool)

(assert (=> b!4303219 (= b_free!128251 (not b_next!128955))))

(declare-fun tp!1322372 () Bool)

(declare-fun b_and!339639 () Bool)

(assert (=> b!4303219 (= tp!1322372 b_and!339639)))

(declare-fun b!4303229 () Bool)

(declare-fun b_free!128253 () Bool)

(declare-fun b_next!128957 () Bool)

(assert (=> b!4303229 (= b_free!128253 (not b_next!128957))))

(declare-fun tp!1322371 () Bool)

(declare-fun b_and!339641 () Bool)

(assert (=> b!4303229 (= tp!1322371 b_and!339641)))

(declare-fun b!4303218 () Bool)

(declare-fun e!2675328 () Bool)

(declare-datatypes ((K!9179 0))(
  ( (K!9180 (val!15601 Int)) )
))
(declare-datatypes ((V!9381 0))(
  ( (V!9382 (val!15602 Int)) )
))
(declare-datatypes ((tuple2!46152 0))(
  ( (tuple2!46153 (_1!26355 K!9179) (_2!26355 V!9381)) )
))
(declare-datatypes ((List!48154 0))(
  ( (Nil!48030) (Cons!48030 (h!53452 tuple2!46152) (t!354927 List!48154)) )
))
(declare-fun lt!1524808 () List!48154)

(declare-fun noDuplicateKeys!176 (List!48154) Bool)

(assert (=> b!4303218 (= e!2675328 (noDuplicateKeys!176 lt!1524808))))

(declare-fun res!1763754 () Bool)

(declare-fun e!2675327 () Bool)

(assert (=> start!413260 (=> (not res!1763754) (not e!2675327))))

(declare-datatypes ((array!16418 0))(
  ( (array!16419 (arr!7331 (Array (_ BitVec 32) (_ BitVec 64))) (size!35370 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!4489 0))(
  ( (HashableExt!4488 (__x!29744 Int)) )
))
(declare-datatypes ((array!16420 0))(
  ( (array!16421 (arr!7332 (Array (_ BitVec 32) List!48154)) (size!35371 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9146 0))(
  ( (LongMapFixedSize!9147 (defaultEntry!4958 Int) (mask!13088 (_ BitVec 32)) (extraKeys!4822 (_ BitVec 32)) (zeroValue!4832 List!48154) (minValue!4832 List!48154) (_size!9189 (_ BitVec 32)) (_keys!4873 array!16418) (_values!4854 array!16420) (_vacant!4634 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!18101 0))(
  ( (Cell!18102 (v!42041 LongMapFixedSize!9146)) )
))
(declare-datatypes ((MutLongMap!4573 0))(
  ( (LongMap!4573 (underlying!9375 Cell!18101)) (MutLongMapExt!4572 (__x!29745 Int)) )
))
(declare-datatypes ((Cell!18103 0))(
  ( (Cell!18104 (v!42042 MutLongMap!4573)) )
))
(declare-datatypes ((MutableMap!4479 0))(
  ( (MutableMapExt!4478 (__x!29746 Int)) (HashMap!4479 (underlying!9376 Cell!18103) (hashF!6533 Hashable!4489) (_size!9190 (_ BitVec 32)) (defaultValue!4650 Int)) )
))
(declare-fun thiss!42308 () MutableMap!4479)

(get-info :version)

(assert (=> start!413260 (= res!1763754 ((_ is HashMap!4479) thiss!42308))))

(assert (=> start!413260 e!2675327))

(declare-fun e!2675325 () Bool)

(assert (=> start!413260 e!2675325))

(declare-fun tp_is_empty!23431 () Bool)

(assert (=> start!413260 tp_is_empty!23431))

(declare-fun tp_is_empty!23433 () Bool)

(assert (=> start!413260 tp_is_empty!23433))

(declare-fun e!2675326 () Bool)

(declare-fun tp!1322366 () Bool)

(declare-fun e!2675318 () Bool)

(declare-fun tp!1322368 () Bool)

(declare-fun array_inv!5259 (array!16418) Bool)

(declare-fun array_inv!5260 (array!16420) Bool)

(assert (=> b!4303219 (= e!2675326 (and tp!1322372 tp!1322366 tp!1322368 (array_inv!5259 (_keys!4873 (v!42041 (underlying!9375 (v!42042 (underlying!9376 thiss!42308)))))) (array_inv!5260 (_values!4854 (v!42041 (underlying!9375 (v!42042 (underlying!9376 thiss!42308)))))) e!2675318))))

(declare-fun b!4303220 () Bool)

(declare-fun res!1763756 () Bool)

(assert (=> b!4303220 (=> (not res!1763756) (not e!2675327))))

(declare-fun valid!3556 (MutableMap!4479) Bool)

(assert (=> b!4303220 (= res!1763756 (valid!3556 thiss!42308))))

(declare-fun b!4303221 () Bool)

(declare-fun e!2675321 () Bool)

(declare-fun e!2675324 () Bool)

(assert (=> b!4303221 (= e!2675321 e!2675324)))

(declare-fun b!4303222 () Bool)

(declare-fun e!2675317 () Bool)

(assert (=> b!4303222 (= e!2675327 e!2675317)))

(declare-fun res!1763759 () Bool)

(assert (=> b!4303222 (=> (not res!1763759) (not e!2675317))))

(declare-fun key!2048 () K!9179)

(declare-fun contains!9952 (MutableMap!4479 K!9179) Bool)

(assert (=> b!4303222 (= res!1763759 (contains!9952 thiss!42308 key!2048))))

(declare-datatypes ((tuple2!46154 0))(
  ( (tuple2!46155 (_1!26356 (_ BitVec 64)) (_2!26356 List!48154)) )
))
(declare-datatypes ((List!48155 0))(
  ( (Nil!48031) (Cons!48031 (h!53453 tuple2!46154) (t!354928 List!48155)) )
))
(declare-datatypes ((ListLongMap!875 0))(
  ( (ListLongMap!876 (toList!2267 List!48155)) )
))
(declare-fun lt!1524801 () ListLongMap!875)

(declare-fun map!9997 (MutLongMap!4573) ListLongMap!875)

(assert (=> b!4303222 (= lt!1524801 (map!9997 (v!42042 (underlying!9376 thiss!42308))))))

(declare-datatypes ((ListMap!1553 0))(
  ( (ListMap!1554 (toList!2268 List!48154)) )
))
(declare-fun lt!1524800 () ListMap!1553)

(declare-fun map!9998 (MutableMap!4479) ListMap!1553)

(assert (=> b!4303222 (= lt!1524800 (map!9998 thiss!42308))))

(declare-fun b!4303223 () Bool)

(declare-fun e!2675323 () Bool)

(declare-datatypes ((tuple2!46156 0))(
  ( (tuple2!46157 (_1!26357 Bool) (_2!26357 MutLongMap!4573)) )
))
(declare-fun lt!1524812 () tuple2!46156)

(assert (=> b!4303223 (= e!2675323 (not ((_ is LongMap!4573) (_2!26357 lt!1524812))))))

(declare-fun lt!1524797 () ListMap!1553)

(declare-fun lt!1524809 () ListMap!1553)

(declare-fun contains!9953 (ListMap!1553 K!9179) Bool)

(assert (=> b!4303223 (= (contains!9953 lt!1524797 key!2048) (contains!9953 lt!1524809 key!2048))))

(declare-datatypes ((Unit!67016 0))(
  ( (Unit!67017) )
))
(declare-fun lt!1524798 () Unit!67016)

(declare-fun lemmaEquivalentThenSameContains!41 (ListMap!1553 ListMap!1553 K!9179) Unit!67016)

(assert (=> b!4303223 (= lt!1524798 (lemmaEquivalentThenSameContains!41 lt!1524797 lt!1524809 key!2048))))

(declare-fun lt!1524814 () tuple2!46152)

(declare-fun +!205 (ListMap!1553 tuple2!46152) ListMap!1553)

(assert (=> b!4303223 (= lt!1524809 (+!205 lt!1524800 lt!1524814))))

(assert (=> b!4303223 (= lt!1524797 (map!9998 (HashMap!4479 (Cell!18104 (_2!26357 lt!1524812)) (hashF!6533 thiss!42308) (_size!9190 thiss!42308) (defaultValue!4650 thiss!42308))))))

(declare-fun lt!1524802 () ListLongMap!875)

(declare-fun eq!114 (ListMap!1553 ListMap!1553) Bool)

(declare-fun extractMap!290 (List!48155) ListMap!1553)

(assert (=> b!4303223 (eq!114 (extractMap!290 (toList!2267 lt!1524802)) (+!205 (extractMap!290 (toList!2267 lt!1524801)) lt!1524814))))

(declare-fun lt!1524810 () (_ BitVec 64))

(declare-fun lt!1524799 () Unit!67016)

(declare-fun v!9179 () V!9381)

(declare-fun lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!46 (ListLongMap!875 (_ BitVec 64) List!48154 K!9179 V!9381 Hashable!4489) Unit!67016)

(assert (=> b!4303223 (= lt!1524799 (lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!46 lt!1524801 lt!1524810 lt!1524808 key!2048 v!9179 (hashF!6533 thiss!42308)))))

(declare-fun e!2675320 () Bool)

(assert (=> b!4303223 e!2675320))

(declare-fun res!1763755 () Bool)

(assert (=> b!4303223 (=> (not res!1763755) (not e!2675320))))

(declare-fun lambda!132214 () Int)

(declare-fun forall!8669 (List!48155 Int) Bool)

(assert (=> b!4303223 (= res!1763755 (forall!8669 (toList!2267 lt!1524802) lambda!132214))))

(declare-fun +!206 (ListLongMap!875 tuple2!46154) ListLongMap!875)

(assert (=> b!4303223 (= lt!1524802 (+!206 lt!1524801 (tuple2!46155 lt!1524810 lt!1524808)))))

(declare-fun lt!1524807 () Unit!67016)

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!117 (ListLongMap!875 (_ BitVec 64) List!48154 Hashable!4489) Unit!67016)

(assert (=> b!4303223 (= lt!1524807 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!117 lt!1524801 lt!1524810 lt!1524808 (hashF!6533 thiss!42308)))))

(assert (=> b!4303223 e!2675328))

(declare-fun res!1763760 () Bool)

(assert (=> b!4303223 (=> (not res!1763760) (not e!2675328))))

(declare-fun lt!1524811 () List!48154)

(assert (=> b!4303223 (= res!1763760 (noDuplicateKeys!176 lt!1524811))))

(declare-fun lt!1524803 () Unit!67016)

(declare-fun lt!1524804 () List!48154)

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!149 (List!48154 K!9179) Unit!67016)

(assert (=> b!4303223 (= lt!1524803 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!149 lt!1524804 key!2048))))

(declare-fun allKeysSameHash!146 (List!48154 (_ BitVec 64) Hashable!4489) Bool)

(assert (=> b!4303223 (allKeysSameHash!146 lt!1524811 lt!1524810 (hashF!6533 thiss!42308))))

(declare-fun lt!1524806 () Unit!67016)

(declare-fun lemmaRemovePairForKeyPreservesHash!132 (List!48154 K!9179 (_ BitVec 64) Hashable!4489) Unit!67016)

(assert (=> b!4303223 (= lt!1524806 (lemmaRemovePairForKeyPreservesHash!132 lt!1524804 key!2048 lt!1524810 (hashF!6533 thiss!42308)))))

(assert (=> b!4303223 (allKeysSameHash!146 lt!1524804 lt!1524810 (hashF!6533 thiss!42308))))

(declare-fun lt!1524813 () Unit!67016)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!137 (List!48155 (_ BitVec 64) List!48154 Hashable!4489) Unit!67016)

(assert (=> b!4303223 (= lt!1524813 (lemmaInLongMapAllKeySameHashThenForTuple!137 (toList!2267 lt!1524801) lt!1524810 lt!1524804 (hashF!6533 thiss!42308)))))

(declare-fun b!4303224 () Bool)

(assert (=> b!4303224 (= e!2675317 e!2675323)))

(declare-fun res!1763758 () Bool)

(assert (=> b!4303224 (=> (not res!1763758) (not e!2675323))))

(assert (=> b!4303224 (= res!1763758 (_1!26357 lt!1524812))))

(declare-fun update!369 (MutLongMap!4573 (_ BitVec 64) List!48154) tuple2!46156)

(assert (=> b!4303224 (= lt!1524812 (update!369 (v!42042 (underlying!9376 thiss!42308)) lt!1524810 lt!1524808))))

(assert (=> b!4303224 (= lt!1524808 (Cons!48030 lt!1524814 lt!1524811))))

(declare-fun removePairForKey!170 (List!48154 K!9179) List!48154)

(assert (=> b!4303224 (= lt!1524811 (removePairForKey!170 lt!1524804 key!2048))))

(assert (=> b!4303224 (= lt!1524814 (tuple2!46153 key!2048 v!9179))))

(declare-fun apply!10922 (MutLongMap!4573 (_ BitVec 64)) List!48154)

(assert (=> b!4303224 (= lt!1524804 (apply!10922 (v!42042 (underlying!9376 thiss!42308)) lt!1524810))))

(declare-fun hash!881 (Hashable!4489 K!9179) (_ BitVec 64))

(assert (=> b!4303224 (= lt!1524810 (hash!881 (hashF!6533 thiss!42308) key!2048))))

(declare-fun b!4303225 () Bool)

(declare-fun tp!1322367 () Bool)

(declare-fun mapRes!20497 () Bool)

(assert (=> b!4303225 (= e!2675318 (and tp!1322367 mapRes!20497))))

(declare-fun condMapEmpty!20497 () Bool)

(declare-fun mapDefault!20497 () List!48154)

(assert (=> b!4303225 (= condMapEmpty!20497 (= (arr!7332 (_values!4854 (v!42041 (underlying!9375 (v!42042 (underlying!9376 thiss!42308)))))) ((as const (Array (_ BitVec 32) List!48154)) mapDefault!20497)))))

(declare-fun b!4303226 () Bool)

(declare-fun allKeysSameHashInMap!294 (ListLongMap!875 Hashable!4489) Bool)

(assert (=> b!4303226 (= e!2675320 (allKeysSameHashInMap!294 lt!1524802 (hashF!6533 thiss!42308)))))

(declare-fun b!4303227 () Bool)

(declare-fun res!1763757 () Bool)

(assert (=> b!4303227 (=> (not res!1763757) (not e!2675328))))

(declare-fun containsKey!263 (List!48154 K!9179) Bool)

(assert (=> b!4303227 (= res!1763757 (not (containsKey!263 lt!1524811 key!2048)))))

(declare-fun b!4303228 () Bool)

(assert (=> b!4303228 (= e!2675324 e!2675326)))

(declare-fun e!2675322 () Bool)

(assert (=> b!4303229 (= e!2675325 (and e!2675322 tp!1322371))))

(declare-fun b!4303230 () Bool)

(declare-fun lt!1524805 () MutLongMap!4573)

(assert (=> b!4303230 (= e!2675322 (and e!2675321 ((_ is LongMap!4573) lt!1524805)))))

(assert (=> b!4303230 (= lt!1524805 (v!42042 (underlying!9376 thiss!42308)))))

(declare-fun mapIsEmpty!20497 () Bool)

(assert (=> mapIsEmpty!20497 mapRes!20497))

(declare-fun mapNonEmpty!20497 () Bool)

(declare-fun tp!1322369 () Bool)

(declare-fun tp!1322370 () Bool)

(assert (=> mapNonEmpty!20497 (= mapRes!20497 (and tp!1322369 tp!1322370))))

(declare-fun mapValue!20497 () List!48154)

(declare-fun mapKey!20497 () (_ BitVec 32))

(declare-fun mapRest!20497 () (Array (_ BitVec 32) List!48154))

(assert (=> mapNonEmpty!20497 (= (arr!7332 (_values!4854 (v!42041 (underlying!9375 (v!42042 (underlying!9376 thiss!42308)))))) (store mapRest!20497 mapKey!20497 mapValue!20497))))

(assert (= (and start!413260 res!1763754) b!4303220))

(assert (= (and b!4303220 res!1763756) b!4303222))

(assert (= (and b!4303222 res!1763759) b!4303224))

(assert (= (and b!4303224 res!1763758) b!4303223))

(assert (= (and b!4303223 res!1763760) b!4303227))

(assert (= (and b!4303227 res!1763757) b!4303218))

(assert (= (and b!4303223 res!1763755) b!4303226))

(assert (= (and b!4303225 condMapEmpty!20497) mapIsEmpty!20497))

(assert (= (and b!4303225 (not condMapEmpty!20497)) mapNonEmpty!20497))

(assert (= b!4303219 b!4303225))

(assert (= b!4303228 b!4303219))

(assert (= b!4303221 b!4303228))

(assert (= (and b!4303230 ((_ is LongMap!4573) (v!42042 (underlying!9376 thiss!42308)))) b!4303221))

(assert (= b!4303229 b!4303230))

(assert (= (and start!413260 ((_ is HashMap!4479) thiss!42308)) b!4303229))

(declare-fun m!4895557 () Bool)

(assert (=> b!4303219 m!4895557))

(declare-fun m!4895559 () Bool)

(assert (=> b!4303219 m!4895559))

(declare-fun m!4895561 () Bool)

(assert (=> b!4303226 m!4895561))

(declare-fun m!4895563 () Bool)

(assert (=> mapNonEmpty!20497 m!4895563))

(declare-fun m!4895565 () Bool)

(assert (=> b!4303224 m!4895565))

(declare-fun m!4895567 () Bool)

(assert (=> b!4303224 m!4895567))

(declare-fun m!4895569 () Bool)

(assert (=> b!4303224 m!4895569))

(declare-fun m!4895571 () Bool)

(assert (=> b!4303224 m!4895571))

(declare-fun m!4895573 () Bool)

(assert (=> b!4303223 m!4895573))

(declare-fun m!4895575 () Bool)

(assert (=> b!4303223 m!4895575))

(declare-fun m!4895577 () Bool)

(assert (=> b!4303223 m!4895577))

(declare-fun m!4895579 () Bool)

(assert (=> b!4303223 m!4895579))

(declare-fun m!4895581 () Bool)

(assert (=> b!4303223 m!4895581))

(declare-fun m!4895583 () Bool)

(assert (=> b!4303223 m!4895583))

(declare-fun m!4895585 () Bool)

(assert (=> b!4303223 m!4895585))

(declare-fun m!4895587 () Bool)

(assert (=> b!4303223 m!4895587))

(declare-fun m!4895589 () Bool)

(assert (=> b!4303223 m!4895589))

(declare-fun m!4895591 () Bool)

(assert (=> b!4303223 m!4895591))

(declare-fun m!4895593 () Bool)

(assert (=> b!4303223 m!4895593))

(declare-fun m!4895595 () Bool)

(assert (=> b!4303223 m!4895595))

(declare-fun m!4895597 () Bool)

(assert (=> b!4303223 m!4895597))

(declare-fun m!4895599 () Bool)

(assert (=> b!4303223 m!4895599))

(declare-fun m!4895601 () Bool)

(assert (=> b!4303223 m!4895601))

(assert (=> b!4303223 m!4895577))

(declare-fun m!4895603 () Bool)

(assert (=> b!4303223 m!4895603))

(declare-fun m!4895605 () Bool)

(assert (=> b!4303223 m!4895605))

(assert (=> b!4303223 m!4895591))

(assert (=> b!4303223 m!4895603))

(declare-fun m!4895607 () Bool)

(assert (=> b!4303223 m!4895607))

(declare-fun m!4895609 () Bool)

(assert (=> b!4303223 m!4895609))

(declare-fun m!4895611 () Bool)

(assert (=> b!4303218 m!4895611))

(declare-fun m!4895613 () Bool)

(assert (=> b!4303222 m!4895613))

(declare-fun m!4895615 () Bool)

(assert (=> b!4303222 m!4895615))

(declare-fun m!4895617 () Bool)

(assert (=> b!4303222 m!4895617))

(declare-fun m!4895619 () Bool)

(assert (=> b!4303227 m!4895619))

(declare-fun m!4895621 () Bool)

(assert (=> b!4303220 m!4895621))

(check-sat (not b!4303218) (not b!4303226) (not b!4303222) (not b_next!128957) tp_is_empty!23431 b_and!339641 (not b!4303225) tp_is_empty!23433 (not mapNonEmpty!20497) (not b!4303227) (not b!4303224) (not b!4303223) (not b!4303220) b_and!339639 (not b!4303219) (not b_next!128955))
(check-sat b_and!339639 b_and!339641 (not b_next!128957) (not b_next!128955))
(get-model)

(declare-fun bs!604173 () Bool)

(declare-fun b!4303257 () Bool)

(assert (= bs!604173 (and b!4303257 b!4303223)))

(declare-fun lambda!132217 () Int)

(assert (=> bs!604173 (= lambda!132217 lambda!132214)))

(declare-fun bm!296719 () Bool)

(declare-fun call!296724 () Bool)

(declare-datatypes ((Option!10180 0))(
  ( (None!10179) (Some!10179 (v!42047 tuple2!46152)) )
))
(declare-fun call!296729 () Option!10180)

(declare-fun isDefined!7488 (Option!10180) Bool)

(assert (=> bm!296719 (= call!296724 (isDefined!7488 call!296729))))

(declare-fun bm!296720 () Bool)

(declare-fun call!296725 () (_ BitVec 64))

(assert (=> bm!296720 (= call!296725 (hash!881 (hashF!6533 thiss!42308) key!2048))))

(declare-fun b!4303253 () Bool)

(declare-fun e!2675349 () Unit!67016)

(declare-fun Unit!67018 () Unit!67016)

(assert (=> b!4303253 (= e!2675349 Unit!67018)))

(declare-fun b!4303254 () Bool)

(declare-fun e!2675346 () Unit!67016)

(declare-fun lt!1524870 () Unit!67016)

(assert (=> b!4303254 (= e!2675346 lt!1524870)))

(declare-fun lt!1524858 () ListLongMap!875)

(declare-fun call!296727 () ListLongMap!875)

(assert (=> b!4303254 (= lt!1524858 call!296727)))

(declare-fun lemmaInGenericMapThenInLongMap!115 (ListLongMap!875 K!9179 Hashable!4489) Unit!67016)

(assert (=> b!4303254 (= lt!1524870 (lemmaInGenericMapThenInLongMap!115 lt!1524858 key!2048 (hashF!6533 thiss!42308)))))

(declare-fun res!1763768 () Bool)

(declare-fun call!296726 () Bool)

(assert (=> b!4303254 (= res!1763768 call!296726)))

(declare-fun e!2675347 () Bool)

(assert (=> b!4303254 (=> (not res!1763768) (not e!2675347))))

(assert (=> b!4303254 e!2675347))

(declare-fun b!4303255 () Bool)

(assert (=> b!4303255 false))

(declare-fun lt!1524863 () Unit!67016)

(declare-fun lt!1524860 () Unit!67016)

(assert (=> b!4303255 (= lt!1524863 lt!1524860)))

(declare-fun lt!1524872 () List!48155)

(declare-fun lt!1524857 () (_ BitVec 64))

(declare-fun lt!1524855 () List!48154)

(declare-fun contains!9954 (List!48155 tuple2!46154) Bool)

(assert (=> b!4303255 (contains!9954 lt!1524872 (tuple2!46155 lt!1524857 lt!1524855))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!126 (List!48155 (_ BitVec 64) List!48154) Unit!67016)

(assert (=> b!4303255 (= lt!1524860 (lemmaGetValueByKeyImpliesContainsTuple!126 lt!1524872 lt!1524857 lt!1524855))))

(assert (=> b!4303255 (= lt!1524855 (apply!10922 (v!42042 (underlying!9376 thiss!42308)) lt!1524857))))

(assert (=> b!4303255 (= lt!1524872 (toList!2267 (map!9997 (v!42042 (underlying!9376 thiss!42308)))))))

(declare-fun lt!1524873 () Unit!67016)

(declare-fun lt!1524865 () Unit!67016)

(assert (=> b!4303255 (= lt!1524873 lt!1524865)))

(declare-fun lt!1524869 () List!48155)

(declare-datatypes ((Option!10181 0))(
  ( (None!10180) (Some!10180 (v!42048 List!48154)) )
))
(declare-fun isDefined!7489 (Option!10181) Bool)

(declare-fun getValueByKey!224 (List!48155 (_ BitVec 64)) Option!10181)

(assert (=> b!4303255 (isDefined!7489 (getValueByKey!224 lt!1524869 lt!1524857))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!150 (List!48155 (_ BitVec 64)) Unit!67016)

(assert (=> b!4303255 (= lt!1524865 (lemmaContainsKeyImpliesGetValueByKeyDefined!150 lt!1524869 lt!1524857))))

(assert (=> b!4303255 (= lt!1524869 (toList!2267 (map!9997 (v!42042 (underlying!9376 thiss!42308)))))))

(declare-fun lt!1524861 () Unit!67016)

(declare-fun lt!1524867 () Unit!67016)

(assert (=> b!4303255 (= lt!1524861 lt!1524867)))

(declare-fun lt!1524862 () List!48155)

(declare-fun containsKey!264 (List!48155 (_ BitVec 64)) Bool)

(assert (=> b!4303255 (containsKey!264 lt!1524862 lt!1524857)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!116 (List!48155 (_ BitVec 64)) Unit!67016)

(assert (=> b!4303255 (= lt!1524867 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!116 lt!1524862 lt!1524857))))

(assert (=> b!4303255 (= lt!1524862 (toList!2267 (map!9997 (v!42042 (underlying!9376 thiss!42308)))))))

(declare-fun e!2675348 () Unit!67016)

(declare-fun Unit!67019 () Unit!67016)

(assert (=> b!4303255 (= e!2675348 Unit!67019)))

(declare-fun b!4303256 () Bool)

(declare-fun e!2675344 () Unit!67016)

(assert (=> b!4303256 (= e!2675346 e!2675344)))

(declare-fun res!1763769 () Bool)

(assert (=> b!4303256 (= res!1763769 call!296726)))

(declare-fun e!2675343 () Bool)

(assert (=> b!4303256 (=> (not res!1763769) (not e!2675343))))

(declare-fun c!731767 () Bool)

(assert (=> b!4303256 (= c!731767 e!2675343)))

(declare-fun d!1266977 () Bool)

(declare-fun lt!1524874 () Bool)

(assert (=> d!1266977 (= lt!1524874 (contains!9953 (map!9998 thiss!42308) key!2048))))

(declare-fun e!2675345 () Bool)

(assert (=> d!1266977 (= lt!1524874 e!2675345)))

(declare-fun res!1763767 () Bool)

(assert (=> d!1266977 (=> (not res!1763767) (not e!2675345))))

(declare-fun contains!9955 (MutLongMap!4573 (_ BitVec 64)) Bool)

(assert (=> d!1266977 (= res!1763767 (contains!9955 (v!42042 (underlying!9376 thiss!42308)) lt!1524857))))

(declare-fun lt!1524859 () Unit!67016)

(assert (=> d!1266977 (= lt!1524859 e!2675346)))

(declare-fun c!731768 () Bool)

(assert (=> d!1266977 (= c!731768 (contains!9953 (extractMap!290 (toList!2267 (map!9997 (v!42042 (underlying!9376 thiss!42308))))) key!2048))))

(declare-fun lt!1524864 () Unit!67016)

(assert (=> d!1266977 (= lt!1524864 e!2675349)))

(declare-fun c!731766 () Bool)

(assert (=> d!1266977 (= c!731766 (contains!9955 (v!42042 (underlying!9376 thiss!42308)) lt!1524857))))

(assert (=> d!1266977 (= lt!1524857 (hash!881 (hashF!6533 thiss!42308) key!2048))))

(assert (=> d!1266977 (valid!3556 thiss!42308)))

(assert (=> d!1266977 (= (contains!9952 thiss!42308 key!2048) lt!1524874)))

(declare-fun forallContained!1482 (List!48155 Int tuple2!46154) Unit!67016)

(assert (=> b!4303257 (= e!2675349 (forallContained!1482 (toList!2267 (map!9997 (v!42042 (underlying!9376 thiss!42308)))) lambda!132217 (tuple2!46155 lt!1524857 (apply!10922 (v!42042 (underlying!9376 thiss!42308)) lt!1524857))))))

(declare-fun c!731769 () Bool)

(assert (=> b!4303257 (= c!731769 (not (contains!9954 (toList!2267 (map!9997 (v!42042 (underlying!9376 thiss!42308)))) (tuple2!46155 lt!1524857 (apply!10922 (v!42042 (underlying!9376 thiss!42308)) lt!1524857)))))))

(declare-fun lt!1524868 () Unit!67016)

(assert (=> b!4303257 (= lt!1524868 e!2675348)))

(declare-fun bm!296721 () Bool)

(assert (=> bm!296721 (= call!296727 (map!9997 (v!42042 (underlying!9376 thiss!42308))))))

(declare-fun b!4303258 () Bool)

(declare-fun getPair!115 (List!48154 K!9179) Option!10180)

(assert (=> b!4303258 (= e!2675345 (isDefined!7488 (getPair!115 (apply!10922 (v!42042 (underlying!9376 thiss!42308)) lt!1524857) key!2048)))))

(declare-fun b!4303259 () Bool)

(assert (=> b!4303259 (= e!2675347 call!296724)))

(declare-fun b!4303260 () Bool)

(declare-fun Unit!67020 () Unit!67016)

(assert (=> b!4303260 (= e!2675344 Unit!67020)))

(declare-fun bm!296722 () Bool)

(declare-fun call!296728 () List!48154)

(declare-fun apply!10923 (ListLongMap!875 (_ BitVec 64)) List!48154)

(assert (=> bm!296722 (= call!296728 (apply!10923 (ite c!731768 lt!1524858 call!296727) call!296725))))

(declare-fun bm!296723 () Bool)

(declare-fun contains!9956 (ListLongMap!875 (_ BitVec 64)) Bool)

(assert (=> bm!296723 (= call!296726 (contains!9956 (ite c!731768 lt!1524858 call!296727) call!296725))))

(declare-fun b!4303261 () Bool)

(assert (=> b!4303261 false))

(declare-fun lt!1524866 () Unit!67016)

(declare-fun lt!1524856 () Unit!67016)

(assert (=> b!4303261 (= lt!1524866 lt!1524856)))

(declare-fun lt!1524871 () ListLongMap!875)

(assert (=> b!4303261 (contains!9953 (extractMap!290 (toList!2267 lt!1524871)) key!2048)))

(declare-fun lemmaInLongMapThenInGenericMap!115 (ListLongMap!875 K!9179 Hashable!4489) Unit!67016)

(assert (=> b!4303261 (= lt!1524856 (lemmaInLongMapThenInGenericMap!115 lt!1524871 key!2048 (hashF!6533 thiss!42308)))))

(assert (=> b!4303261 (= lt!1524871 call!296727)))

(declare-fun Unit!67021 () Unit!67016)

(assert (=> b!4303261 (= e!2675344 Unit!67021)))

(declare-fun b!4303262 () Bool)

(declare-fun Unit!67022 () Unit!67016)

(assert (=> b!4303262 (= e!2675348 Unit!67022)))

(declare-fun b!4303263 () Bool)

(assert (=> b!4303263 (= e!2675343 call!296724)))

(declare-fun bm!296724 () Bool)

(assert (=> bm!296724 (= call!296729 (getPair!115 call!296728 key!2048))))

(assert (= (and d!1266977 c!731766) b!4303257))

(assert (= (and d!1266977 (not c!731766)) b!4303253))

(assert (= (and b!4303257 c!731769) b!4303255))

(assert (= (and b!4303257 (not c!731769)) b!4303262))

(assert (= (and d!1266977 c!731768) b!4303254))

(assert (= (and d!1266977 (not c!731768)) b!4303256))

(assert (= (and b!4303254 res!1763768) b!4303259))

(assert (= (and b!4303256 res!1763769) b!4303263))

(assert (= (and b!4303256 c!731767) b!4303261))

(assert (= (and b!4303256 (not c!731767)) b!4303260))

(assert (= (or b!4303254 b!4303259 b!4303256 b!4303263) bm!296720))

(assert (= (or b!4303254 b!4303256 b!4303263 b!4303261) bm!296721))

(assert (= (or b!4303254 b!4303256) bm!296723))

(assert (= (or b!4303259 b!4303263) bm!296722))

(assert (= (or b!4303259 b!4303263) bm!296724))

(assert (= (or b!4303259 b!4303263) bm!296719))

(assert (= (and d!1266977 res!1763767) b!4303258))

(declare-fun m!4895623 () Bool)

(assert (=> b!4303254 m!4895623))

(declare-fun m!4895625 () Bool)

(assert (=> b!4303255 m!4895625))

(declare-fun m!4895627 () Bool)

(assert (=> b!4303255 m!4895627))

(declare-fun m!4895629 () Bool)

(assert (=> b!4303255 m!4895629))

(declare-fun m!4895631 () Bool)

(assert (=> b!4303255 m!4895631))

(assert (=> b!4303255 m!4895627))

(assert (=> b!4303255 m!4895615))

(declare-fun m!4895633 () Bool)

(assert (=> b!4303255 m!4895633))

(declare-fun m!4895635 () Bool)

(assert (=> b!4303255 m!4895635))

(declare-fun m!4895637 () Bool)

(assert (=> b!4303255 m!4895637))

(declare-fun m!4895639 () Bool)

(assert (=> b!4303255 m!4895639))

(assert (=> bm!296720 m!4895571))

(assert (=> b!4303257 m!4895615))

(assert (=> b!4303257 m!4895635))

(declare-fun m!4895641 () Bool)

(assert (=> b!4303257 m!4895641))

(declare-fun m!4895643 () Bool)

(assert (=> b!4303257 m!4895643))

(declare-fun m!4895645 () Bool)

(assert (=> bm!296723 m!4895645))

(declare-fun m!4895647 () Bool)

(assert (=> bm!296722 m!4895647))

(declare-fun m!4895649 () Bool)

(assert (=> bm!296724 m!4895649))

(assert (=> b!4303258 m!4895635))

(assert (=> b!4303258 m!4895635))

(declare-fun m!4895651 () Bool)

(assert (=> b!4303258 m!4895651))

(assert (=> b!4303258 m!4895651))

(declare-fun m!4895653 () Bool)

(assert (=> b!4303258 m!4895653))

(assert (=> d!1266977 m!4895621))

(declare-fun m!4895655 () Bool)

(assert (=> d!1266977 m!4895655))

(assert (=> d!1266977 m!4895655))

(declare-fun m!4895657 () Bool)

(assert (=> d!1266977 m!4895657))

(assert (=> d!1266977 m!4895571))

(assert (=> d!1266977 m!4895615))

(declare-fun m!4895659 () Bool)

(assert (=> d!1266977 m!4895659))

(assert (=> d!1266977 m!4895617))

(declare-fun m!4895661 () Bool)

(assert (=> d!1266977 m!4895661))

(assert (=> d!1266977 m!4895617))

(declare-fun m!4895663 () Bool)

(assert (=> b!4303261 m!4895663))

(assert (=> b!4303261 m!4895663))

(declare-fun m!4895665 () Bool)

(assert (=> b!4303261 m!4895665))

(declare-fun m!4895667 () Bool)

(assert (=> b!4303261 m!4895667))

(assert (=> bm!296721 m!4895615))

(declare-fun m!4895669 () Bool)

(assert (=> bm!296719 m!4895669))

(assert (=> b!4303222 d!1266977))

(declare-fun d!1266979 () Bool)

(declare-fun map!9999 (LongMapFixedSize!9146) ListLongMap!875)

(assert (=> d!1266979 (= (map!9997 (v!42042 (underlying!9376 thiss!42308))) (map!9999 (v!42041 (underlying!9375 (v!42042 (underlying!9376 thiss!42308))))))))

(declare-fun bs!604174 () Bool)

(assert (= bs!604174 d!1266979))

(declare-fun m!4895671 () Bool)

(assert (=> bs!604174 m!4895671))

(assert (=> b!4303222 d!1266979))

(declare-fun d!1266981 () Bool)

(declare-fun lt!1524877 () ListMap!1553)

(declare-fun invariantList!554 (List!48154) Bool)

(assert (=> d!1266981 (invariantList!554 (toList!2268 lt!1524877))))

(assert (=> d!1266981 (= lt!1524877 (extractMap!290 (toList!2267 (map!9997 (v!42042 (underlying!9376 thiss!42308))))))))

(assert (=> d!1266981 (valid!3556 thiss!42308)))

(assert (=> d!1266981 (= (map!9998 thiss!42308) lt!1524877)))

(declare-fun bs!604175 () Bool)

(assert (= bs!604175 d!1266981))

(declare-fun m!4895673 () Bool)

(assert (=> bs!604175 m!4895673))

(assert (=> bs!604175 m!4895615))

(assert (=> bs!604175 m!4895655))

(assert (=> bs!604175 m!4895621))

(assert (=> b!4303222 d!1266981))

(declare-fun d!1266983 () Bool)

(declare-fun res!1763774 () Bool)

(declare-fun e!2675354 () Bool)

(assert (=> d!1266983 (=> res!1763774 e!2675354)))

(assert (=> d!1266983 (= res!1763774 (and ((_ is Cons!48030) lt!1524811) (= (_1!26355 (h!53452 lt!1524811)) key!2048)))))

(assert (=> d!1266983 (= (containsKey!263 lt!1524811 key!2048) e!2675354)))

(declare-fun b!4303268 () Bool)

(declare-fun e!2675355 () Bool)

(assert (=> b!4303268 (= e!2675354 e!2675355)))

(declare-fun res!1763775 () Bool)

(assert (=> b!4303268 (=> (not res!1763775) (not e!2675355))))

(assert (=> b!4303268 (= res!1763775 ((_ is Cons!48030) lt!1524811))))

(declare-fun b!4303269 () Bool)

(assert (=> b!4303269 (= e!2675355 (containsKey!263 (t!354927 lt!1524811) key!2048))))

(assert (= (and d!1266983 (not res!1763774)) b!4303268))

(assert (= (and b!4303268 res!1763775) b!4303269))

(declare-fun m!4895675 () Bool)

(assert (=> b!4303269 m!4895675))

(assert (=> b!4303227 d!1266983))

(declare-fun d!1266985 () Bool)

(declare-fun res!1763780 () Bool)

(declare-fun e!2675360 () Bool)

(assert (=> d!1266985 (=> res!1763780 e!2675360)))

(assert (=> d!1266985 (= res!1763780 (not ((_ is Cons!48030) lt!1524808)))))

(assert (=> d!1266985 (= (noDuplicateKeys!176 lt!1524808) e!2675360)))

(declare-fun b!4303274 () Bool)

(declare-fun e!2675361 () Bool)

(assert (=> b!4303274 (= e!2675360 e!2675361)))

(declare-fun res!1763781 () Bool)

(assert (=> b!4303274 (=> (not res!1763781) (not e!2675361))))

(assert (=> b!4303274 (= res!1763781 (not (containsKey!263 (t!354927 lt!1524808) (_1!26355 (h!53452 lt!1524808)))))))

(declare-fun b!4303275 () Bool)

(assert (=> b!4303275 (= e!2675361 (noDuplicateKeys!176 (t!354927 lt!1524808)))))

(assert (= (and d!1266985 (not res!1763780)) b!4303274))

(assert (= (and b!4303274 res!1763781) b!4303275))

(declare-fun m!4895677 () Bool)

(assert (=> b!4303274 m!4895677))

(declare-fun m!4895679 () Bool)

(assert (=> b!4303275 m!4895679))

(assert (=> b!4303218 d!1266985))

(declare-fun bs!604176 () Bool)

(declare-fun d!1266987 () Bool)

(assert (= bs!604176 (and d!1266987 b!4303223)))

(declare-fun lambda!132220 () Int)

(assert (=> bs!604176 (= lambda!132220 lambda!132214)))

(declare-fun bs!604177 () Bool)

(assert (= bs!604177 (and d!1266987 b!4303257)))

(assert (=> bs!604177 (= lambda!132220 lambda!132217)))

(assert (=> d!1266987 (eq!114 (extractMap!290 (toList!2267 (+!206 lt!1524801 (tuple2!46155 lt!1524810 lt!1524808)))) (+!205 (extractMap!290 (toList!2267 lt!1524801)) (tuple2!46153 key!2048 v!9179)))))

(declare-fun lt!1524880 () Unit!67016)

(declare-fun choose!26189 (ListLongMap!875 (_ BitVec 64) List!48154 K!9179 V!9381 Hashable!4489) Unit!67016)

(assert (=> d!1266987 (= lt!1524880 (choose!26189 lt!1524801 lt!1524810 lt!1524808 key!2048 v!9179 (hashF!6533 thiss!42308)))))

(assert (=> d!1266987 (forall!8669 (toList!2267 lt!1524801) lambda!132220)))

(assert (=> d!1266987 (= (lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!46 lt!1524801 lt!1524810 lt!1524808 key!2048 v!9179 (hashF!6533 thiss!42308)) lt!1524880)))

(declare-fun bs!604178 () Bool)

(assert (= bs!604178 d!1266987))

(declare-fun m!4895681 () Bool)

(assert (=> bs!604178 m!4895681))

(declare-fun m!4895683 () Bool)

(assert (=> bs!604178 m!4895683))

(declare-fun m!4895685 () Bool)

(assert (=> bs!604178 m!4895685))

(assert (=> bs!604178 m!4895591))

(assert (=> bs!604178 m!4895681))

(assert (=> bs!604178 m!4895601))

(declare-fun m!4895687 () Bool)

(assert (=> bs!604178 m!4895687))

(declare-fun m!4895689 () Bool)

(assert (=> bs!604178 m!4895689))

(assert (=> bs!604178 m!4895591))

(assert (=> bs!604178 m!4895683))

(assert (=> b!4303223 d!1266987))

(declare-fun d!1266989 () Bool)

(assert (=> d!1266989 (= (contains!9953 lt!1524797 key!2048) (contains!9953 lt!1524809 key!2048))))

(declare-fun lt!1524883 () Unit!67016)

(declare-fun choose!26190 (ListMap!1553 ListMap!1553 K!9179) Unit!67016)

(assert (=> d!1266989 (= lt!1524883 (choose!26190 lt!1524797 lt!1524809 key!2048))))

(assert (=> d!1266989 (eq!114 lt!1524797 lt!1524809)))

(assert (=> d!1266989 (= (lemmaEquivalentThenSameContains!41 lt!1524797 lt!1524809 key!2048) lt!1524883)))

(declare-fun bs!604179 () Bool)

(assert (= bs!604179 d!1266989))

(assert (=> bs!604179 m!4895599))

(assert (=> bs!604179 m!4895581))

(declare-fun m!4895691 () Bool)

(assert (=> bs!604179 m!4895691))

(declare-fun m!4895693 () Bool)

(assert (=> bs!604179 m!4895693))

(assert (=> b!4303223 d!1266989))

(declare-fun b!4303295 () Bool)

(declare-fun e!2675375 () Bool)

(declare-datatypes ((List!48156 0))(
  ( (Nil!48032) (Cons!48032 (h!53455 K!9179) (t!354931 List!48156)) )
))
(declare-fun contains!9957 (List!48156 K!9179) Bool)

(declare-fun keys!15974 (ListMap!1553) List!48156)

(assert (=> b!4303295 (= e!2675375 (not (contains!9957 (keys!15974 lt!1524809) key!2048)))))

(declare-fun b!4303296 () Bool)

(declare-fun e!2675374 () Bool)

(declare-fun e!2675377 () Bool)

(assert (=> b!4303296 (= e!2675374 e!2675377)))

(declare-fun res!1763788 () Bool)

(assert (=> b!4303296 (=> (not res!1763788) (not e!2675377))))

(declare-datatypes ((Option!10182 0))(
  ( (None!10181) (Some!10181 (v!42049 V!9381)) )
))
(declare-fun isDefined!7490 (Option!10182) Bool)

(declare-fun getValueByKey!225 (List!48154 K!9179) Option!10182)

(assert (=> b!4303296 (= res!1763788 (isDefined!7490 (getValueByKey!225 (toList!2268 lt!1524809) key!2048)))))

(declare-fun b!4303297 () Bool)

(declare-fun e!2675376 () List!48156)

(declare-fun getKeysList!37 (List!48154) List!48156)

(assert (=> b!4303297 (= e!2675376 (getKeysList!37 (toList!2268 lt!1524809)))))

(declare-fun b!4303298 () Bool)

(declare-fun e!2675379 () Unit!67016)

(declare-fun lt!1524903 () Unit!67016)

(assert (=> b!4303298 (= e!2675379 lt!1524903)))

(declare-fun lt!1524902 () Unit!67016)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!151 (List!48154 K!9179) Unit!67016)

(assert (=> b!4303298 (= lt!1524902 (lemmaContainsKeyImpliesGetValueByKeyDefined!151 (toList!2268 lt!1524809) key!2048))))

(assert (=> b!4303298 (isDefined!7490 (getValueByKey!225 (toList!2268 lt!1524809) key!2048))))

(declare-fun lt!1524900 () Unit!67016)

(assert (=> b!4303298 (= lt!1524900 lt!1524902)))

(declare-fun lemmaInListThenGetKeysListContains!34 (List!48154 K!9179) Unit!67016)

(assert (=> b!4303298 (= lt!1524903 (lemmaInListThenGetKeysListContains!34 (toList!2268 lt!1524809) key!2048))))

(declare-fun call!296732 () Bool)

(assert (=> b!4303298 call!296732))

(declare-fun b!4303299 () Bool)

(assert (=> b!4303299 (= e!2675377 (contains!9957 (keys!15974 lt!1524809) key!2048))))

(declare-fun bm!296727 () Bool)

(assert (=> bm!296727 (= call!296732 (contains!9957 e!2675376 key!2048))))

(declare-fun c!731776 () Bool)

(declare-fun c!731777 () Bool)

(assert (=> bm!296727 (= c!731776 c!731777)))

(declare-fun b!4303300 () Bool)

(assert (=> b!4303300 (= e!2675376 (keys!15974 lt!1524809))))

(declare-fun d!1266991 () Bool)

(assert (=> d!1266991 e!2675374))

(declare-fun res!1763790 () Bool)

(assert (=> d!1266991 (=> res!1763790 e!2675374)))

(assert (=> d!1266991 (= res!1763790 e!2675375)))

(declare-fun res!1763789 () Bool)

(assert (=> d!1266991 (=> (not res!1763789) (not e!2675375))))

(declare-fun lt!1524906 () Bool)

(assert (=> d!1266991 (= res!1763789 (not lt!1524906))))

(declare-fun lt!1524905 () Bool)

(assert (=> d!1266991 (= lt!1524906 lt!1524905)))

(declare-fun lt!1524907 () Unit!67016)

(assert (=> d!1266991 (= lt!1524907 e!2675379)))

(assert (=> d!1266991 (= c!731777 lt!1524905)))

(declare-fun containsKey!265 (List!48154 K!9179) Bool)

(assert (=> d!1266991 (= lt!1524905 (containsKey!265 (toList!2268 lt!1524809) key!2048))))

(assert (=> d!1266991 (= (contains!9953 lt!1524809 key!2048) lt!1524906)))

(declare-fun b!4303294 () Bool)

(declare-fun e!2675378 () Unit!67016)

(declare-fun Unit!67023 () Unit!67016)

(assert (=> b!4303294 (= e!2675378 Unit!67023)))

(declare-fun b!4303301 () Bool)

(assert (=> b!4303301 (= e!2675379 e!2675378)))

(declare-fun c!731778 () Bool)

(assert (=> b!4303301 (= c!731778 call!296732)))

(declare-fun b!4303302 () Bool)

(assert (=> b!4303302 false))

(declare-fun lt!1524901 () Unit!67016)

(declare-fun lt!1524904 () Unit!67016)

(assert (=> b!4303302 (= lt!1524901 lt!1524904)))

(assert (=> b!4303302 (containsKey!265 (toList!2268 lt!1524809) key!2048)))

(declare-fun lemmaInGetKeysListThenContainsKey!34 (List!48154 K!9179) Unit!67016)

(assert (=> b!4303302 (= lt!1524904 (lemmaInGetKeysListThenContainsKey!34 (toList!2268 lt!1524809) key!2048))))

(declare-fun Unit!67024 () Unit!67016)

(assert (=> b!4303302 (= e!2675378 Unit!67024)))

(assert (= (and d!1266991 c!731777) b!4303298))

(assert (= (and d!1266991 (not c!731777)) b!4303301))

(assert (= (and b!4303301 c!731778) b!4303302))

(assert (= (and b!4303301 (not c!731778)) b!4303294))

(assert (= (or b!4303298 b!4303301) bm!296727))

(assert (= (and bm!296727 c!731776) b!4303297))

(assert (= (and bm!296727 (not c!731776)) b!4303300))

(assert (= (and d!1266991 res!1763789) b!4303295))

(assert (= (and d!1266991 (not res!1763790)) b!4303296))

(assert (= (and b!4303296 res!1763788) b!4303299))

(declare-fun m!4895695 () Bool)

(assert (=> b!4303297 m!4895695))

(declare-fun m!4895697 () Bool)

(assert (=> b!4303300 m!4895697))

(declare-fun m!4895699 () Bool)

(assert (=> b!4303302 m!4895699))

(declare-fun m!4895701 () Bool)

(assert (=> b!4303302 m!4895701))

(declare-fun m!4895703 () Bool)

(assert (=> bm!296727 m!4895703))

(assert (=> d!1266991 m!4895699))

(assert (=> b!4303299 m!4895697))

(assert (=> b!4303299 m!4895697))

(declare-fun m!4895705 () Bool)

(assert (=> b!4303299 m!4895705))

(assert (=> b!4303295 m!4895697))

(assert (=> b!4303295 m!4895697))

(assert (=> b!4303295 m!4895705))

(declare-fun m!4895707 () Bool)

(assert (=> b!4303296 m!4895707))

(assert (=> b!4303296 m!4895707))

(declare-fun m!4895709 () Bool)

(assert (=> b!4303296 m!4895709))

(declare-fun m!4895711 () Bool)

(assert (=> b!4303298 m!4895711))

(assert (=> b!4303298 m!4895707))

(assert (=> b!4303298 m!4895707))

(assert (=> b!4303298 m!4895709))

(declare-fun m!4895713 () Bool)

(assert (=> b!4303298 m!4895713))

(assert (=> b!4303223 d!1266991))

(declare-fun bs!604180 () Bool)

(declare-fun d!1266993 () Bool)

(assert (= bs!604180 (and d!1266993 b!4303223)))

(declare-fun lambda!132225 () Int)

(assert (=> bs!604180 (= lambda!132225 lambda!132214)))

(declare-fun bs!604181 () Bool)

(assert (= bs!604181 (and d!1266993 b!4303257)))

(assert (=> bs!604181 (= lambda!132225 lambda!132217)))

(declare-fun bs!604182 () Bool)

(assert (= bs!604182 (and d!1266993 d!1266987)))

(assert (=> bs!604182 (= lambda!132225 lambda!132220)))

(declare-fun e!2675382 () Bool)

(assert (=> d!1266993 e!2675382))

(declare-fun res!1763793 () Bool)

(assert (=> d!1266993 (=> (not res!1763793) (not e!2675382))))

(declare-fun lt!1524913 () ListLongMap!875)

(assert (=> d!1266993 (= res!1763793 (forall!8669 (toList!2267 lt!1524913) lambda!132225))))

(assert (=> d!1266993 (= lt!1524913 (+!206 lt!1524801 (tuple2!46155 lt!1524810 lt!1524808)))))

(declare-fun lt!1524912 () Unit!67016)

(declare-fun choose!26191 (ListLongMap!875 (_ BitVec 64) List!48154 Hashable!4489) Unit!67016)

(assert (=> d!1266993 (= lt!1524912 (choose!26191 lt!1524801 lt!1524810 lt!1524808 (hashF!6533 thiss!42308)))))

(assert (=> d!1266993 (forall!8669 (toList!2267 lt!1524801) lambda!132225)))

(assert (=> d!1266993 (= (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!117 lt!1524801 lt!1524810 lt!1524808 (hashF!6533 thiss!42308)) lt!1524912)))

(declare-fun b!4303305 () Bool)

(assert (=> b!4303305 (= e!2675382 (allKeysSameHashInMap!294 lt!1524913 (hashF!6533 thiss!42308)))))

(assert (= (and d!1266993 res!1763793) b!4303305))

(declare-fun m!4895715 () Bool)

(assert (=> d!1266993 m!4895715))

(assert (=> d!1266993 m!4895601))

(declare-fun m!4895717 () Bool)

(assert (=> d!1266993 m!4895717))

(declare-fun m!4895719 () Bool)

(assert (=> d!1266993 m!4895719))

(declare-fun m!4895721 () Bool)

(assert (=> b!4303305 m!4895721))

(assert (=> b!4303223 d!1266993))

(declare-fun d!1266995 () Bool)

(declare-fun e!2675385 () Bool)

(assert (=> d!1266995 e!2675385))

(declare-fun res!1763799 () Bool)

(assert (=> d!1266995 (=> (not res!1763799) (not e!2675385))))

(declare-fun lt!1524925 () ListMap!1553)

(assert (=> d!1266995 (= res!1763799 (contains!9953 lt!1524925 (_1!26355 lt!1524814)))))

(declare-fun lt!1524923 () List!48154)

(assert (=> d!1266995 (= lt!1524925 (ListMap!1554 lt!1524923))))

(declare-fun lt!1524924 () Unit!67016)

(declare-fun lt!1524922 () Unit!67016)

(assert (=> d!1266995 (= lt!1524924 lt!1524922)))

(assert (=> d!1266995 (= (getValueByKey!225 lt!1524923 (_1!26355 lt!1524814)) (Some!10181 (_2!26355 lt!1524814)))))

(declare-fun lemmaContainsTupThenGetReturnValue!50 (List!48154 K!9179 V!9381) Unit!67016)

(assert (=> d!1266995 (= lt!1524922 (lemmaContainsTupThenGetReturnValue!50 lt!1524923 (_1!26355 lt!1524814) (_2!26355 lt!1524814)))))

(declare-fun insertNoDuplicatedKeys!33 (List!48154 K!9179 V!9381) List!48154)

(assert (=> d!1266995 (= lt!1524923 (insertNoDuplicatedKeys!33 (toList!2268 (extractMap!290 (toList!2267 lt!1524801))) (_1!26355 lt!1524814) (_2!26355 lt!1524814)))))

(assert (=> d!1266995 (= (+!205 (extractMap!290 (toList!2267 lt!1524801)) lt!1524814) lt!1524925)))

(declare-fun b!4303310 () Bool)

(declare-fun res!1763798 () Bool)

(assert (=> b!4303310 (=> (not res!1763798) (not e!2675385))))

(assert (=> b!4303310 (= res!1763798 (= (getValueByKey!225 (toList!2268 lt!1524925) (_1!26355 lt!1524814)) (Some!10181 (_2!26355 lt!1524814))))))

(declare-fun b!4303311 () Bool)

(declare-fun contains!9958 (List!48154 tuple2!46152) Bool)

(assert (=> b!4303311 (= e!2675385 (contains!9958 (toList!2268 lt!1524925) lt!1524814))))

(assert (= (and d!1266995 res!1763799) b!4303310))

(assert (= (and b!4303310 res!1763798) b!4303311))

(declare-fun m!4895723 () Bool)

(assert (=> d!1266995 m!4895723))

(declare-fun m!4895725 () Bool)

(assert (=> d!1266995 m!4895725))

(declare-fun m!4895727 () Bool)

(assert (=> d!1266995 m!4895727))

(declare-fun m!4895729 () Bool)

(assert (=> d!1266995 m!4895729))

(declare-fun m!4895731 () Bool)

(assert (=> b!4303310 m!4895731))

(declare-fun m!4895733 () Bool)

(assert (=> b!4303311 m!4895733))

(assert (=> b!4303223 d!1266995))

(declare-fun d!1266997 () Bool)

(declare-fun e!2675388 () Bool)

(assert (=> d!1266997 e!2675388))

(declare-fun res!1763804 () Bool)

(assert (=> d!1266997 (=> (not res!1763804) (not e!2675388))))

(declare-fun lt!1524935 () ListLongMap!875)

(assert (=> d!1266997 (= res!1763804 (contains!9956 lt!1524935 (_1!26356 (tuple2!46155 lt!1524810 lt!1524808))))))

(declare-fun lt!1524936 () List!48155)

(assert (=> d!1266997 (= lt!1524935 (ListLongMap!876 lt!1524936))))

(declare-fun lt!1524937 () Unit!67016)

(declare-fun lt!1524934 () Unit!67016)

(assert (=> d!1266997 (= lt!1524937 lt!1524934)))

(assert (=> d!1266997 (= (getValueByKey!224 lt!1524936 (_1!26356 (tuple2!46155 lt!1524810 lt!1524808))) (Some!10180 (_2!26356 (tuple2!46155 lt!1524810 lt!1524808))))))

(declare-fun lemmaContainsTupThenGetReturnValue!51 (List!48155 (_ BitVec 64) List!48154) Unit!67016)

(assert (=> d!1266997 (= lt!1524934 (lemmaContainsTupThenGetReturnValue!51 lt!1524936 (_1!26356 (tuple2!46155 lt!1524810 lt!1524808)) (_2!26356 (tuple2!46155 lt!1524810 lt!1524808))))))

(declare-fun insertStrictlySorted!26 (List!48155 (_ BitVec 64) List!48154) List!48155)

(assert (=> d!1266997 (= lt!1524936 (insertStrictlySorted!26 (toList!2267 lt!1524801) (_1!26356 (tuple2!46155 lt!1524810 lt!1524808)) (_2!26356 (tuple2!46155 lt!1524810 lt!1524808))))))

(assert (=> d!1266997 (= (+!206 lt!1524801 (tuple2!46155 lt!1524810 lt!1524808)) lt!1524935)))

(declare-fun b!4303316 () Bool)

(declare-fun res!1763805 () Bool)

(assert (=> b!4303316 (=> (not res!1763805) (not e!2675388))))

(assert (=> b!4303316 (= res!1763805 (= (getValueByKey!224 (toList!2267 lt!1524935) (_1!26356 (tuple2!46155 lt!1524810 lt!1524808))) (Some!10180 (_2!26356 (tuple2!46155 lt!1524810 lt!1524808)))))))

(declare-fun b!4303317 () Bool)

(assert (=> b!4303317 (= e!2675388 (contains!9954 (toList!2267 lt!1524935) (tuple2!46155 lt!1524810 lt!1524808)))))

(assert (= (and d!1266997 res!1763804) b!4303316))

(assert (= (and b!4303316 res!1763805) b!4303317))

(declare-fun m!4895735 () Bool)

(assert (=> d!1266997 m!4895735))

(declare-fun m!4895737 () Bool)

(assert (=> d!1266997 m!4895737))

(declare-fun m!4895739 () Bool)

(assert (=> d!1266997 m!4895739))

(declare-fun m!4895741 () Bool)

(assert (=> d!1266997 m!4895741))

(declare-fun m!4895743 () Bool)

(assert (=> b!4303316 m!4895743))

(declare-fun m!4895745 () Bool)

(assert (=> b!4303317 m!4895745))

(assert (=> b!4303223 d!1266997))

(declare-fun bs!604183 () Bool)

(declare-fun d!1266999 () Bool)

(assert (= bs!604183 (and d!1266999 b!4303223)))

(declare-fun lambda!132228 () Int)

(assert (=> bs!604183 (= lambda!132228 lambda!132214)))

(declare-fun bs!604184 () Bool)

(assert (= bs!604184 (and d!1266999 b!4303257)))

(assert (=> bs!604184 (= lambda!132228 lambda!132217)))

(declare-fun bs!604185 () Bool)

(assert (= bs!604185 (and d!1266999 d!1266987)))

(assert (=> bs!604185 (= lambda!132228 lambda!132220)))

(declare-fun bs!604186 () Bool)

(assert (= bs!604186 (and d!1266999 d!1266993)))

(assert (=> bs!604186 (= lambda!132228 lambda!132225)))

(declare-fun lt!1524940 () ListMap!1553)

(assert (=> d!1266999 (invariantList!554 (toList!2268 lt!1524940))))

(declare-fun e!2675391 () ListMap!1553)

(assert (=> d!1266999 (= lt!1524940 e!2675391)))

(declare-fun c!731781 () Bool)

(assert (=> d!1266999 (= c!731781 ((_ is Cons!48031) (toList!2267 lt!1524801)))))

(assert (=> d!1266999 (forall!8669 (toList!2267 lt!1524801) lambda!132228)))

(assert (=> d!1266999 (= (extractMap!290 (toList!2267 lt!1524801)) lt!1524940)))

(declare-fun b!4303322 () Bool)

(declare-fun addToMapMapFromBucket!25 (List!48154 ListMap!1553) ListMap!1553)

(assert (=> b!4303322 (= e!2675391 (addToMapMapFromBucket!25 (_2!26356 (h!53453 (toList!2267 lt!1524801))) (extractMap!290 (t!354928 (toList!2267 lt!1524801)))))))

(declare-fun b!4303323 () Bool)

(assert (=> b!4303323 (= e!2675391 (ListMap!1554 Nil!48030))))

(assert (= (and d!1266999 c!731781) b!4303322))

(assert (= (and d!1266999 (not c!731781)) b!4303323))

(declare-fun m!4895747 () Bool)

(assert (=> d!1266999 m!4895747))

(declare-fun m!4895749 () Bool)

(assert (=> d!1266999 m!4895749))

(declare-fun m!4895751 () Bool)

(assert (=> b!4303322 m!4895751))

(assert (=> b!4303322 m!4895751))

(declare-fun m!4895753 () Bool)

(assert (=> b!4303322 m!4895753))

(assert (=> b!4303223 d!1266999))

(declare-fun d!1267001 () Bool)

(declare-fun e!2675392 () Bool)

(assert (=> d!1267001 e!2675392))

(declare-fun res!1763807 () Bool)

(assert (=> d!1267001 (=> (not res!1763807) (not e!2675392))))

(declare-fun lt!1524944 () ListMap!1553)

(assert (=> d!1267001 (= res!1763807 (contains!9953 lt!1524944 (_1!26355 lt!1524814)))))

(declare-fun lt!1524942 () List!48154)

(assert (=> d!1267001 (= lt!1524944 (ListMap!1554 lt!1524942))))

(declare-fun lt!1524943 () Unit!67016)

(declare-fun lt!1524941 () Unit!67016)

(assert (=> d!1267001 (= lt!1524943 lt!1524941)))

(assert (=> d!1267001 (= (getValueByKey!225 lt!1524942 (_1!26355 lt!1524814)) (Some!10181 (_2!26355 lt!1524814)))))

(assert (=> d!1267001 (= lt!1524941 (lemmaContainsTupThenGetReturnValue!50 lt!1524942 (_1!26355 lt!1524814) (_2!26355 lt!1524814)))))

(assert (=> d!1267001 (= lt!1524942 (insertNoDuplicatedKeys!33 (toList!2268 lt!1524800) (_1!26355 lt!1524814) (_2!26355 lt!1524814)))))

(assert (=> d!1267001 (= (+!205 lt!1524800 lt!1524814) lt!1524944)))

(declare-fun b!4303324 () Bool)

(declare-fun res!1763806 () Bool)

(assert (=> b!4303324 (=> (not res!1763806) (not e!2675392))))

(assert (=> b!4303324 (= res!1763806 (= (getValueByKey!225 (toList!2268 lt!1524944) (_1!26355 lt!1524814)) (Some!10181 (_2!26355 lt!1524814))))))

(declare-fun b!4303325 () Bool)

(assert (=> b!4303325 (= e!2675392 (contains!9958 (toList!2268 lt!1524944) lt!1524814))))

(assert (= (and d!1267001 res!1763807) b!4303324))

(assert (= (and b!4303324 res!1763806) b!4303325))

(declare-fun m!4895755 () Bool)

(assert (=> d!1267001 m!4895755))

(declare-fun m!4895757 () Bool)

(assert (=> d!1267001 m!4895757))

(declare-fun m!4895759 () Bool)

(assert (=> d!1267001 m!4895759))

(declare-fun m!4895761 () Bool)

(assert (=> d!1267001 m!4895761))

(declare-fun m!4895763 () Bool)

(assert (=> b!4303324 m!4895763))

(declare-fun m!4895765 () Bool)

(assert (=> b!4303325 m!4895765))

(assert (=> b!4303223 d!1267001))

(declare-fun bs!604187 () Bool)

(declare-fun d!1267003 () Bool)

(assert (= bs!604187 (and d!1267003 d!1266993)))

(declare-fun lambda!132229 () Int)

(assert (=> bs!604187 (= lambda!132229 lambda!132225)))

(declare-fun bs!604188 () Bool)

(assert (= bs!604188 (and d!1267003 b!4303223)))

(assert (=> bs!604188 (= lambda!132229 lambda!132214)))

(declare-fun bs!604189 () Bool)

(assert (= bs!604189 (and d!1267003 d!1266999)))

(assert (=> bs!604189 (= lambda!132229 lambda!132228)))

(declare-fun bs!604190 () Bool)

(assert (= bs!604190 (and d!1267003 b!4303257)))

(assert (=> bs!604190 (= lambda!132229 lambda!132217)))

(declare-fun bs!604191 () Bool)

(assert (= bs!604191 (and d!1267003 d!1266987)))

(assert (=> bs!604191 (= lambda!132229 lambda!132220)))

(declare-fun lt!1524945 () ListMap!1553)

(assert (=> d!1267003 (invariantList!554 (toList!2268 lt!1524945))))

(declare-fun e!2675393 () ListMap!1553)

(assert (=> d!1267003 (= lt!1524945 e!2675393)))

(declare-fun c!731782 () Bool)

(assert (=> d!1267003 (= c!731782 ((_ is Cons!48031) (toList!2267 lt!1524802)))))

(assert (=> d!1267003 (forall!8669 (toList!2267 lt!1524802) lambda!132229)))

(assert (=> d!1267003 (= (extractMap!290 (toList!2267 lt!1524802)) lt!1524945)))

(declare-fun b!4303326 () Bool)

(assert (=> b!4303326 (= e!2675393 (addToMapMapFromBucket!25 (_2!26356 (h!53453 (toList!2267 lt!1524802))) (extractMap!290 (t!354928 (toList!2267 lt!1524802)))))))

(declare-fun b!4303327 () Bool)

(assert (=> b!4303327 (= e!2675393 (ListMap!1554 Nil!48030))))

(assert (= (and d!1267003 c!731782) b!4303326))

(assert (= (and d!1267003 (not c!731782)) b!4303327))

(declare-fun m!4895767 () Bool)

(assert (=> d!1267003 m!4895767))

(declare-fun m!4895769 () Bool)

(assert (=> d!1267003 m!4895769))

(declare-fun m!4895771 () Bool)

(assert (=> b!4303326 m!4895771))

(assert (=> b!4303326 m!4895771))

(declare-fun m!4895773 () Bool)

(assert (=> b!4303326 m!4895773))

(assert (=> b!4303223 d!1267003))

(declare-fun d!1267005 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7542 (List!48154) (InoxSet tuple2!46152))

(assert (=> d!1267005 (= (eq!114 (extractMap!290 (toList!2267 lt!1524802)) (+!205 (extractMap!290 (toList!2267 lt!1524801)) lt!1524814)) (= (content!7542 (toList!2268 (extractMap!290 (toList!2267 lt!1524802)))) (content!7542 (toList!2268 (+!205 (extractMap!290 (toList!2267 lt!1524801)) lt!1524814)))))))

(declare-fun bs!604192 () Bool)

(assert (= bs!604192 d!1267005))

(declare-fun m!4895775 () Bool)

(assert (=> bs!604192 m!4895775))

(declare-fun m!4895777 () Bool)

(assert (=> bs!604192 m!4895777))

(assert (=> b!4303223 d!1267005))

(declare-fun d!1267007 () Bool)

(assert (=> d!1267007 true))

(assert (=> d!1267007 true))

(declare-fun lambda!132232 () Int)

(declare-fun forall!8670 (List!48154 Int) Bool)

(assert (=> d!1267007 (= (allKeysSameHash!146 lt!1524811 lt!1524810 (hashF!6533 thiss!42308)) (forall!8670 lt!1524811 lambda!132232))))

(declare-fun bs!604193 () Bool)

(assert (= bs!604193 d!1267007))

(declare-fun m!4895779 () Bool)

(assert (=> bs!604193 m!4895779))

(assert (=> b!4303223 d!1267007))

(declare-fun bs!604194 () Bool)

(declare-fun d!1267009 () Bool)

(assert (= bs!604194 (and d!1267009 d!1267003)))

(declare-fun lambda!132235 () Int)

(assert (=> bs!604194 (not (= lambda!132235 lambda!132229))))

(declare-fun bs!604195 () Bool)

(assert (= bs!604195 (and d!1267009 d!1266993)))

(assert (=> bs!604195 (not (= lambda!132235 lambda!132225))))

(declare-fun bs!604196 () Bool)

(assert (= bs!604196 (and d!1267009 b!4303223)))

(assert (=> bs!604196 (not (= lambda!132235 lambda!132214))))

(declare-fun bs!604197 () Bool)

(assert (= bs!604197 (and d!1267009 d!1266999)))

(assert (=> bs!604197 (not (= lambda!132235 lambda!132228))))

(declare-fun bs!604198 () Bool)

(assert (= bs!604198 (and d!1267009 b!4303257)))

(assert (=> bs!604198 (not (= lambda!132235 lambda!132217))))

(declare-fun bs!604199 () Bool)

(assert (= bs!604199 (and d!1267009 d!1266987)))

(assert (=> bs!604199 (not (= lambda!132235 lambda!132220))))

(assert (=> d!1267009 true))

(assert (=> d!1267009 (allKeysSameHash!146 lt!1524804 lt!1524810 (hashF!6533 thiss!42308))))

(declare-fun lt!1524948 () Unit!67016)

(declare-fun choose!26192 (List!48155 (_ BitVec 64) List!48154 Hashable!4489) Unit!67016)

(assert (=> d!1267009 (= lt!1524948 (choose!26192 (toList!2267 lt!1524801) lt!1524810 lt!1524804 (hashF!6533 thiss!42308)))))

(assert (=> d!1267009 (forall!8669 (toList!2267 lt!1524801) lambda!132235)))

(assert (=> d!1267009 (= (lemmaInLongMapAllKeySameHashThenForTuple!137 (toList!2267 lt!1524801) lt!1524810 lt!1524804 (hashF!6533 thiss!42308)) lt!1524948)))

(declare-fun bs!604200 () Bool)

(assert (= bs!604200 d!1267009))

(assert (=> bs!604200 m!4895607))

(declare-fun m!4895781 () Bool)

(assert (=> bs!604200 m!4895781))

(declare-fun m!4895783 () Bool)

(assert (=> bs!604200 m!4895783))

(assert (=> b!4303223 d!1267009))

(declare-fun d!1267011 () Bool)

(assert (=> d!1267011 (allKeysSameHash!146 (removePairForKey!170 lt!1524804 key!2048) lt!1524810 (hashF!6533 thiss!42308))))

(declare-fun lt!1524951 () Unit!67016)

(declare-fun choose!26193 (List!48154 K!9179 (_ BitVec 64) Hashable!4489) Unit!67016)

(assert (=> d!1267011 (= lt!1524951 (choose!26193 lt!1524804 key!2048 lt!1524810 (hashF!6533 thiss!42308)))))

(assert (=> d!1267011 (noDuplicateKeys!176 lt!1524804)))

(assert (=> d!1267011 (= (lemmaRemovePairForKeyPreservesHash!132 lt!1524804 key!2048 lt!1524810 (hashF!6533 thiss!42308)) lt!1524951)))

(declare-fun bs!604201 () Bool)

(assert (= bs!604201 d!1267011))

(assert (=> bs!604201 m!4895567))

(assert (=> bs!604201 m!4895567))

(declare-fun m!4895785 () Bool)

(assert (=> bs!604201 m!4895785))

(declare-fun m!4895787 () Bool)

(assert (=> bs!604201 m!4895787))

(declare-fun m!4895789 () Bool)

(assert (=> bs!604201 m!4895789))

(assert (=> b!4303223 d!1267011))

(declare-fun d!1267013 () Bool)

(declare-fun lt!1524952 () ListMap!1553)

(assert (=> d!1267013 (invariantList!554 (toList!2268 lt!1524952))))

(assert (=> d!1267013 (= lt!1524952 (extractMap!290 (toList!2267 (map!9997 (v!42042 (underlying!9376 (HashMap!4479 (Cell!18104 (_2!26357 lt!1524812)) (hashF!6533 thiss!42308) (_size!9190 thiss!42308) (defaultValue!4650 thiss!42308))))))))))

(assert (=> d!1267013 (valid!3556 (HashMap!4479 (Cell!18104 (_2!26357 lt!1524812)) (hashF!6533 thiss!42308) (_size!9190 thiss!42308) (defaultValue!4650 thiss!42308)))))

(assert (=> d!1267013 (= (map!9998 (HashMap!4479 (Cell!18104 (_2!26357 lt!1524812)) (hashF!6533 thiss!42308) (_size!9190 thiss!42308) (defaultValue!4650 thiss!42308))) lt!1524952)))

(declare-fun bs!604202 () Bool)

(assert (= bs!604202 d!1267013))

(declare-fun m!4895791 () Bool)

(assert (=> bs!604202 m!4895791))

(declare-fun m!4895793 () Bool)

(assert (=> bs!604202 m!4895793))

(declare-fun m!4895795 () Bool)

(assert (=> bs!604202 m!4895795))

(declare-fun m!4895797 () Bool)

(assert (=> bs!604202 m!4895797))

(assert (=> b!4303223 d!1267013))

(declare-fun d!1267015 () Bool)

(assert (=> d!1267015 (noDuplicateKeys!176 (removePairForKey!170 lt!1524804 key!2048))))

(declare-fun lt!1524955 () Unit!67016)

(declare-fun choose!26194 (List!48154 K!9179) Unit!67016)

(assert (=> d!1267015 (= lt!1524955 (choose!26194 lt!1524804 key!2048))))

(assert (=> d!1267015 (noDuplicateKeys!176 lt!1524804)))

(assert (=> d!1267015 (= (lemmaRemovePairForKeyPreservesNoDuplicateKeys!149 lt!1524804 key!2048) lt!1524955)))

(declare-fun bs!604203 () Bool)

(assert (= bs!604203 d!1267015))

(assert (=> bs!604203 m!4895567))

(assert (=> bs!604203 m!4895567))

(declare-fun m!4895799 () Bool)

(assert (=> bs!604203 m!4895799))

(declare-fun m!4895801 () Bool)

(assert (=> bs!604203 m!4895801))

(assert (=> bs!604203 m!4895789))

(assert (=> b!4303223 d!1267015))

(declare-fun d!1267017 () Bool)

(declare-fun res!1763808 () Bool)

(declare-fun e!2675394 () Bool)

(assert (=> d!1267017 (=> res!1763808 e!2675394)))

(assert (=> d!1267017 (= res!1763808 (not ((_ is Cons!48030) lt!1524811)))))

(assert (=> d!1267017 (= (noDuplicateKeys!176 lt!1524811) e!2675394)))

(declare-fun b!4303334 () Bool)

(declare-fun e!2675395 () Bool)

(assert (=> b!4303334 (= e!2675394 e!2675395)))

(declare-fun res!1763809 () Bool)

(assert (=> b!4303334 (=> (not res!1763809) (not e!2675395))))

(assert (=> b!4303334 (= res!1763809 (not (containsKey!263 (t!354927 lt!1524811) (_1!26355 (h!53452 lt!1524811)))))))

(declare-fun b!4303335 () Bool)

(assert (=> b!4303335 (= e!2675395 (noDuplicateKeys!176 (t!354927 lt!1524811)))))

(assert (= (and d!1267017 (not res!1763808)) b!4303334))

(assert (= (and b!4303334 res!1763809) b!4303335))

(declare-fun m!4895803 () Bool)

(assert (=> b!4303334 m!4895803))

(declare-fun m!4895805 () Bool)

(assert (=> b!4303335 m!4895805))

(assert (=> b!4303223 d!1267017))

(declare-fun b!4303337 () Bool)

(declare-fun e!2675397 () Bool)

(assert (=> b!4303337 (= e!2675397 (not (contains!9957 (keys!15974 lt!1524797) key!2048)))))

(declare-fun b!4303338 () Bool)

(declare-fun e!2675396 () Bool)

(declare-fun e!2675399 () Bool)

(assert (=> b!4303338 (= e!2675396 e!2675399)))

(declare-fun res!1763810 () Bool)

(assert (=> b!4303338 (=> (not res!1763810) (not e!2675399))))

(assert (=> b!4303338 (= res!1763810 (isDefined!7490 (getValueByKey!225 (toList!2268 lt!1524797) key!2048)))))

(declare-fun b!4303339 () Bool)

(declare-fun e!2675398 () List!48156)

(assert (=> b!4303339 (= e!2675398 (getKeysList!37 (toList!2268 lt!1524797)))))

(declare-fun b!4303340 () Bool)

(declare-fun e!2675401 () Unit!67016)

(declare-fun lt!1524959 () Unit!67016)

(assert (=> b!4303340 (= e!2675401 lt!1524959)))

(declare-fun lt!1524958 () Unit!67016)

(assert (=> b!4303340 (= lt!1524958 (lemmaContainsKeyImpliesGetValueByKeyDefined!151 (toList!2268 lt!1524797) key!2048))))

(assert (=> b!4303340 (isDefined!7490 (getValueByKey!225 (toList!2268 lt!1524797) key!2048))))

(declare-fun lt!1524956 () Unit!67016)

(assert (=> b!4303340 (= lt!1524956 lt!1524958)))

(assert (=> b!4303340 (= lt!1524959 (lemmaInListThenGetKeysListContains!34 (toList!2268 lt!1524797) key!2048))))

(declare-fun call!296733 () Bool)

(assert (=> b!4303340 call!296733))

(declare-fun b!4303341 () Bool)

(assert (=> b!4303341 (= e!2675399 (contains!9957 (keys!15974 lt!1524797) key!2048))))

(declare-fun bm!296728 () Bool)

(assert (=> bm!296728 (= call!296733 (contains!9957 e!2675398 key!2048))))

(declare-fun c!731783 () Bool)

(declare-fun c!731784 () Bool)

(assert (=> bm!296728 (= c!731783 c!731784)))

(declare-fun b!4303342 () Bool)

(assert (=> b!4303342 (= e!2675398 (keys!15974 lt!1524797))))

(declare-fun d!1267019 () Bool)

(assert (=> d!1267019 e!2675396))

(declare-fun res!1763812 () Bool)

(assert (=> d!1267019 (=> res!1763812 e!2675396)))

(assert (=> d!1267019 (= res!1763812 e!2675397)))

(declare-fun res!1763811 () Bool)

(assert (=> d!1267019 (=> (not res!1763811) (not e!2675397))))

(declare-fun lt!1524962 () Bool)

(assert (=> d!1267019 (= res!1763811 (not lt!1524962))))

(declare-fun lt!1524961 () Bool)

(assert (=> d!1267019 (= lt!1524962 lt!1524961)))

(declare-fun lt!1524963 () Unit!67016)

(assert (=> d!1267019 (= lt!1524963 e!2675401)))

(assert (=> d!1267019 (= c!731784 lt!1524961)))

(assert (=> d!1267019 (= lt!1524961 (containsKey!265 (toList!2268 lt!1524797) key!2048))))

(assert (=> d!1267019 (= (contains!9953 lt!1524797 key!2048) lt!1524962)))

(declare-fun b!4303336 () Bool)

(declare-fun e!2675400 () Unit!67016)

(declare-fun Unit!67025 () Unit!67016)

(assert (=> b!4303336 (= e!2675400 Unit!67025)))

(declare-fun b!4303343 () Bool)

(assert (=> b!4303343 (= e!2675401 e!2675400)))

(declare-fun c!731785 () Bool)

(assert (=> b!4303343 (= c!731785 call!296733)))

(declare-fun b!4303344 () Bool)

(assert (=> b!4303344 false))

(declare-fun lt!1524957 () Unit!67016)

(declare-fun lt!1524960 () Unit!67016)

(assert (=> b!4303344 (= lt!1524957 lt!1524960)))

(assert (=> b!4303344 (containsKey!265 (toList!2268 lt!1524797) key!2048)))

(assert (=> b!4303344 (= lt!1524960 (lemmaInGetKeysListThenContainsKey!34 (toList!2268 lt!1524797) key!2048))))

(declare-fun Unit!67026 () Unit!67016)

(assert (=> b!4303344 (= e!2675400 Unit!67026)))

(assert (= (and d!1267019 c!731784) b!4303340))

(assert (= (and d!1267019 (not c!731784)) b!4303343))

(assert (= (and b!4303343 c!731785) b!4303344))

(assert (= (and b!4303343 (not c!731785)) b!4303336))

(assert (= (or b!4303340 b!4303343) bm!296728))

(assert (= (and bm!296728 c!731783) b!4303339))

(assert (= (and bm!296728 (not c!731783)) b!4303342))

(assert (= (and d!1267019 res!1763811) b!4303337))

(assert (= (and d!1267019 (not res!1763812)) b!4303338))

(assert (= (and b!4303338 res!1763810) b!4303341))

(declare-fun m!4895807 () Bool)

(assert (=> b!4303339 m!4895807))

(declare-fun m!4895809 () Bool)

(assert (=> b!4303342 m!4895809))

(declare-fun m!4895811 () Bool)

(assert (=> b!4303344 m!4895811))

(declare-fun m!4895813 () Bool)

(assert (=> b!4303344 m!4895813))

(declare-fun m!4895815 () Bool)

(assert (=> bm!296728 m!4895815))

(assert (=> d!1267019 m!4895811))

(assert (=> b!4303341 m!4895809))

(assert (=> b!4303341 m!4895809))

(declare-fun m!4895817 () Bool)

(assert (=> b!4303341 m!4895817))

(assert (=> b!4303337 m!4895809))

(assert (=> b!4303337 m!4895809))

(assert (=> b!4303337 m!4895817))

(declare-fun m!4895819 () Bool)

(assert (=> b!4303338 m!4895819))

(assert (=> b!4303338 m!4895819))

(declare-fun m!4895821 () Bool)

(assert (=> b!4303338 m!4895821))

(declare-fun m!4895823 () Bool)

(assert (=> b!4303340 m!4895823))

(assert (=> b!4303340 m!4895819))

(assert (=> b!4303340 m!4895819))

(assert (=> b!4303340 m!4895821))

(declare-fun m!4895825 () Bool)

(assert (=> b!4303340 m!4895825))

(assert (=> b!4303223 d!1267019))

(declare-fun d!1267021 () Bool)

(declare-fun res!1763817 () Bool)

(declare-fun e!2675406 () Bool)

(assert (=> d!1267021 (=> res!1763817 e!2675406)))

(assert (=> d!1267021 (= res!1763817 ((_ is Nil!48031) (toList!2267 lt!1524802)))))

(assert (=> d!1267021 (= (forall!8669 (toList!2267 lt!1524802) lambda!132214) e!2675406)))

(declare-fun b!4303349 () Bool)

(declare-fun e!2675407 () Bool)

(assert (=> b!4303349 (= e!2675406 e!2675407)))

(declare-fun res!1763818 () Bool)

(assert (=> b!4303349 (=> (not res!1763818) (not e!2675407))))

(declare-fun dynLambda!20384 (Int tuple2!46154) Bool)

(assert (=> b!4303349 (= res!1763818 (dynLambda!20384 lambda!132214 (h!53453 (toList!2267 lt!1524802))))))

(declare-fun b!4303350 () Bool)

(assert (=> b!4303350 (= e!2675407 (forall!8669 (t!354928 (toList!2267 lt!1524802)) lambda!132214))))

(assert (= (and d!1267021 (not res!1763817)) b!4303349))

(assert (= (and b!4303349 res!1763818) b!4303350))

(declare-fun b_lambda!126451 () Bool)

(assert (=> (not b_lambda!126451) (not b!4303349)))

(declare-fun m!4895827 () Bool)

(assert (=> b!4303349 m!4895827))

(declare-fun m!4895829 () Bool)

(assert (=> b!4303350 m!4895829))

(assert (=> b!4303223 d!1267021))

(declare-fun bs!604204 () Bool)

(declare-fun d!1267023 () Bool)

(assert (= bs!604204 (and d!1267023 d!1267007)))

(declare-fun lambda!132236 () Int)

(assert (=> bs!604204 (= lambda!132236 lambda!132232)))

(assert (=> d!1267023 true))

(assert (=> d!1267023 true))

(assert (=> d!1267023 (= (allKeysSameHash!146 lt!1524804 lt!1524810 (hashF!6533 thiss!42308)) (forall!8670 lt!1524804 lambda!132236))))

(declare-fun bs!604205 () Bool)

(assert (= bs!604205 d!1267023))

(declare-fun m!4895831 () Bool)

(assert (=> bs!604205 m!4895831))

(assert (=> b!4303223 d!1267023))

(declare-fun call!296739 () ListLongMap!875)

(declare-fun e!2675420 () Bool)

(declare-fun call!296738 () ListLongMap!875)

(declare-fun b!4303369 () Bool)

(assert (=> b!4303369 (= e!2675420 (= call!296739 (+!206 call!296738 (tuple2!46155 lt!1524810 lt!1524808))))))

(declare-fun b!4303370 () Bool)

(declare-fun e!2675419 () Bool)

(assert (=> b!4303370 (= e!2675419 (= call!296739 call!296738))))

(declare-fun d!1267025 () Bool)

(declare-fun e!2675422 () Bool)

(assert (=> d!1267025 e!2675422))

(declare-fun res!1763825 () Bool)

(assert (=> d!1267025 (=> (not res!1763825) (not e!2675422))))

(declare-fun lt!1524975 () tuple2!46156)

(assert (=> d!1267025 (= res!1763825 ((_ is LongMap!4573) (_2!26357 lt!1524975)))))

(declare-fun e!2675418 () tuple2!46156)

(assert (=> d!1267025 (= lt!1524975 e!2675418)))

(declare-fun c!731793 () Bool)

(declare-fun lt!1524972 () tuple2!46156)

(assert (=> d!1267025 (= c!731793 (_1!26357 lt!1524972))))

(declare-fun e!2675421 () tuple2!46156)

(assert (=> d!1267025 (= lt!1524972 e!2675421)))

(declare-fun c!731792 () Bool)

(declare-fun imbalanced!36 (MutLongMap!4573) Bool)

(assert (=> d!1267025 (= c!731792 (imbalanced!36 (v!42042 (underlying!9376 thiss!42308))))))

(declare-fun valid!3557 (MutLongMap!4573) Bool)

(assert (=> d!1267025 (valid!3557 (v!42042 (underlying!9376 thiss!42308)))))

(assert (=> d!1267025 (= (update!369 (v!42042 (underlying!9376 thiss!42308)) lt!1524810 lt!1524808) lt!1524975)))

(declare-fun bm!296733 () Bool)

(assert (=> bm!296733 (= call!296739 (map!9997 (_2!26357 lt!1524975)))))

(declare-fun b!4303371 () Bool)

(declare-datatypes ((tuple2!46158 0))(
  ( (tuple2!46159 (_1!26358 Bool) (_2!26358 LongMapFixedSize!9146)) )
))
(declare-fun lt!1524973 () tuple2!46158)

(assert (=> b!4303371 (= e!2675418 (tuple2!46157 (_1!26358 lt!1524973) (LongMap!4573 (Cell!18102 (_2!26358 lt!1524973)))))))

(declare-fun update!370 (LongMapFixedSize!9146 (_ BitVec 64) List!48154) tuple2!46158)

(assert (=> b!4303371 (= lt!1524973 (update!370 (v!42041 (underlying!9375 (_2!26357 lt!1524972))) lt!1524810 lt!1524808))))

(declare-fun bm!296734 () Bool)

(assert (=> bm!296734 (= call!296738 (map!9997 (v!42042 (underlying!9376 thiss!42308))))))

(declare-fun b!4303372 () Bool)

(assert (=> b!4303372 (= e!2675418 (tuple2!46157 false (_2!26357 lt!1524972)))))

(declare-fun b!4303373 () Bool)

(assert (=> b!4303373 (= e!2675419 e!2675420)))

(declare-fun res!1763826 () Bool)

(assert (=> b!4303373 (= res!1763826 (contains!9956 call!296739 lt!1524810))))

(assert (=> b!4303373 (=> (not res!1763826) (not e!2675420))))

(declare-fun b!4303374 () Bool)

(assert (=> b!4303374 (= e!2675421 (tuple2!46157 true (v!42042 (underlying!9376 thiss!42308))))))

(declare-fun b!4303375 () Bool)

(assert (=> b!4303375 (= e!2675422 e!2675419)))

(declare-fun c!731794 () Bool)

(assert (=> b!4303375 (= c!731794 (_1!26357 lt!1524975))))

(declare-fun b!4303376 () Bool)

(declare-fun lt!1524974 () tuple2!46156)

(assert (=> b!4303376 (= e!2675421 (tuple2!46157 (_1!26357 lt!1524974) (_2!26357 lt!1524974)))))

(declare-fun repack!40 (MutLongMap!4573) tuple2!46156)

(assert (=> b!4303376 (= lt!1524974 (repack!40 (v!42042 (underlying!9376 thiss!42308))))))

(declare-fun b!4303377 () Bool)

(declare-fun res!1763827 () Bool)

(assert (=> b!4303377 (=> (not res!1763827) (not e!2675422))))

(assert (=> b!4303377 (= res!1763827 (valid!3557 (_2!26357 lt!1524975)))))

(assert (= (and d!1267025 c!731792) b!4303376))

(assert (= (and d!1267025 (not c!731792)) b!4303374))

(assert (= (and d!1267025 c!731793) b!4303371))

(assert (= (and d!1267025 (not c!731793)) b!4303372))

(assert (= (and d!1267025 res!1763825) b!4303377))

(assert (= (and b!4303377 res!1763827) b!4303375))

(assert (= (and b!4303375 c!731794) b!4303373))

(assert (= (and b!4303375 (not c!731794)) b!4303370))

(assert (= (and b!4303373 res!1763826) b!4303369))

(assert (= (or b!4303369 b!4303370) bm!296734))

(assert (= (or b!4303373 b!4303369 b!4303370) bm!296733))

(declare-fun m!4895833 () Bool)

(assert (=> b!4303369 m!4895833))

(declare-fun m!4895835 () Bool)

(assert (=> b!4303373 m!4895835))

(assert (=> bm!296734 m!4895615))

(declare-fun m!4895837 () Bool)

(assert (=> bm!296733 m!4895837))

(declare-fun m!4895839 () Bool)

(assert (=> b!4303376 m!4895839))

(declare-fun m!4895841 () Bool)

(assert (=> b!4303371 m!4895841))

(declare-fun m!4895843 () Bool)

(assert (=> d!1267025 m!4895843))

(declare-fun m!4895845 () Bool)

(assert (=> d!1267025 m!4895845))

(declare-fun m!4895847 () Bool)

(assert (=> b!4303377 m!4895847))

(assert (=> b!4303224 d!1267025))

(declare-fun b!4303389 () Bool)

(declare-fun e!2675428 () List!48154)

(assert (=> b!4303389 (= e!2675428 Nil!48030)))

(declare-fun d!1267027 () Bool)

(declare-fun lt!1524978 () List!48154)

(assert (=> d!1267027 (not (containsKey!263 lt!1524978 key!2048))))

(declare-fun e!2675427 () List!48154)

(assert (=> d!1267027 (= lt!1524978 e!2675427)))

(declare-fun c!731799 () Bool)

(assert (=> d!1267027 (= c!731799 (and ((_ is Cons!48030) lt!1524804) (= (_1!26355 (h!53452 lt!1524804)) key!2048)))))

(assert (=> d!1267027 (noDuplicateKeys!176 lt!1524804)))

(assert (=> d!1267027 (= (removePairForKey!170 lt!1524804 key!2048) lt!1524978)))

(declare-fun b!4303388 () Bool)

(assert (=> b!4303388 (= e!2675428 (Cons!48030 (h!53452 lt!1524804) (removePairForKey!170 (t!354927 lt!1524804) key!2048)))))

(declare-fun b!4303386 () Bool)

(assert (=> b!4303386 (= e!2675427 (t!354927 lt!1524804))))

(declare-fun b!4303387 () Bool)

(assert (=> b!4303387 (= e!2675427 e!2675428)))

(declare-fun c!731800 () Bool)

(assert (=> b!4303387 (= c!731800 ((_ is Cons!48030) lt!1524804))))

(assert (= (and d!1267027 c!731799) b!4303386))

(assert (= (and d!1267027 (not c!731799)) b!4303387))

(assert (= (and b!4303387 c!731800) b!4303388))

(assert (= (and b!4303387 (not c!731800)) b!4303389))

(declare-fun m!4895849 () Bool)

(assert (=> d!1267027 m!4895849))

(assert (=> d!1267027 m!4895789))

(declare-fun m!4895851 () Bool)

(assert (=> b!4303388 m!4895851))

(assert (=> b!4303224 d!1267027))

(declare-fun d!1267029 () Bool)

(declare-fun e!2675431 () Bool)

(assert (=> d!1267029 e!2675431))

(declare-fun c!731803 () Bool)

(assert (=> d!1267029 (= c!731803 (contains!9955 (v!42042 (underlying!9376 thiss!42308)) lt!1524810))))

(declare-fun lt!1524981 () List!48154)

(declare-fun apply!10924 (LongMapFixedSize!9146 (_ BitVec 64)) List!48154)

(assert (=> d!1267029 (= lt!1524981 (apply!10924 (v!42041 (underlying!9375 (v!42042 (underlying!9376 thiss!42308)))) lt!1524810))))

(assert (=> d!1267029 (valid!3557 (v!42042 (underlying!9376 thiss!42308)))))

(assert (=> d!1267029 (= (apply!10922 (v!42042 (underlying!9376 thiss!42308)) lt!1524810) lt!1524981)))

(declare-fun b!4303394 () Bool)

(declare-fun get!15533 (Option!10181) List!48154)

(assert (=> b!4303394 (= e!2675431 (= lt!1524981 (get!15533 (getValueByKey!224 (toList!2267 (map!9997 (v!42042 (underlying!9376 thiss!42308)))) lt!1524810))))))

(declare-fun b!4303395 () Bool)

(declare-fun dynLambda!20385 (Int (_ BitVec 64)) List!48154)

(assert (=> b!4303395 (= e!2675431 (= lt!1524981 (dynLambda!20385 (defaultEntry!4958 (v!42041 (underlying!9375 (v!42042 (underlying!9376 thiss!42308))))) lt!1524810)))))

(assert (=> b!4303395 ((_ is LongMap!4573) (v!42042 (underlying!9376 thiss!42308)))))

(assert (= (and d!1267029 c!731803) b!4303394))

(assert (= (and d!1267029 (not c!731803)) b!4303395))

(declare-fun b_lambda!126453 () Bool)

(assert (=> (not b_lambda!126453) (not b!4303395)))

(declare-fun t!354930 () Bool)

(declare-fun tb!257259 () Bool)

(assert (=> (and b!4303219 (= (defaultEntry!4958 (v!42041 (underlying!9375 (v!42042 (underlying!9376 thiss!42308))))) (defaultEntry!4958 (v!42041 (underlying!9375 (v!42042 (underlying!9376 thiss!42308)))))) t!354930) tb!257259))

(assert (=> b!4303395 t!354930))

(declare-fun result!314584 () Bool)

(declare-fun b_and!339643 () Bool)

(assert (= b_and!339639 (and (=> t!354930 result!314584) b_and!339643)))

(declare-fun m!4895853 () Bool)

(assert (=> d!1267029 m!4895853))

(declare-fun m!4895855 () Bool)

(assert (=> d!1267029 m!4895855))

(assert (=> d!1267029 m!4895845))

(assert (=> b!4303394 m!4895615))

(declare-fun m!4895857 () Bool)

(assert (=> b!4303394 m!4895857))

(assert (=> b!4303394 m!4895857))

(declare-fun m!4895859 () Bool)

(assert (=> b!4303394 m!4895859))

(declare-fun m!4895861 () Bool)

(assert (=> b!4303395 m!4895861))

(assert (=> b!4303224 d!1267029))

(declare-fun d!1267031 () Bool)

(declare-fun hash!886 (Hashable!4489 K!9179) (_ BitVec 64))

(assert (=> d!1267031 (= (hash!881 (hashF!6533 thiss!42308) key!2048) (hash!886 (hashF!6533 thiss!42308) key!2048))))

(declare-fun bs!604206 () Bool)

(assert (= bs!604206 d!1267031))

(declare-fun m!4895863 () Bool)

(assert (=> bs!604206 m!4895863))

(assert (=> b!4303224 d!1267031))

(declare-fun d!1267033 () Bool)

(assert (=> d!1267033 (= (array_inv!5259 (_keys!4873 (v!42041 (underlying!9375 (v!42042 (underlying!9376 thiss!42308)))))) (bvsge (size!35370 (_keys!4873 (v!42041 (underlying!9375 (v!42042 (underlying!9376 thiss!42308)))))) #b00000000000000000000000000000000))))

(assert (=> b!4303219 d!1267033))

(declare-fun d!1267035 () Bool)

(assert (=> d!1267035 (= (array_inv!5260 (_values!4854 (v!42041 (underlying!9375 (v!42042 (underlying!9376 thiss!42308)))))) (bvsge (size!35371 (_values!4854 (v!42041 (underlying!9375 (v!42042 (underlying!9376 thiss!42308)))))) #b00000000000000000000000000000000))))

(assert (=> b!4303219 d!1267035))

(declare-fun bs!604207 () Bool)

(declare-fun b!4303400 () Bool)

(assert (= bs!604207 (and b!4303400 d!1267003)))

(declare-fun lambda!132239 () Int)

(assert (=> bs!604207 (= lambda!132239 lambda!132229)))

(declare-fun bs!604208 () Bool)

(assert (= bs!604208 (and b!4303400 d!1266993)))

(assert (=> bs!604208 (= lambda!132239 lambda!132225)))

(declare-fun bs!604209 () Bool)

(assert (= bs!604209 (and b!4303400 b!4303223)))

(assert (=> bs!604209 (= lambda!132239 lambda!132214)))

(declare-fun bs!604210 () Bool)

(assert (= bs!604210 (and b!4303400 d!1266999)))

(assert (=> bs!604210 (= lambda!132239 lambda!132228)))

(declare-fun bs!604211 () Bool)

(assert (= bs!604211 (and b!4303400 b!4303257)))

(assert (=> bs!604211 (= lambda!132239 lambda!132217)))

(declare-fun bs!604212 () Bool)

(assert (= bs!604212 (and b!4303400 d!1266987)))

(assert (=> bs!604212 (= lambda!132239 lambda!132220)))

(declare-fun bs!604213 () Bool)

(assert (= bs!604213 (and b!4303400 d!1267009)))

(assert (=> bs!604213 (not (= lambda!132239 lambda!132235))))

(declare-fun d!1267037 () Bool)

(declare-fun res!1763832 () Bool)

(declare-fun e!2675434 () Bool)

(assert (=> d!1267037 (=> (not res!1763832) (not e!2675434))))

(assert (=> d!1267037 (= res!1763832 (valid!3557 (v!42042 (underlying!9376 thiss!42308))))))

(assert (=> d!1267037 (= (valid!3556 thiss!42308) e!2675434)))

(declare-fun res!1763833 () Bool)

(assert (=> b!4303400 (=> (not res!1763833) (not e!2675434))))

(assert (=> b!4303400 (= res!1763833 (forall!8669 (toList!2267 (map!9997 (v!42042 (underlying!9376 thiss!42308)))) lambda!132239))))

(declare-fun b!4303401 () Bool)

(assert (=> b!4303401 (= e!2675434 (allKeysSameHashInMap!294 (map!9997 (v!42042 (underlying!9376 thiss!42308))) (hashF!6533 thiss!42308)))))

(assert (= (and d!1267037 res!1763832) b!4303400))

(assert (= (and b!4303400 res!1763833) b!4303401))

(assert (=> d!1267037 m!4895845))

(assert (=> b!4303400 m!4895615))

(declare-fun m!4895865 () Bool)

(assert (=> b!4303400 m!4895865))

(assert (=> b!4303401 m!4895615))

(assert (=> b!4303401 m!4895615))

(declare-fun m!4895867 () Bool)

(assert (=> b!4303401 m!4895867))

(assert (=> b!4303220 d!1267037))

(declare-fun bs!604214 () Bool)

(declare-fun d!1267039 () Bool)

(assert (= bs!604214 (and d!1267039 d!1267003)))

(declare-fun lambda!132242 () Int)

(assert (=> bs!604214 (not (= lambda!132242 lambda!132229))))

(declare-fun bs!604215 () Bool)

(assert (= bs!604215 (and d!1267039 d!1266993)))

(assert (=> bs!604215 (not (= lambda!132242 lambda!132225))))

(declare-fun bs!604216 () Bool)

(assert (= bs!604216 (and d!1267039 b!4303223)))

(assert (=> bs!604216 (not (= lambda!132242 lambda!132214))))

(declare-fun bs!604217 () Bool)

(assert (= bs!604217 (and d!1267039 b!4303257)))

(assert (=> bs!604217 (not (= lambda!132242 lambda!132217))))

(declare-fun bs!604218 () Bool)

(assert (= bs!604218 (and d!1267039 d!1266987)))

(assert (=> bs!604218 (not (= lambda!132242 lambda!132220))))

(declare-fun bs!604219 () Bool)

(assert (= bs!604219 (and d!1267039 d!1267009)))

(assert (=> bs!604219 (= lambda!132242 lambda!132235)))

(declare-fun bs!604220 () Bool)

(assert (= bs!604220 (and d!1267039 b!4303400)))

(assert (=> bs!604220 (not (= lambda!132242 lambda!132239))))

(declare-fun bs!604221 () Bool)

(assert (= bs!604221 (and d!1267039 d!1266999)))

(assert (=> bs!604221 (not (= lambda!132242 lambda!132228))))

(assert (=> d!1267039 true))

(assert (=> d!1267039 (= (allKeysSameHashInMap!294 lt!1524802 (hashF!6533 thiss!42308)) (forall!8669 (toList!2267 lt!1524802) lambda!132242))))

(declare-fun bs!604222 () Bool)

(assert (= bs!604222 d!1267039))

(declare-fun m!4895869 () Bool)

(assert (=> bs!604222 m!4895869))

(assert (=> b!4303226 d!1267039))

(declare-fun tp!1322375 () Bool)

(declare-fun b!4303406 () Bool)

(declare-fun e!2675437 () Bool)

(assert (=> b!4303406 (= e!2675437 (and tp_is_empty!23433 tp_is_empty!23431 tp!1322375))))

(assert (=> b!4303219 (= tp!1322366 e!2675437)))

(assert (= (and b!4303219 ((_ is Cons!48030) (zeroValue!4832 (v!42041 (underlying!9375 (v!42042 (underlying!9376 thiss!42308))))))) b!4303406))

(declare-fun tp!1322376 () Bool)

(declare-fun b!4303407 () Bool)

(declare-fun e!2675438 () Bool)

(assert (=> b!4303407 (= e!2675438 (and tp_is_empty!23433 tp_is_empty!23431 tp!1322376))))

(assert (=> b!4303219 (= tp!1322368 e!2675438)))

(assert (= (and b!4303219 ((_ is Cons!48030) (minValue!4832 (v!42041 (underlying!9375 (v!42042 (underlying!9376 thiss!42308))))))) b!4303407))

(declare-fun b!4303408 () Bool)

(declare-fun e!2675439 () Bool)

(declare-fun tp!1322377 () Bool)

(assert (=> b!4303408 (= e!2675439 (and tp_is_empty!23433 tp_is_empty!23431 tp!1322377))))

(assert (=> b!4303225 (= tp!1322367 e!2675439)))

(assert (= (and b!4303225 ((_ is Cons!48030) mapDefault!20497)) b!4303408))

(declare-fun b!4303415 () Bool)

(declare-fun e!2675444 () Bool)

(declare-fun tp!1322384 () Bool)

(assert (=> b!4303415 (= e!2675444 (and tp_is_empty!23433 tp_is_empty!23431 tp!1322384))))

(declare-fun b!4303416 () Bool)

(declare-fun tp!1322385 () Bool)

(declare-fun e!2675445 () Bool)

(assert (=> b!4303416 (= e!2675445 (and tp_is_empty!23433 tp_is_empty!23431 tp!1322385))))

(declare-fun condMapEmpty!20500 () Bool)

(declare-fun mapDefault!20500 () List!48154)

(assert (=> mapNonEmpty!20497 (= condMapEmpty!20500 (= mapRest!20497 ((as const (Array (_ BitVec 32) List!48154)) mapDefault!20500)))))

(declare-fun mapRes!20500 () Bool)

(assert (=> mapNonEmpty!20497 (= tp!1322369 (and e!2675445 mapRes!20500))))

(declare-fun mapNonEmpty!20500 () Bool)

(declare-fun tp!1322386 () Bool)

(assert (=> mapNonEmpty!20500 (= mapRes!20500 (and tp!1322386 e!2675444))))

(declare-fun mapRest!20500 () (Array (_ BitVec 32) List!48154))

(declare-fun mapKey!20500 () (_ BitVec 32))

(declare-fun mapValue!20500 () List!48154)

(assert (=> mapNonEmpty!20500 (= mapRest!20497 (store mapRest!20500 mapKey!20500 mapValue!20500))))

(declare-fun mapIsEmpty!20500 () Bool)

(assert (=> mapIsEmpty!20500 mapRes!20500))

(assert (= (and mapNonEmpty!20497 condMapEmpty!20500) mapIsEmpty!20500))

(assert (= (and mapNonEmpty!20497 (not condMapEmpty!20500)) mapNonEmpty!20500))

(assert (= (and mapNonEmpty!20500 ((_ is Cons!48030) mapValue!20500)) b!4303415))

(assert (= (and mapNonEmpty!20497 ((_ is Cons!48030) mapDefault!20500)) b!4303416))

(declare-fun m!4895871 () Bool)

(assert (=> mapNonEmpty!20500 m!4895871))

(declare-fun b!4303417 () Bool)

(declare-fun tp!1322387 () Bool)

(declare-fun e!2675446 () Bool)

(assert (=> b!4303417 (= e!2675446 (and tp_is_empty!23433 tp_is_empty!23431 tp!1322387))))

(assert (=> mapNonEmpty!20497 (= tp!1322370 e!2675446)))

(assert (= (and mapNonEmpty!20497 ((_ is Cons!48030) mapValue!20497)) b!4303417))

(declare-fun b_lambda!126455 () Bool)

(assert (= b_lambda!126451 (or b!4303223 b_lambda!126455)))

(declare-fun bs!604223 () Bool)

(declare-fun d!1267041 () Bool)

(assert (= bs!604223 (and d!1267041 b!4303223)))

(assert (=> bs!604223 (= (dynLambda!20384 lambda!132214 (h!53453 (toList!2267 lt!1524802))) (noDuplicateKeys!176 (_2!26356 (h!53453 (toList!2267 lt!1524802)))))))

(declare-fun m!4895873 () Bool)

(assert (=> bs!604223 m!4895873))

(assert (=> b!4303349 d!1267041))

(declare-fun b_lambda!126457 () Bool)

(assert (= b_lambda!126453 (or (and b!4303219 b_free!128251) b_lambda!126457)))

(check-sat (not bm!296723) (not b!4303317) (not d!1267029) (not b!4303296) (not b_next!128955) (not d!1267015) (not d!1266979) (not b!4303299) (not d!1267001) tp_is_empty!23433 (not bm!296720) (not b!4303388) (not b!4303401) (not b!4303337) (not d!1266993) (not d!1267039) (not d!1267009) (not b!4303341) (not bm!296727) (not tb!257259) (not b!4303261) (not bm!296724) (not d!1266977) (not b!4303297) (not b!4303400) (not b!4303369) b_and!339643 (not b!4303350) (not d!1267023) (not b!4303275) (not d!1267025) (not d!1267037) (not b!4303300) (not b!4303340) (not b!4303254) (not b!4303415) (not d!1266999) (not b!4303305) (not b!4303302) (not b!4303258) (not d!1266989) (not b!4303373) (not b!4303257) (not bm!296728) (not b!4303407) (not b!4303417) (not d!1267007) (not b!4303335) (not b!4303316) (not d!1267031) (not b!4303298) (not mapNonEmpty!20500) (not b!4303326) (not b!4303274) (not b!4303408) (not b_lambda!126457) (not bm!296722) (not bm!296733) (not b_next!128957) (not bm!296719) (not d!1267013) (not d!1267003) (not b!4303325) (not d!1267005) (not d!1266981) (not d!1267011) (not b!4303416) (not b!4303406) (not b!4303344) (not d!1266991) (not b!4303311) (not d!1266995) (not b!4303339) (not b!4303342) (not b!4303376) (not b!4303334) tp_is_empty!23431 (not b!4303324) b_and!339641 (not bs!604223) (not b_lambda!126455) (not d!1266997) (not b!4303394) (not b!4303269) (not b!4303338) (not b!4303310) (not b!4303371) (not bm!296721) (not d!1267027) (not b!4303322) (not b!4303377) (not d!1267019) (not b!4303295) (not bm!296734) (not d!1266987) (not b!4303255))
(check-sat b_and!339643 b_and!339641 (not b_next!128957) (not b_next!128955))
