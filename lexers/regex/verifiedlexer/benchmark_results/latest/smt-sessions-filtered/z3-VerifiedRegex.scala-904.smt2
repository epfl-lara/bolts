; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!47054 () Bool)

(assert start!47054)

(declare-fun b_free!13631 () Bool)

(declare-fun b_next!13643 () Bool)

(assert (=> start!47054 (= b_free!13631 (not b_next!13643))))

(declare-fun tp!161413 () Bool)

(declare-fun b_and!51111 () Bool)

(assert (=> start!47054 (= tp!161413 b_and!51111)))

(declare-fun b!517457 () Bool)

(declare-fun b_free!13633 () Bool)

(declare-fun b_next!13645 () Bool)

(assert (=> b!517457 (= b_free!13633 (not b_next!13645))))

(declare-fun tp!161414 () Bool)

(declare-fun b_and!51113 () Bool)

(assert (=> b!517457 (= tp!161414 b_and!51113)))

(declare-fun b!517466 () Bool)

(declare-fun b_free!13635 () Bool)

(declare-fun b_next!13647 () Bool)

(assert (=> b!517466 (= b_free!13635 (not b_next!13647))))

(declare-fun tp!161412 () Bool)

(declare-fun b_and!51115 () Bool)

(assert (=> b!517466 (= tp!161412 b_and!51115)))

(declare-fun res!219442 () Bool)

(declare-fun e!309755 () Bool)

(assert (=> start!47054 (=> (not res!219442) (not e!309755))))

