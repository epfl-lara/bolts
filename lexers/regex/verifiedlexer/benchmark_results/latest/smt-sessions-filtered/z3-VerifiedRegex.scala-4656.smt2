; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!243078 () Bool)

(assert start!243078)

(declare-fun b!2487498 () Bool)

(declare-fun b_free!72585 () Bool)

(declare-fun b_next!73289 () Bool)

(assert (=> b!2487498 (= b_free!72585 (not b_next!73289))))

(declare-fun tp!796218 () Bool)

(declare-fun b_and!188877 () Bool)

(assert (=> b!2487498 (= tp!796218 b_and!188877)))

(declare-fun b!2487482 () Bool)

(declare-fun b_free!72587 () Bool)

(declare-fun b_next!73291 () Bool)

(assert (=> b!2487482 (= b_free!72587 (not b_next!73291))))

(declare-fun tp!796216 () Bool)

(declare-fun b_and!188879 () Bool)

(assert (=> b!2487482 (= tp!796216 b_and!188879)))

(declare-fun res!1052981 () Bool)

(declare-fun e!1579543 () Bool)

(assert (=> start!243078 (=> (not res!1052981) (not e!1579543))))

(declare-datatypes ((Hashable!3342 0))(
  ( (HashableExt!3341 (__x!19202 Int)) )
))
(declare-datatypes ((K!5665 0))(
  ( (K!5666 (val!9007 Int)) )
))
(declare-datatypes ((V!5867 0))(
  ( (V!5868 (val!9008 Int)) )
))
(declare-datatypes ((tuple2!29308 0))(
  ( (tuple2!29309 (_1!17196 K!5665) (_2!17196 V!5867)) )
))
(declare-datatypes ((List!29342 0))(
  ( (Nil!29242) (Cons!29242 (h!34661 tuple2!29308) (t!211039 List!29342)) )
))
(declare-datatypes ((array!12229 0))(
  ( (array!12230 (arr!5454 (Array (_ BitVec 32) List!29342)) (size!22873 (_ BitVec 32))) )
))
(declare-datatypes ((array!12231 0))(
  ( (array!12232 (arr!5455 (Array (_ BitVec 32) (_ BitVec 64))) (size!22874 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6864 0))(
  ( (LongMapFixedSize!6865 (defaultEntry!3806 Int) (mask!8637 (_ BitVec 32)) (extraKeys!3680 (_ BitVec 32)) (zeroValue!3690 List!29342) (minValue!3690 List!29342) (_size!6911 (_ BitVec 32)) (_keys!3729 array!12231) (_values!3712 array!12229) (_vacant!3493 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!13545 0))(
  ( (Cell!13546 (v!31712 LongMapFixedSize!6864)) )
))
(declare-datatypes ((MutLongMap!3432 0))(
  ( (LongMap!3432 (underlying!7071 Cell!13545)) (MutLongMapExt!3431 (__x!19203 Int)) )
))
(declare-datatypes ((Cell!13547 0))(
  ( (Cell!13548 (v!31713 MutLongMap!3432)) )
))
(declare-datatypes ((MutableMap!3342 0))(
  ( (MutableMapExt!3341 (__x!19204 Int)) (HashMap!3342 (underlying!7072 Cell!13547) (hashF!5365 Hashable!3342) (_size!6912 (_ BitVec 32)) (defaultValue!3504 Int)) )
))
(declare-fun thiss!42540 () MutableMap!3342)

(get-info :version)

(assert (=> start!243078 (= res!1052981 ((_ is HashMap!3342) thiss!42540))))

(assert (=> start!243078 e!1579543))

(declare-fun e!1579544 () Bool)

(assert (=> start!243078 e!1579544))

(declare-fun tp_is_empty!12431 () Bool)

(assert (=> start!243078 tp_is_empty!12431))

(declare-fun b!2487480 () Bool)

(declare-datatypes ((Unit!42940 0))(
  ( (Unit!42941) )
))
(declare-fun e!1579537 () Unit!42940)

(declare-fun Unit!42942 () Unit!42940)

(assert (=> b!2487480 (= e!1579537 Unit!42942)))

(declare-fun b!2487481 () Bool)

(declare-fun res!1052979 () Bool)

(declare-datatypes ((tuple2!29310 0))(
  ( (tuple2!29311 (_1!17197 Unit!42940) (_2!17197 MutableMap!3342)) )
))
(declare-fun lt!893496 () tuple2!29310)

(declare-fun valid!2644 (MutableMap!3342) Bool)

(assert (=> b!2487481 (= res!1052979 (valid!2644 (_2!17197 lt!893496)))))

(declare-fun e!1579546 () Bool)

(assert (=> b!2487481 (=> (not res!1052979) (not e!1579546))))

(declare-fun e!1579539 () Bool)

(assert (=> b!2487482 (= e!1579544 (and e!1579539 tp!796216))))

(declare-fun b!2487483 () Bool)

(declare-datatypes ((ListMap!1173 0))(
  ( (ListMap!1174 (toList!1694 List!29342)) )
))
(declare-fun e!1579538 () ListMap!1173)

(declare-fun lt!893494 () ListMap!1173)

(assert (=> b!2487483 (= e!1579538 lt!893494)))

(declare-fun b!2487484 () Bool)

(declare-fun e!1579540 () Bool)

(declare-fun e!1579535 () Bool)

(assert (=> b!2487484 (= e!1579540 e!1579535)))

(declare-fun res!1052980 () Bool)

(assert (=> b!2487484 (=> res!1052980 e!1579535)))

(declare-datatypes ((tuple2!29312 0))(
  ( (tuple2!29313 (_1!17198 Bool) (_2!17198 MutLongMap!3432)) )
))
(declare-fun lt!893495 () tuple2!29312)

(assert (=> b!2487484 (= res!1052980 (_1!17198 lt!893495))))

(declare-fun mapIsEmpty!15822 () Bool)

(declare-fun mapRes!15822 () Bool)

(assert (=> mapIsEmpty!15822 mapRes!15822))

(declare-fun e!1579532 () Bool)

(declare-fun key!2246 () K!5665)

(declare-fun b!2487485 () Bool)

(declare-fun eq!74 (ListMap!1173 ListMap!1173) Bool)

(declare-fun map!6357 (MutableMap!3342) ListMap!1173)

(declare-fun -!130 (ListMap!1173 K!5665) ListMap!1173)

(assert (=> b!2487485 (= e!1579532 (eq!74 (map!6357 (_2!17197 lt!893496)) (-!130 lt!893494 key!2246)))))

(declare-fun b!2487486 () Bool)

(declare-fun e!1579531 () Bool)

(declare-fun call!152581 () Bool)

(assert (=> b!2487486 (= e!1579531 call!152581)))

(declare-fun b!2487487 () Bool)

(declare-fun e!1579547 () Bool)

(declare-fun e!1579541 () Bool)

(assert (=> b!2487487 (= e!1579547 e!1579541)))

(declare-fun b!2487488 () Bool)

(declare-fun res!1052977 () Bool)

(declare-datatypes ((tuple2!29314 0))(
  ( (tuple2!29315 (_1!17199 (_ BitVec 64)) (_2!17199 List!29342)) )
))
(declare-datatypes ((List!29343 0))(
  ( (Nil!29243) (Cons!29243 (h!34662 tuple2!29314) (t!211040 List!29343)) )
))
(declare-datatypes ((ListLongMap!645 0))(
  ( (ListLongMap!646 (toList!1695 List!29343)) )
))
(declare-fun lt!893497 () ListLongMap!645)

(declare-fun allKeysSameHashInMap!205 (ListLongMap!645 Hashable!3342) Bool)

(assert (=> b!2487488 (= res!1052977 (allKeysSameHashInMap!205 lt!893497 (hashF!5365 (_2!17197 lt!893496))))))

(assert (=> b!2487488 (=> (not res!1052977) (not e!1579546))))

(declare-fun bm!152576 () Bool)

(declare-fun call!152582 () ListMap!1173)

(assert (=> bm!152576 (= call!152582 (map!6357 (_2!17197 lt!893496)))))

(declare-fun b!2487489 () Bool)

(declare-fun e!1579536 () Bool)

(assert (=> b!2487489 (= e!1579536 e!1579531)))

(declare-fun c!395336 () Bool)

(assert (=> b!2487489 (= c!395336 (_1!17198 lt!893495))))

(declare-fun b!2487490 () Bool)

(declare-fun res!1052978 () Bool)

(assert (=> b!2487490 (=> (not res!1052978) (not e!1579543))))

(declare-fun contains!5260 (MutableMap!3342 K!5665) Bool)

(assert (=> b!2487490 (= res!1052978 (contains!5260 thiss!42540 key!2246))))

(declare-fun b!2487491 () Bool)

(declare-fun e!1579545 () Bool)

(assert (=> b!2487491 (= e!1579535 e!1579545)))

(declare-fun res!1052984 () Bool)

(assert (=> b!2487491 (=> (not res!1052984) (not e!1579545))))

(assert (=> b!2487491 (= res!1052984 (valid!2644 (_2!17197 lt!893496)))))

(declare-fun bm!152577 () Bool)

(assert (=> bm!152577 (= call!152581 (eq!74 call!152582 e!1579538))))

(declare-fun c!395335 () Bool)

(assert (=> bm!152577 (= c!395335 c!395336)))

(declare-fun b!2487492 () Bool)

(declare-fun Unit!42943 () Unit!42940)

(assert (=> b!2487492 (= e!1579537 Unit!42943)))

(declare-fun lt!893486 () List!29342)

(declare-fun lt!893482 () Unit!42940)

(declare-fun lt!893499 () (_ BitVec 64))

(declare-fun lt!893484 () ListLongMap!645)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!93 (List!29343 (_ BitVec 64) List!29342 Hashable!3342) Unit!42940)

(assert (=> b!2487492 (= lt!893482 (lemmaInLongMapAllKeySameHashThenForTuple!93 (toList!1695 lt!893484) lt!893499 lt!893486 (hashF!5365 (_2!17197 lt!893496))))))

(declare-fun allKeysSameHash!100 (List!29342 (_ BitVec 64) Hashable!3342) Bool)

(assert (=> b!2487492 (allKeysSameHash!100 lt!893486 lt!893499 (hashF!5365 (_2!17197 lt!893496)))))

(declare-fun lt!893489 () Unit!42940)

(declare-fun lemmaRemovePairForKeyPreservesHash!89 (List!29342 K!5665 (_ BitVec 64) Hashable!3342) Unit!42940)

(assert (=> b!2487492 (= lt!893489 (lemmaRemovePairForKeyPreservesHash!89 lt!893486 key!2246 lt!893499 (hashF!5365 (_2!17197 lt!893496))))))

(declare-fun lt!893490 () List!29342)

(assert (=> b!2487492 (allKeysSameHash!100 lt!893490 lt!893499 (hashF!5365 (_2!17197 lt!893496)))))

(declare-fun lt!893493 () Unit!42940)

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!80 (ListLongMap!645 (_ BitVec 64) List!29342 Hashable!3342) Unit!42940)

(assert (=> b!2487492 (= lt!893493 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!80 lt!893484 lt!893499 lt!893490 (hashF!5365 (_2!17197 lt!893496))))))

(declare-fun lt!893483 () ListLongMap!645)

(declare-fun +!119 (ListLongMap!645 tuple2!29314) ListLongMap!645)

(assert (=> b!2487492 (= lt!893483 (+!119 lt!893484 (tuple2!29315 lt!893499 lt!893490)))))

(declare-fun res!1052976 () Bool)

(declare-fun lambda!94757 () Int)

(declare-fun forall!6023 (List!29343 Int) Bool)

(assert (=> b!2487492 (= res!1052976 (forall!6023 (toList!1695 lt!893483) lambda!94757))))

(declare-fun e!1579548 () Bool)

(assert (=> b!2487492 (=> (not res!1052976) (not e!1579548))))

(assert (=> b!2487492 e!1579548))

(declare-fun map!6358 (MutLongMap!3432) ListLongMap!645)

(assert (=> b!2487492 (= lt!893497 (map!6358 (v!31713 (underlying!7072 (_2!17197 lt!893496)))))))

(declare-fun res!1052982 () Bool)

(assert (=> b!2487492 (= res!1052982 (forall!6023 (toList!1695 lt!893497) lambda!94757))))

(assert (=> b!2487492 (=> (not res!1052982) (not e!1579546))))

(assert (=> b!2487492 e!1579546))

(declare-fun lt!893488 () Unit!42940)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!33 (ListLongMap!645 (_ BitVec 64) List!29342 K!5665 Hashable!3342) Unit!42940)

(assert (=> b!2487492 (= lt!893488 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!33 lt!893484 lt!893499 lt!893490 key!2246 (hashF!5365 (_2!17197 lt!893496))))))

(declare-fun res!1052974 () Bool)

(declare-fun extractMap!200 (List!29343) ListMap!1173)

(assert (=> b!2487492 (= res!1052974 (eq!74 (extractMap!200 (toList!1695 lt!893483)) (-!130 (extractMap!200 (toList!1695 lt!893484)) key!2246)))))

(assert (=> b!2487492 (=> (not res!1052974) (not e!1579532))))

(assert (=> b!2487492 e!1579532))

(declare-fun b!2487493 () Bool)

(assert (=> b!2487493 (= e!1579538 (-!130 lt!893494 key!2246))))

(declare-fun b!2487494 () Bool)

(declare-fun contains!5261 (ListMap!1173 K!5665) Bool)

(assert (=> b!2487494 (= e!1579546 (contains!5261 lt!893494 key!2246))))

(declare-fun b!2487495 () Bool)

(assert (=> b!2487495 (= e!1579545 (= (map!6357 (_2!17197 lt!893496)) lt!893494))))

(declare-fun b!2487496 () Bool)

(declare-fun e!1579534 () Bool)

(declare-fun tp!796221 () Bool)

(assert (=> b!2487496 (= e!1579534 (and tp!796221 mapRes!15822))))

(declare-fun condMapEmpty!15822 () Bool)

(declare-fun mapDefault!15822 () List!29342)

(assert (=> b!2487496 (= condMapEmpty!15822 (= (arr!5454 (_values!3712 (v!31712 (underlying!7071 (v!31713 (underlying!7072 thiss!42540)))))) ((as const (Array (_ BitVec 32) List!29342)) mapDefault!15822)))))

