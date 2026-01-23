; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!495642 () Bool)

(assert start!495642)

(declare-fun b!4801604 () Bool)

(declare-fun res!2042289 () Bool)

(declare-fun e!2998472 () Bool)

(assert (=> b!4801604 (=> res!2042289 e!2998472)))

(declare-datatypes ((K!15904 0))(
  ( (K!15905 (val!21029 Int)) )
))
(declare-datatypes ((V!16150 0))(
  ( (V!16151 (val!21030 Int)) )
))
(declare-datatypes ((tuple2!57032 0))(
  ( (tuple2!57033 (_1!31810 K!15904) (_2!31810 V!16150)) )
))
(declare-datatypes ((List!54456 0))(
  ( (Nil!54332) (Cons!54332 (h!60764 tuple2!57032) (t!361906 List!54456)) )
))
(declare-datatypes ((tuple2!57034 0))(
  ( (tuple2!57035 (_1!31811 (_ BitVec 64)) (_2!31811 List!54456)) )
))
(declare-datatypes ((List!54457 0))(
  ( (Nil!54333) (Cons!54333 (h!60765 tuple2!57034) (t!361907 List!54457)) )
))
(declare-datatypes ((ListLongMap!5433 0))(
  ( (ListLongMap!5434 (toList!7011 List!54457)) )
))
(declare-fun lt!1956934 () ListLongMap!5433)

(declare-datatypes ((Hashable!6966 0))(
  ( (HashableExt!6965 (__x!32989 Int)) )
))
(declare-fun hashF!1559 () Hashable!6966)

(declare-fun allKeysSameHashInMap!2371 (ListLongMap!5433 Hashable!6966) Bool)

(assert (=> b!4801604 (= res!2042289 (not (allKeysSameHashInMap!2371 lt!1956934 hashF!1559)))))

(declare-fun b!4801605 () Bool)

(declare-fun value!3111 () V!16150)

(declare-fun key!5896 () K!15904)

(declare-fun getValue!154 (List!54457 K!15904) V!16150)

(assert (=> b!4801605 (= e!2998472 (= (getValue!154 (toList!7011 lt!1956934) key!5896) value!3111))))

(declare-fun containsKeyBiggerList!608 (List!54457 K!15904) Bool)

(assert (=> b!4801605 (containsKeyBiggerList!608 (toList!7011 lt!1956934) key!5896)))

(declare-datatypes ((Unit!140777 0))(
  ( (Unit!140778) )
))
(declare-fun lt!1956939 () Unit!140777)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!348 (ListLongMap!5433 K!15904 Hashable!6966) Unit!140777)

(assert (=> b!4801605 (= lt!1956939 (lemmaInLongMapThenContainsKeyBiggerList!348 lt!1956934 key!5896 hashF!1559))))

(declare-fun e!2998473 () Bool)

(assert (=> b!4801605 e!2998473))

(declare-fun res!2042285 () Bool)

(assert (=> b!4801605 (=> (not res!2042285) (not e!2998473))))

(declare-fun lt!1956935 () Bool)

(assert (=> b!4801605 (= res!2042285 (not lt!1956935))))

(declare-fun lt!1956938 () Unit!140777)

(declare-fun lemmaInGenericMapThenInLongMap!370 (ListLongMap!5433 K!15904 Hashable!6966) Unit!140777)

(assert (=> b!4801605 (= lt!1956938 (lemmaInGenericMapThenInLongMap!370 lt!1956934 key!5896 hashF!1559))))

(declare-fun b!4801606 () Bool)

(declare-fun e!2998470 () Bool)

(declare-fun e!2998475 () Bool)

(assert (=> b!4801606 (= e!2998470 (not e!2998475))))

(declare-fun res!2042286 () Bool)

(assert (=> b!4801606 (=> res!2042286 e!2998475)))

(declare-fun lm!2473 () ListLongMap!5433)

(assert (=> b!4801606 (= res!2042286 (not (= (getValue!154 (toList!7011 lm!2473) key!5896) value!3111)))))

(assert (=> b!4801606 (containsKeyBiggerList!608 (toList!7011 lm!2473) key!5896)))

(declare-fun lt!1956937 () Unit!140777)

(assert (=> b!4801606 (= lt!1956937 (lemmaInLongMapThenContainsKeyBiggerList!348 lm!2473 key!5896 hashF!1559))))

(declare-fun e!2998474 () Bool)

(assert (=> b!4801606 e!2998474))

(declare-fun res!2042294 () Bool)

(assert (=> b!4801606 (=> (not res!2042294) (not e!2998474))))

(declare-fun lt!1956940 () (_ BitVec 64))

(declare-fun contains!17986 (ListLongMap!5433 (_ BitVec 64)) Bool)

(assert (=> b!4801606 (= res!2042294 (contains!17986 lm!2473 lt!1956940))))

(declare-fun hash!5024 (Hashable!6966 K!15904) (_ BitVec 64))

(assert (=> b!4801606 (= lt!1956940 (hash!5024 hashF!1559 key!5896))))

(declare-fun lt!1956942 () Unit!140777)

(assert (=> b!4801606 (= lt!1956942 (lemmaInGenericMapThenInLongMap!370 lm!2473 key!5896 hashF!1559))))

(declare-fun b!4801607 () Bool)

(declare-fun res!2042292 () Bool)

(assert (=> b!4801607 (=> (not res!2042292) (not e!2998470))))

(assert (=> b!4801607 (= res!2042292 (allKeysSameHashInMap!2371 lm!2473 hashF!1559))))

(declare-fun b!4801608 () Bool)

(declare-fun e!2998476 () Unit!140777)

(declare-fun Unit!140779 () Unit!140777)

(assert (=> b!4801608 (= e!2998476 Unit!140779)))

(declare-fun b!4801609 () Bool)

(assert (=> b!4801609 (= e!2998475 e!2998472)))

(declare-fun res!2042290 () Bool)

(assert (=> b!4801609 (=> res!2042290 e!2998472)))

(declare-fun lambda!232541 () Int)

(declare-fun forall!12337 (List!54457 Int) Bool)

(assert (=> b!4801609 (= res!2042290 (not (forall!12337 (toList!7011 lt!1956934) lambda!232541)))))

(declare-datatypes ((ListMap!6483 0))(
  ( (ListMap!6484 (toList!7012 List!54456)) )
))
(declare-fun contains!17987 (ListMap!6483 K!15904) Bool)

(declare-fun extractMap!2493 (List!54457) ListMap!6483)

(assert (=> b!4801609 (contains!17987 (extractMap!2493 (toList!7011 lt!1956934)) key!5896)))

(declare-fun lt!1956936 () Unit!140777)

(declare-fun lemmaListContainsThenExtractedMapContains!716 (ListLongMap!5433 K!15904 Hashable!6966) Unit!140777)

(assert (=> b!4801609 (= lt!1956936 (lemmaListContainsThenExtractedMapContains!716 lt!1956934 key!5896 hashF!1559))))

(declare-fun lt!1956941 () Unit!140777)

(assert (=> b!4801609 (= lt!1956941 e!2998476)))

(declare-fun c!818423 () Bool)

(assert (=> b!4801609 (= c!818423 lt!1956935)))

(assert (=> b!4801609 (= lt!1956935 (not (contains!17986 lt!1956934 lt!1956940)))))

(declare-fun tail!9332 (ListLongMap!5433) ListLongMap!5433)

(assert (=> b!4801609 (= lt!1956934 (tail!9332 lm!2473))))

(declare-fun b!4801610 () Bool)

(declare-datatypes ((Option!13190 0))(
  ( (None!13189) (Some!13189 (v!48518 tuple2!57032)) )
))
(declare-fun isDefined!10331 (Option!13190) Bool)

(declare-fun getPair!938 (List!54456 K!15904) Option!13190)

(declare-fun apply!13039 (ListLongMap!5433 (_ BitVec 64)) List!54456)

(assert (=> b!4801610 (= e!2998473 (isDefined!10331 (getPair!938 (apply!13039 lt!1956934 lt!1956940) key!5896)))))

(declare-fun b!4801611 () Bool)

(declare-fun res!2042293 () Bool)

(assert (=> b!4801611 (=> res!2042293 e!2998475)))

(get-info :version)

(assert (=> b!4801611 (= res!2042293 (not ((_ is Cons!54333) (toList!7011 lm!2473))))))

(declare-fun b!4801612 () Bool)

(assert (=> b!4801612 (= e!2998474 (isDefined!10331 (getPair!938 (apply!13039 lm!2473 lt!1956940) key!5896)))))

(declare-fun b!4801613 () Bool)

(declare-fun res!2042288 () Bool)

(assert (=> b!4801613 (=> res!2042288 e!2998475)))

(declare-fun containsKey!4040 (List!54456 K!15904) Bool)

(assert (=> b!4801613 (= res!2042288 (containsKey!4040 (_2!31811 (h!60765 (toList!7011 lm!2473))) key!5896))))

(declare-fun b!4801614 () Bool)

(declare-fun e!2998471 () Bool)

(declare-fun tp!1358408 () Bool)

(assert (=> b!4801614 (= e!2998471 tp!1358408)))

(declare-fun res!2042291 () Bool)

(assert (=> start!495642 (=> (not res!2042291) (not e!2998470))))

(assert (=> start!495642 (= res!2042291 (forall!12337 (toList!7011 lm!2473) lambda!232541))))

(assert (=> start!495642 e!2998470))

(declare-fun inv!69930 (ListLongMap!5433) Bool)

(assert (=> start!495642 (and (inv!69930 lm!2473) e!2998471)))

(assert (=> start!495642 true))

(declare-fun tp_is_empty!33725 () Bool)

(assert (=> start!495642 tp_is_empty!33725))

(declare-fun tp_is_empty!33727 () Bool)

(assert (=> start!495642 tp_is_empty!33727))

(declare-fun b!4801615 () Bool)

(declare-fun lt!1956943 () Unit!140777)

(assert (=> b!4801615 (= e!2998476 lt!1956943)))

(declare-fun lemmaHashNotInLongMapThenNotInGenerated!64 (ListLongMap!5433 K!15904 Hashable!6966) Unit!140777)

(assert (=> b!4801615 (= lt!1956943 (lemmaHashNotInLongMapThenNotInGenerated!64 lt!1956934 key!5896 hashF!1559))))

(assert (=> b!4801615 (not (contains!17987 (extractMap!2493 (toList!7011 lt!1956934)) key!5896))))

(declare-fun b!4801616 () Bool)

(declare-fun res!2042287 () Bool)

(assert (=> b!4801616 (=> (not res!2042287) (not e!2998470))))

(assert (=> b!4801616 (= res!2042287 (contains!17987 (extractMap!2493 (toList!7011 lm!2473)) key!5896))))

(assert (= (and start!495642 res!2042291) b!4801607))

(assert (= (and b!4801607 res!2042292) b!4801616))

(assert (= (and b!4801616 res!2042287) b!4801606))

(assert (= (and b!4801606 res!2042294) b!4801612))

(assert (= (and b!4801606 (not res!2042286)) b!4801611))

(assert (= (and b!4801611 (not res!2042293)) b!4801613))

(assert (= (and b!4801613 (not res!2042288)) b!4801609))

(assert (= (and b!4801609 c!818423) b!4801615))

(assert (= (and b!4801609 (not c!818423)) b!4801608))

(assert (= (and b!4801609 (not res!2042290)) b!4801604))

(assert (= (and b!4801604 (not res!2042289)) b!4801605))

(assert (= (and b!4801605 res!2042285) b!4801610))

(assert (= start!495642 b!4801614))

(declare-fun m!5785714 () Bool)

(assert (=> b!4801607 m!5785714))

(declare-fun m!5785716 () Bool)

(assert (=> b!4801616 m!5785716))

(assert (=> b!4801616 m!5785716))

(declare-fun m!5785718 () Bool)

(assert (=> b!4801616 m!5785718))

(declare-fun m!5785720 () Bool)

(assert (=> b!4801604 m!5785720))

(declare-fun m!5785722 () Bool)

(assert (=> b!4801606 m!5785722))

(declare-fun m!5785724 () Bool)

(assert (=> b!4801606 m!5785724))

(declare-fun m!5785726 () Bool)

(assert (=> b!4801606 m!5785726))

(declare-fun m!5785728 () Bool)

(assert (=> b!4801606 m!5785728))

(declare-fun m!5785730 () Bool)

(assert (=> b!4801606 m!5785730))

(declare-fun m!5785732 () Bool)

(assert (=> b!4801606 m!5785732))

(declare-fun m!5785734 () Bool)

(assert (=> start!495642 m!5785734))

(declare-fun m!5785736 () Bool)

(assert (=> start!495642 m!5785736))

(declare-fun m!5785738 () Bool)

(assert (=> b!4801612 m!5785738))

(assert (=> b!4801612 m!5785738))

(declare-fun m!5785740 () Bool)

(assert (=> b!4801612 m!5785740))

(assert (=> b!4801612 m!5785740))

(declare-fun m!5785742 () Bool)

(assert (=> b!4801612 m!5785742))

(declare-fun m!5785744 () Bool)

(assert (=> b!4801613 m!5785744))

(declare-fun m!5785746 () Bool)

(assert (=> b!4801609 m!5785746))

(declare-fun m!5785748 () Bool)

(assert (=> b!4801609 m!5785748))

(declare-fun m!5785750 () Bool)

(assert (=> b!4801609 m!5785750))

(assert (=> b!4801609 m!5785746))

(declare-fun m!5785752 () Bool)

(assert (=> b!4801609 m!5785752))

(declare-fun m!5785754 () Bool)

(assert (=> b!4801609 m!5785754))

(declare-fun m!5785756 () Bool)

(assert (=> b!4801609 m!5785756))

(declare-fun m!5785758 () Bool)

(assert (=> b!4801610 m!5785758))

(assert (=> b!4801610 m!5785758))

(declare-fun m!5785760 () Bool)

(assert (=> b!4801610 m!5785760))

(assert (=> b!4801610 m!5785760))

(declare-fun m!5785762 () Bool)

(assert (=> b!4801610 m!5785762))

(declare-fun m!5785764 () Bool)

(assert (=> b!4801615 m!5785764))

(assert (=> b!4801615 m!5785746))

(assert (=> b!4801615 m!5785746))

(assert (=> b!4801615 m!5785748))

(declare-fun m!5785766 () Bool)

(assert (=> b!4801605 m!5785766))

(declare-fun m!5785768 () Bool)

(assert (=> b!4801605 m!5785768))

(declare-fun m!5785770 () Bool)

(assert (=> b!4801605 m!5785770))

(declare-fun m!5785772 () Bool)

(assert (=> b!4801605 m!5785772))

(check-sat (not b!4801616) tp_is_empty!33725 (not b!4801609) (not b!4801605) (not b!4801613) tp_is_empty!33727 (not b!4801607) (not b!4801606) (not b!4801614) (not b!4801610) (not b!4801615) (not start!495642) (not b!4801604) (not b!4801612))
(check-sat)
(get-model)

(declare-fun bs!1157724 () Bool)

(declare-fun d!1537482 () Bool)

(assert (= bs!1157724 (and d!1537482 start!495642)))

(declare-fun lambda!232544 () Int)

(assert (=> bs!1157724 (not (= lambda!232544 lambda!232541))))

(assert (=> d!1537482 true))

(assert (=> d!1537482 (= (allKeysSameHashInMap!2371 lt!1956934 hashF!1559) (forall!12337 (toList!7011 lt!1956934) lambda!232544))))

(declare-fun bs!1157725 () Bool)

(assert (= bs!1157725 d!1537482))

(declare-fun m!5785796 () Bool)

(assert (=> bs!1157725 m!5785796))

(assert (=> b!4801604 d!1537482))

(declare-fun bs!1157735 () Bool)

(declare-fun d!1537490 () Bool)

(assert (= bs!1157735 (and d!1537490 start!495642)))

(declare-fun lambda!232556 () Int)

(assert (=> bs!1157735 (= lambda!232556 lambda!232541)))

(declare-fun bs!1157736 () Bool)

(assert (= bs!1157736 (and d!1537490 d!1537482)))

(assert (=> bs!1157736 (not (= lambda!232556 lambda!232544))))

(assert (=> d!1537490 (not (contains!17987 (extractMap!2493 (toList!7011 lt!1956934)) key!5896))))

(declare-fun lt!1956967 () Unit!140777)

(declare-fun choose!34707 (ListLongMap!5433 K!15904 Hashable!6966) Unit!140777)

(assert (=> d!1537490 (= lt!1956967 (choose!34707 lt!1956934 key!5896 hashF!1559))))

(assert (=> d!1537490 (forall!12337 (toList!7011 lt!1956934) lambda!232556)))

(assert (=> d!1537490 (= (lemmaHashNotInLongMapThenNotInGenerated!64 lt!1956934 key!5896 hashF!1559) lt!1956967)))

(declare-fun bs!1157737 () Bool)

(assert (= bs!1157737 d!1537490))

(assert (=> bs!1157737 m!5785746))

(assert (=> bs!1157737 m!5785746))

(assert (=> bs!1157737 m!5785748))

(declare-fun m!5785832 () Bool)

(assert (=> bs!1157737 m!5785832))

(declare-fun m!5785834 () Bool)

(assert (=> bs!1157737 m!5785834))

(assert (=> b!4801615 d!1537490))

(declare-fun b!4801732 () Bool)

(declare-fun e!2998559 () Bool)

(declare-fun e!2998555 () Bool)

(assert (=> b!4801732 (= e!2998559 e!2998555)))

(declare-fun res!2042348 () Bool)

(assert (=> b!4801732 (=> (not res!2042348) (not e!2998555))))

(declare-datatypes ((Option!13193 0))(
  ( (None!13192) (Some!13192 (v!48521 V!16150)) )
))
(declare-fun isDefined!10334 (Option!13193) Bool)

(declare-fun getValueByKey!2402 (List!54456 K!15904) Option!13193)

(assert (=> b!4801732 (= res!2042348 (isDefined!10334 (getValueByKey!2402 (toList!7012 (extractMap!2493 (toList!7011 lt!1956934))) key!5896)))))

(declare-fun b!4801733 () Bool)

(declare-datatypes ((List!54459 0))(
  ( (Nil!54335) (Cons!54335 (h!60767 K!15904) (t!361909 List!54459)) )
))
(declare-fun e!2998557 () List!54459)

(declare-fun keys!19867 (ListMap!6483) List!54459)

(assert (=> b!4801733 (= e!2998557 (keys!19867 (extractMap!2493 (toList!7011 lt!1956934))))))

(declare-fun b!4801734 () Bool)

(declare-fun e!2998560 () Bool)

(declare-fun contains!17990 (List!54459 K!15904) Bool)

(assert (=> b!4801734 (= e!2998560 (not (contains!17990 (keys!19867 (extractMap!2493 (toList!7011 lt!1956934))) key!5896)))))

(declare-fun b!4801736 () Bool)

(declare-fun getKeysList!1102 (List!54456) List!54459)

(assert (=> b!4801736 (= e!2998557 (getKeysList!1102 (toList!7012 (extractMap!2493 (toList!7011 lt!1956934)))))))

(declare-fun b!4801737 () Bool)

(declare-fun e!2998558 () Unit!140777)

(declare-fun Unit!140784 () Unit!140777)

(assert (=> b!4801737 (= e!2998558 Unit!140784)))

(declare-fun b!4801738 () Bool)

(declare-fun e!2998556 () Unit!140777)

(assert (=> b!4801738 (= e!2998556 e!2998558)))

(declare-fun c!818455 () Bool)

(declare-fun call!335402 () Bool)

(assert (=> b!4801738 (= c!818455 call!335402)))

(declare-fun b!4801739 () Bool)

(declare-fun lt!1957018 () Unit!140777)

(assert (=> b!4801739 (= e!2998556 lt!1957018)))

(declare-fun lt!1957019 () Unit!140777)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2193 (List!54456 K!15904) Unit!140777)

(assert (=> b!4801739 (= lt!1957019 (lemmaContainsKeyImpliesGetValueByKeyDefined!2193 (toList!7012 (extractMap!2493 (toList!7011 lt!1956934))) key!5896))))

(assert (=> b!4801739 (isDefined!10334 (getValueByKey!2402 (toList!7012 (extractMap!2493 (toList!7011 lt!1956934))) key!5896))))

(declare-fun lt!1957016 () Unit!140777)

(assert (=> b!4801739 (= lt!1957016 lt!1957019)))

(declare-fun lemmaInListThenGetKeysListContains!1097 (List!54456 K!15904) Unit!140777)

(assert (=> b!4801739 (= lt!1957018 (lemmaInListThenGetKeysListContains!1097 (toList!7012 (extractMap!2493 (toList!7011 lt!1956934))) key!5896))))

(assert (=> b!4801739 call!335402))

(declare-fun b!4801735 () Bool)

(assert (=> b!4801735 (= e!2998555 (contains!17990 (keys!19867 (extractMap!2493 (toList!7011 lt!1956934))) key!5896))))

(declare-fun d!1537504 () Bool)

(assert (=> d!1537504 e!2998559))

(declare-fun res!2042346 () Bool)

(assert (=> d!1537504 (=> res!2042346 e!2998559)))

(assert (=> d!1537504 (= res!2042346 e!2998560)))

(declare-fun res!2042347 () Bool)

(assert (=> d!1537504 (=> (not res!2042347) (not e!2998560))))

(declare-fun lt!1957017 () Bool)

(assert (=> d!1537504 (= res!2042347 (not lt!1957017))))

(declare-fun lt!1957015 () Bool)

(assert (=> d!1537504 (= lt!1957017 lt!1957015)))

(declare-fun lt!1957020 () Unit!140777)

(assert (=> d!1537504 (= lt!1957020 e!2998556)))

(declare-fun c!818456 () Bool)

(assert (=> d!1537504 (= c!818456 lt!1957015)))

(declare-fun containsKey!4043 (List!54456 K!15904) Bool)

(assert (=> d!1537504 (= lt!1957015 (containsKey!4043 (toList!7012 (extractMap!2493 (toList!7011 lt!1956934))) key!5896))))

(assert (=> d!1537504 (= (contains!17987 (extractMap!2493 (toList!7011 lt!1956934)) key!5896) lt!1957017)))

(declare-fun bm!335397 () Bool)

(assert (=> bm!335397 (= call!335402 (contains!17990 e!2998557 key!5896))))

(declare-fun c!818454 () Bool)

(assert (=> bm!335397 (= c!818454 c!818456)))

(declare-fun b!4801740 () Bool)

(assert (=> b!4801740 false))

(declare-fun lt!1957014 () Unit!140777)

(declare-fun lt!1957021 () Unit!140777)

(assert (=> b!4801740 (= lt!1957014 lt!1957021)))

(assert (=> b!4801740 (containsKey!4043 (toList!7012 (extractMap!2493 (toList!7011 lt!1956934))) key!5896)))

(declare-fun lemmaInGetKeysListThenContainsKey!1102 (List!54456 K!15904) Unit!140777)

(assert (=> b!4801740 (= lt!1957021 (lemmaInGetKeysListThenContainsKey!1102 (toList!7012 (extractMap!2493 (toList!7011 lt!1956934))) key!5896))))

(declare-fun Unit!140785 () Unit!140777)

(assert (=> b!4801740 (= e!2998558 Unit!140785)))

(assert (= (and d!1537504 c!818456) b!4801739))

(assert (= (and d!1537504 (not c!818456)) b!4801738))

(assert (= (and b!4801738 c!818455) b!4801740))

(assert (= (and b!4801738 (not c!818455)) b!4801737))

(assert (= (or b!4801739 b!4801738) bm!335397))

(assert (= (and bm!335397 c!818454) b!4801736))

(assert (= (and bm!335397 (not c!818454)) b!4801733))

(assert (= (and d!1537504 res!2042347) b!4801734))

(assert (= (and d!1537504 (not res!2042346)) b!4801732))

(assert (= (and b!4801732 res!2042348) b!4801735))

(declare-fun m!5785872 () Bool)

(assert (=> bm!335397 m!5785872))

(assert (=> b!4801734 m!5785746))

(declare-fun m!5785874 () Bool)

(assert (=> b!4801734 m!5785874))

(assert (=> b!4801734 m!5785874))

(declare-fun m!5785876 () Bool)

(assert (=> b!4801734 m!5785876))

(assert (=> b!4801735 m!5785746))

(assert (=> b!4801735 m!5785874))

(assert (=> b!4801735 m!5785874))

(assert (=> b!4801735 m!5785876))

(declare-fun m!5785878 () Bool)

(assert (=> b!4801732 m!5785878))

(assert (=> b!4801732 m!5785878))

(declare-fun m!5785880 () Bool)

(assert (=> b!4801732 m!5785880))

(declare-fun m!5785882 () Bool)

(assert (=> d!1537504 m!5785882))

(declare-fun m!5785884 () Bool)

(assert (=> b!4801736 m!5785884))

(declare-fun m!5785886 () Bool)

(assert (=> b!4801739 m!5785886))

(assert (=> b!4801739 m!5785878))

(assert (=> b!4801739 m!5785878))

(assert (=> b!4801739 m!5785880))

(declare-fun m!5785888 () Bool)

(assert (=> b!4801739 m!5785888))

(assert (=> b!4801740 m!5785882))

(declare-fun m!5785890 () Bool)

(assert (=> b!4801740 m!5785890))

(assert (=> b!4801733 m!5785746))

(assert (=> b!4801733 m!5785874))

(assert (=> b!4801615 d!1537504))

(declare-fun bs!1157797 () Bool)

(declare-fun d!1537514 () Bool)

(assert (= bs!1157797 (and d!1537514 start!495642)))

(declare-fun lambda!232572 () Int)

(assert (=> bs!1157797 (= lambda!232572 lambda!232541)))

(declare-fun bs!1157798 () Bool)

(assert (= bs!1157798 (and d!1537514 d!1537482)))

(assert (=> bs!1157798 (not (= lambda!232572 lambda!232544))))

(declare-fun bs!1157799 () Bool)

(assert (= bs!1157799 (and d!1537514 d!1537490)))

(assert (=> bs!1157799 (= lambda!232572 lambda!232556)))

(declare-fun lt!1957043 () ListMap!6483)

(declare-fun invariantList!1756 (List!54456) Bool)

(assert (=> d!1537514 (invariantList!1756 (toList!7012 lt!1957043))))

(declare-fun e!2998594 () ListMap!6483)

(assert (=> d!1537514 (= lt!1957043 e!2998594)))

(declare-fun c!818467 () Bool)

(assert (=> d!1537514 (= c!818467 ((_ is Cons!54333) (toList!7011 lt!1956934)))))

(assert (=> d!1537514 (forall!12337 (toList!7011 lt!1956934) lambda!232572)))

(assert (=> d!1537514 (= (extractMap!2493 (toList!7011 lt!1956934)) lt!1957043)))

(declare-fun b!4801787 () Bool)

(declare-fun addToMapMapFromBucket!1733 (List!54456 ListMap!6483) ListMap!6483)

(assert (=> b!4801787 (= e!2998594 (addToMapMapFromBucket!1733 (_2!31811 (h!60765 (toList!7011 lt!1956934))) (extractMap!2493 (t!361907 (toList!7011 lt!1956934)))))))

(declare-fun b!4801788 () Bool)

(assert (=> b!4801788 (= e!2998594 (ListMap!6484 Nil!54332))))

(assert (= (and d!1537514 c!818467) b!4801787))

(assert (= (and d!1537514 (not c!818467)) b!4801788))

(declare-fun m!5785990 () Bool)

(assert (=> d!1537514 m!5785990))

(declare-fun m!5785992 () Bool)

(assert (=> d!1537514 m!5785992))

(declare-fun m!5785994 () Bool)

(assert (=> b!4801787 m!5785994))

(assert (=> b!4801787 m!5785994))

(declare-fun m!5785996 () Bool)

(assert (=> b!4801787 m!5785996))

(assert (=> b!4801615 d!1537514))

(declare-fun d!1537550 () Bool)

(declare-fun c!818470 () Bool)

(declare-fun e!2998600 () Bool)

(assert (=> d!1537550 (= c!818470 e!2998600)))

(declare-fun res!2042372 () Bool)

(assert (=> d!1537550 (=> (not res!2042372) (not e!2998600))))

(assert (=> d!1537550 (= res!2042372 ((_ is Cons!54333) (toList!7011 lt!1956934)))))

(declare-fun e!2998599 () V!16150)

(assert (=> d!1537550 (= (getValue!154 (toList!7011 lt!1956934) key!5896) e!2998599)))

(declare-fun b!4801797 () Bool)

(assert (=> b!4801797 (= e!2998600 (containsKey!4040 (_2!31811 (h!60765 (toList!7011 lt!1956934))) key!5896))))

(declare-fun b!4801795 () Bool)

(declare-fun get!18555 (Option!13190) tuple2!57032)

(assert (=> b!4801795 (= e!2998599 (_2!31810 (get!18555 (getPair!938 (_2!31811 (h!60765 (toList!7011 lt!1956934))) key!5896))))))

(declare-fun b!4801796 () Bool)

(assert (=> b!4801796 (= e!2998599 (getValue!154 (t!361907 (toList!7011 lt!1956934)) key!5896))))

(assert (= (and d!1537550 res!2042372) b!4801797))

(assert (= (and d!1537550 c!818470) b!4801795))

(assert (= (and d!1537550 (not c!818470)) b!4801796))

(declare-fun m!5785998 () Bool)

(assert (=> b!4801797 m!5785998))

(declare-fun m!5786000 () Bool)

(assert (=> b!4801795 m!5786000))

(assert (=> b!4801795 m!5786000))

(declare-fun m!5786002 () Bool)

(assert (=> b!4801795 m!5786002))

(declare-fun m!5786004 () Bool)

(assert (=> b!4801796 m!5786004))

(assert (=> b!4801605 d!1537550))

(declare-fun d!1537552 () Bool)

(declare-fun res!2042381 () Bool)

(declare-fun e!2998608 () Bool)

(assert (=> d!1537552 (=> res!2042381 e!2998608)))

(declare-fun e!2998609 () Bool)

(assert (=> d!1537552 (= res!2042381 e!2998609)))

(declare-fun res!2042380 () Bool)

(assert (=> d!1537552 (=> (not res!2042380) (not e!2998609))))

(assert (=> d!1537552 (= res!2042380 ((_ is Cons!54333) (toList!7011 lt!1956934)))))

(assert (=> d!1537552 (= (containsKeyBiggerList!608 (toList!7011 lt!1956934) key!5896) e!2998608)))

(declare-fun b!4801804 () Bool)

(assert (=> b!4801804 (= e!2998609 (containsKey!4040 (_2!31811 (h!60765 (toList!7011 lt!1956934))) key!5896))))

(declare-fun b!4801805 () Bool)

(declare-fun e!2998607 () Bool)

(assert (=> b!4801805 (= e!2998608 e!2998607)))

(declare-fun res!2042379 () Bool)

(assert (=> b!4801805 (=> (not res!2042379) (not e!2998607))))

(assert (=> b!4801805 (= res!2042379 ((_ is Cons!54333) (toList!7011 lt!1956934)))))

(declare-fun b!4801806 () Bool)

(assert (=> b!4801806 (= e!2998607 (containsKeyBiggerList!608 (t!361907 (toList!7011 lt!1956934)) key!5896))))

(assert (= (and d!1537552 res!2042380) b!4801804))

(assert (= (and d!1537552 (not res!2042381)) b!4801805))

(assert (= (and b!4801805 res!2042379) b!4801806))

(assert (=> b!4801804 m!5785998))

(declare-fun m!5786006 () Bool)

(assert (=> b!4801806 m!5786006))

(assert (=> b!4801605 d!1537552))

(declare-fun bs!1157800 () Bool)

(declare-fun d!1537554 () Bool)

(assert (= bs!1157800 (and d!1537554 start!495642)))

(declare-fun lambda!232575 () Int)

(assert (=> bs!1157800 (= lambda!232575 lambda!232541)))

(declare-fun bs!1157801 () Bool)

(assert (= bs!1157801 (and d!1537554 d!1537482)))

(assert (=> bs!1157801 (not (= lambda!232575 lambda!232544))))

(declare-fun bs!1157802 () Bool)

(assert (= bs!1157802 (and d!1537554 d!1537490)))

(assert (=> bs!1157802 (= lambda!232575 lambda!232556)))

(declare-fun bs!1157803 () Bool)

(assert (= bs!1157803 (and d!1537554 d!1537514)))

(assert (=> bs!1157803 (= lambda!232575 lambda!232572)))

(assert (=> d!1537554 (containsKeyBiggerList!608 (toList!7011 lt!1956934) key!5896)))

(declare-fun lt!1957046 () Unit!140777)

(declare-fun choose!34708 (ListLongMap!5433 K!15904 Hashable!6966) Unit!140777)

(assert (=> d!1537554 (= lt!1957046 (choose!34708 lt!1956934 key!5896 hashF!1559))))

(assert (=> d!1537554 (forall!12337 (toList!7011 lt!1956934) lambda!232575)))

(assert (=> d!1537554 (= (lemmaInLongMapThenContainsKeyBiggerList!348 lt!1956934 key!5896 hashF!1559) lt!1957046)))

(declare-fun bs!1157804 () Bool)

(assert (= bs!1157804 d!1537554))

(assert (=> bs!1157804 m!5785768))

(declare-fun m!5786008 () Bool)

(assert (=> bs!1157804 m!5786008))

(declare-fun m!5786010 () Bool)

(assert (=> bs!1157804 m!5786010))

(assert (=> b!4801605 d!1537554))

(declare-fun bs!1157805 () Bool)

(declare-fun d!1537556 () Bool)

(assert (= bs!1157805 (and d!1537556 d!1537554)))

(declare-fun lambda!232578 () Int)

(assert (=> bs!1157805 (= lambda!232578 lambda!232575)))

(declare-fun bs!1157806 () Bool)

(assert (= bs!1157806 (and d!1537556 d!1537482)))

(assert (=> bs!1157806 (not (= lambda!232578 lambda!232544))))

(declare-fun bs!1157807 () Bool)

(assert (= bs!1157807 (and d!1537556 start!495642)))

(assert (=> bs!1157807 (= lambda!232578 lambda!232541)))

(declare-fun bs!1157808 () Bool)

(assert (= bs!1157808 (and d!1537556 d!1537514)))

(assert (=> bs!1157808 (= lambda!232578 lambda!232572)))

(declare-fun bs!1157809 () Bool)

(assert (= bs!1157809 (and d!1537556 d!1537490)))

(assert (=> bs!1157809 (= lambda!232578 lambda!232556)))

(declare-fun e!2998612 () Bool)

(assert (=> d!1537556 e!2998612))

(declare-fun res!2042384 () Bool)

(assert (=> d!1537556 (=> (not res!2042384) (not e!2998612))))

(assert (=> d!1537556 (= res!2042384 (contains!17986 lt!1956934 (hash!5024 hashF!1559 key!5896)))))

(declare-fun lt!1957049 () Unit!140777)

(declare-fun choose!34709 (ListLongMap!5433 K!15904 Hashable!6966) Unit!140777)

(assert (=> d!1537556 (= lt!1957049 (choose!34709 lt!1956934 key!5896 hashF!1559))))

(assert (=> d!1537556 (forall!12337 (toList!7011 lt!1956934) lambda!232578)))

(assert (=> d!1537556 (= (lemmaInGenericMapThenInLongMap!370 lt!1956934 key!5896 hashF!1559) lt!1957049)))

(declare-fun b!4801809 () Bool)

(assert (=> b!4801809 (= e!2998612 (isDefined!10331 (getPair!938 (apply!13039 lt!1956934 (hash!5024 hashF!1559 key!5896)) key!5896)))))

(assert (= (and d!1537556 res!2042384) b!4801809))

(assert (=> d!1537556 m!5785726))

(assert (=> d!1537556 m!5785726))

(declare-fun m!5786012 () Bool)

(assert (=> d!1537556 m!5786012))

(declare-fun m!5786014 () Bool)

(assert (=> d!1537556 m!5786014))

(declare-fun m!5786016 () Bool)

(assert (=> d!1537556 m!5786016))

(assert (=> b!4801809 m!5785726))

(assert (=> b!4801809 m!5785726))

(declare-fun m!5786018 () Bool)

(assert (=> b!4801809 m!5786018))

(assert (=> b!4801809 m!5786018))

(declare-fun m!5786020 () Bool)

(assert (=> b!4801809 m!5786020))

(assert (=> b!4801809 m!5786020))

(declare-fun m!5786022 () Bool)

(assert (=> b!4801809 m!5786022))

(assert (=> b!4801605 d!1537556))

(declare-fun d!1537558 () Bool)

(declare-fun isEmpty!29509 (Option!13190) Bool)

(assert (=> d!1537558 (= (isDefined!10331 (getPair!938 (apply!13039 lm!2473 lt!1956940) key!5896)) (not (isEmpty!29509 (getPair!938 (apply!13039 lm!2473 lt!1956940) key!5896))))))

(declare-fun bs!1157810 () Bool)

(assert (= bs!1157810 d!1537558))

(assert (=> bs!1157810 m!5785740))

(declare-fun m!5786024 () Bool)

(assert (=> bs!1157810 m!5786024))

(assert (=> b!4801612 d!1537558))

(declare-fun b!4801826 () Bool)

(declare-fun res!2042394 () Bool)

