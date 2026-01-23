; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!413664 () Bool)

(assert start!413664)

(declare-fun b!4306296 () Bool)

(declare-fun b_free!128427 () Bool)

(declare-fun b_next!129131 () Bool)

(assert (=> b!4306296 (= b_free!128427 (not b_next!129131))))

(declare-fun tp!1323415 () Bool)

(declare-fun b_and!339827 () Bool)

(assert (=> b!4306296 (= tp!1323415 b_and!339827)))

(declare-fun b!4306305 () Bool)

(declare-fun b_free!128429 () Bool)

(declare-fun b_next!129133 () Bool)

(assert (=> b!4306305 (= b_free!128429 (not b_next!129133))))

(declare-fun tp!1323414 () Bool)

(declare-fun b_and!339829 () Bool)

(assert (=> b!4306305 (= tp!1323414 b_and!339829)))

(declare-fun res!1765076 () Bool)

(declare-fun e!2677683 () Bool)

(assert (=> start!413664 (=> (not res!1765076) (not e!2677683))))

(declare-datatypes ((V!9491 0))(
  ( (V!9492 (val!15689 Int)) )
))
(declare-datatypes ((K!9289 0))(
  ( (K!9290 (val!15690 Int)) )
))
(declare-datatypes ((tuple2!46360 0))(
  ( (tuple2!46361 (_1!26459 K!9289) (_2!26459 V!9491)) )
))
(declare-datatypes ((List!48236 0))(
  ( (Nil!48112) (Cons!48112 (h!53539 tuple2!46360) (t!355021 List!48236)) )
))
(declare-datatypes ((array!16610 0))(
  ( (array!16611 (arr!7419 (Array (_ BitVec 32) (_ BitVec 64))) (size!35458 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!4533 0))(
  ( (HashableExt!4532 (__x!29876 Int)) )
))
(declare-datatypes ((array!16612 0))(
  ( (array!16613 (arr!7420 (Array (_ BitVec 32) List!48236)) (size!35459 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9234 0))(
  ( (LongMapFixedSize!9235 (defaultEntry!5002 Int) (mask!13154 (_ BitVec 32)) (extraKeys!4866 (_ BitVec 32)) (zeroValue!4876 List!48236) (minValue!4876 List!48236) (_size!9277 (_ BitVec 32)) (_keys!4917 array!16610) (_values!4898 array!16612) (_vacant!4678 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!18277 0))(
  ( (Cell!18278 (v!42170 LongMapFixedSize!9234)) )
))
(declare-datatypes ((MutLongMap!4617 0))(
  ( (LongMap!4617 (underlying!9463 Cell!18277)) (MutLongMapExt!4616 (__x!29877 Int)) )
))
(declare-datatypes ((Cell!18279 0))(
  ( (Cell!18280 (v!42171 MutLongMap!4617)) )
))
(declare-datatypes ((MutableMap!4523 0))(
  ( (MutableMapExt!4522 (__x!29878 Int)) (HashMap!4523 (underlying!9464 Cell!18279) (hashF!6607 Hashable!4533) (_size!9278 (_ BitVec 32)) (defaultValue!4694 Int)) )
))
(declare-fun thiss!42308 () MutableMap!4523)

(get-info :version)

(assert (=> start!413664 (= res!1765076 ((_ is HashMap!4523) thiss!42308))))

(assert (=> start!413664 e!2677683))

(declare-fun e!2677677 () Bool)

(assert (=> start!413664 e!2677677))

(declare-fun tp_is_empty!23589 () Bool)

(assert (=> start!413664 tp_is_empty!23589))

(declare-fun tp_is_empty!23591 () Bool)

(assert (=> start!413664 tp_is_empty!23591))

(declare-fun b!4306294 () Bool)

(declare-fun e!2677682 () Bool)

(declare-fun e!2677678 () Bool)

(assert (=> b!4306294 (= e!2677682 e!2677678)))

(declare-fun b!4306295 () Bool)

(declare-fun e!2677684 () Bool)

(declare-fun e!2677675 () Bool)

(declare-fun lt!1527123 () MutLongMap!4617)

(assert (=> b!4306295 (= e!2677684 (and e!2677675 ((_ is LongMap!4617) lt!1527123)))))

(assert (=> b!4306295 (= lt!1527123 (v!42171 (underlying!9464 thiss!42308)))))

(declare-fun mapNonEmpty!20653 () Bool)

(declare-fun mapRes!20653 () Bool)

(declare-fun tp!1323416 () Bool)

(declare-fun tp!1323412 () Bool)

(assert (=> mapNonEmpty!20653 (= mapRes!20653 (and tp!1323416 tp!1323412))))

(declare-fun mapValue!20653 () List!48236)

(declare-fun mapKey!20653 () (_ BitVec 32))

(declare-fun mapRest!20653 () (Array (_ BitVec 32) List!48236))

(assert (=> mapNonEmpty!20653 (= (arr!7420 (_values!4898 (v!42170 (underlying!9463 (v!42171 (underlying!9464 thiss!42308)))))) (store mapRest!20653 mapKey!20653 mapValue!20653))))

(declare-fun tp!1323413 () Bool)

(declare-fun tp!1323411 () Bool)

(declare-fun e!2677681 () Bool)

(declare-fun array_inv!5321 (array!16610) Bool)

(declare-fun array_inv!5322 (array!16612) Bool)

(assert (=> b!4306296 (= e!2677678 (and tp!1323415 tp!1323413 tp!1323411 (array_inv!5321 (_keys!4917 (v!42170 (underlying!9463 (v!42171 (underlying!9464 thiss!42308)))))) (array_inv!5322 (_values!4898 (v!42170 (underlying!9463 (v!42171 (underlying!9464 thiss!42308)))))) e!2677681))))

(declare-fun b!4306297 () Bool)

(declare-fun e!2677674 () List!48236)

(declare-fun lt!1527120 () (_ BitVec 64))

(declare-fun apply!10967 (MutLongMap!4617 (_ BitVec 64)) List!48236)

(assert (=> b!4306297 (= e!2677674 (apply!10967 (v!42171 (underlying!9464 thiss!42308)) lt!1527120))))

(declare-fun b!4306298 () Bool)

(declare-fun e!2677686 () Bool)

(declare-datatypes ((tuple2!46362 0))(
  ( (tuple2!46363 (_1!26460 (_ BitVec 64)) (_2!26460 List!48236)) )
))
(declare-datatypes ((List!48237 0))(
  ( (Nil!48113) (Cons!48113 (h!53540 tuple2!46362) (t!355022 List!48237)) )
))
(declare-datatypes ((ListLongMap!941 0))(
  ( (ListLongMap!942 (toList!2330 List!48237)) )
))
(declare-fun lt!1527114 () ListLongMap!941)

(declare-fun allKeysSameHashInMap!312 (ListLongMap!941 Hashable!4533) Bool)

(assert (=> b!4306298 (= e!2677686 (allKeysSameHashInMap!312 lt!1527114 (hashF!6607 thiss!42308)))))

(declare-fun b!4306299 () Bool)

(declare-fun e!2677680 () Bool)

(declare-datatypes ((tuple2!46364 0))(
  ( (tuple2!46365 (_1!26461 Bool) (_2!26461 MutLongMap!4617)) )
))
(declare-fun lt!1527117 () tuple2!46364)

(assert (=> b!4306299 (= e!2677680 (not ((_ is LongMap!4617) (_2!26461 lt!1527117))))))

(declare-fun lt!1527125 () ListLongMap!941)

(declare-fun lt!1527113 () tuple2!46360)

(declare-datatypes ((ListMap!1613 0))(
  ( (ListMap!1614 (toList!2331 List!48236)) )
))
(declare-fun eq!122 (ListMap!1613 ListMap!1613) Bool)

(declare-fun extractMap!306 (List!48237) ListMap!1613)

(declare-fun +!225 (ListMap!1613 tuple2!46360) ListMap!1613)

(assert (=> b!4306299 (eq!122 (extractMap!306 (toList!2330 lt!1527114)) (+!225 (extractMap!306 (toList!2330 lt!1527125)) lt!1527113))))

(declare-datatypes ((Unit!67124 0))(
  ( (Unit!67125) )
))
(declare-fun lt!1527122 () Unit!67124)

(declare-fun lt!1527119 () List!48236)

(declare-fun v!9179 () V!9491)

(declare-fun key!2048 () K!9289)

(declare-fun lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!40 (ListLongMap!941 (_ BitVec 64) List!48236 K!9289 V!9491 Hashable!4533) Unit!67124)

(assert (=> b!4306299 (= lt!1527122 (lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!40 lt!1527125 lt!1527120 lt!1527119 key!2048 v!9179 (hashF!6607 thiss!42308)))))

(assert (=> b!4306299 e!2677686))

(declare-fun res!1765074 () Bool)

(assert (=> b!4306299 (=> (not res!1765074) (not e!2677686))))

(declare-fun lambda!132496 () Int)

(declare-fun forall!8699 (List!48237 Int) Bool)

(assert (=> b!4306299 (= res!1765074 (forall!8699 (toList!2330 lt!1527114) lambda!132496))))

(declare-fun +!226 (ListLongMap!941 tuple2!46362) ListLongMap!941)

(assert (=> b!4306299 (= lt!1527114 (+!226 lt!1527125 (tuple2!46363 lt!1527120 lt!1527119)))))

(declare-fun lt!1527118 () Unit!67124)

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!129 (ListLongMap!941 (_ BitVec 64) List!48236 Hashable!4533) Unit!67124)

(assert (=> b!4306299 (= lt!1527118 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!129 lt!1527125 lt!1527120 lt!1527119 (hashF!6607 thiss!42308)))))

(declare-fun lt!1527124 () Unit!67124)

(declare-fun e!2677676 () Unit!67124)

(assert (=> b!4306299 (= lt!1527124 e!2677676)))

(declare-fun c!732127 () Bool)

(declare-fun lt!1527121 () List!48236)

(declare-fun isEmpty!28066 (List!48236) Bool)

(assert (=> b!4306299 (= c!732127 (not (isEmpty!28066 lt!1527121)))))

(declare-fun b!4306300 () Bool)

(declare-fun lt!1527112 () Unit!67124)

(assert (=> b!4306300 (= e!2677676 lt!1527112)))

(declare-fun lt!1527116 () Unit!67124)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!153 (List!48237 (_ BitVec 64) List!48236 Hashable!4533) Unit!67124)

(assert (=> b!4306300 (= lt!1527116 (lemmaInLongMapAllKeySameHashThenForTuple!153 (toList!2330 lt!1527125) lt!1527120 lt!1527121 (hashF!6607 thiss!42308)))))

(declare-fun allKeysSameHash!163 (List!48236 (_ BitVec 64) Hashable!4533) Bool)

(assert (=> b!4306300 (allKeysSameHash!163 lt!1527121 lt!1527120 (hashF!6607 thiss!42308))))

(declare-fun lemmaRemovePairForKeyPreservesHash!147 (List!48236 K!9289 (_ BitVec 64) Hashable!4533) Unit!67124)

(assert (=> b!4306300 (= lt!1527112 (lemmaRemovePairForKeyPreservesHash!147 lt!1527121 key!2048 lt!1527120 (hashF!6607 thiss!42308)))))

(declare-fun removePairForKey!187 (List!48236 K!9289) List!48236)

(assert (=> b!4306300 (allKeysSameHash!163 (removePairForKey!187 lt!1527121 key!2048) lt!1527120 (hashF!6607 thiss!42308))))

(declare-fun b!4306301 () Bool)

(assert (=> b!4306301 (= e!2677674 Nil!48112)))

(declare-fun mapIsEmpty!20653 () Bool)

(assert (=> mapIsEmpty!20653 mapRes!20653))

(declare-fun b!4306302 () Bool)

(declare-fun res!1765077 () Bool)

(assert (=> b!4306302 (=> (not res!1765077) (not e!2677683))))

(declare-fun valid!3601 (MutableMap!4523) Bool)

(assert (=> b!4306302 (= res!1765077 (valid!3601 thiss!42308))))

(declare-fun b!4306303 () Bool)

(declare-fun e!2677679 () Bool)

(assert (=> b!4306303 (= e!2677679 e!2677680)))

(declare-fun res!1765075 () Bool)

(assert (=> b!4306303 (=> (not res!1765075) (not e!2677680))))

(assert (=> b!4306303 (= res!1765075 (_1!26461 lt!1527117))))

(declare-fun update!395 (MutLongMap!4617 (_ BitVec 64) List!48236) tuple2!46364)

(assert (=> b!4306303 (= lt!1527117 (update!395 (v!42171 (underlying!9464 thiss!42308)) lt!1527120 lt!1527119))))

(assert (=> b!4306303 (= lt!1527119 (Cons!48112 lt!1527113 lt!1527121))))

(assert (=> b!4306303 (= lt!1527113 (tuple2!46361 key!2048 v!9179))))

(assert (=> b!4306303 (= lt!1527121 e!2677674)))

(declare-fun c!732128 () Bool)

(declare-fun contains!10054 (MutLongMap!4617 (_ BitVec 64)) Bool)

(assert (=> b!4306303 (= c!732128 (contains!10054 (v!42171 (underlying!9464 thiss!42308)) lt!1527120))))

(declare-fun hash!935 (Hashable!4533 K!9289) (_ BitVec 64))

(assert (=> b!4306303 (= lt!1527120 (hash!935 (hashF!6607 thiss!42308) key!2048))))

(declare-fun b!4306304 () Bool)

(assert (=> b!4306304 (= e!2677675 e!2677682)))

(assert (=> b!4306305 (= e!2677677 (and e!2677684 tp!1323414))))

(declare-fun b!4306306 () Bool)

(declare-fun tp!1323410 () Bool)

(assert (=> b!4306306 (= e!2677681 (and tp!1323410 mapRes!20653))))

(declare-fun condMapEmpty!20653 () Bool)

(declare-fun mapDefault!20653 () List!48236)

(assert (=> b!4306306 (= condMapEmpty!20653 (= (arr!7420 (_values!4898 (v!42170 (underlying!9463 (v!42171 (underlying!9464 thiss!42308)))))) ((as const (Array (_ BitVec 32) List!48236)) mapDefault!20653)))))

(declare-fun b!4306307 () Bool)

(assert (=> b!4306307 (= e!2677683 e!2677679)))

(declare-fun res!1765078 () Bool)

(assert (=> b!4306307 (=> (not res!1765078) (not e!2677679))))

(declare-fun contains!10055 (MutableMap!4523 K!9289) Bool)

(assert (=> b!4306307 (= res!1765078 (not (contains!10055 thiss!42308 key!2048)))))

(declare-fun map!10087 (MutLongMap!4617) ListLongMap!941)

(assert (=> b!4306307 (= lt!1527125 (map!10087 (v!42171 (underlying!9464 thiss!42308))))))

(declare-fun lt!1527115 () ListMap!1613)

(declare-fun map!10088 (MutableMap!4523) ListMap!1613)

(assert (=> b!4306307 (= lt!1527115 (map!10088 thiss!42308))))

(declare-fun b!4306308 () Bool)

(declare-fun Unit!67126 () Unit!67124)

(assert (=> b!4306308 (= e!2677676 Unit!67126)))

(assert (= (and start!413664 res!1765076) b!4306302))

(assert (= (and b!4306302 res!1765077) b!4306307))

(assert (= (and b!4306307 res!1765078) b!4306303))

(assert (= (and b!4306303 c!732128) b!4306297))

(assert (= (and b!4306303 (not c!732128)) b!4306301))

(assert (= (and b!4306303 res!1765075) b!4306299))

(assert (= (and b!4306299 c!732127) b!4306300))

(assert (= (and b!4306299 (not c!732127)) b!4306308))

(assert (= (and b!4306299 res!1765074) b!4306298))

(assert (= (and b!4306306 condMapEmpty!20653) mapIsEmpty!20653))

(assert (= (and b!4306306 (not condMapEmpty!20653)) mapNonEmpty!20653))

(assert (= b!4306296 b!4306306))

(assert (= b!4306294 b!4306296))

(assert (= b!4306304 b!4306294))

(assert (= (and b!4306295 ((_ is LongMap!4617) (v!42171 (underlying!9464 thiss!42308)))) b!4306304))

(assert (= b!4306305 b!4306295))

(assert (= (and start!413664 ((_ is HashMap!4523) thiss!42308)) b!4306305))

(declare-fun m!4898879 () Bool)

(assert (=> b!4306296 m!4898879))

(declare-fun m!4898881 () Bool)

(assert (=> b!4306296 m!4898881))

(declare-fun m!4898883 () Bool)

(assert (=> b!4306300 m!4898883))

(declare-fun m!4898885 () Bool)

(assert (=> b!4306300 m!4898885))

(declare-fun m!4898887 () Bool)

(assert (=> b!4306300 m!4898887))

(declare-fun m!4898889 () Bool)

(assert (=> b!4306300 m!4898889))

(declare-fun m!4898891 () Bool)

(assert (=> b!4306300 m!4898891))

(assert (=> b!4306300 m!4898885))

(declare-fun m!4898893 () Bool)

(assert (=> mapNonEmpty!20653 m!4898893))

(declare-fun m!4898895 () Bool)

(assert (=> b!4306298 m!4898895))

(declare-fun m!4898897 () Bool)

(assert (=> b!4306303 m!4898897))

(declare-fun m!4898899 () Bool)

(assert (=> b!4306303 m!4898899))

(declare-fun m!4898901 () Bool)

(assert (=> b!4306303 m!4898901))

(declare-fun m!4898903 () Bool)

(assert (=> b!4306299 m!4898903))

(declare-fun m!4898905 () Bool)

(assert (=> b!4306299 m!4898905))

(declare-fun m!4898907 () Bool)

(assert (=> b!4306299 m!4898907))

(declare-fun m!4898909 () Bool)

(assert (=> b!4306299 m!4898909))

(declare-fun m!4898911 () Bool)

(assert (=> b!4306299 m!4898911))

(assert (=> b!4306299 m!4898907))

(declare-fun m!4898913 () Bool)

(assert (=> b!4306299 m!4898913))

(declare-fun m!4898915 () Bool)

(assert (=> b!4306299 m!4898915))

(declare-fun m!4898917 () Bool)

(assert (=> b!4306299 m!4898917))

(assert (=> b!4306299 m!4898909))

(assert (=> b!4306299 m!4898913))

(declare-fun m!4898919 () Bool)

(assert (=> b!4306299 m!4898919))

(declare-fun m!4898921 () Bool)

(assert (=> b!4306297 m!4898921))

(declare-fun m!4898923 () Bool)

(assert (=> b!4306302 m!4898923))

(declare-fun m!4898925 () Bool)

(assert (=> b!4306307 m!4898925))

(declare-fun m!4898927 () Bool)

(assert (=> b!4306307 m!4898927))

(declare-fun m!4898929 () Bool)

(assert (=> b!4306307 m!4898929))

(check-sat b_and!339829 (not b_next!129131) (not b!4306299) b_and!339827 tp_is_empty!23589 (not b!4306300) (not b!4306306) (not b!4306296) (not mapNonEmpty!20653) (not b_next!129133) (not b!4306307) (not b!4306303) (not b!4306297) (not b!4306302) tp_is_empty!23591 (not b!4306298))
(check-sat b_and!339827 b_and!339829 (not b_next!129133) (not b_next!129131))
(get-model)

(declare-fun b!4306327 () Bool)

(declare-fun e!2677698 () Bool)

(declare-fun e!2677701 () Bool)

(assert (=> b!4306327 (= e!2677698 e!2677701)))

(declare-fun c!732136 () Bool)

(declare-fun lt!1527136 () tuple2!46364)

(assert (=> b!4306327 (= c!732136 (_1!26461 lt!1527136))))

(declare-fun b!4306328 () Bool)

(declare-fun e!2677699 () tuple2!46364)

(declare-fun lt!1527137 () tuple2!46364)

(assert (=> b!4306328 (= e!2677699 (tuple2!46365 (_1!26461 lt!1527137) (_2!26461 lt!1527137)))))

(declare-fun repack!45 (MutLongMap!4617) tuple2!46364)

(assert (=> b!4306328 (= lt!1527137 (repack!45 (v!42171 (underlying!9464 thiss!42308))))))

(declare-fun b!4306329 () Bool)

(assert (=> b!4306329 (= e!2677699 (tuple2!46365 true (v!42171 (underlying!9464 thiss!42308))))))

(declare-fun b!4306330 () Bool)

(declare-fun e!2677700 () Bool)

(declare-fun call!296911 () ListLongMap!941)

(declare-fun call!296910 () ListLongMap!941)

(assert (=> b!4306330 (= e!2677700 (= call!296910 (+!226 call!296911 (tuple2!46363 lt!1527120 lt!1527119))))))

(declare-fun b!4306331 () Bool)

(declare-fun e!2677697 () tuple2!46364)

(declare-datatypes ((tuple2!46366 0))(
  ( (tuple2!46367 (_1!26462 Bool) (_2!26462 LongMapFixedSize!9234)) )
))
(declare-fun lt!1527135 () tuple2!46366)

(assert (=> b!4306331 (= e!2677697 (tuple2!46365 (_1!26462 lt!1527135) (LongMap!4617 (Cell!18278 (_2!26462 lt!1527135)))))))

(declare-fun lt!1527134 () tuple2!46364)

(declare-fun update!396 (LongMapFixedSize!9234 (_ BitVec 64) List!48236) tuple2!46366)

(assert (=> b!4306331 (= lt!1527135 (update!396 (v!42170 (underlying!9463 (_2!26461 lt!1527134))) lt!1527120 lt!1527119))))

(declare-fun d!1267407 () Bool)

(assert (=> d!1267407 e!2677698))

(declare-fun res!1765085 () Bool)

(assert (=> d!1267407 (=> (not res!1765085) (not e!2677698))))

(assert (=> d!1267407 (= res!1765085 ((_ is LongMap!4617) (_2!26461 lt!1527136)))))

(assert (=> d!1267407 (= lt!1527136 e!2677697)))

(declare-fun c!732137 () Bool)

(assert (=> d!1267407 (= c!732137 (_1!26461 lt!1527134))))

(assert (=> d!1267407 (= lt!1527134 e!2677699)))

(declare-fun c!732135 () Bool)

(declare-fun imbalanced!41 (MutLongMap!4617) Bool)

(assert (=> d!1267407 (= c!732135 (imbalanced!41 (v!42171 (underlying!9464 thiss!42308))))))

(declare-fun valid!3602 (MutLongMap!4617) Bool)

(assert (=> d!1267407 (valid!3602 (v!42171 (underlying!9464 thiss!42308)))))

(assert (=> d!1267407 (= (update!395 (v!42171 (underlying!9464 thiss!42308)) lt!1527120 lt!1527119) lt!1527136)))

(declare-fun b!4306332 () Bool)

(assert (=> b!4306332 (= e!2677697 (tuple2!46365 false (_2!26461 lt!1527134)))))

(declare-fun bm!296905 () Bool)

(assert (=> bm!296905 (= call!296911 (map!10087 (v!42171 (underlying!9464 thiss!42308))))))

(declare-fun b!4306333 () Bool)

(assert (=> b!4306333 (= e!2677701 e!2677700)))

(declare-fun res!1765086 () Bool)

(declare-fun contains!10056 (ListLongMap!941 (_ BitVec 64)) Bool)

(assert (=> b!4306333 (= res!1765086 (contains!10056 call!296910 lt!1527120))))

(assert (=> b!4306333 (=> (not res!1765086) (not e!2677700))))

(declare-fun b!4306334 () Bool)

(assert (=> b!4306334 (= e!2677701 (= call!296910 call!296911))))

(declare-fun b!4306335 () Bool)

(declare-fun res!1765087 () Bool)

(assert (=> b!4306335 (=> (not res!1765087) (not e!2677698))))

(assert (=> b!4306335 (= res!1765087 (valid!3602 (_2!26461 lt!1527136)))))

(declare-fun bm!296906 () Bool)

(assert (=> bm!296906 (= call!296910 (map!10087 (_2!26461 lt!1527136)))))

(assert (= (and d!1267407 c!732135) b!4306328))

(assert (= (and d!1267407 (not c!732135)) b!4306329))

(assert (= (and d!1267407 c!732137) b!4306331))

(assert (= (and d!1267407 (not c!732137)) b!4306332))

(assert (= (and d!1267407 res!1765085) b!4306335))

(assert (= (and b!4306335 res!1765087) b!4306327))

(assert (= (and b!4306327 c!732136) b!4306333))

(assert (= (and b!4306327 (not c!732136)) b!4306334))

(assert (= (and b!4306333 res!1765086) b!4306330))

(assert (= (or b!4306333 b!4306330 b!4306334) bm!296906))

(assert (= (or b!4306330 b!4306334) bm!296905))

(declare-fun m!4898931 () Bool)

(assert (=> bm!296906 m!4898931))

(declare-fun m!4898933 () Bool)

(assert (=> b!4306330 m!4898933))

(assert (=> bm!296905 m!4898927))

(declare-fun m!4898935 () Bool)

(assert (=> b!4306335 m!4898935))

(declare-fun m!4898937 () Bool)

(assert (=> b!4306331 m!4898937))

(declare-fun m!4898939 () Bool)

(assert (=> b!4306328 m!4898939))

(declare-fun m!4898941 () Bool)

(assert (=> d!1267407 m!4898941))

(declare-fun m!4898943 () Bool)

(assert (=> d!1267407 m!4898943))

(declare-fun m!4898945 () Bool)

(assert (=> b!4306333 m!4898945))

(assert (=> b!4306303 d!1267407))

(declare-fun d!1267409 () Bool)

(declare-fun lt!1527140 () Bool)

(assert (=> d!1267409 (= lt!1527140 (contains!10056 (map!10087 (v!42171 (underlying!9464 thiss!42308))) lt!1527120))))

(declare-fun contains!10057 (LongMapFixedSize!9234 (_ BitVec 64)) Bool)

(assert (=> d!1267409 (= lt!1527140 (contains!10057 (v!42170 (underlying!9463 (v!42171 (underlying!9464 thiss!42308)))) lt!1527120))))

(assert (=> d!1267409 (valid!3602 (v!42171 (underlying!9464 thiss!42308)))))

(assert (=> d!1267409 (= (contains!10054 (v!42171 (underlying!9464 thiss!42308)) lt!1527120) lt!1527140)))

(declare-fun bs!604516 () Bool)

(assert (= bs!604516 d!1267409))

(assert (=> bs!604516 m!4898927))

(assert (=> bs!604516 m!4898927))

(declare-fun m!4898947 () Bool)

(assert (=> bs!604516 m!4898947))

(declare-fun m!4898949 () Bool)

(assert (=> bs!604516 m!4898949))

(assert (=> bs!604516 m!4898943))

(assert (=> b!4306303 d!1267409))

(declare-fun d!1267411 () Bool)

(declare-fun hash!940 (Hashable!4533 K!9289) (_ BitVec 64))

(assert (=> d!1267411 (= (hash!935 (hashF!6607 thiss!42308) key!2048) (hash!940 (hashF!6607 thiss!42308) key!2048))))

(declare-fun bs!604517 () Bool)

(assert (= bs!604517 d!1267411))

(declare-fun m!4898951 () Bool)

(assert (=> bs!604517 m!4898951))

(assert (=> b!4306303 d!1267411))

(declare-fun bs!604518 () Bool)

(declare-fun d!1267413 () Bool)

(assert (= bs!604518 (and d!1267413 b!4306299)))

(declare-fun lambda!132499 () Int)

(assert (=> bs!604518 (= lambda!132499 lambda!132496)))

(declare-fun lt!1527143 () ListMap!1613)

(declare-fun invariantList!562 (List!48236) Bool)

(assert (=> d!1267413 (invariantList!562 (toList!2331 lt!1527143))))

(declare-fun e!2677704 () ListMap!1613)

(assert (=> d!1267413 (= lt!1527143 e!2677704)))

(declare-fun c!732140 () Bool)

(assert (=> d!1267413 (= c!732140 ((_ is Cons!48113) (toList!2330 lt!1527114)))))

(assert (=> d!1267413 (forall!8699 (toList!2330 lt!1527114) lambda!132499)))

(assert (=> d!1267413 (= (extractMap!306 (toList!2330 lt!1527114)) lt!1527143)))

(declare-fun b!4306340 () Bool)

(declare-fun addToMapMapFromBucket!30 (List!48236 ListMap!1613) ListMap!1613)

(assert (=> b!4306340 (= e!2677704 (addToMapMapFromBucket!30 (_2!26460 (h!53540 (toList!2330 lt!1527114))) (extractMap!306 (t!355022 (toList!2330 lt!1527114)))))))

(declare-fun b!4306341 () Bool)

(assert (=> b!4306341 (= e!2677704 (ListMap!1614 Nil!48112))))

(assert (= (and d!1267413 c!732140) b!4306340))

(assert (= (and d!1267413 (not c!732140)) b!4306341))

(declare-fun m!4898953 () Bool)

(assert (=> d!1267413 m!4898953))

(declare-fun m!4898955 () Bool)

(assert (=> d!1267413 m!4898955))

(declare-fun m!4898957 () Bool)

(assert (=> b!4306340 m!4898957))

(assert (=> b!4306340 m!4898957))

(declare-fun m!4898959 () Bool)

(assert (=> b!4306340 m!4898959))

(assert (=> b!4306299 d!1267413))

(declare-fun bs!604519 () Bool)

(declare-fun d!1267415 () Bool)

(assert (= bs!604519 (and d!1267415 b!4306299)))

(declare-fun lambda!132500 () Int)

(assert (=> bs!604519 (= lambda!132500 lambda!132496)))

(declare-fun bs!604520 () Bool)

(assert (= bs!604520 (and d!1267415 d!1267413)))

(assert (=> bs!604520 (= lambda!132500 lambda!132499)))

(declare-fun lt!1527144 () ListMap!1613)

(assert (=> d!1267415 (invariantList!562 (toList!2331 lt!1527144))))

(declare-fun e!2677705 () ListMap!1613)

(assert (=> d!1267415 (= lt!1527144 e!2677705)))

(declare-fun c!732141 () Bool)

(assert (=> d!1267415 (= c!732141 ((_ is Cons!48113) (toList!2330 lt!1527125)))))

(assert (=> d!1267415 (forall!8699 (toList!2330 lt!1527125) lambda!132500)))

(assert (=> d!1267415 (= (extractMap!306 (toList!2330 lt!1527125)) lt!1527144)))

(declare-fun b!4306342 () Bool)

(assert (=> b!4306342 (= e!2677705 (addToMapMapFromBucket!30 (_2!26460 (h!53540 (toList!2330 lt!1527125))) (extractMap!306 (t!355022 (toList!2330 lt!1527125)))))))

(declare-fun b!4306343 () Bool)

(assert (=> b!4306343 (= e!2677705 (ListMap!1614 Nil!48112))))

(assert (= (and d!1267415 c!732141) b!4306342))

(assert (= (and d!1267415 (not c!732141)) b!4306343))

(declare-fun m!4898961 () Bool)

(assert (=> d!1267415 m!4898961))

(declare-fun m!4898963 () Bool)

(assert (=> d!1267415 m!4898963))

(declare-fun m!4898965 () Bool)

(assert (=> b!4306342 m!4898965))

(assert (=> b!4306342 m!4898965))

(declare-fun m!4898967 () Bool)

(assert (=> b!4306342 m!4898967))

(assert (=> b!4306299 d!1267415))

(declare-fun d!1267417 () Bool)

(declare-fun res!1765092 () Bool)

(declare-fun e!2677710 () Bool)

(assert (=> d!1267417 (=> res!1765092 e!2677710)))

(assert (=> d!1267417 (= res!1765092 ((_ is Nil!48113) (toList!2330 lt!1527114)))))

(assert (=> d!1267417 (= (forall!8699 (toList!2330 lt!1527114) lambda!132496) e!2677710)))

(declare-fun b!4306348 () Bool)

(declare-fun e!2677711 () Bool)

(assert (=> b!4306348 (= e!2677710 e!2677711)))

(declare-fun res!1765093 () Bool)

(assert (=> b!4306348 (=> (not res!1765093) (not e!2677711))))

(declare-fun dynLambda!20407 (Int tuple2!46362) Bool)

(assert (=> b!4306348 (= res!1765093 (dynLambda!20407 lambda!132496 (h!53540 (toList!2330 lt!1527114))))))

(declare-fun b!4306349 () Bool)

(assert (=> b!4306349 (= e!2677711 (forall!8699 (t!355022 (toList!2330 lt!1527114)) lambda!132496))))

(assert (= (and d!1267417 (not res!1765092)) b!4306348))

(assert (= (and b!4306348 res!1765093) b!4306349))

(declare-fun b_lambda!126507 () Bool)

(assert (=> (not b_lambda!126507) (not b!4306348)))

(declare-fun m!4898969 () Bool)

(assert (=> b!4306348 m!4898969))

(declare-fun m!4898971 () Bool)

(assert (=> b!4306349 m!4898971))

(assert (=> b!4306299 d!1267417))

(declare-fun d!1267419 () Bool)

(assert (=> d!1267419 (= (isEmpty!28066 lt!1527121) ((_ is Nil!48112) lt!1527121))))

(assert (=> b!4306299 d!1267419))

(declare-fun bs!604521 () Bool)

(declare-fun d!1267421 () Bool)

(assert (= bs!604521 (and d!1267421 b!4306299)))

(declare-fun lambda!132505 () Int)

(assert (=> bs!604521 (= lambda!132505 lambda!132496)))

(declare-fun bs!604522 () Bool)

(assert (= bs!604522 (and d!1267421 d!1267413)))

(assert (=> bs!604522 (= lambda!132505 lambda!132499)))

(declare-fun bs!604523 () Bool)

(assert (= bs!604523 (and d!1267421 d!1267415)))

(assert (=> bs!604523 (= lambda!132505 lambda!132500)))

(declare-fun e!2677714 () Bool)

(assert (=> d!1267421 e!2677714))

(declare-fun res!1765096 () Bool)

(assert (=> d!1267421 (=> (not res!1765096) (not e!2677714))))

(declare-fun lt!1527150 () ListLongMap!941)

(assert (=> d!1267421 (= res!1765096 (forall!8699 (toList!2330 lt!1527150) lambda!132505))))

(assert (=> d!1267421 (= lt!1527150 (+!226 lt!1527125 (tuple2!46363 lt!1527120 lt!1527119)))))

(declare-fun lt!1527149 () Unit!67124)

(declare-fun choose!26219 (ListLongMap!941 (_ BitVec 64) List!48236 Hashable!4533) Unit!67124)

(assert (=> d!1267421 (= lt!1527149 (choose!26219 lt!1527125 lt!1527120 lt!1527119 (hashF!6607 thiss!42308)))))

(assert (=> d!1267421 (forall!8699 (toList!2330 lt!1527125) lambda!132505)))

(assert (=> d!1267421 (= (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!129 lt!1527125 lt!1527120 lt!1527119 (hashF!6607 thiss!42308)) lt!1527149)))

(declare-fun b!4306352 () Bool)

(assert (=> b!4306352 (= e!2677714 (allKeysSameHashInMap!312 lt!1527150 (hashF!6607 thiss!42308)))))

(assert (= (and d!1267421 res!1765096) b!4306352))

(declare-fun m!4898973 () Bool)

(assert (=> d!1267421 m!4898973))

(assert (=> d!1267421 m!4898919))

(declare-fun m!4898975 () Bool)

(assert (=> d!1267421 m!4898975))

(declare-fun m!4898977 () Bool)

(assert (=> d!1267421 m!4898977))

(declare-fun m!4898979 () Bool)

(assert (=> b!4306352 m!4898979))

(assert (=> b!4306299 d!1267421))

(declare-fun d!1267423 () Bool)

(declare-fun e!2677717 () Bool)

(assert (=> d!1267423 e!2677717))

(declare-fun res!1765102 () Bool)

(assert (=> d!1267423 (=> (not res!1765102) (not e!2677717))))

(declare-fun lt!1527162 () ListMap!1613)

(declare-fun contains!10058 (ListMap!1613 K!9289) Bool)

(assert (=> d!1267423 (= res!1765102 (contains!10058 lt!1527162 (_1!26459 lt!1527113)))))

(declare-fun lt!1527159 () List!48236)

(assert (=> d!1267423 (= lt!1527162 (ListMap!1614 lt!1527159))))

(declare-fun lt!1527160 () Unit!67124)

(declare-fun lt!1527161 () Unit!67124)

(assert (=> d!1267423 (= lt!1527160 lt!1527161)))

(declare-datatypes ((Option!10201 0))(
  ( (None!10200) (Some!10200 (v!42176 V!9491)) )
))
(declare-fun getValueByKey!237 (List!48236 K!9289) Option!10201)

(assert (=> d!1267423 (= (getValueByKey!237 lt!1527159 (_1!26459 lt!1527113)) (Some!10200 (_2!26459 lt!1527113)))))

(declare-fun lemmaContainsTupThenGetReturnValue!60 (List!48236 K!9289 V!9491) Unit!67124)

(assert (=> d!1267423 (= lt!1527161 (lemmaContainsTupThenGetReturnValue!60 lt!1527159 (_1!26459 lt!1527113) (_2!26459 lt!1527113)))))

(declare-fun insertNoDuplicatedKeys!38 (List!48236 K!9289 V!9491) List!48236)

(assert (=> d!1267423 (= lt!1527159 (insertNoDuplicatedKeys!38 (toList!2331 (extractMap!306 (toList!2330 lt!1527125))) (_1!26459 lt!1527113) (_2!26459 lt!1527113)))))

(assert (=> d!1267423 (= (+!225 (extractMap!306 (toList!2330 lt!1527125)) lt!1527113) lt!1527162)))

(declare-fun b!4306357 () Bool)

(declare-fun res!1765101 () Bool)

(assert (=> b!4306357 (=> (not res!1765101) (not e!2677717))))

(assert (=> b!4306357 (= res!1765101 (= (getValueByKey!237 (toList!2331 lt!1527162) (_1!26459 lt!1527113)) (Some!10200 (_2!26459 lt!1527113))))))

(declare-fun b!4306358 () Bool)

(declare-fun contains!10059 (List!48236 tuple2!46360) Bool)

(assert (=> b!4306358 (= e!2677717 (contains!10059 (toList!2331 lt!1527162) lt!1527113))))

(assert (= (and d!1267423 res!1765102) b!4306357))

(assert (= (and b!4306357 res!1765101) b!4306358))

(declare-fun m!4898981 () Bool)

(assert (=> d!1267423 m!4898981))

(declare-fun m!4898983 () Bool)

(assert (=> d!1267423 m!4898983))

(declare-fun m!4898985 () Bool)

(assert (=> d!1267423 m!4898985))

(declare-fun m!4898987 () Bool)

(assert (=> d!1267423 m!4898987))

(declare-fun m!4898989 () Bool)

(assert (=> b!4306357 m!4898989))

(declare-fun m!4898991 () Bool)

(assert (=> b!4306358 m!4898991))

(assert (=> b!4306299 d!1267423))

(declare-fun bs!604524 () Bool)

(declare-fun d!1267425 () Bool)

(assert (= bs!604524 (and d!1267425 b!4306299)))

(declare-fun lambda!132508 () Int)

(assert (=> bs!604524 (= lambda!132508 lambda!132496)))

(declare-fun bs!604525 () Bool)

(assert (= bs!604525 (and d!1267425 d!1267413)))

(assert (=> bs!604525 (= lambda!132508 lambda!132499)))

(declare-fun bs!604526 () Bool)

(assert (= bs!604526 (and d!1267425 d!1267415)))

(assert (=> bs!604526 (= lambda!132508 lambda!132500)))

(declare-fun bs!604527 () Bool)

(assert (= bs!604527 (and d!1267425 d!1267421)))

(assert (=> bs!604527 (= lambda!132508 lambda!132505)))

(assert (=> d!1267425 (eq!122 (extractMap!306 (toList!2330 (+!226 lt!1527125 (tuple2!46363 lt!1527120 lt!1527119)))) (+!225 (extractMap!306 (toList!2330 lt!1527125)) (tuple2!46361 key!2048 v!9179)))))

(declare-fun lt!1527165 () Unit!67124)

(declare-fun choose!26220 (ListLongMap!941 (_ BitVec 64) List!48236 K!9289 V!9491 Hashable!4533) Unit!67124)

(assert (=> d!1267425 (= lt!1527165 (choose!26220 lt!1527125 lt!1527120 lt!1527119 key!2048 v!9179 (hashF!6607 thiss!42308)))))

(assert (=> d!1267425 (forall!8699 (toList!2330 lt!1527125) lambda!132508)))

(assert (=> d!1267425 (= (lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!40 lt!1527125 lt!1527120 lt!1527119 key!2048 v!9179 (hashF!6607 thiss!42308)) lt!1527165)))

(declare-fun bs!604528 () Bool)

(assert (= bs!604528 d!1267425))

(declare-fun m!4898993 () Bool)

(assert (=> bs!604528 m!4898993))

(assert (=> bs!604528 m!4898909))

(declare-fun m!4898995 () Bool)

(assert (=> bs!604528 m!4898995))

(declare-fun m!4898997 () Bool)

(assert (=> bs!604528 m!4898997))

(declare-fun m!4898999 () Bool)

(assert (=> bs!604528 m!4898999))

(assert (=> bs!604528 m!4898909))

(assert (=> bs!604528 m!4898919))

(assert (=> bs!604528 m!4898993))

(assert (=> bs!604528 m!4898995))

(declare-fun m!4899001 () Bool)

(assert (=> bs!604528 m!4899001))

(assert (=> b!4306299 d!1267425))

(declare-fun d!1267427 () Bool)

(declare-fun e!2677720 () Bool)

(assert (=> d!1267427 e!2677720))

(declare-fun res!1765108 () Bool)

(assert (=> d!1267427 (=> (not res!1765108) (not e!2677720))))

(declare-fun lt!1527175 () ListLongMap!941)

(assert (=> d!1267427 (= res!1765108 (contains!10056 lt!1527175 (_1!26460 (tuple2!46363 lt!1527120 lt!1527119))))))

(declare-fun lt!1527176 () List!48237)

(assert (=> d!1267427 (= lt!1527175 (ListLongMap!942 lt!1527176))))

(declare-fun lt!1527174 () Unit!67124)

(declare-fun lt!1527177 () Unit!67124)

(assert (=> d!1267427 (= lt!1527174 lt!1527177)))

(declare-datatypes ((Option!10202 0))(
  ( (None!10201) (Some!10201 (v!42177 List!48236)) )
))
(declare-fun getValueByKey!238 (List!48237 (_ BitVec 64)) Option!10202)

(assert (=> d!1267427 (= (getValueByKey!238 lt!1527176 (_1!26460 (tuple2!46363 lt!1527120 lt!1527119))) (Some!10201 (_2!26460 (tuple2!46363 lt!1527120 lt!1527119))))))

(declare-fun lemmaContainsTupThenGetReturnValue!61 (List!48237 (_ BitVec 64) List!48236) Unit!67124)

(assert (=> d!1267427 (= lt!1527177 (lemmaContainsTupThenGetReturnValue!61 lt!1527176 (_1!26460 (tuple2!46363 lt!1527120 lt!1527119)) (_2!26460 (tuple2!46363 lt!1527120 lt!1527119))))))

(declare-fun insertStrictlySorted!31 (List!48237 (_ BitVec 64) List!48236) List!48237)

(assert (=> d!1267427 (= lt!1527176 (insertStrictlySorted!31 (toList!2330 lt!1527125) (_1!26460 (tuple2!46363 lt!1527120 lt!1527119)) (_2!26460 (tuple2!46363 lt!1527120 lt!1527119))))))

(assert (=> d!1267427 (= (+!226 lt!1527125 (tuple2!46363 lt!1527120 lt!1527119)) lt!1527175)))

(declare-fun b!4306363 () Bool)

(declare-fun res!1765107 () Bool)

(assert (=> b!4306363 (=> (not res!1765107) (not e!2677720))))

(assert (=> b!4306363 (= res!1765107 (= (getValueByKey!238 (toList!2330 lt!1527175) (_1!26460 (tuple2!46363 lt!1527120 lt!1527119))) (Some!10201 (_2!26460 (tuple2!46363 lt!1527120 lt!1527119)))))))

(declare-fun b!4306364 () Bool)

(declare-fun contains!10060 (List!48237 tuple2!46362) Bool)

(assert (=> b!4306364 (= e!2677720 (contains!10060 (toList!2330 lt!1527175) (tuple2!46363 lt!1527120 lt!1527119)))))

(assert (= (and d!1267427 res!1765108) b!4306363))

(assert (= (and b!4306363 res!1765107) b!4306364))

(declare-fun m!4899003 () Bool)

(assert (=> d!1267427 m!4899003))

(declare-fun m!4899005 () Bool)

(assert (=> d!1267427 m!4899005))

(declare-fun m!4899007 () Bool)

(assert (=> d!1267427 m!4899007))

(declare-fun m!4899009 () Bool)

(assert (=> d!1267427 m!4899009))

(declare-fun m!4899011 () Bool)

(assert (=> b!4306363 m!4899011))

(declare-fun m!4899013 () Bool)

(assert (=> b!4306364 m!4899013))

(assert (=> b!4306299 d!1267427))

(declare-fun d!1267429 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7547 (List!48236) (InoxSet tuple2!46360))

(assert (=> d!1267429 (= (eq!122 (extractMap!306 (toList!2330 lt!1527114)) (+!225 (extractMap!306 (toList!2330 lt!1527125)) lt!1527113)) (= (content!7547 (toList!2331 (extractMap!306 (toList!2330 lt!1527114)))) (content!7547 (toList!2331 (+!225 (extractMap!306 (toList!2330 lt!1527125)) lt!1527113)))))))

(declare-fun bs!604529 () Bool)

(assert (= bs!604529 d!1267429))

(declare-fun m!4899015 () Bool)

(assert (=> bs!604529 m!4899015))

(declare-fun m!4899017 () Bool)

(assert (=> bs!604529 m!4899017))

(assert (=> b!4306299 d!1267429))

(declare-fun bs!604530 () Bool)

(declare-fun d!1267431 () Bool)

(assert (= bs!604530 (and d!1267431 d!1267421)))

(declare-fun lambda!132511 () Int)

(assert (=> bs!604530 (not (= lambda!132511 lambda!132505))))

(declare-fun bs!604531 () Bool)

(assert (= bs!604531 (and d!1267431 b!4306299)))

(assert (=> bs!604531 (not (= lambda!132511 lambda!132496))))

(declare-fun bs!604532 () Bool)

(assert (= bs!604532 (and d!1267431 d!1267425)))

(assert (=> bs!604532 (not (= lambda!132511 lambda!132508))))

(declare-fun bs!604533 () Bool)

(assert (= bs!604533 (and d!1267431 d!1267415)))

(assert (=> bs!604533 (not (= lambda!132511 lambda!132500))))

(declare-fun bs!604534 () Bool)

(assert (= bs!604534 (and d!1267431 d!1267413)))

(assert (=> bs!604534 (not (= lambda!132511 lambda!132499))))

(assert (=> d!1267431 true))

(assert (=> d!1267431 (= (allKeysSameHashInMap!312 lt!1527114 (hashF!6607 thiss!42308)) (forall!8699 (toList!2330 lt!1527114) lambda!132511))))

(declare-fun bs!604535 () Bool)

(assert (= bs!604535 d!1267431))

(declare-fun m!4899019 () Bool)

(assert (=> bs!604535 m!4899019))

(assert (=> b!4306298 d!1267431))

(declare-fun d!1267433 () Bool)

(assert (=> d!1267433 true))

(assert (=> d!1267433 true))

(declare-fun lambda!132514 () Int)

(declare-fun forall!8700 (List!48236 Int) Bool)

(assert (=> d!1267433 (= (allKeysSameHash!163 lt!1527121 lt!1527120 (hashF!6607 thiss!42308)) (forall!8700 lt!1527121 lambda!132514))))

(declare-fun bs!604536 () Bool)

(assert (= bs!604536 d!1267433))

(declare-fun m!4899021 () Bool)

(assert (=> bs!604536 m!4899021))

(assert (=> b!4306300 d!1267433))

(declare-fun bs!604537 () Bool)

(declare-fun d!1267435 () Bool)

(assert (= bs!604537 (and d!1267435 d!1267421)))

(declare-fun lambda!132517 () Int)

(assert (=> bs!604537 (not (= lambda!132517 lambda!132505))))

(declare-fun bs!604538 () Bool)

(assert (= bs!604538 (and d!1267435 d!1267425)))

(assert (=> bs!604538 (not (= lambda!132517 lambda!132508))))

(declare-fun bs!604539 () Bool)

(assert (= bs!604539 (and d!1267435 d!1267415)))

(assert (=> bs!604539 (not (= lambda!132517 lambda!132500))))

(declare-fun bs!604540 () Bool)

(assert (= bs!604540 (and d!1267435 d!1267413)))

(assert (=> bs!604540 (not (= lambda!132517 lambda!132499))))

(declare-fun bs!604541 () Bool)

(assert (= bs!604541 (and d!1267435 b!4306299)))

(assert (=> bs!604541 (not (= lambda!132517 lambda!132496))))

(declare-fun bs!604542 () Bool)

(assert (= bs!604542 (and d!1267435 d!1267431)))

(assert (=> bs!604542 (= lambda!132517 lambda!132511)))

(assert (=> d!1267435 true))

(assert (=> d!1267435 (allKeysSameHash!163 lt!1527121 lt!1527120 (hashF!6607 thiss!42308))))

(declare-fun lt!1527180 () Unit!67124)

(declare-fun choose!26221 (List!48237 (_ BitVec 64) List!48236 Hashable!4533) Unit!67124)

(assert (=> d!1267435 (= lt!1527180 (choose!26221 (toList!2330 lt!1527125) lt!1527120 lt!1527121 (hashF!6607 thiss!42308)))))

(assert (=> d!1267435 (forall!8699 (toList!2330 lt!1527125) lambda!132517)))

(assert (=> d!1267435 (= (lemmaInLongMapAllKeySameHashThenForTuple!153 (toList!2330 lt!1527125) lt!1527120 lt!1527121 (hashF!6607 thiss!42308)) lt!1527180)))

(declare-fun bs!604543 () Bool)

(assert (= bs!604543 d!1267435))

(assert (=> bs!604543 m!4898889))

(declare-fun m!4899023 () Bool)

(assert (=> bs!604543 m!4899023))

(declare-fun m!4899025 () Bool)

(assert (=> bs!604543 m!4899025))

(assert (=> b!4306300 d!1267435))

(declare-fun d!1267437 () Bool)

(assert (=> d!1267437 (allKeysSameHash!163 (removePairForKey!187 lt!1527121 key!2048) lt!1527120 (hashF!6607 thiss!42308))))

(declare-fun lt!1527183 () Unit!67124)

(declare-fun choose!26222 (List!48236 K!9289 (_ BitVec 64) Hashable!4533) Unit!67124)

(assert (=> d!1267437 (= lt!1527183 (choose!26222 lt!1527121 key!2048 lt!1527120 (hashF!6607 thiss!42308)))))

(declare-fun noDuplicateKeys!193 (List!48236) Bool)

(assert (=> d!1267437 (noDuplicateKeys!193 lt!1527121)))

(assert (=> d!1267437 (= (lemmaRemovePairForKeyPreservesHash!147 lt!1527121 key!2048 lt!1527120 (hashF!6607 thiss!42308)) lt!1527183)))

(declare-fun bs!604544 () Bool)

(assert (= bs!604544 d!1267437))

(assert (=> bs!604544 m!4898885))

(assert (=> bs!604544 m!4898885))

(assert (=> bs!604544 m!4898887))

(declare-fun m!4899027 () Bool)

(assert (=> bs!604544 m!4899027))

(declare-fun m!4899029 () Bool)

(assert (=> bs!604544 m!4899029))

(assert (=> b!4306300 d!1267437))

(declare-fun b!4306382 () Bool)

(declare-fun e!2677725 () List!48236)

(assert (=> b!4306382 (= e!2677725 Nil!48112)))

(declare-fun b!4306381 () Bool)

(assert (=> b!4306381 (= e!2677725 (Cons!48112 (h!53539 lt!1527121) (removePairForKey!187 (t!355021 lt!1527121) key!2048)))))

(declare-fun d!1267439 () Bool)

(declare-fun lt!1527186 () List!48236)

(declare-fun containsKey!284 (List!48236 K!9289) Bool)

(assert (=> d!1267439 (not (containsKey!284 lt!1527186 key!2048))))

(declare-fun e!2677726 () List!48236)

(assert (=> d!1267439 (= lt!1527186 e!2677726)))

(declare-fun c!732147 () Bool)

(assert (=> d!1267439 (= c!732147 (and ((_ is Cons!48112) lt!1527121) (= (_1!26459 (h!53539 lt!1527121)) key!2048)))))

(assert (=> d!1267439 (noDuplicateKeys!193 lt!1527121)))

(assert (=> d!1267439 (= (removePairForKey!187 lt!1527121 key!2048) lt!1527186)))

(declare-fun b!4306380 () Bool)

(assert (=> b!4306380 (= e!2677726 e!2677725)))

(declare-fun c!732146 () Bool)

(assert (=> b!4306380 (= c!732146 ((_ is Cons!48112) lt!1527121))))

(declare-fun b!4306379 () Bool)

(assert (=> b!4306379 (= e!2677726 (t!355021 lt!1527121))))

(assert (= (and d!1267439 c!732147) b!4306379))

(assert (= (and d!1267439 (not c!732147)) b!4306380))

(assert (= (and b!4306380 c!732146) b!4306381))

(assert (= (and b!4306380 (not c!732146)) b!4306382))

(declare-fun m!4899031 () Bool)

(assert (=> b!4306381 m!4899031))

(declare-fun m!4899033 () Bool)

(assert (=> d!1267439 m!4899033))

(assert (=> d!1267439 m!4899029))

(assert (=> b!4306300 d!1267439))

(declare-fun bs!604545 () Bool)

(declare-fun d!1267441 () Bool)

(assert (= bs!604545 (and d!1267441 d!1267433)))

(declare-fun lambda!132518 () Int)

(assert (=> bs!604545 (= lambda!132518 lambda!132514)))

(assert (=> d!1267441 true))

(assert (=> d!1267441 true))

(assert (=> d!1267441 (= (allKeysSameHash!163 (removePairForKey!187 lt!1527121 key!2048) lt!1527120 (hashF!6607 thiss!42308)) (forall!8700 (removePairForKey!187 lt!1527121 key!2048) lambda!132518))))

(declare-fun bs!604546 () Bool)

(assert (= bs!604546 d!1267441))

(assert (=> bs!604546 m!4898885))

(declare-fun m!4899035 () Bool)

(assert (=> bs!604546 m!4899035))

(assert (=> b!4306300 d!1267441))

(declare-fun d!1267443 () Bool)

(assert (=> d!1267443 (= (array_inv!5321 (_keys!4917 (v!42170 (underlying!9463 (v!42171 (underlying!9464 thiss!42308)))))) (bvsge (size!35458 (_keys!4917 (v!42170 (underlying!9463 (v!42171 (underlying!9464 thiss!42308)))))) #b00000000000000000000000000000000))))

(assert (=> b!4306296 d!1267443))

(declare-fun d!1267445 () Bool)

(assert (=> d!1267445 (= (array_inv!5322 (_values!4898 (v!42170 (underlying!9463 (v!42171 (underlying!9464 thiss!42308)))))) (bvsge (size!35459 (_values!4898 (v!42170 (underlying!9463 (v!42171 (underlying!9464 thiss!42308)))))) #b00000000000000000000000000000000))))

(assert (=> b!4306296 d!1267445))

(declare-fun bs!604547 () Bool)

(declare-fun b!4306405 () Bool)

(assert (= bs!604547 (and b!4306405 d!1267435)))

(declare-fun lambda!132521 () Int)

(assert (=> bs!604547 (not (= lambda!132521 lambda!132517))))

(declare-fun bs!604548 () Bool)

(assert (= bs!604548 (and b!4306405 d!1267421)))

(assert (=> bs!604548 (= lambda!132521 lambda!132505)))

(declare-fun bs!604549 () Bool)

(assert (= bs!604549 (and b!4306405 d!1267425)))

(assert (=> bs!604549 (= lambda!132521 lambda!132508)))

(declare-fun bs!604550 () Bool)

(assert (= bs!604550 (and b!4306405 d!1267415)))

(assert (=> bs!604550 (= lambda!132521 lambda!132500)))

(declare-fun bs!604551 () Bool)

(assert (= bs!604551 (and b!4306405 d!1267413)))

(assert (=> bs!604551 (= lambda!132521 lambda!132499)))

(declare-fun bs!604552 () Bool)

(assert (= bs!604552 (and b!4306405 b!4306299)))

(assert (=> bs!604552 (= lambda!132521 lambda!132496)))

(declare-fun bs!604553 () Bool)

(assert (= bs!604553 (and b!4306405 d!1267431)))

(assert (=> bs!604553 (not (= lambda!132521 lambda!132511))))

(declare-fun e!2677744 () Unit!67124)

(declare-fun lt!1527242 () (_ BitVec 64))

(declare-fun forallContained!1490 (List!48237 Int tuple2!46362) Unit!67124)

(assert (=> b!4306405 (= e!2677744 (forallContained!1490 (toList!2330 (map!10087 (v!42171 (underlying!9464 thiss!42308)))) lambda!132521 (tuple2!46363 lt!1527242 (apply!10967 (v!42171 (underlying!9464 thiss!42308)) lt!1527242))))))

(declare-fun c!732157 () Bool)

(assert (=> b!4306405 (= c!732157 (not (contains!10060 (toList!2330 (map!10087 (v!42171 (underlying!9464 thiss!42308)))) (tuple2!46363 lt!1527242 (apply!10967 (v!42171 (underlying!9464 thiss!42308)) lt!1527242)))))))

(declare-fun lt!1527239 () Unit!67124)

(declare-fun e!2677741 () Unit!67124)

(assert (=> b!4306405 (= lt!1527239 e!2677741)))

(declare-fun b!4306406 () Bool)

(declare-fun Unit!67127 () Unit!67124)

(assert (=> b!4306406 (= e!2677744 Unit!67127)))

(declare-fun d!1267447 () Bool)

(declare-fun lt!1527234 () Bool)

(assert (=> d!1267447 (= lt!1527234 (contains!10058 (map!10088 thiss!42308) key!2048))))

(declare-fun e!2677747 () Bool)

(assert (=> d!1267447 (= lt!1527234 e!2677747)))

(declare-fun res!1765116 () Bool)

(assert (=> d!1267447 (=> (not res!1765116) (not e!2677747))))

(assert (=> d!1267447 (= res!1765116 (contains!10054 (v!42171 (underlying!9464 thiss!42308)) lt!1527242))))

(declare-fun lt!1527235 () Unit!67124)

(declare-fun e!2677746 () Unit!67124)

(assert (=> d!1267447 (= lt!1527235 e!2677746)))

(declare-fun c!732158 () Bool)

(assert (=> d!1267447 (= c!732158 (contains!10058 (extractMap!306 (toList!2330 (map!10087 (v!42171 (underlying!9464 thiss!42308))))) key!2048))))

(declare-fun lt!1527241 () Unit!67124)

(assert (=> d!1267447 (= lt!1527241 e!2677744)))

(declare-fun c!732156 () Bool)

(assert (=> d!1267447 (= c!732156 (contains!10054 (v!42171 (underlying!9464 thiss!42308)) lt!1527242))))

(assert (=> d!1267447 (= lt!1527242 (hash!935 (hashF!6607 thiss!42308) key!2048))))

(assert (=> d!1267447 (valid!3601 thiss!42308)))

(assert (=> d!1267447 (= (contains!10055 thiss!42308 key!2048) lt!1527234)))

(declare-fun b!4306407 () Bool)

(declare-fun e!2677743 () Bool)

(declare-fun call!296929 () Bool)

(assert (=> b!4306407 (= e!2677743 call!296929)))

(declare-fun bm!296919 () Bool)

(declare-fun call!296927 () ListLongMap!941)

(assert (=> bm!296919 (= call!296927 (map!10087 (v!42171 (underlying!9464 thiss!42308))))))

(declare-fun bm!296920 () Bool)

(declare-datatypes ((Option!10203 0))(
  ( (None!10202) (Some!10202 (v!42178 tuple2!46360)) )
))
(declare-fun call!296928 () Option!10203)

(declare-fun call!296924 () List!48236)

(declare-fun getPair!123 (List!48236 K!9289) Option!10203)

(assert (=> bm!296920 (= call!296928 (getPair!123 call!296924 key!2048))))

(declare-fun b!4306408 () Bool)

(declare-fun lt!1527231 () Unit!67124)

(assert (=> b!4306408 (= e!2677746 lt!1527231)))

(declare-fun lt!1527240 () ListLongMap!941)

(assert (=> b!4306408 (= lt!1527240 call!296927)))

(declare-fun lemmaInGenericMapThenInLongMap!123 (ListLongMap!941 K!9289 Hashable!4533) Unit!67124)

(assert (=> b!4306408 (= lt!1527231 (lemmaInGenericMapThenInLongMap!123 lt!1527240 key!2048 (hashF!6607 thiss!42308)))))

(declare-fun res!1765115 () Bool)

(declare-fun call!296926 () Bool)

(assert (=> b!4306408 (= res!1765115 call!296926)))

(assert (=> b!4306408 (=> (not res!1765115) (not e!2677743))))

(assert (=> b!4306408 e!2677743))

(declare-fun bm!296921 () Bool)

(declare-fun isDefined!7509 (Option!10203) Bool)

(assert (=> bm!296921 (= call!296929 (isDefined!7509 call!296928))))

(declare-fun bm!296922 () Bool)

(declare-fun call!296925 () (_ BitVec 64))

(assert (=> bm!296922 (= call!296926 (contains!10056 (ite c!732158 lt!1527240 call!296927) call!296925))))

(declare-fun b!4306409 () Bool)

(declare-fun e!2677745 () Unit!67124)

(assert (=> b!4306409 (= e!2677746 e!2677745)))

(declare-fun res!1765117 () Bool)

(assert (=> b!4306409 (= res!1765117 call!296926)))

(declare-fun e!2677742 () Bool)

(assert (=> b!4306409 (=> (not res!1765117) (not e!2677742))))

(declare-fun c!732159 () Bool)

(assert (=> b!4306409 (= c!732159 e!2677742)))

(declare-fun b!4306410 () Bool)

(assert (=> b!4306410 false))

(declare-fun lt!1527233 () Unit!67124)

(declare-fun lt!1527238 () Unit!67124)

(assert (=> b!4306410 (= lt!1527233 lt!1527238)))

(declare-fun lt!1527244 () ListLongMap!941)

(assert (=> b!4306410 (contains!10058 (extractMap!306 (toList!2330 lt!1527244)) key!2048)))

(declare-fun lemmaInLongMapThenInGenericMap!123 (ListLongMap!941 K!9289 Hashable!4533) Unit!67124)

(assert (=> b!4306410 (= lt!1527238 (lemmaInLongMapThenInGenericMap!123 lt!1527244 key!2048 (hashF!6607 thiss!42308)))))

(assert (=> b!4306410 (= lt!1527244 call!296927)))

(declare-fun Unit!67128 () Unit!67124)

(assert (=> b!4306410 (= e!2677745 Unit!67128)))

(declare-fun b!4306411 () Bool)

(declare-fun Unit!67129 () Unit!67124)

(assert (=> b!4306411 (= e!2677741 Unit!67129)))

(declare-fun bm!296923 () Bool)

(assert (=> bm!296923 (= call!296925 (hash!935 (hashF!6607 thiss!42308) key!2048))))

(declare-fun b!4306412 () Bool)

(assert (=> b!4306412 (= e!2677747 (isDefined!7509 (getPair!123 (apply!10967 (v!42171 (underlying!9464 thiss!42308)) lt!1527242) key!2048)))))

(declare-fun b!4306413 () Bool)

(assert (=> b!4306413 (= e!2677742 call!296929)))

(declare-fun bm!296924 () Bool)

(declare-fun apply!10968 (ListLongMap!941 (_ BitVec 64)) List!48236)

(assert (=> bm!296924 (= call!296924 (apply!10968 (ite c!732158 lt!1527240 call!296927) call!296925))))

(declare-fun b!4306414 () Bool)

(declare-fun Unit!67130 () Unit!67124)

(assert (=> b!4306414 (= e!2677745 Unit!67130)))

(declare-fun b!4306415 () Bool)

(assert (=> b!4306415 false))

(declare-fun lt!1527236 () Unit!67124)

(declare-fun lt!1527227 () Unit!67124)

(assert (=> b!4306415 (= lt!1527236 lt!1527227)))

(declare-fun lt!1527230 () List!48237)

(declare-fun lt!1527232 () List!48236)

(assert (=> b!4306415 (contains!10060 lt!1527230 (tuple2!46363 lt!1527242 lt!1527232))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!134 (List!48237 (_ BitVec 64) List!48236) Unit!67124)

(assert (=> b!4306415 (= lt!1527227 (lemmaGetValueByKeyImpliesContainsTuple!134 lt!1527230 lt!1527242 lt!1527232))))

(assert (=> b!4306415 (= lt!1527232 (apply!10967 (v!42171 (underlying!9464 thiss!42308)) lt!1527242))))

(assert (=> b!4306415 (= lt!1527230 (toList!2330 (map!10087 (v!42171 (underlying!9464 thiss!42308)))))))

(declare-fun lt!1527228 () Unit!67124)

(declare-fun lt!1527245 () Unit!67124)

(assert (=> b!4306415 (= lt!1527228 lt!1527245)))

(declare-fun lt!1527243 () List!48237)

(declare-fun isDefined!7510 (Option!10202) Bool)

(assert (=> b!4306415 (isDefined!7510 (getValueByKey!238 lt!1527243 lt!1527242))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!163 (List!48237 (_ BitVec 64)) Unit!67124)

(assert (=> b!4306415 (= lt!1527245 (lemmaContainsKeyImpliesGetValueByKeyDefined!163 lt!1527243 lt!1527242))))

(assert (=> b!4306415 (= lt!1527243 (toList!2330 (map!10087 (v!42171 (underlying!9464 thiss!42308)))))))

(declare-fun lt!1527229 () Unit!67124)

(declare-fun lt!1527246 () Unit!67124)

(assert (=> b!4306415 (= lt!1527229 lt!1527246)))

(declare-fun lt!1527237 () List!48237)

(declare-fun containsKey!285 (List!48237 (_ BitVec 64)) Bool)

(assert (=> b!4306415 (containsKey!285 lt!1527237 lt!1527242)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!124 (List!48237 (_ BitVec 64)) Unit!67124)

(assert (=> b!4306415 (= lt!1527246 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!124 lt!1527237 lt!1527242))))

(assert (=> b!4306415 (= lt!1527237 (toList!2330 (map!10087 (v!42171 (underlying!9464 thiss!42308)))))))

(declare-fun Unit!67131 () Unit!67124)

(assert (=> b!4306415 (= e!2677741 Unit!67131)))

(assert (= (and d!1267447 c!732156) b!4306405))

(assert (= (and d!1267447 (not c!732156)) b!4306406))

(assert (= (and b!4306405 c!732157) b!4306415))

(assert (= (and b!4306405 (not c!732157)) b!4306411))

(assert (= (and d!1267447 c!732158) b!4306408))

(assert (= (and d!1267447 (not c!732158)) b!4306409))

(assert (= (and b!4306408 res!1765115) b!4306407))

(assert (= (and b!4306409 res!1765117) b!4306413))

(assert (= (and b!4306409 c!732159) b!4306410))

(assert (= (and b!4306409 (not c!732159)) b!4306414))

(assert (= (or b!4306408 b!4306407 b!4306409 b!4306413) bm!296923))

(assert (= (or b!4306408 b!4306409 b!4306413 b!4306410) bm!296919))

(assert (= (or b!4306407 b!4306413) bm!296924))

(assert (= (or b!4306408 b!4306409) bm!296922))

(assert (= (or b!4306407 b!4306413) bm!296920))

(assert (= (or b!4306407 b!4306413) bm!296921))

(assert (= (and d!1267447 res!1765116) b!4306412))

(declare-fun m!4899037 () Bool)

(assert (=> b!4306408 m!4899037))

(declare-fun m!4899039 () Bool)

(assert (=> b!4306415 m!4899039))

(declare-fun m!4899041 () Bool)

(assert (=> b!4306415 m!4899041))

(declare-fun m!4899043 () Bool)

(assert (=> b!4306415 m!4899043))

(declare-fun m!4899045 () Bool)

(assert (=> b!4306415 m!4899045))

(declare-fun m!4899047 () Bool)

(assert (=> b!4306415 m!4899047))

(assert (=> b!4306415 m!4898927))

(declare-fun m!4899049 () Bool)

(assert (=> b!4306415 m!4899049))

(assert (=> b!4306415 m!4899039))

(declare-fun m!4899051 () Bool)

(assert (=> b!4306415 m!4899051))

(declare-fun m!4899053 () Bool)

(assert (=> b!4306415 m!4899053))

(assert (=> b!4306405 m!4898927))

(assert (=> b!4306405 m!4899049))

(declare-fun m!4899055 () Bool)

(assert (=> b!4306405 m!4899055))

(declare-fun m!4899057 () Bool)

(assert (=> b!4306405 m!4899057))

(assert (=> d!1267447 m!4898929))

(assert (=> d!1267447 m!4898923))

(declare-fun m!4899059 () Bool)

(assert (=> d!1267447 m!4899059))

(declare-fun m!4899061 () Bool)

(assert (=> d!1267447 m!4899061))

(declare-fun m!4899063 () Bool)

(assert (=> d!1267447 m!4899063))

(assert (=> d!1267447 m!4898929))

(declare-fun m!4899065 () Bool)

(assert (=> d!1267447 m!4899065))

(assert (=> d!1267447 m!4898927))

(assert (=> d!1267447 m!4898901))

(assert (=> d!1267447 m!4899059))

(declare-fun m!4899067 () Bool)

(assert (=> bm!296920 m!4899067))

(assert (=> bm!296919 m!4898927))

(declare-fun m!4899069 () Bool)

(assert (=> b!4306410 m!4899069))

(assert (=> b!4306410 m!4899069))

(declare-fun m!4899071 () Bool)

(assert (=> b!4306410 m!4899071))

(declare-fun m!4899073 () Bool)

(assert (=> b!4306410 m!4899073))

(assert (=> b!4306412 m!4899049))

(assert (=> b!4306412 m!4899049))

(declare-fun m!4899075 () Bool)

(assert (=> b!4306412 m!4899075))

(assert (=> b!4306412 m!4899075))

(declare-fun m!4899077 () Bool)

(assert (=> b!4306412 m!4899077))

(declare-fun m!4899079 () Bool)

(assert (=> bm!296921 m!4899079))

(declare-fun m!4899081 () Bool)

(assert (=> bm!296924 m!4899081))

(assert (=> bm!296923 m!4898901))

(declare-fun m!4899083 () Bool)

(assert (=> bm!296922 m!4899083))

(assert (=> b!4306307 d!1267447))

(declare-fun d!1267449 () Bool)

(declare-fun map!10089 (LongMapFixedSize!9234) ListLongMap!941)

(assert (=> d!1267449 (= (map!10087 (v!42171 (underlying!9464 thiss!42308))) (map!10089 (v!42170 (underlying!9463 (v!42171 (underlying!9464 thiss!42308))))))))

(declare-fun bs!604554 () Bool)

(assert (= bs!604554 d!1267449))

(declare-fun m!4899085 () Bool)

(assert (=> bs!604554 m!4899085))

(assert (=> b!4306307 d!1267449))

(declare-fun d!1267451 () Bool)

(declare-fun lt!1527249 () ListMap!1613)

(assert (=> d!1267451 (invariantList!562 (toList!2331 lt!1527249))))

(assert (=> d!1267451 (= lt!1527249 (extractMap!306 (toList!2330 (map!10087 (v!42171 (underlying!9464 thiss!42308))))))))

(assert (=> d!1267451 (valid!3601 thiss!42308)))

(assert (=> d!1267451 (= (map!10088 thiss!42308) lt!1527249)))

(declare-fun bs!604555 () Bool)

(assert (= bs!604555 d!1267451))

(declare-fun m!4899087 () Bool)

(assert (=> bs!604555 m!4899087))

(assert (=> bs!604555 m!4898927))

(assert (=> bs!604555 m!4899059))

(assert (=> bs!604555 m!4898923))

(assert (=> b!4306307 d!1267451))

(declare-fun bs!604556 () Bool)

(declare-fun b!4306420 () Bool)

(assert (= bs!604556 (and b!4306420 d!1267435)))

(declare-fun lambda!132524 () Int)

(assert (=> bs!604556 (not (= lambda!132524 lambda!132517))))

(declare-fun bs!604557 () Bool)

(assert (= bs!604557 (and b!4306420 d!1267421)))

(assert (=> bs!604557 (= lambda!132524 lambda!132505)))

(declare-fun bs!604558 () Bool)

(assert (= bs!604558 (and b!4306420 d!1267425)))

(assert (=> bs!604558 (= lambda!132524 lambda!132508)))

(declare-fun bs!604559 () Bool)

(assert (= bs!604559 (and b!4306420 b!4306405)))

(assert (=> bs!604559 (= lambda!132524 lambda!132521)))

(declare-fun bs!604560 () Bool)

(assert (= bs!604560 (and b!4306420 d!1267415)))

(assert (=> bs!604560 (= lambda!132524 lambda!132500)))

(declare-fun bs!604561 () Bool)

(assert (= bs!604561 (and b!4306420 d!1267413)))

(assert (=> bs!604561 (= lambda!132524 lambda!132499)))

(declare-fun bs!604562 () Bool)

(assert (= bs!604562 (and b!4306420 b!4306299)))

(assert (=> bs!604562 (= lambda!132524 lambda!132496)))

(declare-fun bs!604563 () Bool)

(assert (= bs!604563 (and b!4306420 d!1267431)))

(assert (=> bs!604563 (not (= lambda!132524 lambda!132511))))

(declare-fun d!1267453 () Bool)

(declare-fun res!1765122 () Bool)

(declare-fun e!2677750 () Bool)

(assert (=> d!1267453 (=> (not res!1765122) (not e!2677750))))

(assert (=> d!1267453 (= res!1765122 (valid!3602 (v!42171 (underlying!9464 thiss!42308))))))

(assert (=> d!1267453 (= (valid!3601 thiss!42308) e!2677750)))

(declare-fun res!1765123 () Bool)

(assert (=> b!4306420 (=> (not res!1765123) (not e!2677750))))

(assert (=> b!4306420 (= res!1765123 (forall!8699 (toList!2330 (map!10087 (v!42171 (underlying!9464 thiss!42308)))) lambda!132524))))

(declare-fun b!4306421 () Bool)

(assert (=> b!4306421 (= e!2677750 (allKeysSameHashInMap!312 (map!10087 (v!42171 (underlying!9464 thiss!42308))) (hashF!6607 thiss!42308)))))

(assert (= (and d!1267453 res!1765122) b!4306420))

(assert (= (and b!4306420 res!1765123) b!4306421))

(assert (=> d!1267453 m!4898943))

(assert (=> b!4306420 m!4898927))

(declare-fun m!4899089 () Bool)

(assert (=> b!4306420 m!4899089))

(assert (=> b!4306421 m!4898927))

(assert (=> b!4306421 m!4898927))

(declare-fun m!4899091 () Bool)

(assert (=> b!4306421 m!4899091))

(assert (=> b!4306302 d!1267453))

(declare-fun d!1267455 () Bool)

(declare-fun e!2677753 () Bool)

(assert (=> d!1267455 e!2677753))

(declare-fun c!732162 () Bool)

(assert (=> d!1267455 (= c!732162 (contains!10054 (v!42171 (underlying!9464 thiss!42308)) lt!1527120))))

(declare-fun lt!1527252 () List!48236)

(declare-fun apply!10969 (LongMapFixedSize!9234 (_ BitVec 64)) List!48236)

(assert (=> d!1267455 (= lt!1527252 (apply!10969 (v!42170 (underlying!9463 (v!42171 (underlying!9464 thiss!42308)))) lt!1527120))))

(assert (=> d!1267455 (valid!3602 (v!42171 (underlying!9464 thiss!42308)))))

(assert (=> d!1267455 (= (apply!10967 (v!42171 (underlying!9464 thiss!42308)) lt!1527120) lt!1527252)))

(declare-fun b!4306426 () Bool)

(declare-fun get!15561 (Option!10202) List!48236)

(assert (=> b!4306426 (= e!2677753 (= lt!1527252 (get!15561 (getValueByKey!238 (toList!2330 (map!10087 (v!42171 (underlying!9464 thiss!42308)))) lt!1527120))))))

(declare-fun b!4306427 () Bool)

(declare-fun dynLambda!20408 (Int (_ BitVec 64)) List!48236)

(assert (=> b!4306427 (= e!2677753 (= lt!1527252 (dynLambda!20408 (defaultEntry!5002 (v!42170 (underlying!9463 (v!42171 (underlying!9464 thiss!42308))))) lt!1527120)))))

(assert (=> b!4306427 ((_ is LongMap!4617) (v!42171 (underlying!9464 thiss!42308)))))

(assert (= (and d!1267455 c!732162) b!4306426))

(assert (= (and d!1267455 (not c!732162)) b!4306427))

(declare-fun b_lambda!126509 () Bool)

(assert (=> (not b_lambda!126509) (not b!4306427)))

(declare-fun t!355024 () Bool)

(declare-fun tb!257271 () Bool)

(assert (=> (and b!4306296 (= (defaultEntry!5002 (v!42170 (underlying!9463 (v!42171 (underlying!9464 thiss!42308))))) (defaultEntry!5002 (v!42170 (underlying!9463 (v!42171 (underlying!9464 thiss!42308)))))) t!355024) tb!257271))

(assert (=> b!4306427 t!355024))

(declare-fun result!314628 () Bool)

(declare-fun b_and!339831 () Bool)

(assert (= b_and!339827 (and (=> t!355024 result!314628) b_and!339831)))

(assert (=> d!1267455 m!4898899))

(declare-fun m!4899093 () Bool)

(assert (=> d!1267455 m!4899093))

(assert (=> d!1267455 m!4898943))

(assert (=> b!4306426 m!4898927))

(declare-fun m!4899095 () Bool)

(assert (=> b!4306426 m!4899095))

(assert (=> b!4306426 m!4899095))

(declare-fun m!4899097 () Bool)

(assert (=> b!4306426 m!4899097))

(declare-fun m!4899099 () Bool)

(assert (=> b!4306427 m!4899099))

(assert (=> b!4306297 d!1267455))

(declare-fun mapIsEmpty!20656 () Bool)

(declare-fun mapRes!20656 () Bool)

(assert (=> mapIsEmpty!20656 mapRes!20656))

(declare-fun e!2677758 () Bool)

(declare-fun tp!1323425 () Bool)

(declare-fun b!4306435 () Bool)

(assert (=> b!4306435 (= e!2677758 (and tp_is_empty!23589 tp_is_empty!23591 tp!1323425))))

(declare-fun mapNonEmpty!20656 () Bool)

(declare-fun tp!1323423 () Bool)

(declare-fun e!2677759 () Bool)

(assert (=> mapNonEmpty!20656 (= mapRes!20656 (and tp!1323423 e!2677759))))

(declare-fun mapKey!20656 () (_ BitVec 32))

(declare-fun mapRest!20656 () (Array (_ BitVec 32) List!48236))

(declare-fun mapValue!20656 () List!48236)

(assert (=> mapNonEmpty!20656 (= mapRest!20653 (store mapRest!20656 mapKey!20656 mapValue!20656))))

(declare-fun condMapEmpty!20656 () Bool)

(declare-fun mapDefault!20656 () List!48236)

(assert (=> mapNonEmpty!20653 (= condMapEmpty!20656 (= mapRest!20653 ((as const (Array (_ BitVec 32) List!48236)) mapDefault!20656)))))

(assert (=> mapNonEmpty!20653 (= tp!1323416 (and e!2677758 mapRes!20656))))

(declare-fun b!4306434 () Bool)

(declare-fun tp!1323424 () Bool)

(assert (=> b!4306434 (= e!2677759 (and tp_is_empty!23589 tp_is_empty!23591 tp!1323424))))

(assert (= (and mapNonEmpty!20653 condMapEmpty!20656) mapIsEmpty!20656))

(assert (= (and mapNonEmpty!20653 (not condMapEmpty!20656)) mapNonEmpty!20656))

(assert (= (and mapNonEmpty!20656 ((_ is Cons!48112) mapValue!20656)) b!4306434))

(assert (= (and mapNonEmpty!20653 ((_ is Cons!48112) mapDefault!20656)) b!4306435))

(declare-fun m!4899101 () Bool)

(assert (=> mapNonEmpty!20656 m!4899101))

(declare-fun b!4306440 () Bool)

(declare-fun e!2677762 () Bool)

(declare-fun tp!1323428 () Bool)

(assert (=> b!4306440 (= e!2677762 (and tp_is_empty!23589 tp_is_empty!23591 tp!1323428))))

(assert (=> mapNonEmpty!20653 (= tp!1323412 e!2677762)))

(assert (= (and mapNonEmpty!20653 ((_ is Cons!48112) mapValue!20653)) b!4306440))

(declare-fun tp!1323429 () Bool)

(declare-fun b!4306441 () Bool)

(declare-fun e!2677763 () Bool)

(assert (=> b!4306441 (= e!2677763 (and tp_is_empty!23589 tp_is_empty!23591 tp!1323429))))

(assert (=> b!4306296 (= tp!1323413 e!2677763)))

(assert (= (and b!4306296 ((_ is Cons!48112) (zeroValue!4876 (v!42170 (underlying!9463 (v!42171 (underlying!9464 thiss!42308))))))) b!4306441))

(declare-fun tp!1323430 () Bool)

(declare-fun b!4306442 () Bool)

(declare-fun e!2677764 () Bool)

(assert (=> b!4306442 (= e!2677764 (and tp_is_empty!23589 tp_is_empty!23591 tp!1323430))))

(assert (=> b!4306296 (= tp!1323411 e!2677764)))

(assert (= (and b!4306296 ((_ is Cons!48112) (minValue!4876 (v!42170 (underlying!9463 (v!42171 (underlying!9464 thiss!42308))))))) b!4306442))

(declare-fun tp!1323431 () Bool)

(declare-fun e!2677765 () Bool)

(declare-fun b!4306443 () Bool)

(assert (=> b!4306443 (= e!2677765 (and tp_is_empty!23589 tp_is_empty!23591 tp!1323431))))

(assert (=> b!4306306 (= tp!1323410 e!2677765)))

(assert (= (and b!4306306 ((_ is Cons!48112) mapDefault!20653)) b!4306443))

(declare-fun b_lambda!126511 () Bool)

(assert (= b_lambda!126509 (or (and b!4306296 b_free!128427) b_lambda!126511)))

(declare-fun b_lambda!126513 () Bool)

(assert (= b_lambda!126507 (or b!4306299 b_lambda!126513)))

(declare-fun bs!604564 () Bool)

(declare-fun d!1267457 () Bool)

(assert (= bs!604564 (and d!1267457 b!4306299)))

(assert (=> bs!604564 (= (dynLambda!20407 lambda!132496 (h!53540 (toList!2330 lt!1527114))) (noDuplicateKeys!193 (_2!26460 (h!53540 (toList!2330 lt!1527114)))))))

(declare-fun m!4899103 () Bool)

(assert (=> bs!604564 m!4899103))

(assert (=> b!4306348 d!1267457))

(check-sat (not b!4306405) (not b!4306357) (not d!1267449) (not b_next!129133) (not b!4306331) (not d!1267453) (not b!4306328) (not d!1267407) (not b!4306381) b_and!339829 (not d!1267437) (not bm!296905) (not b!4306410) (not b_next!129131) (not b!4306340) (not b!4306442) (not b!4306342) (not b!4306434) (not b!4306421) (not b!4306412) (not b!4306363) (not d!1267439) (not mapNonEmpty!20656) (not d!1267441) (not b!4306426) (not bm!296919) tp_is_empty!23589 (not b!4306335) (not d!1267451) (not b!4306415) b_and!339831 (not bs!604564) (not d!1267435) (not b_lambda!126511) (not b_lambda!126513) (not bm!296924) (not d!1267413) (not b!4306333) (not bm!296922) (not d!1267421) (not b!4306440) (not b!4306435) (not b!4306420) (not b!4306443) (not d!1267429) (not b!4306330) (not bm!296923) (not b!4306358) (not d!1267411) (not d!1267409) (not d!1267425) (not b!4306364) (not bm!296921) (not d!1267415) (not d!1267455) (not d!1267431) (not d!1267423) (not bm!296906) (not tb!257271) (not b!4306441) (not b!4306349) (not d!1267447) (not d!1267433) (not b!4306408) (not d!1267427) (not bm!296920) tp_is_empty!23591 (not b!4306352))
(check-sat b_and!339831 b_and!339829 (not b_next!129133) (not b_next!129131))