(declare-fun b!2487497 () Bool)

(assert (=> b!2487497 (= e!1579531 call!152581)))

(declare-fun tp!796219 () Bool)

(declare-fun e!1579533 () Bool)

(declare-fun tp!796217 () Bool)

(declare-fun array_inv!3919 (array!12231) Bool)

(declare-fun array_inv!3920 (array!12229) Bool)

(assert (=> b!2487498 (= e!1579533 (and tp!796218 tp!796217 tp!796219 (array_inv!3919 (_keys!3729 (v!31712 (underlying!7071 (v!31713 (underlying!7072 thiss!42540)))))) (array_inv!3920 (_values!3712 (v!31712 (underlying!7071 (v!31713 (underlying!7072 thiss!42540)))))) e!1579534))))

(declare-fun b!2487499 () Bool)

(declare-fun res!1052975 () Bool)

(assert (=> b!2487499 (=> (not res!1052975) (not e!1579543))))

(assert (=> b!2487499 (= res!1052975 (valid!2644 thiss!42540))))

(declare-fun b!2487500 () Bool)

(declare-fun lt!893487 () MutLongMap!3432)

(assert (=> b!2487500 (= e!1579539 (and e!1579547 ((_ is LongMap!3432) lt!893487)))))

(assert (=> b!2487500 (= lt!893487 (v!31713 (underlying!7072 thiss!42540)))))

(declare-fun mapNonEmpty!15822 () Bool)

(declare-fun tp!796215 () Bool)

(declare-fun tp!796220 () Bool)

(assert (=> mapNonEmpty!15822 (= mapRes!15822 (and tp!796215 tp!796220))))

(declare-fun mapValue!15822 () List!29342)

(declare-fun mapKey!15822 () (_ BitVec 32))

(declare-fun mapRest!15822 () (Array (_ BitVec 32) List!29342))

(assert (=> mapNonEmpty!15822 (= (arr!5454 (_values!3712 (v!31712 (underlying!7071 (v!31713 (underlying!7072 thiss!42540)))))) (store mapRest!15822 mapKey!15822 mapValue!15822))))

(declare-fun b!2487501 () Bool)

(assert (=> b!2487501 (= e!1579543 (not e!1579536))))

(declare-fun res!1052985 () Bool)

(assert (=> b!2487501 (=> (not res!1052985) (not e!1579536))))

(assert (=> b!2487501 (= res!1052985 (valid!2644 (_2!17197 lt!893496)))))

(assert (=> b!2487501 ((_ is HashMap!3342) (_2!17197 lt!893496))))

(declare-fun lt!893492 () Unit!42940)

(assert (=> b!2487501 (= lt!893492 e!1579537)))

(declare-fun c!395334 () Bool)

(assert (=> b!2487501 (= c!395334 (_1!17198 lt!893495))))

(assert (=> b!2487501 e!1579540))

(declare-fun res!1052983 () Bool)

(assert (=> b!2487501 (=> (not res!1052983) (not e!1579540))))

(declare-fun noDuplicateKeys!127 (List!29342) Bool)

(assert (=> b!2487501 (= res!1052983 (noDuplicateKeys!127 lt!893490))))

(declare-fun lt!893485 () Unit!42940)

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!107 (List!29342 K!5665) Unit!42940)

(assert (=> b!2487501 (= lt!893485 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!107 lt!893486 key!2246))))

(declare-fun lt!893498 () Cell!13547)

(declare-fun Unit!42944 () Unit!42940)

(declare-fun Unit!42945 () Unit!42940)