(declare-fun e!2998624 () Bool)

(assert (=> b!4801826 (=> (not res!2042394) (not e!2998624))))

(declare-fun lt!1957052 () Option!13190)

(assert (=> b!4801826 (= res!2042394 (= (_1!31810 (get!18555 lt!1957052)) key!5896))))

(declare-fun b!4801827 () Bool)

(declare-fun e!2998627 () Option!13190)

(assert (=> b!4801827 (= e!2998627 None!13189)))

(declare-fun b!4801828 () Bool)

(declare-fun e!2998626 () Bool)

(assert (=> b!4801828 (= e!2998626 e!2998624)))

(declare-fun res!2042393 () Bool)

(assert (=> b!4801828 (=> (not res!2042393) (not e!2998624))))

(assert (=> b!4801828 (= res!2042393 (isDefined!10331 lt!1957052))))

(declare-fun b!4801829 () Bool)

(declare-fun e!2998625 () Option!13190)

(assert (=> b!4801829 (= e!2998625 e!2998627)))

(declare-fun c!818476 () Bool)

(assert (=> b!4801829 (= c!818476 ((_ is Cons!54332) (apply!13039 lm!2473 lt!1956940)))))

(declare-fun d!1537560 () Bool)

(assert (=> d!1537560 e!2998626))

(declare-fun res!2042396 () Bool)

(assert (=> d!1537560 (=> res!2042396 e!2998626)))

(declare-fun e!2998623 () Bool)

(assert (=> d!1537560 (= res!2042396 e!2998623)))

(declare-fun res!2042395 () Bool)

(assert (=> d!1537560 (=> (not res!2042395) (not e!2998623))))

(assert (=> d!1537560 (= res!2042395 (isEmpty!29509 lt!1957052))))

(assert (=> d!1537560 (= lt!1957052 e!2998625)))

(declare-fun c!818475 () Bool)

(assert (=> d!1537560 (= c!818475 (and ((_ is Cons!54332) (apply!13039 lm!2473 lt!1956940)) (= (_1!31810 (h!60764 (apply!13039 lm!2473 lt!1956940))) key!5896)))))

(declare-fun noDuplicateKeys!2364 (List!54456) Bool)

(assert (=> d!1537560 (noDuplicateKeys!2364 (apply!13039 lm!2473 lt!1956940))))

(assert (=> d!1537560 (= (getPair!938 (apply!13039 lm!2473 lt!1956940) key!5896) lt!1957052)))

(declare-fun b!4801830 () Bool)

(declare-fun contains!17991 (List!54456 tuple2!57032) Bool)

(assert (=> b!4801830 (= e!2998624 (contains!17991 (apply!13039 lm!2473 lt!1956940) (get!18555 lt!1957052)))))

(declare-fun b!4801831 () Bool)

(assert (=> b!4801831 (= e!2998623 (not (containsKey!4040 (apply!13039 lm!2473 lt!1956940) key!5896)))))

(declare-fun b!4801832 () Bool)

(assert (=> b!4801832 (= e!2998625 (Some!13189 (h!60764 (apply!13039 lm!2473 lt!1956940))))))

(declare-fun b!4801833 () Bool)

(assert (=> b!4801833 (= e!2998627 (getPair!938 (t!361906 (apply!13039 lm!2473 lt!1956940)) key!5896))))

(assert (= (and d!1537560 c!818475) b!4801832))

(assert (= (and d!1537560 (not c!818475)) b!4801829))

(assert (= (and b!4801829 c!818476) b!4801833))

(assert (= (and b!4801829 (not c!818476)) b!4801827))

(assert (= (and d!1537560 res!2042395) b!4801831))

(assert (= (and d!1537560 (not res!2042396)) b!4801828))

(assert (= (and b!4801828 res!2042393) b!4801826))

(assert (= (and b!4801826 res!2042394) b!4801830))

(declare-fun m!5786026 () Bool)

(assert (=> d!1537560 m!5786026))

(assert (=> d!1537560 m!5785738))

(declare-fun m!5786028 () Bool)

(assert (=> d!1537560 m!5786028))

(declare-fun m!5786030 () Bool)

(assert (=> b!4801830 m!5786030))

(assert (=> b!4801830 m!5785738))

(assert (=> b!4801830 m!5786030))

(declare-fun m!5786032 () Bool)

(assert (=> b!4801830 m!5786032))

(assert (=> b!4801826 m!5786030))

(declare-fun m!5786034 () Bool)

(assert (=> b!4801828 m!5786034))

(declare-fun m!5786036 () Bool)

(assert (=> b!4801833 m!5786036))

(assert (=> b!4801831 m!5785738))

(declare-fun m!5786038 () Bool)

(assert (=> b!4801831 m!5786038))

(assert (=> b!4801612 d!1537560))

(declare-fun d!1537562 () Bool)

(declare-datatypes ((Option!13194 0))(
  ( (None!13193) (Some!13193 (v!48522 List!54456)) )
))
(declare-fun get!18556 (Option!13194) List!54456)

(declare-fun getValueByKey!2403 (List!54457 (_ BitVec 64)) Option!13194)

(assert (=> d!1537562 (= (apply!13039 lm!2473 lt!1956940) (get!18556 (getValueByKey!2403 (toList!7011 lm!2473) lt!1956940)))))

(declare-fun bs!1157811 () Bool)

(assert (= bs!1157811 d!1537562))

(declare-fun m!5786040 () Bool)

(assert (=> bs!1157811 m!5786040))

(assert (=> bs!1157811 m!5786040))

(declare-fun m!5786042 () Bool)

(assert (=> bs!1157811 m!5786042))

(assert (=> b!4801612 d!1537562))

(declare-fun d!1537564 () Bool)

(declare-fun res!2042401 () Bool)

(declare-fun e!2998632 () Bool)

(assert (=> d!1537564 (=> res!2042401 e!2998632)))

(assert (=> d!1537564 (= res!2042401 ((_ is Nil!54333) (toList!7011 lm!2473)))))

(assert (=> d!1537564 (= (forall!12337 (toList!7011 lm!2473) lambda!232541) e!2998632)))

(declare-fun b!4801838 () Bool)

(declare-fun e!2998633 () Bool)

(assert (=> b!4801838 (= e!2998632 e!2998633)))

(declare-fun res!2042402 () Bool)

(assert (=> b!4801838 (=> (not res!2042402) (not e!2998633))))

(declare-fun dynLambda!22095 (Int tuple2!57034) Bool)

(assert (=> b!4801838 (= res!2042402 (dynLambda!22095 lambda!232541 (h!60765 (toList!7011 lm!2473))))))

(declare-fun b!4801839 () Bool)

(assert (=> b!4801839 (= e!2998633 (forall!12337 (t!361907 (toList!7011 lm!2473)) lambda!232541))))

(assert (= (and d!1537564 (not res!2042401)) b!4801838))

(assert (= (and b!4801838 res!2042402) b!4801839))

(declare-fun b_lambda!187699 () Bool)

(assert (=> (not b_lambda!187699) (not b!4801838)))

(declare-fun m!5786044 () Bool)

(assert (=> b!4801838 m!5786044))

(declare-fun m!5786046 () Bool)

(assert (=> b!4801839 m!5786046))

(assert (=> start!495642 d!1537564))

(declare-fun d!1537566 () Bool)

(declare-fun isStrictlySorted!902 (List!54457) Bool)

(assert (=> d!1537566 (= (inv!69930 lm!2473) (isStrictlySorted!902 (toList!7011 lm!2473)))))

(declare-fun bs!1157812 () Bool)

(assert (= bs!1157812 d!1537566))

(declare-fun m!5786048 () Bool)

(assert (=> bs!1157812 m!5786048))

(assert (=> start!495642 d!1537566))

(declare-fun d!1537568 () Bool)

(declare-fun res!2042407 () Bool)

(declare-fun e!2998638 () Bool)

(assert (=> d!1537568 (=> res!2042407 e!2998638)))

(assert (=> d!1537568 (= res!2042407 (and ((_ is Cons!54332) (_2!31811 (h!60765 (toList!7011 lm!2473)))) (= (_1!31810 (h!60764 (_2!31811 (h!60765 (toList!7011 lm!2473))))) key!5896)))))

(assert (=> d!1537568 (= (containsKey!4040 (_2!31811 (h!60765 (toList!7011 lm!2473))) key!5896) e!2998638)))

(declare-fun b!4801844 () Bool)

(declare-fun e!2998639 () Bool)

(assert (=> b!4801844 (= e!2998638 e!2998639)))

(declare-fun res!2042408 () Bool)

(assert (=> b!4801844 (=> (not res!2042408) (not e!2998639))))

(assert (=> b!4801844 (= res!2042408 ((_ is Cons!54332) (_2!31811 (h!60765 (toList!7011 lm!2473)))))))

(declare-fun b!4801845 () Bool)

(assert (=> b!4801845 (= e!2998639 (containsKey!4040 (t!361906 (_2!31811 (h!60765 (toList!7011 lm!2473)))) key!5896))))

(assert (= (and d!1537568 (not res!2042407)) b!4801844))

(assert (= (and b!4801844 res!2042408) b!4801845))

(declare-fun m!5786050 () Bool)

(assert (=> b!4801845 m!5786050))

(assert (=> b!4801613 d!1537568))

(declare-fun d!1537570 () Bool)

(assert (=> d!1537570 (= (isDefined!10331 (getPair!938 (apply!13039 lt!1956934 lt!1956940) key!5896)) (not (isEmpty!29509 (getPair!938 (apply!13039 lt!1956934 lt!1956940) key!5896))))))

(declare-fun bs!1157813 () Bool)

(assert (= bs!1157813 d!1537570))

(assert (=> bs!1157813 m!5785760))

(declare-fun m!5786052 () Bool)

(assert (=> bs!1157813 m!5786052))

(assert (=> b!4801610 d!1537570))

(declare-fun b!4801846 () Bool)

(declare-fun res!2042410 () Bool)

(declare-fun e!2998641 () Bool)

(assert (=> b!4801846 (=> (not res!2042410) (not e!2998641))))

(declare-fun lt!1957053 () Option!13190)

(assert (=> b!4801846 (= res!2042410 (= (_1!31810 (get!18555 lt!1957053)) key!5896))))

(declare-fun b!4801847 () Bool)

(declare-fun e!2998644 () Option!13190)

(assert (=> b!4801847 (= e!2998644 None!13189)))

(declare-fun b!4801848 () Bool)

(declare-fun e!2998643 () Bool)

(assert (=> b!4801848 (= e!2998643 e!2998641)))

(declare-fun res!2042409 () Bool)

(assert (=> b!4801848 (=> (not res!2042409) (not e!2998641))))

(assert (=> b!4801848 (= res!2042409 (isDefined!10331 lt!1957053))))

(declare-fun b!4801849 () Bool)

(declare-fun e!2998642 () Option!13190)

(assert (=> b!4801849 (= e!2998642 e!2998644)))

(declare-fun c!818478 () Bool)

(assert (=> b!4801849 (= c!818478 ((_ is Cons!54332) (apply!13039 lt!1956934 lt!1956940)))))

(declare-fun d!1537572 () Bool)

(assert (=> d!1537572 e!2998643))

(declare-fun res!2042412 () Bool)

(assert (=> d!1537572 (=> res!2042412 e!2998643)))

(declare-fun e!2998640 () Bool)

(assert (=> d!1537572 (= res!2042412 e!2998640)))

(declare-fun res!2042411 () Bool)

(assert (=> d!1537572 (=> (not res!2042411) (not e!2998640))))

(assert (=> d!1537572 (= res!2042411 (isEmpty!29509 lt!1957053))))

(assert (=> d!1537572 (= lt!1957053 e!2998642)))

(declare-fun c!818477 () Bool)

(assert (=> d!1537572 (= c!818477 (and ((_ is Cons!54332) (apply!13039 lt!1956934 lt!1956940)) (= (_1!31810 (h!60764 (apply!13039 lt!1956934 lt!1956940))) key!5896)))))

(assert (=> d!1537572 (noDuplicateKeys!2364 (apply!13039 lt!1956934 lt!1956940))))

(assert (=> d!1537572 (= (getPair!938 (apply!13039 lt!1956934 lt!1956940) key!5896) lt!1957053)))

(declare-fun b!4801850 () Bool)

(assert (=> b!4801850 (= e!2998641 (contains!17991 (apply!13039 lt!1956934 lt!1956940) (get!18555 lt!1957053)))))

(declare-fun b!4801851 () Bool)

(assert (=> b!4801851 (= e!2998640 (not (containsKey!4040 (apply!13039 lt!1956934 lt!1956940) key!5896)))))

(declare-fun b!4801852 () Bool)

(assert (=> b!4801852 (= e!2998642 (Some!13189 (h!60764 (apply!13039 lt!1956934 lt!1956940))))))

(declare-fun b!4801853 () Bool)

(assert (=> b!4801853 (= e!2998644 (getPair!938 (t!361906 (apply!13039 lt!1956934 lt!1956940)) key!5896))))

(assert (= (and d!1537572 c!818477) b!4801852))

(assert (= (and d!1537572 (not c!818477)) b!4801849))

(assert (= (and b!4801849 c!818478) b!4801853))

(assert (= (and b!4801849 (not c!818478)) b!4801847))

(assert (= (and d!1537572 res!2042411) b!4801851))

(assert (= (and d!1537572 (not res!2042412)) b!4801848))

(assert (= (and b!4801848 res!2042409) b!4801846))

(assert (= (and b!4801846 res!2042410) b!4801850))

(declare-fun m!5786054 () Bool)

(assert (=> d!1537572 m!5786054))

(assert (=> d!1537572 m!5785758))

(declare-fun m!5786056 () Bool)

(assert (=> d!1537572 m!5786056))

(declare-fun m!5786058 () Bool)

(assert (=> b!4801850 m!5786058))

(assert (=> b!4801850 m!5785758))

(assert (=> b!4801850 m!5786058))

(declare-fun m!5786060 () Bool)

(assert (=> b!4801850 m!5786060))

(assert (=> b!4801846 m!5786058))

(declare-fun m!5786062 () Bool)

(assert (=> b!4801848 m!5786062))

(declare-fun m!5786064 () Bool)

(assert (=> b!4801853 m!5786064))

(assert (=> b!4801851 m!5785758))

(declare-fun m!5786066 () Bool)

(assert (=> b!4801851 m!5786066))

(assert (=> b!4801610 d!1537572))

(declare-fun d!1537574 () Bool)

(assert (=> d!1537574 (= (apply!13039 lt!1956934 lt!1956940) (get!18556 (getValueByKey!2403 (toList!7011 lt!1956934) lt!1956940)))))

(declare-fun bs!1157814 () Bool)

(assert (= bs!1157814 d!1537574))

(declare-fun m!5786068 () Bool)

(assert (=> bs!1157814 m!5786068))

(assert (=> bs!1157814 m!5786068))

(declare-fun m!5786070 () Bool)

(assert (=> bs!1157814 m!5786070))

(assert (=> b!4801610 d!1537574))

(assert (=> b!4801609 d!1537504))

(declare-fun d!1537576 () Bool)

(declare-fun tail!9334 (List!54457) List!54457)

(assert (=> d!1537576 (= (tail!9332 lm!2473) (ListLongMap!5434 (tail!9334 (toList!7011 lm!2473))))))

(declare-fun bs!1157815 () Bool)

(assert (= bs!1157815 d!1537576))

(declare-fun m!5786072 () Bool)

(assert (=> bs!1157815 m!5786072))

(assert (=> b!4801609 d!1537576))

(declare-fun d!1537578 () Bool)

(declare-fun e!2998649 () Bool)

(assert (=> d!1537578 e!2998649))

(declare-fun res!2042415 () Bool)

(assert (=> d!1537578 (=> res!2042415 e!2998649)))

(declare-fun lt!1957064 () Bool)

(assert (=> d!1537578 (= res!2042415 (not lt!1957064))))

(declare-fun lt!1957065 () Bool)

(assert (=> d!1537578 (= lt!1957064 lt!1957065)))

(declare-fun lt!1957063 () Unit!140777)

(declare-fun e!2998650 () Unit!140777)

(assert (=> d!1537578 (= lt!1957063 e!2998650)))

(declare-fun c!818481 () Bool)

(assert (=> d!1537578 (= c!818481 lt!1957065)))

(declare-fun containsKey!4044 (List!54457 (_ BitVec 64)) Bool)

(assert (=> d!1537578 (= lt!1957065 (containsKey!4044 (toList!7011 lt!1956934) lt!1956940))))

(assert (=> d!1537578 (= (contains!17986 lt!1956934 lt!1956940) lt!1957064)))

(declare-fun b!4801860 () Bool)

(declare-fun lt!1957062 () Unit!140777)