(declare-datatypes ((V!1535 0))(
  ( (V!1536 (val!1813 Int)) )
))
(declare-datatypes ((K!1437 0))(
  ( (K!1438 (val!1814 Int)) )
))
(declare-datatypes ((tuple2!5860 0))(
  ( (tuple2!5861 (_1!3146 K!1437) (_2!3146 V!1535)) )
))
(declare-datatypes ((List!4752 0))(
  ( (Nil!4742) (Cons!4742 (h!10142 tuple2!5860) (t!73328 List!4752)) )
))
(declare-datatypes ((array!2055 0))(
  ( (array!2056 (arr!942 (Array (_ BitVec 32) List!4752)) (size!3876 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!501 0))(
  ( (HashableExt!500 (__x!3478 Int)) )
))
(declare-datatypes ((array!2057 0))(
  ( (array!2058 (arr!943 (Array (_ BitVec 32) (_ BitVec 64))) (size!3877 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1058 0))(
  ( (LongMapFixedSize!1059 (defaultEntry!880 Int) (mask!1958 (_ BitVec 32)) (extraKeys!775 (_ BitVec 32)) (zeroValue!785 List!4752) (minValue!785 List!4752) (_size!1167 (_ BitVec 32)) (_keys!820 array!2057) (_values!807 array!2055) (_vacant!590 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!2057 0))(
  ( (Cell!2058 (v!15796 LongMapFixedSize!1058)) )
))
(declare-datatypes ((MutLongMap!529 0))(
  ( (LongMap!529 (underlying!1237 Cell!2057)) (MutLongMapExt!528 (__x!3479 Int)) )
))
(declare-datatypes ((Cell!2059 0))(
  ( (Cell!2060 (v!15797 MutLongMap!529)) )
))
(declare-datatypes ((MutableMap!501 0))(
  ( (MutableMapExt!500 (__x!3480 Int)) (HashMap!501 (underlying!1238 Cell!2059) (hashF!2398 Hashable!501) (_size!1168 (_ BitVec 32)) (defaultValue!650 Int)) )
))
(declare-fun hm!65 () MutableMap!501)

(get-info :version)

(assert (=> start!47054 (= res!219442 ((_ is HashMap!501) hm!65))))

(assert (=> start!47054 e!309755))

(declare-fun e!309752 () Bool)

(assert (=> start!47054 e!309752))

(declare-fun tp_is_empty!2651 () Bool)

(assert (=> start!47054 tp_is_empty!2651))

(assert (=> start!47054 tp!161413))

(declare-fun b!517454 () Bool)

(declare-fun e!309754 () Bool)

(declare-fun e!309751 () Bool)

(assert (=> b!517454 (= e!309754 e!309751)))

(declare-fun b!517455 () Bool)

(declare-fun e!309758 () Bool)

(assert (=> b!517455 (= e!309751 e!309758)))

(declare-fun b!517456 () Bool)

(declare-fun res!219443 () Bool)

(declare-fun e!309757 () Bool)

(assert (=> b!517456 (=> (not res!219443) (not e!309757))))

(declare-datatypes ((tuple2!5862 0))(
  ( (tuple2!5863 (_1!3147 Bool) (_2!3147 MutableMap!501)) )
))
(declare-fun lt!215482 () tuple2!5862)

(assert (=> b!517456 (= res!219443 (not (_1!3147 lt!215482)))))

(declare-fun mapIsEmpty!2050 () Bool)

(declare-fun mapRes!2050 () Bool)

(assert (=> mapIsEmpty!2050 mapRes!2050))

(declare-fun tp!161416 () Bool)

(declare-fun tp!161418 () Bool)

(declare-fun e!309760 () Bool)

(declare-fun array_inv!689 (array!2057) Bool)

(declare-fun array_inv!690 (array!2055) Bool)

(assert (=> b!517457 (= e!309758 (and tp!161414 tp!161416 tp!161418 (array_inv!689 (_keys!820 (v!15796 (underlying!1237 (v!15797 (underlying!1238 hm!65)))))) (array_inv!690 (_values!807 (v!15796 (underlying!1237 (v!15797 (underlying!1238 hm!65)))))) e!309760))))

(declare-fun b!517458 () Bool)

(declare-fun res!219441 () Bool)

(assert (=> b!517458 (=> (not res!219441) (not e!309755))))

(declare-fun valid!498 (MutableMap!501) Bool)

(assert (=> b!517458 (= res!219441 (valid!498 hm!65))))

(declare-fun b!517459 () Bool)

(declare-fun e!309750 () Bool)

(declare-fun lt!215481 () MutLongMap!529)

(assert (=> b!517459 (= e!309750 (and e!309754 ((_ is LongMap!529) lt!215481)))))

(assert (=> b!517459 (= lt!215481 (v!15797 (underlying!1238 hm!65)))))

(declare-fun b!517460 () Bool)

(declare-fun e!309759 () Bool)

(declare-fun e!309753 () Bool)

(assert (=> b!517460 (= e!309759 e!309753)))

(declare-fun res!219444 () Bool)

(assert (=> b!517460 (=> (not res!219444) (not e!309753))))

(assert (=> b!517460 (= res!219444 (valid!498 (_2!3147 lt!215482)))))

(declare-fun k0!1740 () K!1437)

(declare-fun remove!47 (MutableMap!501 K!1437) tuple2!5862)

(assert (=> b!517460 (= lt!215482 (remove!47 hm!65 k0!1740))))

(declare-datatypes ((ListMap!209 0))(
  ( (ListMap!210 (toList!432 List!4752)) )
))
(declare-fun lt!215480 () ListMap!209)

(declare-fun lt!215483 () ListMap!209)

(declare-fun -!44 (ListMap!209 K!1437) ListMap!209)

(assert (=> b!517460 (= lt!215480 (-!44 lt!215483 k0!1740))))

(declare-fun b!517461 () Bool)

(declare-fun res!219448 () Bool)

(assert (=> b!517461 (=> (not res!219448) (not e!309757))))

(declare-fun invariantList!82 (List!4752) Bool)

(assert (=> b!517461 (= res!219448 (invariantList!82 (toList!432 lt!215480)))))

(declare-fun b!517462 () Bool)

(assert (=> b!517462 (= e!309757 (not (invariantList!82 (toList!432 lt!215483))))))

(declare-fun b!517463 () Bool)

(declare-fun tp!161417 () Bool)

(assert (=> b!517463 (= e!309760 (and tp!161417 mapRes!2050))))

(declare-fun condMapEmpty!2050 () Bool)

(declare-fun mapDefault!2050 () List!4752)

(assert (=> b!517463 (= condMapEmpty!2050 (= (arr!942 (_values!807 (v!15796 (underlying!1237 (v!15797 (underlying!1238 hm!65)))))) ((as const (Array (_ BitVec 32) List!4752)) mapDefault!2050)))))

(declare-fun b!517464 () Bool)

(declare-fun res!219446 () Bool)

(assert (=> b!517464 (=> (not res!219446) (not e!309757))))

(declare-fun lt!215484 () ListMap!209)

(declare-fun eq!39 (ListMap!209 ListMap!209) Bool)

(assert (=> b!517464 (= res!219446 (eq!39 lt!215484 lt!215483))))

(declare-fun b!517465 () Bool)

(assert (=> b!517465 (= e!309753 e!309757)))

(declare-fun res!219447 () Bool)

(assert (=> b!517465 (=> (not res!219447) (not e!309757))))

(assert (=> b!517465 (= res!219447 (invariantList!82 (toList!432 lt!215484)))))

(declare-fun map!1059 (MutableMap!501) ListMap!209)

(assert (=> b!517465 (= lt!215484 (map!1059 (_2!3147 lt!215482)))))

(assert (=> b!517466 (= e!309752 (and e!309750 tp!161412))))

(declare-fun mapNonEmpty!2050 () Bool)

(declare-fun tp!161415 () Bool)

(declare-fun tp!161419 () Bool)

(assert (=> mapNonEmpty!2050 (= mapRes!2050 (and tp!161415 tp!161419))))

(declare-fun mapValue!2050 () List!4752)

(declare-fun mapRest!2050 () (Array (_ BitVec 32) List!4752))

(declare-fun mapKey!2050 () (_ BitVec 32))

(assert (=> mapNonEmpty!2050 (= (arr!942 (_values!807 (v!15796 (underlying!1237 (v!15797 (underlying!1238 hm!65)))))) (store mapRest!2050 mapKey!2050 mapValue!2050))))

(declare-fun b!517467 () Bool)

(assert (=> b!517467 (= e!309755 e!309759)))

(declare-fun res!219445 () Bool)

(assert (=> b!517467 (=> (not res!219445) (not e!309759))))

(declare-fun p!6060 () Int)

(declare-fun forall!1414 (List!4752 Int) Bool)

(assert (=> b!517467 (= res!219445 (forall!1414 (toList!432 lt!215483) p!6060))))

(assert (=> b!517467 (= lt!215483 (map!1059 hm!65))))

(assert (= (and start!47054 res!219442) b!517458))

(assert (= (and b!517458 res!219441) b!517467))

(assert (= (and b!517467 res!219445) b!517460))

(assert (= (and b!517460 res!219444) b!517465))

(assert (= (and b!517465 res!219447) b!517456))

(assert (= (and b!517456 res!219443) b!517464))

(assert (= (and b!517464 res!219446) b!517461))

(assert (= (and b!517461 res!219448) b!517462))

(assert (= (and b!517463 condMapEmpty!2050) mapIsEmpty!2050))

(assert (= (and b!517463 (not condMapEmpty!2050)) mapNonEmpty!2050))

(assert (= b!517457 b!517463))

(assert (= b!517455 b!517457))

(assert (= b!517454 b!517455))

(assert (= (and b!517459 ((_ is LongMap!529) (v!15797 (underlying!1238 hm!65)))) b!517454))

(assert (= b!517466 b!517459))

(assert (= (and start!47054 ((_ is HashMap!501) hm!65)) b!517466))

(declare-fun m!764233 () Bool)

(assert (=> b!517464 m!764233))

(declare-fun m!764235 () Bool)

(assert (=> b!517458 m!764235))

(declare-fun m!764237 () Bool)

(assert (=> b!517467 m!764237))

(declare-fun m!764239 () Bool)

(assert (=> b!517467 m!764239))

(declare-fun m!764241 () Bool)

(assert (=> mapNonEmpty!2050 m!764241))

(declare-fun m!764243 () Bool)

(assert (=> b!517462 m!764243))

(declare-fun m!764245 () Bool)

(assert (=> b!517461 m!764245))

(declare-fun m!764247 () Bool)

(assert (=> b!517465 m!764247))

(declare-fun m!764249 () Bool)

(assert (=> b!517465 m!764249))

(declare-fun m!764251 () Bool)

(assert (=> b!517460 m!764251))

(declare-fun m!764253 () Bool)

(assert (=> b!517460 m!764253))

(declare-fun m!764255 () Bool)

(assert (=> b!517460 m!764255))

(declare-fun m!764257 () Bool)

(assert (=> b!517457 m!764257))

(declare-fun m!764259 () Bool)

(assert (=> b!517457 m!764259))

(check-sat (not b!517457) (not b_next!13643) (not b!517465) (not b!517467) (not b!517462) (not b!517460) b_and!51113 (not b!517458) b_and!51115 (not b_next!13645) (not b!517461) b_and!51111 (not mapNonEmpty!2050) (not b!517464) (not b_next!13647) (not b!517463) tp_is_empty!2651)
(check-sat (not b_next!13643) b_and!51111 (not b_next!13647) b_and!51113 b_and!51115 (not b_next!13645))
(get-model)

(declare-fun d!185027 () Bool)

(declare-fun noDuplicatedKeys!20 (List!4752) Bool)

(assert (=> d!185027 (= (invariantList!82 (toList!432 lt!215484)) (noDuplicatedKeys!20 (toList!432 lt!215484)))))

(declare-fun bs!60109 () Bool)

(assert (= bs!60109 d!185027))

(declare-fun m!764261 () Bool)

(assert (=> bs!60109 m!764261))

(assert (=> b!517465 d!185027))

(declare-fun d!185029 () Bool)

(declare-fun lt!215487 () ListMap!209)

(assert (=> d!185029 (invariantList!82 (toList!432 lt!215487))))

(declare-datatypes ((tuple2!5864 0))(
  ( (tuple2!5865 (_1!3148 (_ BitVec 64)) (_2!3148 List!4752)) )
))
(declare-datatypes ((List!4753 0))(
  ( (Nil!4743) (Cons!4743 (h!10143 tuple2!5864) (t!73331 List!4753)) )
))
(declare-fun extractMap!25 (List!4753) ListMap!209)

(declare-datatypes ((ListLongMap!87 0))(
  ( (ListLongMap!88 (toList!433 List!4753)) )
))
(declare-fun map!1060 (MutLongMap!529) ListLongMap!87)

(assert (=> d!185029 (= lt!215487 (extractMap!25 (toList!433 (map!1060 (v!15797 (underlying!1238 (_2!3147 lt!215482)))))))))

(assert (=> d!185029 (valid!498 (_2!3147 lt!215482))))

(assert (=> d!185029 (= (map!1059 (_2!3147 lt!215482)) lt!215487)))

(declare-fun bs!60110 () Bool)

(assert (= bs!60110 d!185029))

(declare-fun m!764263 () Bool)

(assert (=> bs!60110 m!764263))

(declare-fun m!764265 () Bool)

(assert (=> bs!60110 m!764265))

(declare-fun m!764267 () Bool)

(assert (=> bs!60110 m!764267))

(assert (=> bs!60110 m!764251))

(assert (=> b!517465 d!185029))

(declare-fun d!185031 () Bool)

(declare-fun res!219453 () Bool)

(declare-fun e!309763 () Bool)

(assert (=> d!185031 (=> (not res!219453) (not e!309763))))

(declare-fun valid!499 (MutLongMap!529) Bool)

(assert (=> d!185031 (= res!219453 (valid!499 (v!15797 (underlying!1238 (_2!3147 lt!215482)))))))

(assert (=> d!185031 (= (valid!498 (_2!3147 lt!215482)) e!309763)))

(declare-fun b!517472 () Bool)

(declare-fun res!219454 () Bool)

(assert (=> b!517472 (=> (not res!219454) (not e!309763))))

(declare-fun lambda!14592 () Int)

(declare-fun forall!1415 (List!4753 Int) Bool)

(assert (=> b!517472 (= res!219454 (forall!1415 (toList!433 (map!1060 (v!15797 (underlying!1238 (_2!3147 lt!215482))))) lambda!14592))))

(declare-fun b!517473 () Bool)

(declare-fun allKeysSameHashInMap!32 (ListLongMap!87 Hashable!501) Bool)

(assert (=> b!517473 (= e!309763 (allKeysSameHashInMap!32 (map!1060 (v!15797 (underlying!1238 (_2!3147 lt!215482)))) (hashF!2398 (_2!3147 lt!215482))))))

(assert (= (and d!185031 res!219453) b!517472))

(assert (= (and b!517472 res!219454) b!517473))

(declare-fun m!764269 () Bool)

(assert (=> d!185031 m!764269))

(assert (=> b!517472 m!764265))

(declare-fun m!764271 () Bool)

(assert (=> b!517472 m!764271))

(assert (=> b!517473 m!764265))

(assert (=> b!517473 m!764265))

(declare-fun m!764273 () Bool)

(assert (=> b!517473 m!764273))

(assert (=> b!517460 d!185031))

(declare-fun bs!60111 () Bool)

(declare-fun b!517503 () Bool)

(assert (= bs!60111 (and b!517503 b!517472)))

(declare-fun lambda!14599 () Int)

(assert (=> bs!60111 (= lambda!14599 lambda!14592)))

(declare-fun call!37881 () ListMap!209)

(declare-fun call!37877 () ListMap!209)

(declare-fun c!100214 () Bool)

(declare-fun lt!215553 () ListMap!209)

(declare-fun bm!37870 () Bool)

(assert (=> bm!37870 (= call!37877 (-!44 (ite c!100214 call!37881 lt!215553) k0!1740))))

(declare-fun lt!215575 () ListLongMap!87)

(declare-fun lt!215549 () ListLongMap!87)

(declare-fun bm!37871 () Bool)

(assert (=> bm!37871 (= call!37881 (extractMap!25 (ite c!100214 (toList!433 lt!215549) (toList!433 lt!215575))))))

(declare-fun bm!37872 () Bool)

(declare-fun call!37882 () ListMap!209)

(assert (=> bm!37872 (= call!37882 (map!1059 hm!65))))

(declare-fun bm!37873 () Bool)

(declare-fun call!37880 () Bool)

(declare-datatypes ((Unit!8662 0))(
  ( (Unit!8663) )
))
(declare-datatypes ((tuple2!5866 0))(
  ( (tuple2!5867 (_1!3149 Unit!8662) (_2!3149 MutableMap!501)) )
))
(declare-fun lt!215572 () tuple2!5866)

(assert (=> bm!37873 (= call!37880 (valid!498 (_2!3149 lt!215572)))))

(declare-fun b!517496 () Bool)

(declare-fun e!309776 () tuple2!5862)

(assert (=> b!517496 (= e!309776 (tuple2!5863 true hm!65))))

(declare-fun call!37875 () ListLongMap!87)

(assert (=> b!517496 (= lt!215549 call!37875)))

(declare-fun lt!215567 () Unit!8662)

(declare-fun lemmaRemoveNotContainedDoesNotChange!17 (ListLongMap!87 K!1437 Hashable!501) Unit!8662)

(assert (=> b!517496 (= lt!215567 (lemmaRemoveNotContainedDoesNotChange!17 lt!215549 k0!1740 (hashF!2398 hm!65)))))

(assert (=> b!517496 (= call!37881 call!37877)))

(declare-fun lt!215571 () Unit!8662)

(assert (=> b!517496 (= lt!215571 lt!215567)))

(declare-fun b!517497 () Bool)

(declare-fun e!309780 () Bool)

(declare-fun call!37879 () Bool)

(assert (=> b!517497 (= e!309780 call!37879)))

(declare-fun bm!37874 () Bool)

(declare-fun call!37876 () ListMap!209)

(declare-fun lt!215570 () tuple2!5862)

(assert (=> bm!37874 (= call!37876 (map!1059 (_2!3147 lt!215570)))))

(declare-fun b!517498 () Bool)

(declare-fun e!309777 () ListMap!209)

(assert (=> b!517498 (= e!309777 call!37882)))

(declare-fun b!517499 () Bool)

(declare-fun call!37878 () ListMap!209)

(assert (=> b!517499 (eq!39 call!37878 call!37877)))

(declare-fun lt!215563 () Unit!8662)

(declare-fun lt!215554 () Unit!8662)

(assert (=> b!517499 (= lt!215563 lt!215554)))

(declare-fun lt!215559 () List!4752)

(declare-fun lt!215565 () (_ BitVec 64))

(declare-fun +!28 (ListLongMap!87 tuple2!5864) ListLongMap!87)

(assert (=> b!517499 (eq!39 (extractMap!25 (toList!433 (+!28 lt!215575 (tuple2!5865 lt!215565 lt!215559)))) (-!44 call!37881 k0!1740))))

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!17 (ListLongMap!87 (_ BitVec 64) List!4752 K!1437 Hashable!501) Unit!8662)

(assert (=> b!517499 (= lt!215554 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!17 lt!215575 lt!215565 lt!215559 k0!1740 (hashF!2398 (_2!3149 lt!215572))))))

(declare-fun lt!215573 () Unit!8662)

(declare-fun Unit!8664 () Unit!8662)

(assert (=> b!517499 (= lt!215573 Unit!8664)))

(declare-fun contains!1104 (ListMap!209 K!1437) Bool)

(assert (=> b!517499 (contains!1104 lt!215553 k0!1740)))

(declare-fun lt!215556 () Unit!8662)

(declare-fun Unit!8665 () Unit!8662)

(assert (=> b!517499 (= lt!215556 Unit!8665)))

(assert (=> b!517499 call!37880))

(declare-fun lt!215568 () Unit!8662)

(declare-fun Unit!8666 () Unit!8662)

(assert (=> b!517499 (= lt!215568 Unit!8666)))

(assert (=> b!517499 (allKeysSameHashInMap!32 (map!1060 (v!15797 (underlying!1238 (_2!3149 lt!215572)))) (hashF!2398 (_2!3149 lt!215572)))))

(declare-fun lt!215561 () Unit!8662)

(declare-fun Unit!8667 () Unit!8662)

(assert (=> b!517499 (= lt!215561 Unit!8667)))

(assert (=> b!517499 (forall!1415 (toList!433 (map!1060 (v!15797 (underlying!1238 (_2!3149 lt!215572))))) lambda!14599)))

(declare-fun lt!215555 () Unit!8662)

(declare-fun lt!215548 () Unit!8662)

(assert (=> b!517499 (= lt!215555 lt!215548)))

(declare-fun e!309778 () Bool)

(assert (=> b!517499 e!309778))

(declare-fun res!219462 () Bool)

(assert (=> b!517499 (=> (not res!219462) (not e!309778))))

(declare-fun lt!215552 () ListLongMap!87)

(assert (=> b!517499 (= res!219462 (forall!1415 (toList!433 lt!215552) lambda!14599))))

(assert (=> b!517499 (= lt!215552 (+!28 lt!215575 (tuple2!5865 lt!215565 lt!215559)))))

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!19 (ListLongMap!87 (_ BitVec 64) List!4752 Hashable!501) Unit!8662)

(assert (=> b!517499 (= lt!215548 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!19 lt!215575 lt!215565 lt!215559 (hashF!2398 (_2!3149 lt!215572))))))

(declare-fun lt!215564 () Unit!8662)

(declare-fun lt!215560 () Unit!8662)

(assert (=> b!517499 (= lt!215564 lt!215560)))

(declare-fun lt!215577 () List!4752)

(declare-fun allKeysSameHash!20 (List!4752 (_ BitVec 64) Hashable!501) Bool)

(declare-fun removePairForKey!19 (List!4752 K!1437) List!4752)

(assert (=> b!517499 (allKeysSameHash!20 (removePairForKey!19 lt!215577 k0!1740) lt!215565 (hashF!2398 (_2!3149 lt!215572)))))

(declare-fun lemmaRemovePairForKeyPreservesHash!19 (List!4752 K!1437 (_ BitVec 64) Hashable!501) Unit!8662)

(assert (=> b!517499 (= lt!215560 (lemmaRemovePairForKeyPreservesHash!19 lt!215577 k0!1740 lt!215565 (hashF!2398 (_2!3149 lt!215572))))))

(declare-fun lt!215566 () Unit!8662)

(declare-fun lt!215574 () Unit!8662)

(assert (=> b!517499 (= lt!215566 lt!215574)))

(assert (=> b!517499 (allKeysSameHash!20 lt!215577 lt!215565 (hashF!2398 (_2!3149 lt!215572)))))

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!19 (List!4753 (_ BitVec 64) List!4752 Hashable!501) Unit!8662)

(assert (=> b!517499 (= lt!215574 (lemmaInLongMapAllKeySameHashThenForTuple!19 (toList!433 lt!215575) lt!215565 lt!215577 (hashF!2398 (_2!3149 lt!215572))))))

(declare-fun e!309779 () Unit!8662)

(declare-fun Unit!8668 () Unit!8662)

(assert (=> b!517499 (= e!309779 Unit!8668)))

(declare-fun b!517500 () Bool)

(assert (=> b!517500 (= e!309777 (-!44 call!37882 k0!1740))))

(declare-fun b!517501 () Bool)

(assert (=> b!517501 (= e!309780 call!37879)))

(declare-fun d!185033 () Bool)

(declare-fun e!309781 () Bool)

(assert (=> d!185033 e!309781))

(declare-fun res!219461 () Bool)

(assert (=> d!185033 (=> (not res!219461) (not e!309781))))

(assert (=> d!185033 (= res!219461 ((_ is HashMap!501) (_2!3147 lt!215570)))))

(assert (=> d!185033 (= lt!215570 e!309776)))

(declare-fun lt!215576 () Bool)

(assert (=> d!185033 (= c!100214 (not lt!215576))))

(declare-fun contains!1105 (MutableMap!501 K!1437) Bool)

(assert (=> d!185033 (= lt!215576 (contains!1105 hm!65 k0!1740))))

(assert (=> d!185033 (valid!498 hm!65)))

(assert (=> d!185033 (= (remove!47 hm!65 k0!1740) lt!215570)))

(declare-fun bm!37875 () Bool)

(assert (=> bm!37875 (= call!37879 (eq!39 call!37876 e!309777))))

(declare-fun c!100215 () Bool)

(declare-fun c!100216 () Bool)

(assert (=> bm!37875 (= c!100215 c!100216)))

(declare-fun b!517502 () Bool)

(assert (=> b!517502 (= call!37878 lt!215553)))

(declare-fun lt!215562 () Unit!8662)

(declare-fun Unit!8669 () Unit!8662)

(assert (=> b!517502 (= lt!215562 Unit!8669)))

(assert (=> b!517502 call!37880))

(declare-fun Unit!8670 () Unit!8662)

(assert (=> b!517502 (= e!309779 Unit!8670)))

(declare-datatypes ((tuple2!5868 0))(
  ( (tuple2!5869 (_1!3150 Bool) (_2!3150 MutLongMap!529)) )
))
(declare-fun lt!215550 () tuple2!5868)

(assert (=> b!517503 (= e!309776 (tuple2!5863 (_1!3150 lt!215550) (_2!3149 lt!215572)))))

(declare-fun hash!533 (Hashable!501 K!1437) (_ BitVec 64))

(assert (=> b!517503 (= lt!215565 (hash!533 (hashF!2398 hm!65) k0!1740))))

(declare-fun apply!1193 (MutLongMap!529 (_ BitVec 64)) List!4752)

(assert (=> b!517503 (= lt!215577 (apply!1193 (v!15797 (underlying!1238 hm!65)) lt!215565))))

(declare-fun lt!215569 () Unit!8662)

(declare-fun forallContained!450 (List!4753 Int tuple2!5864) Unit!8662)

(assert (=> b!517503 (= lt!215569 (forallContained!450 (toList!433 call!37875) lambda!14599 (tuple2!5865 lt!215565 (apply!1193 (v!15797 (underlying!1238 hm!65)) lt!215565))))))

(assert (=> b!517503 (= lt!215553 (map!1059 hm!65))))

(assert (=> b!517503 (= lt!215575 call!37875)))

(assert (=> b!517503 (= lt!215559 (removePairForKey!19 lt!215577 k0!1740))))

(declare-fun update!61 (MutLongMap!529 (_ BitVec 64) List!4752) tuple2!5868)

(assert (=> b!517503 (= lt!215550 (update!61 (v!15797 (underlying!1238 hm!65)) lt!215565 lt!215559))))

(declare-fun Unit!8671 () Unit!8662)

(declare-fun Unit!8672 () Unit!8662)

(assert (=> b!517503 (= lt!215572 (ite (and (_1!3150 lt!215550) lt!215576) (tuple2!5867 Unit!8671 (HashMap!501 (Cell!2060 (_2!3150 lt!215550)) (hashF!2398 hm!65) (bvsub (_size!1168 hm!65) #b00000000000000000000000000000001) (defaultValue!650 hm!65))) (tuple2!5867 Unit!8672 (HashMap!501 (Cell!2060 (_2!3150 lt!215550)) (hashF!2398 hm!65) (_size!1168 hm!65) (defaultValue!650 hm!65)))))))

(declare-fun lt!215551 () Unit!8662)

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!19 (List!4752 K!1437) Unit!8662)

(assert (=> b!517503 (= lt!215551 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!19 lt!215577 k0!1740))))

(declare-fun noDuplicateKeys!21 (List!4752) Bool)

(assert (=> b!517503 (noDuplicateKeys!21 (removePairForKey!19 lt!215577 k0!1740))))

(declare-fun lt!215558 () Unit!8662)

(assert (=> b!517503 (= lt!215558 lt!215551)))

(declare-fun c!100213 () Bool)

(assert (=> b!517503 (= c!100213 (_1!3150 lt!215550))))

(declare-fun lt!215557 () Unit!8662)

(assert (=> b!517503 (= lt!215557 e!309779)))

(declare-fun bm!37876 () Bool)

(assert (=> bm!37876 (= call!37875 (map!1060 (v!15797 (underlying!1238 hm!65))))))

(declare-fun b!517504 () Bool)

(assert (=> b!517504 (= e!309778 (allKeysSameHashInMap!32 lt!215552 (hashF!2398 (_2!3149 lt!215572))))))

(declare-fun b!517505 () Bool)

(declare-fun res!219463 () Bool)

(assert (=> b!517505 (=> (not res!219463) (not e!309781))))

(assert (=> b!517505 (= res!219463 (valid!498 (_2!3147 lt!215570)))))

(declare-fun bm!37877 () Bool)

(assert (=> bm!37877 (= call!37878 (map!1059 (_2!3149 lt!215572)))))

(declare-fun b!517506 () Bool)

(assert (=> b!517506 (= e!309781 e!309780)))

(assert (=> b!517506 (= c!100216 (_1!3147 lt!215570))))

(assert (= (and d!185033 c!100214) b!517496))

(assert (= (and d!185033 (not c!100214)) b!517503))

(assert (= (and b!517503 c!100213) b!517499))

(assert (= (and b!517503 (not c!100213)) b!517502))

(assert (= (and b!517499 res!219462) b!517504))

(assert (= (or b!517499 b!517502) bm!37873))

(assert (= (or b!517499 b!517502) bm!37877))

(assert (= (or b!517496 b!517503) bm!37876))

(assert (= (or b!517496 b!517499) bm!37871))

(assert (= (or b!517496 b!517499) bm!37870))

(assert (= (and d!185033 res!219461) b!517505))

(assert (= (and b!517505 res!219463) b!517506))

(assert (= (and b!517506 c!100216) b!517501))

(assert (= (and b!517506 (not c!100216)) b!517497))

(assert (= (or b!517501 b!517497) bm!37872))

(assert (= (or b!517501 b!517497) bm!37874))

(assert (= (or b!517501 b!517497) bm!37875))

(assert (= (and bm!37875 c!100215) b!517500))

(assert (= (and bm!37875 (not c!100215)) b!517498))

(declare-fun m!764275 () Bool)

(assert (=> d!185033 m!764275))

(assert (=> d!185033 m!764235))

(declare-fun m!764277 () Bool)

(assert (=> bm!37870 m!764277))

(declare-fun m!764279 () Bool)

(assert (=> bm!37871 m!764279))

(assert (=> bm!37872 m!764239))

(declare-fun m!764281 () Bool)

(assert (=> bm!37874 m!764281))

(declare-fun m!764283 () Bool)

(assert (=> b!517500 m!764283))

(declare-fun m!764285 () Bool)

(assert (=> bm!37873 m!764285))

(declare-fun m!764287 () Bool)

(assert (=> b!517503 m!764287))

(assert (=> b!517503 m!764239))

(declare-fun m!764289 () Bool)

(assert (=> b!517503 m!764289))

(declare-fun m!764291 () Bool)

(assert (=> b!517503 m!764291))

(declare-fun m!764293 () Bool)

(assert (=> b!517503 m!764293))

(declare-fun m!764295 () Bool)

(assert (=> b!517503 m!764295))

(assert (=> b!517503 m!764291))

(declare-fun m!764297 () Bool)

(assert (=> b!517503 m!764297))

(declare-fun m!764299 () Bool)

(assert (=> b!517503 m!764299))

(declare-fun m!764301 () Bool)

(assert (=> b!517496 m!764301))

(declare-fun m!764303 () Bool)

(assert (=> b!517504 m!764303))

(declare-fun m!764305 () Bool)

(assert (=> bm!37877 m!764305))

(declare-fun m!764307 () Bool)

(assert (=> bm!37876 m!764307))

(declare-fun m!764309 () Bool)

(assert (=> b!517505 m!764309))

(declare-fun m!764311 () Bool)

(assert (=> b!517499 m!764311))

(declare-fun m!764313 () Bool)

(assert (=> b!517499 m!764313))

(declare-fun m!764315 () Bool)

(assert (=> b!517499 m!764315))

(declare-fun m!764317 () Bool)

(assert (=> b!517499 m!764317))

(declare-fun m!764319 () Bool)

(assert (=> b!517499 m!764319))

(assert (=> b!517499 m!764291))

(declare-fun m!764321 () Bool)

(assert (=> b!517499 m!764321))

(declare-fun m!764323 () Bool)

(assert (=> b!517499 m!764323))

(declare-fun m!764325 () Bool)

(assert (=> b!517499 m!764325))

(assert (=> b!517499 m!764291))

(declare-fun m!764327 () Bool)

(assert (=> b!517499 m!764327))

(declare-fun m!764329 () Bool)

(assert (=> b!517499 m!764329))

(declare-fun m!764331 () Bool)

(assert (=> b!517499 m!764331))

(assert (=> b!517499 m!764315))

(declare-fun m!764333 () Bool)

(assert (=> b!517499 m!764333))

(assert (=> b!517499 m!764323))

(assert (=> b!517499 m!764319))

(declare-fun m!764335 () Bool)

(assert (=> b!517499 m!764335))

(declare-fun m!764337 () Bool)

(assert (=> b!517499 m!764337))

(declare-fun m!764339 () Bool)

(assert (=> b!517499 m!764339))

(declare-fun m!764341 () Bool)

(assert (=> b!517499 m!764341))

(declare-fun m!764343 () Bool)

(assert (=> bm!37875 m!764343))

(assert (=> b!517460 d!185033))

(declare-fun d!185035 () Bool)

(declare-fun e!309784 () Bool)

(assert (=> d!185035 e!309784))

(declare-fun res!219466 () Bool)

(assert (=> d!185035 (=> (not res!219466) (not e!309784))))

(declare-fun lt!215580 () ListMap!209)

(assert (=> d!185035 (= res!219466 (not (contains!1104 lt!215580 k0!1740)))))

(declare-fun removePresrvNoDuplicatedKeys!17 (List!4752 K!1437) List!4752)

(assert (=> d!185035 (= lt!215580 (ListMap!210 (removePresrvNoDuplicatedKeys!17 (toList!432 lt!215483) k0!1740)))))

(assert (=> d!185035 (= (-!44 lt!215483 k0!1740) lt!215580)))

(declare-fun b!517509 () Bool)

(declare-datatypes ((List!4754 0))(
  ( (Nil!4744) (Cons!4744 (h!10144 K!1437) (t!73332 List!4754)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!834 (List!4754) (InoxSet K!1437))

(declare-fun keys!1866 (ListMap!209) List!4754)

(assert (=> b!517509 (= e!309784 (= ((_ map and) (content!834 (keys!1866 lt!215483)) ((_ map not) (store ((as const (Array K!1437 Bool)) false) k0!1740 true))) (content!834 (keys!1866 lt!215580))))))

(assert (= (and d!185035 res!219466) b!517509))

(declare-fun m!764345 () Bool)

(assert (=> d!185035 m!764345))

(declare-fun m!764347 () Bool)

(assert (=> d!185035 m!764347))

(declare-fun m!764349 () Bool)

(assert (=> b!517509 m!764349))

(assert (=> b!517509 m!764349))

(declare-fun m!764351 () Bool)

(assert (=> b!517509 m!764351))

(declare-fun m!764353 () Bool)

(assert (=> b!517509 m!764353))

(declare-fun m!764355 () Bool)

(assert (=> b!517509 m!764355))

(declare-fun m!764357 () Bool)

(assert (=> b!517509 m!764357))

(assert (=> b!517509 m!764353))

(assert (=> b!517460 d!185035))

(declare-fun d!185037 () Bool)

(assert (=> d!185037 (= (invariantList!82 (toList!432 lt!215480)) (noDuplicatedKeys!20 (toList!432 lt!215480)))))

(declare-fun bs!60112 () Bool)

(assert (= bs!60112 d!185037))

(declare-fun m!764359 () Bool)

(assert (=> bs!60112 m!764359))

(assert (=> b!517461 d!185037))

(declare-fun d!185039 () Bool)

(assert (=> d!185039 (= (invariantList!82 (toList!432 lt!215483)) (noDuplicatedKeys!20 (toList!432 lt!215483)))))

(declare-fun bs!60113 () Bool)

(assert (= bs!60113 d!185039))

(declare-fun m!764361 () Bool)

(assert (=> bs!60113 m!764361))

(assert (=> b!517462 d!185039))

(declare-fun d!185041 () Bool)

(assert (=> d!185041 (= (array_inv!689 (_keys!820 (v!15796 (underlying!1237 (v!15797 (underlying!1238 hm!65)))))) (bvsge (size!3877 (_keys!820 (v!15796 (underlying!1237 (v!15797 (underlying!1238 hm!65)))))) #b00000000000000000000000000000000))))

(assert (=> b!517457 d!185041))

(declare-fun d!185043 () Bool)

(assert (=> d!185043 (= (array_inv!690 (_values!807 (v!15796 (underlying!1237 (v!15797 (underlying!1238 hm!65)))))) (bvsge (size!3876 (_values!807 (v!15796 (underlying!1237 (v!15797 (underlying!1238 hm!65)))))) #b00000000000000000000000000000000))))

(assert (=> b!517457 d!185043))

(declare-fun d!185045 () Bool)

(declare-fun res!219471 () Bool)

(declare-fun e!309789 () Bool)

(assert (=> d!185045 (=> res!219471 e!309789)))

(assert (=> d!185045 (= res!219471 ((_ is Nil!4742) (toList!432 lt!215483)))))

(assert (=> d!185045 (= (forall!1414 (toList!432 lt!215483) p!6060) e!309789)))

(declare-fun b!517514 () Bool)

(declare-fun e!309790 () Bool)

(assert (=> b!517514 (= e!309789 e!309790)))

(declare-fun res!219472 () Bool)

(assert (=> b!517514 (=> (not res!219472) (not e!309790))))

(declare-fun dynLambda!2986 (Int tuple2!5860) Bool)

(assert (=> b!517514 (= res!219472 (dynLambda!2986 p!6060 (h!10142 (toList!432 lt!215483))))))

(declare-fun b!517515 () Bool)

(assert (=> b!517515 (= e!309790 (forall!1414 (t!73328 (toList!432 lt!215483)) p!6060))))

(assert (= (and d!185045 (not res!219471)) b!517514))

(assert (= (and b!517514 res!219472) b!517515))

(declare-fun b_lambda!20133 () Bool)

(assert (=> (not b_lambda!20133) (not b!517514)))

(declare-fun t!73330 () Bool)

(declare-fun tb!47175 () Bool)

(assert (=> (and start!47054 (= p!6060 p!6060) t!73330) tb!47175))

(declare-fun result!52252 () Bool)

(assert (=> tb!47175 (= result!52252 true)))

(assert (=> b!517514 t!73330))

(declare-fun b_and!51117 () Bool)

(assert (= b_and!51111 (and (=> t!73330 result!52252) b_and!51117)))

(declare-fun m!764363 () Bool)

(assert (=> b!517514 m!764363))

(declare-fun m!764365 () Bool)

(assert (=> b!517515 m!764365))

(assert (=> b!517467 d!185045))

(declare-fun d!185047 () Bool)

(declare-fun lt!215581 () ListMap!209)

(assert (=> d!185047 (invariantList!82 (toList!432 lt!215581))))

(assert (=> d!185047 (= lt!215581 (extractMap!25 (toList!433 (map!1060 (v!15797 (underlying!1238 hm!65))))))))

(assert (=> d!185047 (valid!498 hm!65)))

(assert (=> d!185047 (= (map!1059 hm!65) lt!215581)))

(declare-fun bs!60114 () Bool)

(assert (= bs!60114 d!185047))

(declare-fun m!764367 () Bool)

(assert (=> bs!60114 m!764367))

(assert (=> bs!60114 m!764307))

(declare-fun m!764369 () Bool)

(assert (=> bs!60114 m!764369))

(assert (=> bs!60114 m!764235))

(assert (=> b!517467 d!185047))

(declare-fun bs!60115 () Bool)

(declare-fun b!517516 () Bool)

(assert (= bs!60115 (and b!517516 b!517472)))

(declare-fun lambda!14600 () Int)

(assert (=> bs!60115 (= lambda!14600 lambda!14592)))

(declare-fun bs!60116 () Bool)

(assert (= bs!60116 (and b!517516 b!517503)))

(assert (=> bs!60116 (= lambda!14600 lambda!14599)))

(declare-fun d!185049 () Bool)

(declare-fun res!219473 () Bool)

(declare-fun e!309791 () Bool)

(assert (=> d!185049 (=> (not res!219473) (not e!309791))))

(assert (=> d!185049 (= res!219473 (valid!499 (v!15797 (underlying!1238 hm!65))))))

(assert (=> d!185049 (= (valid!498 hm!65) e!309791)))

(declare-fun res!219474 () Bool)

(assert (=> b!517516 (=> (not res!219474) (not e!309791))))

(assert (=> b!517516 (= res!219474 (forall!1415 (toList!433 (map!1060 (v!15797 (underlying!1238 hm!65)))) lambda!14600))))

(declare-fun b!517517 () Bool)

(assert (=> b!517517 (= e!309791 (allKeysSameHashInMap!32 (map!1060 (v!15797 (underlying!1238 hm!65))) (hashF!2398 hm!65)))))

(assert (= (and d!185049 res!219473) b!517516))

(assert (= (and b!517516 res!219474) b!517517))

(declare-fun m!764371 () Bool)

(assert (=> d!185049 m!764371))

(assert (=> b!517516 m!764307))

(declare-fun m!764373 () Bool)

(assert (=> b!517516 m!764373))

(assert (=> b!517517 m!764307))

(assert (=> b!517517 m!764307))

(declare-fun m!764375 () Bool)

(assert (=> b!517517 m!764375))

(assert (=> b!517458 d!185049))

(declare-fun d!185051 () Bool)

(declare-fun content!835 (List!4752) (InoxSet tuple2!5860))

(assert (=> d!185051 (= (eq!39 lt!215484 lt!215483) (= (content!835 (toList!432 lt!215484)) (content!835 (toList!432 lt!215483))))))

(declare-fun bs!60117 () Bool)

(assert (= bs!60117 d!185051))

(declare-fun m!764377 () Bool)

(assert (=> bs!60117 m!764377))

(declare-fun m!764379 () Bool)

(assert (=> bs!60117 m!764379))

(assert (=> b!517464 d!185051))

(declare-fun condMapEmpty!2053 () Bool)

(declare-fun mapDefault!2053 () List!4752)

(assert (=> mapNonEmpty!2050 (= condMapEmpty!2053 (= mapRest!2050 ((as const (Array (_ BitVec 32) List!4752)) mapDefault!2053)))))

(declare-fun e!309796 () Bool)

(declare-fun mapRes!2053 () Bool)

(assert (=> mapNonEmpty!2050 (= tp!161415 (and e!309796 mapRes!2053))))

(declare-fun b!517524 () Bool)

(declare-fun tp_is_empty!2653 () Bool)

(declare-fun tp!161428 () Bool)

(declare-fun e!309797 () Bool)

(assert (=> b!517524 (= e!309797 (and tp_is_empty!2651 tp_is_empty!2653 tp!161428))))

(declare-fun b!517525 () Bool)

(declare-fun tp!161426 () Bool)

(assert (=> b!517525 (= e!309796 (and tp_is_empty!2651 tp_is_empty!2653 tp!161426))))

(declare-fun mapIsEmpty!2053 () Bool)

(assert (=> mapIsEmpty!2053 mapRes!2053))

(declare-fun mapNonEmpty!2053 () Bool)

(declare-fun tp!161427 () Bool)

(assert (=> mapNonEmpty!2053 (= mapRes!2053 (and tp!161427 e!309797))))

(declare-fun mapValue!2053 () List!4752)

(declare-fun mapKey!2053 () (_ BitVec 32))

(declare-fun mapRest!2053 () (Array (_ BitVec 32) List!4752))

(assert (=> mapNonEmpty!2053 (= mapRest!2050 (store mapRest!2053 mapKey!2053 mapValue!2053))))

(assert (= (and mapNonEmpty!2050 condMapEmpty!2053) mapIsEmpty!2053))

(assert (= (and mapNonEmpty!2050 (not condMapEmpty!2053)) mapNonEmpty!2053))

(assert (= (and mapNonEmpty!2053 ((_ is Cons!4742) mapValue!2053)) b!517524))

(assert (= (and mapNonEmpty!2050 ((_ is Cons!4742) mapDefault!2053)) b!517525))

(declare-fun m!764381 () Bool)

(assert (=> mapNonEmpty!2053 m!764381))

(declare-fun tp!161431 () Bool)

(declare-fun e!309800 () Bool)

(declare-fun b!517530 () Bool)

(assert (=> b!517530 (= e!309800 (and tp_is_empty!2651 tp_is_empty!2653 tp!161431))))

(assert (=> mapNonEmpty!2050 (= tp!161419 e!309800)))

(assert (= (and mapNonEmpty!2050 ((_ is Cons!4742) mapValue!2050)) b!517530))

(declare-fun tp!161432 () Bool)

(declare-fun b!517531 () Bool)

(declare-fun e!309801 () Bool)

(assert (=> b!517531 (= e!309801 (and tp_is_empty!2651 tp_is_empty!2653 tp!161432))))

(assert (=> b!517457 (= tp!161416 e!309801)))

(assert (= (and b!517457 ((_ is Cons!4742) (zeroValue!785 (v!15796 (underlying!1237 (v!15797 (underlying!1238 hm!65))))))) b!517531))

(declare-fun b!517532 () Bool)

(declare-fun tp!161433 () Bool)

(declare-fun e!309802 () Bool)

(assert (=> b!517532 (= e!309802 (and tp_is_empty!2651 tp_is_empty!2653 tp!161433))))

(assert (=> b!517457 (= tp!161418 e!309802)))

(assert (= (and b!517457 ((_ is Cons!4742) (minValue!785 (v!15796 (underlying!1237 (v!15797 (underlying!1238 hm!65))))))) b!517532))

(declare-fun e!309803 () Bool)

(declare-fun b!517533 () Bool)

(declare-fun tp!161434 () Bool)

(assert (=> b!517533 (= e!309803 (and tp_is_empty!2651 tp_is_empty!2653 tp!161434))))

(assert (=> b!517463 (= tp!161417 e!309803)))

(assert (= (and b!517463 ((_ is Cons!4742) mapDefault!2050)) b!517533))

(declare-fun b_lambda!20135 () Bool)

(assert (= b_lambda!20133 (or (and start!47054 b_free!13631) b_lambda!20135)))

(check-sat (not d!185047) (not b!517473) (not b_next!13643) (not d!185039) (not bm!37875) (not d!185035) (not b!517499) (not d!185033) (not d!185049) (not b!517500) (not d!185037) (not d!185051) (not b_lambda!20135) (not bm!37872) (not d!185027) (not bm!37877) (not bm!37874) (not b!517517) (not b!517531) (not bm!37870) (not b!517532) (not b!517533) (not bm!37871) tp_is_empty!2653 (not b_next!13647) (not mapNonEmpty!2053) (not b!517525) (not b!517503) (not bm!37876) b_and!51113 (not d!185031) (not d!185029) (not b!517524) b_and!51115 b_and!51117 (not b!517504) (not b_next!13645) (not b!517496) (not b!517515) (not b!517516) (not b!517505) (not b!517509) (not bm!37873) (not b!517472) tp_is_empty!2651 (not b!517530))
(check-sat (not b_next!13643) (not b_next!13647) b_and!51113 b_and!51115 b_and!51117 (not b_next!13645))