(assert (=> b!2487501 (= lt!893496 (ite (_1!17198 lt!893495) (tuple2!29311 Unit!42944 (HashMap!3342 lt!893498 (hashF!5365 thiss!42540) (bvsub (_size!6912 thiss!42540) #b00000000000000000000000000000001) (defaultValue!3504 thiss!42540))) (tuple2!29311 Unit!42945 (HashMap!3342 lt!893498 (hashF!5365 thiss!42540) (_size!6912 thiss!42540) (defaultValue!3504 thiss!42540)))))))

(assert (=> b!2487501 (= lt!893498 (Cell!13548 (_2!17198 lt!893495)))))

(declare-fun update!252 (MutLongMap!3432 (_ BitVec 64) List!29342) tuple2!29312)

(assert (=> b!2487501 (= lt!893495 (update!252 (v!31713 (underlying!7072 thiss!42540)) lt!893499 lt!893490))))

(declare-fun removePairForKey!119 (List!29342 K!5665) List!29342)

(assert (=> b!2487501 (= lt!893490 (removePairForKey!119 lt!893486 key!2246))))

(assert (=> b!2487501 (= lt!893494 (map!6357 thiss!42540))))

(declare-fun lt!893491 () Unit!42940)

(declare-fun forallContained!908 (List!29343 Int tuple2!29314) Unit!42940)

(assert (=> b!2487501 (= lt!893491 (forallContained!908 (toList!1695 lt!893484) lambda!94757 (tuple2!29315 lt!893499 lt!893486)))))

(assert (=> b!2487501 (= lt!893484 (map!6358 (v!31713 (underlying!7072 thiss!42540))))))

(declare-fun apply!7007 (MutLongMap!3432 (_ BitVec 64)) List!29342)

(assert (=> b!2487501 (= lt!893486 (apply!7007 (v!31713 (underlying!7072 thiss!42540)) lt!893499))))

(declare-fun hash!793 (Hashable!3342 K!5665) (_ BitVec 64))

(assert (=> b!2487501 (= lt!893499 (hash!793 (hashF!5365 thiss!42540) key!2246))))

(declare-fun b!2487502 () Bool)

(assert (=> b!2487502 (= e!1579548 (allKeysSameHashInMap!205 lt!893483 (hashF!5365 (_2!17197 lt!893496))))))

(declare-fun b!2487503 () Bool)

(assert (=> b!2487503 (= e!1579541 e!1579533)))

(assert (= (and start!243078 res!1052981) b!2487499))

(assert (= (and b!2487499 res!1052975) b!2487490))

(assert (= (and b!2487490 res!1052978) b!2487501))

(assert (= (and b!2487501 res!1052983) b!2487484))

(assert (= (and b!2487484 (not res!1052980)) b!2487491))

(assert (= (and b!2487491 res!1052984) b!2487495))

(assert (= (and b!2487501 c!395334) b!2487492))

(assert (= (and b!2487501 (not c!395334)) b!2487480))

(assert (= (and b!2487492 res!1052976) b!2487502))

(assert (= (and b!2487492 res!1052982) b!2487488))

(assert (= (and b!2487488 res!1052977) b!2487481))

(assert (= (and b!2487481 res!1052979) b!2487494))

(assert (= (and b!2487492 res!1052974) b!2487485))

(assert (= (and b!2487501 res!1052985) b!2487489))

(assert (= (and b!2487489 c!395336) b!2487497))

(assert (= (and b!2487489 (not c!395336)) b!2487486))

(assert (= (or b!2487497 b!2487486) bm!152576))

(assert (= (or b!2487497 b!2487486) bm!152577))

(assert (= (and bm!152577 c!395335) b!2487493))

(assert (= (and bm!152577 (not c!395335)) b!2487483))

(assert (= (and b!2487496 condMapEmpty!15822) mapIsEmpty!15822))

(assert (= (and b!2487496 (not condMapEmpty!15822)) mapNonEmpty!15822))

(assert (= b!2487498 b!2487496))

(assert (= b!2487503 b!2487498))

(assert (= b!2487487 b!2487503))

(assert (= (and b!2487500 ((_ is LongMap!3432) (v!31713 (underlying!7072 thiss!42540)))) b!2487487))

(assert (= b!2487482 b!2487500))

(assert (= (and start!243078 ((_ is HashMap!3342) thiss!42540)) b!2487482))

(declare-fun m!2856219 () Bool)

(assert (=> bm!152576 m!2856219))

(declare-fun m!2856221 () Bool)

(assert (=> b!2487499 m!2856221))

(declare-fun m!2856223 () Bool)

(assert (=> bm!152577 m!2856223))

(declare-fun m!2856225 () Bool)

(assert (=> b!2487502 m!2856225))

(declare-fun m!2856227 () Bool)

(assert (=> b!2487498 m!2856227))

(declare-fun m!2856229 () Bool)

(assert (=> b!2487498 m!2856229))

(declare-fun m!2856231 () Bool)

(assert (=> mapNonEmpty!15822 m!2856231))

(declare-fun m!2856233 () Bool)

(assert (=> b!2487501 m!2856233))

(declare-fun m!2856235 () Bool)

(assert (=> b!2487501 m!2856235))

(declare-fun m!2856237 () Bool)

(assert (=> b!2487501 m!2856237))

(declare-fun m!2856239 () Bool)

(assert (=> b!2487501 m!2856239))

(declare-fun m!2856241 () Bool)

(assert (=> b!2487501 m!2856241))

(declare-fun m!2856243 () Bool)

(assert (=> b!2487501 m!2856243))

(declare-fun m!2856245 () Bool)

(assert (=> b!2487501 m!2856245))

(declare-fun m!2856247 () Bool)

(assert (=> b!2487501 m!2856247))

(declare-fun m!2856249 () Bool)

(assert (=> b!2487501 m!2856249))

(declare-fun m!2856251 () Bool)

(assert (=> b!2487501 m!2856251))

(assert (=> b!2487481 m!2856251))

(assert (=> b!2487495 m!2856219))

(declare-fun m!2856253 () Bool)

(assert (=> b!2487488 m!2856253))

(declare-fun m!2856255 () Bool)

(assert (=> b!2487494 m!2856255))

(declare-fun m!2856257 () Bool)

(assert (=> b!2487490 m!2856257))

(assert (=> b!2487485 m!2856219))

(declare-fun m!2856259 () Bool)

(assert (=> b!2487485 m!2856259))

(assert (=> b!2487485 m!2856219))

(assert (=> b!2487485 m!2856259))

(declare-fun m!2856261 () Bool)

(assert (=> b!2487485 m!2856261))

(declare-fun m!2856263 () Bool)

(assert (=> b!2487492 m!2856263))

(declare-fun m!2856265 () Bool)

(assert (=> b!2487492 m!2856265))

(declare-fun m!2856267 () Bool)

(assert (=> b!2487492 m!2856267))

(declare-fun m!2856269 () Bool)

(assert (=> b!2487492 m!2856269))

(declare-fun m!2856271 () Bool)

(assert (=> b!2487492 m!2856271))

(declare-fun m!2856273 () Bool)

(assert (=> b!2487492 m!2856273))

(declare-fun m!2856275 () Bool)

(assert (=> b!2487492 m!2856275))

(declare-fun m!2856277 () Bool)

(assert (=> b!2487492 m!2856277))

(declare-fun m!2856279 () Bool)

(assert (=> b!2487492 m!2856279))

(declare-fun m!2856281 () Bool)

(assert (=> b!2487492 m!2856281))

(declare-fun m!2856283 () Bool)

(assert (=> b!2487492 m!2856283))

(declare-fun m!2856285 () Bool)

(assert (=> b!2487492 m!2856285))

(declare-fun m!2856287 () Bool)

(assert (=> b!2487492 m!2856287))

(declare-fun m!2856289 () Bool)

(assert (=> b!2487492 m!2856289))

(assert (=> b!2487492 m!2856275))

(assert (=> b!2487492 m!2856281))

(assert (=> b!2487492 m!2856279))

(assert (=> b!2487493 m!2856259))

(assert (=> b!2487491 m!2856251))

(check-sat b_and!188879 (not b!2487490) (not b!2487488) (not b!2487485) (not b!2487481) (not b!2487498) (not b!2487496) (not b!2487492) (not b!2487491) (not mapNonEmpty!15822) (not bm!152577) (not b!2487499) (not b!2487495) tp_is_empty!12431 b_and!188877 (not b!2487494) (not b!2487502) (not b_next!73291) (not b_next!73289) (not b!2487501) (not b!2487493) (not bm!152576))
(check-sat b_and!188879 b_and!188877 (not b_next!73289) (not b_next!73291))
(get-model)

(declare-fun bs!468221 () Bool)

(declare-fun b!2487508 () Bool)

(assert (= bs!468221 (and b!2487508 b!2487501)))

(declare-fun lambda!94760 () Int)

(assert (=> bs!468221 (= lambda!94760 lambda!94757)))

(declare-fun d!713977 () Bool)

(declare-fun res!1052990 () Bool)

(declare-fun e!1579551 () Bool)

(assert (=> d!713977 (=> (not res!1052990) (not e!1579551))))

(declare-fun valid!2645 (MutLongMap!3432) Bool)

(assert (=> d!713977 (= res!1052990 (valid!2645 (v!31713 (underlying!7072 thiss!42540))))))

(assert (=> d!713977 (= (valid!2644 thiss!42540) e!1579551)))

(declare-fun res!1052991 () Bool)

(assert (=> b!2487508 (=> (not res!1052991) (not e!1579551))))

(assert (=> b!2487508 (= res!1052991 (forall!6023 (toList!1695 (map!6358 (v!31713 (underlying!7072 thiss!42540)))) lambda!94760))))

(declare-fun b!2487509 () Bool)

(assert (=> b!2487509 (= e!1579551 (allKeysSameHashInMap!205 (map!6358 (v!31713 (underlying!7072 thiss!42540))) (hashF!5365 thiss!42540)))))

(assert (= (and d!713977 res!1052990) b!2487508))

(assert (= (and b!2487508 res!1052991) b!2487509))

(declare-fun m!2856291 () Bool)

(assert (=> d!713977 m!2856291))

(assert (=> b!2487508 m!2856235))

(declare-fun m!2856293 () Bool)

(assert (=> b!2487508 m!2856293))

(assert (=> b!2487509 m!2856235))

(assert (=> b!2487509 m!2856235))

(declare-fun m!2856295 () Bool)

(assert (=> b!2487509 m!2856295))

(assert (=> b!2487499 d!713977))

(declare-fun d!713979 () Bool)

(assert (=> d!713979 (= (array_inv!3919 (_keys!3729 (v!31712 (underlying!7071 (v!31713 (underlying!7072 thiss!42540)))))) (bvsge (size!22874 (_keys!3729 (v!31712 (underlying!7071 (v!31713 (underlying!7072 thiss!42540)))))) #b00000000000000000000000000000000))))

(assert (=> b!2487498 d!713979))

(declare-fun d!713981 () Bool)

(assert (=> d!713981 (= (array_inv!3920 (_values!3712 (v!31712 (underlying!7071 (v!31713 (underlying!7072 thiss!42540)))))) (bvsge (size!22873 (_values!3712 (v!31712 (underlying!7071 (v!31713 (underlying!7072 thiss!42540)))))) #b00000000000000000000000000000000))))

(assert (=> b!2487498 d!713981))

(declare-fun bs!468222 () Bool)

(declare-fun b!2487510 () Bool)

(assert (= bs!468222 (and b!2487510 b!2487501)))

(declare-fun lambda!94761 () Int)

(assert (=> bs!468222 (= lambda!94761 lambda!94757)))

(declare-fun bs!468223 () Bool)

(assert (= bs!468223 (and b!2487510 b!2487508)))

(assert (=> bs!468223 (= lambda!94761 lambda!94760)))

(declare-fun d!713983 () Bool)

(declare-fun res!1052992 () Bool)

(declare-fun e!1579552 () Bool)

(assert (=> d!713983 (=> (not res!1052992) (not e!1579552))))

(assert (=> d!713983 (= res!1052992 (valid!2645 (v!31713 (underlying!7072 (_2!17197 lt!893496)))))))

(assert (=> d!713983 (= (valid!2644 (_2!17197 lt!893496)) e!1579552)))

(declare-fun res!1052993 () Bool)

(assert (=> b!2487510 (=> (not res!1052993) (not e!1579552))))

(assert (=> b!2487510 (= res!1052993 (forall!6023 (toList!1695 (map!6358 (v!31713 (underlying!7072 (_2!17197 lt!893496))))) lambda!94761))))

(declare-fun b!2487511 () Bool)

(assert (=> b!2487511 (= e!1579552 (allKeysSameHashInMap!205 (map!6358 (v!31713 (underlying!7072 (_2!17197 lt!893496)))) (hashF!5365 (_2!17197 lt!893496))))))

(assert (= (and d!713983 res!1052992) b!2487510))

(assert (= (and b!2487510 res!1052993) b!2487511))

(declare-fun m!2856297 () Bool)

(assert (=> d!713983 m!2856297))

(assert (=> b!2487510 m!2856289))

(declare-fun m!2856299 () Bool)

(assert (=> b!2487510 m!2856299))

(assert (=> b!2487511 m!2856289))

(assert (=> b!2487511 m!2856289))

(declare-fun m!2856301 () Bool)

(assert (=> b!2487511 m!2856301))

(assert (=> b!2487481 d!713983))

(declare-fun bs!468224 () Bool)

(declare-fun b!2487538 () Bool)

(assert (= bs!468224 (and b!2487538 b!2487501)))

(declare-fun lambda!94764 () Int)

(assert (=> bs!468224 (= lambda!94764 lambda!94757)))

(declare-fun bs!468225 () Bool)

(assert (= bs!468225 (and b!2487538 b!2487508)))

(assert (=> bs!468225 (= lambda!94764 lambda!94760)))

(declare-fun bs!468226 () Bool)

(assert (= bs!468226 (and b!2487538 b!2487510)))

(assert (=> bs!468226 (= lambda!94764 lambda!94761)))

(declare-fun bm!152590 () Bool)

(declare-fun call!152598 () Bool)

(declare-datatypes ((Option!5796 0))(
  ( (None!5795) (Some!5795 (v!31718 tuple2!29308)) )
))
(declare-fun call!152596 () Option!5796)

(declare-fun isDefined!4618 (Option!5796) Bool)

(assert (=> bm!152590 (= call!152598 (isDefined!4618 call!152596))))

(declare-fun b!2487535 () Bool)

(declare-fun e!1579569 () Bool)

(assert (=> b!2487535 (= e!1579569 call!152598)))

(declare-fun b!2487536 () Bool)

(assert (=> b!2487536 false))

(declare-fun lt!893557 () Unit!42940)

(declare-fun lt!893541 () Unit!42940)

(assert (=> b!2487536 (= lt!893557 lt!893541)))

(declare-fun lt!893545 () ListLongMap!645)

(assert (=> b!2487536 (contains!5261 (extractMap!200 (toList!1695 lt!893545)) key!2246)))

(declare-fun lemmaInLongMapThenInGenericMap!89 (ListLongMap!645 K!5665 Hashable!3342) Unit!42940)

(assert (=> b!2487536 (= lt!893541 (lemmaInLongMapThenInGenericMap!89 lt!893545 key!2246 (hashF!5365 thiss!42540)))))

(declare-fun call!152597 () ListLongMap!645)

(assert (=> b!2487536 (= lt!893545 call!152597)))

(declare-fun e!1579571 () Unit!42940)

(declare-fun Unit!42946 () Unit!42940)

(assert (=> b!2487536 (= e!1579571 Unit!42946)))

(declare-fun b!2487537 () Bool)

(declare-fun Unit!42947 () Unit!42940)

(assert (=> b!2487537 (= e!1579571 Unit!42947)))

(declare-fun e!1579570 () Unit!42940)

(declare-fun lt!893547 () (_ BitVec 64))

(assert (=> b!2487538 (= e!1579570 (forallContained!908 (toList!1695 (map!6358 (v!31713 (underlying!7072 thiss!42540)))) lambda!94764 (tuple2!29315 lt!893547 (apply!7007 (v!31713 (underlying!7072 thiss!42540)) lt!893547))))))

(declare-fun c!395345 () Bool)

(declare-fun contains!5262 (List!29343 tuple2!29314) Bool)

(assert (=> b!2487538 (= c!395345 (not (contains!5262 (toList!1695 (map!6358 (v!31713 (underlying!7072 thiss!42540)))) (tuple2!29315 lt!893547 (apply!7007 (v!31713 (underlying!7072 thiss!42540)) lt!893547)))))))

(declare-fun lt!893553 () Unit!42940)

(declare-fun e!1579573 () Unit!42940)

(assert (=> b!2487538 (= lt!893553 e!1579573)))

(declare-fun lt!893558 () ListLongMap!645)

(declare-fun c!395348 () Bool)

(declare-fun call!152599 () (_ BitVec 64))

(declare-fun bm!152591 () Bool)

(declare-fun call!152600 () List!29342)

(declare-fun apply!7008 (ListLongMap!645 (_ BitVec 64)) List!29342)

(assert (=> bm!152591 (= call!152600 (apply!7008 (ite c!395348 lt!893558 call!152597) call!152599))))

(declare-fun b!2487539 () Bool)

(declare-fun e!1579572 () Bool)

(assert (=> b!2487539 (= e!1579572 call!152598)))

(declare-fun bm!152592 () Bool)

(assert (=> bm!152592 (= call!152597 (map!6358 (v!31713 (underlying!7072 thiss!42540))))))

(declare-fun d!713985 () Bool)

(declare-fun lt!893548 () Bool)

(assert (=> d!713985 (= lt!893548 (contains!5261 (map!6357 thiss!42540) key!2246))))

(declare-fun e!1579568 () Bool)

(assert (=> d!713985 (= lt!893548 e!1579568)))

(declare-fun res!1053001 () Bool)

(assert (=> d!713985 (=> (not res!1053001) (not e!1579568))))

(declare-fun contains!5263 (MutLongMap!3432 (_ BitVec 64)) Bool)

(assert (=> d!713985 (= res!1053001 (contains!5263 (v!31713 (underlying!7072 thiss!42540)) lt!893547))))

(declare-fun lt!893542 () Unit!42940)

(declare-fun e!1579567 () Unit!42940)

(assert (=> d!713985 (= lt!893542 e!1579567)))

(assert (=> d!713985 (= c!395348 (contains!5261 (extractMap!200 (toList!1695 (map!6358 (v!31713 (underlying!7072 thiss!42540))))) key!2246))))

(declare-fun lt!893546 () Unit!42940)

(assert (=> d!713985 (= lt!893546 e!1579570)))

(declare-fun c!395346 () Bool)

(assert (=> d!713985 (= c!395346 (contains!5263 (v!31713 (underlying!7072 thiss!42540)) lt!893547))))

(assert (=> d!713985 (= lt!893547 (hash!793 (hashF!5365 thiss!42540) key!2246))))

(assert (=> d!713985 (valid!2644 thiss!42540)))

(assert (=> d!713985 (= (contains!5260 thiss!42540 key!2246) lt!893548)))

(declare-fun b!2487534 () Bool)

(declare-fun Unit!42948 () Unit!42940)

(assert (=> b!2487534 (= e!1579573 Unit!42948)))

(declare-fun bm!152593 () Bool)

(declare-fun getPair!89 (List!29342 K!5665) Option!5796)

(assert (=> bm!152593 (= call!152596 (getPair!89 call!152600 key!2246))))

(declare-fun bm!152594 () Bool)

(assert (=> bm!152594 (= call!152599 (hash!793 (hashF!5365 thiss!42540) key!2246))))

(declare-fun b!2487540 () Bool)

(assert (=> b!2487540 (= e!1579568 (isDefined!4618 (getPair!89 (apply!7007 (v!31713 (underlying!7072 thiss!42540)) lt!893547) key!2246)))))

(declare-fun b!2487541 () Bool)

(declare-fun Unit!42949 () Unit!42940)

(assert (=> b!2487541 (= e!1579570 Unit!42949)))

(declare-fun call!152595 () Bool)

(declare-fun bm!152595 () Bool)

(declare-fun contains!5264 (ListLongMap!645 (_ BitVec 64)) Bool)

(assert (=> bm!152595 (= call!152595 (contains!5264 (ite c!395348 lt!893558 call!152597) call!152599))))

(declare-fun b!2487542 () Bool)

(assert (=> b!2487542 (= e!1579567 e!1579571)))

(declare-fun res!1053000 () Bool)

(assert (=> b!2487542 (= res!1053000 call!152595)))

(assert (=> b!2487542 (=> (not res!1053000) (not e!1579569))))

(declare-fun c!395347 () Bool)

(assert (=> b!2487542 (= c!395347 e!1579569)))

(declare-fun b!2487543 () Bool)

(assert (=> b!2487543 false))

(declare-fun lt!893554 () Unit!42940)

(declare-fun lt!893552 () Unit!42940)

(assert (=> b!2487543 (= lt!893554 lt!893552)))

(declare-fun lt!893543 () List!29343)

(declare-fun lt!893556 () List!29342)

(assert (=> b!2487543 (contains!5262 lt!893543 (tuple2!29315 lt!893547 lt!893556))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!95 (List!29343 (_ BitVec 64) List!29342) Unit!42940)

(assert (=> b!2487543 (= lt!893552 (lemmaGetValueByKeyImpliesContainsTuple!95 lt!893543 lt!893547 lt!893556))))

(assert (=> b!2487543 (= lt!893556 (apply!7007 (v!31713 (underlying!7072 thiss!42540)) lt!893547))))

(assert (=> b!2487543 (= lt!893543 (toList!1695 (map!6358 (v!31713 (underlying!7072 thiss!42540)))))))

(declare-fun lt!893549 () Unit!42940)

(declare-fun lt!893559 () Unit!42940)

(assert (=> b!2487543 (= lt!893549 lt!893559)))

(declare-fun lt!893550 () List!29343)

(declare-datatypes ((Option!5797 0))(
  ( (None!5796) (Some!5796 (v!31719 List!29342)) )
))
(declare-fun isDefined!4619 (Option!5797) Bool)

(declare-fun getValueByKey!164 (List!29343 (_ BitVec 64)) Option!5797)

(assert (=> b!2487543 (isDefined!4619 (getValueByKey!164 lt!893550 lt!893547))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!121 (List!29343 (_ BitVec 64)) Unit!42940)

(assert (=> b!2487543 (= lt!893559 (lemmaContainsKeyImpliesGetValueByKeyDefined!121 lt!893550 lt!893547))))

(assert (=> b!2487543 (= lt!893550 (toList!1695 (map!6358 (v!31713 (underlying!7072 thiss!42540)))))))

(declare-fun lt!893551 () Unit!42940)

(declare-fun lt!893544 () Unit!42940)

(assert (=> b!2487543 (= lt!893551 lt!893544)))

(declare-fun lt!893540 () List!29343)

(declare-fun containsKey!180 (List!29343 (_ BitVec 64)) Bool)

(assert (=> b!2487543 (containsKey!180 lt!893540 lt!893547)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!90 (List!29343 (_ BitVec 64)) Unit!42940)

(assert (=> b!2487543 (= lt!893544 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!90 lt!893540 lt!893547))))

(assert (=> b!2487543 (= lt!893540 (toList!1695 (map!6358 (v!31713 (underlying!7072 thiss!42540)))))))

(declare-fun Unit!42950 () Unit!42940)

(assert (=> b!2487543 (= e!1579573 Unit!42950)))

(declare-fun b!2487544 () Bool)

(declare-fun lt!893555 () Unit!42940)

(assert (=> b!2487544 (= e!1579567 lt!893555)))

(assert (=> b!2487544 (= lt!893558 call!152597)))

(declare-fun lemmaInGenericMapThenInLongMap!89 (ListLongMap!645 K!5665 Hashable!3342) Unit!42940)

(assert (=> b!2487544 (= lt!893555 (lemmaInGenericMapThenInLongMap!89 lt!893558 key!2246 (hashF!5365 thiss!42540)))))

(declare-fun res!1053002 () Bool)

(assert (=> b!2487544 (= res!1053002 call!152595)))

(assert (=> b!2487544 (=> (not res!1053002) (not e!1579572))))

(assert (=> b!2487544 e!1579572))

(assert (= (and d!713985 c!395346) b!2487538))

(assert (= (and d!713985 (not c!395346)) b!2487541))

(assert (= (and b!2487538 c!395345) b!2487543))

(assert (= (and b!2487538 (not c!395345)) b!2487534))

(assert (= (and d!713985 c!395348) b!2487544))

(assert (= (and d!713985 (not c!395348)) b!2487542))

(assert (= (and b!2487544 res!1053002) b!2487539))

(assert (= (and b!2487542 res!1053000) b!2487535))

(assert (= (and b!2487542 c!395347) b!2487536))

(assert (= (and b!2487542 (not c!395347)) b!2487537))

(assert (= (or b!2487544 b!2487542 b!2487535 b!2487536) bm!152592))

(assert (= (or b!2487544 b!2487539 b!2487542 b!2487535) bm!152594))

(assert (= (or b!2487544 b!2487542) bm!152595))

(assert (= (or b!2487539 b!2487535) bm!152591))

(assert (= (or b!2487539 b!2487535) bm!152593))

(assert (= (or b!2487539 b!2487535) bm!152590))

(assert (= (and d!713985 res!1053001) b!2487540))

(assert (=> bm!152592 m!2856235))

(declare-fun m!2856303 () Bool)

(assert (=> bm!152590 m!2856303))

(assert (=> b!2487538 m!2856235))

(declare-fun m!2856305 () Bool)

(assert (=> b!2487538 m!2856305))

(declare-fun m!2856307 () Bool)

(assert (=> b!2487538 m!2856307))

(declare-fun m!2856309 () Bool)

(assert (=> b!2487538 m!2856309))

(declare-fun m!2856311 () Bool)

(assert (=> bm!152591 m!2856311))

(assert (=> bm!152594 m!2856245))

(declare-fun m!2856313 () Bool)

(assert (=> b!2487543 m!2856313))

(assert (=> b!2487543 m!2856235))

(declare-fun m!2856315 () Bool)

(assert (=> b!2487543 m!2856315))

(declare-fun m!2856317 () Bool)

(assert (=> b!2487543 m!2856317))

(assert (=> b!2487543 m!2856305))

(declare-fun m!2856319 () Bool)

(assert (=> b!2487543 m!2856319))

(declare-fun m!2856321 () Bool)

(assert (=> b!2487543 m!2856321))

(declare-fun m!2856323 () Bool)

(assert (=> b!2487543 m!2856323))

(assert (=> b!2487543 m!2856319))

(declare-fun m!2856325 () Bool)

(assert (=> b!2487543 m!2856325))

(declare-fun m!2856327 () Bool)

(assert (=> b!2487536 m!2856327))

(assert (=> b!2487536 m!2856327))

(declare-fun m!2856329 () Bool)

(assert (=> b!2487536 m!2856329))

(declare-fun m!2856331 () Bool)

(assert (=> b!2487536 m!2856331))

(declare-fun m!2856333 () Bool)

(assert (=> d!713985 m!2856333))

(declare-fun m!2856335 () Bool)

(assert (=> d!713985 m!2856335))

(assert (=> d!713985 m!2856245))

(assert (=> d!713985 m!2856333))

(assert (=> d!713985 m!2856221))

(assert (=> d!713985 m!2856235))

(assert (=> d!713985 m!2856237))

(assert (=> d!713985 m!2856237))

(declare-fun m!2856337 () Bool)

(assert (=> d!713985 m!2856337))

(declare-fun m!2856339 () Bool)

(assert (=> d!713985 m!2856339))

(declare-fun m!2856341 () Bool)

(assert (=> bm!152595 m!2856341))

(assert (=> b!2487540 m!2856305))

(assert (=> b!2487540 m!2856305))

(declare-fun m!2856343 () Bool)

(assert (=> b!2487540 m!2856343))

(assert (=> b!2487540 m!2856343))

(declare-fun m!2856345 () Bool)

(assert (=> b!2487540 m!2856345))

(declare-fun m!2856347 () Bool)

(assert (=> b!2487544 m!2856347))

(declare-fun m!2856349 () Bool)

(assert (=> bm!152593 m!2856349))

(assert (=> b!2487490 d!713985))

(declare-fun d!713987 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3983 (List!29342) (InoxSet tuple2!29308))

(assert (=> d!713987 (= (eq!74 call!152582 e!1579538) (= (content!3983 (toList!1694 call!152582)) (content!3983 (toList!1694 e!1579538))))))

(declare-fun bs!468227 () Bool)

(assert (= bs!468227 d!713987))

(declare-fun m!2856351 () Bool)

(assert (=> bs!468227 m!2856351))

(declare-fun m!2856353 () Bool)

(assert (=> bs!468227 m!2856353))

(assert (=> bm!152577 d!713987))

(assert (=> b!2487491 d!713983))

(declare-fun bs!468228 () Bool)

(declare-fun d!713989 () Bool)

(assert (= bs!468228 (and d!713989 b!2487501)))

(declare-fun lambda!94767 () Int)

(assert (=> bs!468228 (= lambda!94767 lambda!94757)))

(declare-fun bs!468229 () Bool)

(assert (= bs!468229 (and d!713989 b!2487508)))

(assert (=> bs!468229 (= lambda!94767 lambda!94760)))

(declare-fun bs!468230 () Bool)

(assert (= bs!468230 (and d!713989 b!2487510)))

(assert (=> bs!468230 (= lambda!94767 lambda!94761)))

(declare-fun bs!468231 () Bool)

(assert (= bs!468231 (and d!713989 b!2487538)))

(assert (=> bs!468231 (= lambda!94767 lambda!94764)))

(assert (=> d!713989 (eq!74 (extractMap!200 (toList!1695 (+!119 lt!893484 (tuple2!29315 lt!893499 lt!893490)))) (-!130 (extractMap!200 (toList!1695 lt!893484)) key!2246))))

(declare-fun lt!893562 () Unit!42940)

(declare-fun choose!14723 (ListLongMap!645 (_ BitVec 64) List!29342 K!5665 Hashable!3342) Unit!42940)

(assert (=> d!713989 (= lt!893562 (choose!14723 lt!893484 lt!893499 lt!893490 key!2246 (hashF!5365 (_2!17197 lt!893496))))))

(assert (=> d!713989 (forall!6023 (toList!1695 lt!893484) lambda!94767)))

(assert (=> d!713989 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!33 lt!893484 lt!893499 lt!893490 key!2246 (hashF!5365 (_2!17197 lt!893496))) lt!893562)))

(declare-fun bs!468232 () Bool)

(assert (= bs!468232 d!713989))

(assert (=> bs!468232 m!2856275))

(assert (=> bs!468232 m!2856281))

(declare-fun m!2856355 () Bool)

(assert (=> bs!468232 m!2856355))

(assert (=> bs!468232 m!2856281))

(declare-fun m!2856357 () Bool)

(assert (=> bs!468232 m!2856357))

(assert (=> bs!468232 m!2856267))

(declare-fun m!2856359 () Bool)

(assert (=> bs!468232 m!2856359))

(assert (=> bs!468232 m!2856355))

(assert (=> bs!468232 m!2856275))

(declare-fun m!2856361 () Bool)

(assert (=> bs!468232 m!2856361))

(assert (=> b!2487492 d!713989))

(declare-fun d!713991 () Bool)

(declare-fun res!1053007 () Bool)

(declare-fun e!1579578 () Bool)

(assert (=> d!713991 (=> res!1053007 e!1579578)))

(assert (=> d!713991 (= res!1053007 ((_ is Nil!29243) (toList!1695 lt!893497)))))

(assert (=> d!713991 (= (forall!6023 (toList!1695 lt!893497) lambda!94757) e!1579578)))

(declare-fun b!2487549 () Bool)

(declare-fun e!1579579 () Bool)

(assert (=> b!2487549 (= e!1579578 e!1579579)))

(declare-fun res!1053008 () Bool)

(assert (=> b!2487549 (=> (not res!1053008) (not e!1579579))))

(declare-fun dynLambda!12514 (Int tuple2!29314) Bool)

(assert (=> b!2487549 (= res!1053008 (dynLambda!12514 lambda!94757 (h!34662 (toList!1695 lt!893497))))))

(declare-fun b!2487550 () Bool)

(assert (=> b!2487550 (= e!1579579 (forall!6023 (t!211040 (toList!1695 lt!893497)) lambda!94757))))

(assert (= (and d!713991 (not res!1053007)) b!2487549))

(assert (= (and b!2487549 res!1053008) b!2487550))

(declare-fun b_lambda!76419 () Bool)

(assert (=> (not b_lambda!76419) (not b!2487549)))

(declare-fun m!2856363 () Bool)

(assert (=> b!2487549 m!2856363))

(declare-fun m!2856365 () Bool)

(assert (=> b!2487550 m!2856365))

(assert (=> b!2487492 d!713991))

(declare-fun bs!468233 () Bool)

(declare-fun d!713993 () Bool)

(assert (= bs!468233 (and d!713993 b!2487501)))

(declare-fun lambda!94770 () Int)

(assert (=> bs!468233 (= lambda!94770 lambda!94757)))

(declare-fun bs!468234 () Bool)

(assert (= bs!468234 (and d!713993 b!2487538)))

(assert (=> bs!468234 (= lambda!94770 lambda!94764)))

(declare-fun bs!468235 () Bool)

(assert (= bs!468235 (and d!713993 b!2487508)))

(assert (=> bs!468235 (= lambda!94770 lambda!94760)))

(declare-fun bs!468236 () Bool)

(assert (= bs!468236 (and d!713993 b!2487510)))

(assert (=> bs!468236 (= lambda!94770 lambda!94761)))

(declare-fun bs!468237 () Bool)

(assert (= bs!468237 (and d!713993 d!713989)))

(assert (=> bs!468237 (= lambda!94770 lambda!94767)))

(declare-fun lt!893565 () ListMap!1173)

(declare-fun invariantList!428 (List!29342) Bool)

(assert (=> d!713993 (invariantList!428 (toList!1694 lt!893565))))

(declare-fun e!1579582 () ListMap!1173)

(assert (=> d!713993 (= lt!893565 e!1579582)))

(declare-fun c!395351 () Bool)

(assert (=> d!713993 (= c!395351 ((_ is Cons!29243) (toList!1695 lt!893483)))))

(assert (=> d!713993 (forall!6023 (toList!1695 lt!893483) lambda!94770)))

(assert (=> d!713993 (= (extractMap!200 (toList!1695 lt!893483)) lt!893565)))

(declare-fun b!2487555 () Bool)

(declare-fun addToMapMapFromBucket!20 (List!29342 ListMap!1173) ListMap!1173)

(assert (=> b!2487555 (= e!1579582 (addToMapMapFromBucket!20 (_2!17199 (h!34662 (toList!1695 lt!893483))) (extractMap!200 (t!211040 (toList!1695 lt!893483)))))))

(declare-fun b!2487556 () Bool)

(assert (=> b!2487556 (= e!1579582 (ListMap!1174 Nil!29242))))

(assert (= (and d!713993 c!395351) b!2487555))

(assert (= (and d!713993 (not c!395351)) b!2487556))

(declare-fun m!2856367 () Bool)

(assert (=> d!713993 m!2856367))

(declare-fun m!2856369 () Bool)

(assert (=> d!713993 m!2856369))

(declare-fun m!2856371 () Bool)

(assert (=> b!2487555 m!2856371))

(assert (=> b!2487555 m!2856371))

(declare-fun m!2856373 () Bool)

(assert (=> b!2487555 m!2856373))

(assert (=> b!2487492 d!713993))

(declare-fun d!713995 () Bool)

(assert (=> d!713995 true))

(assert (=> d!713995 true))

(declare-fun lambda!94773 () Int)

(declare-fun forall!6024 (List!29342 Int) Bool)

(assert (=> d!713995 (= (allKeysSameHash!100 lt!893486 lt!893499 (hashF!5365 (_2!17197 lt!893496))) (forall!6024 lt!893486 lambda!94773))))

(declare-fun bs!468238 () Bool)

(assert (= bs!468238 d!713995))

(declare-fun m!2856375 () Bool)

(assert (=> bs!468238 m!2856375))

(assert (=> b!2487492 d!713995))

(declare-fun d!713997 () Bool)

(declare-fun res!1053009 () Bool)

(declare-fun e!1579583 () Bool)

(assert (=> d!713997 (=> res!1053009 e!1579583)))

(assert (=> d!713997 (= res!1053009 ((_ is Nil!29243) (toList!1695 lt!893483)))))

(assert (=> d!713997 (= (forall!6023 (toList!1695 lt!893483) lambda!94757) e!1579583)))

(declare-fun b!2487561 () Bool)

(declare-fun e!1579584 () Bool)

(assert (=> b!2487561 (= e!1579583 e!1579584)))

(declare-fun res!1053010 () Bool)

(assert (=> b!2487561 (=> (not res!1053010) (not e!1579584))))

(assert (=> b!2487561 (= res!1053010 (dynLambda!12514 lambda!94757 (h!34662 (toList!1695 lt!893483))))))

(declare-fun b!2487562 () Bool)

(assert (=> b!2487562 (= e!1579584 (forall!6023 (t!211040 (toList!1695 lt!893483)) lambda!94757))))

(assert (= (and d!713997 (not res!1053009)) b!2487561))

(assert (= (and b!2487561 res!1053010) b!2487562))

(declare-fun b_lambda!76421 () Bool)

(assert (=> (not b_lambda!76421) (not b!2487561)))

(declare-fun m!2856377 () Bool)

(assert (=> b!2487561 m!2856377))

(declare-fun m!2856379 () Bool)

(assert (=> b!2487562 m!2856379))

(assert (=> b!2487492 d!713997))

(declare-fun d!713999 () Bool)

(declare-fun e!1579587 () Bool)

(assert (=> d!713999 e!1579587))

(declare-fun res!1053015 () Bool)

(assert (=> d!713999 (=> (not res!1053015) (not e!1579587))))

(declare-fun lt!893577 () ListLongMap!645)

(assert (=> d!713999 (= res!1053015 (contains!5264 lt!893577 (_1!17199 (tuple2!29315 lt!893499 lt!893490))))))

(declare-fun lt!893574 () List!29343)

(assert (=> d!713999 (= lt!893577 (ListLongMap!646 lt!893574))))

(declare-fun lt!893576 () Unit!42940)

(declare-fun lt!893575 () Unit!42940)

(assert (=> d!713999 (= lt!893576 lt!893575)))

(assert (=> d!713999 (= (getValueByKey!164 lt!893574 (_1!17199 (tuple2!29315 lt!893499 lt!893490))) (Some!5796 (_2!17199 (tuple2!29315 lt!893499 lt!893490))))))

(declare-fun lemmaContainsTupThenGetReturnValue!30 (List!29343 (_ BitVec 64) List!29342) Unit!42940)

(assert (=> d!713999 (= lt!893575 (lemmaContainsTupThenGetReturnValue!30 lt!893574 (_1!17199 (tuple2!29315 lt!893499 lt!893490)) (_2!17199 (tuple2!29315 lt!893499 lt!893490))))))

(declare-fun insertStrictlySorted!24 (List!29343 (_ BitVec 64) List!29342) List!29343)

(assert (=> d!713999 (= lt!893574 (insertStrictlySorted!24 (toList!1695 lt!893484) (_1!17199 (tuple2!29315 lt!893499 lt!893490)) (_2!17199 (tuple2!29315 lt!893499 lt!893490))))))

(assert (=> d!713999 (= (+!119 lt!893484 (tuple2!29315 lt!893499 lt!893490)) lt!893577)))

(declare-fun b!2487567 () Bool)

(declare-fun res!1053016 () Bool)

(assert (=> b!2487567 (=> (not res!1053016) (not e!1579587))))

(assert (=> b!2487567 (= res!1053016 (= (getValueByKey!164 (toList!1695 lt!893577) (_1!17199 (tuple2!29315 lt!893499 lt!893490))) (Some!5796 (_2!17199 (tuple2!29315 lt!893499 lt!893490)))))))

(declare-fun b!2487568 () Bool)

(assert (=> b!2487568 (= e!1579587 (contains!5262 (toList!1695 lt!893577) (tuple2!29315 lt!893499 lt!893490)))))

(assert (= (and d!713999 res!1053015) b!2487567))

(assert (= (and b!2487567 res!1053016) b!2487568))

(declare-fun m!2856381 () Bool)

(assert (=> d!713999 m!2856381))

(declare-fun m!2856383 () Bool)

(assert (=> d!713999 m!2856383))

(declare-fun m!2856385 () Bool)

(assert (=> d!713999 m!2856385))

(declare-fun m!2856387 () Bool)

(assert (=> d!713999 m!2856387))

(declare-fun m!2856389 () Bool)

(assert (=> b!2487567 m!2856389))

(declare-fun m!2856391 () Bool)

(assert (=> b!2487568 m!2856391))

(assert (=> b!2487492 d!713999))

(declare-fun d!714001 () Bool)

(declare-fun e!1579590 () Bool)

(assert (=> d!714001 e!1579590))

(declare-fun res!1053019 () Bool)

(assert (=> d!714001 (=> (not res!1053019) (not e!1579590))))

(declare-fun lt!893580 () ListMap!1173)

(assert (=> d!714001 (= res!1053019 (not (contains!5261 lt!893580 key!2246)))))

(declare-fun removePresrvNoDuplicatedKeys!24 (List!29342 K!5665) List!29342)

(assert (=> d!714001 (= lt!893580 (ListMap!1174 (removePresrvNoDuplicatedKeys!24 (toList!1694 (extractMap!200 (toList!1695 lt!893484))) key!2246)))))

(assert (=> d!714001 (= (-!130 (extractMap!200 (toList!1695 lt!893484)) key!2246) lt!893580)))

(declare-fun b!2487571 () Bool)

(declare-datatypes ((List!29344 0))(
  ( (Nil!29244) (Cons!29244 (h!34664 K!5665) (t!211043 List!29344)) )
))
(declare-fun content!3984 (List!29344) (InoxSet K!5665))

(declare-fun keys!9391 (ListMap!1173) List!29344)

(assert (=> b!2487571 (= e!1579590 (= ((_ map and) (content!3984 (keys!9391 (extractMap!200 (toList!1695 lt!893484)))) ((_ map not) (store ((as const (Array K!5665 Bool)) false) key!2246 true))) (content!3984 (keys!9391 lt!893580))))))

(assert (= (and d!714001 res!1053019) b!2487571))

(declare-fun m!2856393 () Bool)

(assert (=> d!714001 m!2856393))

(declare-fun m!2856395 () Bool)

(assert (=> d!714001 m!2856395))

(declare-fun m!2856397 () Bool)

(assert (=> b!2487571 m!2856397))

(declare-fun m!2856399 () Bool)

(assert (=> b!2487571 m!2856399))

(declare-fun m!2856401 () Bool)

(assert (=> b!2487571 m!2856401))

(declare-fun m!2856403 () Bool)

(assert (=> b!2487571 m!2856403))

(assert (=> b!2487571 m!2856403))

(declare-fun m!2856405 () Bool)

(assert (=> b!2487571 m!2856405))

(assert (=> b!2487571 m!2856275))

(assert (=> b!2487571 m!2856397))

(assert (=> b!2487492 d!714001))

(declare-fun bs!468239 () Bool)

(declare-fun d!714003 () Bool)

(assert (= bs!468239 (and d!714003 d!713993)))

(declare-fun lambda!94778 () Int)

(assert (=> bs!468239 (= lambda!94778 lambda!94770)))

(declare-fun bs!468240 () Bool)

(assert (= bs!468240 (and d!714003 b!2487501)))

(assert (=> bs!468240 (= lambda!94778 lambda!94757)))

(declare-fun bs!468241 () Bool)

(assert (= bs!468241 (and d!714003 b!2487538)))

(assert (=> bs!468241 (= lambda!94778 lambda!94764)))

(declare-fun bs!468242 () Bool)

(assert (= bs!468242 (and d!714003 b!2487508)))

(assert (=> bs!468242 (= lambda!94778 lambda!94760)))

(declare-fun bs!468243 () Bool)

(assert (= bs!468243 (and d!714003 b!2487510)))

(assert (=> bs!468243 (= lambda!94778 lambda!94761)))

(declare-fun bs!468244 () Bool)

(assert (= bs!468244 (and d!714003 d!713989)))

(assert (=> bs!468244 (= lambda!94778 lambda!94767)))

(declare-fun e!1579593 () Bool)

(assert (=> d!714003 e!1579593))

(declare-fun res!1053022 () Bool)

(assert (=> d!714003 (=> (not res!1053022) (not e!1579593))))

(declare-fun lt!893586 () ListLongMap!645)

(assert (=> d!714003 (= res!1053022 (forall!6023 (toList!1695 lt!893586) lambda!94778))))

(assert (=> d!714003 (= lt!893586 (+!119 lt!893484 (tuple2!29315 lt!893499 lt!893490)))))

(declare-fun lt!893585 () Unit!42940)

(declare-fun choose!14724 (ListLongMap!645 (_ BitVec 64) List!29342 Hashable!3342) Unit!42940)

(assert (=> d!714003 (= lt!893585 (choose!14724 lt!893484 lt!893499 lt!893490 (hashF!5365 (_2!17197 lt!893496))))))

(assert (=> d!714003 (forall!6023 (toList!1695 lt!893484) lambda!94778)))

(assert (=> d!714003 (= (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!80 lt!893484 lt!893499 lt!893490 (hashF!5365 (_2!17197 lt!893496))) lt!893585)))

(declare-fun b!2487574 () Bool)

(assert (=> b!2487574 (= e!1579593 (allKeysSameHashInMap!205 lt!893586 (hashF!5365 (_2!17197 lt!893496))))))

(assert (= (and d!714003 res!1053022) b!2487574))

(declare-fun m!2856407 () Bool)

(assert (=> d!714003 m!2856407))

(assert (=> d!714003 m!2856267))

(declare-fun m!2856409 () Bool)

(assert (=> d!714003 m!2856409))

(declare-fun m!2856411 () Bool)

(assert (=> d!714003 m!2856411))

(declare-fun m!2856413 () Bool)

(assert (=> b!2487574 m!2856413))

(assert (=> b!2487492 d!714003))

(declare-fun d!714005 () Bool)

(assert (=> d!714005 (= (eq!74 (extractMap!200 (toList!1695 lt!893483)) (-!130 (extractMap!200 (toList!1695 lt!893484)) key!2246)) (= (content!3983 (toList!1694 (extractMap!200 (toList!1695 lt!893483)))) (content!3983 (toList!1694 (-!130 (extractMap!200 (toList!1695 lt!893484)) key!2246)))))))

(declare-fun bs!468245 () Bool)

(assert (= bs!468245 d!714005))

(declare-fun m!2856415 () Bool)

(assert (=> bs!468245 m!2856415))

(declare-fun m!2856417 () Bool)

(assert (=> bs!468245 m!2856417))

(assert (=> b!2487492 d!714005))

(declare-fun d!714007 () Bool)

(declare-fun map!6359 (LongMapFixedSize!6864) ListLongMap!645)

(assert (=> d!714007 (= (map!6358 (v!31713 (underlying!7072 (_2!17197 lt!893496)))) (map!6359 (v!31712 (underlying!7071 (v!31713 (underlying!7072 (_2!17197 lt!893496)))))))))

(declare-fun bs!468246 () Bool)

(assert (= bs!468246 d!714007))

(declare-fun m!2856419 () Bool)

(assert (=> bs!468246 m!2856419))

(assert (=> b!2487492 d!714007))

(declare-fun bs!468247 () Bool)

(declare-fun d!714009 () Bool)

(assert (= bs!468247 (and d!714009 d!713995)))

(declare-fun lambda!94779 () Int)

(assert (=> bs!468247 (= lambda!94779 lambda!94773)))

(assert (=> d!714009 true))

(assert (=> d!714009 true))

(assert (=> d!714009 (= (allKeysSameHash!100 lt!893490 lt!893499 (hashF!5365 (_2!17197 lt!893496))) (forall!6024 lt!893490 lambda!94779))))

(declare-fun bs!468248 () Bool)

(assert (= bs!468248 d!714009))

(declare-fun m!2856421 () Bool)

(assert (=> bs!468248 m!2856421))

(assert (=> b!2487492 d!714009))

(declare-fun bs!468249 () Bool)

(declare-fun d!714011 () Bool)

(assert (= bs!468249 (and d!714011 d!713993)))

(declare-fun lambda!94780 () Int)

(assert (=> bs!468249 (= lambda!94780 lambda!94770)))

(declare-fun bs!468250 () Bool)

(assert (= bs!468250 (and d!714011 b!2487501)))

(assert (=> bs!468250 (= lambda!94780 lambda!94757)))

(declare-fun bs!468251 () Bool)

(assert (= bs!468251 (and d!714011 b!2487538)))

(assert (=> bs!468251 (= lambda!94780 lambda!94764)))

(declare-fun bs!468252 () Bool)

(assert (= bs!468252 (and d!714011 b!2487508)))

(assert (=> bs!468252 (= lambda!94780 lambda!94760)))

(declare-fun bs!468253 () Bool)

(assert (= bs!468253 (and d!714011 d!714003)))

(assert (=> bs!468253 (= lambda!94780 lambda!94778)))

(declare-fun bs!468254 () Bool)

(assert (= bs!468254 (and d!714011 b!2487510)))

(assert (=> bs!468254 (= lambda!94780 lambda!94761)))

(declare-fun bs!468255 () Bool)

(assert (= bs!468255 (and d!714011 d!713989)))

(assert (=> bs!468255 (= lambda!94780 lambda!94767)))

(declare-fun lt!893587 () ListMap!1173)

(assert (=> d!714011 (invariantList!428 (toList!1694 lt!893587))))

(declare-fun e!1579594 () ListMap!1173)

(assert (=> d!714011 (= lt!893587 e!1579594)))

(declare-fun c!395352 () Bool)

(assert (=> d!714011 (= c!395352 ((_ is Cons!29243) (toList!1695 lt!893484)))))

(assert (=> d!714011 (forall!6023 (toList!1695 lt!893484) lambda!94780)))

(assert (=> d!714011 (= (extractMap!200 (toList!1695 lt!893484)) lt!893587)))

(declare-fun b!2487575 () Bool)

(assert (=> b!2487575 (= e!1579594 (addToMapMapFromBucket!20 (_2!17199 (h!34662 (toList!1695 lt!893484))) (extractMap!200 (t!211040 (toList!1695 lt!893484)))))))

(declare-fun b!2487576 () Bool)

(assert (=> b!2487576 (= e!1579594 (ListMap!1174 Nil!29242))))

(assert (= (and d!714011 c!395352) b!2487575))

(assert (= (and d!714011 (not c!395352)) b!2487576))

(declare-fun m!2856423 () Bool)

(assert (=> d!714011 m!2856423))

(declare-fun m!2856425 () Bool)

(assert (=> d!714011 m!2856425))

(declare-fun m!2856427 () Bool)

(assert (=> b!2487575 m!2856427))

(assert (=> b!2487575 m!2856427))

(declare-fun m!2856429 () Bool)

(assert (=> b!2487575 m!2856429))

(assert (=> b!2487492 d!714011))

(declare-fun bs!468256 () Bool)

(declare-fun d!714013 () Bool)

(assert (= bs!468256 (and d!714013 d!713993)))

(declare-fun lambda!94783 () Int)

(assert (=> bs!468256 (not (= lambda!94783 lambda!94770))))

(declare-fun bs!468257 () Bool)

(assert (= bs!468257 (and d!714013 b!2487501)))

(assert (=> bs!468257 (not (= lambda!94783 lambda!94757))))

(declare-fun bs!468258 () Bool)

(assert (= bs!468258 (and d!714013 b!2487538)))

(assert (=> bs!468258 (not (= lambda!94783 lambda!94764))))

(declare-fun bs!468259 () Bool)

(assert (= bs!468259 (and d!714013 b!2487508)))

(assert (=> bs!468259 (not (= lambda!94783 lambda!94760))))

(declare-fun bs!468260 () Bool)

(assert (= bs!468260 (and d!714013 d!714003)))

(assert (=> bs!468260 (not (= lambda!94783 lambda!94778))))

(declare-fun bs!468261 () Bool)

(assert (= bs!468261 (and d!714013 b!2487510)))

(assert (=> bs!468261 (not (= lambda!94783 lambda!94761))))

(declare-fun bs!468262 () Bool)

(assert (= bs!468262 (and d!714013 d!714011)))

(assert (=> bs!468262 (not (= lambda!94783 lambda!94780))))

(declare-fun bs!468263 () Bool)

(assert (= bs!468263 (and d!714013 d!713989)))

(assert (=> bs!468263 (not (= lambda!94783 lambda!94767))))

(assert (=> d!714013 true))

(assert (=> d!714013 (allKeysSameHash!100 lt!893486 lt!893499 (hashF!5365 (_2!17197 lt!893496)))))

(declare-fun lt!893590 () Unit!42940)

(declare-fun choose!14725 (List!29343 (_ BitVec 64) List!29342 Hashable!3342) Unit!42940)

(assert (=> d!714013 (= lt!893590 (choose!14725 (toList!1695 lt!893484) lt!893499 lt!893486 (hashF!5365 (_2!17197 lt!893496))))))

(assert (=> d!714013 (forall!6023 (toList!1695 lt!893484) lambda!94783)))

(assert (=> d!714013 (= (lemmaInLongMapAllKeySameHashThenForTuple!93 (toList!1695 lt!893484) lt!893499 lt!893486 (hashF!5365 (_2!17197 lt!893496))) lt!893590)))

(declare-fun bs!468264 () Bool)

(assert (= bs!468264 d!714013))

(assert (=> bs!468264 m!2856287))

(declare-fun m!2856431 () Bool)

(assert (=> bs!468264 m!2856431))

(declare-fun m!2856433 () Bool)

(assert (=> bs!468264 m!2856433))

(assert (=> b!2487492 d!714013))

(declare-fun d!714015 () Bool)

(assert (=> d!714015 (allKeysSameHash!100 (removePairForKey!119 lt!893486 key!2246) lt!893499 (hashF!5365 (_2!17197 lt!893496)))))

(declare-fun lt!893593 () Unit!42940)

(declare-fun choose!14726 (List!29342 K!5665 (_ BitVec 64) Hashable!3342) Unit!42940)

(assert (=> d!714015 (= lt!893593 (choose!14726 lt!893486 key!2246 lt!893499 (hashF!5365 (_2!17197 lt!893496))))))

(assert (=> d!714015 (noDuplicateKeys!127 lt!893486)))

(assert (=> d!714015 (= (lemmaRemovePairForKeyPreservesHash!89 lt!893486 key!2246 lt!893499 (hashF!5365 (_2!17197 lt!893496))) lt!893593)))

(declare-fun bs!468265 () Bool)

(assert (= bs!468265 d!714015))

(assert (=> bs!468265 m!2856241))

(assert (=> bs!468265 m!2856241))

(declare-fun m!2856435 () Bool)

(assert (=> bs!468265 m!2856435))

(declare-fun m!2856437 () Bool)

(assert (=> bs!468265 m!2856437))

(declare-fun m!2856439 () Bool)

(assert (=> bs!468265 m!2856439))

(assert (=> b!2487492 d!714015))

(declare-fun bs!468266 () Bool)

(declare-fun d!714017 () Bool)

(assert (= bs!468266 (and d!714017 d!713993)))

(declare-fun lambda!94786 () Int)

(assert (=> bs!468266 (not (= lambda!94786 lambda!94770))))

(declare-fun bs!468267 () Bool)

(assert (= bs!468267 (and d!714017 b!2487501)))

(assert (=> bs!468267 (not (= lambda!94786 lambda!94757))))

(declare-fun bs!468268 () Bool)

(assert (= bs!468268 (and d!714017 b!2487538)))

(assert (=> bs!468268 (not (= lambda!94786 lambda!94764))))

(declare-fun bs!468269 () Bool)

(assert (= bs!468269 (and d!714017 b!2487508)))

(assert (=> bs!468269 (not (= lambda!94786 lambda!94760))))

(declare-fun bs!468270 () Bool)

(assert (= bs!468270 (and d!714017 d!714003)))

(assert (=> bs!468270 (not (= lambda!94786 lambda!94778))))

(declare-fun bs!468271 () Bool)

(assert (= bs!468271 (and d!714017 d!714013)))

(assert (=> bs!468271 (= lambda!94786 lambda!94783)))

(declare-fun bs!468272 () Bool)

(assert (= bs!468272 (and d!714017 b!2487510)))

(assert (=> bs!468272 (not (= lambda!94786 lambda!94761))))

(declare-fun bs!468273 () Bool)

(assert (= bs!468273 (and d!714017 d!714011)))

(assert (=> bs!468273 (not (= lambda!94786 lambda!94780))))

(declare-fun bs!468274 () Bool)

(assert (= bs!468274 (and d!714017 d!713989)))

(assert (=> bs!468274 (not (= lambda!94786 lambda!94767))))

(assert (=> d!714017 true))

(assert (=> d!714017 (= (allKeysSameHashInMap!205 lt!893483 (hashF!5365 (_2!17197 lt!893496))) (forall!6023 (toList!1695 lt!893483) lambda!94786))))

(declare-fun bs!468275 () Bool)

(assert (= bs!468275 d!714017))

(declare-fun m!2856441 () Bool)

(assert (=> bs!468275 m!2856441))

(assert (=> b!2487502 d!714017))

(declare-fun d!714019 () Bool)

(declare-fun res!1053027 () Bool)

(declare-fun e!1579599 () Bool)

(assert (=> d!714019 (=> res!1053027 e!1579599)))

(assert (=> d!714019 (= res!1053027 (not ((_ is Cons!29242) lt!893490)))))

(assert (=> d!714019 (= (noDuplicateKeys!127 lt!893490) e!1579599)))

(declare-fun b!2487583 () Bool)

(declare-fun e!1579600 () Bool)

(assert (=> b!2487583 (= e!1579599 e!1579600)))

(declare-fun res!1053028 () Bool)

(assert (=> b!2487583 (=> (not res!1053028) (not e!1579600))))

(declare-fun containsKey!181 (List!29342 K!5665) Bool)

(assert (=> b!2487583 (= res!1053028 (not (containsKey!181 (t!211039 lt!893490) (_1!17196 (h!34661 lt!893490)))))))

(declare-fun b!2487584 () Bool)

(assert (=> b!2487584 (= e!1579600 (noDuplicateKeys!127 (t!211039 lt!893490)))))

(assert (= (and d!714019 (not res!1053027)) b!2487583))

(assert (= (and b!2487583 res!1053028) b!2487584))

(declare-fun m!2856443 () Bool)

(assert (=> b!2487583 m!2856443))

(declare-fun m!2856445 () Bool)

(assert (=> b!2487584 m!2856445))

(assert (=> b!2487501 d!714019))

(declare-fun d!714021 () Bool)

(assert (=> d!714021 (dynLambda!12514 lambda!94757 (tuple2!29315 lt!893499 lt!893486))))

(declare-fun lt!893596 () Unit!42940)

(declare-fun choose!14727 (List!29343 Int tuple2!29314) Unit!42940)

(assert (=> d!714021 (= lt!893596 (choose!14727 (toList!1695 lt!893484) lambda!94757 (tuple2!29315 lt!893499 lt!893486)))))

(declare-fun e!1579603 () Bool)

(assert (=> d!714021 e!1579603))

(declare-fun res!1053031 () Bool)

(assert (=> d!714021 (=> (not res!1053031) (not e!1579603))))

(assert (=> d!714021 (= res!1053031 (forall!6023 (toList!1695 lt!893484) lambda!94757))))

(assert (=> d!714021 (= (forallContained!908 (toList!1695 lt!893484) lambda!94757 (tuple2!29315 lt!893499 lt!893486)) lt!893596)))

(declare-fun b!2487587 () Bool)

(assert (=> b!2487587 (= e!1579603 (contains!5262 (toList!1695 lt!893484) (tuple2!29315 lt!893499 lt!893486)))))

(assert (= (and d!714021 res!1053031) b!2487587))

(declare-fun b_lambda!76423 () Bool)

(assert (=> (not b_lambda!76423) (not d!714021)))

(declare-fun m!2856447 () Bool)

(assert (=> d!714021 m!2856447))

(declare-fun m!2856449 () Bool)

(assert (=> d!714021 m!2856449))

(declare-fun m!2856451 () Bool)

(assert (=> d!714021 m!2856451))

(declare-fun m!2856453 () Bool)

(assert (=> b!2487587 m!2856453))

(assert (=> b!2487501 d!714021))

(declare-fun d!714023 () Bool)

(declare-fun hash!798 (Hashable!3342 K!5665) (_ BitVec 64))

(assert (=> d!714023 (= (hash!793 (hashF!5365 thiss!42540) key!2246) (hash!798 (hashF!5365 thiss!42540) key!2246))))

(declare-fun bs!468276 () Bool)

(assert (= bs!468276 d!714023))

(declare-fun m!2856455 () Bool)

(assert (=> bs!468276 m!2856455))

(assert (=> b!2487501 d!714023))

(declare-fun b!2487599 () Bool)

(declare-fun e!1579608 () List!29342)

(assert (=> b!2487599 (= e!1579608 Nil!29242)))

(declare-fun d!714025 () Bool)

(declare-fun lt!893599 () List!29342)

(assert (=> d!714025 (not (containsKey!181 lt!893599 key!2246))))

(declare-fun e!1579609 () List!29342)

(assert (=> d!714025 (= lt!893599 e!1579609)))

(declare-fun c!395358 () Bool)

(assert (=> d!714025 (= c!395358 (and ((_ is Cons!29242) lt!893486) (= (_1!17196 (h!34661 lt!893486)) key!2246)))))

(assert (=> d!714025 (noDuplicateKeys!127 lt!893486)))

(assert (=> d!714025 (= (removePairForKey!119 lt!893486 key!2246) lt!893599)))

(declare-fun b!2487596 () Bool)

(assert (=> b!2487596 (= e!1579609 (t!211039 lt!893486))))

(declare-fun b!2487597 () Bool)

(assert (=> b!2487597 (= e!1579609 e!1579608)))

(declare-fun c!395357 () Bool)

(assert (=> b!2487597 (= c!395357 ((_ is Cons!29242) lt!893486))))

(declare-fun b!2487598 () Bool)

(assert (=> b!2487598 (= e!1579608 (Cons!29242 (h!34661 lt!893486) (removePairForKey!119 (t!211039 lt!893486) key!2246)))))

(assert (= (and d!714025 c!395358) b!2487596))

(assert (= (and d!714025 (not c!395358)) b!2487597))

(assert (= (and b!2487597 c!395357) b!2487598))

(assert (= (and b!2487597 (not c!395357)) b!2487599))

(declare-fun m!2856457 () Bool)

(assert (=> d!714025 m!2856457))

(assert (=> d!714025 m!2856439))

(declare-fun m!2856459 () Bool)

(assert (=> b!2487598 m!2856459))

(assert (=> b!2487501 d!714025))

(assert (=> b!2487501 d!713983))

(declare-fun d!714027 () Bool)

(assert (=> d!714027 (= (map!6358 (v!31713 (underlying!7072 thiss!42540))) (map!6359 (v!31712 (underlying!7071 (v!31713 (underlying!7072 thiss!42540))))))))

(declare-fun bs!468277 () Bool)

(assert (= bs!468277 d!714027))

(declare-fun m!2856461 () Bool)

(assert (=> bs!468277 m!2856461))

(assert (=> b!2487501 d!714027))

(declare-fun d!714029 () Bool)

(declare-fun lt!893602 () ListMap!1173)

(assert (=> d!714029 (invariantList!428 (toList!1694 lt!893602))))

(assert (=> d!714029 (= lt!893602 (extractMap!200 (toList!1695 (map!6358 (v!31713 (underlying!7072 thiss!42540))))))))

(assert (=> d!714029 (valid!2644 thiss!42540)))

(assert (=> d!714029 (= (map!6357 thiss!42540) lt!893602)))

(declare-fun bs!468278 () Bool)

(assert (= bs!468278 d!714029))

(declare-fun m!2856463 () Bool)

(assert (=> bs!468278 m!2856463))

(assert (=> bs!468278 m!2856235))

(assert (=> bs!468278 m!2856333))

(assert (=> bs!468278 m!2856221))

(assert (=> b!2487501 d!714029))

(declare-fun d!714031 () Bool)

(assert (=> d!714031 (noDuplicateKeys!127 (removePairForKey!119 lt!893486 key!2246))))

(declare-fun lt!893605 () Unit!42940)

(declare-fun choose!14728 (List!29342 K!5665) Unit!42940)

(assert (=> d!714031 (= lt!893605 (choose!14728 lt!893486 key!2246))))

(assert (=> d!714031 (noDuplicateKeys!127 lt!893486)))

(assert (=> d!714031 (= (lemmaRemovePairForKeyPreservesNoDuplicateKeys!107 lt!893486 key!2246) lt!893605)))

(declare-fun bs!468279 () Bool)

(assert (= bs!468279 d!714031))

(assert (=> bs!468279 m!2856241))

(assert (=> bs!468279 m!2856241))

(declare-fun m!2856465 () Bool)

(assert (=> bs!468279 m!2856465))

(declare-fun m!2856467 () Bool)

(assert (=> bs!468279 m!2856467))

(assert (=> bs!468279 m!2856439))

(assert (=> b!2487501 d!714031))

(declare-fun d!714033 () Bool)

(declare-fun e!1579612 () Bool)

(assert (=> d!714033 e!1579612))

(declare-fun c!395361 () Bool)

(assert (=> d!714033 (= c!395361 (contains!5263 (v!31713 (underlying!7072 thiss!42540)) lt!893499))))

(declare-fun lt!893608 () List!29342)

(declare-fun apply!7009 (LongMapFixedSize!6864 (_ BitVec 64)) List!29342)

(assert (=> d!714033 (= lt!893608 (apply!7009 (v!31712 (underlying!7071 (v!31713 (underlying!7072 thiss!42540)))) lt!893499))))

(assert (=> d!714033 (valid!2645 (v!31713 (underlying!7072 thiss!42540)))))

(assert (=> d!714033 (= (apply!7007 (v!31713 (underlying!7072 thiss!42540)) lt!893499) lt!893608)))

(declare-fun b!2487604 () Bool)

(declare-fun get!9030 (Option!5797) List!29342)

(assert (=> b!2487604 (= e!1579612 (= lt!893608 (get!9030 (getValueByKey!164 (toList!1695 (map!6358 (v!31713 (underlying!7072 thiss!42540)))) lt!893499))))))

(declare-fun b!2487605 () Bool)

(declare-fun dynLambda!12515 (Int (_ BitVec 64)) List!29342)

(assert (=> b!2487605 (= e!1579612 (= lt!893608 (dynLambda!12515 (defaultEntry!3806 (v!31712 (underlying!7071 (v!31713 (underlying!7072 thiss!42540))))) lt!893499)))))

(assert (=> b!2487605 ((_ is LongMap!3432) (v!31713 (underlying!7072 thiss!42540)))))

(assert (= (and d!714033 c!395361) b!2487604))

(assert (= (and d!714033 (not c!395361)) b!2487605))

(declare-fun b_lambda!76425 () Bool)

(assert (=> (not b_lambda!76425) (not b!2487605)))

(declare-fun t!211042 () Bool)

(declare-fun tb!140415 () Bool)

(assert (=> (and b!2487498 (= (defaultEntry!3806 (v!31712 (underlying!7071 (v!31713 (underlying!7072 thiss!42540))))) (defaultEntry!3806 (v!31712 (underlying!7071 (v!31713 (underlying!7072 thiss!42540)))))) t!211042) tb!140415))

(assert (=> b!2487605 t!211042))

(declare-fun result!173440 () Bool)

(declare-fun b_and!188881 () Bool)

(assert (= b_and!188877 (and (=> t!211042 result!173440) b_and!188881)))

(declare-fun m!2856469 () Bool)

(assert (=> d!714033 m!2856469))

(declare-fun m!2856471 () Bool)

(assert (=> d!714033 m!2856471))

(assert (=> d!714033 m!2856291))

(assert (=> b!2487604 m!2856235))

(declare-fun m!2856473 () Bool)

(assert (=> b!2487604 m!2856473))

(assert (=> b!2487604 m!2856473))

(declare-fun m!2856475 () Bool)

(assert (=> b!2487604 m!2856475))

(declare-fun m!2856477 () Bool)

(assert (=> b!2487605 m!2856477))

(assert (=> b!2487501 d!714033))

(declare-fun b!2487624 () Bool)

(declare-fun e!1579623 () tuple2!29312)

(declare-fun lt!893620 () tuple2!29312)

(assert (=> b!2487624 (= e!1579623 (tuple2!29313 (_1!17198 lt!893620) (_2!17198 lt!893620)))))

(declare-fun repack!37 (MutLongMap!3432) tuple2!29312)

(assert (=> b!2487624 (= lt!893620 (repack!37 (v!31713 (underlying!7072 thiss!42540))))))

(declare-fun b!2487625 () Bool)

(declare-fun res!1053039 () Bool)

(declare-fun e!1579626 () Bool)

(assert (=> b!2487625 (=> (not res!1053039) (not e!1579626))))

(declare-fun lt!893617 () tuple2!29312)

(assert (=> b!2487625 (= res!1053039 (valid!2645 (_2!17198 lt!893617)))))

(declare-fun call!152606 () ListLongMap!645)

(declare-fun call!152605 () ListLongMap!645)

(declare-fun e!1579625 () Bool)

(declare-fun b!2487627 () Bool)

(assert (=> b!2487627 (= e!1579625 (= call!152605 (+!119 call!152606 (tuple2!29315 lt!893499 lt!893490))))))

(declare-fun b!2487628 () Bool)

(declare-fun e!1579627 () Bool)

(assert (=> b!2487628 (= e!1579626 e!1579627)))

(declare-fun c!395368 () Bool)

(assert (=> b!2487628 (= c!395368 (_1!17198 lt!893617))))

(declare-fun b!2487629 () Bool)

(declare-fun e!1579624 () tuple2!29312)

(declare-datatypes ((tuple2!29316 0))(
  ( (tuple2!29317 (_1!17200 Bool) (_2!17200 LongMapFixedSize!6864)) )
))
(declare-fun lt!893619 () tuple2!29316)

(assert (=> b!2487629 (= e!1579624 (tuple2!29313 (_1!17200 lt!893619) (LongMap!3432 (Cell!13546 (_2!17200 lt!893619)))))))

(declare-fun lt!893618 () tuple2!29312)

(declare-fun update!253 (LongMapFixedSize!6864 (_ BitVec 64) List!29342) tuple2!29316)

(assert (=> b!2487629 (= lt!893619 (update!253 (v!31712 (underlying!7071 (_2!17198 lt!893618))) lt!893499 lt!893490))))

(declare-fun b!2487630 () Bool)

(assert (=> b!2487630 (= e!1579627 (= call!152605 call!152606))))

(declare-fun b!2487626 () Bool)

(assert (=> b!2487626 (= e!1579623 (tuple2!29313 true (v!31713 (underlying!7072 thiss!42540))))))

(declare-fun d!714035 () Bool)

(assert (=> d!714035 e!1579626))

(declare-fun res!1053038 () Bool)

(assert (=> d!714035 (=> (not res!1053038) (not e!1579626))))

(assert (=> d!714035 (= res!1053038 ((_ is LongMap!3432) (_2!17198 lt!893617)))))

(assert (=> d!714035 (= lt!893617 e!1579624)))

(declare-fun c!395370 () Bool)

(assert (=> d!714035 (= c!395370 (_1!17198 lt!893618))))

(assert (=> d!714035 (= lt!893618 e!1579623)))

(declare-fun c!395369 () Bool)

(declare-fun imbalanced!33 (MutLongMap!3432) Bool)

(assert (=> d!714035 (= c!395369 (imbalanced!33 (v!31713 (underlying!7072 thiss!42540))))))

(assert (=> d!714035 (valid!2645 (v!31713 (underlying!7072 thiss!42540)))))

(assert (=> d!714035 (= (update!252 (v!31713 (underlying!7072 thiss!42540)) lt!893499 lt!893490) lt!893617)))

(declare-fun b!2487631 () Bool)

(assert (=> b!2487631 (= e!1579624 (tuple2!29313 false (_2!17198 lt!893618)))))

(declare-fun bm!152600 () Bool)

(assert (=> bm!152600 (= call!152605 (map!6358 (_2!17198 lt!893617)))))

(declare-fun bm!152601 () Bool)

(assert (=> bm!152601 (= call!152606 (map!6358 (v!31713 (underlying!7072 thiss!42540))))))

(declare-fun b!2487632 () Bool)

(assert (=> b!2487632 (= e!1579627 e!1579625)))

(declare-fun res!1053040 () Bool)

(assert (=> b!2487632 (= res!1053040 (contains!5264 call!152605 lt!893499))))

(assert (=> b!2487632 (=> (not res!1053040) (not e!1579625))))

(assert (= (and d!714035 c!395369) b!2487624))

(assert (= (and d!714035 (not c!395369)) b!2487626))

(assert (= (and d!714035 c!395370) b!2487629))

(assert (= (and d!714035 (not c!395370)) b!2487631))

(assert (= (and d!714035 res!1053038) b!2487625))

(assert (= (and b!2487625 res!1053039) b!2487628))

(assert (= (and b!2487628 c!395368) b!2487632))

(assert (= (and b!2487628 (not c!395368)) b!2487630))

(assert (= (and b!2487632 res!1053040) b!2487627))

(assert (= (or b!2487632 b!2487627 b!2487630) bm!152600))

(assert (= (or b!2487627 b!2487630) bm!152601))

(declare-fun m!2856479 () Bool)

(assert (=> b!2487629 m!2856479))

(declare-fun m!2856481 () Bool)

(assert (=> b!2487624 m!2856481))

(assert (=> bm!152601 m!2856235))

(declare-fun m!2856483 () Bool)

(assert (=> b!2487625 m!2856483))

(declare-fun m!2856485 () Bool)

(assert (=> b!2487627 m!2856485))

(declare-fun m!2856487 () Bool)

(assert (=> d!714035 m!2856487))

(assert (=> d!714035 m!2856291))

(declare-fun m!2856489 () Bool)

(assert (=> bm!152600 m!2856489))

(declare-fun m!2856491 () Bool)

(assert (=> b!2487632 m!2856491))

(assert (=> b!2487501 d!714035))

(declare-fun d!714037 () Bool)

(assert (=> d!714037 (= (eq!74 (map!6357 (_2!17197 lt!893496)) (-!130 lt!893494 key!2246)) (= (content!3983 (toList!1694 (map!6357 (_2!17197 lt!893496)))) (content!3983 (toList!1694 (-!130 lt!893494 key!2246)))))))

(declare-fun bs!468280 () Bool)

(assert (= bs!468280 d!714037))

(declare-fun m!2856493 () Bool)

(assert (=> bs!468280 m!2856493))

(declare-fun m!2856495 () Bool)

(assert (=> bs!468280 m!2856495))

(assert (=> b!2487485 d!714037))

(declare-fun d!714039 () Bool)

(declare-fun lt!893621 () ListMap!1173)

(assert (=> d!714039 (invariantList!428 (toList!1694 lt!893621))))

(assert (=> d!714039 (= lt!893621 (extractMap!200 (toList!1695 (map!6358 (v!31713 (underlying!7072 (_2!17197 lt!893496)))))))))

(assert (=> d!714039 (valid!2644 (_2!17197 lt!893496))))

(assert (=> d!714039 (= (map!6357 (_2!17197 lt!893496)) lt!893621)))

(declare-fun bs!468281 () Bool)

(assert (= bs!468281 d!714039))

(declare-fun m!2856497 () Bool)

(assert (=> bs!468281 m!2856497))

(assert (=> bs!468281 m!2856289))

(declare-fun m!2856499 () Bool)

(assert (=> bs!468281 m!2856499))

(assert (=> bs!468281 m!2856251))

(assert (=> b!2487485 d!714039))

(declare-fun d!714041 () Bool)

(declare-fun e!1579628 () Bool)

(assert (=> d!714041 e!1579628))

(declare-fun res!1053041 () Bool)

(assert (=> d!714041 (=> (not res!1053041) (not e!1579628))))

(declare-fun lt!893622 () ListMap!1173)

(assert (=> d!714041 (= res!1053041 (not (contains!5261 lt!893622 key!2246)))))

(assert (=> d!714041 (= lt!893622 (ListMap!1174 (removePresrvNoDuplicatedKeys!24 (toList!1694 lt!893494) key!2246)))))

(assert (=> d!714041 (= (-!130 lt!893494 key!2246) lt!893622)))

(declare-fun b!2487633 () Bool)

(assert (=> b!2487633 (= e!1579628 (= ((_ map and) (content!3984 (keys!9391 lt!893494)) ((_ map not) (store ((as const (Array K!5665 Bool)) false) key!2246 true))) (content!3984 (keys!9391 lt!893622))))))

(assert (= (and d!714041 res!1053041) b!2487633))

(declare-fun m!2856501 () Bool)

(assert (=> d!714041 m!2856501))

(declare-fun m!2856503 () Bool)

(assert (=> d!714041 m!2856503))

(declare-fun m!2856505 () Bool)

(assert (=> b!2487633 m!2856505))

(declare-fun m!2856507 () Bool)

(assert (=> b!2487633 m!2856507))

(assert (=> b!2487633 m!2856401))

(declare-fun m!2856509 () Bool)

(assert (=> b!2487633 m!2856509))

(assert (=> b!2487633 m!2856509))

(declare-fun m!2856511 () Bool)

(assert (=> b!2487633 m!2856511))

(assert (=> b!2487633 m!2856505))

(assert (=> b!2487485 d!714041))

(assert (=> b!2487493 d!714041))

(assert (=> b!2487495 d!714039))

(declare-fun b!2487652 () Bool)

(declare-fun e!1579645 () Unit!42940)

(declare-fun lt!893644 () Unit!42940)

(assert (=> b!2487652 (= e!1579645 lt!893644)))

(declare-fun lt!893640 () Unit!42940)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!122 (List!29342 K!5665) Unit!42940)

(assert (=> b!2487652 (= lt!893640 (lemmaContainsKeyImpliesGetValueByKeyDefined!122 (toList!1694 lt!893494) key!2246))))

(declare-datatypes ((Option!5798 0))(
  ( (None!5797) (Some!5797 (v!31720 V!5867)) )
))
(declare-fun isDefined!4620 (Option!5798) Bool)

(declare-fun getValueByKey!165 (List!29342 K!5665) Option!5798)

(assert (=> b!2487652 (isDefined!4620 (getValueByKey!165 (toList!1694 lt!893494) key!2246))))

(declare-fun lt!893639 () Unit!42940)

(assert (=> b!2487652 (= lt!893639 lt!893640)))

(declare-fun lemmaInListThenGetKeysListContains!22 (List!29342 K!5665) Unit!42940)

(assert (=> b!2487652 (= lt!893644 (lemmaInListThenGetKeysListContains!22 (toList!1694 lt!893494) key!2246))))

(declare-fun call!152609 () Bool)

(assert (=> b!2487652 call!152609))

(declare-fun b!2487653 () Bool)

(declare-fun e!1579641 () Bool)

(declare-fun contains!5265 (List!29344 K!5665) Bool)

(assert (=> b!2487653 (= e!1579641 (not (contains!5265 (keys!9391 lt!893494) key!2246)))))

(declare-fun b!2487655 () Bool)

(declare-fun e!1579644 () Unit!42940)

(assert (=> b!2487655 (= e!1579645 e!1579644)))

(declare-fun c!395377 () Bool)

(assert (=> b!2487655 (= c!395377 call!152609)))

(declare-fun b!2487656 () Bool)

(assert (=> b!2487656 false))

(declare-fun lt!893643 () Unit!42940)

(declare-fun lt!893646 () Unit!42940)

(assert (=> b!2487656 (= lt!893643 lt!893646)))

(declare-fun containsKey!182 (List!29342 K!5665) Bool)

(assert (=> b!2487656 (containsKey!182 (toList!1694 lt!893494) key!2246)))

(declare-fun lemmaInGetKeysListThenContainsKey!22 (List!29342 K!5665) Unit!42940)

(assert (=> b!2487656 (= lt!893646 (lemmaInGetKeysListThenContainsKey!22 (toList!1694 lt!893494) key!2246))))

(declare-fun Unit!42951 () Unit!42940)

(assert (=> b!2487656 (= e!1579644 Unit!42951)))

(declare-fun b!2487657 () Bool)

(declare-fun e!1579646 () Bool)

(assert (=> b!2487657 (= e!1579646 (contains!5265 (keys!9391 lt!893494) key!2246))))

(declare-fun b!2487658 () Bool)

(declare-fun e!1579642 () List!29344)

(assert (=> b!2487658 (= e!1579642 (keys!9391 lt!893494))))

(declare-fun bm!152604 () Bool)

(assert (=> bm!152604 (= call!152609 (contains!5265 e!1579642 key!2246))))

(declare-fun c!395379 () Bool)

(declare-fun c!395378 () Bool)

(assert (=> bm!152604 (= c!395379 c!395378)))

(declare-fun b!2487659 () Bool)

(declare-fun getKeysList!25 (List!29342) List!29344)

(assert (=> b!2487659 (= e!1579642 (getKeysList!25 (toList!1694 lt!893494)))))

(declare-fun b!2487660 () Bool)

(declare-fun Unit!42952 () Unit!42940)

(assert (=> b!2487660 (= e!1579644 Unit!42952)))

(declare-fun b!2487654 () Bool)

(declare-fun e!1579643 () Bool)

(assert (=> b!2487654 (= e!1579643 e!1579646)))

(declare-fun res!1053050 () Bool)

(assert (=> b!2487654 (=> (not res!1053050) (not e!1579646))))

(assert (=> b!2487654 (= res!1053050 (isDefined!4620 (getValueByKey!165 (toList!1694 lt!893494) key!2246)))))

(declare-fun d!714043 () Bool)

(assert (=> d!714043 e!1579643))

(declare-fun res!1053048 () Bool)

(assert (=> d!714043 (=> res!1053048 e!1579643)))

(assert (=> d!714043 (= res!1053048 e!1579641)))

(declare-fun res!1053049 () Bool)

(assert (=> d!714043 (=> (not res!1053049) (not e!1579641))))

(declare-fun lt!893641 () Bool)

(assert (=> d!714043 (= res!1053049 (not lt!893641))))

(declare-fun lt!893642 () Bool)

(assert (=> d!714043 (= lt!893641 lt!893642)))

(declare-fun lt!893645 () Unit!42940)

(assert (=> d!714043 (= lt!893645 e!1579645)))

(assert (=> d!714043 (= c!395378 lt!893642)))

(assert (=> d!714043 (= lt!893642 (containsKey!182 (toList!1694 lt!893494) key!2246))))

(assert (=> d!714043 (= (contains!5261 lt!893494 key!2246) lt!893641)))

(assert (= (and d!714043 c!395378) b!2487652))

(assert (= (and d!714043 (not c!395378)) b!2487655))

(assert (= (and b!2487655 c!395377) b!2487656))

(assert (= (and b!2487655 (not c!395377)) b!2487660))

(assert (= (or b!2487652 b!2487655) bm!152604))

(assert (= (and bm!152604 c!395379) b!2487659))

(assert (= (and bm!152604 (not c!395379)) b!2487658))

(assert (= (and d!714043 res!1053049) b!2487653))

(assert (= (and d!714043 (not res!1053048)) b!2487654))

(assert (= (and b!2487654 res!1053050) b!2487657))

(assert (=> b!2487653 m!2856505))

(assert (=> b!2487653 m!2856505))

(declare-fun m!2856513 () Bool)

(assert (=> b!2487653 m!2856513))

(declare-fun m!2856515 () Bool)

(assert (=> b!2487652 m!2856515))

(declare-fun m!2856517 () Bool)

(assert (=> b!2487652 m!2856517))

(assert (=> b!2487652 m!2856517))

(declare-fun m!2856519 () Bool)

(assert (=> b!2487652 m!2856519))

(declare-fun m!2856521 () Bool)

(assert (=> b!2487652 m!2856521))

(declare-fun m!2856523 () Bool)

(assert (=> bm!152604 m!2856523))

(declare-fun m!2856525 () Bool)

(assert (=> b!2487659 m!2856525))

(declare-fun m!2856527 () Bool)

(assert (=> b!2487656 m!2856527))

(declare-fun m!2856529 () Bool)

(assert (=> b!2487656 m!2856529))

(assert (=> b!2487657 m!2856505))

(assert (=> b!2487657 m!2856505))

(assert (=> b!2487657 m!2856513))

(assert (=> b!2487654 m!2856517))

(assert (=> b!2487654 m!2856517))

(assert (=> b!2487654 m!2856519))

(assert (=> d!714043 m!2856527))

(assert (=> b!2487658 m!2856505))

(assert (=> b!2487494 d!714043))

(assert (=> bm!152576 d!714039))

(declare-fun bs!468282 () Bool)

(declare-fun d!714045 () Bool)

(assert (= bs!468282 (and d!714045 d!713993)))

(declare-fun lambda!94787 () Int)

(assert (=> bs!468282 (not (= lambda!94787 lambda!94770))))

(declare-fun bs!468283 () Bool)

(assert (= bs!468283 (and d!714045 b!2487501)))

(assert (=> bs!468283 (not (= lambda!94787 lambda!94757))))

(declare-fun bs!468284 () Bool)

(assert (= bs!468284 (and d!714045 b!2487538)))

(assert (=> bs!468284 (not (= lambda!94787 lambda!94764))))

(declare-fun bs!468285 () Bool)

(assert (= bs!468285 (and d!714045 b!2487508)))

(assert (=> bs!468285 (not (= lambda!94787 lambda!94760))))

(declare-fun bs!468286 () Bool)

(assert (= bs!468286 (and d!714045 d!714003)))

(assert (=> bs!468286 (not (= lambda!94787 lambda!94778))))

(declare-fun bs!468287 () Bool)

(assert (= bs!468287 (and d!714045 d!714013)))

(assert (=> bs!468287 (= lambda!94787 lambda!94783)))

(declare-fun bs!468288 () Bool)

(assert (= bs!468288 (and d!714045 b!2487510)))

(assert (=> bs!468288 (not (= lambda!94787 lambda!94761))))

(declare-fun bs!468289 () Bool)

(assert (= bs!468289 (and d!714045 d!714011)))

(assert (=> bs!468289 (not (= lambda!94787 lambda!94780))))

(declare-fun bs!468290 () Bool)

(assert (= bs!468290 (and d!714045 d!713989)))

(assert (=> bs!468290 (not (= lambda!94787 lambda!94767))))

(declare-fun bs!468291 () Bool)

(assert (= bs!468291 (and d!714045 d!714017)))

(assert (=> bs!468291 (= lambda!94787 lambda!94786)))

(assert (=> d!714045 true))

(assert (=> d!714045 (= (allKeysSameHashInMap!205 lt!893497 (hashF!5365 (_2!17197 lt!893496))) (forall!6023 (toList!1695 lt!893497) lambda!94787))))

(declare-fun bs!468292 () Bool)

(assert (= bs!468292 d!714045))

(declare-fun m!2856531 () Bool)

(assert (=> bs!468292 m!2856531))

(assert (=> b!2487488 d!714045))

(declare-fun e!1579649 () Bool)

(declare-fun b!2487665 () Bool)

(declare-fun tp!796224 () Bool)

(declare-fun tp_is_empty!12433 () Bool)

(assert (=> b!2487665 (= e!1579649 (and tp_is_empty!12431 tp_is_empty!12433 tp!796224))))

(assert (=> b!2487498 (= tp!796217 e!1579649)))

(assert (= (and b!2487498 ((_ is Cons!29242) (zeroValue!3690 (v!31712 (underlying!7071 (v!31713 (underlying!7072 thiss!42540))))))) b!2487665))

(declare-fun tp!796225 () Bool)

(declare-fun e!1579650 () Bool)

(declare-fun b!2487666 () Bool)

(assert (=> b!2487666 (= e!1579650 (and tp_is_empty!12431 tp_is_empty!12433 tp!796225))))

(assert (=> b!2487498 (= tp!796219 e!1579650)))

(assert (= (and b!2487498 ((_ is Cons!29242) (minValue!3690 (v!31712 (underlying!7071 (v!31713 (underlying!7072 thiss!42540))))))) b!2487666))

(declare-fun b!2487667 () Bool)

(declare-fun tp!796226 () Bool)

(declare-fun e!1579651 () Bool)

(assert (=> b!2487667 (= e!1579651 (and tp_is_empty!12431 tp_is_empty!12433 tp!796226))))

(assert (=> b!2487496 (= tp!796221 e!1579651)))

(assert (= (and b!2487496 ((_ is Cons!29242) mapDefault!15822)) b!2487667))

(declare-fun condMapEmpty!15825 () Bool)

(declare-fun mapDefault!15825 () List!29342)

(assert (=> mapNonEmpty!15822 (= condMapEmpty!15825 (= mapRest!15822 ((as const (Array (_ BitVec 32) List!29342)) mapDefault!15825)))))

(declare-fun e!1579656 () Bool)

(declare-fun mapRes!15825 () Bool)

(assert (=> mapNonEmpty!15822 (= tp!796215 (and e!1579656 mapRes!15825))))

(declare-fun mapNonEmpty!15825 () Bool)

(declare-fun tp!796235 () Bool)

(declare-fun e!1579657 () Bool)

(assert (=> mapNonEmpty!15825 (= mapRes!15825 (and tp!796235 e!1579657))))

(declare-fun mapValue!15825 () List!29342)

(declare-fun mapRest!15825 () (Array (_ BitVec 32) List!29342))

(declare-fun mapKey!15825 () (_ BitVec 32))

(assert (=> mapNonEmpty!15825 (= mapRest!15822 (store mapRest!15825 mapKey!15825 mapValue!15825))))

(declare-fun tp!796233 () Bool)

(declare-fun b!2487674 () Bool)

(assert (=> b!2487674 (= e!1579657 (and tp_is_empty!12431 tp_is_empty!12433 tp!796233))))

(declare-fun tp!796234 () Bool)

(declare-fun b!2487675 () Bool)

(assert (=> b!2487675 (= e!1579656 (and tp_is_empty!12431 tp_is_empty!12433 tp!796234))))

(declare-fun mapIsEmpty!15825 () Bool)

(assert (=> mapIsEmpty!15825 mapRes!15825))

(assert (= (and mapNonEmpty!15822 condMapEmpty!15825) mapIsEmpty!15825))

(assert (= (and mapNonEmpty!15822 (not condMapEmpty!15825)) mapNonEmpty!15825))

(assert (= (and mapNonEmpty!15825 ((_ is Cons!29242) mapValue!15825)) b!2487674))

(assert (= (and mapNonEmpty!15822 ((_ is Cons!29242) mapDefault!15825)) b!2487675))

(declare-fun m!2856533 () Bool)

(assert (=> mapNonEmpty!15825 m!2856533))

(declare-fun tp!796236 () Bool)

(declare-fun e!1579658 () Bool)

(declare-fun b!2487676 () Bool)

(assert (=> b!2487676 (= e!1579658 (and tp_is_empty!12431 tp_is_empty!12433 tp!796236))))

(assert (=> mapNonEmpty!15822 (= tp!796220 e!1579658)))

(assert (= (and mapNonEmpty!15822 ((_ is Cons!29242) mapValue!15822)) b!2487676))

(declare-fun b_lambda!76427 () Bool)

(assert (= b_lambda!76423 (or b!2487501 b_lambda!76427)))

(declare-fun bs!468293 () Bool)

(declare-fun d!714047 () Bool)

(assert (= bs!468293 (and d!714047 b!2487501)))

(assert (=> bs!468293 (= (dynLambda!12514 lambda!94757 (tuple2!29315 lt!893499 lt!893486)) (noDuplicateKeys!127 (_2!17199 (tuple2!29315 lt!893499 lt!893486))))))

(declare-fun m!2856535 () Bool)

(assert (=> bs!468293 m!2856535))

(assert (=> d!714021 d!714047))

(declare-fun b_lambda!76429 () Bool)

(assert (= b_lambda!76425 (or (and b!2487498 b_free!72585) b_lambda!76429)))

(declare-fun b_lambda!76431 () Bool)

(assert (= b_lambda!76421 (or b!2487501 b_lambda!76431)))

(declare-fun bs!468294 () Bool)

(declare-fun d!714049 () Bool)

(assert (= bs!468294 (and d!714049 b!2487501)))

(assert (=> bs!468294 (= (dynLambda!12514 lambda!94757 (h!34662 (toList!1695 lt!893483))) (noDuplicateKeys!127 (_2!17199 (h!34662 (toList!1695 lt!893483)))))))

(declare-fun m!2856537 () Bool)

(assert (=> bs!468294 m!2856537))

(assert (=> b!2487561 d!714049))

(declare-fun b_lambda!76433 () Bool)

(assert (= b_lambda!76419 (or b!2487501 b_lambda!76433)))

(declare-fun bs!468295 () Bool)

(declare-fun d!714051 () Bool)

(assert (= bs!468295 (and d!714051 b!2487501)))

(assert (=> bs!468295 (= (dynLambda!12514 lambda!94757 (h!34662 (toList!1695 lt!893497))) (noDuplicateKeys!127 (_2!17199 (h!34662 (toList!1695 lt!893497)))))))

(declare-fun m!2856539 () Bool)

(assert (=> bs!468295 m!2856539))

(assert (=> b!2487549 d!714051))

(check-sat (not bs!468295) (not b!2487674) (not tb!140415) (not b!2487540) (not d!714001) (not d!714003) (not bm!152604) (not b!2487627) (not b!2487666) (not b!2487575) (not b!2487583) (not b!2487508) (not b!2487667) (not d!714013) (not b!2487657) (not b!2487544) b_and!188879 (not b!2487574) (not d!714039) (not d!714041) (not d!714025) (not b!2487624) (not d!713987) (not b!2487598) (not b!2487632) (not d!714005) (not b!2487568) tp_is_empty!12431 (not b!2487675) (not bm!152601) (not bm!152591) (not bm!152600) (not bm!152592) (not d!714023) (not d!714031) (not b!2487509) (not b!2487587) (not b!2487654) (not d!714017) (not b!2487584) (not d!713993) (not b!2487676) (not b!2487629) (not d!714015) (not d!714021) (not d!714027) (not d!714043) (not d!714009) (not d!713995) (not d!714007) (not b!2487633) (not d!713999) (not b!2487625) (not b!2487555) (not b!2487538) (not b!2487550) (not b!2487511) (not d!714029) b_and!188881 (not bm!152590) (not b!2487659) (not bs!468293) (not d!714033) (not d!713983) (not b!2487567) (not bm!152593) (not b!2487543) (not d!714035) (not b_lambda!76427) (not d!714045) tp_is_empty!12433 (not b!2487652) (not d!713989) (not b!2487562) (not bm!152594) (not mapNonEmpty!15825) (not b!2487510) (not bs!468294) (not b!2487658) (not b!2487571) (not b_lambda!76433) (not b!2487604) (not b_next!73289) (not d!714037) (not b_next!73291) (not d!713977) (not b!2487665) (not b!2487656) (not b!2487536) (not d!713985) (not b_lambda!76429) (not b_lambda!76431) (not bm!152595) (not d!714011) (not b!2487653))
(check-sat b_and!188879 b_and!188881 (not b_next!73289) (not b_next!73291))