(assert (=> b!4801860 (= e!2998650 lt!1957062)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2194 (List!54457 (_ BitVec 64)) Unit!140777)

(assert (=> b!4801860 (= lt!1957062 (lemmaContainsKeyImpliesGetValueByKeyDefined!2194 (toList!7011 lt!1956934) lt!1956940))))

(declare-fun isDefined!10335 (Option!13194) Bool)

(assert (=> b!4801860 (isDefined!10335 (getValueByKey!2403 (toList!7011 lt!1956934) lt!1956940))))

(declare-fun b!4801861 () Bool)

(declare-fun Unit!140788 () Unit!140777)

(assert (=> b!4801861 (= e!2998650 Unit!140788)))

(declare-fun b!4801862 () Bool)

(assert (=> b!4801862 (= e!2998649 (isDefined!10335 (getValueByKey!2403 (toList!7011 lt!1956934) lt!1956940)))))

(assert (= (and d!1537578 c!818481) b!4801860))

(assert (= (and d!1537578 (not c!818481)) b!4801861))

(assert (= (and d!1537578 (not res!2042415)) b!4801862))

(declare-fun m!5786074 () Bool)

(assert (=> d!1537578 m!5786074))

(declare-fun m!5786076 () Bool)

(assert (=> b!4801860 m!5786076))

(assert (=> b!4801860 m!5786068))

(assert (=> b!4801860 m!5786068))

(declare-fun m!5786078 () Bool)

(assert (=> b!4801860 m!5786078))

(assert (=> b!4801862 m!5786068))

(assert (=> b!4801862 m!5786068))

(assert (=> b!4801862 m!5786078))

(assert (=> b!4801609 d!1537578))

(assert (=> b!4801609 d!1537514))

(declare-fun d!1537580 () Bool)

(declare-fun res!2042416 () Bool)

(declare-fun e!2998651 () Bool)

(assert (=> d!1537580 (=> res!2042416 e!2998651)))

(assert (=> d!1537580 (= res!2042416 ((_ is Nil!54333) (toList!7011 lt!1956934)))))

(assert (=> d!1537580 (= (forall!12337 (toList!7011 lt!1956934) lambda!232541) e!2998651)))

(declare-fun b!4801863 () Bool)

(declare-fun e!2998652 () Bool)

(assert (=> b!4801863 (= e!2998651 e!2998652)))

(declare-fun res!2042417 () Bool)

(assert (=> b!4801863 (=> (not res!2042417) (not e!2998652))))

(assert (=> b!4801863 (= res!2042417 (dynLambda!22095 lambda!232541 (h!60765 (toList!7011 lt!1956934))))))

(declare-fun b!4801864 () Bool)

(assert (=> b!4801864 (= e!2998652 (forall!12337 (t!361907 (toList!7011 lt!1956934)) lambda!232541))))

(assert (= (and d!1537580 (not res!2042416)) b!4801863))

(assert (= (and b!4801863 res!2042417) b!4801864))

(declare-fun b_lambda!187701 () Bool)

(assert (=> (not b_lambda!187701) (not b!4801863)))

(declare-fun m!5786080 () Bool)

(assert (=> b!4801863 m!5786080))

(declare-fun m!5786082 () Bool)

(assert (=> b!4801864 m!5786082))

(assert (=> b!4801609 d!1537580))

(declare-fun bs!1157816 () Bool)

(declare-fun d!1537582 () Bool)

(assert (= bs!1157816 (and d!1537582 d!1537554)))

(declare-fun lambda!232581 () Int)

(assert (=> bs!1157816 (= lambda!232581 lambda!232575)))

(declare-fun bs!1157817 () Bool)

(assert (= bs!1157817 (and d!1537582 d!1537556)))

(assert (=> bs!1157817 (= lambda!232581 lambda!232578)))

(declare-fun bs!1157818 () Bool)

(assert (= bs!1157818 (and d!1537582 d!1537482)))

(assert (=> bs!1157818 (not (= lambda!232581 lambda!232544))))

(declare-fun bs!1157819 () Bool)

(assert (= bs!1157819 (and d!1537582 start!495642)))

(assert (=> bs!1157819 (= lambda!232581 lambda!232541)))

(declare-fun bs!1157820 () Bool)

(assert (= bs!1157820 (and d!1537582 d!1537514)))

(assert (=> bs!1157820 (= lambda!232581 lambda!232572)))

(declare-fun bs!1157821 () Bool)

(assert (= bs!1157821 (and d!1537582 d!1537490)))

(assert (=> bs!1157821 (= lambda!232581 lambda!232556)))

(assert (=> d!1537582 (contains!17987 (extractMap!2493 (toList!7011 lt!1956934)) key!5896)))

(declare-fun lt!1957068 () Unit!140777)

(declare-fun choose!34710 (ListLongMap!5433 K!15904 Hashable!6966) Unit!140777)

(assert (=> d!1537582 (= lt!1957068 (choose!34710 lt!1956934 key!5896 hashF!1559))))

(assert (=> d!1537582 (forall!12337 (toList!7011 lt!1956934) lambda!232581)))

(assert (=> d!1537582 (= (lemmaListContainsThenExtractedMapContains!716 lt!1956934 key!5896 hashF!1559) lt!1957068)))

(declare-fun bs!1157822 () Bool)

(assert (= bs!1157822 d!1537582))

(assert (=> bs!1157822 m!5785746))

(assert (=> bs!1157822 m!5785746))

(assert (=> bs!1157822 m!5785748))

(declare-fun m!5786084 () Bool)

(assert (=> bs!1157822 m!5786084))

(declare-fun m!5786086 () Bool)

(assert (=> bs!1157822 m!5786086))

(assert (=> b!4801609 d!1537582))

(declare-fun bs!1157823 () Bool)

(declare-fun d!1537584 () Bool)

(assert (= bs!1157823 (and d!1537584 d!1537554)))

(declare-fun lambda!232582 () Int)

(assert (=> bs!1157823 (not (= lambda!232582 lambda!232575))))

(declare-fun bs!1157824 () Bool)

(assert (= bs!1157824 (and d!1537584 d!1537582)))

(assert (=> bs!1157824 (not (= lambda!232582 lambda!232581))))

(declare-fun bs!1157825 () Bool)

(assert (= bs!1157825 (and d!1537584 d!1537556)))

(assert (=> bs!1157825 (not (= lambda!232582 lambda!232578))))

(declare-fun bs!1157826 () Bool)

(assert (= bs!1157826 (and d!1537584 d!1537482)))

(assert (=> bs!1157826 (= lambda!232582 lambda!232544)))

(declare-fun bs!1157827 () Bool)

(assert (= bs!1157827 (and d!1537584 start!495642)))

(assert (=> bs!1157827 (not (= lambda!232582 lambda!232541))))

(declare-fun bs!1157828 () Bool)

(assert (= bs!1157828 (and d!1537584 d!1537514)))

(assert (=> bs!1157828 (not (= lambda!232582 lambda!232572))))

(declare-fun bs!1157829 () Bool)

(assert (= bs!1157829 (and d!1537584 d!1537490)))

(assert (=> bs!1157829 (not (= lambda!232582 lambda!232556))))

(assert (=> d!1537584 true))

(assert (=> d!1537584 (= (allKeysSameHashInMap!2371 lm!2473 hashF!1559) (forall!12337 (toList!7011 lm!2473) lambda!232582))))

(declare-fun bs!1157830 () Bool)

(assert (= bs!1157830 d!1537584))

(declare-fun m!5786088 () Bool)

(assert (=> bs!1157830 m!5786088))

(assert (=> b!4801607 d!1537584))

(declare-fun b!4801865 () Bool)

(declare-fun e!2998657 () Bool)

(declare-fun e!2998653 () Bool)

(assert (=> b!4801865 (= e!2998657 e!2998653)))

(declare-fun res!2042420 () Bool)

(assert (=> b!4801865 (=> (not res!2042420) (not e!2998653))))

(assert (=> b!4801865 (= res!2042420 (isDefined!10334 (getValueByKey!2402 (toList!7012 (extractMap!2493 (toList!7011 lm!2473))) key!5896)))))

(declare-fun b!4801866 () Bool)

(declare-fun e!2998655 () List!54459)

(assert (=> b!4801866 (= e!2998655 (keys!19867 (extractMap!2493 (toList!7011 lm!2473))))))

(declare-fun b!4801867 () Bool)

(declare-fun e!2998658 () Bool)

(assert (=> b!4801867 (= e!2998658 (not (contains!17990 (keys!19867 (extractMap!2493 (toList!7011 lm!2473))) key!5896)))))

(declare-fun b!4801869 () Bool)

(assert (=> b!4801869 (= e!2998655 (getKeysList!1102 (toList!7012 (extractMap!2493 (toList!7011 lm!2473)))))))

(declare-fun b!4801870 () Bool)

(declare-fun e!2998656 () Unit!140777)

(declare-fun Unit!140789 () Unit!140777)

(assert (=> b!4801870 (= e!2998656 Unit!140789)))

(declare-fun b!4801871 () Bool)

(declare-fun e!2998654 () Unit!140777)

(assert (=> b!4801871 (= e!2998654 e!2998656)))

(declare-fun c!818483 () Bool)

(declare-fun call!335404 () Bool)

(assert (=> b!4801871 (= c!818483 call!335404)))

(declare-fun b!4801872 () Bool)

(declare-fun lt!1957073 () Unit!140777)

(assert (=> b!4801872 (= e!2998654 lt!1957073)))

(declare-fun lt!1957074 () Unit!140777)

(assert (=> b!4801872 (= lt!1957074 (lemmaContainsKeyImpliesGetValueByKeyDefined!2193 (toList!7012 (extractMap!2493 (toList!7011 lm!2473))) key!5896))))

(assert (=> b!4801872 (isDefined!10334 (getValueByKey!2402 (toList!7012 (extractMap!2493 (toList!7011 lm!2473))) key!5896))))

(declare-fun lt!1957071 () Unit!140777)

(assert (=> b!4801872 (= lt!1957071 lt!1957074)))

(assert (=> b!4801872 (= lt!1957073 (lemmaInListThenGetKeysListContains!1097 (toList!7012 (extractMap!2493 (toList!7011 lm!2473))) key!5896))))

(assert (=> b!4801872 call!335404))

(declare-fun b!4801868 () Bool)

(assert (=> b!4801868 (= e!2998653 (contains!17990 (keys!19867 (extractMap!2493 (toList!7011 lm!2473))) key!5896))))

(declare-fun d!1537586 () Bool)

(assert (=> d!1537586 e!2998657))

(declare-fun res!2042418 () Bool)

(assert (=> d!1537586 (=> res!2042418 e!2998657)))

(assert (=> d!1537586 (= res!2042418 e!2998658)))

(declare-fun res!2042419 () Bool)

(assert (=> d!1537586 (=> (not res!2042419) (not e!2998658))))

(declare-fun lt!1957072 () Bool)

(assert (=> d!1537586 (= res!2042419 (not lt!1957072))))

(declare-fun lt!1957070 () Bool)

(assert (=> d!1537586 (= lt!1957072 lt!1957070)))

(declare-fun lt!1957075 () Unit!140777)

(assert (=> d!1537586 (= lt!1957075 e!2998654)))

(declare-fun c!818484 () Bool)

(assert (=> d!1537586 (= c!818484 lt!1957070)))

(assert (=> d!1537586 (= lt!1957070 (containsKey!4043 (toList!7012 (extractMap!2493 (toList!7011 lm!2473))) key!5896))))

(assert (=> d!1537586 (= (contains!17987 (extractMap!2493 (toList!7011 lm!2473)) key!5896) lt!1957072)))

(declare-fun bm!335399 () Bool)

(assert (=> bm!335399 (= call!335404 (contains!17990 e!2998655 key!5896))))

(declare-fun c!818482 () Bool)

(assert (=> bm!335399 (= c!818482 c!818484)))

(declare-fun b!4801873 () Bool)

(assert (=> b!4801873 false))

(declare-fun lt!1957069 () Unit!140777)

(declare-fun lt!1957076 () Unit!140777)

(assert (=> b!4801873 (= lt!1957069 lt!1957076)))

(assert (=> b!4801873 (containsKey!4043 (toList!7012 (extractMap!2493 (toList!7011 lm!2473))) key!5896)))

(assert (=> b!4801873 (= lt!1957076 (lemmaInGetKeysListThenContainsKey!1102 (toList!7012 (extractMap!2493 (toList!7011 lm!2473))) key!5896))))

(declare-fun Unit!140790 () Unit!140777)

(assert (=> b!4801873 (= e!2998656 Unit!140790)))

(assert (= (and d!1537586 c!818484) b!4801872))

(assert (= (and d!1537586 (not c!818484)) b!4801871))

(assert (= (and b!4801871 c!818483) b!4801873))

(assert (= (and b!4801871 (not c!818483)) b!4801870))

(assert (= (or b!4801872 b!4801871) bm!335399))

(assert (= (and bm!335399 c!818482) b!4801869))

(assert (= (and bm!335399 (not c!818482)) b!4801866))

(assert (= (and d!1537586 res!2042419) b!4801867))

(assert (= (and d!1537586 (not res!2042418)) b!4801865))

(assert (= (and b!4801865 res!2042420) b!4801868))

(declare-fun m!5786090 () Bool)

(assert (=> bm!335399 m!5786090))

(assert (=> b!4801867 m!5785716))

(declare-fun m!5786092 () Bool)

(assert (=> b!4801867 m!5786092))

(assert (=> b!4801867 m!5786092))

(declare-fun m!5786094 () Bool)

(assert (=> b!4801867 m!5786094))

(assert (=> b!4801868 m!5785716))

(assert (=> b!4801868 m!5786092))

(assert (=> b!4801868 m!5786092))

(assert (=> b!4801868 m!5786094))

(declare-fun m!5786096 () Bool)

(assert (=> b!4801865 m!5786096))

(assert (=> b!4801865 m!5786096))

(declare-fun m!5786098 () Bool)

(assert (=> b!4801865 m!5786098))

(declare-fun m!5786100 () Bool)

(assert (=> d!1537586 m!5786100))

(declare-fun m!5786102 () Bool)

(assert (=> b!4801869 m!5786102))

(declare-fun m!5786104 () Bool)

(assert (=> b!4801872 m!5786104))

(assert (=> b!4801872 m!5786096))

(assert (=> b!4801872 m!5786096))

(assert (=> b!4801872 m!5786098))

(declare-fun m!5786106 () Bool)

(assert (=> b!4801872 m!5786106))

(assert (=> b!4801873 m!5786100))

(declare-fun m!5786108 () Bool)

(assert (=> b!4801873 m!5786108))

(assert (=> b!4801866 m!5785716))

(assert (=> b!4801866 m!5786092))

(assert (=> b!4801616 d!1537586))

(declare-fun bs!1157831 () Bool)

(declare-fun d!1537588 () Bool)

(assert (= bs!1157831 (and d!1537588 d!1537554)))

(declare-fun lambda!232583 () Int)

(assert (=> bs!1157831 (= lambda!232583 lambda!232575)))

(declare-fun bs!1157832 () Bool)

(assert (= bs!1157832 (and d!1537588 d!1537582)))

(assert (=> bs!1157832 (= lambda!232583 lambda!232581)))

(declare-fun bs!1157833 () Bool)

(assert (= bs!1157833 (and d!1537588 d!1537556)))

(assert (=> bs!1157833 (= lambda!232583 lambda!232578)))

(declare-fun bs!1157834 () Bool)

(assert (= bs!1157834 (and d!1537588 d!1537482)))

(assert (=> bs!1157834 (not (= lambda!232583 lambda!232544))))

(declare-fun bs!1157835 () Bool)

(assert (= bs!1157835 (and d!1537588 start!495642)))

(assert (=> bs!1157835 (= lambda!232583 lambda!232541)))

(declare-fun bs!1157836 () Bool)

(assert (= bs!1157836 (and d!1537588 d!1537584)))

(assert (=> bs!1157836 (not (= lambda!232583 lambda!232582))))

(declare-fun bs!1157837 () Bool)

(assert (= bs!1157837 (and d!1537588 d!1537514)))

(assert (=> bs!1157837 (= lambda!232583 lambda!232572)))

(declare-fun bs!1157838 () Bool)

(assert (= bs!1157838 (and d!1537588 d!1537490)))

(assert (=> bs!1157838 (= lambda!232583 lambda!232556)))

(declare-fun lt!1957077 () ListMap!6483)

(assert (=> d!1537588 (invariantList!1756 (toList!7012 lt!1957077))))

(declare-fun e!2998659 () ListMap!6483)

(assert (=> d!1537588 (= lt!1957077 e!2998659)))

(declare-fun c!818485 () Bool)

(assert (=> d!1537588 (= c!818485 ((_ is Cons!54333) (toList!7011 lm!2473)))))

(assert (=> d!1537588 (forall!12337 (toList!7011 lm!2473) lambda!232583)))

(assert (=> d!1537588 (= (extractMap!2493 (toList!7011 lm!2473)) lt!1957077)))

(declare-fun b!4801874 () Bool)

(assert (=> b!4801874 (= e!2998659 (addToMapMapFromBucket!1733 (_2!31811 (h!60765 (toList!7011 lm!2473))) (extractMap!2493 (t!361907 (toList!7011 lm!2473)))))))

(declare-fun b!4801875 () Bool)

(assert (=> b!4801875 (= e!2998659 (ListMap!6484 Nil!54332))))

(assert (= (and d!1537588 c!818485) b!4801874))

(assert (= (and d!1537588 (not c!818485)) b!4801875))

(declare-fun m!5786110 () Bool)

(assert (=> d!1537588 m!5786110))

(declare-fun m!5786112 () Bool)

(assert (=> d!1537588 m!5786112))

(declare-fun m!5786114 () Bool)

(assert (=> b!4801874 m!5786114))

(assert (=> b!4801874 m!5786114))

(declare-fun m!5786116 () Bool)

(assert (=> b!4801874 m!5786116))

(assert (=> b!4801616 d!1537588))

(declare-fun d!1537590 () Bool)

(declare-fun e!2998660 () Bool)

(assert (=> d!1537590 e!2998660))

(declare-fun res!2042421 () Bool)

(assert (=> d!1537590 (=> res!2042421 e!2998660)))

(declare-fun lt!1957080 () Bool)

(assert (=> d!1537590 (= res!2042421 (not lt!1957080))))

(declare-fun lt!1957081 () Bool)

(assert (=> d!1537590 (= lt!1957080 lt!1957081)))

(declare-fun lt!1957079 () Unit!140777)

(declare-fun e!2998661 () Unit!140777)

(assert (=> d!1537590 (= lt!1957079 e!2998661)))

(declare-fun c!818486 () Bool)

(assert (=> d!1537590 (= c!818486 lt!1957081)))

(assert (=> d!1537590 (= lt!1957081 (containsKey!4044 (toList!7011 lm!2473) lt!1956940))))

(assert (=> d!1537590 (= (contains!17986 lm!2473 lt!1956940) lt!1957080)))

(declare-fun b!4801876 () Bool)

(declare-fun lt!1957078 () Unit!140777)

(assert (=> b!4801876 (= e!2998661 lt!1957078)))

(assert (=> b!4801876 (= lt!1957078 (lemmaContainsKeyImpliesGetValueByKeyDefined!2194 (toList!7011 lm!2473) lt!1956940))))

(assert (=> b!4801876 (isDefined!10335 (getValueByKey!2403 (toList!7011 lm!2473) lt!1956940))))

(declare-fun b!4801877 () Bool)

(declare-fun Unit!140791 () Unit!140777)

(assert (=> b!4801877 (= e!2998661 Unit!140791)))

(declare-fun b!4801878 () Bool)

(assert (=> b!4801878 (= e!2998660 (isDefined!10335 (getValueByKey!2403 (toList!7011 lm!2473) lt!1956940)))))

(assert (= (and d!1537590 c!818486) b!4801876))

(assert (= (and d!1537590 (not c!818486)) b!4801877))

(assert (= (and d!1537590 (not res!2042421)) b!4801878))

(declare-fun m!5786118 () Bool)

(assert (=> d!1537590 m!5786118))

(declare-fun m!5786120 () Bool)

(assert (=> b!4801876 m!5786120))

(assert (=> b!4801876 m!5786040))

(assert (=> b!4801876 m!5786040))

(declare-fun m!5786122 () Bool)

(assert (=> b!4801876 m!5786122))

(assert (=> b!4801878 m!5786040))

(assert (=> b!4801878 m!5786040))

(assert (=> b!4801878 m!5786122))

(assert (=> b!4801606 d!1537590))

(declare-fun d!1537592 () Bool)

(declare-fun res!2042424 () Bool)

(declare-fun e!2998663 () Bool)

(assert (=> d!1537592 (=> res!2042424 e!2998663)))

(declare-fun e!2998664 () Bool)

(assert (=> d!1537592 (= res!2042424 e!2998664)))

(declare-fun res!2042423 () Bool)

(assert (=> d!1537592 (=> (not res!2042423) (not e!2998664))))

(assert (=> d!1537592 (= res!2042423 ((_ is Cons!54333) (toList!7011 lm!2473)))))

(assert (=> d!1537592 (= (containsKeyBiggerList!608 (toList!7011 lm!2473) key!5896) e!2998663)))

(declare-fun b!4801879 () Bool)

(assert (=> b!4801879 (= e!2998664 (containsKey!4040 (_2!31811 (h!60765 (toList!7011 lm!2473))) key!5896))))

(declare-fun b!4801880 () Bool)

(declare-fun e!2998662 () Bool)

(assert (=> b!4801880 (= e!2998663 e!2998662)))

(declare-fun res!2042422 () Bool)

(assert (=> b!4801880 (=> (not res!2042422) (not e!2998662))))

(assert (=> b!4801880 (= res!2042422 ((_ is Cons!54333) (toList!7011 lm!2473)))))

(declare-fun b!4801881 () Bool)

(assert (=> b!4801881 (= e!2998662 (containsKeyBiggerList!608 (t!361907 (toList!7011 lm!2473)) key!5896))))

(assert (= (and d!1537592 res!2042423) b!4801879))

(assert (= (and d!1537592 (not res!2042424)) b!4801880))

(assert (= (and b!4801880 res!2042422) b!4801881))

(assert (=> b!4801879 m!5785744))

(declare-fun m!5786124 () Bool)

(assert (=> b!4801881 m!5786124))

(assert (=> b!4801606 d!1537592))

(declare-fun bs!1157839 () Bool)

(declare-fun d!1537594 () Bool)

(assert (= bs!1157839 (and d!1537594 d!1537554)))

(declare-fun lambda!232584 () Int)

(assert (=> bs!1157839 (= lambda!232584 lambda!232575)))

(declare-fun bs!1157840 () Bool)

(assert (= bs!1157840 (and d!1537594 d!1537582)))

(assert (=> bs!1157840 (= lambda!232584 lambda!232581)))

(declare-fun bs!1157841 () Bool)

(assert (= bs!1157841 (and d!1537594 d!1537556)))

(assert (=> bs!1157841 (= lambda!232584 lambda!232578)))

(declare-fun bs!1157842 () Bool)

(assert (= bs!1157842 (and d!1537594 d!1537482)))

(assert (=> bs!1157842 (not (= lambda!232584 lambda!232544))))

(declare-fun bs!1157843 () Bool)

(assert (= bs!1157843 (and d!1537594 d!1537588)))

(assert (=> bs!1157843 (= lambda!232584 lambda!232583)))

(declare-fun bs!1157844 () Bool)

(assert (= bs!1157844 (and d!1537594 start!495642)))

(assert (=> bs!1157844 (= lambda!232584 lambda!232541)))

(declare-fun bs!1157845 () Bool)

(assert (= bs!1157845 (and d!1537594 d!1537584)))

(assert (=> bs!1157845 (not (= lambda!232584 lambda!232582))))

(declare-fun bs!1157846 () Bool)

(assert (= bs!1157846 (and d!1537594 d!1537514)))

(assert (=> bs!1157846 (= lambda!232584 lambda!232572)))

(declare-fun bs!1157847 () Bool)

(assert (= bs!1157847 (and d!1537594 d!1537490)))

(assert (=> bs!1157847 (= lambda!232584 lambda!232556)))

(assert (=> d!1537594 (containsKeyBiggerList!608 (toList!7011 lm!2473) key!5896)))

(declare-fun lt!1957082 () Unit!140777)

(assert (=> d!1537594 (= lt!1957082 (choose!34708 lm!2473 key!5896 hashF!1559))))

(assert (=> d!1537594 (forall!12337 (toList!7011 lm!2473) lambda!232584)))

(assert (=> d!1537594 (= (lemmaInLongMapThenContainsKeyBiggerList!348 lm!2473 key!5896 hashF!1559) lt!1957082)))

(declare-fun bs!1157848 () Bool)

(assert (= bs!1157848 d!1537594))

(assert (=> bs!1157848 m!5785724))

(declare-fun m!5786126 () Bool)

(assert (=> bs!1157848 m!5786126))

(declare-fun m!5786128 () Bool)

(assert (=> bs!1157848 m!5786128))

(assert (=> b!4801606 d!1537594))

(declare-fun bs!1157849 () Bool)

(declare-fun d!1537596 () Bool)

(assert (= bs!1157849 (and d!1537596 d!1537554)))

(declare-fun lambda!232585 () Int)

(assert (=> bs!1157849 (= lambda!232585 lambda!232575)))

(declare-fun bs!1157850 () Bool)

(assert (= bs!1157850 (and d!1537596 d!1537594)))

(assert (=> bs!1157850 (= lambda!232585 lambda!232584)))

(declare-fun bs!1157851 () Bool)

(assert (= bs!1157851 (and d!1537596 d!1537582)))

(assert (=> bs!1157851 (= lambda!232585 lambda!232581)))

(declare-fun bs!1157852 () Bool)

(assert (= bs!1157852 (and d!1537596 d!1537556)))

(assert (=> bs!1157852 (= lambda!232585 lambda!232578)))

(declare-fun bs!1157853 () Bool)

(assert (= bs!1157853 (and d!1537596 d!1537482)))

(assert (=> bs!1157853 (not (= lambda!232585 lambda!232544))))

(declare-fun bs!1157854 () Bool)

(assert (= bs!1157854 (and d!1537596 d!1537588)))

(assert (=> bs!1157854 (= lambda!232585 lambda!232583)))

(declare-fun bs!1157855 () Bool)

(assert (= bs!1157855 (and d!1537596 start!495642)))

(assert (=> bs!1157855 (= lambda!232585 lambda!232541)))

(declare-fun bs!1157856 () Bool)

(assert (= bs!1157856 (and d!1537596 d!1537584)))

(assert (=> bs!1157856 (not (= lambda!232585 lambda!232582))))

(declare-fun bs!1157857 () Bool)

(assert (= bs!1157857 (and d!1537596 d!1537514)))

(assert (=> bs!1157857 (= lambda!232585 lambda!232572)))

(declare-fun bs!1157858 () Bool)

(assert (= bs!1157858 (and d!1537596 d!1537490)))

(assert (=> bs!1157858 (= lambda!232585 lambda!232556)))

(declare-fun e!2998665 () Bool)

(assert (=> d!1537596 e!2998665))

(declare-fun res!2042425 () Bool)

(assert (=> d!1537596 (=> (not res!2042425) (not e!2998665))))

(assert (=> d!1537596 (= res!2042425 (contains!17986 lm!2473 (hash!5024 hashF!1559 key!5896)))))

(declare-fun lt!1957083 () Unit!140777)

(assert (=> d!1537596 (= lt!1957083 (choose!34709 lm!2473 key!5896 hashF!1559))))

(assert (=> d!1537596 (forall!12337 (toList!7011 lm!2473) lambda!232585)))

(assert (=> d!1537596 (= (lemmaInGenericMapThenInLongMap!370 lm!2473 key!5896 hashF!1559) lt!1957083)))

(declare-fun b!4801882 () Bool)

(assert (=> b!4801882 (= e!2998665 (isDefined!10331 (getPair!938 (apply!13039 lm!2473 (hash!5024 hashF!1559 key!5896)) key!5896)))))

(assert (= (and d!1537596 res!2042425) b!4801882))

(assert (=> d!1537596 m!5785726))

(assert (=> d!1537596 m!5785726))

(declare-fun m!5786130 () Bool)

(assert (=> d!1537596 m!5786130))

(declare-fun m!5786132 () Bool)

(assert (=> d!1537596 m!5786132))

(declare-fun m!5786134 () Bool)

(assert (=> d!1537596 m!5786134))

(assert (=> b!4801882 m!5785726))

(assert (=> b!4801882 m!5785726))

(declare-fun m!5786136 () Bool)

(assert (=> b!4801882 m!5786136))

(assert (=> b!4801882 m!5786136))

(declare-fun m!5786138 () Bool)

(assert (=> b!4801882 m!5786138))

(assert (=> b!4801882 m!5786138))

(declare-fun m!5786140 () Bool)

(assert (=> b!4801882 m!5786140))

(assert (=> b!4801606 d!1537596))

(declare-fun d!1537598 () Bool)

(declare-fun c!818487 () Bool)

(declare-fun e!2998667 () Bool)

(assert (=> d!1537598 (= c!818487 e!2998667)))

(declare-fun res!2042426 () Bool)

(assert (=> d!1537598 (=> (not res!2042426) (not e!2998667))))

(assert (=> d!1537598 (= res!2042426 ((_ is Cons!54333) (toList!7011 lm!2473)))))

(declare-fun e!2998666 () V!16150)

(assert (=> d!1537598 (= (getValue!154 (toList!7011 lm!2473) key!5896) e!2998666)))

(declare-fun b!4801885 () Bool)

(assert (=> b!4801885 (= e!2998667 (containsKey!4040 (_2!31811 (h!60765 (toList!7011 lm!2473))) key!5896))))

(declare-fun b!4801883 () Bool)

(assert (=> b!4801883 (= e!2998666 (_2!31810 (get!18555 (getPair!938 (_2!31811 (h!60765 (toList!7011 lm!2473))) key!5896))))))

(declare-fun b!4801884 () Bool)

(assert (=> b!4801884 (= e!2998666 (getValue!154 (t!361907 (toList!7011 lm!2473)) key!5896))))

(assert (= (and d!1537598 res!2042426) b!4801885))

(assert (= (and d!1537598 c!818487) b!4801883))

(assert (= (and d!1537598 (not c!818487)) b!4801884))

(assert (=> b!4801885 m!5785744))

(declare-fun m!5786142 () Bool)

(assert (=> b!4801883 m!5786142))

(assert (=> b!4801883 m!5786142))

(declare-fun m!5786144 () Bool)

(assert (=> b!4801883 m!5786144))

(declare-fun m!5786146 () Bool)

(assert (=> b!4801884 m!5786146))

(assert (=> b!4801606 d!1537598))

(declare-fun d!1537600 () Bool)

(declare-fun hash!5026 (Hashable!6966 K!15904) (_ BitVec 64))

(assert (=> d!1537600 (= (hash!5024 hashF!1559 key!5896) (hash!5026 hashF!1559 key!5896))))

(declare-fun bs!1157859 () Bool)

(assert (= bs!1157859 d!1537600))

(declare-fun m!5786148 () Bool)

(assert (=> bs!1157859 m!5786148))

(assert (=> b!4801606 d!1537600))

(declare-fun b!4801890 () Bool)

(declare-fun e!2998670 () Bool)

(declare-fun tp!1358419 () Bool)

(declare-fun tp!1358420 () Bool)

(assert (=> b!4801890 (= e!2998670 (and tp!1358419 tp!1358420))))

(assert (=> b!4801614 (= tp!1358408 e!2998670)))

(assert (= (and b!4801614 ((_ is Cons!54333) (toList!7011 lm!2473))) b!4801890))

(declare-fun b_lambda!187703 () Bool)

(assert (= b_lambda!187699 (or start!495642 b_lambda!187703)))

(declare-fun bs!1157860 () Bool)

(declare-fun d!1537602 () Bool)

(assert (= bs!1157860 (and d!1537602 start!495642)))

(assert (=> bs!1157860 (= (dynLambda!22095 lambda!232541 (h!60765 (toList!7011 lm!2473))) (noDuplicateKeys!2364 (_2!31811 (h!60765 (toList!7011 lm!2473)))))))

(declare-fun m!5786150 () Bool)

(assert (=> bs!1157860 m!5786150))

(assert (=> b!4801838 d!1537602))

(declare-fun b_lambda!187705 () Bool)

(assert (= b_lambda!187701 (or start!495642 b_lambda!187705)))

(declare-fun bs!1157861 () Bool)

(declare-fun d!1537604 () Bool)

(assert (= bs!1157861 (and d!1537604 start!495642)))

(assert (=> bs!1157861 (= (dynLambda!22095 lambda!232541 (h!60765 (toList!7011 lt!1956934))) (noDuplicateKeys!2364 (_2!31811 (h!60765 (toList!7011 lt!1956934)))))))

(declare-fun m!5786152 () Bool)

(assert (=> bs!1157861 m!5786152))

(assert (=> b!4801863 d!1537604))

(check-sat (not d!1537596) (not bs!1157861) (not d!1537578) (not b!4801735) (not b_lambda!187705) (not b!4801739) (not b!4801885) (not b!4801862) (not b!4801833) (not b!4801890) (not b!4801864) (not b_lambda!187703) (not b!4801806) (not d!1537562) (not b!4801868) (not b!4801830) (not b!4801797) (not b!4801869) (not d!1537584) (not b!4801873) (not b!4801848) (not d!1537586) (not d!1537560) (not b!4801787) (not b!4801826) (not b!4801876) (not b!4801734) (not d!1537570) (not b!4801866) (not b!4801804) (not d!1537588) (not b!4801828) (not b!4801853) (not b!4801796) (not d!1537490) (not d!1537574) tp_is_empty!33727 (not b!4801865) (not d!1537582) (not bs!1157860) (not d!1537566) tp_is_empty!33725 (not d!1537594) (not d!1537600) (not b!4801860) (not d!1537554) (not d!1537572) (not d!1537482) (not b!4801851) (not b!4801831) (not b!4801884) (not b!4801845) (not b!4801882) (not b!4801878) (not b!4801809) (not d!1537556) (not b!4801846) (not b!4801795) (not b!4801736) (not b!4801733) (not b!4801872) (not b!4801883) (not d!1537576) (not b!4801839) (not d!1537590) (not b!4801850) (not bm!335399) (not d!1537558) (not b!4801874) (not d!1537514) (not bm!335397) (not d!1537504) (not b!4801879) (not b!4801740) (not b!4801732) (not b!4801867) (not b!4801881))
(check-sat)
(get-model)

(declare-fun d!1537632 () Bool)

(declare-fun lt!1957095 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9751 (List!54456) (InoxSet tuple2!57032))

(assert (=> d!1537632 (= lt!1957095 (select (content!9751 (apply!13039 lt!1956934 lt!1956940)) (get!18555 lt!1957053)))))

(declare-fun e!2998710 () Bool)

(assert (=> d!1537632 (= lt!1957095 e!2998710)))

(declare-fun res!2042467 () Bool)

(assert (=> d!1537632 (=> (not res!2042467) (not e!2998710))))

(assert (=> d!1537632 (= res!2042467 ((_ is Cons!54332) (apply!13039 lt!1956934 lt!1956940)))))

(assert (=> d!1537632 (= (contains!17991 (apply!13039 lt!1956934 lt!1956940) (get!18555 lt!1957053)) lt!1957095)))

(declare-fun b!4801944 () Bool)

(declare-fun e!2998711 () Bool)

(assert (=> b!4801944 (= e!2998710 e!2998711)))

(declare-fun res!2042466 () Bool)

(assert (=> b!4801944 (=> res!2042466 e!2998711)))

(assert (=> b!4801944 (= res!2042466 (= (h!60764 (apply!13039 lt!1956934 lt!1956940)) (get!18555 lt!1957053)))))

(declare-fun b!4801945 () Bool)

(assert (=> b!4801945 (= e!2998711 (contains!17991 (t!361906 (apply!13039 lt!1956934 lt!1956940)) (get!18555 lt!1957053)))))

(assert (= (and d!1537632 res!2042467) b!4801944))

(assert (= (and b!4801944 (not res!2042466)) b!4801945))

(assert (=> d!1537632 m!5785758))

(declare-fun m!5786186 () Bool)

(assert (=> d!1537632 m!5786186))

(assert (=> d!1537632 m!5786058))

(declare-fun m!5786192 () Bool)

(assert (=> d!1537632 m!5786192))

(assert (=> b!4801945 m!5786058))

(declare-fun m!5786200 () Bool)

(assert (=> b!4801945 m!5786200))

(assert (=> b!4801850 d!1537632))

(declare-fun d!1537634 () Bool)

(assert (=> d!1537634 (= (get!18555 lt!1957053) (v!48518 lt!1957053))))

(assert (=> b!4801850 d!1537634))

(assert (=> b!4801885 d!1537568))

(assert (=> d!1537490 d!1537504))

(assert (=> d!1537490 d!1537514))

(declare-fun d!1537642 () Bool)

(assert (=> d!1537642 (not (contains!17987 (extractMap!2493 (toList!7011 lt!1956934)) key!5896))))

(assert (=> d!1537642 true))

(declare-fun _$28!856 () Unit!140777)

(assert (=> d!1537642 (= (choose!34707 lt!1956934 key!5896 hashF!1559) _$28!856)))

(declare-fun bs!1157867 () Bool)

(assert (= bs!1157867 d!1537642))

(assert (=> bs!1157867 m!5785746))

(assert (=> bs!1157867 m!5785746))

(assert (=> bs!1157867 m!5785748))

(assert (=> d!1537490 d!1537642))

(declare-fun d!1537658 () Bool)

(declare-fun res!2042482 () Bool)

(declare-fun e!2998730 () Bool)

(assert (=> d!1537658 (=> res!2042482 e!2998730)))

(assert (=> d!1537658 (= res!2042482 ((_ is Nil!54333) (toList!7011 lt!1956934)))))

(assert (=> d!1537658 (= (forall!12337 (toList!7011 lt!1956934) lambda!232556) e!2998730)))

(declare-fun b!4801974 () Bool)

(declare-fun e!2998731 () Bool)

(assert (=> b!4801974 (= e!2998730 e!2998731)))

(declare-fun res!2042483 () Bool)

(assert (=> b!4801974 (=> (not res!2042483) (not e!2998731))))

(assert (=> b!4801974 (= res!2042483 (dynLambda!22095 lambda!232556 (h!60765 (toList!7011 lt!1956934))))))

(declare-fun b!4801975 () Bool)

(assert (=> b!4801975 (= e!2998731 (forall!12337 (t!361907 (toList!7011 lt!1956934)) lambda!232556))))

(assert (= (and d!1537658 (not res!2042482)) b!4801974))

(assert (= (and b!4801974 res!2042483) b!4801975))

(declare-fun b_lambda!187707 () Bool)

(assert (=> (not b_lambda!187707) (not b!4801974)))

(declare-fun m!5786248 () Bool)

(assert (=> b!4801974 m!5786248))

(declare-fun m!5786250 () Bool)

(assert (=> b!4801975 m!5786250))

(assert (=> d!1537490 d!1537658))

(declare-fun d!1537660 () Bool)

(assert (=> d!1537660 (= (get!18555 (getPair!938 (_2!31811 (h!60765 (toList!7011 lm!2473))) key!5896)) (v!48518 (getPair!938 (_2!31811 (h!60765 (toList!7011 lm!2473))) key!5896)))))

(assert (=> b!4801883 d!1537660))

(declare-fun b!4801980 () Bool)

(declare-fun res!2042485 () Bool)

(declare-fun e!2998735 () Bool)

(assert (=> b!4801980 (=> (not res!2042485) (not e!2998735))))

(declare-fun lt!1957101 () Option!13190)

(assert (=> b!4801980 (= res!2042485 (= (_1!31810 (get!18555 lt!1957101)) key!5896))))

(declare-fun b!4801982 () Bool)

(declare-fun e!2998740 () Option!13190)

(assert (=> b!4801982 (= e!2998740 None!13189)))

(declare-fun b!4801984 () Bool)

(declare-fun e!2998738 () Bool)

(assert (=> b!4801984 (= e!2998738 e!2998735)))

(declare-fun res!2042484 () Bool)

(assert (=> b!4801984 (=> (not res!2042484) (not e!2998735))))

(assert (=> b!4801984 (= res!2042484 (isDefined!10331 lt!1957101))))

(declare-fun b!4801985 () Bool)

(declare-fun e!2998736 () Option!13190)

(assert (=> b!4801985 (= e!2998736 e!2998740)))

(declare-fun c!818504 () Bool)

(assert (=> b!4801985 (= c!818504 ((_ is Cons!54332) (_2!31811 (h!60765 (toList!7011 lm!2473)))))))

(declare-fun d!1537662 () Bool)

(assert (=> d!1537662 e!2998738))

(declare-fun res!2042488 () Bool)

(assert (=> d!1537662 (=> res!2042488 e!2998738)))

(declare-fun e!2998734 () Bool)

(assert (=> d!1537662 (= res!2042488 e!2998734)))

(declare-fun res!2042486 () Bool)

(assert (=> d!1537662 (=> (not res!2042486) (not e!2998734))))

(assert (=> d!1537662 (= res!2042486 (isEmpty!29509 lt!1957101))))

(assert (=> d!1537662 (= lt!1957101 e!2998736)))

(declare-fun c!818503 () Bool)

(assert (=> d!1537662 (= c!818503 (and ((_ is Cons!54332) (_2!31811 (h!60765 (toList!7011 lm!2473)))) (= (_1!31810 (h!60764 (_2!31811 (h!60765 (toList!7011 lm!2473))))) key!5896)))))

(assert (=> d!1537662 (noDuplicateKeys!2364 (_2!31811 (h!60765 (toList!7011 lm!2473))))))

(assert (=> d!1537662 (= (getPair!938 (_2!31811 (h!60765 (toList!7011 lm!2473))) key!5896) lt!1957101)))

(declare-fun b!4801986 () Bool)

(assert (=> b!4801986 (= e!2998735 (contains!17991 (_2!31811 (h!60765 (toList!7011 lm!2473))) (get!18555 lt!1957101)))))

(declare-fun b!4801987 () Bool)

(assert (=> b!4801987 (= e!2998734 (not (containsKey!4040 (_2!31811 (h!60765 (toList!7011 lm!2473))) key!5896)))))

(declare-fun b!4801988 () Bool)

(assert (=> b!4801988 (= e!2998736 (Some!13189 (h!60764 (_2!31811 (h!60765 (toList!7011 lm!2473))))))))

(declare-fun b!4801989 () Bool)

(assert (=> b!4801989 (= e!2998740 (getPair!938 (t!361906 (_2!31811 (h!60765 (toList!7011 lm!2473)))) key!5896))))

(assert (= (and d!1537662 c!818503) b!4801988))

(assert (= (and d!1537662 (not c!818503)) b!4801985))

(assert (= (and b!4801985 c!818504) b!4801989))

(assert (= (and b!4801985 (not c!818504)) b!4801982))

(assert (= (and d!1537662 res!2042486) b!4801987))

(assert (= (and d!1537662 (not res!2042488)) b!4801984))

(assert (= (and b!4801984 res!2042484) b!4801980))

(assert (= (and b!4801980 res!2042485) b!4801986))

(declare-fun m!5786260 () Bool)

(assert (=> d!1537662 m!5786260))

(assert (=> d!1537662 m!5786150))

(declare-fun m!5786262 () Bool)

(assert (=> b!4801986 m!5786262))

(assert (=> b!4801986 m!5786262))

(declare-fun m!5786264 () Bool)

(assert (=> b!4801986 m!5786264))

(assert (=> b!4801980 m!5786262))

(declare-fun m!5786266 () Bool)

(assert (=> b!4801984 m!5786266))

(declare-fun m!5786268 () Bool)

(assert (=> b!4801989 m!5786268))

(assert (=> b!4801987 m!5785744))

(assert (=> b!4801883 d!1537662))

(declare-fun d!1537670 () Bool)

(declare-fun res!2042496 () Bool)

(declare-fun e!2998747 () Bool)

(assert (=> d!1537670 (=> res!2042496 e!2998747)))

(assert (=> d!1537670 (= res!2042496 (not ((_ is Cons!54332) (_2!31811 (h!60765 (toList!7011 lm!2473))))))))

(assert (=> d!1537670 (= (noDuplicateKeys!2364 (_2!31811 (h!60765 (toList!7011 lm!2473)))) e!2998747)))

(declare-fun b!4801996 () Bool)

(declare-fun e!2998748 () Bool)

(assert (=> b!4801996 (= e!2998747 e!2998748)))

(declare-fun res!2042497 () Bool)

(assert (=> b!4801996 (=> (not res!2042497) (not e!2998748))))

(assert (=> b!4801996 (= res!2042497 (not (containsKey!4040 (t!361906 (_2!31811 (h!60765 (toList!7011 lm!2473)))) (_1!31810 (h!60764 (_2!31811 (h!60765 (toList!7011 lm!2473))))))))))

(declare-fun b!4801997 () Bool)

(assert (=> b!4801997 (= e!2998748 (noDuplicateKeys!2364 (t!361906 (_2!31811 (h!60765 (toList!7011 lm!2473))))))))

(assert (= (and d!1537670 (not res!2042496)) b!4801996))

(assert (= (and b!4801996 res!2042497) b!4801997))

(declare-fun m!5786274 () Bool)

(assert (=> b!4801996 m!5786274))

(declare-fun m!5786276 () Bool)

(assert (=> b!4801997 m!5786276))

(assert (=> bs!1157860 d!1537670))

(declare-fun d!1537676 () Bool)

(declare-fun res!2042498 () Bool)

(declare-fun e!2998749 () Bool)

(assert (=> d!1537676 (=> res!2042498 e!2998749)))

(assert (=> d!1537676 (= res!2042498 ((_ is Nil!54333) (t!361907 (toList!7011 lm!2473))))))

(assert (=> d!1537676 (= (forall!12337 (t!361907 (toList!7011 lm!2473)) lambda!232541) e!2998749)))

(declare-fun b!4801998 () Bool)

(declare-fun e!2998750 () Bool)

(assert (=> b!4801998 (= e!2998749 e!2998750)))

(declare-fun res!2042499 () Bool)

(assert (=> b!4801998 (=> (not res!2042499) (not e!2998750))))

(assert (=> b!4801998 (= res!2042499 (dynLambda!22095 lambda!232541 (h!60765 (t!361907 (toList!7011 lm!2473)))))))

(declare-fun b!4801999 () Bool)

(assert (=> b!4801999 (= e!2998750 (forall!12337 (t!361907 (t!361907 (toList!7011 lm!2473))) lambda!232541))))

(assert (= (and d!1537676 (not res!2042498)) b!4801998))

(assert (= (and b!4801998 res!2042499) b!4801999))

(declare-fun b_lambda!187711 () Bool)

(assert (=> (not b_lambda!187711) (not b!4801998)))

(declare-fun m!5786278 () Bool)

(assert (=> b!4801998 m!5786278))

(declare-fun m!5786280 () Bool)

(assert (=> b!4801999 m!5786280))

(assert (=> b!4801839 d!1537676))

(declare-fun d!1537678 () Bool)

(declare-fun res!2042504 () Bool)

(declare-fun e!2998755 () Bool)

(assert (=> d!1537678 (=> res!2042504 e!2998755)))

(assert (=> d!1537678 (= res!2042504 (and ((_ is Cons!54333) (toList!7011 lm!2473)) (= (_1!31811 (h!60765 (toList!7011 lm!2473))) lt!1956940)))))

(assert (=> d!1537678 (= (containsKey!4044 (toList!7011 lm!2473) lt!1956940) e!2998755)))

(declare-fun b!4802004 () Bool)

(declare-fun e!2998756 () Bool)

(assert (=> b!4802004 (= e!2998755 e!2998756)))

(declare-fun res!2042505 () Bool)

(assert (=> b!4802004 (=> (not res!2042505) (not e!2998756))))

(assert (=> b!4802004 (= res!2042505 (and (or (not ((_ is Cons!54333) (toList!7011 lm!2473))) (bvsle (_1!31811 (h!60765 (toList!7011 lm!2473))) lt!1956940)) ((_ is Cons!54333) (toList!7011 lm!2473)) (bvslt (_1!31811 (h!60765 (toList!7011 lm!2473))) lt!1956940)))))

(declare-fun b!4802005 () Bool)

(assert (=> b!4802005 (= e!2998756 (containsKey!4044 (t!361907 (toList!7011 lm!2473)) lt!1956940))))

(assert (= (and d!1537678 (not res!2042504)) b!4802004))

(assert (= (and b!4802004 res!2042505) b!4802005))

(declare-fun m!5786282 () Bool)

(assert (=> b!4802005 m!5786282))

(assert (=> d!1537590 d!1537678))

(assert (=> d!1537554 d!1537552))

(declare-fun d!1537680 () Bool)

(assert (=> d!1537680 (containsKeyBiggerList!608 (toList!7011 lt!1956934) key!5896)))

(assert (=> d!1537680 true))

(declare-fun _$33!886 () Unit!140777)

(assert (=> d!1537680 (= (choose!34708 lt!1956934 key!5896 hashF!1559) _$33!886)))

(declare-fun bs!1157870 () Bool)

(assert (= bs!1157870 d!1537680))

(assert (=> bs!1157870 m!5785768))

(assert (=> d!1537554 d!1537680))

(declare-fun d!1537682 () Bool)

(declare-fun res!2042506 () Bool)

(declare-fun e!2998757 () Bool)

(assert (=> d!1537682 (=> res!2042506 e!2998757)))

(assert (=> d!1537682 (= res!2042506 ((_ is Nil!54333) (toList!7011 lt!1956934)))))

(assert (=> d!1537682 (= (forall!12337 (toList!7011 lt!1956934) lambda!232575) e!2998757)))

(declare-fun b!4802006 () Bool)

(declare-fun e!2998758 () Bool)

(assert (=> b!4802006 (= e!2998757 e!2998758)))

(declare-fun res!2042507 () Bool)

(assert (=> b!4802006 (=> (not res!2042507) (not e!2998758))))

(assert (=> b!4802006 (= res!2042507 (dynLambda!22095 lambda!232575 (h!60765 (toList!7011 lt!1956934))))))

(declare-fun b!4802007 () Bool)

(assert (=> b!4802007 (= e!2998758 (forall!12337 (t!361907 (toList!7011 lt!1956934)) lambda!232575))))

(assert (= (and d!1537682 (not res!2042506)) b!4802006))

(assert (= (and b!4802006 res!2042507) b!4802007))

(declare-fun b_lambda!187713 () Bool)

(assert (=> (not b_lambda!187713) (not b!4802006)))

(declare-fun m!5786284 () Bool)

(assert (=> b!4802006 m!5786284))

(declare-fun m!5786286 () Bool)

(assert (=> b!4802007 m!5786286))

(assert (=> d!1537554 d!1537682))

(declare-fun d!1537684 () Bool)

(declare-fun lt!1957105 () Bool)

(declare-fun content!9752 (List!54459) (InoxSet K!15904))

(assert (=> d!1537684 (= lt!1957105 (select (content!9752 (keys!19867 (extractMap!2493 (toList!7011 lt!1956934)))) key!5896))))

(declare-fun e!2998763 () Bool)

(assert (=> d!1537684 (= lt!1957105 e!2998763)))

(declare-fun res!2042512 () Bool)

(assert (=> d!1537684 (=> (not res!2042512) (not e!2998763))))

(assert (=> d!1537684 (= res!2042512 ((_ is Cons!54335) (keys!19867 (extractMap!2493 (toList!7011 lt!1956934)))))))

(assert (=> d!1537684 (= (contains!17990 (keys!19867 (extractMap!2493 (toList!7011 lt!1956934))) key!5896) lt!1957105)))

(declare-fun b!4802012 () Bool)

(declare-fun e!2998764 () Bool)

(assert (=> b!4802012 (= e!2998763 e!2998764)))

(declare-fun res!2042513 () Bool)

(assert (=> b!4802012 (=> res!2042513 e!2998764)))

(assert (=> b!4802012 (= res!2042513 (= (h!60767 (keys!19867 (extractMap!2493 (toList!7011 lt!1956934)))) key!5896))))

(declare-fun b!4802013 () Bool)

(assert (=> b!4802013 (= e!2998764 (contains!17990 (t!361909 (keys!19867 (extractMap!2493 (toList!7011 lt!1956934)))) key!5896))))

(assert (= (and d!1537684 res!2042512) b!4802012))

(assert (= (and b!4802012 (not res!2042513)) b!4802013))

(assert (=> d!1537684 m!5785874))

(declare-fun m!5786288 () Bool)

(assert (=> d!1537684 m!5786288))

(declare-fun m!5786290 () Bool)

(assert (=> d!1537684 m!5786290))

(declare-fun m!5786292 () Bool)

(assert (=> b!4802013 m!5786292))

(assert (=> b!4801735 d!1537684))

(declare-fun b!4802033 () Bool)

(assert (=> b!4802033 true))

(declare-fun d!1537686 () Bool)

(declare-fun e!2998773 () Bool)

(assert (=> d!1537686 e!2998773))

(declare-fun res!2042520 () Bool)

(assert (=> d!1537686 (=> (not res!2042520) (not e!2998773))))

(declare-fun lt!1957122 () List!54459)

(declare-fun noDuplicate!937 (List!54459) Bool)

(assert (=> d!1537686 (= res!2042520 (noDuplicate!937 lt!1957122))))

(assert (=> d!1537686 (= lt!1957122 (getKeysList!1102 (toList!7012 (extractMap!2493 (toList!7011 lt!1956934)))))))

(assert (=> d!1537686 (= (keys!19867 (extractMap!2493 (toList!7011 lt!1956934))) lt!1957122)))

(declare-fun b!4802032 () Bool)

(declare-fun res!2042521 () Bool)

(assert (=> b!4802032 (=> (not res!2042521) (not e!2998773))))

(declare-fun length!730 (List!54459) Int)

(declare-fun length!731 (List!54456) Int)

(assert (=> b!4802032 (= res!2042521 (= (length!730 lt!1957122) (length!731 (toList!7012 (extractMap!2493 (toList!7011 lt!1956934))))))))

(declare-fun res!2042522 () Bool)

(assert (=> b!4802033 (=> (not res!2042522) (not e!2998773))))

(declare-fun lambda!232600 () Int)

(declare-fun forall!12339 (List!54459 Int) Bool)

(assert (=> b!4802033 (= res!2042522 (forall!12339 lt!1957122 lambda!232600))))

(declare-fun lambda!232603 () Int)

(declare-fun b!4802034 () Bool)

(declare-fun map!12281 (List!54456 Int) List!54459)

(assert (=> b!4802034 (= e!2998773 (= (content!9752 lt!1957122) (content!9752 (map!12281 (toList!7012 (extractMap!2493 (toList!7011 lt!1956934))) lambda!232603))))))

(assert (= (and d!1537686 res!2042520) b!4802032))

(assert (= (and b!4802032 res!2042521) b!4802033))

(assert (= (and b!4802033 res!2042522) b!4802034))

(declare-fun m!5786294 () Bool)

(assert (=> d!1537686 m!5786294))

(assert (=> d!1537686 m!5785884))

(declare-fun m!5786296 () Bool)

(assert (=> b!4802032 m!5786296))

(declare-fun m!5786298 () Bool)

(assert (=> b!4802032 m!5786298))

(declare-fun m!5786300 () Bool)

(assert (=> b!4802033 m!5786300))

(declare-fun m!5786302 () Bool)

(assert (=> b!4802034 m!5786302))

(declare-fun m!5786304 () Bool)

(assert (=> b!4802034 m!5786304))

(assert (=> b!4802034 m!5786304))

(declare-fun m!5786306 () Bool)

(assert (=> b!4802034 m!5786306))

(assert (=> b!4801735 d!1537686))

(declare-fun d!1537688 () Bool)

(assert (=> d!1537688 (= (isDefined!10331 lt!1957053) (not (isEmpty!29509 lt!1957053)))))

(declare-fun bs!1157871 () Bool)

(assert (= bs!1157871 d!1537688))

(assert (=> bs!1157871 m!5786054))

(assert (=> b!4801848 d!1537688))

(declare-fun d!1537690 () Bool)

(assert (=> d!1537690 (= (tail!9334 (toList!7011 lm!2473)) (t!361907 (toList!7011 lm!2473)))))

(assert (=> d!1537576 d!1537690))

(declare-fun d!1537692 () Bool)

(assert (=> d!1537692 (= (isDefined!10331 (getPair!938 (apply!13039 lt!1956934 (hash!5024 hashF!1559 key!5896)) key!5896)) (not (isEmpty!29509 (getPair!938 (apply!13039 lt!1956934 (hash!5024 hashF!1559 key!5896)) key!5896))))))

(declare-fun bs!1157872 () Bool)

(assert (= bs!1157872 d!1537692))

(assert (=> bs!1157872 m!5786020))

(declare-fun m!5786308 () Bool)

(assert (=> bs!1157872 m!5786308))

(assert (=> b!4801809 d!1537692))

(declare-fun b!4802043 () Bool)

(declare-fun res!2042530 () Bool)

(declare-fun e!2998777 () Bool)

(assert (=> b!4802043 (=> (not res!2042530) (not e!2998777))))

(declare-fun lt!1957123 () Option!13190)

(assert (=> b!4802043 (= res!2042530 (= (_1!31810 (get!18555 lt!1957123)) key!5896))))

(declare-fun b!4802044 () Bool)

(declare-fun e!2998780 () Option!13190)

(assert (=> b!4802044 (= e!2998780 None!13189)))

(declare-fun b!4802045 () Bool)

(declare-fun e!2998779 () Bool)

(assert (=> b!4802045 (= e!2998779 e!2998777)))

(declare-fun res!2042529 () Bool)

(assert (=> b!4802045 (=> (not res!2042529) (not e!2998777))))

(assert (=> b!4802045 (= res!2042529 (isDefined!10331 lt!1957123))))

(declare-fun b!4802046 () Bool)

(declare-fun e!2998778 () Option!13190)

(assert (=> b!4802046 (= e!2998778 e!2998780)))

(declare-fun c!818512 () Bool)

(assert (=> b!4802046 (= c!818512 ((_ is Cons!54332) (apply!13039 lt!1956934 (hash!5024 hashF!1559 key!5896))))))

(declare-fun d!1537694 () Bool)

(assert (=> d!1537694 e!2998779))

(declare-fun res!2042532 () Bool)

(assert (=> d!1537694 (=> res!2042532 e!2998779)))

(declare-fun e!2998776 () Bool)

(assert (=> d!1537694 (= res!2042532 e!2998776)))

(declare-fun res!2042531 () Bool)

(assert (=> d!1537694 (=> (not res!2042531) (not e!2998776))))

(assert (=> d!1537694 (= res!2042531 (isEmpty!29509 lt!1957123))))

(assert (=> d!1537694 (= lt!1957123 e!2998778)))

(declare-fun c!818511 () Bool)

(assert (=> d!1537694 (= c!818511 (and ((_ is Cons!54332) (apply!13039 lt!1956934 (hash!5024 hashF!1559 key!5896))) (= (_1!31810 (h!60764 (apply!13039 lt!1956934 (hash!5024 hashF!1559 key!5896)))) key!5896)))))

(assert (=> d!1537694 (noDuplicateKeys!2364 (apply!13039 lt!1956934 (hash!5024 hashF!1559 key!5896)))))

(assert (=> d!1537694 (= (getPair!938 (apply!13039 lt!1956934 (hash!5024 hashF!1559 key!5896)) key!5896) lt!1957123)))

(declare-fun b!4802047 () Bool)

(assert (=> b!4802047 (= e!2998777 (contains!17991 (apply!13039 lt!1956934 (hash!5024 hashF!1559 key!5896)) (get!18555 lt!1957123)))))

(declare-fun b!4802048 () Bool)

(assert (=> b!4802048 (= e!2998776 (not (containsKey!4040 (apply!13039 lt!1956934 (hash!5024 hashF!1559 key!5896)) key!5896)))))

(declare-fun b!4802049 () Bool)

(assert (=> b!4802049 (= e!2998778 (Some!13189 (h!60764 (apply!13039 lt!1956934 (hash!5024 hashF!1559 key!5896)))))))

(declare-fun b!4802050 () Bool)

(assert (=> b!4802050 (= e!2998780 (getPair!938 (t!361906 (apply!13039 lt!1956934 (hash!5024 hashF!1559 key!5896))) key!5896))))

(assert (= (and d!1537694 c!818511) b!4802049))

(assert (= (and d!1537694 (not c!818511)) b!4802046))

(assert (= (and b!4802046 c!818512) b!4802050))

(assert (= (and b!4802046 (not c!818512)) b!4802044))

(assert (= (and d!1537694 res!2042531) b!4802048))

(assert (= (and d!1537694 (not res!2042532)) b!4802045))

(assert (= (and b!4802045 res!2042529) b!4802043))

(assert (= (and b!4802043 res!2042530) b!4802047))

(declare-fun m!5786310 () Bool)

(assert (=> d!1537694 m!5786310))

(assert (=> d!1537694 m!5786018))

(declare-fun m!5786312 () Bool)

(assert (=> d!1537694 m!5786312))

(declare-fun m!5786314 () Bool)

(assert (=> b!4802047 m!5786314))

(assert (=> b!4802047 m!5786018))

(assert (=> b!4802047 m!5786314))

(declare-fun m!5786316 () Bool)

(assert (=> b!4802047 m!5786316))

(assert (=> b!4802043 m!5786314))

(declare-fun m!5786318 () Bool)

(assert (=> b!4802045 m!5786318))

(declare-fun m!5786320 () Bool)

(assert (=> b!4802050 m!5786320))

(assert (=> b!4802048 m!5786018))

(declare-fun m!5786322 () Bool)

(assert (=> b!4802048 m!5786322))

(assert (=> b!4801809 d!1537694))

(declare-fun d!1537696 () Bool)

(assert (=> d!1537696 (= (apply!13039 lt!1956934 (hash!5024 hashF!1559 key!5896)) (get!18556 (getValueByKey!2403 (toList!7011 lt!1956934) (hash!5024 hashF!1559 key!5896))))))

(declare-fun bs!1157873 () Bool)

(assert (= bs!1157873 d!1537696))

(assert (=> bs!1157873 m!5785726))

(declare-fun m!5786324 () Bool)

(assert (=> bs!1157873 m!5786324))

(assert (=> bs!1157873 m!5786324))

(declare-fun m!5786326 () Bool)

(assert (=> bs!1157873 m!5786326))

(assert (=> b!4801809 d!1537696))

(assert (=> b!4801809 d!1537600))

(declare-fun d!1537698 () Bool)

(declare-fun res!2042537 () Bool)

(declare-fun e!2998785 () Bool)

(assert (=> d!1537698 (=> res!2042537 e!2998785)))

(assert (=> d!1537698 (= res!2042537 (or ((_ is Nil!54333) (toList!7011 lm!2473)) ((_ is Nil!54333) (t!361907 (toList!7011 lm!2473)))))))

(assert (=> d!1537698 (= (isStrictlySorted!902 (toList!7011 lm!2473)) e!2998785)))

(declare-fun b!4802055 () Bool)

(declare-fun e!2998786 () Bool)

(assert (=> b!4802055 (= e!2998785 e!2998786)))

(declare-fun res!2042538 () Bool)

(assert (=> b!4802055 (=> (not res!2042538) (not e!2998786))))

(assert (=> b!4802055 (= res!2042538 (bvslt (_1!31811 (h!60765 (toList!7011 lm!2473))) (_1!31811 (h!60765 (t!361907 (toList!7011 lm!2473))))))))

(declare-fun b!4802056 () Bool)

(assert (=> b!4802056 (= e!2998786 (isStrictlySorted!902 (t!361907 (toList!7011 lm!2473))))))

(assert (= (and d!1537698 (not res!2042537)) b!4802055))

(assert (= (and b!4802055 res!2042538) b!4802056))

(declare-fun m!5786328 () Bool)

(assert (=> b!4802056 m!5786328))

(assert (=> d!1537566 d!1537698))

(declare-fun d!1537700 () Bool)

(declare-fun e!2998791 () Bool)

(assert (=> d!1537700 e!2998791))

(declare-fun res!2042542 () Bool)

(assert (=> d!1537700 (=> res!2042542 e!2998791)))

(declare-fun lt!1957133 () Bool)

(assert (=> d!1537700 (= res!2042542 (not lt!1957133))))

(declare-fun lt!1957134 () Bool)

(assert (=> d!1537700 (= lt!1957133 lt!1957134)))

(declare-fun lt!1957132 () Unit!140777)

(declare-fun e!2998792 () Unit!140777)

(assert (=> d!1537700 (= lt!1957132 e!2998792)))

(declare-fun c!818516 () Bool)

(assert (=> d!1537700 (= c!818516 lt!1957134)))

(assert (=> d!1537700 (= lt!1957134 (containsKey!4044 (toList!7011 lm!2473) (hash!5024 hashF!1559 key!5896)))))

(assert (=> d!1537700 (= (contains!17986 lm!2473 (hash!5024 hashF!1559 key!5896)) lt!1957133)))

(declare-fun b!4802066 () Bool)

(declare-fun lt!1957131 () Unit!140777)

(assert (=> b!4802066 (= e!2998792 lt!1957131)))

(assert (=> b!4802066 (= lt!1957131 (lemmaContainsKeyImpliesGetValueByKeyDefined!2194 (toList!7011 lm!2473) (hash!5024 hashF!1559 key!5896)))))

(assert (=> b!4802066 (isDefined!10335 (getValueByKey!2403 (toList!7011 lm!2473) (hash!5024 hashF!1559 key!5896)))))

(declare-fun b!4802067 () Bool)

(declare-fun Unit!140792 () Unit!140777)

(assert (=> b!4802067 (= e!2998792 Unit!140792)))

(declare-fun b!4802068 () Bool)

(assert (=> b!4802068 (= e!2998791 (isDefined!10335 (getValueByKey!2403 (toList!7011 lm!2473) (hash!5024 hashF!1559 key!5896))))))

(assert (= (and d!1537700 c!818516) b!4802066))

(assert (= (and d!1537700 (not c!818516)) b!4802067))

(assert (= (and d!1537700 (not res!2042542)) b!4802068))

(assert (=> d!1537700 m!5785726))

(declare-fun m!5786330 () Bool)

(assert (=> d!1537700 m!5786330))

(assert (=> b!4802066 m!5785726))

(declare-fun m!5786332 () Bool)

(assert (=> b!4802066 m!5786332))

(assert (=> b!4802066 m!5785726))

(declare-fun m!5786334 () Bool)

(assert (=> b!4802066 m!5786334))

(assert (=> b!4802066 m!5786334))

(declare-fun m!5786336 () Bool)

(assert (=> b!4802066 m!5786336))

(assert (=> b!4802068 m!5785726))

(assert (=> b!4802068 m!5786334))

(assert (=> b!4802068 m!5786334))

(assert (=> b!4802068 m!5786336))

(assert (=> d!1537596 d!1537700))

(assert (=> d!1537596 d!1537600))

(declare-fun d!1537702 () Bool)

(declare-fun e!2998795 () Bool)

(assert (=> d!1537702 e!2998795))

(declare-fun res!2042545 () Bool)

(assert (=> d!1537702 (=> (not res!2042545) (not e!2998795))))

(assert (=> d!1537702 (= res!2042545 (contains!17986 lm!2473 (hash!5024 hashF!1559 key!5896)))))

(assert (=> d!1537702 true))

(declare-fun _$5!265 () Unit!140777)

(assert (=> d!1537702 (= (choose!34709 lm!2473 key!5896 hashF!1559) _$5!265)))

(declare-fun b!4802073 () Bool)

(assert (=> b!4802073 (= e!2998795 (isDefined!10331 (getPair!938 (apply!13039 lm!2473 (hash!5024 hashF!1559 key!5896)) key!5896)))))

(assert (= (and d!1537702 res!2042545) b!4802073))

(assert (=> d!1537702 m!5785726))

(assert (=> d!1537702 m!5785726))

(assert (=> d!1537702 m!5786130))

(assert (=> b!4802073 m!5785726))

(assert (=> b!4802073 m!5785726))

(assert (=> b!4802073 m!5786136))

(assert (=> b!4802073 m!5786136))

(assert (=> b!4802073 m!5786138))

(assert (=> b!4802073 m!5786138))

(assert (=> b!4802073 m!5786140))

(assert (=> d!1537596 d!1537702))

(declare-fun d!1537706 () Bool)

(declare-fun res!2042546 () Bool)

(declare-fun e!2998796 () Bool)

(assert (=> d!1537706 (=> res!2042546 e!2998796)))

(assert (=> d!1537706 (= res!2042546 ((_ is Nil!54333) (toList!7011 lm!2473)))))

(assert (=> d!1537706 (= (forall!12337 (toList!7011 lm!2473) lambda!232585) e!2998796)))

(declare-fun b!4802074 () Bool)

(declare-fun e!2998797 () Bool)

(assert (=> b!4802074 (= e!2998796 e!2998797)))

(declare-fun res!2042547 () Bool)

(assert (=> b!4802074 (=> (not res!2042547) (not e!2998797))))

(assert (=> b!4802074 (= res!2042547 (dynLambda!22095 lambda!232585 (h!60765 (toList!7011 lm!2473))))))

(declare-fun b!4802075 () Bool)

(assert (=> b!4802075 (= e!2998797 (forall!12337 (t!361907 (toList!7011 lm!2473)) lambda!232585))))

(assert (= (and d!1537706 (not res!2042546)) b!4802074))

(assert (= (and b!4802074 res!2042547) b!4802075))

(declare-fun b_lambda!187715 () Bool)

(assert (=> (not b_lambda!187715) (not b!4802074)))

(declare-fun m!5786364 () Bool)

(assert (=> b!4802074 m!5786364))

(declare-fun m!5786366 () Bool)

(assert (=> b!4802075 m!5786366))

(assert (=> d!1537596 d!1537706))

(declare-fun d!1537708 () Bool)

(declare-fun res!2042548 () Bool)

(declare-fun e!2998798 () Bool)

(assert (=> d!1537708 (=> res!2042548 e!2998798)))

(assert (=> d!1537708 (= res!2042548 ((_ is Nil!54333) (t!361907 (toList!7011 lt!1956934))))))

(assert (=> d!1537708 (= (forall!12337 (t!361907 (toList!7011 lt!1956934)) lambda!232541) e!2998798)))

(declare-fun b!4802076 () Bool)

(declare-fun e!2998799 () Bool)

(assert (=> b!4802076 (= e!2998798 e!2998799)))

(declare-fun res!2042549 () Bool)

(assert (=> b!4802076 (=> (not res!2042549) (not e!2998799))))

(assert (=> b!4802076 (= res!2042549 (dynLambda!22095 lambda!232541 (h!60765 (t!361907 (toList!7011 lt!1956934)))))))

(declare-fun b!4802077 () Bool)

(assert (=> b!4802077 (= e!2998799 (forall!12337 (t!361907 (t!361907 (toList!7011 lt!1956934))) lambda!232541))))

(assert (= (and d!1537708 (not res!2042548)) b!4802076))

(assert (= (and b!4802076 res!2042549) b!4802077))

(declare-fun b_lambda!187717 () Bool)

(assert (=> (not b_lambda!187717) (not b!4802076)))

(declare-fun m!5786368 () Bool)

(assert (=> b!4802076 m!5786368))

(declare-fun m!5786370 () Bool)

(assert (=> b!4802077 m!5786370))

(assert (=> b!4801864 d!1537708))

(declare-fun d!1537710 () Bool)

(assert (=> d!1537710 (isDefined!10334 (getValueByKey!2402 (toList!7012 (extractMap!2493 (toList!7011 lt!1956934))) key!5896))))

(declare-fun lt!1957140 () Unit!140777)

(declare-fun choose!34712 (List!54456 K!15904) Unit!140777)

(assert (=> d!1537710 (= lt!1957140 (choose!34712 (toList!7012 (extractMap!2493 (toList!7011 lt!1956934))) key!5896))))

(assert (=> d!1537710 (invariantList!1756 (toList!7012 (extractMap!2493 (toList!7011 lt!1956934))))))

(assert (=> d!1537710 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2193 (toList!7012 (extractMap!2493 (toList!7011 lt!1956934))) key!5896) lt!1957140)))

