; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!218378 () Bool)

(assert start!218378)

(declare-fun b!2241413 () Bool)

(declare-fun b_free!65105 () Bool)

(declare-fun b_next!65809 () Bool)

(assert (=> b!2241413 (= b_free!65105 (not b_next!65809))))

(declare-fun tp!706677 () Bool)

(declare-fun b_and!175129 () Bool)

(assert (=> b!2241413 (= tp!706677 b_and!175129)))

(declare-fun b!2241405 () Bool)

(declare-fun b_free!65107 () Bool)

(declare-fun b_next!65811 () Bool)

(assert (=> b!2241405 (= b_free!65107 (not b_next!65811))))

(declare-fun tp!706682 () Bool)

(declare-fun b_and!175131 () Bool)

(assert (=> b!2241405 (= tp!706682 b_and!175131)))

(declare-fun b!2241404 () Bool)

(declare-fun e!1433284 () Bool)

(declare-fun e!1433275 () Bool)

(assert (=> b!2241404 (= e!1433284 e!1433275)))

(declare-fun tp!706680 () Bool)

(declare-fun e!1433286 () Bool)

(declare-datatypes ((C!13192 0))(
  ( (C!13193 (val!7644 Int)) )
))
(declare-datatypes ((Regex!6523 0))(
  ( (ElementMatch!6523 (c!356879 C!13192)) (Concat!10861 (regOne!13558 Regex!6523) (regTwo!13558 Regex!6523)) (EmptyExpr!6523) (Star!6523 (reg!6852 Regex!6523)) (EmptyLang!6523) (Union!6523 (regOne!13559 Regex!6523) (regTwo!13559 Regex!6523)) )
))
(declare-datatypes ((List!26543 0))(
  ( (Nil!26449) (Cons!26449 (h!31850 Regex!6523) (t!199981 List!26543)) )
))
(declare-datatypes ((Context!4142 0))(
  ( (Context!4143 (exprs!2571 List!26543)) )
))
(declare-datatypes ((tuple2!25900 0))(
  ( (tuple2!25901 (_1!15460 Context!4142) (_2!15460 C!13192)) )
))
(declare-datatypes ((array!11060 0))(
  ( (array!11061 (arr!4909 (Array (_ BitVec 32) (_ BitVec 64))) (size!20690 (_ BitVec 32))) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!25902 0))(
  ( (tuple2!25903 (_1!15461 tuple2!25900) (_2!15461 (InoxSet Context!4142))) )
))
(declare-datatypes ((List!26544 0))(
  ( (Nil!26450) (Cons!26450 (h!31851 tuple2!25902) (t!199982 List!26544)) )
))
(declare-datatypes ((array!11062 0))(
  ( (array!11063 (arr!4910 (Array (_ BitVec 32) List!26544)) (size!20691 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6322 0))(
  ( (LongMapFixedSize!6323 (defaultEntry!3526 Int) (mask!7776 (_ BitVec 32)) (extraKeys!3409 (_ BitVec 32)) (zeroValue!3419 List!26544) (minValue!3419 List!26544) (_size!6369 (_ BitVec 32)) (_keys!3458 array!11060) (_values!3441 array!11062) (_vacant!3222 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!12461 0))(
  ( (Cell!12462 (v!30085 LongMapFixedSize!6322)) )
))
(declare-datatypes ((MutLongMap!3161 0))(
  ( (LongMap!3161 (underlying!6523 Cell!12461)) (MutLongMapExt!3160 (__x!17709 Int)) )
))
(declare-datatypes ((Cell!12463 0))(
  ( (Cell!12464 (v!30086 MutLongMap!3161)) )
))
(declare-datatypes ((Hashable!3071 0))(
  ( (HashableExt!3070 (__x!17710 Int)) )
))
(declare-datatypes ((MutableMap!3071 0))(
  ( (MutableMapExt!3070 (__x!17711 Int)) (HashMap!3071 (underlying!6524 Cell!12463) (hashF!4994 Hashable!3071) (_size!6370 (_ BitVec 32)) (defaultValue!3233 Int)) )
))
(declare-datatypes ((CacheUp!2012 0))(
  ( (CacheUp!2013 (cache!3452 MutableMap!3071)) )
))
(declare-fun thiss!28603 () CacheUp!2012)

(declare-fun e!1433279 () Bool)

(declare-fun tp!706683 () Bool)

(declare-fun array_inv!3527 (array!11060) Bool)

(declare-fun array_inv!3528 (array!11062) Bool)

(assert (=> b!2241405 (= e!1433286 (and tp!706682 tp!706680 tp!706683 (array_inv!3527 (_keys!3458 (v!30085 (underlying!6523 (v!30086 (underlying!6524 (cache!3452 thiss!28603))))))) (array_inv!3528 (_values!3441 (v!30085 (underlying!6523 (v!30086 (underlying!6524 (cache!3452 thiss!28603))))))) e!1433279))))

(declare-fun b!2241406 () Bool)

(declare-fun tp!706681 () Bool)

(declare-fun mapRes!14807 () Bool)

(assert (=> b!2241406 (= e!1433279 (and tp!706681 mapRes!14807))))

(declare-fun condMapEmpty!14807 () Bool)

(declare-fun mapDefault!14807 () List!26544)

(assert (=> b!2241406 (= condMapEmpty!14807 (= (arr!4910 (_values!3441 (v!30085 (underlying!6523 (v!30086 (underlying!6524 (cache!3452 thiss!28603))))))) ((as const (Array (_ BitVec 32) List!26544)) mapDefault!14807)))))

(declare-fun b!2241407 () Bool)

(declare-fun e!1433276 () Bool)

(declare-fun tp!706676 () Bool)

(assert (=> b!2241407 (= e!1433276 tp!706676)))

(declare-fun mapIsEmpty!14807 () Bool)

(assert (=> mapIsEmpty!14807 mapRes!14807))

(declare-fun b!2241408 () Bool)

(declare-fun e!1433278 () Bool)

(declare-fun e!1433281 () Bool)

(assert (=> b!2241408 (= e!1433278 e!1433281)))

(declare-fun b!2241409 () Bool)

(declare-fun e!1433283 () Bool)

(declare-fun e!1433285 () Bool)

(assert (=> b!2241409 (= e!1433283 e!1433285)))

(declare-fun res!957927 () Bool)

(assert (=> b!2241409 (=> (not res!957927) (not e!1433285))))

(declare-fun lt!834377 () tuple2!25900)

(declare-fun contains!4500 (MutableMap!3071 tuple2!25900) Bool)

(assert (=> b!2241409 (= res!957927 (contains!4500 (cache!3452 thiss!28603) lt!834377))))

(declare-fun ctx!36 () Context!4142)

(declare-fun a!922 () C!13192)

(assert (=> b!2241409 (= lt!834377 (tuple2!25901 ctx!36 a!922))))

(declare-fun mapNonEmpty!14807 () Bool)

(declare-fun tp!706678 () Bool)

(declare-fun tp!706679 () Bool)

(assert (=> mapNonEmpty!14807 (= mapRes!14807 (and tp!706678 tp!706679))))

(declare-fun mapRest!14807 () (Array (_ BitVec 32) List!26544))

(declare-fun mapValue!14807 () List!26544)

(declare-fun mapKey!14807 () (_ BitVec 32))

(assert (=> mapNonEmpty!14807 (= (arr!4910 (_values!3441 (v!30085 (underlying!6523 (v!30086 (underlying!6524 (cache!3452 thiss!28603))))))) (store mapRest!14807 mapKey!14807 mapValue!14807))))

(declare-fun b!2241411 () Bool)

(declare-fun e!1433282 () Bool)

(assert (=> b!2241411 (= e!1433285 (not e!1433282))))

(declare-fun res!957929 () Bool)

(assert (=> b!2241411 (=> res!957929 e!1433282)))

(get-info :version)

(assert (=> b!2241411 (= res!957929 (not ((_ is HashMap!3071) (cache!3452 thiss!28603))))))

(declare-fun apply!6529 (MutableMap!3071 tuple2!25900) (InoxSet Context!4142))

(declare-fun derivationStepZipperUp!48 (Context!4142 C!13192) (InoxSet Context!4142))

(assert (=> b!2241411 (= (apply!6529 (cache!3452 thiss!28603) lt!834377) (derivationStepZipperUp!48 (_1!15460 lt!834377) (_2!15460 lt!834377)))))

(declare-fun lt!834372 () (InoxSet Context!4142))

(assert (=> b!2241411 (= lt!834372 (apply!6529 (cache!3452 thiss!28603) lt!834377))))

(declare-fun lt!834373 () (InoxSet Context!4142))

(assert (=> b!2241411 (= lt!834373 (apply!6529 (cache!3452 thiss!28603) lt!834377))))

(declare-fun lt!834378 () tuple2!25900)

(assert (=> b!2241411 (= lt!834378 lt!834377)))

(declare-fun lt!834376 () tuple2!25902)

(assert (=> b!2241411 (= lt!834376 (tuple2!25903 lt!834377 (apply!6529 (cache!3452 thiss!28603) lt!834377)))))

(declare-fun lambda!84824 () Int)

(declare-datatypes ((Unit!39430 0))(
  ( (Unit!39431) )
))
(declare-fun lt!834375 () Unit!39430)

(declare-fun lemmaForallPairsThenForLookup!39 (MutableMap!3071 tuple2!25900 Int) Unit!39430)

(assert (=> b!2241411 (= lt!834375 (lemmaForallPairsThenForLookup!39 (cache!3452 thiss!28603) lt!834377 lambda!84824))))

(declare-fun b!2241412 () Bool)

(assert (=> b!2241412 (= e!1433275 e!1433286)))

(declare-fun e!1433280 () Bool)

(assert (=> b!2241413 (= e!1433281 (and e!1433280 tp!706677))))

(declare-fun b!2241414 () Bool)

(declare-fun valid!2375 (MutableMap!3071) Bool)

(assert (=> b!2241414 (= e!1433282 (valid!2375 (cache!3452 thiss!28603)))))

(declare-fun res!957928 () Bool)

(assert (=> start!218378 (=> (not res!957928) (not e!1433283))))

(declare-fun validCacheMapUp!304 (MutableMap!3071) Bool)

(assert (=> start!218378 (= res!957928 (validCacheMapUp!304 (cache!3452 thiss!28603)))))

(assert (=> start!218378 e!1433283))

(declare-fun inv!35922 (CacheUp!2012) Bool)

(assert (=> start!218378 (and (inv!35922 thiss!28603) e!1433278)))

(declare-fun inv!35923 (Context!4142) Bool)

(assert (=> start!218378 (and (inv!35923 ctx!36) e!1433276)))

(declare-fun tp_is_empty!10267 () Bool)

(assert (=> start!218378 tp_is_empty!10267))

(declare-fun b!2241410 () Bool)

(declare-fun lt!834374 () MutLongMap!3161)

(assert (=> b!2241410 (= e!1433280 (and e!1433284 ((_ is LongMap!3161) lt!834374)))))

(assert (=> b!2241410 (= lt!834374 (v!30086 (underlying!6524 (cache!3452 thiss!28603))))))

(assert (= (and start!218378 res!957928) b!2241409))

(assert (= (and b!2241409 res!957927) b!2241411))

(assert (= (and b!2241411 (not res!957929)) b!2241414))

(assert (= (and b!2241406 condMapEmpty!14807) mapIsEmpty!14807))

(assert (= (and b!2241406 (not condMapEmpty!14807)) mapNonEmpty!14807))

(assert (= b!2241405 b!2241406))

(assert (= b!2241412 b!2241405))

(assert (= b!2241404 b!2241412))

(assert (= (and b!2241410 ((_ is LongMap!3161) (v!30086 (underlying!6524 (cache!3452 thiss!28603))))) b!2241404))

(assert (= b!2241413 b!2241410))

(assert (= (and b!2241408 ((_ is HashMap!3071) (cache!3452 thiss!28603))) b!2241413))

(assert (= start!218378 b!2241408))

(assert (= start!218378 b!2241407))

(declare-fun m!2673687 () Bool)

(assert (=> b!2241405 m!2673687))

(declare-fun m!2673689 () Bool)

(assert (=> b!2241405 m!2673689))

(declare-fun m!2673691 () Bool)

(assert (=> b!2241409 m!2673691))

(declare-fun m!2673693 () Bool)

(assert (=> b!2241411 m!2673693))

(declare-fun m!2673695 () Bool)

(assert (=> b!2241411 m!2673695))

(declare-fun m!2673697 () Bool)

(assert (=> b!2241411 m!2673697))

(declare-fun m!2673699 () Bool)

(assert (=> start!218378 m!2673699))

(declare-fun m!2673701 () Bool)

(assert (=> start!218378 m!2673701))

(declare-fun m!2673703 () Bool)

(assert (=> start!218378 m!2673703))

(declare-fun m!2673705 () Bool)

(assert (=> b!2241414 m!2673705))

(declare-fun m!2673707 () Bool)

(assert (=> mapNonEmpty!14807 m!2673707))

(check-sat (not b!2241406) (not b!2241414) (not b!2241405) (not b_next!65811) (not b!2241411) (not b_next!65809) (not mapNonEmpty!14807) (not start!218378) (not b!2241409) b_and!175131 tp_is_empty!10267 (not b!2241407) b_and!175129)
(check-sat b_and!175129 b_and!175131 (not b_next!65811) (not b_next!65809))
(get-model)

(declare-fun d!665821 () Bool)

(declare-fun res!957934 () Bool)

(declare-fun e!1433289 () Bool)

(assert (=> d!665821 (=> (not res!957934) (not e!1433289))))

(declare-fun valid!2376 (MutLongMap!3161) Bool)

(assert (=> d!665821 (= res!957934 (valid!2376 (v!30086 (underlying!6524 (cache!3452 thiss!28603)))))))

(assert (=> d!665821 (= (valid!2375 (cache!3452 thiss!28603)) e!1433289)))

(declare-fun b!2241419 () Bool)

(declare-fun res!957935 () Bool)

(assert (=> b!2241419 (=> (not res!957935) (not e!1433289))))

(declare-fun lambda!84827 () Int)

(declare-datatypes ((tuple2!25904 0))(
  ( (tuple2!25905 (_1!15462 (_ BitVec 64)) (_2!15462 List!26544)) )
))
(declare-datatypes ((List!26545 0))(
  ( (Nil!26451) (Cons!26451 (h!31852 tuple2!25904) (t!199985 List!26545)) )
))
(declare-fun forall!5447 (List!26545 Int) Bool)

(declare-datatypes ((ListLongMap!361 0))(
  ( (ListLongMap!362 (toList!1393 List!26545)) )
))
(declare-fun map!5476 (MutLongMap!3161) ListLongMap!361)

(assert (=> b!2241419 (= res!957935 (forall!5447 (toList!1393 (map!5476 (v!30086 (underlying!6524 (cache!3452 thiss!28603))))) lambda!84827))))

(declare-fun b!2241420 () Bool)

(declare-fun allKeysSameHashInMap!116 (ListLongMap!361 Hashable!3071) Bool)

(assert (=> b!2241420 (= e!1433289 (allKeysSameHashInMap!116 (map!5476 (v!30086 (underlying!6524 (cache!3452 thiss!28603)))) (hashF!4994 (cache!3452 thiss!28603))))))

(assert (= (and d!665821 res!957934) b!2241419))

(assert (= (and b!2241419 res!957935) b!2241420))

(declare-fun m!2673709 () Bool)

(assert (=> d!665821 m!2673709))

(declare-fun m!2673711 () Bool)

(assert (=> b!2241419 m!2673711))

(declare-fun m!2673713 () Bool)

(assert (=> b!2241419 m!2673713))

(assert (=> b!2241420 m!2673711))

(assert (=> b!2241420 m!2673711))

(declare-fun m!2673715 () Bool)

(assert (=> b!2241420 m!2673715))

(assert (=> b!2241414 d!665821))

(declare-fun d!665823 () Bool)

(assert (=> d!665823 (= (array_inv!3527 (_keys!3458 (v!30085 (underlying!6523 (v!30086 (underlying!6524 (cache!3452 thiss!28603))))))) (bvsge (size!20690 (_keys!3458 (v!30085 (underlying!6523 (v!30086 (underlying!6524 (cache!3452 thiss!28603))))))) #b00000000000000000000000000000000))))

(assert (=> b!2241405 d!665823))

(declare-fun d!665825 () Bool)

(assert (=> d!665825 (= (array_inv!3528 (_values!3441 (v!30085 (underlying!6523 (v!30086 (underlying!6524 (cache!3452 thiss!28603))))))) (bvsge (size!20691 (_values!3441 (v!30085 (underlying!6523 (v!30086 (underlying!6524 (cache!3452 thiss!28603))))))) #b00000000000000000000000000000000))))

(assert (=> b!2241405 d!665825))

(declare-fun bs!454332 () Bool)

(declare-fun b!2241453 () Bool)

(assert (= bs!454332 (and b!2241453 b!2241419)))

(declare-fun lambda!84830 () Int)

(assert (=> bs!454332 (= lambda!84830 lambda!84827)))

(declare-fun b!2241443 () Bool)

(declare-fun e!1433304 () Unit!39430)

(declare-fun Unit!39432 () Unit!39430)

(assert (=> b!2241443 (= e!1433304 Unit!39432)))

(declare-fun b!2241444 () Bool)

(declare-fun e!1433308 () Bool)

(declare-fun call!135290 () Bool)

(assert (=> b!2241444 (= e!1433308 call!135290)))

(declare-fun bm!135281 () Bool)

(declare-fun call!135288 () Bool)

(declare-fun call!135289 () ListLongMap!361)

(declare-fun call!135291 () (_ BitVec 64))

(declare-fun lt!834423 () ListLongMap!361)

(declare-fun c!356889 () Bool)

(declare-fun contains!4501 (ListLongMap!361 (_ BitVec 64)) Bool)

(assert (=> bm!135281 (= call!135288 (contains!4501 (ite c!356889 lt!834423 call!135289) call!135291))))

(declare-fun b!2241446 () Bool)

(declare-fun e!1433306 () Unit!39430)

(declare-fun Unit!39433 () Unit!39430)

(assert (=> b!2241446 (= e!1433306 Unit!39433)))

(declare-fun bm!135282 () Bool)

(declare-datatypes ((Option!5166 0))(
  ( (None!5165) (Some!5165 (v!30087 tuple2!25902)) )
))
(declare-fun call!135286 () Option!5166)

(declare-fun call!135287 () List!26544)

(declare-fun getPair!45 (List!26544 tuple2!25900) Option!5166)

(assert (=> bm!135282 (= call!135286 (getPair!45 call!135287 lt!834377))))

(declare-fun b!2241447 () Bool)

(declare-fun e!1433309 () Unit!39430)

(declare-fun Unit!39434 () Unit!39430)

(assert (=> b!2241447 (= e!1433309 Unit!39434)))

(declare-fun bm!135283 () Bool)

(declare-fun isDefined!4169 (Option!5166) Bool)

(assert (=> bm!135283 (= call!135290 (isDefined!4169 call!135286))))

(declare-fun b!2241448 () Bool)

(declare-fun e!1433310 () Bool)

(assert (=> b!2241448 (= e!1433310 call!135290)))

(declare-fun bm!135284 () Bool)

(declare-fun hash!592 (Hashable!3071 tuple2!25900) (_ BitVec 64))

(assert (=> bm!135284 (= call!135291 (hash!592 (hashF!4994 (cache!3452 thiss!28603)) lt!834377))))

(declare-fun b!2241449 () Bool)

(declare-fun e!1433307 () Unit!39430)

(declare-fun lt!834433 () Unit!39430)

(assert (=> b!2241449 (= e!1433307 lt!834433)))

(assert (=> b!2241449 (= lt!834423 call!135289)))

(declare-fun lemmaInGenericMapThenInLongMap!45 (ListLongMap!361 tuple2!25900 Hashable!3071) Unit!39430)

(assert (=> b!2241449 (= lt!834433 (lemmaInGenericMapThenInLongMap!45 lt!834423 lt!834377 (hashF!4994 (cache!3452 thiss!28603))))))

(declare-fun res!957942 () Bool)

(assert (=> b!2241449 (= res!957942 call!135288)))

(assert (=> b!2241449 (=> (not res!957942) (not e!1433310))))

(assert (=> b!2241449 e!1433310))

(declare-fun b!2241450 () Bool)

(assert (=> b!2241450 false))

(declare-fun lt!834430 () Unit!39430)

(declare-fun lt!834422 () Unit!39430)

(assert (=> b!2241450 (= lt!834430 lt!834422)))

(declare-fun lt!834436 () List!26545)

(declare-fun lt!834420 () (_ BitVec 64))

(declare-fun lt!834421 () List!26544)

(declare-fun contains!4502 (List!26545 tuple2!25904) Bool)

(assert (=> b!2241450 (contains!4502 lt!834436 (tuple2!25905 lt!834420 lt!834421))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!46 (List!26545 (_ BitVec 64) List!26544) Unit!39430)

(assert (=> b!2241450 (= lt!834422 (lemmaGetValueByKeyImpliesContainsTuple!46 lt!834436 lt!834420 lt!834421))))

(declare-fun apply!6530 (MutLongMap!3161 (_ BitVec 64)) List!26544)

(assert (=> b!2241450 (= lt!834421 (apply!6530 (v!30086 (underlying!6524 (cache!3452 thiss!28603))) lt!834420))))

(assert (=> b!2241450 (= lt!834436 (toList!1393 (map!5476 (v!30086 (underlying!6524 (cache!3452 thiss!28603))))))))

(declare-fun lt!834424 () Unit!39430)

(declare-fun lt!834426 () Unit!39430)

(assert (=> b!2241450 (= lt!834424 lt!834426)))

(declare-fun lt!834428 () List!26545)

(declare-datatypes ((Option!5167 0))(
  ( (None!5166) (Some!5166 (v!30088 List!26544)) )
))
(declare-fun isDefined!4170 (Option!5167) Bool)

(declare-fun getValueByKey!98 (List!26545 (_ BitVec 64)) Option!5167)

(assert (=> b!2241450 (isDefined!4170 (getValueByKey!98 lt!834428 lt!834420))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!63 (List!26545 (_ BitVec 64)) Unit!39430)

(assert (=> b!2241450 (= lt!834426 (lemmaContainsKeyImpliesGetValueByKeyDefined!63 lt!834428 lt!834420))))

(assert (=> b!2241450 (= lt!834428 (toList!1393 (map!5476 (v!30086 (underlying!6524 (cache!3452 thiss!28603))))))))

(declare-fun lt!834432 () Unit!39430)

(declare-fun lt!834427 () Unit!39430)

(assert (=> b!2241450 (= lt!834432 lt!834427)))

(declare-fun lt!834438 () List!26545)

(declare-fun containsKey!94 (List!26545 (_ BitVec 64)) Bool)

(assert (=> b!2241450 (containsKey!94 lt!834438 lt!834420)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!46 (List!26545 (_ BitVec 64)) Unit!39430)

(assert (=> b!2241450 (= lt!834427 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!46 lt!834438 lt!834420))))

(assert (=> b!2241450 (= lt!834438 (toList!1393 (map!5476 (v!30086 (underlying!6524 (cache!3452 thiss!28603))))))))

(declare-fun Unit!39435 () Unit!39430)

(assert (=> b!2241450 (= e!1433304 Unit!39435)))

(declare-fun bm!135285 () Bool)

(declare-fun apply!6531 (ListLongMap!361 (_ BitVec 64)) List!26544)

(assert (=> bm!135285 (= call!135287 (apply!6531 (ite c!356889 lt!834423 call!135289) call!135291))))

(declare-fun b!2241451 () Bool)

(assert (=> b!2241451 (= e!1433307 e!1433309)))

(declare-fun res!957944 () Bool)

(assert (=> b!2241451 (= res!957944 call!135288)))

(assert (=> b!2241451 (=> (not res!957944) (not e!1433308))))

(declare-fun c!356888 () Bool)

(assert (=> b!2241451 (= c!356888 e!1433308)))

(declare-fun bm!135286 () Bool)

(assert (=> bm!135286 (= call!135289 (map!5476 (v!30086 (underlying!6524 (cache!3452 thiss!28603)))))))

(declare-fun b!2241452 () Bool)

(declare-fun e!1433305 () Bool)

(assert (=> b!2241452 (= e!1433305 (isDefined!4169 (getPair!45 (apply!6530 (v!30086 (underlying!6524 (cache!3452 thiss!28603))) lt!834420) lt!834377)))))

(declare-fun forallContained!792 (List!26545 Int tuple2!25904) Unit!39430)

(assert (=> b!2241453 (= e!1433306 (forallContained!792 (toList!1393 (map!5476 (v!30086 (underlying!6524 (cache!3452 thiss!28603))))) lambda!84830 (tuple2!25905 lt!834420 (apply!6530 (v!30086 (underlying!6524 (cache!3452 thiss!28603))) lt!834420))))))

(declare-fun c!356890 () Bool)

(assert (=> b!2241453 (= c!356890 (not (contains!4502 (toList!1393 (map!5476 (v!30086 (underlying!6524 (cache!3452 thiss!28603))))) (tuple2!25905 lt!834420 (apply!6530 (v!30086 (underlying!6524 (cache!3452 thiss!28603))) lt!834420)))))))

(declare-fun lt!834435 () Unit!39430)

(assert (=> b!2241453 (= lt!834435 e!1433304)))

(declare-fun d!665827 () Bool)

(declare-fun lt!834429 () Bool)

(declare-datatypes ((ListMap!879 0))(
  ( (ListMap!880 (toList!1394 List!26544)) )
))
(declare-fun contains!4503 (ListMap!879 tuple2!25900) Bool)

(declare-fun map!5477 (MutableMap!3071) ListMap!879)

(assert (=> d!665827 (= lt!834429 (contains!4503 (map!5477 (cache!3452 thiss!28603)) lt!834377))))

(assert (=> d!665827 (= lt!834429 e!1433305)))

(declare-fun res!957943 () Bool)

(assert (=> d!665827 (=> (not res!957943) (not e!1433305))))

(declare-fun contains!4504 (MutLongMap!3161 (_ BitVec 64)) Bool)

(assert (=> d!665827 (= res!957943 (contains!4504 (v!30086 (underlying!6524 (cache!3452 thiss!28603))) lt!834420))))

(declare-fun lt!834425 () Unit!39430)

(assert (=> d!665827 (= lt!834425 e!1433307)))

(declare-fun extractMap!125 (List!26545) ListMap!879)

(assert (=> d!665827 (= c!356889 (contains!4503 (extractMap!125 (toList!1393 (map!5476 (v!30086 (underlying!6524 (cache!3452 thiss!28603)))))) lt!834377))))

(declare-fun lt!834434 () Unit!39430)

(assert (=> d!665827 (= lt!834434 e!1433306)))

(declare-fun c!356891 () Bool)

(assert (=> d!665827 (= c!356891 (contains!4504 (v!30086 (underlying!6524 (cache!3452 thiss!28603))) lt!834420))))

(assert (=> d!665827 (= lt!834420 (hash!592 (hashF!4994 (cache!3452 thiss!28603)) lt!834377))))

(assert (=> d!665827 (valid!2375 (cache!3452 thiss!28603))))

(assert (=> d!665827 (= (contains!4500 (cache!3452 thiss!28603) lt!834377) lt!834429)))

(declare-fun b!2241445 () Bool)

(assert (=> b!2241445 false))

(declare-fun lt!834419 () Unit!39430)

(declare-fun lt!834431 () Unit!39430)

(assert (=> b!2241445 (= lt!834419 lt!834431)))

(declare-fun lt!834437 () ListLongMap!361)

(assert (=> b!2241445 (contains!4503 (extractMap!125 (toList!1393 lt!834437)) lt!834377)))

(declare-fun lemmaInLongMapThenInGenericMap!45 (ListLongMap!361 tuple2!25900 Hashable!3071) Unit!39430)

(assert (=> b!2241445 (= lt!834431 (lemmaInLongMapThenInGenericMap!45 lt!834437 lt!834377 (hashF!4994 (cache!3452 thiss!28603))))))

(assert (=> b!2241445 (= lt!834437 call!135289)))

(declare-fun Unit!39436 () Unit!39430)

(assert (=> b!2241445 (= e!1433309 Unit!39436)))

(assert (= (and d!665827 c!356891) b!2241453))

(assert (= (and d!665827 (not c!356891)) b!2241446))

(assert (= (and b!2241453 c!356890) b!2241450))

(assert (= (and b!2241453 (not c!356890)) b!2241443))

(assert (= (and d!665827 c!356889) b!2241449))

(assert (= (and d!665827 (not c!356889)) b!2241451))

(assert (= (and b!2241449 res!957942) b!2241448))

(assert (= (and b!2241451 res!957944) b!2241444))

(assert (= (and b!2241451 c!356888) b!2241445))

(assert (= (and b!2241451 (not c!356888)) b!2241447))

(assert (= (or b!2241449 b!2241448 b!2241451 b!2241444) bm!135284))

(assert (= (or b!2241449 b!2241451 b!2241444 b!2241445) bm!135286))

(assert (= (or b!2241448 b!2241444) bm!135285))

(assert (= (or b!2241449 b!2241451) bm!135281))

(assert (= (or b!2241448 b!2241444) bm!135282))

(assert (= (or b!2241448 b!2241444) bm!135283))

(assert (= (and d!665827 res!957943) b!2241452))

(declare-fun m!2673717 () Bool)

(assert (=> bm!135282 m!2673717))

(declare-fun m!2673719 () Bool)

(assert (=> b!2241449 m!2673719))

(declare-fun m!2673721 () Bool)

(assert (=> b!2241445 m!2673721))

(assert (=> b!2241445 m!2673721))

(declare-fun m!2673723 () Bool)

(assert (=> b!2241445 m!2673723))

(declare-fun m!2673725 () Bool)

(assert (=> b!2241445 m!2673725))

(assert (=> d!665827 m!2673705))

(assert (=> d!665827 m!2673711))

(declare-fun m!2673727 () Bool)

(assert (=> d!665827 m!2673727))

(declare-fun m!2673729 () Bool)

(assert (=> d!665827 m!2673729))

(assert (=> d!665827 m!2673727))

(declare-fun m!2673731 () Bool)

(assert (=> d!665827 m!2673731))

(declare-fun m!2673733 () Bool)

(assert (=> d!665827 m!2673733))

(declare-fun m!2673735 () Bool)

(assert (=> d!665827 m!2673735))

(declare-fun m!2673737 () Bool)

(assert (=> d!665827 m!2673737))

(assert (=> d!665827 m!2673733))

(assert (=> bm!135284 m!2673737))

(declare-fun m!2673739 () Bool)

(assert (=> b!2241452 m!2673739))

(assert (=> b!2241452 m!2673739))

(declare-fun m!2673741 () Bool)

(assert (=> b!2241452 m!2673741))

(assert (=> b!2241452 m!2673741))

(declare-fun m!2673743 () Bool)

(assert (=> b!2241452 m!2673743))

(declare-fun m!2673745 () Bool)

(assert (=> bm!135285 m!2673745))

(declare-fun m!2673747 () Bool)

(assert (=> b!2241450 m!2673747))

(declare-fun m!2673749 () Bool)

(assert (=> b!2241450 m!2673749))

(assert (=> b!2241450 m!2673739))

(declare-fun m!2673751 () Bool)

(assert (=> b!2241450 m!2673751))

(declare-fun m!2673753 () Bool)

(assert (=> b!2241450 m!2673753))

(declare-fun m!2673755 () Bool)

(assert (=> b!2241450 m!2673755))

(declare-fun m!2673757 () Bool)

(assert (=> b!2241450 m!2673757))

(assert (=> b!2241450 m!2673711))

(assert (=> b!2241450 m!2673747))

(declare-fun m!2673759 () Bool)

(assert (=> b!2241450 m!2673759))

(assert (=> b!2241453 m!2673711))

(assert (=> b!2241453 m!2673739))

(declare-fun m!2673761 () Bool)

(assert (=> b!2241453 m!2673761))

(declare-fun m!2673763 () Bool)

(assert (=> b!2241453 m!2673763))

(assert (=> bm!135286 m!2673711))

(declare-fun m!2673765 () Bool)

(assert (=> bm!135283 m!2673765))

(declare-fun m!2673767 () Bool)

(assert (=> bm!135281 m!2673767))

(assert (=> b!2241409 d!665827))

(declare-fun bs!454333 () Bool)

(declare-fun b!2241459 () Bool)

(assert (= bs!454333 (and b!2241459 b!2241411)))

(declare-fun lambda!84833 () Int)

(assert (=> bs!454333 (= lambda!84833 lambda!84824)))

(declare-fun d!665829 () Bool)

(declare-fun res!957949 () Bool)

(declare-fun e!1433313 () Bool)

(assert (=> d!665829 (=> (not res!957949) (not e!1433313))))

(assert (=> d!665829 (= res!957949 (valid!2375 (cache!3452 thiss!28603)))))

(assert (=> d!665829 (= (validCacheMapUp!304 (cache!3452 thiss!28603)) e!1433313)))

(declare-fun b!2241458 () Bool)

(declare-fun res!957950 () Bool)

(assert (=> b!2241458 (=> (not res!957950) (not e!1433313))))

(declare-fun invariantList!391 (List!26544) Bool)

(assert (=> b!2241458 (= res!957950 (invariantList!391 (toList!1394 (map!5477 (cache!3452 thiss!28603)))))))

(declare-fun forall!5448 (List!26544 Int) Bool)

(assert (=> b!2241459 (= e!1433313 (forall!5448 (toList!1394 (map!5477 (cache!3452 thiss!28603))) lambda!84833))))

(assert (= (and d!665829 res!957949) b!2241458))

(assert (= (and b!2241458 res!957950) b!2241459))

(assert (=> d!665829 m!2673705))

(assert (=> b!2241458 m!2673727))

(declare-fun m!2673770 () Bool)

(assert (=> b!2241458 m!2673770))

(assert (=> b!2241459 m!2673727))

(declare-fun m!2673772 () Bool)

(assert (=> b!2241459 m!2673772))

(assert (=> start!218378 d!665829))

(declare-fun d!665831 () Bool)

(declare-fun res!957953 () Bool)

(declare-fun e!1433316 () Bool)

(assert (=> d!665831 (=> (not res!957953) (not e!1433316))))

(assert (=> d!665831 (= res!957953 ((_ is HashMap!3071) (cache!3452 thiss!28603)))))

(assert (=> d!665831 (= (inv!35922 thiss!28603) e!1433316)))

(declare-fun b!2241462 () Bool)

(assert (=> b!2241462 (= e!1433316 (validCacheMapUp!304 (cache!3452 thiss!28603)))))

(assert (= (and d!665831 res!957953) b!2241462))

(assert (=> b!2241462 m!2673699))

(assert (=> start!218378 d!665831))

(declare-fun d!665833 () Bool)

(declare-fun lambda!84836 () Int)

(declare-fun forall!5449 (List!26543 Int) Bool)

(assert (=> d!665833 (= (inv!35923 ctx!36) (forall!5449 (exprs!2571 ctx!36) lambda!84836))))

(declare-fun bs!454334 () Bool)

(assert (= bs!454334 d!665833))

(declare-fun m!2673774 () Bool)

(assert (=> bs!454334 m!2673774))

(assert (=> start!218378 d!665833))

(declare-fun bs!454335 () Bool)

(declare-fun b!2241478 () Bool)

(assert (= bs!454335 (and b!2241478 b!2241419)))

(declare-fun lambda!84843 () Int)

(assert (=> bs!454335 (= lambda!84843 lambda!84827)))

(declare-fun bs!454336 () Bool)

(assert (= bs!454336 (and b!2241478 b!2241453)))

(assert (=> bs!454336 (= lambda!84843 lambda!84830)))

(declare-fun b!2241476 () Bool)

(assert (=> b!2241476 false))

(declare-fun lt!834501 () Unit!39430)

(declare-fun lt!834508 () Unit!39430)

(assert (=> b!2241476 (= lt!834501 lt!834508)))

(declare-fun lt!834524 () List!26545)

(declare-fun lt!834509 () (_ BitVec 64))

(declare-fun lt!834506 () List!26544)

(assert (=> b!2241476 (contains!4502 lt!834524 (tuple2!25905 lt!834509 lt!834506))))

(assert (=> b!2241476 (= lt!834508 (lemmaGetValueByKeyImpliesContainsTuple!46 lt!834524 lt!834509 lt!834506))))

(assert (=> b!2241476 (= lt!834506 (apply!6530 (v!30086 (underlying!6524 (cache!3452 thiss!28603))) lt!834509))))

(assert (=> b!2241476 (= lt!834524 (toList!1393 (map!5476 (v!30086 (underlying!6524 (cache!3452 thiss!28603))))))))

(declare-fun lt!834507 () Unit!39430)

(declare-fun lt!834527 () Unit!39430)

(assert (=> b!2241476 (= lt!834507 lt!834527)))

(declare-fun lt!834503 () List!26545)

(assert (=> b!2241476 (isDefined!4170 (getValueByKey!98 lt!834503 lt!834509))))

(assert (=> b!2241476 (= lt!834527 (lemmaContainsKeyImpliesGetValueByKeyDefined!63 lt!834503 lt!834509))))

(assert (=> b!2241476 (= lt!834503 (toList!1393 (map!5476 (v!30086 (underlying!6524 (cache!3452 thiss!28603))))))))

(declare-fun e!1433324 () Unit!39430)

(declare-fun Unit!39437 () Unit!39430)

(assert (=> b!2241476 (= e!1433324 Unit!39437)))

(declare-fun lt!834499 () (InoxSet Context!4142))

(declare-fun e!1433325 () Bool)

(declare-fun b!2241477 () Bool)

(declare-fun dynLambda!11545 (Int tuple2!25900) (InoxSet Context!4142))

(assert (=> b!2241477 (= e!1433325 (= lt!834499 (dynLambda!11545 (defaultValue!3233 (cache!3452 thiss!28603)) lt!834377)))))

(declare-fun e!1433323 () (InoxSet Context!4142))

(declare-fun get!8007 (Option!5166) tuple2!25902)

(assert (=> b!2241478 (= e!1433323 (_2!15461 (get!8007 (getPair!45 (apply!6530 (v!30086 (underlying!6524 (cache!3452 thiss!28603))) lt!834509) lt!834377))))))

(assert (=> b!2241478 (= lt!834509 (hash!592 (hashF!4994 (cache!3452 thiss!28603)) lt!834377))))

(declare-fun c!356900 () Bool)

(assert (=> b!2241478 (= c!356900 (not (contains!4502 (toList!1393 (map!5476 (v!30086 (underlying!6524 (cache!3452 thiss!28603))))) (tuple2!25905 lt!834509 (apply!6530 (v!30086 (underlying!6524 (cache!3452 thiss!28603))) lt!834509)))))))

(declare-fun lt!834504 () Unit!39430)

(assert (=> b!2241478 (= lt!834504 e!1433324)))

(declare-fun lt!834516 () Unit!39430)

(assert (=> b!2241478 (= lt!834516 (forallContained!792 (toList!1393 (map!5476 (v!30086 (underlying!6524 (cache!3452 thiss!28603))))) lambda!84843 (tuple2!25905 lt!834509 (apply!6530 (v!30086 (underlying!6524 (cache!3452 thiss!28603))) lt!834509))))))

(declare-fun lt!834502 () ListLongMap!361)

(assert (=> b!2241478 (= lt!834502 (map!5476 (v!30086 (underlying!6524 (cache!3452 thiss!28603)))))))

(declare-fun lt!834513 () Unit!39430)

(declare-fun lemmaGetPairGetSameValueAsMap!26 (ListLongMap!361 tuple2!25900 (InoxSet Context!4142) Hashable!3071) Unit!39430)

(assert (=> b!2241478 (= lt!834513 (lemmaGetPairGetSameValueAsMap!26 lt!834502 lt!834377 (_2!15461 (get!8007 (getPair!45 (apply!6530 (v!30086 (underlying!6524 (cache!3452 thiss!28603))) lt!834509) lt!834377))) (hashF!4994 (cache!3452 thiss!28603))))))

(declare-fun lt!834511 () Unit!39430)

(declare-fun lemmaInGenMapThenLongMapContainsHash!26 (ListLongMap!361 tuple2!25900 Hashable!3071) Unit!39430)

(assert (=> b!2241478 (= lt!834511 (lemmaInGenMapThenLongMapContainsHash!26 lt!834502 lt!834377 (hashF!4994 (cache!3452 thiss!28603))))))

(assert (=> b!2241478 (contains!4501 lt!834502 (hash!592 (hashF!4994 (cache!3452 thiss!28603)) lt!834377))))

(declare-fun lt!834525 () Unit!39430)

(assert (=> b!2241478 (= lt!834525 lt!834511)))

(declare-fun lt!834505 () (_ BitVec 64))

(assert (=> b!2241478 (= lt!834505 (hash!592 (hashF!4994 (cache!3452 thiss!28603)) lt!834377))))

(declare-fun lt!834512 () List!26544)

(assert (=> b!2241478 (= lt!834512 (apply!6531 lt!834502 (hash!592 (hashF!4994 (cache!3452 thiss!28603)) lt!834377)))))

(declare-fun lt!834500 () Unit!39430)

(declare-fun lemmaGetValueImpliesTupleContained!27 (ListLongMap!361 (_ BitVec 64) List!26544) Unit!39430)

(assert (=> b!2241478 (= lt!834500 (lemmaGetValueImpliesTupleContained!27 lt!834502 lt!834505 lt!834512))))

(assert (=> b!2241478 (contains!4502 (toList!1393 lt!834502) (tuple2!25905 lt!834505 lt!834512))))

(declare-fun lt!834523 () Unit!39430)

(assert (=> b!2241478 (= lt!834523 lt!834500)))

(declare-fun lt!834522 () Unit!39430)

(assert (=> b!2241478 (= lt!834522 (forallContained!792 (toList!1393 lt!834502) lambda!84843 (tuple2!25905 (hash!592 (hashF!4994 (cache!3452 thiss!28603)) lt!834377) (apply!6531 lt!834502 (hash!592 (hashF!4994 (cache!3452 thiss!28603)) lt!834377)))))))

(declare-fun lt!834514 () Unit!39430)

(declare-fun lemmaInGenMapThenGetPairDefined!26 (ListLongMap!361 tuple2!25900 Hashable!3071) Unit!39430)

(assert (=> b!2241478 (= lt!834514 (lemmaInGenMapThenGetPairDefined!26 lt!834502 lt!834377 (hashF!4994 (cache!3452 thiss!28603))))))

(declare-fun lt!834528 () Unit!39430)

(assert (=> b!2241478 (= lt!834528 (lemmaInGenMapThenLongMapContainsHash!26 lt!834502 lt!834377 (hashF!4994 (cache!3452 thiss!28603))))))

(declare-fun lt!834518 () Unit!39430)

(assert (=> b!2241478 (= lt!834518 lt!834528)))

(declare-fun lt!834515 () (_ BitVec 64))

(assert (=> b!2241478 (= lt!834515 (hash!592 (hashF!4994 (cache!3452 thiss!28603)) lt!834377))))

(declare-fun lt!834517 () List!26544)

(assert (=> b!2241478 (= lt!834517 (apply!6531 lt!834502 (hash!592 (hashF!4994 (cache!3452 thiss!28603)) lt!834377)))))

(declare-fun lt!834510 () Unit!39430)

(assert (=> b!2241478 (= lt!834510 (lemmaGetValueImpliesTupleContained!27 lt!834502 lt!834515 lt!834517))))

(assert (=> b!2241478 (contains!4502 (toList!1393 lt!834502) (tuple2!25905 lt!834515 lt!834517))))

(declare-fun lt!834521 () Unit!39430)

(assert (=> b!2241478 (= lt!834521 lt!834510)))

(declare-fun lt!834526 () Unit!39430)

(assert (=> b!2241478 (= lt!834526 (forallContained!792 (toList!1393 lt!834502) lambda!84843 (tuple2!25905 (hash!592 (hashF!4994 (cache!3452 thiss!28603)) lt!834377) (apply!6531 lt!834502 (hash!592 (hashF!4994 (cache!3452 thiss!28603)) lt!834377)))))))

(assert (=> b!2241478 (isDefined!4169 (getPair!45 (apply!6531 lt!834502 (hash!592 (hashF!4994 (cache!3452 thiss!28603)) lt!834377)) lt!834377))))

(declare-fun lt!834519 () Unit!39430)

(assert (=> b!2241478 (= lt!834519 lt!834514)))

(declare-datatypes ((Option!5168 0))(
  ( (None!5167) (Some!5167 (v!30089 (InoxSet Context!4142))) )
))
(declare-fun get!8008 (Option!5168) (InoxSet Context!4142))

(declare-fun getValueByKey!99 (List!26544 tuple2!25900) Option!5168)

(assert (=> b!2241478 (= (_2!15461 (get!8007 (getPair!45 (apply!6531 lt!834502 (hash!592 (hashF!4994 (cache!3452 thiss!28603)) lt!834377)) lt!834377))) (get!8008 (getValueByKey!99 (toList!1394 (extractMap!125 (toList!1393 lt!834502))) lt!834377)))))

(declare-fun lt!834520 () Unit!39430)

(assert (=> b!2241478 (= lt!834520 lt!834513)))

(declare-fun b!2241479 () Bool)

(assert (=> b!2241479 (= e!1433325 (= lt!834499 (get!8008 (getValueByKey!99 (toList!1394 (map!5477 (cache!3452 thiss!28603))) lt!834377))))))

(declare-fun b!2241480 () Bool)

(declare-fun Unit!39438 () Unit!39430)

(assert (=> b!2241480 (= e!1433324 Unit!39438)))

(declare-fun b!2241475 () Bool)

(assert (=> b!2241475 (= e!1433323 (dynLambda!11545 (defaultValue!3233 (cache!3452 thiss!28603)) lt!834377))))

(declare-fun d!665835 () Bool)

(assert (=> d!665835 e!1433325))

(declare-fun c!356898 () Bool)

(assert (=> d!665835 (= c!356898 (contains!4500 (cache!3452 thiss!28603) lt!834377))))

(assert (=> d!665835 (= lt!834499 e!1433323)))

(declare-fun c!356899 () Bool)

(assert (=> d!665835 (= c!356899 (not (contains!4500 (cache!3452 thiss!28603) lt!834377)))))

(assert (=> d!665835 (valid!2375 (cache!3452 thiss!28603))))

(assert (=> d!665835 (= (apply!6529 (cache!3452 thiss!28603) lt!834377) lt!834499)))

(assert (= (and d!665835 c!356899) b!2241475))

(assert (= (and d!665835 (not c!356899)) b!2241478))

(assert (= (and b!2241478 c!356900) b!2241476))

(assert (= (and b!2241478 (not c!356900)) b!2241480))

(assert (= (and d!665835 c!356898) b!2241479))

(assert (= (and d!665835 (not c!356898)) b!2241477))

(declare-fun b_lambda!71785 () Bool)

(assert (=> (not b_lambda!71785) (not b!2241477)))

(declare-fun t!199984 () Bool)

(declare-fun tb!132869 () Bool)

(assert (=> (and b!2241413 (= (defaultValue!3233 (cache!3452 thiss!28603)) (defaultValue!3233 (cache!3452 thiss!28603))) t!199984) tb!132869))

(assert (=> b!2241477 t!199984))

(declare-fun result!161864 () Bool)

(declare-fun b_and!175133 () Bool)

(assert (= b_and!175129 (and (=> t!199984 result!161864) b_and!175133)))

(declare-fun b_lambda!71787 () Bool)

(assert (=> (not b_lambda!71787) (not b!2241475)))

(assert (=> b!2241475 t!199984))

(declare-fun b_and!175135 () Bool)

(assert (= b_and!175133 (and (=> t!199984 result!161864) b_and!175135)))

(assert (=> b!2241479 m!2673727))

(declare-fun m!2673776 () Bool)

(assert (=> b!2241479 m!2673776))

(assert (=> b!2241479 m!2673776))

(declare-fun m!2673778 () Bool)

(assert (=> b!2241479 m!2673778))

(declare-fun m!2673780 () Bool)

(assert (=> b!2241476 m!2673780))

(declare-fun m!2673782 () Bool)

(assert (=> b!2241476 m!2673782))

(declare-fun m!2673784 () Bool)

(assert (=> b!2241476 m!2673784))

(assert (=> b!2241476 m!2673711))

(assert (=> b!2241476 m!2673784))

(declare-fun m!2673786 () Bool)

(assert (=> b!2241476 m!2673786))

(declare-fun m!2673788 () Bool)

(assert (=> b!2241476 m!2673788))

(declare-fun m!2673790 () Bool)

(assert (=> b!2241476 m!2673790))

(assert (=> b!2241478 m!2673737))

(declare-fun m!2673792 () Bool)

(assert (=> b!2241478 m!2673792))

(declare-fun m!2673794 () Bool)

(assert (=> b!2241478 m!2673794))

(declare-fun m!2673796 () Bool)

(assert (=> b!2241478 m!2673796))

(assert (=> b!2241478 m!2673737))

(declare-fun m!2673798 () Bool)

(assert (=> b!2241478 m!2673798))

(declare-fun m!2673800 () Bool)

(assert (=> b!2241478 m!2673800))

(declare-fun m!2673802 () Bool)

(assert (=> b!2241478 m!2673802))

(assert (=> b!2241478 m!2673802))

(assert (=> b!2241478 m!2673780))

(declare-fun m!2673804 () Bool)

(assert (=> b!2241478 m!2673804))

(declare-fun m!2673806 () Bool)

(assert (=> b!2241478 m!2673806))

(declare-fun m!2673808 () Bool)

(assert (=> b!2241478 m!2673808))

(declare-fun m!2673810 () Bool)

(assert (=> b!2241478 m!2673810))

(assert (=> b!2241478 m!2673780))

(declare-fun m!2673812 () Bool)

(assert (=> b!2241478 m!2673812))

(declare-fun m!2673814 () Bool)

(assert (=> b!2241478 m!2673814))

(declare-fun m!2673816 () Bool)

(assert (=> b!2241478 m!2673816))

(assert (=> b!2241478 m!2673812))

(declare-fun m!2673818 () Bool)

(assert (=> b!2241478 m!2673818))

(assert (=> b!2241478 m!2673737))

(declare-fun m!2673820 () Bool)

(assert (=> b!2241478 m!2673820))

(declare-fun m!2673822 () Bool)

(assert (=> b!2241478 m!2673822))

(declare-fun m!2673824 () Bool)

(assert (=> b!2241478 m!2673824))

(assert (=> b!2241478 m!2673711))

(declare-fun m!2673826 () Bool)

(assert (=> b!2241478 m!2673826))

(assert (=> b!2241478 m!2673798))

(declare-fun m!2673828 () Bool)

(assert (=> b!2241478 m!2673828))

(assert (=> b!2241478 m!2673820))

(assert (=> b!2241478 m!2673798))

(assert (=> b!2241478 m!2673804))

(declare-fun m!2673830 () Bool)

(assert (=> b!2241478 m!2673830))

(assert (=> d!665835 m!2673691))

(assert (=> d!665835 m!2673705))

(declare-fun m!2673832 () Bool)

(assert (=> b!2241477 m!2673832))

(assert (=> b!2241475 m!2673832))

(assert (=> b!2241411 d!665835))

(declare-fun b!2241491 () Bool)

(declare-fun e!1433332 () (InoxSet Context!4142))

(declare-fun e!1433334 () (InoxSet Context!4142))

(assert (=> b!2241491 (= e!1433332 e!1433334)))

(declare-fun c!356905 () Bool)

(assert (=> b!2241491 (= c!356905 ((_ is Cons!26449) (exprs!2571 (_1!15460 lt!834377))))))

(declare-fun b!2241492 () Bool)

(declare-fun e!1433333 () Bool)

(declare-fun nullable!1792 (Regex!6523) Bool)

(assert (=> b!2241492 (= e!1433333 (nullable!1792 (h!31850 (exprs!2571 (_1!15460 lt!834377)))))))

(declare-fun bm!135289 () Bool)

(declare-fun call!135294 () (InoxSet Context!4142))

(declare-fun derivationStepZipperDown!85 (Regex!6523 Context!4142 C!13192) (InoxSet Context!4142))

(assert (=> bm!135289 (= call!135294 (derivationStepZipperDown!85 (h!31850 (exprs!2571 (_1!15460 lt!834377))) (Context!4143 (t!199981 (exprs!2571 (_1!15460 lt!834377)))) (_2!15460 lt!834377)))))

(declare-fun d!665837 () Bool)

(declare-fun c!356906 () Bool)

(assert (=> d!665837 (= c!356906 e!1433333)))

(declare-fun res!957956 () Bool)

(assert (=> d!665837 (=> (not res!957956) (not e!1433333))))

(assert (=> d!665837 (= res!957956 ((_ is Cons!26449) (exprs!2571 (_1!15460 lt!834377))))))

(assert (=> d!665837 (= (derivationStepZipperUp!48 (_1!15460 lt!834377) (_2!15460 lt!834377)) e!1433332)))

(declare-fun b!2241493 () Bool)

(assert (=> b!2241493 (= e!1433334 ((as const (Array Context!4142 Bool)) false))))

(declare-fun b!2241494 () Bool)

(assert (=> b!2241494 (= e!1433334 call!135294)))

(declare-fun b!2241495 () Bool)

(assert (=> b!2241495 (= e!1433332 ((_ map or) call!135294 (derivationStepZipperUp!48 (Context!4143 (t!199981 (exprs!2571 (_1!15460 lt!834377)))) (_2!15460 lt!834377))))))

(assert (= (and d!665837 res!957956) b!2241492))

(assert (= (and d!665837 c!356906) b!2241495))

(assert (= (and d!665837 (not c!356906)) b!2241491))

(assert (= (and b!2241491 c!356905) b!2241494))

(assert (= (and b!2241491 (not c!356905)) b!2241493))

(assert (= (or b!2241495 b!2241494) bm!135289))

(declare-fun m!2673834 () Bool)

(assert (=> b!2241492 m!2673834))

(declare-fun m!2673836 () Bool)

(assert (=> bm!135289 m!2673836))

(declare-fun m!2673838 () Bool)

(assert (=> b!2241495 m!2673838))

(assert (=> b!2241411 d!665837))

(declare-fun d!665839 () Bool)

(declare-fun dynLambda!11546 (Int tuple2!25902) Bool)

(assert (=> d!665839 (dynLambda!11546 lambda!84824 (tuple2!25903 lt!834377 (apply!6529 (cache!3452 thiss!28603) lt!834377)))))

(declare-fun lt!834531 () Unit!39430)

(declare-fun choose!13143 (MutableMap!3071 tuple2!25900 Int) Unit!39430)

(assert (=> d!665839 (= lt!834531 (choose!13143 (cache!3452 thiss!28603) lt!834377 lambda!84824))))

(assert (=> d!665839 (valid!2375 (cache!3452 thiss!28603))))

(assert (=> d!665839 (= (lemmaForallPairsThenForLookup!39 (cache!3452 thiss!28603) lt!834377 lambda!84824) lt!834531)))

(declare-fun b_lambda!71789 () Bool)

(assert (=> (not b_lambda!71789) (not d!665839)))

(declare-fun bs!454337 () Bool)

(assert (= bs!454337 d!665839))

(assert (=> bs!454337 m!2673693))

(declare-fun m!2673840 () Bool)

(assert (=> bs!454337 m!2673840))

(declare-fun m!2673842 () Bool)

(assert (=> bs!454337 m!2673842))

(assert (=> bs!454337 m!2673705))

(assert (=> b!2241411 d!665839))

(declare-fun setIsEmpty!20614 () Bool)

(declare-fun setRes!20614 () Bool)

(assert (=> setIsEmpty!20614 setRes!20614))

(declare-fun b!2241504 () Bool)

(declare-fun e!1433341 () Bool)

(declare-fun tp!706692 () Bool)

(assert (=> b!2241504 (= e!1433341 tp!706692)))

(declare-fun e!1433343 () Bool)

(assert (=> b!2241405 (= tp!706680 e!1433343)))

(declare-fun b!2241505 () Bool)

(declare-fun tp!706695 () Bool)

(assert (=> b!2241505 (= e!1433343 (and (inv!35923 (_1!15460 (_1!15461 (h!31851 (zeroValue!3419 (v!30085 (underlying!6523 (v!30086 (underlying!6524 (cache!3452 thiss!28603)))))))))) e!1433341 tp_is_empty!10267 setRes!20614 tp!706695))))

(declare-fun condSetEmpty!20614 () Bool)

(assert (=> b!2241505 (= condSetEmpty!20614 (= (_2!15461 (h!31851 (zeroValue!3419 (v!30085 (underlying!6523 (v!30086 (underlying!6524 (cache!3452 thiss!28603)))))))) ((as const (Array Context!4142 Bool)) false)))))

(declare-fun tp!706693 () Bool)

(declare-fun e!1433342 () Bool)

(declare-fun setElem!20614 () Context!4142)

(declare-fun setNonEmpty!20614 () Bool)

(assert (=> setNonEmpty!20614 (= setRes!20614 (and tp!706693 (inv!35923 setElem!20614) e!1433342))))

(declare-fun setRest!20614 () (InoxSet Context!4142))

(assert (=> setNonEmpty!20614 (= (_2!15461 (h!31851 (zeroValue!3419 (v!30085 (underlying!6523 (v!30086 (underlying!6524 (cache!3452 thiss!28603)))))))) ((_ map or) (store ((as const (Array Context!4142 Bool)) false) setElem!20614 true) setRest!20614))))

(declare-fun b!2241506 () Bool)

(declare-fun tp!706694 () Bool)

(assert (=> b!2241506 (= e!1433342 tp!706694)))

(assert (= b!2241505 b!2241504))

(assert (= (and b!2241505 condSetEmpty!20614) setIsEmpty!20614))

(assert (= (and b!2241505 (not condSetEmpty!20614)) setNonEmpty!20614))

(assert (= setNonEmpty!20614 b!2241506))

(assert (= (and b!2241405 ((_ is Cons!26450) (zeroValue!3419 (v!30085 (underlying!6523 (v!30086 (underlying!6524 (cache!3452 thiss!28603)))))))) b!2241505))

(declare-fun m!2673844 () Bool)

(assert (=> b!2241505 m!2673844))

(declare-fun m!2673846 () Bool)

(assert (=> setNonEmpty!20614 m!2673846))

(declare-fun setIsEmpty!20615 () Bool)

(declare-fun setRes!20615 () Bool)

(assert (=> setIsEmpty!20615 setRes!20615))

(declare-fun b!2241507 () Bool)

(declare-fun e!1433344 () Bool)

(declare-fun tp!706696 () Bool)

(assert (=> b!2241507 (= e!1433344 tp!706696)))

(declare-fun e!1433346 () Bool)

(assert (=> b!2241405 (= tp!706683 e!1433346)))

(declare-fun tp!706699 () Bool)

(declare-fun b!2241508 () Bool)

(assert (=> b!2241508 (= e!1433346 (and (inv!35923 (_1!15460 (_1!15461 (h!31851 (minValue!3419 (v!30085 (underlying!6523 (v!30086 (underlying!6524 (cache!3452 thiss!28603)))))))))) e!1433344 tp_is_empty!10267 setRes!20615 tp!706699))))

(declare-fun condSetEmpty!20615 () Bool)

(assert (=> b!2241508 (= condSetEmpty!20615 (= (_2!15461 (h!31851 (minValue!3419 (v!30085 (underlying!6523 (v!30086 (underlying!6524 (cache!3452 thiss!28603)))))))) ((as const (Array Context!4142 Bool)) false)))))

(declare-fun tp!706697 () Bool)

(declare-fun setNonEmpty!20615 () Bool)

(declare-fun setElem!20615 () Context!4142)

(declare-fun e!1433345 () Bool)

(assert (=> setNonEmpty!20615 (= setRes!20615 (and tp!706697 (inv!35923 setElem!20615) e!1433345))))

(declare-fun setRest!20615 () (InoxSet Context!4142))

(assert (=> setNonEmpty!20615 (= (_2!15461 (h!31851 (minValue!3419 (v!30085 (underlying!6523 (v!30086 (underlying!6524 (cache!3452 thiss!28603)))))))) ((_ map or) (store ((as const (Array Context!4142 Bool)) false) setElem!20615 true) setRest!20615))))

(declare-fun b!2241509 () Bool)

(declare-fun tp!706698 () Bool)

(assert (=> b!2241509 (= e!1433345 tp!706698)))

(assert (= b!2241508 b!2241507))

(assert (= (and b!2241508 condSetEmpty!20615) setIsEmpty!20615))

(assert (= (and b!2241508 (not condSetEmpty!20615)) setNonEmpty!20615))

(assert (= setNonEmpty!20615 b!2241509))

(assert (= (and b!2241405 ((_ is Cons!26450) (minValue!3419 (v!30085 (underlying!6523 (v!30086 (underlying!6524 (cache!3452 thiss!28603)))))))) b!2241508))

(declare-fun m!2673848 () Bool)

(assert (=> b!2241508 m!2673848))

(declare-fun m!2673850 () Bool)

(assert (=> setNonEmpty!20615 m!2673850))

(declare-fun b!2241524 () Bool)

(declare-fun e!1433360 () Bool)

(declare-fun tp!706721 () Bool)

(assert (=> b!2241524 (= e!1433360 tp!706721)))

(declare-fun condMapEmpty!14810 () Bool)

(declare-fun mapDefault!14810 () List!26544)

(assert (=> mapNonEmpty!14807 (= condMapEmpty!14810 (= mapRest!14807 ((as const (Array (_ BitVec 32) List!26544)) mapDefault!14810)))))

(declare-fun e!1433363 () Bool)

(declare-fun mapRes!14810 () Bool)

(assert (=> mapNonEmpty!14807 (= tp!706678 (and e!1433363 mapRes!14810))))

(declare-fun setRes!20620 () Bool)

(declare-fun tp!706724 () Bool)

(declare-fun e!1433364 () Bool)

(declare-fun setElem!20621 () Context!4142)

(declare-fun setNonEmpty!20620 () Bool)

(assert (=> setNonEmpty!20620 (= setRes!20620 (and tp!706724 (inv!35923 setElem!20621) e!1433364))))

(declare-fun mapValue!14810 () List!26544)

(declare-fun setRest!20620 () (InoxSet Context!4142))

(assert (=> setNonEmpty!20620 (= (_2!15461 (h!31851 mapValue!14810)) ((_ map or) (store ((as const (Array Context!4142 Bool)) false) setElem!20621 true) setRest!20620))))

(declare-fun b!2241525 () Bool)

(declare-fun tp!706723 () Bool)

(assert (=> b!2241525 (= e!1433364 tp!706723)))

(declare-fun b!2241526 () Bool)

(declare-fun e!1433361 () Bool)

(declare-fun tp!706726 () Bool)

(assert (=> b!2241526 (= e!1433361 tp!706726)))

(declare-fun setIsEmpty!20620 () Bool)

(declare-fun setRes!20621 () Bool)

(assert (=> setIsEmpty!20620 setRes!20621))

(declare-fun b!2241527 () Bool)

(declare-fun e!1433359 () Bool)

(declare-fun tp!706722 () Bool)

(assert (=> b!2241527 (= e!1433359 (and (inv!35923 (_1!15460 (_1!15461 (h!31851 mapValue!14810)))) e!1433361 tp_is_empty!10267 setRes!20620 tp!706722))))

(declare-fun condSetEmpty!20621 () Bool)

(assert (=> b!2241527 (= condSetEmpty!20621 (= (_2!15461 (h!31851 mapValue!14810)) ((as const (Array Context!4142 Bool)) false)))))

(declare-fun b!2241528 () Bool)

(declare-fun e!1433362 () Bool)

(declare-fun tp!706720 () Bool)

(assert (=> b!2241528 (= e!1433362 tp!706720)))

(declare-fun mapNonEmpty!14810 () Bool)

(declare-fun tp!706718 () Bool)

(assert (=> mapNonEmpty!14810 (= mapRes!14810 (and tp!706718 e!1433359))))

(declare-fun mapKey!14810 () (_ BitVec 32))

(declare-fun mapRest!14810 () (Array (_ BitVec 32) List!26544))

(assert (=> mapNonEmpty!14810 (= mapRest!14807 (store mapRest!14810 mapKey!14810 mapValue!14810))))

(declare-fun mapIsEmpty!14810 () Bool)

(assert (=> mapIsEmpty!14810 mapRes!14810))

(declare-fun tp!706725 () Bool)

(declare-fun setElem!20620 () Context!4142)

(declare-fun setNonEmpty!20621 () Bool)

(assert (=> setNonEmpty!20621 (= setRes!20621 (and tp!706725 (inv!35923 setElem!20620) e!1433360))))

(declare-fun setRest!20621 () (InoxSet Context!4142))

(assert (=> setNonEmpty!20621 (= (_2!15461 (h!31851 mapDefault!14810)) ((_ map or) (store ((as const (Array Context!4142 Bool)) false) setElem!20620 true) setRest!20621))))

(declare-fun tp!706719 () Bool)

(declare-fun b!2241529 () Bool)

(assert (=> b!2241529 (= e!1433363 (and (inv!35923 (_1!15460 (_1!15461 (h!31851 mapDefault!14810)))) e!1433362 tp_is_empty!10267 setRes!20621 tp!706719))))

(declare-fun condSetEmpty!20620 () Bool)

(assert (=> b!2241529 (= condSetEmpty!20620 (= (_2!15461 (h!31851 mapDefault!14810)) ((as const (Array Context!4142 Bool)) false)))))

(declare-fun setIsEmpty!20621 () Bool)

(assert (=> setIsEmpty!20621 setRes!20620))

(assert (= (and mapNonEmpty!14807 condMapEmpty!14810) mapIsEmpty!14810))

(assert (= (and mapNonEmpty!14807 (not condMapEmpty!14810)) mapNonEmpty!14810))

(assert (= b!2241527 b!2241526))

(assert (= (and b!2241527 condSetEmpty!20621) setIsEmpty!20621))

(assert (= (and b!2241527 (not condSetEmpty!20621)) setNonEmpty!20620))

(assert (= setNonEmpty!20620 b!2241525))

(assert (= (and mapNonEmpty!14810 ((_ is Cons!26450) mapValue!14810)) b!2241527))

(assert (= b!2241529 b!2241528))

(assert (= (and b!2241529 condSetEmpty!20620) setIsEmpty!20620))

(assert (= (and b!2241529 (not condSetEmpty!20620)) setNonEmpty!20621))

(assert (= setNonEmpty!20621 b!2241524))

(assert (= (and mapNonEmpty!14807 ((_ is Cons!26450) mapDefault!14810)) b!2241529))

(declare-fun m!2673852 () Bool)

(assert (=> setNonEmpty!20620 m!2673852))

(declare-fun m!2673854 () Bool)

(assert (=> b!2241527 m!2673854))

(declare-fun m!2673856 () Bool)

(assert (=> setNonEmpty!20621 m!2673856))

(declare-fun m!2673858 () Bool)

(assert (=> b!2241529 m!2673858))

(declare-fun m!2673860 () Bool)

(assert (=> mapNonEmpty!14810 m!2673860))

(declare-fun setIsEmpty!20622 () Bool)

(declare-fun setRes!20622 () Bool)

(assert (=> setIsEmpty!20622 setRes!20622))

(declare-fun b!2241530 () Bool)

(declare-fun e!1433365 () Bool)

(declare-fun tp!706727 () Bool)

(assert (=> b!2241530 (= e!1433365 tp!706727)))

(declare-fun e!1433367 () Bool)

(assert (=> mapNonEmpty!14807 (= tp!706679 e!1433367)))

(declare-fun tp!706730 () Bool)

(declare-fun b!2241531 () Bool)

(assert (=> b!2241531 (= e!1433367 (and (inv!35923 (_1!15460 (_1!15461 (h!31851 mapValue!14807)))) e!1433365 tp_is_empty!10267 setRes!20622 tp!706730))))

(declare-fun condSetEmpty!20622 () Bool)

(assert (=> b!2241531 (= condSetEmpty!20622 (= (_2!15461 (h!31851 mapValue!14807)) ((as const (Array Context!4142 Bool)) false)))))

(declare-fun e!1433366 () Bool)

(declare-fun tp!706728 () Bool)

(declare-fun setElem!20622 () Context!4142)

(declare-fun setNonEmpty!20622 () Bool)

(assert (=> setNonEmpty!20622 (= setRes!20622 (and tp!706728 (inv!35923 setElem!20622) e!1433366))))

(declare-fun setRest!20622 () (InoxSet Context!4142))

(assert (=> setNonEmpty!20622 (= (_2!15461 (h!31851 mapValue!14807)) ((_ map or) (store ((as const (Array Context!4142 Bool)) false) setElem!20622 true) setRest!20622))))

(declare-fun b!2241532 () Bool)

(declare-fun tp!706729 () Bool)

(assert (=> b!2241532 (= e!1433366 tp!706729)))

(assert (= b!2241531 b!2241530))

(assert (= (and b!2241531 condSetEmpty!20622) setIsEmpty!20622))

(assert (= (and b!2241531 (not condSetEmpty!20622)) setNonEmpty!20622))

(assert (= setNonEmpty!20622 b!2241532))

(assert (= (and mapNonEmpty!14807 ((_ is Cons!26450) mapValue!14807)) b!2241531))

(declare-fun m!2673862 () Bool)

(assert (=> b!2241531 m!2673862))

(declare-fun m!2673864 () Bool)

(assert (=> setNonEmpty!20622 m!2673864))

(declare-fun setIsEmpty!20623 () Bool)

(declare-fun setRes!20623 () Bool)

(assert (=> setIsEmpty!20623 setRes!20623))

(declare-fun b!2241533 () Bool)

(declare-fun e!1433368 () Bool)

(declare-fun tp!706731 () Bool)

(assert (=> b!2241533 (= e!1433368 tp!706731)))

(declare-fun e!1433370 () Bool)

(assert (=> b!2241406 (= tp!706681 e!1433370)))

(declare-fun b!2241534 () Bool)

(declare-fun tp!706734 () Bool)

(assert (=> b!2241534 (= e!1433370 (and (inv!35923 (_1!15460 (_1!15461 (h!31851 mapDefault!14807)))) e!1433368 tp_is_empty!10267 setRes!20623 tp!706734))))

(declare-fun condSetEmpty!20623 () Bool)

(assert (=> b!2241534 (= condSetEmpty!20623 (= (_2!15461 (h!31851 mapDefault!14807)) ((as const (Array Context!4142 Bool)) false)))))

(declare-fun tp!706732 () Bool)

(declare-fun setNonEmpty!20623 () Bool)

(declare-fun setElem!20623 () Context!4142)

(declare-fun e!1433369 () Bool)

(assert (=> setNonEmpty!20623 (= setRes!20623 (and tp!706732 (inv!35923 setElem!20623) e!1433369))))

(declare-fun setRest!20623 () (InoxSet Context!4142))

(assert (=> setNonEmpty!20623 (= (_2!15461 (h!31851 mapDefault!14807)) ((_ map or) (store ((as const (Array Context!4142 Bool)) false) setElem!20623 true) setRest!20623))))

(declare-fun b!2241535 () Bool)

(declare-fun tp!706733 () Bool)

(assert (=> b!2241535 (= e!1433369 tp!706733)))

(assert (= b!2241534 b!2241533))

(assert (= (and b!2241534 condSetEmpty!20623) setIsEmpty!20623))

(assert (= (and b!2241534 (not condSetEmpty!20623)) setNonEmpty!20623))

(assert (= setNonEmpty!20623 b!2241535))

(assert (= (and b!2241406 ((_ is Cons!26450) mapDefault!14807)) b!2241534))

(declare-fun m!2673866 () Bool)

(assert (=> b!2241534 m!2673866))

(declare-fun m!2673868 () Bool)

(assert (=> setNonEmpty!20623 m!2673868))

(declare-fun b!2241540 () Bool)

(declare-fun e!1433373 () Bool)

(declare-fun tp!706739 () Bool)

(declare-fun tp!706740 () Bool)

(assert (=> b!2241540 (= e!1433373 (and tp!706739 tp!706740))))

(assert (=> b!2241407 (= tp!706676 e!1433373)))

(assert (= (and b!2241407 ((_ is Cons!26449) (exprs!2571 ctx!36))) b!2241540))

(declare-fun b_lambda!71791 () Bool)

(assert (= b_lambda!71787 (or (and b!2241413 b_free!65105) b_lambda!71791)))

(declare-fun b_lambda!71793 () Bool)

(assert (= b_lambda!71789 (or b!2241411 b_lambda!71793)))

(declare-fun bs!454338 () Bool)

(declare-fun d!665841 () Bool)

(assert (= bs!454338 (and d!665841 b!2241411)))

(assert (=> bs!454338 (= (dynLambda!11546 lambda!84824 (tuple2!25903 lt!834377 (apply!6529 (cache!3452 thiss!28603) lt!834377))) (= (_2!15461 (tuple2!25903 lt!834377 (apply!6529 (cache!3452 thiss!28603) lt!834377))) (derivationStepZipperUp!48 (_1!15460 (_1!15461 (tuple2!25903 lt!834377 (apply!6529 (cache!3452 thiss!28603) lt!834377)))) (_2!15460 (_1!15461 (tuple2!25903 lt!834377 (apply!6529 (cache!3452 thiss!28603) lt!834377)))))))))

(declare-fun m!2673870 () Bool)

(assert (=> bs!454338 m!2673870))

(assert (=> d!665839 d!665841))

(declare-fun b_lambda!71795 () Bool)

(assert (= b_lambda!71785 (or (and b!2241413 b_free!65105) b_lambda!71795)))

(check-sat (not setNonEmpty!20623) (not b!2241505) (not b!2241507) (not d!665821) (not b!2241509) (not bm!135284) (not b!2241462) (not setNonEmpty!20615) (not mapNonEmpty!14810) (not b_lambda!71795) (not b_lambda!71793) (not b!2241506) (not b!2241495) (not b!2241479) (not b!2241445) (not b!2241452) (not b!2241526) (not b!2241478) (not d!665835) (not b!2241525) (not d!665829) (not d!665839) (not d!665833) (not b!2241524) (not bs!454338) (not b!2241531) (not bm!135283) (not setNonEmpty!20622) (not b!2241532) (not b_next!65811) (not b!2241533) (not bm!135286) (not bm!135282) (not b!2241459) (not b!2241420) b_and!175131 (not b!2241450) (not b!2241476) tp_is_empty!10267 (not b!2241528) (not d!665827) (not b!2241535) (not b_next!65809) (not b!2241492) (not setNonEmpty!20620) (not bm!135285) (not setNonEmpty!20621) (not bm!135289) (not b!2241529) (not setNonEmpty!20614) (not b!2241527) (not b!2241458) b_and!175135 (not b!2241508) (not b!2241504) (not b!2241419) (not bm!135281) (not b_lambda!71791) (not tb!132869) (not b!2241453) (not b!2241534) (not b!2241540) (not b!2241449) (not b!2241530))
(check-sat b_and!175135 b_and!175131 (not b_next!65811) (not b_next!65809))