(declare-fun bs!1157887 () Bool)

(assert (= bs!1157887 d!1537710))

(assert (=> bs!1157887 m!5785878))

(assert (=> bs!1157887 m!5785878))

(assert (=> bs!1157887 m!5785880))

(declare-fun m!5786380 () Bool)

(assert (=> bs!1157887 m!5786380))

(declare-fun m!5786382 () Bool)

(assert (=> bs!1157887 m!5786382))

(assert (=> b!4801739 d!1537710))

(declare-fun d!1537718 () Bool)

(declare-fun isEmpty!29512 (Option!13193) Bool)

(assert (=> d!1537718 (= (isDefined!10334 (getValueByKey!2402 (toList!7012 (extractMap!2493 (toList!7011 lt!1956934))) key!5896)) (not (isEmpty!29512 (getValueByKey!2402 (toList!7012 (extractMap!2493 (toList!7011 lt!1956934))) key!5896))))))

(declare-fun bs!1157888 () Bool)

(assert (= bs!1157888 d!1537718))

(assert (=> bs!1157888 m!5785878))

(declare-fun m!5786384 () Bool)

(assert (=> bs!1157888 m!5786384))

(assert (=> b!4801739 d!1537718))

(declare-fun d!1537720 () Bool)

(declare-fun c!818524 () Bool)

(assert (=> d!1537720 (= c!818524 (and ((_ is Cons!54332) (toList!7012 (extractMap!2493 (toList!7011 lt!1956934)))) (= (_1!31810 (h!60764 (toList!7012 (extractMap!2493 (toList!7011 lt!1956934))))) key!5896)))))

(declare-fun e!2998808 () Option!13193)

(assert (=> d!1537720 (= (getValueByKey!2402 (toList!7012 (extractMap!2493 (toList!7011 lt!1956934))) key!5896) e!2998808)))

(declare-fun b!4802094 () Bool)

(declare-fun e!2998809 () Option!13193)

(assert (=> b!4802094 (= e!2998808 e!2998809)))

(declare-fun c!818525 () Bool)

(assert (=> b!4802094 (= c!818525 (and ((_ is Cons!54332) (toList!7012 (extractMap!2493 (toList!7011 lt!1956934)))) (not (= (_1!31810 (h!60764 (toList!7012 (extractMap!2493 (toList!7011 lt!1956934))))) key!5896))))))

(declare-fun b!4802093 () Bool)

(assert (=> b!4802093 (= e!2998808 (Some!13192 (_2!31810 (h!60764 (toList!7012 (extractMap!2493 (toList!7011 lt!1956934)))))))))

(declare-fun b!4802095 () Bool)

(assert (=> b!4802095 (= e!2998809 (getValueByKey!2402 (t!361906 (toList!7012 (extractMap!2493 (toList!7011 lt!1956934)))) key!5896))))

(declare-fun b!4802096 () Bool)

(assert (=> b!4802096 (= e!2998809 None!13192)))

(assert (= (and d!1537720 c!818524) b!4802093))

(assert (= (and d!1537720 (not c!818524)) b!4802094))

(assert (= (and b!4802094 c!818525) b!4802095))

(assert (= (and b!4802094 (not c!818525)) b!4802096))

(declare-fun m!5786398 () Bool)

(assert (=> b!4802095 m!5786398))

(assert (=> b!4801739 d!1537720))

(declare-fun d!1537726 () Bool)

(assert (=> d!1537726 (contains!17990 (getKeysList!1102 (toList!7012 (extractMap!2493 (toList!7011 lt!1956934)))) key!5896)))

(declare-fun lt!1957150 () Unit!140777)

(declare-fun choose!34713 (List!54456 K!15904) Unit!140777)

(assert (=> d!1537726 (= lt!1957150 (choose!34713 (toList!7012 (extractMap!2493 (toList!7011 lt!1956934))) key!5896))))

(assert (=> d!1537726 (invariantList!1756 (toList!7012 (extractMap!2493 (toList!7011 lt!1956934))))))

(assert (=> d!1537726 (= (lemmaInListThenGetKeysListContains!1097 (toList!7012 (extractMap!2493 (toList!7011 lt!1956934))) key!5896) lt!1957150)))

(declare-fun bs!1157890 () Bool)

(assert (= bs!1157890 d!1537726))

(assert (=> bs!1157890 m!5785884))

(assert (=> bs!1157890 m!5785884))

(declare-fun m!5786404 () Bool)

(assert (=> bs!1157890 m!5786404))

(declare-fun m!5786406 () Bool)

(assert (=> bs!1157890 m!5786406))

(assert (=> bs!1157890 m!5786382))

(assert (=> b!4801739 d!1537726))

(declare-fun d!1537732 () Bool)

(assert (=> d!1537732 (= (isEmpty!29509 lt!1957053) (not ((_ is Some!13189) lt!1957053)))))

(assert (=> d!1537572 d!1537732))

(declare-fun d!1537736 () Bool)

(declare-fun res!2042561 () Bool)

(declare-fun e!2998820 () Bool)

(assert (=> d!1537736 (=> res!2042561 e!2998820)))

(assert (=> d!1537736 (= res!2042561 (not ((_ is Cons!54332) (apply!13039 lt!1956934 lt!1956940))))))

(assert (=> d!1537736 (= (noDuplicateKeys!2364 (apply!13039 lt!1956934 lt!1956940)) e!2998820)))

(declare-fun b!4802107 () Bool)

(declare-fun e!2998821 () Bool)

(assert (=> b!4802107 (= e!2998820 e!2998821)))

(declare-fun res!2042562 () Bool)

(assert (=> b!4802107 (=> (not res!2042562) (not e!2998821))))

(assert (=> b!4802107 (= res!2042562 (not (containsKey!4040 (t!361906 (apply!13039 lt!1956934 lt!1956940)) (_1!31810 (h!60764 (apply!13039 lt!1956934 lt!1956940))))))))

(declare-fun b!4802108 () Bool)

(assert (=> b!4802108 (= e!2998821 (noDuplicateKeys!2364 (t!361906 (apply!13039 lt!1956934 lt!1956940))))))

(assert (= (and d!1537736 (not res!2042561)) b!4802107))

(assert (= (and b!4802107 res!2042562) b!4802108))

(declare-fun m!5786414 () Bool)

(assert (=> b!4802107 m!5786414))

(declare-fun m!5786416 () Bool)

(assert (=> b!4802108 m!5786416))

(assert (=> d!1537572 d!1537736))

(declare-fun d!1537740 () Bool)

(declare-fun res!2042573 () Bool)

(declare-fun e!2998832 () Bool)

(assert (=> d!1537740 (=> res!2042573 e!2998832)))

(assert (=> d!1537740 (= res!2042573 (and ((_ is Cons!54332) (toList!7012 (extractMap!2493 (toList!7011 lt!1956934)))) (= (_1!31810 (h!60764 (toList!7012 (extractMap!2493 (toList!7011 lt!1956934))))) key!5896)))))

(assert (=> d!1537740 (= (containsKey!4043 (toList!7012 (extractMap!2493 (toList!7011 lt!1956934))) key!5896) e!2998832)))

(declare-fun b!4802119 () Bool)

(declare-fun e!2998833 () Bool)

(assert (=> b!4802119 (= e!2998832 e!2998833)))

(declare-fun res!2042574 () Bool)

(assert (=> b!4802119 (=> (not res!2042574) (not e!2998833))))

(assert (=> b!4802119 (= res!2042574 ((_ is Cons!54332) (toList!7012 (extractMap!2493 (toList!7011 lt!1956934)))))))

(declare-fun b!4802120 () Bool)

(assert (=> b!4802120 (= e!2998833 (containsKey!4043 (t!361906 (toList!7012 (extractMap!2493 (toList!7011 lt!1956934)))) key!5896))))

(assert (= (and d!1537740 (not res!2042573)) b!4802119))

(assert (= (and b!4802119 res!2042574) b!4802120))

(declare-fun m!5786420 () Bool)

(assert (=> b!4802120 m!5786420))

(assert (=> b!4801740 d!1537740))

(declare-fun d!1537744 () Bool)

(assert (=> d!1537744 (containsKey!4043 (toList!7012 (extractMap!2493 (toList!7011 lt!1956934))) key!5896)))

(declare-fun lt!1957156 () Unit!140777)

(declare-fun choose!34714 (List!54456 K!15904) Unit!140777)

(assert (=> d!1537744 (= lt!1957156 (choose!34714 (toList!7012 (extractMap!2493 (toList!7011 lt!1956934))) key!5896))))

(assert (=> d!1537744 (invariantList!1756 (toList!7012 (extractMap!2493 (toList!7011 lt!1956934))))))

(assert (=> d!1537744 (= (lemmaInGetKeysListThenContainsKey!1102 (toList!7012 (extractMap!2493 (toList!7011 lt!1956934))) key!5896) lt!1957156)))

(declare-fun bs!1157892 () Bool)

(assert (= bs!1157892 d!1537744))

(assert (=> bs!1157892 m!5785882))

(declare-fun m!5786424 () Bool)

(assert (=> bs!1157892 m!5786424))

(assert (=> bs!1157892 m!5786382))

(assert (=> b!4801740 d!1537744))

(declare-fun b!4802194 () Bool)

(assert (=> b!4802194 true))

(declare-fun bs!1157902 () Bool)

(declare-fun b!4802195 () Bool)

(assert (= bs!1157902 (and b!4802195 b!4802194)))

(declare-fun lambda!232641 () Int)

(declare-fun lambda!232640 () Int)

(assert (=> bs!1157902 (= lambda!232641 lambda!232640)))

(assert (=> b!4802195 true))

(declare-fun lambda!232642 () Int)

(declare-fun lt!1957221 () ListMap!6483)

(assert (=> bs!1157902 (= (= lt!1957221 (extractMap!2493 (t!361907 (toList!7011 lt!1956934)))) (= lambda!232642 lambda!232640))))

(assert (=> b!4802195 (= (= lt!1957221 (extractMap!2493 (t!361907 (toList!7011 lt!1956934)))) (= lambda!232642 lambda!232641))))

(assert (=> b!4802195 true))

(declare-fun bs!1157903 () Bool)

(declare-fun d!1537748 () Bool)

(assert (= bs!1157903 (and d!1537748 b!4802194)))

(declare-fun lt!1957212 () ListMap!6483)

(declare-fun lambda!232643 () Int)

(assert (=> bs!1157903 (= (= lt!1957212 (extractMap!2493 (t!361907 (toList!7011 lt!1956934)))) (= lambda!232643 lambda!232640))))

(declare-fun bs!1157904 () Bool)

(assert (= bs!1157904 (and d!1537748 b!4802195)))

(assert (=> bs!1157904 (= (= lt!1957212 (extractMap!2493 (t!361907 (toList!7011 lt!1956934)))) (= lambda!232643 lambda!232641))))

(assert (=> bs!1157904 (= (= lt!1957212 lt!1957221) (= lambda!232643 lambda!232642))))

(assert (=> d!1537748 true))

(declare-fun e!2998890 () Bool)

(assert (=> d!1537748 e!2998890))

(declare-fun res!2042624 () Bool)

(assert (=> d!1537748 (=> (not res!2042624) (not e!2998890))))

(declare-fun forall!12340 (List!54456 Int) Bool)

(assert (=> d!1537748 (= res!2042624 (forall!12340 (_2!31811 (h!60765 (toList!7011 lt!1956934))) lambda!232643))))

(declare-fun e!2998891 () ListMap!6483)

(assert (=> d!1537748 (= lt!1957212 e!2998891)))

(declare-fun c!818538 () Bool)

(assert (=> d!1537748 (= c!818538 ((_ is Nil!54332) (_2!31811 (h!60765 (toList!7011 lt!1956934)))))))

(assert (=> d!1537748 (noDuplicateKeys!2364 (_2!31811 (h!60765 (toList!7011 lt!1956934))))))

(assert (=> d!1537748 (= (addToMapMapFromBucket!1733 (_2!31811 (h!60765 (toList!7011 lt!1956934))) (extractMap!2493 (t!361907 (toList!7011 lt!1956934)))) lt!1957212)))

(assert (=> b!4802194 (= e!2998891 (extractMap!2493 (t!361907 (toList!7011 lt!1956934))))))

(declare-fun lt!1957209 () Unit!140777)

(declare-fun call!335412 () Unit!140777)

(assert (=> b!4802194 (= lt!1957209 call!335412)))

(declare-fun call!335411 () Bool)

(assert (=> b!4802194 call!335411))

(declare-fun lt!1957226 () Unit!140777)

(assert (=> b!4802194 (= lt!1957226 lt!1957209)))

(declare-fun call!335413 () Bool)

(assert (=> b!4802194 call!335413))

(declare-fun lt!1957215 () Unit!140777)

(declare-fun Unit!140793 () Unit!140777)

(assert (=> b!4802194 (= lt!1957215 Unit!140793)))

(assert (=> b!4802195 (= e!2998891 lt!1957221)))

(declare-fun lt!1957220 () ListMap!6483)

(declare-fun +!2506 (ListMap!6483 tuple2!57032) ListMap!6483)

(assert (=> b!4802195 (= lt!1957220 (+!2506 (extractMap!2493 (t!361907 (toList!7011 lt!1956934))) (h!60764 (_2!31811 (h!60765 (toList!7011 lt!1956934))))))))

(assert (=> b!4802195 (= lt!1957221 (addToMapMapFromBucket!1733 (t!361906 (_2!31811 (h!60765 (toList!7011 lt!1956934)))) (+!2506 (extractMap!2493 (t!361907 (toList!7011 lt!1956934))) (h!60764 (_2!31811 (h!60765 (toList!7011 lt!1956934)))))))))

(declare-fun lt!1957214 () Unit!140777)

(assert (=> b!4802195 (= lt!1957214 call!335412)))

(assert (=> b!4802195 (forall!12340 (toList!7012 (extractMap!2493 (t!361907 (toList!7011 lt!1956934)))) lambda!232641)))

(declare-fun lt!1957218 () Unit!140777)

(assert (=> b!4802195 (= lt!1957218 lt!1957214)))

(assert (=> b!4802195 call!335413))

(declare-fun lt!1957210 () Unit!140777)

(declare-fun Unit!140794 () Unit!140777)

(assert (=> b!4802195 (= lt!1957210 Unit!140794)))

(assert (=> b!4802195 (forall!12340 (t!361906 (_2!31811 (h!60765 (toList!7011 lt!1956934)))) lambda!232642)))

(declare-fun lt!1957223 () Unit!140777)

(declare-fun Unit!140795 () Unit!140777)

(assert (=> b!4802195 (= lt!1957223 Unit!140795)))

(declare-fun lt!1957219 () Unit!140777)

(declare-fun Unit!140796 () Unit!140777)

(assert (=> b!4802195 (= lt!1957219 Unit!140796)))

(declare-fun lt!1957227 () Unit!140777)

(declare-fun forallContained!4216 (List!54456 Int tuple2!57032) Unit!140777)

(assert (=> b!4802195 (= lt!1957227 (forallContained!4216 (toList!7012 lt!1957220) lambda!232642 (h!60764 (_2!31811 (h!60765 (toList!7011 lt!1956934))))))))

(assert (=> b!4802195 (contains!17987 lt!1957220 (_1!31810 (h!60764 (_2!31811 (h!60765 (toList!7011 lt!1956934))))))))

(declare-fun lt!1957211 () Unit!140777)

(declare-fun Unit!140798 () Unit!140777)

(assert (=> b!4802195 (= lt!1957211 Unit!140798)))

(assert (=> b!4802195 (contains!17987 lt!1957221 (_1!31810 (h!60764 (_2!31811 (h!60765 (toList!7011 lt!1956934))))))))

(declare-fun lt!1957224 () Unit!140777)

(declare-fun Unit!140799 () Unit!140777)

(assert (=> b!4802195 (= lt!1957224 Unit!140799)))

(assert (=> b!4802195 (forall!12340 (_2!31811 (h!60765 (toList!7011 lt!1956934))) lambda!232642)))

(declare-fun lt!1957216 () Unit!140777)

(declare-fun Unit!140800 () Unit!140777)

(assert (=> b!4802195 (= lt!1957216 Unit!140800)))

(assert (=> b!4802195 (forall!12340 (toList!7012 lt!1957220) lambda!232642)))

(declare-fun lt!1957222 () Unit!140777)

(declare-fun Unit!140801 () Unit!140777)

(assert (=> b!4802195 (= lt!1957222 Unit!140801)))

(declare-fun lt!1957229 () Unit!140777)

(declare-fun Unit!140803 () Unit!140777)

(assert (=> b!4802195 (= lt!1957229 Unit!140803)))

(declare-fun lt!1957217 () Unit!140777)

(declare-fun addForallContainsKeyThenBeforeAdding!961 (ListMap!6483 ListMap!6483 K!15904 V!16150) Unit!140777)

(assert (=> b!4802195 (= lt!1957217 (addForallContainsKeyThenBeforeAdding!961 (extractMap!2493 (t!361907 (toList!7011 lt!1956934))) lt!1957221 (_1!31810 (h!60764 (_2!31811 (h!60765 (toList!7011 lt!1956934))))) (_2!31810 (h!60764 (_2!31811 (h!60765 (toList!7011 lt!1956934)))))))))

(assert (=> b!4802195 call!335411))

(declare-fun lt!1957213 () Unit!140777)

(assert (=> b!4802195 (= lt!1957213 lt!1957217)))

(assert (=> b!4802195 (forall!12340 (toList!7012 (extractMap!2493 (t!361907 (toList!7011 lt!1956934)))) lambda!232642)))

(declare-fun lt!1957228 () Unit!140777)

(declare-fun Unit!140804 () Unit!140777)

(assert (=> b!4802195 (= lt!1957228 Unit!140804)))

(declare-fun res!2042625 () Bool)

(assert (=> b!4802195 (= res!2042625 (forall!12340 (_2!31811 (h!60765 (toList!7011 lt!1956934))) lambda!232642))))

(declare-fun e!2998892 () Bool)

(assert (=> b!4802195 (=> (not res!2042625) (not e!2998892))))

(assert (=> b!4802195 e!2998892))

(declare-fun lt!1957225 () Unit!140777)

(declare-fun Unit!140807 () Unit!140777)

(assert (=> b!4802195 (= lt!1957225 Unit!140807)))

(declare-fun b!4802196 () Bool)

(assert (=> b!4802196 (= e!2998890 (invariantList!1756 (toList!7012 lt!1957212)))))

(declare-fun bm!335406 () Bool)

(assert (=> bm!335406 (= call!335411 (forall!12340 (toList!7012 (extractMap!2493 (t!361907 (toList!7011 lt!1956934)))) (ite c!818538 lambda!232640 lambda!232642)))))

(declare-fun b!4802197 () Bool)

(declare-fun res!2042626 () Bool)

(assert (=> b!4802197 (=> (not res!2042626) (not e!2998890))))

(assert (=> b!4802197 (= res!2042626 (forall!12340 (toList!7012 (extractMap!2493 (t!361907 (toList!7011 lt!1956934)))) lambda!232643))))

(declare-fun bm!335407 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!962 (ListMap!6483) Unit!140777)

(assert (=> bm!335407 (= call!335412 (lemmaContainsAllItsOwnKeys!962 (extractMap!2493 (t!361907 (toList!7011 lt!1956934)))))))

(declare-fun bm!335408 () Bool)

(assert (=> bm!335408 (= call!335413 (forall!12340 (ite c!818538 (toList!7012 (extractMap!2493 (t!361907 (toList!7011 lt!1956934)))) (toList!7012 lt!1957220)) (ite c!818538 lambda!232640 lambda!232642)))))

(declare-fun b!4802198 () Bool)

(assert (=> b!4802198 (= e!2998892 (forall!12340 (toList!7012 (extractMap!2493 (t!361907 (toList!7011 lt!1956934)))) lambda!232642))))

(assert (= (and d!1537748 c!818538) b!4802194))

(assert (= (and d!1537748 (not c!818538)) b!4802195))

(assert (= (and b!4802195 res!2042625) b!4802198))

(assert (= (or b!4802194 b!4802195) bm!335406))

(assert (= (or b!4802194 b!4802195) bm!335408))

(assert (= (or b!4802194 b!4802195) bm!335407))

(assert (= (and d!1537748 res!2042624) b!4802197))

(assert (= (and b!4802197 res!2042626) b!4802196))

(declare-fun m!5786530 () Bool)

(assert (=> b!4802196 m!5786530))

(declare-fun m!5786532 () Bool)

(assert (=> b!4802198 m!5786532))

(declare-fun m!5786534 () Bool)

(assert (=> bm!335408 m!5786534))

(assert (=> bm!335407 m!5785994))

(declare-fun m!5786536 () Bool)

(assert (=> bm!335407 m!5786536))

(declare-fun m!5786538 () Bool)

(assert (=> bm!335406 m!5786538))

(assert (=> b!4802195 m!5785994))

(declare-fun m!5786540 () Bool)

(assert (=> b!4802195 m!5786540))

(declare-fun m!5786542 () Bool)

(assert (=> b!4802195 m!5786542))

(assert (=> b!4802195 m!5786532))

(declare-fun m!5786544 () Bool)

(assert (=> b!4802195 m!5786544))

(declare-fun m!5786546 () Bool)

(assert (=> b!4802195 m!5786546))

(declare-fun m!5786548 () Bool)

(assert (=> b!4802195 m!5786548))

(declare-fun m!5786550 () Bool)

(assert (=> b!4802195 m!5786550))

(assert (=> b!4802195 m!5786548))

(declare-fun m!5786552 () Bool)

(assert (=> b!4802195 m!5786552))

(declare-fun m!5786554 () Bool)

(assert (=> b!4802195 m!5786554))

(assert (=> b!4802195 m!5785994))

(assert (=> b!4802195 m!5786552))

(declare-fun m!5786556 () Bool)

(assert (=> b!4802195 m!5786556))

(declare-fun m!5786558 () Bool)

(assert (=> b!4802195 m!5786558))

(declare-fun m!5786560 () Bool)

(assert (=> d!1537748 m!5786560))

(assert (=> d!1537748 m!5786152))

(declare-fun m!5786562 () Bool)

(assert (=> b!4802197 m!5786562))

(assert (=> b!4801787 d!1537748))

(declare-fun bs!1157905 () Bool)

(declare-fun d!1537808 () Bool)

(assert (= bs!1157905 (and d!1537808 d!1537554)))

(declare-fun lambda!232644 () Int)

(assert (=> bs!1157905 (= lambda!232644 lambda!232575)))

(declare-fun bs!1157906 () Bool)

(assert (= bs!1157906 (and d!1537808 d!1537594)))

(assert (=> bs!1157906 (= lambda!232644 lambda!232584)))

(declare-fun bs!1157907 () Bool)

(assert (= bs!1157907 (and d!1537808 d!1537556)))

(assert (=> bs!1157907 (= lambda!232644 lambda!232578)))

(declare-fun bs!1157908 () Bool)

(assert (= bs!1157908 (and d!1537808 d!1537482)))

(assert (=> bs!1157908 (not (= lambda!232644 lambda!232544))))

(declare-fun bs!1157909 () Bool)

(assert (= bs!1157909 (and d!1537808 d!1537588)))

(assert (=> bs!1157909 (= lambda!232644 lambda!232583)))

(declare-fun bs!1157910 () Bool)

(assert (= bs!1157910 (and d!1537808 start!495642)))

(assert (=> bs!1157910 (= lambda!232644 lambda!232541)))

(declare-fun bs!1157911 () Bool)

(assert (= bs!1157911 (and d!1537808 d!1537584)))

(assert (=> bs!1157911 (not (= lambda!232644 lambda!232582))))

(declare-fun bs!1157912 () Bool)

(assert (= bs!1157912 (and d!1537808 d!1537514)))

(assert (=> bs!1157912 (= lambda!232644 lambda!232572)))

(declare-fun bs!1157913 () Bool)

(assert (= bs!1157913 (and d!1537808 d!1537490)))

(assert (=> bs!1157913 (= lambda!232644 lambda!232556)))

(declare-fun bs!1157914 () Bool)

(assert (= bs!1157914 (and d!1537808 d!1537582)))

(assert (=> bs!1157914 (= lambda!232644 lambda!232581)))

(declare-fun bs!1157915 () Bool)

(assert (= bs!1157915 (and d!1537808 d!1537596)))

(assert (=> bs!1157915 (= lambda!232644 lambda!232585)))

(declare-fun lt!1957230 () ListMap!6483)

(assert (=> d!1537808 (invariantList!1756 (toList!7012 lt!1957230))))

(declare-fun e!2998893 () ListMap!6483)

(assert (=> d!1537808 (= lt!1957230 e!2998893)))

(declare-fun c!818539 () Bool)

(assert (=> d!1537808 (= c!818539 ((_ is Cons!54333) (t!361907 (toList!7011 lt!1956934))))))

(assert (=> d!1537808 (forall!12337 (t!361907 (toList!7011 lt!1956934)) lambda!232644)))

(assert (=> d!1537808 (= (extractMap!2493 (t!361907 (toList!7011 lt!1956934))) lt!1957230)))

(declare-fun b!4802201 () Bool)

(assert (=> b!4802201 (= e!2998893 (addToMapMapFromBucket!1733 (_2!31811 (h!60765 (t!361907 (toList!7011 lt!1956934)))) (extractMap!2493 (t!361907 (t!361907 (toList!7011 lt!1956934))))))))

(declare-fun b!4802202 () Bool)

(assert (=> b!4802202 (= e!2998893 (ListMap!6484 Nil!54332))))

(assert (= (and d!1537808 c!818539) b!4802201))

(assert (= (and d!1537808 (not c!818539)) b!4802202))

(declare-fun m!5786564 () Bool)

(assert (=> d!1537808 m!5786564))

(declare-fun m!5786566 () Bool)

(assert (=> d!1537808 m!5786566))

(declare-fun m!5786568 () Bool)

(assert (=> b!4802201 m!5786568))

(assert (=> b!4802201 m!5786568))

(declare-fun m!5786570 () Bool)

(assert (=> b!4802201 m!5786570))

(assert (=> b!4801787 d!1537808))

(declare-fun d!1537810 () Bool)

(declare-fun lt!1957231 () Bool)

(assert (=> d!1537810 (= lt!1957231 (select (content!9752 (keys!19867 (extractMap!2493 (toList!7011 lm!2473)))) key!5896))))

(declare-fun e!2998894 () Bool)

(assert (=> d!1537810 (= lt!1957231 e!2998894)))

(declare-fun res!2042627 () Bool)

(assert (=> d!1537810 (=> (not res!2042627) (not e!2998894))))

(assert (=> d!1537810 (= res!2042627 ((_ is Cons!54335) (keys!19867 (extractMap!2493 (toList!7011 lm!2473)))))))

(assert (=> d!1537810 (= (contains!17990 (keys!19867 (extractMap!2493 (toList!7011 lm!2473))) key!5896) lt!1957231)))

(declare-fun b!4802203 () Bool)

(declare-fun e!2998895 () Bool)

(assert (=> b!4802203 (= e!2998894 e!2998895)))

(declare-fun res!2042628 () Bool)

(assert (=> b!4802203 (=> res!2042628 e!2998895)))

(assert (=> b!4802203 (= res!2042628 (= (h!60767 (keys!19867 (extractMap!2493 (toList!7011 lm!2473)))) key!5896))))

(declare-fun b!4802204 () Bool)

(assert (=> b!4802204 (= e!2998895 (contains!17990 (t!361909 (keys!19867 (extractMap!2493 (toList!7011 lm!2473)))) key!5896))))

(assert (= (and d!1537810 res!2042627) b!4802203))

(assert (= (and b!4802203 (not res!2042628)) b!4802204))

(assert (=> d!1537810 m!5786092))

(declare-fun m!5786572 () Bool)

(assert (=> d!1537810 m!5786572))

(declare-fun m!5786574 () Bool)

(assert (=> d!1537810 m!5786574))

(declare-fun m!5786576 () Bool)

(assert (=> b!4802204 m!5786576))

(assert (=> b!4801868 d!1537810))

(declare-fun bs!1157916 () Bool)

(declare-fun b!4802206 () Bool)

(assert (= bs!1157916 (and b!4802206 b!4802033)))

(declare-fun lambda!232645 () Int)

(assert (=> bs!1157916 (= (= (toList!7012 (extractMap!2493 (toList!7011 lm!2473))) (toList!7012 (extractMap!2493 (toList!7011 lt!1956934)))) (= lambda!232645 lambda!232600))))

(assert (=> b!4802206 true))

(declare-fun bs!1157917 () Bool)

(declare-fun b!4802207 () Bool)

(assert (= bs!1157917 (and b!4802207 b!4802034)))

(declare-fun lambda!232646 () Int)

(assert (=> bs!1157917 (= lambda!232646 lambda!232603)))

(declare-fun d!1537812 () Bool)

(declare-fun e!2998896 () Bool)

(assert (=> d!1537812 e!2998896))

(declare-fun res!2042629 () Bool)

(assert (=> d!1537812 (=> (not res!2042629) (not e!2998896))))

(declare-fun lt!1957232 () List!54459)

(assert (=> d!1537812 (= res!2042629 (noDuplicate!937 lt!1957232))))

(assert (=> d!1537812 (= lt!1957232 (getKeysList!1102 (toList!7012 (extractMap!2493 (toList!7011 lm!2473)))))))

(assert (=> d!1537812 (= (keys!19867 (extractMap!2493 (toList!7011 lm!2473))) lt!1957232)))

(declare-fun b!4802205 () Bool)

(declare-fun res!2042630 () Bool)

(assert (=> b!4802205 (=> (not res!2042630) (not e!2998896))))

(assert (=> b!4802205 (= res!2042630 (= (length!730 lt!1957232) (length!731 (toList!7012 (extractMap!2493 (toList!7011 lm!2473))))))))

(declare-fun res!2042631 () Bool)

(assert (=> b!4802206 (=> (not res!2042631) (not e!2998896))))

(assert (=> b!4802206 (= res!2042631 (forall!12339 lt!1957232 lambda!232645))))

(assert (=> b!4802207 (= e!2998896 (= (content!9752 lt!1957232) (content!9752 (map!12281 (toList!7012 (extractMap!2493 (toList!7011 lm!2473))) lambda!232646))))))

(assert (= (and d!1537812 res!2042629) b!4802205))

(assert (= (and b!4802205 res!2042630) b!4802206))

(assert (= (and b!4802206 res!2042631) b!4802207))

(declare-fun m!5786578 () Bool)

(assert (=> d!1537812 m!5786578))

(assert (=> d!1537812 m!5786102))

(declare-fun m!5786580 () Bool)

(assert (=> b!4802205 m!5786580))

(declare-fun m!5786582 () Bool)

(assert (=> b!4802205 m!5786582))

(declare-fun m!5786584 () Bool)

(assert (=> b!4802206 m!5786584))

(declare-fun m!5786586 () Bool)

(assert (=> b!4802207 m!5786586))

(declare-fun m!5786588 () Bool)

(assert (=> b!4802207 m!5786588))

(assert (=> b!4802207 m!5786588))

(declare-fun m!5786590 () Bool)

(assert (=> b!4802207 m!5786590))

(assert (=> b!4801868 d!1537812))

(declare-fun d!1537814 () Bool)

(assert (=> d!1537814 (= (isEmpty!29509 (getPair!938 (apply!13039 lm!2473 lt!1956940) key!5896)) (not ((_ is Some!13189) (getPair!938 (apply!13039 lm!2473 lt!1956940) key!5896))))))

(assert (=> d!1537558 d!1537814))

(declare-fun d!1537816 () Bool)

(declare-fun isEmpty!29513 (Option!13194) Bool)

(assert (=> d!1537816 (= (isDefined!10335 (getValueByKey!2403 (toList!7011 lt!1956934) lt!1956940)) (not (isEmpty!29513 (getValueByKey!2403 (toList!7011 lt!1956934) lt!1956940))))))

(declare-fun bs!1157918 () Bool)

(assert (= bs!1157918 d!1537816))

(assert (=> bs!1157918 m!5786068))

(declare-fun m!5786592 () Bool)

(assert (=> bs!1157918 m!5786592))

(assert (=> b!4801862 d!1537816))

(declare-fun d!1537818 () Bool)

(declare-fun c!818546 () Bool)

(assert (=> d!1537818 (= c!818546 (and ((_ is Cons!54333) (toList!7011 lt!1956934)) (= (_1!31811 (h!60765 (toList!7011 lt!1956934))) lt!1956940)))))

(declare-fun e!2998903 () Option!13194)

(assert (=> d!1537818 (= (getValueByKey!2403 (toList!7011 lt!1956934) lt!1956940) e!2998903)))

(declare-fun b!4802223 () Bool)

(declare-fun e!2998904 () Option!13194)

(assert (=> b!4802223 (= e!2998904 None!13193)))

(declare-fun b!4802222 () Bool)

(assert (=> b!4802222 (= e!2998904 (getValueByKey!2403 (t!361907 (toList!7011 lt!1956934)) lt!1956940))))

(declare-fun b!4802220 () Bool)

(assert (=> b!4802220 (= e!2998903 (Some!13193 (_2!31811 (h!60765 (toList!7011 lt!1956934)))))))

(declare-fun b!4802221 () Bool)

(assert (=> b!4802221 (= e!2998903 e!2998904)))

(declare-fun c!818547 () Bool)

(assert (=> b!4802221 (= c!818547 (and ((_ is Cons!54333) (toList!7011 lt!1956934)) (not (= (_1!31811 (h!60765 (toList!7011 lt!1956934))) lt!1956940))))))

(assert (= (and d!1537818 c!818546) b!4802220))

(assert (= (and d!1537818 (not c!818546)) b!4802221))

(assert (= (and b!4802221 c!818547) b!4802222))

(assert (= (and b!4802221 (not c!818547)) b!4802223))

(declare-fun m!5786594 () Bool)

(assert (=> b!4802222 m!5786594))

(assert (=> b!4801862 d!1537818))

(declare-fun d!1537820 () Bool)

(assert (=> d!1537820 (isDefined!10335 (getValueByKey!2403 (toList!7011 lt!1956934) lt!1956940))))

(declare-fun lt!1957259 () Unit!140777)

(declare-fun choose!34717 (List!54457 (_ BitVec 64)) Unit!140777)

(assert (=> d!1537820 (= lt!1957259 (choose!34717 (toList!7011 lt!1956934) lt!1956940))))

(declare-fun e!2998907 () Bool)

(assert (=> d!1537820 e!2998907))

(declare-fun res!2042634 () Bool)

(assert (=> d!1537820 (=> (not res!2042634) (not e!2998907))))

(assert (=> d!1537820 (= res!2042634 (isStrictlySorted!902 (toList!7011 lt!1956934)))))

(assert (=> d!1537820 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2194 (toList!7011 lt!1956934) lt!1956940) lt!1957259)))

(declare-fun b!4802226 () Bool)

(assert (=> b!4802226 (= e!2998907 (containsKey!4044 (toList!7011 lt!1956934) lt!1956940))))

(assert (= (and d!1537820 res!2042634) b!4802226))

(assert (=> d!1537820 m!5786068))

(assert (=> d!1537820 m!5786068))

(assert (=> d!1537820 m!5786078))

(declare-fun m!5786596 () Bool)

(assert (=> d!1537820 m!5786596))

(declare-fun m!5786598 () Bool)

(assert (=> d!1537820 m!5786598))

(assert (=> b!4802226 m!5786074))

(assert (=> b!4801860 d!1537820))

(assert (=> b!4801860 d!1537816))

(assert (=> b!4801860 d!1537818))

(declare-fun d!1537822 () Bool)

(assert (=> d!1537822 (isDefined!10335 (getValueByKey!2403 (toList!7011 lm!2473) lt!1956940))))

(declare-fun lt!1957264 () Unit!140777)

(assert (=> d!1537822 (= lt!1957264 (choose!34717 (toList!7011 lm!2473) lt!1956940))))

(declare-fun e!2998908 () Bool)

(assert (=> d!1537822 e!2998908))

(declare-fun res!2042635 () Bool)

(assert (=> d!1537822 (=> (not res!2042635) (not e!2998908))))

(assert (=> d!1537822 (= res!2042635 (isStrictlySorted!902 (toList!7011 lm!2473)))))

(assert (=> d!1537822 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2194 (toList!7011 lm!2473) lt!1956940) lt!1957264)))

(declare-fun b!4802227 () Bool)

(assert (=> b!4802227 (= e!2998908 (containsKey!4044 (toList!7011 lm!2473) lt!1956940))))

(assert (= (and d!1537822 res!2042635) b!4802227))

(assert (=> d!1537822 m!5786040))

(assert (=> d!1537822 m!5786040))

(assert (=> d!1537822 m!5786122))

(declare-fun m!5786600 () Bool)

(assert (=> d!1537822 m!5786600))

(assert (=> d!1537822 m!5786048))

(assert (=> b!4802227 m!5786118))

(assert (=> b!4801876 d!1537822))

(declare-fun d!1537824 () Bool)

(assert (=> d!1537824 (= (isDefined!10335 (getValueByKey!2403 (toList!7011 lm!2473) lt!1956940)) (not (isEmpty!29513 (getValueByKey!2403 (toList!7011 lm!2473) lt!1956940))))))

(declare-fun bs!1157919 () Bool)

(assert (= bs!1157919 d!1537824))

(assert (=> bs!1157919 m!5786040))

(declare-fun m!5786602 () Bool)

(assert (=> bs!1157919 m!5786602))

(assert (=> b!4801876 d!1537824))

(declare-fun d!1537826 () Bool)

(declare-fun c!818548 () Bool)

(assert (=> d!1537826 (= c!818548 (and ((_ is Cons!54333) (toList!7011 lm!2473)) (= (_1!31811 (h!60765 (toList!7011 lm!2473))) lt!1956940)))))

(declare-fun e!2998909 () Option!13194)

(assert (=> d!1537826 (= (getValueByKey!2403 (toList!7011 lm!2473) lt!1956940) e!2998909)))

(declare-fun b!4802231 () Bool)

(declare-fun e!2998910 () Option!13194)

(assert (=> b!4802231 (= e!2998910 None!13193)))

(declare-fun b!4802230 () Bool)

(assert (=> b!4802230 (= e!2998910 (getValueByKey!2403 (t!361907 (toList!7011 lm!2473)) lt!1956940))))

(declare-fun b!4802228 () Bool)

(assert (=> b!4802228 (= e!2998909 (Some!13193 (_2!31811 (h!60765 (toList!7011 lm!2473)))))))

(declare-fun b!4802229 () Bool)

(assert (=> b!4802229 (= e!2998909 e!2998910)))

(declare-fun c!818549 () Bool)

(assert (=> b!4802229 (= c!818549 (and ((_ is Cons!54333) (toList!7011 lm!2473)) (not (= (_1!31811 (h!60765 (toList!7011 lm!2473))) lt!1956940))))))

(assert (= (and d!1537826 c!818548) b!4802228))

(assert (= (and d!1537826 (not c!818548)) b!4802229))

(assert (= (and b!4802229 c!818549) b!4802230))

(assert (= (and b!4802229 (not c!818549)) b!4802231))

(declare-fun m!5786604 () Bool)

(assert (=> b!4802230 m!5786604))

(assert (=> b!4801876 d!1537826))

(assert (=> d!1537594 d!1537592))

(declare-fun d!1537828 () Bool)

(assert (=> d!1537828 (containsKeyBiggerList!608 (toList!7011 lm!2473) key!5896)))

(assert (=> d!1537828 true))

(declare-fun _$33!888 () Unit!140777)

(assert (=> d!1537828 (= (choose!34708 lm!2473 key!5896 hashF!1559) _$33!888)))

(declare-fun bs!1157920 () Bool)

(assert (= bs!1157920 d!1537828))

(assert (=> bs!1157920 m!5785724))

(assert (=> d!1537594 d!1537828))

(declare-fun d!1537830 () Bool)

(declare-fun res!2042636 () Bool)

(declare-fun e!2998911 () Bool)

(assert (=> d!1537830 (=> res!2042636 e!2998911)))

(assert (=> d!1537830 (= res!2042636 ((_ is Nil!54333) (toList!7011 lm!2473)))))

(assert (=> d!1537830 (= (forall!12337 (toList!7011 lm!2473) lambda!232584) e!2998911)))

(declare-fun b!4802232 () Bool)

(declare-fun e!2998912 () Bool)

(assert (=> b!4802232 (= e!2998911 e!2998912)))

(declare-fun res!2042637 () Bool)

(assert (=> b!4802232 (=> (not res!2042637) (not e!2998912))))

(assert (=> b!4802232 (= res!2042637 (dynLambda!22095 lambda!232584 (h!60765 (toList!7011 lm!2473))))))

(declare-fun b!4802233 () Bool)

(assert (=> b!4802233 (= e!2998912 (forall!12337 (t!361907 (toList!7011 lm!2473)) lambda!232584))))

(assert (= (and d!1537830 (not res!2042636)) b!4802232))

(assert (= (and b!4802232 res!2042637) b!4802233))

(declare-fun b_lambda!187731 () Bool)

(assert (=> (not b_lambda!187731) (not b!4802232)))

(declare-fun m!5786606 () Bool)

(assert (=> b!4802232 m!5786606))

(declare-fun m!5786608 () Bool)

(assert (=> b!4802233 m!5786608))

(assert (=> d!1537594 d!1537830))

(assert (=> b!4801878 d!1537824))

(assert (=> b!4801878 d!1537826))

(declare-fun d!1537832 () Bool)

(declare-fun lt!1957275 () Bool)

(assert (=> d!1537832 (= lt!1957275 (select (content!9751 (apply!13039 lm!2473 lt!1956940)) (get!18555 lt!1957052)))))

(declare-fun e!2998913 () Bool)

(assert (=> d!1537832 (= lt!1957275 e!2998913)))

(declare-fun res!2042639 () Bool)

(assert (=> d!1537832 (=> (not res!2042639) (not e!2998913))))

(assert (=> d!1537832 (= res!2042639 ((_ is Cons!54332) (apply!13039 lm!2473 lt!1956940)))))

(assert (=> d!1537832 (= (contains!17991 (apply!13039 lm!2473 lt!1956940) (get!18555 lt!1957052)) lt!1957275)))

(declare-fun b!4802234 () Bool)

(declare-fun e!2998914 () Bool)

(assert (=> b!4802234 (= e!2998913 e!2998914)))

(declare-fun res!2042638 () Bool)

(assert (=> b!4802234 (=> res!2042638 e!2998914)))

(assert (=> b!4802234 (= res!2042638 (= (h!60764 (apply!13039 lm!2473 lt!1956940)) (get!18555 lt!1957052)))))

(declare-fun b!4802235 () Bool)

(assert (=> b!4802235 (= e!2998914 (contains!17991 (t!361906 (apply!13039 lm!2473 lt!1956940)) (get!18555 lt!1957052)))))

(assert (= (and d!1537832 res!2042639) b!4802234))

(assert (= (and b!4802234 (not res!2042638)) b!4802235))

(assert (=> d!1537832 m!5785738))

(declare-fun m!5786610 () Bool)

(assert (=> d!1537832 m!5786610))

(assert (=> d!1537832 m!5786030))

(declare-fun m!5786612 () Bool)

(assert (=> d!1537832 m!5786612))

(assert (=> b!4802235 m!5786030))

(declare-fun m!5786614 () Bool)

(assert (=> b!4802235 m!5786614))

(assert (=> b!4801830 d!1537832))

(declare-fun d!1537834 () Bool)

(assert (=> d!1537834 (= (get!18555 lt!1957052) (v!48518 lt!1957052))))

(assert (=> b!4801830 d!1537834))

(assert (=> b!4801866 d!1537812))

(declare-fun d!1537836 () Bool)

(declare-fun res!2042642 () Bool)

(declare-fun e!2998916 () Bool)

(assert (=> d!1537836 (=> res!2042642 e!2998916)))

(declare-fun e!2998917 () Bool)

(assert (=> d!1537836 (= res!2042642 e!2998917)))

(declare-fun res!2042641 () Bool)

(assert (=> d!1537836 (=> (not res!2042641) (not e!2998917))))

(assert (=> d!1537836 (= res!2042641 ((_ is Cons!54333) (t!361907 (toList!7011 lt!1956934))))))

(assert (=> d!1537836 (= (containsKeyBiggerList!608 (t!361907 (toList!7011 lt!1956934)) key!5896) e!2998916)))

(declare-fun b!4802236 () Bool)

(assert (=> b!4802236 (= e!2998917 (containsKey!4040 (_2!31811 (h!60765 (t!361907 (toList!7011 lt!1956934)))) key!5896))))

(declare-fun b!4802237 () Bool)

(declare-fun e!2998915 () Bool)

(assert (=> b!4802237 (= e!2998916 e!2998915)))

(declare-fun res!2042640 () Bool)

(assert (=> b!4802237 (=> (not res!2042640) (not e!2998915))))

(assert (=> b!4802237 (= res!2042640 ((_ is Cons!54333) (t!361907 (toList!7011 lt!1956934))))))

(declare-fun b!4802238 () Bool)

(assert (=> b!4802238 (= e!2998915 (containsKeyBiggerList!608 (t!361907 (t!361907 (toList!7011 lt!1956934))) key!5896))))

(assert (= (and d!1537836 res!2042641) b!4802236))

(assert (= (and d!1537836 (not res!2042642)) b!4802237))

(assert (= (and b!4802237 res!2042640) b!4802238))

(declare-fun m!5786616 () Bool)

(assert (=> b!4802236 m!5786616))

(declare-fun m!5786618 () Bool)

(assert (=> b!4802238 m!5786618))

(assert (=> b!4801806 d!1537836))

(declare-fun d!1537838 () Bool)

(declare-fun res!2042643 () Bool)

(declare-fun e!2998918 () Bool)

(assert (=> d!1537838 (=> res!2042643 e!2998918)))

(assert (=> d!1537838 (= res!2042643 ((_ is Nil!54333) (toList!7011 lm!2473)))))

(assert (=> d!1537838 (= (forall!12337 (toList!7011 lm!2473) lambda!232582) e!2998918)))

(declare-fun b!4802239 () Bool)

(declare-fun e!2998919 () Bool)

(assert (=> b!4802239 (= e!2998918 e!2998919)))

(declare-fun res!2042644 () Bool)

(assert (=> b!4802239 (=> (not res!2042644) (not e!2998919))))

(assert (=> b!4802239 (= res!2042644 (dynLambda!22095 lambda!232582 (h!60765 (toList!7011 lm!2473))))))

(declare-fun b!4802240 () Bool)

(assert (=> b!4802240 (= e!2998919 (forall!12337 (t!361907 (toList!7011 lm!2473)) lambda!232582))))

(assert (= (and d!1537838 (not res!2042643)) b!4802239))

(assert (= (and b!4802239 res!2042644) b!4802240))

(declare-fun b_lambda!187733 () Bool)

(assert (=> (not b_lambda!187733) (not b!4802239)))

(declare-fun m!5786620 () Bool)

(assert (=> b!4802239 m!5786620))

(declare-fun m!5786622 () Bool)

(assert (=> b!4802240 m!5786622))

(assert (=> d!1537584 d!1537838))

(assert (=> b!4801733 d!1537686))

(assert (=> b!4801846 d!1537634))

(declare-fun d!1537840 () Bool)

(declare-fun res!2042645 () Bool)

(declare-fun e!2998920 () Bool)

(assert (=> d!1537840 (=> res!2042645 e!2998920)))

(assert (=> d!1537840 (= res!2042645 (and ((_ is Cons!54332) (toList!7012 (extractMap!2493 (toList!7011 lm!2473)))) (= (_1!31810 (h!60764 (toList!7012 (extractMap!2493 (toList!7011 lm!2473))))) key!5896)))))

(assert (=> d!1537840 (= (containsKey!4043 (toList!7012 (extractMap!2493 (toList!7011 lm!2473))) key!5896) e!2998920)))

(declare-fun b!4802241 () Bool)

(declare-fun e!2998921 () Bool)

(assert (=> b!4802241 (= e!2998920 e!2998921)))

(declare-fun res!2042646 () Bool)

(assert (=> b!4802241 (=> (not res!2042646) (not e!2998921))))

(assert (=> b!4802241 (= res!2042646 ((_ is Cons!54332) (toList!7012 (extractMap!2493 (toList!7011 lm!2473)))))))

(declare-fun b!4802242 () Bool)

(assert (=> b!4802242 (= e!2998921 (containsKey!4043 (t!361906 (toList!7012 (extractMap!2493 (toList!7011 lm!2473)))) key!5896))))

(assert (= (and d!1537840 (not res!2042645)) b!4802241))

(assert (= (and b!4802241 res!2042646) b!4802242))

(declare-fun m!5786624 () Bool)

(assert (=> b!4802242 m!5786624))

(assert (=> b!4801873 d!1537840))

(declare-fun d!1537842 () Bool)

(assert (=> d!1537842 (containsKey!4043 (toList!7012 (extractMap!2493 (toList!7011 lm!2473))) key!5896)))

(declare-fun lt!1957280 () Unit!140777)

(assert (=> d!1537842 (= lt!1957280 (choose!34714 (toList!7012 (extractMap!2493 (toList!7011 lm!2473))) key!5896))))

(assert (=> d!1537842 (invariantList!1756 (toList!7012 (extractMap!2493 (toList!7011 lm!2473))))))

(assert (=> d!1537842 (= (lemmaInGetKeysListThenContainsKey!1102 (toList!7012 (extractMap!2493 (toList!7011 lm!2473))) key!5896) lt!1957280)))

(declare-fun bs!1157921 () Bool)

(assert (= bs!1157921 d!1537842))

(assert (=> bs!1157921 m!5786100))

(declare-fun m!5786626 () Bool)

(assert (=> bs!1157921 m!5786626))

(declare-fun m!5786628 () Bool)

(assert (=> bs!1157921 m!5786628))

(assert (=> b!4801873 d!1537842))

(declare-fun d!1537844 () Bool)

(declare-fun res!2042649 () Bool)

(declare-fun e!2998924 () Bool)

(assert (=> d!1537844 (=> res!2042649 e!2998924)))

(assert (=> d!1537844 (= res!2042649 (and ((_ is Cons!54332) (_2!31811 (h!60765 (toList!7011 lt!1956934)))) (= (_1!31810 (h!60764 (_2!31811 (h!60765 (toList!7011 lt!1956934))))) key!5896)))))

(assert (=> d!1537844 (= (containsKey!4040 (_2!31811 (h!60765 (toList!7011 lt!1956934))) key!5896) e!2998924)))

(declare-fun b!4802243 () Bool)

(declare-fun e!2998925 () Bool)

(assert (=> b!4802243 (= e!2998924 e!2998925)))

(declare-fun res!2042650 () Bool)

(assert (=> b!4802243 (=> (not res!2042650) (not e!2998925))))

(assert (=> b!4802243 (= res!2042650 ((_ is Cons!54332) (_2!31811 (h!60765 (toList!7011 lt!1956934)))))))

(declare-fun b!4802244 () Bool)

(assert (=> b!4802244 (= e!2998925 (containsKey!4040 (t!361906 (_2!31811 (h!60765 (toList!7011 lt!1956934)))) key!5896))))

(assert (= (and d!1537844 (not res!2042649)) b!4802243))

(assert (= (and b!4802243 res!2042650) b!4802244))

(declare-fun m!5786630 () Bool)

(assert (=> b!4802244 m!5786630))

(assert (=> b!4801804 d!1537844))

(declare-fun d!1537846 () Bool)

(declare-fun res!2042651 () Bool)

(declare-fun e!2998926 () Bool)

(assert (=> d!1537846 (=> res!2042651 e!2998926)))

(assert (=> d!1537846 (= res!2042651 (and ((_ is Cons!54333) (toList!7011 lt!1956934)) (= (_1!31811 (h!60765 (toList!7011 lt!1956934))) lt!1956940)))))

(assert (=> d!1537846 (= (containsKey!4044 (toList!7011 lt!1956934) lt!1956940) e!2998926)))

(declare-fun b!4802245 () Bool)

(declare-fun e!2998927 () Bool)

(assert (=> b!4802245 (= e!2998926 e!2998927)))

(declare-fun res!2042652 () Bool)

(assert (=> b!4802245 (=> (not res!2042652) (not e!2998927))))

(assert (=> b!4802245 (= res!2042652 (and (or (not ((_ is Cons!54333) (toList!7011 lt!1956934))) (bvsle (_1!31811 (h!60765 (toList!7011 lt!1956934))) lt!1956940)) ((_ is Cons!54333) (toList!7011 lt!1956934)) (bvslt (_1!31811 (h!60765 (toList!7011 lt!1956934))) lt!1956940)))))

(declare-fun b!4802246 () Bool)

(assert (=> b!4802246 (= e!2998927 (containsKey!4044 (t!361907 (toList!7011 lt!1956934)) lt!1956940))))

(assert (= (and d!1537846 (not res!2042651)) b!4802245))

(assert (= (and b!4802245 res!2042652) b!4802246))

(declare-fun m!5786632 () Bool)

(assert (=> b!4802246 m!5786632))

(assert (=> d!1537578 d!1537846))

(declare-fun d!1537848 () Bool)

(assert (=> d!1537848 (isDefined!10334 (getValueByKey!2402 (toList!7012 (extractMap!2493 (toList!7011 lm!2473))) key!5896))))

(declare-fun lt!1957281 () Unit!140777)

(assert (=> d!1537848 (= lt!1957281 (choose!34712 (toList!7012 (extractMap!2493 (toList!7011 lm!2473))) key!5896))))

(assert (=> d!1537848 (invariantList!1756 (toList!7012 (extractMap!2493 (toList!7011 lm!2473))))))

(assert (=> d!1537848 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2193 (toList!7012 (extractMap!2493 (toList!7011 lm!2473))) key!5896) lt!1957281)))

(declare-fun bs!1157922 () Bool)

(assert (= bs!1157922 d!1537848))

(assert (=> bs!1157922 m!5786096))

(assert (=> bs!1157922 m!5786096))

(assert (=> bs!1157922 m!5786098))

(declare-fun m!5786634 () Bool)

(assert (=> bs!1157922 m!5786634))

(assert (=> bs!1157922 m!5786628))

(assert (=> b!4801872 d!1537848))

(declare-fun d!1537850 () Bool)

(assert (=> d!1537850 (= (isDefined!10334 (getValueByKey!2402 (toList!7012 (extractMap!2493 (toList!7011 lm!2473))) key!5896)) (not (isEmpty!29512 (getValueByKey!2402 (toList!7012 (extractMap!2493 (toList!7011 lm!2473))) key!5896))))))

(declare-fun bs!1157923 () Bool)

(assert (= bs!1157923 d!1537850))

(assert (=> bs!1157923 m!5786096))

(declare-fun m!5786636 () Bool)

(assert (=> bs!1157923 m!5786636))

(assert (=> b!4801872 d!1537850))

(declare-fun d!1537852 () Bool)

(declare-fun c!818550 () Bool)

(assert (=> d!1537852 (= c!818550 (and ((_ is Cons!54332) (toList!7012 (extractMap!2493 (toList!7011 lm!2473)))) (= (_1!31810 (h!60764 (toList!7012 (extractMap!2493 (toList!7011 lm!2473))))) key!5896)))))

(declare-fun e!2998928 () Option!13193)

(assert (=> d!1537852 (= (getValueByKey!2402 (toList!7012 (extractMap!2493 (toList!7011 lm!2473))) key!5896) e!2998928)))

(declare-fun b!4802250 () Bool)

(declare-fun e!2998929 () Option!13193)

(assert (=> b!4802250 (= e!2998928 e!2998929)))

(declare-fun c!818551 () Bool)

(assert (=> b!4802250 (= c!818551 (and ((_ is Cons!54332) (toList!7012 (extractMap!2493 (toList!7011 lm!2473)))) (not (= (_1!31810 (h!60764 (toList!7012 (extractMap!2493 (toList!7011 lm!2473))))) key!5896))))))

(declare-fun b!4802249 () Bool)

(assert (=> b!4802249 (= e!2998928 (Some!13192 (_2!31810 (h!60764 (toList!7012 (extractMap!2493 (toList!7011 lm!2473)))))))))

(declare-fun b!4802251 () Bool)

(assert (=> b!4802251 (= e!2998929 (getValueByKey!2402 (t!361906 (toList!7012 (extractMap!2493 (toList!7011 lm!2473)))) key!5896))))

(declare-fun b!4802252 () Bool)

(assert (=> b!4802252 (= e!2998929 None!13192)))

(assert (= (and d!1537852 c!818550) b!4802249))

(assert (= (and d!1537852 (not c!818550)) b!4802250))

(assert (= (and b!4802250 c!818551) b!4802251))

(assert (= (and b!4802250 (not c!818551)) b!4802252))

(declare-fun m!5786638 () Bool)

(assert (=> b!4802251 m!5786638))

(assert (=> b!4801872 d!1537852))

(declare-fun d!1537854 () Bool)

(assert (=> d!1537854 (contains!17990 (getKeysList!1102 (toList!7012 (extractMap!2493 (toList!7011 lm!2473)))) key!5896)))

(declare-fun lt!1957282 () Unit!140777)

(assert (=> d!1537854 (= lt!1957282 (choose!34713 (toList!7012 (extractMap!2493 (toList!7011 lm!2473))) key!5896))))

(assert (=> d!1537854 (invariantList!1756 (toList!7012 (extractMap!2493 (toList!7011 lm!2473))))))

(assert (=> d!1537854 (= (lemmaInListThenGetKeysListContains!1097 (toList!7012 (extractMap!2493 (toList!7011 lm!2473))) key!5896) lt!1957282)))

(declare-fun bs!1157924 () Bool)

(assert (= bs!1157924 d!1537854))

(assert (=> bs!1157924 m!5786102))

(assert (=> bs!1157924 m!5786102))

(declare-fun m!5786640 () Bool)

(assert (=> bs!1157924 m!5786640))

(declare-fun m!5786642 () Bool)

(assert (=> bs!1157924 m!5786642))

(assert (=> bs!1157924 m!5786628))

(assert (=> b!4801872 d!1537854))

(declare-fun d!1537856 () Bool)

(declare-fun c!818552 () Bool)

(declare-fun e!2998931 () Bool)

(assert (=> d!1537856 (= c!818552 e!2998931)))

(declare-fun res!2042653 () Bool)

(assert (=> d!1537856 (=> (not res!2042653) (not e!2998931))))

(assert (=> d!1537856 (= res!2042653 ((_ is Cons!54333) (t!361907 (toList!7011 lt!1956934))))))

(declare-fun e!2998930 () V!16150)

(assert (=> d!1537856 (= (getValue!154 (t!361907 (toList!7011 lt!1956934)) key!5896) e!2998930)))

(declare-fun b!4802255 () Bool)

(assert (=> b!4802255 (= e!2998931 (containsKey!4040 (_2!31811 (h!60765 (t!361907 (toList!7011 lt!1956934)))) key!5896))))

(declare-fun b!4802253 () Bool)

(assert (=> b!4802253 (= e!2998930 (_2!31810 (get!18555 (getPair!938 (_2!31811 (h!60765 (t!361907 (toList!7011 lt!1956934)))) key!5896))))))

(declare-fun b!4802254 () Bool)

(assert (=> b!4802254 (= e!2998930 (getValue!154 (t!361907 (t!361907 (toList!7011 lt!1956934))) key!5896))))

(assert (= (and d!1537856 res!2042653) b!4802255))

(assert (= (and d!1537856 c!818552) b!4802253))

(assert (= (and d!1537856 (not c!818552)) b!4802254))

(assert (=> b!4802255 m!5786616))

(declare-fun m!5786644 () Bool)

(assert (=> b!4802253 m!5786644))

(assert (=> b!4802253 m!5786644))

(declare-fun m!5786646 () Bool)

(assert (=> b!4802253 m!5786646))

(declare-fun m!5786648 () Bool)

(assert (=> b!4802254 m!5786648))

(assert (=> b!4801796 d!1537856))

(declare-fun bs!1157925 () Bool)

(declare-fun b!4802256 () Bool)

(assert (= bs!1157925 (and b!4802256 b!4802194)))

(declare-fun lambda!232671 () Int)

(assert (=> bs!1157925 (= (= (extractMap!2493 (t!361907 (toList!7011 lm!2473))) (extractMap!2493 (t!361907 (toList!7011 lt!1956934)))) (= lambda!232671 lambda!232640))))

(declare-fun bs!1157926 () Bool)

(assert (= bs!1157926 (and b!4802256 b!4802195)))

(assert (=> bs!1157926 (= (= (extractMap!2493 (t!361907 (toList!7011 lm!2473))) (extractMap!2493 (t!361907 (toList!7011 lt!1956934)))) (= lambda!232671 lambda!232641))))

(assert (=> bs!1157926 (= (= (extractMap!2493 (t!361907 (toList!7011 lm!2473))) lt!1957221) (= lambda!232671 lambda!232642))))

(declare-fun bs!1157927 () Bool)

(assert (= bs!1157927 (and b!4802256 d!1537748)))

(assert (=> bs!1157927 (= (= (extractMap!2493 (t!361907 (toList!7011 lm!2473))) lt!1957212) (= lambda!232671 lambda!232643))))

(assert (=> b!4802256 true))

(declare-fun bs!1157928 () Bool)

(declare-fun b!4802257 () Bool)

(assert (= bs!1157928 (and b!4802257 b!4802194)))

(declare-fun lambda!232672 () Int)

(assert (=> bs!1157928 (= (= (extractMap!2493 (t!361907 (toList!7011 lm!2473))) (extractMap!2493 (t!361907 (toList!7011 lt!1956934)))) (= lambda!232672 lambda!232640))))

(declare-fun bs!1157929 () Bool)

(assert (= bs!1157929 (and b!4802257 d!1537748)))

(assert (=> bs!1157929 (= (= (extractMap!2493 (t!361907 (toList!7011 lm!2473))) lt!1957212) (= lambda!232672 lambda!232643))))

(declare-fun bs!1157930 () Bool)

(assert (= bs!1157930 (and b!4802257 b!4802195)))

(assert (=> bs!1157930 (= (= (extractMap!2493 (t!361907 (toList!7011 lm!2473))) (extractMap!2493 (t!361907 (toList!7011 lt!1956934)))) (= lambda!232672 lambda!232641))))

(assert (=> bs!1157930 (= (= (extractMap!2493 (t!361907 (toList!7011 lm!2473))) lt!1957221) (= lambda!232672 lambda!232642))))

(declare-fun bs!1157931 () Bool)

(assert (= bs!1157931 (and b!4802257 b!4802256)))

(assert (=> bs!1157931 (= lambda!232672 lambda!232671)))

(assert (=> b!4802257 true))

(declare-fun lt!1957295 () ListMap!6483)

(declare-fun lambda!232675 () Int)

(assert (=> bs!1157928 (= (= lt!1957295 (extractMap!2493 (t!361907 (toList!7011 lt!1956934)))) (= lambda!232675 lambda!232640))))

(assert (=> bs!1157929 (= (= lt!1957295 lt!1957212) (= lambda!232675 lambda!232643))))

(assert (=> bs!1157930 (= (= lt!1957295 (extractMap!2493 (t!361907 (toList!7011 lt!1956934)))) (= lambda!232675 lambda!232641))))

(assert (=> b!4802257 (= (= lt!1957295 (extractMap!2493 (t!361907 (toList!7011 lm!2473)))) (= lambda!232675 lambda!232672))))

(assert (=> bs!1157930 (= (= lt!1957295 lt!1957221) (= lambda!232675 lambda!232642))))

(assert (=> bs!1157931 (= (= lt!1957295 (extractMap!2493 (t!361907 (toList!7011 lm!2473)))) (= lambda!232675 lambda!232671))))

(assert (=> b!4802257 true))

(declare-fun bs!1157932 () Bool)

(declare-fun d!1537858 () Bool)

(assert (= bs!1157932 (and d!1537858 b!4802194)))

(declare-fun lt!1957286 () ListMap!6483)

(declare-fun lambda!232678 () Int)

(assert (=> bs!1157932 (= (= lt!1957286 (extractMap!2493 (t!361907 (toList!7011 lt!1956934)))) (= lambda!232678 lambda!232640))))

(declare-fun bs!1157933 () Bool)

(assert (= bs!1157933 (and d!1537858 b!4802257)))

(assert (=> bs!1157933 (= (= lt!1957286 lt!1957295) (= lambda!232678 lambda!232675))))

(declare-fun bs!1157934 () Bool)

(assert (= bs!1157934 (and d!1537858 d!1537748)))

(assert (=> bs!1157934 (= (= lt!1957286 lt!1957212) (= lambda!232678 lambda!232643))))

(declare-fun bs!1157935 () Bool)

(assert (= bs!1157935 (and d!1537858 b!4802195)))

(assert (=> bs!1157935 (= (= lt!1957286 (extractMap!2493 (t!361907 (toList!7011 lt!1956934)))) (= lambda!232678 lambda!232641))))

(assert (=> bs!1157933 (= (= lt!1957286 (extractMap!2493 (t!361907 (toList!7011 lm!2473)))) (= lambda!232678 lambda!232672))))

(assert (=> bs!1157935 (= (= lt!1957286 lt!1957221) (= lambda!232678 lambda!232642))))

(declare-fun bs!1157936 () Bool)

(assert (= bs!1157936 (and d!1537858 b!4802256)))

(assert (=> bs!1157936 (= (= lt!1957286 (extractMap!2493 (t!361907 (toList!7011 lm!2473)))) (= lambda!232678 lambda!232671))))

(assert (=> d!1537858 true))

(declare-fun e!2998932 () Bool)

(assert (=> d!1537858 e!2998932))

(declare-fun res!2042654 () Bool)

(assert (=> d!1537858 (=> (not res!2042654) (not e!2998932))))

(assert (=> d!1537858 (= res!2042654 (forall!12340 (_2!31811 (h!60765 (toList!7011 lm!2473))) lambda!232678))))

(declare-fun e!2998933 () ListMap!6483)

(assert (=> d!1537858 (= lt!1957286 e!2998933)))

(declare-fun c!818553 () Bool)

(assert (=> d!1537858 (= c!818553 ((_ is Nil!54332) (_2!31811 (h!60765 (toList!7011 lm!2473)))))))

(assert (=> d!1537858 (noDuplicateKeys!2364 (_2!31811 (h!60765 (toList!7011 lm!2473))))))

(assert (=> d!1537858 (= (addToMapMapFromBucket!1733 (_2!31811 (h!60765 (toList!7011 lm!2473))) (extractMap!2493 (t!361907 (toList!7011 lm!2473)))) lt!1957286)))

(assert (=> b!4802256 (= e!2998933 (extractMap!2493 (t!361907 (toList!7011 lm!2473))))))

(declare-fun lt!1957283 () Unit!140777)

(declare-fun call!335419 () Unit!140777)

(assert (=> b!4802256 (= lt!1957283 call!335419)))

(declare-fun call!335416 () Bool)

(assert (=> b!4802256 call!335416))

(declare-fun lt!1957300 () Unit!140777)

(assert (=> b!4802256 (= lt!1957300 lt!1957283)))

(declare-fun call!335420 () Bool)

(assert (=> b!4802256 call!335420))

(declare-fun lt!1957289 () Unit!140777)

(declare-fun Unit!140809 () Unit!140777)

(assert (=> b!4802256 (= lt!1957289 Unit!140809)))

(assert (=> b!4802257 (= e!2998933 lt!1957295)))

(declare-fun lt!1957294 () ListMap!6483)

(assert (=> b!4802257 (= lt!1957294 (+!2506 (extractMap!2493 (t!361907 (toList!7011 lm!2473))) (h!60764 (_2!31811 (h!60765 (toList!7011 lm!2473))))))))

(assert (=> b!4802257 (= lt!1957295 (addToMapMapFromBucket!1733 (t!361906 (_2!31811 (h!60765 (toList!7011 lm!2473)))) (+!2506 (extractMap!2493 (t!361907 (toList!7011 lm!2473))) (h!60764 (_2!31811 (h!60765 (toList!7011 lm!2473)))))))))

(declare-fun lt!1957288 () Unit!140777)

(assert (=> b!4802257 (= lt!1957288 call!335419)))

(assert (=> b!4802257 (forall!12340 (toList!7012 (extractMap!2493 (t!361907 (toList!7011 lm!2473)))) lambda!232672)))

(declare-fun lt!1957292 () Unit!140777)

(assert (=> b!4802257 (= lt!1957292 lt!1957288)))

(assert (=> b!4802257 call!335420))

(declare-fun lt!1957284 () Unit!140777)

(declare-fun Unit!140810 () Unit!140777)

(assert (=> b!4802257 (= lt!1957284 Unit!140810)))

(assert (=> b!4802257 (forall!12340 (t!361906 (_2!31811 (h!60765 (toList!7011 lm!2473)))) lambda!232675)))

(declare-fun lt!1957297 () Unit!140777)

(declare-fun Unit!140811 () Unit!140777)

(assert (=> b!4802257 (= lt!1957297 Unit!140811)))

(declare-fun lt!1957293 () Unit!140777)

(declare-fun Unit!140812 () Unit!140777)

(assert (=> b!4802257 (= lt!1957293 Unit!140812)))

(declare-fun lt!1957301 () Unit!140777)

(assert (=> b!4802257 (= lt!1957301 (forallContained!4216 (toList!7012 lt!1957294) lambda!232675 (h!60764 (_2!31811 (h!60765 (toList!7011 lm!2473))))))))

(assert (=> b!4802257 (contains!17987 lt!1957294 (_1!31810 (h!60764 (_2!31811 (h!60765 (toList!7011 lm!2473))))))))

(declare-fun lt!1957285 () Unit!140777)

(declare-fun Unit!140813 () Unit!140777)

(assert (=> b!4802257 (= lt!1957285 Unit!140813)))

(assert (=> b!4802257 (contains!17987 lt!1957295 (_1!31810 (h!60764 (_2!31811 (h!60765 (toList!7011 lm!2473))))))))

(declare-fun lt!1957298 () Unit!140777)

(declare-fun Unit!140814 () Unit!140777)

(assert (=> b!4802257 (= lt!1957298 Unit!140814)))

(assert (=> b!4802257 (forall!12340 (_2!31811 (h!60765 (toList!7011 lm!2473))) lambda!232675)))

(declare-fun lt!1957290 () Unit!140777)

(declare-fun Unit!140815 () Unit!140777)

(assert (=> b!4802257 (= lt!1957290 Unit!140815)))

(assert (=> b!4802257 (forall!12340 (toList!7012 lt!1957294) lambda!232675)))

(declare-fun lt!1957296 () Unit!140777)

(declare-fun Unit!140816 () Unit!140777)

(assert (=> b!4802257 (= lt!1957296 Unit!140816)))

(declare-fun lt!1957303 () Unit!140777)

(declare-fun Unit!140817 () Unit!140777)

(assert (=> b!4802257 (= lt!1957303 Unit!140817)))

(declare-fun lt!1957291 () Unit!140777)

(assert (=> b!4802257 (= lt!1957291 (addForallContainsKeyThenBeforeAdding!961 (extractMap!2493 (t!361907 (toList!7011 lm!2473))) lt!1957295 (_1!31810 (h!60764 (_2!31811 (h!60765 (toList!7011 lm!2473))))) (_2!31810 (h!60764 (_2!31811 (h!60765 (toList!7011 lm!2473)))))))))

(assert (=> b!4802257 call!335416))

(declare-fun lt!1957287 () Unit!140777)

(assert (=> b!4802257 (= lt!1957287 lt!1957291)))

(assert (=> b!4802257 (forall!12340 (toList!7012 (extractMap!2493 (t!361907 (toList!7011 lm!2473)))) lambda!232675)))

(declare-fun lt!1957302 () Unit!140777)

(declare-fun Unit!140818 () Unit!140777)

(assert (=> b!4802257 (= lt!1957302 Unit!140818)))

(declare-fun res!2042655 () Bool)

(assert (=> b!4802257 (= res!2042655 (forall!12340 (_2!31811 (h!60765 (toList!7011 lm!2473))) lambda!232675))))

(declare-fun e!2998934 () Bool)

(assert (=> b!4802257 (=> (not res!2042655) (not e!2998934))))

(assert (=> b!4802257 e!2998934))

(declare-fun lt!1957299 () Unit!140777)

(declare-fun Unit!140819 () Unit!140777)

(assert (=> b!4802257 (= lt!1957299 Unit!140819)))

(declare-fun b!4802258 () Bool)

(assert (=> b!4802258 (= e!2998932 (invariantList!1756 (toList!7012 lt!1957286)))))

(declare-fun bm!335411 () Bool)

(assert (=> bm!335411 (= call!335416 (forall!12340 (toList!7012 (extractMap!2493 (t!361907 (toList!7011 lm!2473)))) (ite c!818553 lambda!232671 lambda!232675)))))

(declare-fun b!4802259 () Bool)

(declare-fun res!2042656 () Bool)

(assert (=> b!4802259 (=> (not res!2042656) (not e!2998932))))

(assert (=> b!4802259 (= res!2042656 (forall!12340 (toList!7012 (extractMap!2493 (t!361907 (toList!7011 lm!2473)))) lambda!232678))))

(declare-fun bm!335412 () Bool)

(assert (=> bm!335412 (= call!335419 (lemmaContainsAllItsOwnKeys!962 (extractMap!2493 (t!361907 (toList!7011 lm!2473)))))))

(declare-fun bm!335413 () Bool)

(assert (=> bm!335413 (= call!335420 (forall!12340 (ite c!818553 (toList!7012 (extractMap!2493 (t!361907 (toList!7011 lm!2473)))) (toList!7012 lt!1957294)) (ite c!818553 lambda!232671 lambda!232675)))))

(declare-fun b!4802260 () Bool)

(assert (=> b!4802260 (= e!2998934 (forall!12340 (toList!7012 (extractMap!2493 (t!361907 (toList!7011 lm!2473)))) lambda!232675))))

(assert (= (and d!1537858 c!818553) b!4802256))

(assert (= (and d!1537858 (not c!818553)) b!4802257))

(assert (= (and b!4802257 res!2042655) b!4802260))

(assert (= (or b!4802256 b!4802257) bm!335411))

(assert (= (or b!4802256 b!4802257) bm!335413))

(assert (= (or b!4802256 b!4802257) bm!335412))

(assert (= (and d!1537858 res!2042654) b!4802259))

(assert (= (and b!4802259 res!2042656) b!4802258))

(declare-fun m!5786650 () Bool)

(assert (=> b!4802258 m!5786650))

(declare-fun m!5786652 () Bool)

(assert (=> b!4802260 m!5786652))

(declare-fun m!5786654 () Bool)

(assert (=> bm!335413 m!5786654))

(assert (=> bm!335412 m!5786114))

(declare-fun m!5786656 () Bool)

(assert (=> bm!335412 m!5786656))

(declare-fun m!5786658 () Bool)

(assert (=> bm!335411 m!5786658))

(assert (=> b!4802257 m!5786114))

(declare-fun m!5786660 () Bool)

(assert (=> b!4802257 m!5786660))

(declare-fun m!5786662 () Bool)

(assert (=> b!4802257 m!5786662))

(assert (=> b!4802257 m!5786652))

(declare-fun m!5786664 () Bool)

(assert (=> b!4802257 m!5786664))

(declare-fun m!5786666 () Bool)

(assert (=> b!4802257 m!5786666))

(declare-fun m!5786668 () Bool)

(assert (=> b!4802257 m!5786668))

(declare-fun m!5786670 () Bool)

(assert (=> b!4802257 m!5786670))

(assert (=> b!4802257 m!5786668))

(declare-fun m!5786672 () Bool)

(assert (=> b!4802257 m!5786672))

(declare-fun m!5786674 () Bool)

(assert (=> b!4802257 m!5786674))

(assert (=> b!4802257 m!5786114))

(assert (=> b!4802257 m!5786672))

(declare-fun m!5786676 () Bool)

(assert (=> b!4802257 m!5786676))

(declare-fun m!5786678 () Bool)

(assert (=> b!4802257 m!5786678))

(declare-fun m!5786680 () Bool)

(assert (=> d!1537858 m!5786680))

(assert (=> d!1537858 m!5786150))

(declare-fun m!5786682 () Bool)

(assert (=> b!4802259 m!5786682))

(assert (=> b!4801874 d!1537858))

(declare-fun bs!1157937 () Bool)

(declare-fun d!1537860 () Bool)

(assert (= bs!1157937 (and d!1537860 d!1537554)))

(declare-fun lambda!232679 () Int)

(assert (=> bs!1157937 (= lambda!232679 lambda!232575)))

(declare-fun bs!1157938 () Bool)

(assert (= bs!1157938 (and d!1537860 d!1537808)))

(assert (=> bs!1157938 (= lambda!232679 lambda!232644)))

(declare-fun bs!1157939 () Bool)

(assert (= bs!1157939 (and d!1537860 d!1537594)))

(assert (=> bs!1157939 (= lambda!232679 lambda!232584)))

(declare-fun bs!1157940 () Bool)

(assert (= bs!1157940 (and d!1537860 d!1537556)))

(assert (=> bs!1157940 (= lambda!232679 lambda!232578)))

(declare-fun bs!1157941 () Bool)

(assert (= bs!1157941 (and d!1537860 d!1537482)))

(assert (=> bs!1157941 (not (= lambda!232679 lambda!232544))))

(declare-fun bs!1157942 () Bool)

(assert (= bs!1157942 (and d!1537860 d!1537588)))

(assert (=> bs!1157942 (= lambda!232679 lambda!232583)))

(declare-fun bs!1157943 () Bool)

(assert (= bs!1157943 (and d!1537860 start!495642)))

(assert (=> bs!1157943 (= lambda!232679 lambda!232541)))

(declare-fun bs!1157944 () Bool)

(assert (= bs!1157944 (and d!1537860 d!1537584)))

(assert (=> bs!1157944 (not (= lambda!232679 lambda!232582))))

(declare-fun bs!1157945 () Bool)

(assert (= bs!1157945 (and d!1537860 d!1537514)))

(assert (=> bs!1157945 (= lambda!232679 lambda!232572)))

(declare-fun bs!1157946 () Bool)

(assert (= bs!1157946 (and d!1537860 d!1537490)))

(assert (=> bs!1157946 (= lambda!232679 lambda!232556)))

(declare-fun bs!1157947 () Bool)

(assert (= bs!1157947 (and d!1537860 d!1537582)))

(assert (=> bs!1157947 (= lambda!232679 lambda!232581)))

(declare-fun bs!1157948 () Bool)

(assert (= bs!1157948 (and d!1537860 d!1537596)))

(assert (=> bs!1157948 (= lambda!232679 lambda!232585)))

(declare-fun lt!1957304 () ListMap!6483)

(assert (=> d!1537860 (invariantList!1756 (toList!7012 lt!1957304))))

(declare-fun e!2998937 () ListMap!6483)

(assert (=> d!1537860 (= lt!1957304 e!2998937)))

(declare-fun c!818554 () Bool)

(assert (=> d!1537860 (= c!818554 ((_ is Cons!54333) (t!361907 (toList!7011 lm!2473))))))

(assert (=> d!1537860 (forall!12337 (t!361907 (toList!7011 lm!2473)) lambda!232679)))

(assert (=> d!1537860 (= (extractMap!2493 (t!361907 (toList!7011 lm!2473))) lt!1957304)))

(declare-fun b!4802265 () Bool)

(assert (=> b!4802265 (= e!2998937 (addToMapMapFromBucket!1733 (_2!31811 (h!60765 (t!361907 (toList!7011 lm!2473)))) (extractMap!2493 (t!361907 (t!361907 (toList!7011 lm!2473))))))))

(declare-fun b!4802266 () Bool)

(assert (=> b!4802266 (= e!2998937 (ListMap!6484 Nil!54332))))

(assert (= (and d!1537860 c!818554) b!4802265))

(assert (= (and d!1537860 (not c!818554)) b!4802266))

(declare-fun m!5786684 () Bool)

(assert (=> d!1537860 m!5786684))

(declare-fun m!5786686 () Bool)

(assert (=> d!1537860 m!5786686))

(declare-fun m!5786688 () Bool)

(assert (=> b!4802265 m!5786688))

(assert (=> b!4802265 m!5786688))

(declare-fun m!5786690 () Bool)

(assert (=> b!4802265 m!5786690))

(assert (=> b!4801874 d!1537860))

(declare-fun d!1537862 () Bool)

(assert (=> d!1537862 (= (isEmpty!29509 (getPair!938 (apply!13039 lt!1956934 lt!1956940) key!5896)) (not ((_ is Some!13189) (getPair!938 (apply!13039 lt!1956934 lt!1956940) key!5896))))))

(assert (=> d!1537570 d!1537862))

(declare-fun d!1537864 () Bool)

(declare-fun res!2042661 () Bool)

(declare-fun e!2998938 () Bool)

(assert (=> d!1537864 (=> res!2042661 e!2998938)))

(assert (=> d!1537864 (= res!2042661 (not ((_ is Cons!54332) (_2!31811 (h!60765 (toList!7011 lt!1956934))))))))

(assert (=> d!1537864 (= (noDuplicateKeys!2364 (_2!31811 (h!60765 (toList!7011 lt!1956934)))) e!2998938)))

(declare-fun b!4802267 () Bool)

(declare-fun e!2998939 () Bool)

(assert (=> b!4802267 (= e!2998938 e!2998939)))

(declare-fun res!2042662 () Bool)

(assert (=> b!4802267 (=> (not res!2042662) (not e!2998939))))

(assert (=> b!4802267 (= res!2042662 (not (containsKey!4040 (t!361906 (_2!31811 (h!60765 (toList!7011 lt!1956934)))) (_1!31810 (h!60764 (_2!31811 (h!60765 (toList!7011 lt!1956934))))))))))

(declare-fun b!4802268 () Bool)

(assert (=> b!4802268 (= e!2998939 (noDuplicateKeys!2364 (t!361906 (_2!31811 (h!60765 (toList!7011 lt!1956934))))))))

(assert (= (and d!1537864 (not res!2042661)) b!4802267))

(assert (= (and b!4802267 res!2042662) b!4802268))

(declare-fun m!5786692 () Bool)

(assert (=> b!4802267 m!5786692))

(declare-fun m!5786694 () Bool)

(assert (=> b!4802268 m!5786694))

(assert (=> bs!1157861 d!1537864))

(declare-fun d!1537866 () Bool)

(declare-fun res!2042666 () Bool)

(declare-fun e!2998943 () Bool)

(assert (=> d!1537866 (=> res!2042666 e!2998943)))

(assert (=> d!1537866 (= res!2042666 (and ((_ is Cons!54332) (apply!13039 lt!1956934 lt!1956940)) (= (_1!31810 (h!60764 (apply!13039 lt!1956934 lt!1956940))) key!5896)))))

(assert (=> d!1537866 (= (containsKey!4040 (apply!13039 lt!1956934 lt!1956940) key!5896) e!2998943)))

(declare-fun b!4802272 () Bool)

(declare-fun e!2998944 () Bool)

(assert (=> b!4802272 (= e!2998943 e!2998944)))

(declare-fun res!2042667 () Bool)

(assert (=> b!4802272 (=> (not res!2042667) (not e!2998944))))

(assert (=> b!4802272 (= res!2042667 ((_ is Cons!54332) (apply!13039 lt!1956934 lt!1956940)))))

(declare-fun b!4802274 () Bool)

(assert (=> b!4802274 (= e!2998944 (containsKey!4040 (t!361906 (apply!13039 lt!1956934 lt!1956940)) key!5896))))

(assert (= (and d!1537866 (not res!2042666)) b!4802272))

(assert (= (and b!4802272 res!2042667) b!4802274))

(declare-fun m!5786696 () Bool)

(assert (=> b!4802274 m!5786696))

(assert (=> b!4801851 d!1537866))

(declare-fun d!1537868 () Bool)

(declare-fun e!2998945 () Bool)

(assert (=> d!1537868 e!2998945))

(declare-fun res!2042668 () Bool)

(assert (=> d!1537868 (=> res!2042668 e!2998945)))

(declare-fun lt!1957328 () Bool)

(assert (=> d!1537868 (= res!2042668 (not lt!1957328))))

(declare-fun lt!1957329 () Bool)

(assert (=> d!1537868 (= lt!1957328 lt!1957329)))

(declare-fun lt!1957327 () Unit!140777)

(declare-fun e!2998946 () Unit!140777)

(assert (=> d!1537868 (= lt!1957327 e!2998946)))

(declare-fun c!818556 () Bool)

(assert (=> d!1537868 (= c!818556 lt!1957329)))

(assert (=> d!1537868 (= lt!1957329 (containsKey!4044 (toList!7011 lt!1956934) (hash!5024 hashF!1559 key!5896)))))

(assert (=> d!1537868 (= (contains!17986 lt!1956934 (hash!5024 hashF!1559 key!5896)) lt!1957328)))

(declare-fun b!4802276 () Bool)

(declare-fun lt!1957326 () Unit!140777)

(assert (=> b!4802276 (= e!2998946 lt!1957326)))

(assert (=> b!4802276 (= lt!1957326 (lemmaContainsKeyImpliesGetValueByKeyDefined!2194 (toList!7011 lt!1956934) (hash!5024 hashF!1559 key!5896)))))

(assert (=> b!4802276 (isDefined!10335 (getValueByKey!2403 (toList!7011 lt!1956934) (hash!5024 hashF!1559 key!5896)))))

(declare-fun b!4802277 () Bool)

(declare-fun Unit!140820 () Unit!140777)

(assert (=> b!4802277 (= e!2998946 Unit!140820)))

(declare-fun b!4802278 () Bool)

(assert (=> b!4802278 (= e!2998945 (isDefined!10335 (getValueByKey!2403 (toList!7011 lt!1956934) (hash!5024 hashF!1559 key!5896))))))

(assert (= (and d!1537868 c!818556) b!4802276))

(assert (= (and d!1537868 (not c!818556)) b!4802277))

(assert (= (and d!1537868 (not res!2042668)) b!4802278))

(assert (=> d!1537868 m!5785726))

(declare-fun m!5786698 () Bool)

(assert (=> d!1537868 m!5786698))

(assert (=> b!4802276 m!5785726))

(declare-fun m!5786700 () Bool)

(assert (=> b!4802276 m!5786700))

(assert (=> b!4802276 m!5785726))

(assert (=> b!4802276 m!5786324))

(assert (=> b!4802276 m!5786324))

(declare-fun m!5786702 () Bool)

(assert (=> b!4802276 m!5786702))

(assert (=> b!4802278 m!5785726))

(assert (=> b!4802278 m!5786324))

(assert (=> b!4802278 m!5786324))

(assert (=> b!4802278 m!5786702))

(assert (=> d!1537556 d!1537868))

(assert (=> d!1537556 d!1537600))

(declare-fun d!1537870 () Bool)

(declare-fun e!2998947 () Bool)

(assert (=> d!1537870 e!2998947))

(declare-fun res!2042669 () Bool)

(assert (=> d!1537870 (=> (not res!2042669) (not e!2998947))))

(assert (=> d!1537870 (= res!2042669 (contains!17986 lt!1956934 (hash!5024 hashF!1559 key!5896)))))

(assert (=> d!1537870 true))

(declare-fun _$5!270 () Unit!140777)

(assert (=> d!1537870 (= (choose!34709 lt!1956934 key!5896 hashF!1559) _$5!270)))

(declare-fun b!4802281 () Bool)

(assert (=> b!4802281 (= e!2998947 (isDefined!10331 (getPair!938 (apply!13039 lt!1956934 (hash!5024 hashF!1559 key!5896)) key!5896)))))

(assert (= (and d!1537870 res!2042669) b!4802281))

(assert (=> d!1537870 m!5785726))

(assert (=> d!1537870 m!5785726))

(assert (=> d!1537870 m!5786012))

(assert (=> b!4802281 m!5785726))

(assert (=> b!4802281 m!5785726))

(assert (=> b!4802281 m!5786018))

(assert (=> b!4802281 m!5786018))

(assert (=> b!4802281 m!5786020))

(assert (=> b!4802281 m!5786020))

(assert (=> b!4802281 m!5786022))

(assert (=> d!1537556 d!1537870))

(declare-fun d!1537872 () Bool)

(declare-fun res!2042670 () Bool)

(declare-fun e!2998948 () Bool)

(assert (=> d!1537872 (=> res!2042670 e!2998948)))

(assert (=> d!1537872 (= res!2042670 ((_ is Nil!54333) (toList!7011 lt!1956934)))))

(assert (=> d!1537872 (= (forall!12337 (toList!7011 lt!1956934) lambda!232578) e!2998948)))

(declare-fun b!4802282 () Bool)

(declare-fun e!2998949 () Bool)

(assert (=> b!4802282 (= e!2998948 e!2998949)))

(declare-fun res!2042671 () Bool)

(assert (=> b!4802282 (=> (not res!2042671) (not e!2998949))))

(assert (=> b!4802282 (= res!2042671 (dynLambda!22095 lambda!232578 (h!60765 (toList!7011 lt!1956934))))))

(declare-fun b!4802283 () Bool)

(assert (=> b!4802283 (= e!2998949 (forall!12337 (t!361907 (toList!7011 lt!1956934)) lambda!232578))))

(assert (= (and d!1537872 (not res!2042670)) b!4802282))

(assert (= (and b!4802282 res!2042671) b!4802283))

(declare-fun b_lambda!187735 () Bool)

(assert (=> (not b_lambda!187735) (not b!4802282)))

(declare-fun m!5786704 () Bool)

(assert (=> b!4802282 m!5786704))

(declare-fun m!5786706 () Bool)

(assert (=> b!4802283 m!5786706))

(assert (=> d!1537556 d!1537872))

(assert (=> b!4801734 d!1537684))

(assert (=> b!4801734 d!1537686))

(declare-fun bs!1158012 () Bool)

(declare-fun b!4802340 () Bool)

(assert (= bs!1158012 (and b!4802340 b!4802033)))

(declare-fun lambda!232702 () Int)

(assert (=> bs!1158012 (= (= (t!361906 (toList!7012 (extractMap!2493 (toList!7011 lt!1956934)))) (toList!7012 (extractMap!2493 (toList!7011 lt!1956934)))) (= lambda!232702 lambda!232600))))

(declare-fun bs!1158013 () Bool)

(assert (= bs!1158013 (and b!4802340 b!4802206)))

(assert (=> bs!1158013 (= (= (t!361906 (toList!7012 (extractMap!2493 (toList!7011 lt!1956934)))) (toList!7012 (extractMap!2493 (toList!7011 lm!2473)))) (= lambda!232702 lambda!232645))))

(assert (=> b!4802340 true))

(declare-fun bs!1158014 () Bool)

(declare-fun b!4802345 () Bool)

(assert (= bs!1158014 (and b!4802345 b!4802033)))

(declare-fun lambda!232703 () Int)

(assert (=> bs!1158014 (= (= (Cons!54332 (h!60764 (toList!7012 (extractMap!2493 (toList!7011 lt!1956934)))) (t!361906 (toList!7012 (extractMap!2493 (toList!7011 lt!1956934))))) (toList!7012 (extractMap!2493 (toList!7011 lt!1956934)))) (= lambda!232703 lambda!232600))))

(declare-fun bs!1158015 () Bool)

(assert (= bs!1158015 (and b!4802345 b!4802206)))

(assert (=> bs!1158015 (= (= (Cons!54332 (h!60764 (toList!7012 (extractMap!2493 (toList!7011 lt!1956934)))) (t!361906 (toList!7012 (extractMap!2493 (toList!7011 lt!1956934))))) (toList!7012 (extractMap!2493 (toList!7011 lm!2473)))) (= lambda!232703 lambda!232645))))

(declare-fun bs!1158016 () Bool)

(assert (= bs!1158016 (and b!4802345 b!4802340)))

(assert (=> bs!1158016 (= (= (Cons!54332 (h!60764 (toList!7012 (extractMap!2493 (toList!7011 lt!1956934)))) (t!361906 (toList!7012 (extractMap!2493 (toList!7011 lt!1956934))))) (t!361906 (toList!7012 (extractMap!2493 (toList!7011 lt!1956934))))) (= lambda!232703 lambda!232702))))

(assert (=> b!4802345 true))

(declare-fun bs!1158017 () Bool)

(declare-fun b!4802341 () Bool)

(assert (= bs!1158017 (and b!4802341 b!4802033)))

(declare-fun lambda!232704 () Int)

(assert (=> bs!1158017 (= lambda!232704 lambda!232600)))

(declare-fun bs!1158018 () Bool)

(assert (= bs!1158018 (and b!4802341 b!4802206)))

(assert (=> bs!1158018 (= (= (toList!7012 (extractMap!2493 (toList!7011 lt!1956934))) (toList!7012 (extractMap!2493 (toList!7011 lm!2473)))) (= lambda!232704 lambda!232645))))

(declare-fun bs!1158019 () Bool)

(assert (= bs!1158019 (and b!4802341 b!4802340)))

(assert (=> bs!1158019 (= (= (toList!7012 (extractMap!2493 (toList!7011 lt!1956934))) (t!361906 (toList!7012 (extractMap!2493 (toList!7011 lt!1956934))))) (= lambda!232704 lambda!232702))))

(declare-fun bs!1158020 () Bool)

(assert (= bs!1158020 (and b!4802341 b!4802345)))

(assert (=> bs!1158020 (= (= (toList!7012 (extractMap!2493 (toList!7011 lt!1956934))) (Cons!54332 (h!60764 (toList!7012 (extractMap!2493 (toList!7011 lt!1956934)))) (t!361906 (toList!7012 (extractMap!2493 (toList!7011 lt!1956934)))))) (= lambda!232704 lambda!232703))))

(assert (=> b!4802341 true))

(declare-fun bs!1158021 () Bool)

(declare-fun b!4802347 () Bool)

(assert (= bs!1158021 (and b!4802347 b!4802034)))

(declare-fun lambda!232705 () Int)

(assert (=> bs!1158021 (= lambda!232705 lambda!232603)))

(declare-fun bs!1158022 () Bool)

(assert (= bs!1158022 (and b!4802347 b!4802207)))

(assert (=> bs!1158022 (= lambda!232705 lambda!232646)))

(assert (=> b!4802340 false))

(declare-fun lt!1957380 () Unit!140777)

(declare-fun forallContained!4218 (List!54459 Int K!15904) Unit!140777)

(assert (=> b!4802340 (= lt!1957380 (forallContained!4218 (getKeysList!1102 (t!361906 (toList!7012 (extractMap!2493 (toList!7011 lt!1956934))))) lambda!232702 (_1!31810 (h!60764 (toList!7012 (extractMap!2493 (toList!7011 lt!1956934)))))))))

(declare-fun e!2998984 () Unit!140777)

(declare-fun Unit!140821 () Unit!140777)

(assert (=> b!4802340 (= e!2998984 Unit!140821)))

(declare-fun res!2042701 () Bool)

(declare-fun e!2998986 () Bool)

(assert (=> b!4802341 (=> (not res!2042701) (not e!2998986))))

(declare-fun lt!1957384 () List!54459)

(assert (=> b!4802341 (= res!2042701 (forall!12339 lt!1957384 lambda!232704))))

(declare-fun b!4802342 () Bool)

(declare-fun Unit!140822 () Unit!140777)

(assert (=> b!4802342 (= e!2998984 Unit!140822)))

(declare-fun b!4802343 () Bool)

(assert (=> b!4802343 false))

(declare-fun e!2998985 () Unit!140777)

(declare-fun Unit!140823 () Unit!140777)

(assert (=> b!4802343 (= e!2998985 Unit!140823)))

(declare-fun b!4802344 () Bool)

(declare-fun res!2042702 () Bool)

(assert (=> b!4802344 (=> (not res!2042702) (not e!2998986))))

(assert (=> b!4802344 (= res!2042702 (= (length!730 lt!1957384) (length!731 (toList!7012 (extractMap!2493 (toList!7011 lt!1956934))))))))

(declare-fun e!2998987 () List!54459)

(assert (=> b!4802345 (= e!2998987 (Cons!54335 (_1!31810 (h!60764 (toList!7012 (extractMap!2493 (toList!7011 lt!1956934))))) (getKeysList!1102 (t!361906 (toList!7012 (extractMap!2493 (toList!7011 lt!1956934)))))))))

(declare-fun c!818573 () Bool)

(assert (=> b!4802345 (= c!818573 (containsKey!4043 (t!361906 (toList!7012 (extractMap!2493 (toList!7011 lt!1956934)))) (_1!31810 (h!60764 (toList!7012 (extractMap!2493 (toList!7011 lt!1956934)))))))))

(declare-fun lt!1957383 () Unit!140777)

(assert (=> b!4802345 (= lt!1957383 e!2998985)))

(declare-fun c!818571 () Bool)

(assert (=> b!4802345 (= c!818571 (contains!17990 (getKeysList!1102 (t!361906 (toList!7012 (extractMap!2493 (toList!7011 lt!1956934))))) (_1!31810 (h!60764 (toList!7012 (extractMap!2493 (toList!7011 lt!1956934)))))))))

(declare-fun lt!1957381 () Unit!140777)

(assert (=> b!4802345 (= lt!1957381 e!2998984)))

(declare-fun lt!1957379 () List!54459)

(assert (=> b!4802345 (= lt!1957379 (getKeysList!1102 (t!361906 (toList!7012 (extractMap!2493 (toList!7011 lt!1956934))))))))

(declare-fun lt!1957378 () Unit!140777)

(declare-fun lemmaForallContainsAddHeadPreserves!352 (List!54456 List!54459 tuple2!57032) Unit!140777)

(assert (=> b!4802345 (= lt!1957378 (lemmaForallContainsAddHeadPreserves!352 (t!361906 (toList!7012 (extractMap!2493 (toList!7011 lt!1956934)))) lt!1957379 (h!60764 (toList!7012 (extractMap!2493 (toList!7011 lt!1956934))))))))

(assert (=> b!4802345 (forall!12339 lt!1957379 lambda!232703)))

(declare-fun lt!1957382 () Unit!140777)

(assert (=> b!4802345 (= lt!1957382 lt!1957378)))

(declare-fun b!4802346 () Bool)

(assert (=> b!4802346 (= e!2998987 Nil!54335)))

(assert (=> b!4802347 (= e!2998986 (= (content!9752 lt!1957384) (content!9752 (map!12281 (toList!7012 (extractMap!2493 (toList!7011 lt!1956934))) lambda!232705))))))

(declare-fun d!1537874 () Bool)

(assert (=> d!1537874 e!2998986))

(declare-fun res!2042700 () Bool)

(assert (=> d!1537874 (=> (not res!2042700) (not e!2998986))))

(assert (=> d!1537874 (= res!2042700 (noDuplicate!937 lt!1957384))))

(assert (=> d!1537874 (= lt!1957384 e!2998987)))

(declare-fun c!818572 () Bool)

(assert (=> d!1537874 (= c!818572 ((_ is Cons!54332) (toList!7012 (extractMap!2493 (toList!7011 lt!1956934)))))))

(assert (=> d!1537874 (invariantList!1756 (toList!7012 (extractMap!2493 (toList!7011 lt!1956934))))))

(assert (=> d!1537874 (= (getKeysList!1102 (toList!7012 (extractMap!2493 (toList!7011 lt!1956934)))) lt!1957384)))

(declare-fun b!4802348 () Bool)

(declare-fun Unit!140824 () Unit!140777)

(assert (=> b!4802348 (= e!2998985 Unit!140824)))

(assert (= (and d!1537874 c!818572) b!4802345))

(assert (= (and d!1537874 (not c!818572)) b!4802346))

(assert (= (and b!4802345 c!818573) b!4802343))

(assert (= (and b!4802345 (not c!818573)) b!4802348))

(assert (= (and b!4802345 c!818571) b!4802340))

(assert (= (and b!4802345 (not c!818571)) b!4802342))

(assert (= (and d!1537874 res!2042700) b!4802344))

(assert (= (and b!4802344 res!2042702) b!4802341))

(assert (= (and b!4802341 res!2042701) b!4802347))

(declare-fun m!5786868 () Bool)

(assert (=> d!1537874 m!5786868))

(assert (=> d!1537874 m!5786382))

(declare-fun m!5786872 () Bool)

(assert (=> b!4802344 m!5786872))

(assert (=> b!4802344 m!5786298))

(declare-fun m!5786874 () Bool)

(assert (=> b!4802345 m!5786874))

(declare-fun m!5786878 () Bool)

(assert (=> b!4802345 m!5786878))

(declare-fun m!5786880 () Bool)

(assert (=> b!4802345 m!5786880))

(declare-fun m!5786882 () Bool)

(assert (=> b!4802345 m!5786882))

(assert (=> b!4802345 m!5786874))

(declare-fun m!5786884 () Bool)

(assert (=> b!4802345 m!5786884))

(assert (=> b!4802340 m!5786874))

(assert (=> b!4802340 m!5786874))

(declare-fun m!5786886 () Bool)

(assert (=> b!4802340 m!5786886))

(declare-fun m!5786888 () Bool)

(assert (=> b!4802347 m!5786888))

(declare-fun m!5786890 () Bool)

(assert (=> b!4802347 m!5786890))

(assert (=> b!4802347 m!5786890))

(declare-fun m!5786892 () Bool)

(assert (=> b!4802347 m!5786892))

(declare-fun m!5786894 () Bool)

(assert (=> b!4802341 m!5786894))

(assert (=> b!4801736 d!1537874))

(declare-fun d!1537920 () Bool)

(assert (=> d!1537920 (= (get!18556 (getValueByKey!2403 (toList!7011 lt!1956934) lt!1956940)) (v!48522 (getValueByKey!2403 (toList!7011 lt!1956934) lt!1956940)))))

(assert (=> d!1537574 d!1537920))

(assert (=> d!1537574 d!1537818))

(declare-fun d!1537926 () Bool)

(assert (=> d!1537926 (= (isEmpty!29509 lt!1957052) (not ((_ is Some!13189) lt!1957052)))))

(assert (=> d!1537560 d!1537926))

(declare-fun d!1537928 () Bool)

(declare-fun res!2042714 () Bool)

(declare-fun e!2999000 () Bool)

(assert (=> d!1537928 (=> res!2042714 e!2999000)))

(assert (=> d!1537928 (= res!2042714 (not ((_ is Cons!54332) (apply!13039 lm!2473 lt!1956940))))))

(assert (=> d!1537928 (= (noDuplicateKeys!2364 (apply!13039 lm!2473 lt!1956940)) e!2999000)))

(declare-fun b!4802366 () Bool)

(declare-fun e!2999001 () Bool)

(assert (=> b!4802366 (= e!2999000 e!2999001)))

(declare-fun res!2042715 () Bool)

(assert (=> b!4802366 (=> (not res!2042715) (not e!2999001))))

(assert (=> b!4802366 (= res!2042715 (not (containsKey!4040 (t!361906 (apply!13039 lm!2473 lt!1956940)) (_1!31810 (h!60764 (apply!13039 lm!2473 lt!1956940))))))))

(declare-fun b!4802367 () Bool)

(assert (=> b!4802367 (= e!2999001 (noDuplicateKeys!2364 (t!361906 (apply!13039 lm!2473 lt!1956940))))))

(assert (= (and d!1537928 (not res!2042714)) b!4802366))

(assert (= (and b!4802366 res!2042715) b!4802367))

(declare-fun m!5786902 () Bool)

(assert (=> b!4802366 m!5786902))

(declare-fun m!5786904 () Bool)

(assert (=> b!4802367 m!5786904))

(assert (=> d!1537560 d!1537928))

(declare-fun d!1537930 () Bool)

(declare-fun c!818576 () Bool)

(declare-fun e!2999005 () Bool)

(assert (=> d!1537930 (= c!818576 e!2999005)))

(declare-fun res!2042716 () Bool)

(assert (=> d!1537930 (=> (not res!2042716) (not e!2999005))))

(assert (=> d!1537930 (= res!2042716 ((_ is Cons!54333) (t!361907 (toList!7011 lm!2473))))))

(declare-fun e!2999004 () V!16150)

(assert (=> d!1537930 (= (getValue!154 (t!361907 (toList!7011 lm!2473)) key!5896) e!2999004)))

(declare-fun b!4802374 () Bool)

(assert (=> b!4802374 (= e!2999005 (containsKey!4040 (_2!31811 (h!60765 (t!361907 (toList!7011 lm!2473)))) key!5896))))

(declare-fun b!4802372 () Bool)

(assert (=> b!4802372 (= e!2999004 (_2!31810 (get!18555 (getPair!938 (_2!31811 (h!60765 (t!361907 (toList!7011 lm!2473)))) key!5896))))))

(declare-fun b!4802373 () Bool)

(assert (=> b!4802373 (= e!2999004 (getValue!154 (t!361907 (t!361907 (toList!7011 lm!2473))) key!5896))))

(assert (= (and d!1537930 res!2042716) b!4802374))

(assert (= (and d!1537930 c!818576) b!4802372))

(assert (= (and d!1537930 (not c!818576)) b!4802373))

(declare-fun m!5786906 () Bool)

(assert (=> b!4802374 m!5786906))

(declare-fun m!5786908 () Bool)

(assert (=> b!4802372 m!5786908))

(assert (=> b!4802372 m!5786908))

(declare-fun m!5786910 () Bool)

(assert (=> b!4802372 m!5786910))

(declare-fun m!5786912 () Bool)

(assert (=> b!4802373 m!5786912))

(assert (=> b!4801884 d!1537930))

(declare-fun d!1537932 () Bool)

(declare-fun res!2042719 () Bool)

(declare-fun e!2999009 () Bool)

(assert (=> d!1537932 (=> res!2042719 e!2999009)))

(declare-fun e!2999010 () Bool)

(assert (=> d!1537932 (= res!2042719 e!2999010)))

(declare-fun res!2042718 () Bool)

(assert (=> d!1537932 (=> (not res!2042718) (not e!2999010))))

(assert (=> d!1537932 (= res!2042718 ((_ is Cons!54333) (t!361907 (toList!7011 lm!2473))))))

(assert (=> d!1537932 (= (containsKeyBiggerList!608 (t!361907 (toList!7011 lm!2473)) key!5896) e!2999009)))

(declare-fun b!4802377 () Bool)

(assert (=> b!4802377 (= e!2999010 (containsKey!4040 (_2!31811 (h!60765 (t!361907 (toList!7011 lm!2473)))) key!5896))))

(declare-fun b!4802378 () Bool)

(declare-fun e!2999008 () Bool)

(assert (=> b!4802378 (= e!2999009 e!2999008)))

(declare-fun res!2042717 () Bool)

(assert (=> b!4802378 (=> (not res!2042717) (not e!2999008))))

(assert (=> b!4802378 (= res!2042717 ((_ is Cons!54333) (t!361907 (toList!7011 lm!2473))))))

(declare-fun b!4802379 () Bool)

(assert (=> b!4802379 (= e!2999008 (containsKeyBiggerList!608 (t!361907 (t!361907 (toList!7011 lm!2473))) key!5896))))

(assert (= (and d!1537932 res!2042718) b!4802377))

(assert (= (and d!1537932 (not res!2042719)) b!4802378))

(assert (= (and b!4802378 res!2042717) b!4802379))

(assert (=> b!4802377 m!5786906))

(declare-fun m!5786914 () Bool)

(assert (=> b!4802379 m!5786914))

(assert (=> b!4801881 d!1537932))

(declare-fun d!1537934 () Bool)

(declare-fun res!2042720 () Bool)

(declare-fun e!2999011 () Bool)

(assert (=> d!1537934 (=> res!2042720 e!2999011)))

(assert (=> d!1537934 (= res!2042720 ((_ is Nil!54333) (toList!7011 lt!1956934)))))

(assert (=> d!1537934 (= (forall!12337 (toList!7011 lt!1956934) lambda!232544) e!2999011)))

(declare-fun b!4802380 () Bool)

(declare-fun e!2999012 () Bool)

(assert (=> b!4802380 (= e!2999011 e!2999012)))

(declare-fun res!2042721 () Bool)

(assert (=> b!4802380 (=> (not res!2042721) (not e!2999012))))

(assert (=> b!4802380 (= res!2042721 (dynLambda!22095 lambda!232544 (h!60765 (toList!7011 lt!1956934))))))

(declare-fun b!4802381 () Bool)

(assert (=> b!4802381 (= e!2999012 (forall!12337 (t!361907 (toList!7011 lt!1956934)) lambda!232544))))

(assert (= (and d!1537934 (not res!2042720)) b!4802380))

(assert (= (and b!4802380 res!2042721) b!4802381))

(declare-fun b_lambda!187771 () Bool)

(assert (=> (not b_lambda!187771) (not b!4802380)))

(declare-fun m!5786916 () Bool)

(assert (=> b!4802380 m!5786916))

(declare-fun m!5786920 () Bool)

(assert (=> b!4802381 m!5786920))

(assert (=> d!1537482 d!1537934))

(assert (=> b!4801826 d!1537834))

(declare-fun d!1537942 () Bool)

(declare-fun noDuplicatedKeys!455 (List!54456) Bool)

(assert (=> d!1537942 (= (invariantList!1756 (toList!7012 lt!1957043)) (noDuplicatedKeys!455 (toList!7012 lt!1957043)))))

(declare-fun bs!1158033 () Bool)

(assert (= bs!1158033 d!1537942))

(declare-fun m!5786924 () Bool)

(assert (=> bs!1158033 m!5786924))

(assert (=> d!1537514 d!1537942))

(declare-fun d!1537956 () Bool)

(declare-fun res!2042722 () Bool)

(declare-fun e!2999013 () Bool)

(assert (=> d!1537956 (=> res!2042722 e!2999013)))

(assert (=> d!1537956 (= res!2042722 ((_ is Nil!54333) (toList!7011 lt!1956934)))))

(assert (=> d!1537956 (= (forall!12337 (toList!7011 lt!1956934) lambda!232572) e!2999013)))

(declare-fun b!4802382 () Bool)

(declare-fun e!2999014 () Bool)

(assert (=> b!4802382 (= e!2999013 e!2999014)))

(declare-fun res!2042723 () Bool)

(assert (=> b!4802382 (=> (not res!2042723) (not e!2999014))))

(assert (=> b!4802382 (= res!2042723 (dynLambda!22095 lambda!232572 (h!60765 (toList!7011 lt!1956934))))))

(declare-fun b!4802383 () Bool)

(assert (=> b!4802383 (= e!2999014 (forall!12337 (t!361907 (toList!7011 lt!1956934)) lambda!232572))))

(assert (= (and d!1537956 (not res!2042722)) b!4802382))

(assert (= (and b!4802382 res!2042723) b!4802383))

(declare-fun b_lambda!187773 () Bool)

(assert (=> (not b_lambda!187773) (not b!4802382)))

(declare-fun m!5786930 () Bool)

(assert (=> b!4802382 m!5786930))

(declare-fun m!5786932 () Bool)

(assert (=> b!4802383 m!5786932))

(assert (=> d!1537514 d!1537956))

(assert (=> d!1537586 d!1537840))

(declare-fun d!1537964 () Bool)

(assert (=> d!1537964 (= (isDefined!10331 lt!1957052) (not (isEmpty!29509 lt!1957052)))))

(declare-fun bs!1158037 () Bool)

(assert (= bs!1158037 d!1537964))

(assert (=> bs!1158037 m!5786026))

(assert (=> b!4801828 d!1537964))

(declare-fun d!1537966 () Bool)

(assert (=> d!1537966 (= (get!18556 (getValueByKey!2403 (toList!7011 lm!2473) lt!1956940)) (v!48522 (getValueByKey!2403 (toList!7011 lm!2473) lt!1956940)))))

(assert (=> d!1537562 d!1537966))

(assert (=> d!1537562 d!1537826))

(declare-fun d!1537968 () Bool)

(declare-fun lt!1957387 () Bool)

(assert (=> d!1537968 (= lt!1957387 (select (content!9752 e!2998557) key!5896))))

(declare-fun e!2999015 () Bool)

(assert (=> d!1537968 (= lt!1957387 e!2999015)))

(declare-fun res!2042724 () Bool)

(assert (=> d!1537968 (=> (not res!2042724) (not e!2999015))))

(assert (=> d!1537968 (= res!2042724 ((_ is Cons!54335) e!2998557))))

(assert (=> d!1537968 (= (contains!17990 e!2998557 key!5896) lt!1957387)))

(declare-fun b!4802384 () Bool)

(declare-fun e!2999016 () Bool)

(assert (=> b!4802384 (= e!2999015 e!2999016)))

(declare-fun res!2042725 () Bool)

(assert (=> b!4802384 (=> res!2042725 e!2999016)))

(assert (=> b!4802384 (= res!2042725 (= (h!60767 e!2998557) key!5896))))

(declare-fun b!4802385 () Bool)

(assert (=> b!4802385 (= e!2999016 (contains!17990 (t!361909 e!2998557) key!5896))))

(assert (= (and d!1537968 res!2042724) b!4802384))

(assert (= (and b!4802384 (not res!2042725)) b!4802385))

(declare-fun m!5786934 () Bool)

(assert (=> d!1537968 m!5786934))

(declare-fun m!5786936 () Bool)

(assert (=> d!1537968 m!5786936))

(declare-fun m!5786938 () Bool)

(assert (=> b!4802385 m!5786938))

(assert (=> bm!335397 d!1537968))

(declare-fun b!4802386 () Bool)

(declare-fun res!2042727 () Bool)

(declare-fun e!2999018 () Bool)

(assert (=> b!4802386 (=> (not res!2042727) (not e!2999018))))

(declare-fun lt!1957388 () Option!13190)

(assert (=> b!4802386 (= res!2042727 (= (_1!31810 (get!18555 lt!1957388)) key!5896))))

(declare-fun b!4802387 () Bool)

(declare-fun e!2999021 () Option!13190)

(assert (=> b!4802387 (= e!2999021 None!13189)))

(declare-fun b!4802388 () Bool)

(declare-fun e!2999020 () Bool)

(assert (=> b!4802388 (= e!2999020 e!2999018)))

(declare-fun res!2042726 () Bool)

(assert (=> b!4802388 (=> (not res!2042726) (not e!2999018))))

(assert (=> b!4802388 (= res!2042726 (isDefined!10331 lt!1957388))))

(declare-fun b!4802389 () Bool)

(declare-fun e!2999019 () Option!13190)

(assert (=> b!4802389 (= e!2999019 e!2999021)))

(declare-fun c!818578 () Bool)

(assert (=> b!4802389 (= c!818578 ((_ is Cons!54332) (t!361906 (apply!13039 lt!1956934 lt!1956940))))))

(declare-fun d!1537970 () Bool)

(assert (=> d!1537970 e!2999020))

(declare-fun res!2042729 () Bool)

(assert (=> d!1537970 (=> res!2042729 e!2999020)))

(declare-fun e!2999017 () Bool)

(assert (=> d!1537970 (= res!2042729 e!2999017)))

(declare-fun res!2042728 () Bool)

(assert (=> d!1537970 (=> (not res!2042728) (not e!2999017))))

(assert (=> d!1537970 (= res!2042728 (isEmpty!29509 lt!1957388))))

(assert (=> d!1537970 (= lt!1957388 e!2999019)))

(declare-fun c!818577 () Bool)

(assert (=> d!1537970 (= c!818577 (and ((_ is Cons!54332) (t!361906 (apply!13039 lt!1956934 lt!1956940))) (= (_1!31810 (h!60764 (t!361906 (apply!13039 lt!1956934 lt!1956940)))) key!5896)))))

(assert (=> d!1537970 (noDuplicateKeys!2364 (t!361906 (apply!13039 lt!1956934 lt!1956940)))))

(assert (=> d!1537970 (= (getPair!938 (t!361906 (apply!13039 lt!1956934 lt!1956940)) key!5896) lt!1957388)))

(declare-fun b!4802390 () Bool)

(assert (=> b!4802390 (= e!2999018 (contains!17991 (t!361906 (apply!13039 lt!1956934 lt!1956940)) (get!18555 lt!1957388)))))

(declare-fun b!4802391 () Bool)

(assert (=> b!4802391 (= e!2999017 (not (containsKey!4040 (t!361906 (apply!13039 lt!1956934 lt!1956940)) key!5896)))))

(declare-fun b!4802392 () Bool)

(assert (=> b!4802392 (= e!2999019 (Some!13189 (h!60764 (t!361906 (apply!13039 lt!1956934 lt!1956940)))))))

(declare-fun b!4802393 () Bool)

(assert (=> b!4802393 (= e!2999021 (getPair!938 (t!361906 (t!361906 (apply!13039 lt!1956934 lt!1956940))) key!5896))))

(assert (= (and d!1537970 c!818577) b!4802392))

(assert (= (and d!1537970 (not c!818577)) b!4802389))

(assert (= (and b!4802389 c!818578) b!4802393))

(assert (= (and b!4802389 (not c!818578)) b!4802387))

(assert (= (and d!1537970 res!2042728) b!4802391))

(assert (= (and d!1537970 (not res!2042729)) b!4802388))

(assert (= (and b!4802388 res!2042726) b!4802386))

(assert (= (and b!4802386 res!2042727) b!4802390))

(declare-fun m!5786940 () Bool)

(assert (=> d!1537970 m!5786940))

(assert (=> d!1537970 m!5786416))

(declare-fun m!5786942 () Bool)

(assert (=> b!4802390 m!5786942))

(assert (=> b!4802390 m!5786942))

(declare-fun m!5786944 () Bool)

(assert (=> b!4802390 m!5786944))

(assert (=> b!4802386 m!5786942))

(declare-fun m!5786946 () Bool)

(assert (=> b!4802388 m!5786946))

(declare-fun m!5786948 () Bool)

(assert (=> b!4802393 m!5786948))

(assert (=> b!4802391 m!5786696))

(assert (=> b!4801853 d!1537970))

(assert (=> b!4801879 d!1537568))

(assert (=> d!1537582 d!1537504))

(assert (=> d!1537582 d!1537514))

(declare-fun d!1537972 () Bool)

(assert (=> d!1537972 (contains!17987 (extractMap!2493 (toList!7011 lt!1956934)) key!5896)))

(assert (=> d!1537972 true))

(declare-fun _$34!954 () Unit!140777)

(assert (=> d!1537972 (= (choose!34710 lt!1956934 key!5896 hashF!1559) _$34!954)))

(declare-fun bs!1158038 () Bool)

(assert (= bs!1158038 d!1537972))

(assert (=> bs!1158038 m!5785746))

(assert (=> bs!1158038 m!5785746))

(assert (=> bs!1158038 m!5785748))

(assert (=> d!1537582 d!1537972))

(declare-fun d!1537974 () Bool)

(declare-fun res!2042730 () Bool)

(declare-fun e!2999022 () Bool)

(assert (=> d!1537974 (=> res!2042730 e!2999022)))

(assert (=> d!1537974 (= res!2042730 ((_ is Nil!54333) (toList!7011 lt!1956934)))))

(assert (=> d!1537974 (= (forall!12337 (toList!7011 lt!1956934) lambda!232581) e!2999022)))

(declare-fun b!4802394 () Bool)

(declare-fun e!2999023 () Bool)

(assert (=> b!4802394 (= e!2999022 e!2999023)))

(declare-fun res!2042731 () Bool)

(assert (=> b!4802394 (=> (not res!2042731) (not e!2999023))))

(assert (=> b!4802394 (= res!2042731 (dynLambda!22095 lambda!232581 (h!60765 (toList!7011 lt!1956934))))))

(declare-fun b!4802395 () Bool)

(assert (=> b!4802395 (= e!2999023 (forall!12337 (t!361907 (toList!7011 lt!1956934)) lambda!232581))))

(assert (= (and d!1537974 (not res!2042730)) b!4802394))

(assert (= (and b!4802394 res!2042731) b!4802395))

(declare-fun b_lambda!187775 () Bool)

(assert (=> (not b_lambda!187775) (not b!4802394)))

(declare-fun m!5786950 () Bool)

(assert (=> b!4802394 m!5786950))

(declare-fun m!5786952 () Bool)

(assert (=> b!4802395 m!5786952))

(assert (=> d!1537582 d!1537974))

(declare-fun d!1537976 () Bool)

(assert (=> d!1537976 (= (isDefined!10331 (getPair!938 (apply!13039 lm!2473 (hash!5024 hashF!1559 key!5896)) key!5896)) (not (isEmpty!29509 (getPair!938 (apply!13039 lm!2473 (hash!5024 hashF!1559 key!5896)) key!5896))))))

(declare-fun bs!1158039 () Bool)

(assert (= bs!1158039 d!1537976))

(assert (=> bs!1158039 m!5786138))

(declare-fun m!5786954 () Bool)

(assert (=> bs!1158039 m!5786954))

(assert (=> b!4801882 d!1537976))

(declare-fun b!4802396 () Bool)

(declare-fun res!2042733 () Bool)

(declare-fun e!2999025 () Bool)

(assert (=> b!4802396 (=> (not res!2042733) (not e!2999025))))

(declare-fun lt!1957389 () Option!13190)

(assert (=> b!4802396 (= res!2042733 (= (_1!31810 (get!18555 lt!1957389)) key!5896))))

(declare-fun b!4802397 () Bool)

(declare-fun e!2999028 () Option!13190)

(assert (=> b!4802397 (= e!2999028 None!13189)))

(declare-fun b!4802398 () Bool)

(declare-fun e!2999027 () Bool)

(assert (=> b!4802398 (= e!2999027 e!2999025)))

(declare-fun res!2042732 () Bool)

(assert (=> b!4802398 (=> (not res!2042732) (not e!2999025))))

(assert (=> b!4802398 (= res!2042732 (isDefined!10331 lt!1957389))))

(declare-fun b!4802399 () Bool)

(declare-fun e!2999026 () Option!13190)

(assert (=> b!4802399 (= e!2999026 e!2999028)))

(declare-fun c!818580 () Bool)

(assert (=> b!4802399 (= c!818580 ((_ is Cons!54332) (apply!13039 lm!2473 (hash!5024 hashF!1559 key!5896))))))

(declare-fun d!1537978 () Bool)

(assert (=> d!1537978 e!2999027))

(declare-fun res!2042735 () Bool)

(assert (=> d!1537978 (=> res!2042735 e!2999027)))

(declare-fun e!2999024 () Bool)

(assert (=> d!1537978 (= res!2042735 e!2999024)))

(declare-fun res!2042734 () Bool)

(assert (=> d!1537978 (=> (not res!2042734) (not e!2999024))))

(assert (=> d!1537978 (= res!2042734 (isEmpty!29509 lt!1957389))))

(assert (=> d!1537978 (= lt!1957389 e!2999026)))

(declare-fun c!818579 () Bool)

(assert (=> d!1537978 (= c!818579 (and ((_ is Cons!54332) (apply!13039 lm!2473 (hash!5024 hashF!1559 key!5896))) (= (_1!31810 (h!60764 (apply!13039 lm!2473 (hash!5024 hashF!1559 key!5896)))) key!5896)))))

(assert (=> d!1537978 (noDuplicateKeys!2364 (apply!13039 lm!2473 (hash!5024 hashF!1559 key!5896)))))

(assert (=> d!1537978 (= (getPair!938 (apply!13039 lm!2473 (hash!5024 hashF!1559 key!5896)) key!5896) lt!1957389)))

(declare-fun b!4802400 () Bool)

(assert (=> b!4802400 (= e!2999025 (contains!17991 (apply!13039 lm!2473 (hash!5024 hashF!1559 key!5896)) (get!18555 lt!1957389)))))

(declare-fun b!4802401 () Bool)

(assert (=> b!4802401 (= e!2999024 (not (containsKey!4040 (apply!13039 lm!2473 (hash!5024 hashF!1559 key!5896)) key!5896)))))

(declare-fun b!4802402 () Bool)

(assert (=> b!4802402 (= e!2999026 (Some!13189 (h!60764 (apply!13039 lm!2473 (hash!5024 hashF!1559 key!5896)))))))

(declare-fun b!4802403 () Bool)

(assert (=> b!4802403 (= e!2999028 (getPair!938 (t!361906 (apply!13039 lm!2473 (hash!5024 hashF!1559 key!5896))) key!5896))))

(assert (= (and d!1537978 c!818579) b!4802402))

(assert (= (and d!1537978 (not c!818579)) b!4802399))

(assert (= (and b!4802399 c!818580) b!4802403))

(assert (= (and b!4802399 (not c!818580)) b!4802397))

(assert (= (and d!1537978 res!2042734) b!4802401))

(assert (= (and d!1537978 (not res!2042735)) b!4802398))

(assert (= (and b!4802398 res!2042732) b!4802396))

(assert (= (and b!4802396 res!2042733) b!4802400))

(declare-fun m!5786956 () Bool)

(assert (=> d!1537978 m!5786956))

(assert (=> d!1537978 m!5786136))

(declare-fun m!5786958 () Bool)

(assert (=> d!1537978 m!5786958))

(declare-fun m!5786960 () Bool)

(assert (=> b!4802400 m!5786960))

(assert (=> b!4802400 m!5786136))

(assert (=> b!4802400 m!5786960))

(declare-fun m!5786962 () Bool)

(assert (=> b!4802400 m!5786962))

(assert (=> b!4802396 m!5786960))

(declare-fun m!5786964 () Bool)

(assert (=> b!4802398 m!5786964))

(declare-fun m!5786966 () Bool)

(assert (=> b!4802403 m!5786966))

(assert (=> b!4802401 m!5786136))

(declare-fun m!5786968 () Bool)

(assert (=> b!4802401 m!5786968))

(assert (=> b!4801882 d!1537978))

(declare-fun d!1537980 () Bool)

(assert (=> d!1537980 (= (apply!13039 lm!2473 (hash!5024 hashF!1559 key!5896)) (get!18556 (getValueByKey!2403 (toList!7011 lm!2473) (hash!5024 hashF!1559 key!5896))))))

(declare-fun bs!1158040 () Bool)

(assert (= bs!1158040 d!1537980))

(assert (=> bs!1158040 m!5785726))

(assert (=> bs!1158040 m!5786334))

(assert (=> bs!1158040 m!5786334))

(declare-fun m!5786970 () Bool)

(assert (=> bs!1158040 m!5786970))

(assert (=> b!4801882 d!1537980))

(assert (=> b!4801882 d!1537600))

(declare-fun d!1537982 () Bool)

(declare-fun res!2042736 () Bool)

(declare-fun e!2999029 () Bool)

(assert (=> d!1537982 (=> res!2042736 e!2999029)))

(assert (=> d!1537982 (= res!2042736 (and ((_ is Cons!54332) (apply!13039 lm!2473 lt!1956940)) (= (_1!31810 (h!60764 (apply!13039 lm!2473 lt!1956940))) key!5896)))))

(assert (=> d!1537982 (= (containsKey!4040 (apply!13039 lm!2473 lt!1956940) key!5896) e!2999029)))

(declare-fun b!4802404 () Bool)

(declare-fun e!2999030 () Bool)

(assert (=> b!4802404 (= e!2999029 e!2999030)))

(declare-fun res!2042737 () Bool)

(assert (=> b!4802404 (=> (not res!2042737) (not e!2999030))))

(assert (=> b!4802404 (= res!2042737 ((_ is Cons!54332) (apply!13039 lm!2473 lt!1956940)))))

(declare-fun b!4802405 () Bool)

(assert (=> b!4802405 (= e!2999030 (containsKey!4040 (t!361906 (apply!13039 lm!2473 lt!1956940)) key!5896))))

(assert (= (and d!1537982 (not res!2042736)) b!4802404))

(assert (= (and b!4802404 res!2042737) b!4802405))

(declare-fun m!5786972 () Bool)

(assert (=> b!4802405 m!5786972))

(assert (=> b!4801831 d!1537982))

(declare-fun b!4802406 () Bool)

(declare-fun res!2042739 () Bool)

(declare-fun e!2999032 () Bool)

(assert (=> b!4802406 (=> (not res!2042739) (not e!2999032))))

(declare-fun lt!1957390 () Option!13190)

(assert (=> b!4802406 (= res!2042739 (= (_1!31810 (get!18555 lt!1957390)) key!5896))))

(declare-fun b!4802407 () Bool)

(declare-fun e!2999035 () Option!13190)

(assert (=> b!4802407 (= e!2999035 None!13189)))

(declare-fun b!4802408 () Bool)

(declare-fun e!2999034 () Bool)

(assert (=> b!4802408 (= e!2999034 e!2999032)))

(declare-fun res!2042738 () Bool)

(assert (=> b!4802408 (=> (not res!2042738) (not e!2999032))))

(assert (=> b!4802408 (= res!2042738 (isDefined!10331 lt!1957390))))

(declare-fun b!4802409 () Bool)

(declare-fun e!2999033 () Option!13190)

(assert (=> b!4802409 (= e!2999033 e!2999035)))

(declare-fun c!818582 () Bool)

(assert (=> b!4802409 (= c!818582 ((_ is Cons!54332) (t!361906 (apply!13039 lm!2473 lt!1956940))))))

(declare-fun d!1537984 () Bool)

(assert (=> d!1537984 e!2999034))

(declare-fun res!2042741 () Bool)

(assert (=> d!1537984 (=> res!2042741 e!2999034)))

(declare-fun e!2999031 () Bool)

(assert (=> d!1537984 (= res!2042741 e!2999031)))

(declare-fun res!2042740 () Bool)

(assert (=> d!1537984 (=> (not res!2042740) (not e!2999031))))

(assert (=> d!1537984 (= res!2042740 (isEmpty!29509 lt!1957390))))

(assert (=> d!1537984 (= lt!1957390 e!2999033)))

(declare-fun c!818581 () Bool)

(assert (=> d!1537984 (= c!818581 (and ((_ is Cons!54332) (t!361906 (apply!13039 lm!2473 lt!1956940))) (= (_1!31810 (h!60764 (t!361906 (apply!13039 lm!2473 lt!1956940)))) key!5896)))))

(assert (=> d!1537984 (noDuplicateKeys!2364 (t!361906 (apply!13039 lm!2473 lt!1956940)))))

(assert (=> d!1537984 (= (getPair!938 (t!361906 (apply!13039 lm!2473 lt!1956940)) key!5896) lt!1957390)))

(declare-fun b!4802410 () Bool)

(assert (=> b!4802410 (= e!2999032 (contains!17991 (t!361906 (apply!13039 lm!2473 lt!1956940)) (get!18555 lt!1957390)))))

(declare-fun b!4802411 () Bool)

(assert (=> b!4802411 (= e!2999031 (not (containsKey!4040 (t!361906 (apply!13039 lm!2473 lt!1956940)) key!5896)))))

(declare-fun b!4802412 () Bool)

(assert (=> b!4802412 (= e!2999033 (Some!13189 (h!60764 (t!361906 (apply!13039 lm!2473 lt!1956940)))))))

(declare-fun b!4802413 () Bool)

(assert (=> b!4802413 (= e!2999035 (getPair!938 (t!361906 (t!361906 (apply!13039 lm!2473 lt!1956940))) key!5896))))

(assert (= (and d!1537984 c!818581) b!4802412))

(assert (= (and d!1537984 (not c!818581)) b!4802409))

(assert (= (and b!4802409 c!818582) b!4802413))

(assert (= (and b!4802409 (not c!818582)) b!4802407))

(assert (= (and d!1537984 res!2042740) b!4802411))

(assert (= (and d!1537984 (not res!2042741)) b!4802408))

(assert (= (and b!4802408 res!2042738) b!4802406))

(assert (= (and b!4802406 res!2042739) b!4802410))

(declare-fun m!5786974 () Bool)

(assert (=> d!1537984 m!5786974))

(assert (=> d!1537984 m!5786904))

(declare-fun m!5786976 () Bool)

(assert (=> b!4802410 m!5786976))

(assert (=> b!4802410 m!5786976))

(declare-fun m!5786978 () Bool)

(assert (=> b!4802410 m!5786978))

(assert (=> b!4802406 m!5786976))

(declare-fun m!5786980 () Bool)

(assert (=> b!4802408 m!5786980))

(declare-fun m!5786982 () Bool)

(assert (=> b!4802413 m!5786982))

(assert (=> b!4802411 m!5786972))

(assert (=> b!4801833 d!1537984))

(declare-fun bs!1158041 () Bool)

(declare-fun b!4802414 () Bool)

(assert (= bs!1158041 (and b!4802414 b!4802340)))

(declare-fun lambda!232706 () Int)

(assert (=> bs!1158041 (= (= (t!361906 (toList!7012 (extractMap!2493 (toList!7011 lm!2473)))) (t!361906 (toList!7012 (extractMap!2493 (toList!7011 lt!1956934))))) (= lambda!232706 lambda!232702))))

(declare-fun bs!1158042 () Bool)

(assert (= bs!1158042 (and b!4802414 b!4802033)))

(assert (=> bs!1158042 (= (= (t!361906 (toList!7012 (extractMap!2493 (toList!7011 lm!2473)))) (toList!7012 (extractMap!2493 (toList!7011 lt!1956934)))) (= lambda!232706 lambda!232600))))

(declare-fun bs!1158043 () Bool)

(assert (= bs!1158043 (and b!4802414 b!4802345)))

(assert (=> bs!1158043 (= (= (t!361906 (toList!7012 (extractMap!2493 (toList!7011 lm!2473)))) (Cons!54332 (h!60764 (toList!7012 (extractMap!2493 (toList!7011 lt!1956934)))) (t!361906 (toList!7012 (extractMap!2493 (toList!7011 lt!1956934)))))) (= lambda!232706 lambda!232703))))

(declare-fun bs!1158044 () Bool)

(assert (= bs!1158044 (and b!4802414 b!4802206)))

(assert (=> bs!1158044 (= (= (t!361906 (toList!7012 (extractMap!2493 (toList!7011 lm!2473)))) (toList!7012 (extractMap!2493 (toList!7011 lm!2473)))) (= lambda!232706 lambda!232645))))

(declare-fun bs!1158045 () Bool)

(assert (= bs!1158045 (and b!4802414 b!4802341)))

(assert (=> bs!1158045 (= (= (t!361906 (toList!7012 (extractMap!2493 (toList!7011 lm!2473)))) (toList!7012 (extractMap!2493 (toList!7011 lt!1956934)))) (= lambda!232706 lambda!232704))))

(assert (=> b!4802414 true))

(declare-fun bs!1158046 () Bool)

(declare-fun b!4802419 () Bool)

(assert (= bs!1158046 (and b!4802419 b!4802340)))

(declare-fun lambda!232707 () Int)

(assert (=> bs!1158046 (= (= (Cons!54332 (h!60764 (toList!7012 (extractMap!2493 (toList!7011 lm!2473)))) (t!361906 (toList!7012 (extractMap!2493 (toList!7011 lm!2473))))) (t!361906 (toList!7012 (extractMap!2493 (toList!7011 lt!1956934))))) (= lambda!232707 lambda!232702))))

(declare-fun bs!1158047 () Bool)

(assert (= bs!1158047 (and b!4802419 b!4802033)))

(assert (=> bs!1158047 (= (= (Cons!54332 (h!60764 (toList!7012 (extractMap!2493 (toList!7011 lm!2473)))) (t!361906 (toList!7012 (extractMap!2493 (toList!7011 lm!2473))))) (toList!7012 (extractMap!2493 (toList!7011 lt!1956934)))) (= lambda!232707 lambda!232600))))

(declare-fun bs!1158048 () Bool)

(assert (= bs!1158048 (and b!4802419 b!4802345)))

(assert (=> bs!1158048 (= (= (Cons!54332 (h!60764 (toList!7012 (extractMap!2493 (toList!7011 lm!2473)))) (t!361906 (toList!7012 (extractMap!2493 (toList!7011 lm!2473))))) (Cons!54332 (h!60764 (toList!7012 (extractMap!2493 (toList!7011 lt!1956934)))) (t!361906 (toList!7012 (extractMap!2493 (toList!7011 lt!1956934)))))) (= lambda!232707 lambda!232703))))

(declare-fun bs!1158049 () Bool)

(assert (= bs!1158049 (and b!4802419 b!4802206)))

(assert (=> bs!1158049 (= (= (Cons!54332 (h!60764 (toList!7012 (extractMap!2493 (toList!7011 lm!2473)))) (t!361906 (toList!7012 (extractMap!2493 (toList!7011 lm!2473))))) (toList!7012 (extractMap!2493 (toList!7011 lm!2473)))) (= lambda!232707 lambda!232645))))

(declare-fun bs!1158050 () Bool)

(assert (= bs!1158050 (and b!4802419 b!4802341)))

(assert (=> bs!1158050 (= (= (Cons!54332 (h!60764 (toList!7012 (extractMap!2493 (toList!7011 lm!2473)))) (t!361906 (toList!7012 (extractMap!2493 (toList!7011 lm!2473))))) (toList!7012 (extractMap!2493 (toList!7011 lt!1956934)))) (= lambda!232707 lambda!232704))))

(declare-fun bs!1158051 () Bool)

(assert (= bs!1158051 (and b!4802419 b!4802414)))

(assert (=> bs!1158051 (= (= (Cons!54332 (h!60764 (toList!7012 (extractMap!2493 (toList!7011 lm!2473)))) (t!361906 (toList!7012 (extractMap!2493 (toList!7011 lm!2473))))) (t!361906 (toList!7012 (extractMap!2493 (toList!7011 lm!2473))))) (= lambda!232707 lambda!232706))))

(assert (=> b!4802419 true))

(declare-fun bs!1158052 () Bool)

(declare-fun b!4802415 () Bool)

(assert (= bs!1158052 (and b!4802415 b!4802340)))

(declare-fun lambda!232708 () Int)

(assert (=> bs!1158052 (= (= (toList!7012 (extractMap!2493 (toList!7011 lm!2473))) (t!361906 (toList!7012 (extractMap!2493 (toList!7011 lt!1956934))))) (= lambda!232708 lambda!232702))))

(declare-fun bs!1158053 () Bool)

(assert (= bs!1158053 (and b!4802415 b!4802033)))

(assert (=> bs!1158053 (= (= (toList!7012 (extractMap!2493 (toList!7011 lm!2473))) (toList!7012 (extractMap!2493 (toList!7011 lt!1956934)))) (= lambda!232708 lambda!232600))))

(declare-fun bs!1158054 () Bool)

(assert (= bs!1158054 (and b!4802415 b!4802419)))

(assert (=> bs!1158054 (= (= (toList!7012 (extractMap!2493 (toList!7011 lm!2473))) (Cons!54332 (h!60764 (toList!7012 (extractMap!2493 (toList!7011 lm!2473)))) (t!361906 (toList!7012 (extractMap!2493 (toList!7011 lm!2473)))))) (= lambda!232708 lambda!232707))))

(declare-fun bs!1158055 () Bool)

(assert (= bs!1158055 (and b!4802415 b!4802345)))

(assert (=> bs!1158055 (= (= (toList!7012 (extractMap!2493 (toList!7011 lm!2473))) (Cons!54332 (h!60764 (toList!7012 (extractMap!2493 (toList!7011 lt!1956934)))) (t!361906 (toList!7012 (extractMap!2493 (toList!7011 lt!1956934)))))) (= lambda!232708 lambda!232703))))

(declare-fun bs!1158056 () Bool)

(assert (= bs!1158056 (and b!4802415 b!4802206)))

(assert (=> bs!1158056 (= lambda!232708 lambda!232645)))

(declare-fun bs!1158057 () Bool)

(assert (= bs!1158057 (and b!4802415 b!4802341)))

(assert (=> bs!1158057 (= (= (toList!7012 (extractMap!2493 (toList!7011 lm!2473))) (toList!7012 (extractMap!2493 (toList!7011 lt!1956934)))) (= lambda!232708 lambda!232704))))

(declare-fun bs!1158058 () Bool)

(assert (= bs!1158058 (and b!4802415 b!4802414)))

(assert (=> bs!1158058 (= (= (toList!7012 (extractMap!2493 (toList!7011 lm!2473))) (t!361906 (toList!7012 (extractMap!2493 (toList!7011 lm!2473))))) (= lambda!232708 lambda!232706))))

(assert (=> b!4802415 true))

(declare-fun bs!1158059 () Bool)

(declare-fun b!4802421 () Bool)

(assert (= bs!1158059 (and b!4802421 b!4802034)))

(declare-fun lambda!232709 () Int)

(assert (=> bs!1158059 (= lambda!232709 lambda!232603)))

(declare-fun bs!1158060 () Bool)

(assert (= bs!1158060 (and b!4802421 b!4802207)))

(assert (=> bs!1158060 (= lambda!232709 lambda!232646)))

(declare-fun bs!1158061 () Bool)

(assert (= bs!1158061 (and b!4802421 b!4802347)))

(assert (=> bs!1158061 (= lambda!232709 lambda!232705)))

(assert (=> b!4802414 false))

(declare-fun lt!1957393 () Unit!140777)

(assert (=> b!4802414 (= lt!1957393 (forallContained!4218 (getKeysList!1102 (t!361906 (toList!7012 (extractMap!2493 (toList!7011 lm!2473))))) lambda!232706 (_1!31810 (h!60764 (toList!7012 (extractMap!2493 (toList!7011 lm!2473)))))))))

(declare-fun e!2999036 () Unit!140777)

(declare-fun Unit!140837 () Unit!140777)

(assert (=> b!4802414 (= e!2999036 Unit!140837)))

(declare-fun res!2042743 () Bool)

(declare-fun e!2999038 () Bool)

(assert (=> b!4802415 (=> (not res!2042743) (not e!2999038))))

(declare-fun lt!1957397 () List!54459)

(assert (=> b!4802415 (= res!2042743 (forall!12339 lt!1957397 lambda!232708))))

(declare-fun b!4802416 () Bool)

(declare-fun Unit!140838 () Unit!140777)

(assert (=> b!4802416 (= e!2999036 Unit!140838)))

(declare-fun b!4802417 () Bool)

(assert (=> b!4802417 false))

(declare-fun e!2999037 () Unit!140777)

(declare-fun Unit!140839 () Unit!140777)

(assert (=> b!4802417 (= e!2999037 Unit!140839)))

(declare-fun b!4802418 () Bool)

(declare-fun res!2042744 () Bool)

(assert (=> b!4802418 (=> (not res!2042744) (not e!2999038))))

(assert (=> b!4802418 (= res!2042744 (= (length!730 lt!1957397) (length!731 (toList!7012 (extractMap!2493 (toList!7011 lm!2473))))))))

(declare-fun e!2999039 () List!54459)

(assert (=> b!4802419 (= e!2999039 (Cons!54335 (_1!31810 (h!60764 (toList!7012 (extractMap!2493 (toList!7011 lm!2473))))) (getKeysList!1102 (t!361906 (toList!7012 (extractMap!2493 (toList!7011 lm!2473)))))))))

(declare-fun c!818585 () Bool)

(assert (=> b!4802419 (= c!818585 (containsKey!4043 (t!361906 (toList!7012 (extractMap!2493 (toList!7011 lm!2473)))) (_1!31810 (h!60764 (toList!7012 (extractMap!2493 (toList!7011 lm!2473)))))))))

(declare-fun lt!1957396 () Unit!140777)

(assert (=> b!4802419 (= lt!1957396 e!2999037)))

(declare-fun c!818583 () Bool)

(assert (=> b!4802419 (= c!818583 (contains!17990 (getKeysList!1102 (t!361906 (toList!7012 (extractMap!2493 (toList!7011 lm!2473))))) (_1!31810 (h!60764 (toList!7012 (extractMap!2493 (toList!7011 lm!2473)))))))))

(declare-fun lt!1957394 () Unit!140777)

(assert (=> b!4802419 (= lt!1957394 e!2999036)))

(declare-fun lt!1957392 () List!54459)

(assert (=> b!4802419 (= lt!1957392 (getKeysList!1102 (t!361906 (toList!7012 (extractMap!2493 (toList!7011 lm!2473))))))))

(declare-fun lt!1957391 () Unit!140777)

(assert (=> b!4802419 (= lt!1957391 (lemmaForallContainsAddHeadPreserves!352 (t!361906 (toList!7012 (extractMap!2493 (toList!7011 lm!2473)))) lt!1957392 (h!60764 (toList!7012 (extractMap!2493 (toList!7011 lm!2473))))))))

(assert (=> b!4802419 (forall!12339 lt!1957392 lambda!232707)))

(declare-fun lt!1957395 () Unit!140777)

(assert (=> b!4802419 (= lt!1957395 lt!1957391)))

(declare-fun b!4802420 () Bool)

(assert (=> b!4802420 (= e!2999039 Nil!54335)))

(assert (=> b!4802421 (= e!2999038 (= (content!9752 lt!1957397) (content!9752 (map!12281 (toList!7012 (extractMap!2493 (toList!7011 lm!2473))) lambda!232709))))))

(declare-fun d!1537986 () Bool)

(assert (=> d!1537986 e!2999038))

(declare-fun res!2042742 () Bool)

(assert (=> d!1537986 (=> (not res!2042742) (not e!2999038))))

(assert (=> d!1537986 (= res!2042742 (noDuplicate!937 lt!1957397))))

(assert (=> d!1537986 (= lt!1957397 e!2999039)))

(declare-fun c!818584 () Bool)

(assert (=> d!1537986 (= c!818584 ((_ is Cons!54332) (toList!7012 (extractMap!2493 (toList!7011 lm!2473)))))))

(assert (=> d!1537986 (invariantList!1756 (toList!7012 (extractMap!2493 (toList!7011 lm!2473))))))

(assert (=> d!1537986 (= (getKeysList!1102 (toList!7012 (extractMap!2493 (toList!7011 lm!2473)))) lt!1957397)))

(declare-fun b!4802422 () Bool)

(declare-fun Unit!140840 () Unit!140777)

(assert (=> b!4802422 (= e!2999037 Unit!140840)))

(assert (= (and d!1537986 c!818584) b!4802419))

(assert (= (and d!1537986 (not c!818584)) b!4802420))

(assert (= (and b!4802419 c!818585) b!4802417))

(assert (= (and b!4802419 (not c!818585)) b!4802422))

(assert (= (and b!4802419 c!818583) b!4802414))

(assert (= (and b!4802419 (not c!818583)) b!4802416))

(assert (= (and d!1537986 res!2042742) b!4802418))

(assert (= (and b!4802418 res!2042744) b!4802415))

(assert (= (and b!4802415 res!2042743) b!4802421))

(declare-fun m!5786984 () Bool)

(assert (=> d!1537986 m!5786984))

(assert (=> d!1537986 m!5786628))

(declare-fun m!5786986 () Bool)

(assert (=> b!4802418 m!5786986))

(assert (=> b!4802418 m!5786582))

(declare-fun m!5786988 () Bool)

(assert (=> b!4802419 m!5786988))

(declare-fun m!5786990 () Bool)

(assert (=> b!4802419 m!5786990))

(declare-fun m!5786992 () Bool)

(assert (=> b!4802419 m!5786992))

(declare-fun m!5786994 () Bool)

(assert (=> b!4802419 m!5786994))

(assert (=> b!4802419 m!5786988))

(declare-fun m!5786996 () Bool)

(assert (=> b!4802419 m!5786996))

(assert (=> b!4802414 m!5786988))

(assert (=> b!4802414 m!5786988))

(declare-fun m!5786998 () Bool)

(assert (=> b!4802414 m!5786998))

(declare-fun m!5787000 () Bool)

(assert (=> b!4802421 m!5787000))

(declare-fun m!5787002 () Bool)

(assert (=> b!4802421 m!5787002))

(assert (=> b!4802421 m!5787002))

(declare-fun m!5787004 () Bool)

(assert (=> b!4802421 m!5787004))

(declare-fun m!5787006 () Bool)

(assert (=> b!4802415 m!5787006))

(assert (=> b!4801869 d!1537986))

(assert (=> b!4801865 d!1537850))

(assert (=> b!4801865 d!1537852))

(declare-fun d!1537988 () Bool)

(declare-fun choose!34720 (Hashable!6966 K!15904) (_ BitVec 64))

(assert (=> d!1537988 (= (hash!5026 hashF!1559 key!5896) (choose!34720 hashF!1559 key!5896))))

(declare-fun bs!1158062 () Bool)

(assert (= bs!1158062 d!1537988))

(declare-fun m!5787008 () Bool)

(assert (=> bs!1158062 m!5787008))

(assert (=> d!1537600 d!1537988))

(assert (=> b!4801867 d!1537810))

(assert (=> b!4801867 d!1537812))

(assert (=> b!4801732 d!1537718))

(assert (=> b!4801732 d!1537720))

(declare-fun d!1537990 () Bool)

(declare-fun lt!1957398 () Bool)

(assert (=> d!1537990 (= lt!1957398 (select (content!9752 e!2998655) key!5896))))

(declare-fun e!2999040 () Bool)

(assert (=> d!1537990 (= lt!1957398 e!2999040)))

(declare-fun res!2042745 () Bool)

(assert (=> d!1537990 (=> (not res!2042745) (not e!2999040))))

(assert (=> d!1537990 (= res!2042745 ((_ is Cons!54335) e!2998655))))

(assert (=> d!1537990 (= (contains!17990 e!2998655 key!5896) lt!1957398)))

(declare-fun b!4802423 () Bool)

(declare-fun e!2999041 () Bool)

(assert (=> b!4802423 (= e!2999040 e!2999041)))

(declare-fun res!2042746 () Bool)

(assert (=> b!4802423 (=> res!2042746 e!2999041)))

(assert (=> b!4802423 (= res!2042746 (= (h!60767 e!2998655) key!5896))))

(declare-fun b!4802424 () Bool)

(assert (=> b!4802424 (= e!2999041 (contains!17990 (t!361909 e!2998655) key!5896))))

(assert (= (and d!1537990 res!2042745) b!4802423))

(assert (= (and b!4802423 (not res!2042746)) b!4802424))

(declare-fun m!5787010 () Bool)

(assert (=> d!1537990 m!5787010))

(declare-fun m!5787012 () Bool)

(assert (=> d!1537990 m!5787012))

(declare-fun m!5787014 () Bool)

(assert (=> b!4802424 m!5787014))

(assert (=> bm!335399 d!1537990))

(assert (=> b!4801797 d!1537844))

(declare-fun d!1537992 () Bool)

(assert (=> d!1537992 (= (invariantList!1756 (toList!7012 lt!1957077)) (noDuplicatedKeys!455 (toList!7012 lt!1957077)))))

(declare-fun bs!1158063 () Bool)

(assert (= bs!1158063 d!1537992))

(declare-fun m!5787016 () Bool)

(assert (=> bs!1158063 m!5787016))

(assert (=> d!1537588 d!1537992))

(declare-fun d!1537994 () Bool)

(declare-fun res!2042747 () Bool)

(declare-fun e!2999042 () Bool)

(assert (=> d!1537994 (=> res!2042747 e!2999042)))

(assert (=> d!1537994 (= res!2042747 ((_ is Nil!54333) (toList!7011 lm!2473)))))

(assert (=> d!1537994 (= (forall!12337 (toList!7011 lm!2473) lambda!232583) e!2999042)))

(declare-fun b!4802425 () Bool)

(declare-fun e!2999043 () Bool)

(assert (=> b!4802425 (= e!2999042 e!2999043)))

(declare-fun res!2042748 () Bool)

(assert (=> b!4802425 (=> (not res!2042748) (not e!2999043))))

(assert (=> b!4802425 (= res!2042748 (dynLambda!22095 lambda!232583 (h!60765 (toList!7011 lm!2473))))))

(declare-fun b!4802426 () Bool)

(assert (=> b!4802426 (= e!2999043 (forall!12337 (t!361907 (toList!7011 lm!2473)) lambda!232583))))

(assert (= (and d!1537994 (not res!2042747)) b!4802425))

(assert (= (and b!4802425 res!2042748) b!4802426))

(declare-fun b_lambda!187777 () Bool)

(assert (=> (not b_lambda!187777) (not b!4802425)))

(declare-fun m!5787018 () Bool)

(assert (=> b!4802425 m!5787018))

(declare-fun m!5787020 () Bool)

(assert (=> b!4802426 m!5787020))

(assert (=> d!1537588 d!1537994))

(declare-fun d!1537996 () Bool)

(declare-fun res!2042749 () Bool)

(declare-fun e!2999044 () Bool)

(assert (=> d!1537996 (=> res!2042749 e!2999044)))

(assert (=> d!1537996 (= res!2042749 (and ((_ is Cons!54332) (t!361906 (_2!31811 (h!60765 (toList!7011 lm!2473))))) (= (_1!31810 (h!60764 (t!361906 (_2!31811 (h!60765 (toList!7011 lm!2473)))))) key!5896)))))

(assert (=> d!1537996 (= (containsKey!4040 (t!361906 (_2!31811 (h!60765 (toList!7011 lm!2473)))) key!5896) e!2999044)))

(declare-fun b!4802427 () Bool)

(declare-fun e!2999045 () Bool)

(assert (=> b!4802427 (= e!2999044 e!2999045)))

(declare-fun res!2042750 () Bool)

(assert (=> b!4802427 (=> (not res!2042750) (not e!2999045))))

(assert (=> b!4802427 (= res!2042750 ((_ is Cons!54332) (t!361906 (_2!31811 (h!60765 (toList!7011 lm!2473))))))))

(declare-fun b!4802428 () Bool)

(assert (=> b!4802428 (= e!2999045 (containsKey!4040 (t!361906 (t!361906 (_2!31811 (h!60765 (toList!7011 lm!2473))))) key!5896))))

(assert (= (and d!1537996 (not res!2042749)) b!4802427))

(assert (= (and b!4802427 res!2042750) b!4802428))

(declare-fun m!5787022 () Bool)

(assert (=> b!4802428 m!5787022))

(assert (=> b!4801845 d!1537996))

(declare-fun d!1537998 () Bool)

(assert (=> d!1537998 (= (get!18555 (getPair!938 (_2!31811 (h!60765 (toList!7011 lt!1956934))) key!5896)) (v!48518 (getPair!938 (_2!31811 (h!60765 (toList!7011 lt!1956934))) key!5896)))))

(assert (=> b!4801795 d!1537998))

(declare-fun b!4802429 () Bool)

(declare-fun res!2042752 () Bool)

(declare-fun e!2999047 () Bool)

(assert (=> b!4802429 (=> (not res!2042752) (not e!2999047))))

(declare-fun lt!1957399 () Option!13190)

(assert (=> b!4802429 (= res!2042752 (= (_1!31810 (get!18555 lt!1957399)) key!5896))))

(declare-fun b!4802430 () Bool)

(declare-fun e!2999050 () Option!13190)

(assert (=> b!4802430 (= e!2999050 None!13189)))

(declare-fun b!4802431 () Bool)

(declare-fun e!2999049 () Bool)

(assert (=> b!4802431 (= e!2999049 e!2999047)))

(declare-fun res!2042751 () Bool)

(assert (=> b!4802431 (=> (not res!2042751) (not e!2999047))))

(assert (=> b!4802431 (= res!2042751 (isDefined!10331 lt!1957399))))

(declare-fun b!4802432 () Bool)

(declare-fun e!2999048 () Option!13190)

(assert (=> b!4802432 (= e!2999048 e!2999050)))

(declare-fun c!818587 () Bool)

(assert (=> b!4802432 (= c!818587 ((_ is Cons!54332) (_2!31811 (h!60765 (toList!7011 lt!1956934)))))))

(declare-fun d!1538000 () Bool)

(assert (=> d!1538000 e!2999049))

(declare-fun res!2042754 () Bool)

(assert (=> d!1538000 (=> res!2042754 e!2999049)))

(declare-fun e!2999046 () Bool)

(assert (=> d!1538000 (= res!2042754 e!2999046)))

(declare-fun res!2042753 () Bool)

(assert (=> d!1538000 (=> (not res!2042753) (not e!2999046))))

(assert (=> d!1538000 (= res!2042753 (isEmpty!29509 lt!1957399))))

(assert (=> d!1538000 (= lt!1957399 e!2999048)))

(declare-fun c!818586 () Bool)

(assert (=> d!1538000 (= c!818586 (and ((_ is Cons!54332) (_2!31811 (h!60765 (toList!7011 lt!1956934)))) (= (_1!31810 (h!60764 (_2!31811 (h!60765 (toList!7011 lt!1956934))))) key!5896)))))

(assert (=> d!1538000 (noDuplicateKeys!2364 (_2!31811 (h!60765 (toList!7011 lt!1956934))))))

(assert (=> d!1538000 (= (getPair!938 (_2!31811 (h!60765 (toList!7011 lt!1956934))) key!5896) lt!1957399)))

(declare-fun b!4802433 () Bool)

(assert (=> b!4802433 (= e!2999047 (contains!17991 (_2!31811 (h!60765 (toList!7011 lt!1956934))) (get!18555 lt!1957399)))))

(declare-fun b!4802434 () Bool)

(assert (=> b!4802434 (= e!2999046 (not (containsKey!4040 (_2!31811 (h!60765 (toList!7011 lt!1956934))) key!5896)))))

(declare-fun b!4802435 () Bool)

(assert (=> b!4802435 (= e!2999048 (Some!13189 (h!60764 (_2!31811 (h!60765 (toList!7011 lt!1956934))))))))

(declare-fun b!4802436 () Bool)

(assert (=> b!4802436 (= e!2999050 (getPair!938 (t!361906 (_2!31811 (h!60765 (toList!7011 lt!1956934)))) key!5896))))

(assert (= (and d!1538000 c!818586) b!4802435))

(assert (= (and d!1538000 (not c!818586)) b!4802432))

(assert (= (and b!4802432 c!818587) b!4802436))

(assert (= (and b!4802432 (not c!818587)) b!4802430))

(assert (= (and d!1538000 res!2042753) b!4802434))

(assert (= (and d!1538000 (not res!2042754)) b!4802431))

(assert (= (and b!4802431 res!2042751) b!4802429))

(assert (= (and b!4802429 res!2042752) b!4802433))

(declare-fun m!5787024 () Bool)

(assert (=> d!1538000 m!5787024))

(assert (=> d!1538000 m!5786152))

(declare-fun m!5787026 () Bool)

(assert (=> b!4802433 m!5787026))

(assert (=> b!4802433 m!5787026))

(declare-fun m!5787028 () Bool)

(assert (=> b!4802433 m!5787028))

(assert (=> b!4802429 m!5787026))

(declare-fun m!5787030 () Bool)

(assert (=> b!4802431 m!5787030))

(declare-fun m!5787032 () Bool)

(assert (=> b!4802436 m!5787032))

(assert (=> b!4802434 m!5785998))

(assert (=> b!4801795 d!1538000))

(assert (=> d!1537504 d!1537740))

(declare-fun b!4802441 () Bool)

(declare-fun tp!1358428 () Bool)

(declare-fun e!2999053 () Bool)

(assert (=> b!4802441 (= e!2999053 (and tp_is_empty!33725 tp_is_empty!33727 tp!1358428))))

(assert (=> b!4801890 (= tp!1358419 e!2999053)))

(assert (= (and b!4801890 ((_ is Cons!54332) (_2!31811 (h!60765 (toList!7011 lm!2473))))) b!4802441))

(declare-fun b!4802442 () Bool)

(declare-fun e!2999054 () Bool)

(declare-fun tp!1358429 () Bool)

(declare-fun tp!1358430 () Bool)

(assert (=> b!4802442 (= e!2999054 (and tp!1358429 tp!1358430))))

(assert (=> b!4801890 (= tp!1358420 e!2999054)))

(assert (= (and b!4801890 ((_ is Cons!54333) (t!361907 (toList!7011 lm!2473)))) b!4802442))

(declare-fun b_lambda!187779 () Bool)

(assert (= b_lambda!187775 (or d!1537582 b_lambda!187779)))

(declare-fun bs!1158064 () Bool)

(declare-fun d!1538002 () Bool)

(assert (= bs!1158064 (and d!1538002 d!1537582)))

(assert (=> bs!1158064 (= (dynLambda!22095 lambda!232581 (h!60765 (toList!7011 lt!1956934))) (noDuplicateKeys!2364 (_2!31811 (h!60765 (toList!7011 lt!1956934)))))))

(assert (=> bs!1158064 m!5786152))

(assert (=> b!4802394 d!1538002))

(declare-fun b_lambda!187781 () Bool)

(assert (= b_lambda!187731 (or d!1537594 b_lambda!187781)))

(declare-fun bs!1158065 () Bool)

(declare-fun d!1538004 () Bool)

(assert (= bs!1158065 (and d!1538004 d!1537594)))

(assert (=> bs!1158065 (= (dynLambda!22095 lambda!232584 (h!60765 (toList!7011 lm!2473))) (noDuplicateKeys!2364 (_2!31811 (h!60765 (toList!7011 lm!2473)))))))

(assert (=> bs!1158065 m!5786150))

(assert (=> b!4802232 d!1538004))

(declare-fun b_lambda!187783 () Bool)

(assert (= b_lambda!187733 (or d!1537584 b_lambda!187783)))

(declare-fun bs!1158066 () Bool)

(declare-fun d!1538006 () Bool)

(assert (= bs!1158066 (and d!1538006 d!1537584)))

(declare-fun allKeysSameHash!1978 (List!54456 (_ BitVec 64) Hashable!6966) Bool)

(assert (=> bs!1158066 (= (dynLambda!22095 lambda!232582 (h!60765 (toList!7011 lm!2473))) (allKeysSameHash!1978 (_2!31811 (h!60765 (toList!7011 lm!2473))) (_1!31811 (h!60765 (toList!7011 lm!2473))) hashF!1559))))

(declare-fun m!5787034 () Bool)

(assert (=> bs!1158066 m!5787034))

(assert (=> b!4802239 d!1538006))

(declare-fun b_lambda!187785 () Bool)

(assert (= b_lambda!187777 (or d!1537588 b_lambda!187785)))

(declare-fun bs!1158067 () Bool)

(declare-fun d!1538008 () Bool)

(assert (= bs!1158067 (and d!1538008 d!1537588)))

(assert (=> bs!1158067 (= (dynLambda!22095 lambda!232583 (h!60765 (toList!7011 lm!2473))) (noDuplicateKeys!2364 (_2!31811 (h!60765 (toList!7011 lm!2473)))))))

(assert (=> bs!1158067 m!5786150))

(assert (=> b!4802425 d!1538008))

(declare-fun b_lambda!187787 () Bool)

(assert (= b_lambda!187707 (or d!1537490 b_lambda!187787)))

(declare-fun bs!1158068 () Bool)

(declare-fun d!1538010 () Bool)

(assert (= bs!1158068 (and d!1538010 d!1537490)))

(assert (=> bs!1158068 (= (dynLambda!22095 lambda!232556 (h!60765 (toList!7011 lt!1956934))) (noDuplicateKeys!2364 (_2!31811 (h!60765 (toList!7011 lt!1956934)))))))

(assert (=> bs!1158068 m!5786152))

(assert (=> b!4801974 d!1538010))

(declare-fun b_lambda!187789 () Bool)

(assert (= b_lambda!187715 (or d!1537596 b_lambda!187789)))

(declare-fun bs!1158069 () Bool)

(declare-fun d!1538012 () Bool)

(assert (= bs!1158069 (and d!1538012 d!1537596)))

(assert (=> bs!1158069 (= (dynLambda!22095 lambda!232585 (h!60765 (toList!7011 lm!2473))) (noDuplicateKeys!2364 (_2!31811 (h!60765 (toList!7011 lm!2473)))))))

(assert (=> bs!1158069 m!5786150))

(assert (=> b!4802074 d!1538012))

(declare-fun b_lambda!187791 () Bool)

(assert (= b_lambda!187711 (or start!495642 b_lambda!187791)))

(declare-fun bs!1158070 () Bool)

(declare-fun d!1538014 () Bool)

(assert (= bs!1158070 (and d!1538014 start!495642)))

(assert (=> bs!1158070 (= (dynLambda!22095 lambda!232541 (h!60765 (t!361907 (toList!7011 lm!2473)))) (noDuplicateKeys!2364 (_2!31811 (h!60765 (t!361907 (toList!7011 lm!2473))))))))

(declare-fun m!5787036 () Bool)

(assert (=> bs!1158070 m!5787036))

(assert (=> b!4801998 d!1538014))

(declare-fun b_lambda!187793 () Bool)

(assert (= b_lambda!187773 (or d!1537514 b_lambda!187793)))

(declare-fun bs!1158071 () Bool)

(declare-fun d!1538016 () Bool)

(assert (= bs!1158071 (and d!1538016 d!1537514)))

(assert (=> bs!1158071 (= (dynLambda!22095 lambda!232572 (h!60765 (toList!7011 lt!1956934))) (noDuplicateKeys!2364 (_2!31811 (h!60765 (toList!7011 lt!1956934)))))))

(assert (=> bs!1158071 m!5786152))

(assert (=> b!4802382 d!1538016))

(declare-fun b_lambda!187795 () Bool)

(assert (= b_lambda!187717 (or start!495642 b_lambda!187795)))

(declare-fun bs!1158072 () Bool)

(declare-fun d!1538018 () Bool)

(assert (= bs!1158072 (and d!1538018 start!495642)))

(assert (=> bs!1158072 (= (dynLambda!22095 lambda!232541 (h!60765 (t!361907 (toList!7011 lt!1956934)))) (noDuplicateKeys!2364 (_2!31811 (h!60765 (t!361907 (toList!7011 lt!1956934))))))))

(declare-fun m!5787038 () Bool)

(assert (=> bs!1158072 m!5787038))

(assert (=> b!4802076 d!1538018))

(declare-fun b_lambda!187797 () Bool)

(assert (= b_lambda!187713 (or d!1537554 b_lambda!187797)))

(declare-fun bs!1158073 () Bool)

(declare-fun d!1538020 () Bool)

(assert (= bs!1158073 (and d!1538020 d!1537554)))

(assert (=> bs!1158073 (= (dynLambda!22095 lambda!232575 (h!60765 (toList!7011 lt!1956934))) (noDuplicateKeys!2364 (_2!31811 (h!60765 (toList!7011 lt!1956934)))))))

(assert (=> bs!1158073 m!5786152))

(assert (=> b!4802006 d!1538020))

(declare-fun b_lambda!187799 () Bool)

(assert (= b_lambda!187771 (or d!1537482 b_lambda!187799)))

(declare-fun bs!1158074 () Bool)

(declare-fun d!1538022 () Bool)

(assert (= bs!1158074 (and d!1538022 d!1537482)))

(assert (=> bs!1158074 (= (dynLambda!22095 lambda!232544 (h!60765 (toList!7011 lt!1956934))) (allKeysSameHash!1978 (_2!31811 (h!60765 (toList!7011 lt!1956934))) (_1!31811 (h!60765 (toList!7011 lt!1956934))) hashF!1559))))

(declare-fun m!5787040 () Bool)

(assert (=> bs!1158074 m!5787040))

(assert (=> b!4802380 d!1538022))

(declare-fun b_lambda!187801 () Bool)

(assert (= b_lambda!187735 (or d!1537556 b_lambda!187801)))

(declare-fun bs!1158075 () Bool)

(declare-fun d!1538024 () Bool)

(assert (= bs!1158075 (and d!1538024 d!1537556)))

(assert (=> bs!1158075 (= (dynLambda!22095 lambda!232578 (h!60765 (toList!7011 lt!1956934))) (noDuplicateKeys!2364 (_2!31811 (h!60765 (toList!7011 lt!1956934)))))))

(assert (=> bs!1158075 m!5786152))

(assert (=> b!4802282 d!1538024))

(check-sat (not b!4802032) (not b!4802047) (not b!4802205) (not b!4802433) (not b!4802204) (not b!4802260) (not d!1537970) (not b_lambda!187703) (not bs!1158070) (not d!1537870) (not d!1537632) (not b_lambda!187799) (not b!4802428) (not d!1537696) (not b!4802108) (not b!4802441) (not b!4802281) (not d!1537684) (not d!1537848) (not b!4801986) (not b!4802043) (not b!4802388) (not b!4802283) (not d!1538000) (not b_lambda!187779) (not bm!335411) (not d!1537972) (not d!1537810) (not bs!1158064) (not b!4802426) (not b!4802258) (not b!4802347) (not b!4802207) (not b!4801989) (not b!4802396) (not bs!1158073) (not d!1537662) (not b!4802238) (not b_lambda!187795) (not b!4802418) (not b!4802372) (not b!4802246) (not b!4802068) (not b!4802395) (not b!4802381) (not b!4801945) (not b!4802267) (not b!4802419) (not d!1537832) (not b_lambda!187801) (not b!4802390) (not bs!1158067) (not bm!335412) (not b!4802195) (not b!4802434) (not b_lambda!187781) (not b!4802391) (not d!1537978) (not bs!1158066) (not b!4802341) (not b_lambda!187783) (not b!4801987) (not d!1537808) (not b!4802244) (not b!4802393) (not d!1537986) (not d!1537816) (not b!4802398) tp_is_empty!33727 (not b_lambda!187785) (not b!4802056) (not b!4802075) (not bs!1158069) (not b!4801980) (not d!1537964) (not d!1537968) (not b!4802268) (not b!4802048) (not d!1537842) (not d!1537990) (not b!4802227) (not d!1537988) (not d!1537680) (not bs!1158074) (not b!4802278) (not b!4802377) (not d!1537860) (not b_lambda!187705) (not b!4802413) (not d!1537820) (not d!1537718) (not b!4802379) (not b!4802424) (not d!1537748) (not d!1537688) (not b!4802240) (not d!1537642) (not d!1537850) (not b!4802386) (not d!1537812) tp_is_empty!33725 (not b!4802254) (not b!4802066) (not bs!1158068) (not d!1537822) (not d!1537984) (not b!4802073) (not b!4802196) (not d!1537710) (not b!4802222) (not d!1537744) (not d!1537942) (not b!4802257) (not b!4802206) (not b!4802410) (not d!1537992) (not b!4802406) (not d!1537694) (not b!4802274) (not b!4802276) (not d!1537726) (not b!4802095) (not b!4802253) (not bm!335407) (not bs!1158071) (not b!4802367) (not b!4802230) (not d!1537692) (not b!4802226) (not b!4802366) (not b_lambda!187789) (not b!4801984) (not b!4802242) (not d!1537824) (not b!4802201) (not d!1537976) (not b!4802429) (not bm!335408) (not b!4801997) (not b!4802265) (not b!4801999) (not b!4802345) (not b!4802374) (not b!4802401) (not b!4802405) (not b!4801996) (not b_lambda!187791) (not b!4802403) (not bs!1158072) (not b_lambda!187793) (not b!4802007) (not d!1537700) (not b!4802415) (not d!1537702) (not b_lambda!187787) (not b!4802198) (not b_lambda!187797) (not bs!1158065) (not b!4802340) (not b!4802045) (not b!4802013) (not b!4802120) (not b!4802251) (not b!4802236) (not b!4802344) (not b!4802033) (not b!4802235) (not d!1537854) (not b!4802197) (not b!4802233) (not b!4802050) (not d!1537828) (not d!1537686) (not b!4802255) (not b!4802077) (not bm!335413) (not b!4802442) (not d!1537858) (not b!4802107) (not b!4802431) (not b!4802421) (not b!4802414) (not b!4802005) (not b!4802436) (not d!1537868) (not b!4802385) (not b!4802259) (not b!4802383) (not d!1537874) (not b!4802400) (not b!4802373) (not b!4802408) (not b!4802411) (not b!4802034) (not bs!1158075) (not b!4801975) (not bm!335406) (not d!1537980))
(check-sat)
