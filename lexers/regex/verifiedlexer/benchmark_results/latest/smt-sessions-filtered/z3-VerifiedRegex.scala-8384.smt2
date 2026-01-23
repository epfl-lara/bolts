; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!436432 () Bool)

(assert start!436432)

(declare-fun b!4454637 () Bool)

(declare-fun res!1846393 () Bool)

(declare-fun e!2773925 () Bool)

(assert (=> b!4454637 (=> (not res!1846393) (not e!2773925))))

(declare-datatypes ((V!11571 0))(
  ( (V!11572 (val!17331 Int)) )
))
(declare-datatypes ((K!11325 0))(
  ( (K!11326 (val!17332 Int)) )
))
(declare-datatypes ((tuple2!49982 0))(
  ( (tuple2!49983 (_1!28285 K!11325) (_2!28285 V!11571)) )
))
(declare-datatypes ((List!50074 0))(
  ( (Nil!49950) (Cons!49950 (h!55695 tuple2!49982) (t!357024 List!50074)) )
))
(declare-datatypes ((tuple2!49984 0))(
  ( (tuple2!49985 (_1!28286 (_ BitVec 64)) (_2!28286 List!50074)) )
))
(declare-datatypes ((List!50075 0))(
  ( (Nil!49951) (Cons!49951 (h!55696 tuple2!49984) (t!357025 List!50075)) )
))
(declare-datatypes ((ListLongMap!2439 0))(
  ( (ListLongMap!2440 (toList!3785 List!50075)) )
))
(declare-fun lm!1837 () ListLongMap!2439)

(get-info :version)

(assert (=> b!4454637 (= res!1846393 ((_ is Cons!49951) (toList!3785 lm!1837)))))

(declare-fun b!4454638 () Bool)

(declare-fun res!1846394 () Bool)

(declare-fun e!2773923 () Bool)

(assert (=> b!4454638 (=> (not res!1846394) (not e!2773923))))

(declare-fun isEmpty!28447 (List!50075) Bool)

(assert (=> b!4454638 (= res!1846394 (not (isEmpty!28447 (toList!3785 lm!1837))))))

(declare-fun res!1846392 () Bool)

(assert (=> start!436432 (=> (not res!1846392) (not e!2773923))))

(declare-fun lambda!159841 () Int)

(declare-fun forall!9802 (List!50075 Int) Bool)

(assert (=> start!436432 (= res!1846392 (forall!9802 (toList!3785 lm!1837) lambda!159841))))

(assert (=> start!436432 e!2773923))

(declare-fun e!2773924 () Bool)

(declare-fun inv!65511 (ListLongMap!2439) Bool)

(assert (=> start!436432 (and (inv!65511 lm!1837) e!2773924)))

(assert (=> start!436432 true))

(declare-fun tp_is_empty!26787 () Bool)

(assert (=> start!436432 tp_is_empty!26787))

(declare-fun b!4454639 () Bool)

(declare-fun res!1846396 () Bool)

(assert (=> b!4454639 (=> (not res!1846396) (not e!2773923))))

(declare-datatypes ((Hashable!5295 0))(
  ( (HashableExt!5294 (__x!30998 Int)) )
))
(declare-fun hashF!1304 () Hashable!5295)

(declare-fun allKeysSameHashInMap!1007 (ListLongMap!2439 Hashable!5295) Bool)

(assert (=> b!4454639 (= res!1846396 (allKeysSameHashInMap!1007 lm!1837 hashF!1304))))

(declare-fun b!4454640 () Bool)

(declare-fun tp!1334817 () Bool)

(assert (=> b!4454640 (= e!2773924 tp!1334817)))

(declare-fun b!4454641 () Bool)

(assert (=> b!4454641 (= e!2773923 e!2773925)))

(declare-fun res!1846397 () Bool)

(assert (=> b!4454641 (=> (not res!1846397) (not e!2773925))))

(declare-datatypes ((ListMap!3025 0))(
  ( (ListMap!3026 (toList!3786 List!50074)) )
))
(declare-fun lt!1646234 () ListMap!3025)

(declare-fun key!4369 () K!11325)

(declare-fun contains!12515 (ListMap!3025 K!11325) Bool)

(assert (=> b!4454641 (= res!1846397 (contains!12515 lt!1646234 key!4369))))

(declare-fun lt!1646233 () ListLongMap!2439)

(declare-fun extractMap!958 (List!50075) ListMap!3025)

(assert (=> b!4454641 (= lt!1646234 (extractMap!958 (toList!3785 lt!1646233)))))

(declare-fun tail!7467 (ListLongMap!2439) ListLongMap!2439)

(assert (=> b!4454641 (= lt!1646233 (tail!7467 lm!1837))))

(declare-fun b!4454642 () Bool)

(declare-fun e!2773922 () Bool)

(assert (=> b!4454642 (= e!2773922 (allKeysSameHashInMap!1007 lt!1646233 hashF!1304))))

(declare-fun b!4454643 () Bool)

(assert (=> b!4454643 (= e!2773925 (not e!2773922))))

(declare-fun res!1846395 () Bool)

(assert (=> b!4454643 (=> res!1846395 e!2773922)))

(assert (=> b!4454643 (= res!1846395 (not (forall!9802 (toList!3785 lt!1646233) lambda!159841)))))

(declare-fun addToMapMapFromBucket!489 (List!50074 ListMap!3025) ListMap!3025)

(assert (=> b!4454643 (= (extractMap!958 (toList!3785 lm!1837)) (addToMapMapFromBucket!489 (_2!28286 (h!55696 (toList!3785 lm!1837))) lt!1646234))))

(assert (= (and start!436432 res!1846392) b!4454639))

(assert (= (and b!4454639 res!1846396) b!4454638))

(assert (= (and b!4454638 res!1846394) b!4454641))

(assert (= (and b!4454641 res!1846397) b!4454637))

(assert (= (and b!4454637 res!1846393) b!4454643))

(assert (= (and b!4454643 (not res!1846395)) b!4454642))

(assert (= start!436432 b!4454640))

(declare-fun m!5155775 () Bool)

(assert (=> start!436432 m!5155775))

(declare-fun m!5155777 () Bool)

(assert (=> start!436432 m!5155777))

(declare-fun m!5155779 () Bool)

(assert (=> b!4454642 m!5155779))

(declare-fun m!5155781 () Bool)

(assert (=> b!4454638 m!5155781))

(declare-fun m!5155783 () Bool)

(assert (=> b!4454643 m!5155783))

(declare-fun m!5155785 () Bool)

(assert (=> b!4454643 m!5155785))

(declare-fun m!5155787 () Bool)

(assert (=> b!4454643 m!5155787))

(declare-fun m!5155789 () Bool)

(assert (=> b!4454641 m!5155789))

(declare-fun m!5155791 () Bool)

(assert (=> b!4454641 m!5155791))

(declare-fun m!5155793 () Bool)

(assert (=> b!4454641 m!5155793))

(declare-fun m!5155795 () Bool)

(assert (=> b!4454639 m!5155795))

(check-sat (not b!4454638) tp_is_empty!26787 (not b!4454642) (not b!4454640) (not b!4454641) (not start!436432) (not b!4454643) (not b!4454639))
(check-sat)
(get-model)

(declare-fun d!1358879 () Bool)

(declare-fun res!1846408 () Bool)

(declare-fun e!2773939 () Bool)

(assert (=> d!1358879 (=> res!1846408 e!2773939)))

(assert (=> d!1358879 (= res!1846408 ((_ is Nil!49951) (toList!3785 lm!1837)))))

(assert (=> d!1358879 (= (forall!9802 (toList!3785 lm!1837) lambda!159841) e!2773939)))

(declare-fun b!4454662 () Bool)

(declare-fun e!2773940 () Bool)

(assert (=> b!4454662 (= e!2773939 e!2773940)))

(declare-fun res!1846409 () Bool)

(assert (=> b!4454662 (=> (not res!1846409) (not e!2773940))))

(declare-fun dynLambda!20959 (Int tuple2!49984) Bool)

(assert (=> b!4454662 (= res!1846409 (dynLambda!20959 lambda!159841 (h!55696 (toList!3785 lm!1837))))))

(declare-fun b!4454663 () Bool)

(assert (=> b!4454663 (= e!2773940 (forall!9802 (t!357025 (toList!3785 lm!1837)) lambda!159841))))

(assert (= (and d!1358879 (not res!1846408)) b!4454662))

(assert (= (and b!4454662 res!1846409) b!4454663))

(declare-fun b_lambda!147503 () Bool)

(assert (=> (not b_lambda!147503) (not b!4454662)))

(declare-fun m!5155811 () Bool)

(assert (=> b!4454662 m!5155811))

(declare-fun m!5155813 () Bool)

(assert (=> b!4454663 m!5155813))

(assert (=> start!436432 d!1358879))

(declare-fun d!1358883 () Bool)

(declare-fun isStrictlySorted!298 (List!50075) Bool)

(assert (=> d!1358883 (= (inv!65511 lm!1837) (isStrictlySorted!298 (toList!3785 lm!1837)))))

(declare-fun bs!790427 () Bool)

(assert (= bs!790427 d!1358883))

(declare-fun m!5155815 () Bool)

(assert (=> bs!790427 m!5155815))

(assert (=> start!436432 d!1358883))

(declare-fun bs!790428 () Bool)

(declare-fun d!1358885 () Bool)

(assert (= bs!790428 (and d!1358885 start!436432)))

(declare-fun lambda!159850 () Int)

(assert (=> bs!790428 (not (= lambda!159850 lambda!159841))))

(assert (=> d!1358885 true))

(assert (=> d!1358885 (= (allKeysSameHashInMap!1007 lm!1837 hashF!1304) (forall!9802 (toList!3785 lm!1837) lambda!159850))))

(declare-fun bs!790429 () Bool)

(assert (= bs!790429 d!1358885))

(declare-fun m!5155817 () Bool)

(assert (=> bs!790429 m!5155817))

(assert (=> b!4454639 d!1358885))

(declare-fun d!1358887 () Bool)

(assert (=> d!1358887 (= (isEmpty!28447 (toList!3785 lm!1837)) ((_ is Nil!49951) (toList!3785 lm!1837)))))

(assert (=> b!4454638 d!1358887))

(declare-fun d!1358889 () Bool)

(declare-fun res!1846410 () Bool)

(declare-fun e!2773941 () Bool)

(assert (=> d!1358889 (=> res!1846410 e!2773941)))

(assert (=> d!1358889 (= res!1846410 ((_ is Nil!49951) (toList!3785 lt!1646233)))))

(assert (=> d!1358889 (= (forall!9802 (toList!3785 lt!1646233) lambda!159841) e!2773941)))

(declare-fun b!4454666 () Bool)

(declare-fun e!2773942 () Bool)

(assert (=> b!4454666 (= e!2773941 e!2773942)))

(declare-fun res!1846411 () Bool)

(assert (=> b!4454666 (=> (not res!1846411) (not e!2773942))))

(assert (=> b!4454666 (= res!1846411 (dynLambda!20959 lambda!159841 (h!55696 (toList!3785 lt!1646233))))))

(declare-fun b!4454667 () Bool)

(assert (=> b!4454667 (= e!2773942 (forall!9802 (t!357025 (toList!3785 lt!1646233)) lambda!159841))))

(assert (= (and d!1358889 (not res!1846410)) b!4454666))

(assert (= (and b!4454666 res!1846411) b!4454667))

(declare-fun b_lambda!147505 () Bool)

(assert (=> (not b_lambda!147505) (not b!4454666)))

(declare-fun m!5155819 () Bool)

(assert (=> b!4454666 m!5155819))

(declare-fun m!5155821 () Bool)

(assert (=> b!4454667 m!5155821))

(assert (=> b!4454643 d!1358889))

(declare-fun bs!790430 () Bool)

(declare-fun d!1358891 () Bool)

(assert (= bs!790430 (and d!1358891 start!436432)))

(declare-fun lambda!159853 () Int)

(assert (=> bs!790430 (= lambda!159853 lambda!159841)))

(declare-fun bs!790431 () Bool)

(assert (= bs!790431 (and d!1358891 d!1358885)))

(assert (=> bs!790431 (not (= lambda!159853 lambda!159850))))

(declare-fun lt!1646240 () ListMap!3025)

(declare-fun invariantList!870 (List!50074) Bool)

(assert (=> d!1358891 (invariantList!870 (toList!3786 lt!1646240))))

(declare-fun e!2773945 () ListMap!3025)

(assert (=> d!1358891 (= lt!1646240 e!2773945)))

(declare-fun c!758360 () Bool)

(assert (=> d!1358891 (= c!758360 ((_ is Cons!49951) (toList!3785 lm!1837)))))

(assert (=> d!1358891 (forall!9802 (toList!3785 lm!1837) lambda!159853)))

(assert (=> d!1358891 (= (extractMap!958 (toList!3785 lm!1837)) lt!1646240)))

(declare-fun b!4454672 () Bool)

(assert (=> b!4454672 (= e!2773945 (addToMapMapFromBucket!489 (_2!28286 (h!55696 (toList!3785 lm!1837))) (extractMap!958 (t!357025 (toList!3785 lm!1837)))))))

(declare-fun b!4454673 () Bool)

(assert (=> b!4454673 (= e!2773945 (ListMap!3026 Nil!49950))))

(assert (= (and d!1358891 c!758360) b!4454672))

(assert (= (and d!1358891 (not c!758360)) b!4454673))

(declare-fun m!5155823 () Bool)

(assert (=> d!1358891 m!5155823))

(declare-fun m!5155825 () Bool)

(assert (=> d!1358891 m!5155825))

(declare-fun m!5155827 () Bool)

(assert (=> b!4454672 m!5155827))

(assert (=> b!4454672 m!5155827))

(declare-fun m!5155829 () Bool)

(assert (=> b!4454672 m!5155829))

(assert (=> b!4454643 d!1358891))

(declare-fun b!4454738 () Bool)

(assert (=> b!4454738 true))

(declare-fun bs!790447 () Bool)

(declare-fun b!4454737 () Bool)

(assert (= bs!790447 (and b!4454737 b!4454738)))

(declare-fun lambda!159917 () Int)

(declare-fun lambda!159916 () Int)

(assert (=> bs!790447 (= lambda!159917 lambda!159916)))

(assert (=> b!4454737 true))

(declare-fun lt!1646375 () ListMap!3025)

(declare-fun lambda!159918 () Int)

(assert (=> bs!790447 (= (= lt!1646375 lt!1646234) (= lambda!159918 lambda!159916))))

(assert (=> b!4454737 (= (= lt!1646375 lt!1646234) (= lambda!159918 lambda!159917))))

(assert (=> b!4454737 true))

(declare-fun bs!790448 () Bool)

(declare-fun d!1358893 () Bool)

(assert (= bs!790448 (and d!1358893 b!4454738)))

(declare-fun lambda!159919 () Int)

(declare-fun lt!1646384 () ListMap!3025)

(assert (=> bs!790448 (= (= lt!1646384 lt!1646234) (= lambda!159919 lambda!159916))))

(declare-fun bs!790449 () Bool)

(assert (= bs!790449 (and d!1358893 b!4454737)))

(assert (=> bs!790449 (= (= lt!1646384 lt!1646234) (= lambda!159919 lambda!159917))))

(assert (=> bs!790449 (= (= lt!1646384 lt!1646375) (= lambda!159919 lambda!159918))))

(assert (=> d!1358893 true))

(declare-fun e!2773985 () ListMap!3025)

(assert (=> b!4454737 (= e!2773985 lt!1646375)))

(declare-fun lt!1646373 () ListMap!3025)

(declare-fun +!1280 (ListMap!3025 tuple2!49982) ListMap!3025)

(assert (=> b!4454737 (= lt!1646373 (+!1280 lt!1646234 (h!55695 (_2!28286 (h!55696 (toList!3785 lm!1837))))))))

(assert (=> b!4454737 (= lt!1646375 (addToMapMapFromBucket!489 (t!357024 (_2!28286 (h!55696 (toList!3785 lm!1837)))) (+!1280 lt!1646234 (h!55695 (_2!28286 (h!55696 (toList!3785 lm!1837)))))))))

(declare-datatypes ((Unit!85864 0))(
  ( (Unit!85865) )
))
(declare-fun lt!1646387 () Unit!85864)

(declare-fun call!310020 () Unit!85864)

(assert (=> b!4454737 (= lt!1646387 call!310020)))

(declare-fun forall!9804 (List!50074 Int) Bool)

(assert (=> b!4454737 (forall!9804 (toList!3786 lt!1646234) lambda!159917)))

(declare-fun lt!1646379 () Unit!85864)

(assert (=> b!4454737 (= lt!1646379 lt!1646387)))

(assert (=> b!4454737 (forall!9804 (toList!3786 lt!1646373) lambda!159918)))

(declare-fun lt!1646385 () Unit!85864)

(declare-fun Unit!85866 () Unit!85864)

(assert (=> b!4454737 (= lt!1646385 Unit!85866)))

(declare-fun call!310021 () Bool)

(assert (=> b!4454737 call!310021))

(declare-fun lt!1646381 () Unit!85864)

(declare-fun Unit!85867 () Unit!85864)

(assert (=> b!4454737 (= lt!1646381 Unit!85867)))

(declare-fun lt!1646391 () Unit!85864)

(declare-fun Unit!85868 () Unit!85864)

(assert (=> b!4454737 (= lt!1646391 Unit!85868)))

(declare-fun lt!1646388 () Unit!85864)

(declare-fun forallContained!2171 (List!50074 Int tuple2!49982) Unit!85864)

(assert (=> b!4454737 (= lt!1646388 (forallContained!2171 (toList!3786 lt!1646373) lambda!159918 (h!55695 (_2!28286 (h!55696 (toList!3785 lm!1837))))))))

(assert (=> b!4454737 (contains!12515 lt!1646373 (_1!28285 (h!55695 (_2!28286 (h!55696 (toList!3785 lm!1837))))))))

(declare-fun lt!1646380 () Unit!85864)

(declare-fun Unit!85869 () Unit!85864)

(assert (=> b!4454737 (= lt!1646380 Unit!85869)))

(assert (=> b!4454737 (contains!12515 lt!1646375 (_1!28285 (h!55695 (_2!28286 (h!55696 (toList!3785 lm!1837))))))))

(declare-fun lt!1646376 () Unit!85864)

(declare-fun Unit!85870 () Unit!85864)

(assert (=> b!4454737 (= lt!1646376 Unit!85870)))

(assert (=> b!4454737 (forall!9804 (_2!28286 (h!55696 (toList!3785 lm!1837))) lambda!159918)))

(declare-fun lt!1646377 () Unit!85864)

(declare-fun Unit!85871 () Unit!85864)

(assert (=> b!4454737 (= lt!1646377 Unit!85871)))

(assert (=> b!4454737 (forall!9804 (toList!3786 lt!1646373) lambda!159918)))

(declare-fun lt!1646378 () Unit!85864)

(declare-fun Unit!85872 () Unit!85864)

(assert (=> b!4454737 (= lt!1646378 Unit!85872)))

(declare-fun lt!1646389 () Unit!85864)

(declare-fun Unit!85873 () Unit!85864)

(assert (=> b!4454737 (= lt!1646389 Unit!85873)))

(declare-fun lt!1646371 () Unit!85864)

(declare-fun addForallContainsKeyThenBeforeAdding!223 (ListMap!3025 ListMap!3025 K!11325 V!11571) Unit!85864)

(assert (=> b!4454737 (= lt!1646371 (addForallContainsKeyThenBeforeAdding!223 lt!1646234 lt!1646375 (_1!28285 (h!55695 (_2!28286 (h!55696 (toList!3785 lm!1837))))) (_2!28285 (h!55695 (_2!28286 (h!55696 (toList!3785 lm!1837)))))))))

(declare-fun call!310019 () Bool)

(assert (=> b!4454737 call!310019))

(declare-fun lt!1646383 () Unit!85864)

(assert (=> b!4454737 (= lt!1646383 lt!1646371)))

(assert (=> b!4454737 (forall!9804 (toList!3786 lt!1646234) lambda!159918)))

(declare-fun lt!1646386 () Unit!85864)

(declare-fun Unit!85874 () Unit!85864)

(assert (=> b!4454737 (= lt!1646386 Unit!85874)))

(declare-fun res!1846440 () Bool)

(assert (=> b!4454737 (= res!1846440 (forall!9804 (_2!28286 (h!55696 (toList!3785 lm!1837))) lambda!159918))))

(declare-fun e!2773986 () Bool)

(assert (=> b!4454737 (=> (not res!1846440) (not e!2773986))))

(assert (=> b!4454737 e!2773986))

(declare-fun lt!1646382 () Unit!85864)

(declare-fun Unit!85875 () Unit!85864)

(assert (=> b!4454737 (= lt!1646382 Unit!85875)))

(assert (=> b!4454738 (= e!2773985 lt!1646234)))

(declare-fun lt!1646372 () Unit!85864)

(assert (=> b!4454738 (= lt!1646372 call!310020)))

(assert (=> b!4454738 call!310019))

(declare-fun lt!1646374 () Unit!85864)

(assert (=> b!4454738 (= lt!1646374 lt!1646372)))

(assert (=> b!4454738 call!310021))

(declare-fun lt!1646390 () Unit!85864)

(declare-fun Unit!85876 () Unit!85864)

(assert (=> b!4454738 (= lt!1646390 Unit!85876)))

(declare-fun c!758376 () Bool)

(declare-fun bm!310014 () Bool)

(assert (=> bm!310014 (= call!310019 (forall!9804 (toList!3786 lt!1646234) (ite c!758376 lambda!159916 lambda!159918)))))

(declare-fun b!4454739 () Bool)

(assert (=> b!4454739 (= e!2773986 (forall!9804 (toList!3786 lt!1646234) lambda!159918))))

(declare-fun b!4454740 () Bool)

(declare-fun e!2773987 () Bool)

(assert (=> b!4454740 (= e!2773987 (invariantList!870 (toList!3786 lt!1646384)))))

(declare-fun bm!310015 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!223 (ListMap!3025) Unit!85864)

(assert (=> bm!310015 (= call!310020 (lemmaContainsAllItsOwnKeys!223 lt!1646234))))

(assert (=> d!1358893 e!2773987))

(declare-fun res!1846438 () Bool)

(assert (=> d!1358893 (=> (not res!1846438) (not e!2773987))))

(assert (=> d!1358893 (= res!1846438 (forall!9804 (_2!28286 (h!55696 (toList!3785 lm!1837))) lambda!159919))))

(assert (=> d!1358893 (= lt!1646384 e!2773985)))

(assert (=> d!1358893 (= c!758376 ((_ is Nil!49950) (_2!28286 (h!55696 (toList!3785 lm!1837)))))))

(declare-fun noDuplicateKeys!889 (List!50074) Bool)

(assert (=> d!1358893 (noDuplicateKeys!889 (_2!28286 (h!55696 (toList!3785 lm!1837))))))

(assert (=> d!1358893 (= (addToMapMapFromBucket!489 (_2!28286 (h!55696 (toList!3785 lm!1837))) lt!1646234) lt!1646384)))

(declare-fun b!4454741 () Bool)

(declare-fun res!1846439 () Bool)

(assert (=> b!4454741 (=> (not res!1846439) (not e!2773987))))

(assert (=> b!4454741 (= res!1846439 (forall!9804 (toList!3786 lt!1646234) lambda!159919))))

(declare-fun bm!310016 () Bool)

(assert (=> bm!310016 (= call!310021 (forall!9804 (ite c!758376 (toList!3786 lt!1646234) (t!357024 (_2!28286 (h!55696 (toList!3785 lm!1837))))) (ite c!758376 lambda!159916 lambda!159918)))))

(assert (= (and d!1358893 c!758376) b!4454738))

(assert (= (and d!1358893 (not c!758376)) b!4454737))

(assert (= (and b!4454737 res!1846440) b!4454739))

(assert (= (or b!4454738 b!4454737) bm!310014))

(assert (= (or b!4454738 b!4454737) bm!310016))

(assert (= (or b!4454738 b!4454737) bm!310015))

(assert (= (and d!1358893 res!1846438) b!4454741))

(assert (= (and b!4454741 res!1846439) b!4454740))

(declare-fun m!5155905 () Bool)

(assert (=> b!4454737 m!5155905))

(declare-fun m!5155907 () Bool)

(assert (=> b!4454737 m!5155907))

(declare-fun m!5155909 () Bool)

(assert (=> b!4454737 m!5155909))

(declare-fun m!5155911 () Bool)

(assert (=> b!4454737 m!5155911))

(assert (=> b!4454737 m!5155911))

(declare-fun m!5155913 () Bool)

(assert (=> b!4454737 m!5155913))

(declare-fun m!5155915 () Bool)

(assert (=> b!4454737 m!5155915))

(assert (=> b!4454737 m!5155907))

(declare-fun m!5155917 () Bool)

(assert (=> b!4454737 m!5155917))

(declare-fun m!5155919 () Bool)

(assert (=> b!4454737 m!5155919))

(declare-fun m!5155921 () Bool)

(assert (=> b!4454737 m!5155921))

(declare-fun m!5155923 () Bool)

(assert (=> b!4454737 m!5155923))

(assert (=> b!4454737 m!5155923))

(declare-fun m!5155925 () Bool)

(assert (=> b!4454741 m!5155925))

(assert (=> b!4454739 m!5155921))

(declare-fun m!5155927 () Bool)

(assert (=> d!1358893 m!5155927))

(declare-fun m!5155929 () Bool)

(assert (=> d!1358893 m!5155929))

(declare-fun m!5155931 () Bool)

(assert (=> bm!310015 m!5155931))

(declare-fun m!5155933 () Bool)

(assert (=> bm!310016 m!5155933))

(declare-fun m!5155935 () Bool)

(assert (=> bm!310014 m!5155935))

(declare-fun m!5155937 () Bool)

(assert (=> b!4454740 m!5155937))

(assert (=> b!4454643 d!1358893))

(declare-fun b!4454762 () Bool)

(declare-fun e!2774000 () Bool)

(declare-datatypes ((List!50077 0))(
  ( (Nil!49953) (Cons!49953 (h!55698 K!11325) (t!357027 List!50077)) )
))
(declare-fun contains!12517 (List!50077 K!11325) Bool)

(declare-fun keys!17153 (ListMap!3025) List!50077)

(assert (=> b!4454762 (= e!2774000 (not (contains!12517 (keys!17153 lt!1646234) key!4369)))))

(declare-fun b!4454763 () Bool)

(declare-fun e!2774003 () List!50077)

(assert (=> b!4454763 (= e!2774003 (keys!17153 lt!1646234))))

(declare-fun b!4454765 () Bool)

(declare-fun getKeysList!317 (List!50074) List!50077)

(assert (=> b!4454765 (= e!2774003 (getKeysList!317 (toList!3786 lt!1646234)))))

(declare-fun b!4454766 () Bool)

(declare-fun e!2774004 () Bool)

(assert (=> b!4454766 (= e!2774004 (contains!12517 (keys!17153 lt!1646234) key!4369))))

(declare-fun b!4454767 () Bool)

(declare-fun e!2774005 () Bool)

(assert (=> b!4454767 (= e!2774005 e!2774004)))

(declare-fun res!1846449 () Bool)

(assert (=> b!4454767 (=> (not res!1846449) (not e!2774004))))

(declare-datatypes ((Option!10849 0))(
  ( (None!10848) (Some!10848 (v!44104 V!11571)) )
))
(declare-fun isDefined!8137 (Option!10849) Bool)

(declare-fun getValueByKey!835 (List!50074 K!11325) Option!10849)

(assert (=> b!4454767 (= res!1846449 (isDefined!8137 (getValueByKey!835 (toList!3786 lt!1646234) key!4369)))))

(declare-fun bm!310019 () Bool)

(declare-fun call!310024 () Bool)

(assert (=> bm!310019 (= call!310024 (contains!12517 e!2774003 key!4369))))

(declare-fun c!758385 () Bool)

(declare-fun c!758383 () Bool)

(assert (=> bm!310019 (= c!758385 c!758383)))

(declare-fun b!4454768 () Bool)

(declare-fun e!2774001 () Unit!85864)

(declare-fun e!2774002 () Unit!85864)

(assert (=> b!4454768 (= e!2774001 e!2774002)))

(declare-fun c!758384 () Bool)

(assert (=> b!4454768 (= c!758384 call!310024)))

(declare-fun d!1358913 () Bool)

(assert (=> d!1358913 e!2774005))

(declare-fun res!1846448 () Bool)

(assert (=> d!1358913 (=> res!1846448 e!2774005)))

(assert (=> d!1358913 (= res!1846448 e!2774000)))

(declare-fun res!1846447 () Bool)

(assert (=> d!1358913 (=> (not res!1846447) (not e!2774000))))

(declare-fun lt!1646415 () Bool)

(assert (=> d!1358913 (= res!1846447 (not lt!1646415))))

(declare-fun lt!1646408 () Bool)

(assert (=> d!1358913 (= lt!1646415 lt!1646408)))

(declare-fun lt!1646411 () Unit!85864)

(assert (=> d!1358913 (= lt!1646411 e!2774001)))

(assert (=> d!1358913 (= c!758383 lt!1646408)))

(declare-fun containsKey!1311 (List!50074 K!11325) Bool)

(assert (=> d!1358913 (= lt!1646408 (containsKey!1311 (toList!3786 lt!1646234) key!4369))))

(assert (=> d!1358913 (= (contains!12515 lt!1646234 key!4369) lt!1646415)))

(declare-fun b!4454764 () Bool)

(declare-fun Unit!85877 () Unit!85864)

(assert (=> b!4454764 (= e!2774002 Unit!85877)))

(declare-fun b!4454769 () Bool)

(assert (=> b!4454769 false))

(declare-fun lt!1646414 () Unit!85864)

(declare-fun lt!1646409 () Unit!85864)

(assert (=> b!4454769 (= lt!1646414 lt!1646409)))

(assert (=> b!4454769 (containsKey!1311 (toList!3786 lt!1646234) key!4369)))

(declare-fun lemmaInGetKeysListThenContainsKey!315 (List!50074 K!11325) Unit!85864)

(assert (=> b!4454769 (= lt!1646409 (lemmaInGetKeysListThenContainsKey!315 (toList!3786 lt!1646234) key!4369))))

(declare-fun Unit!85878 () Unit!85864)

(assert (=> b!4454769 (= e!2774002 Unit!85878)))

(declare-fun b!4454770 () Bool)

(declare-fun lt!1646412 () Unit!85864)

(assert (=> b!4454770 (= e!2774001 lt!1646412)))

(declare-fun lt!1646413 () Unit!85864)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!739 (List!50074 K!11325) Unit!85864)

(assert (=> b!4454770 (= lt!1646413 (lemmaContainsKeyImpliesGetValueByKeyDefined!739 (toList!3786 lt!1646234) key!4369))))

(assert (=> b!4454770 (isDefined!8137 (getValueByKey!835 (toList!3786 lt!1646234) key!4369))))

(declare-fun lt!1646410 () Unit!85864)

(assert (=> b!4454770 (= lt!1646410 lt!1646413)))

(declare-fun lemmaInListThenGetKeysListContains!313 (List!50074 K!11325) Unit!85864)

(assert (=> b!4454770 (= lt!1646412 (lemmaInListThenGetKeysListContains!313 (toList!3786 lt!1646234) key!4369))))

(assert (=> b!4454770 call!310024))

(assert (= (and d!1358913 c!758383) b!4454770))

(assert (= (and d!1358913 (not c!758383)) b!4454768))

(assert (= (and b!4454768 c!758384) b!4454769))

(assert (= (and b!4454768 (not c!758384)) b!4454764))

(assert (= (or b!4454770 b!4454768) bm!310019))

(assert (= (and bm!310019 c!758385) b!4454765))

(assert (= (and bm!310019 (not c!758385)) b!4454763))

(assert (= (and d!1358913 res!1846447) b!4454762))

(assert (= (and d!1358913 (not res!1846448)) b!4454767))

(assert (= (and b!4454767 res!1846449) b!4454766))

(declare-fun m!5155939 () Bool)

(assert (=> d!1358913 m!5155939))

(declare-fun m!5155941 () Bool)

(assert (=> b!4454770 m!5155941))

(declare-fun m!5155943 () Bool)

(assert (=> b!4454770 m!5155943))

(assert (=> b!4454770 m!5155943))

(declare-fun m!5155945 () Bool)

(assert (=> b!4454770 m!5155945))

(declare-fun m!5155947 () Bool)

(assert (=> b!4454770 m!5155947))

(declare-fun m!5155949 () Bool)

(assert (=> b!4454765 m!5155949))

(declare-fun m!5155951 () Bool)

(assert (=> b!4454762 m!5155951))

(assert (=> b!4454762 m!5155951))

(declare-fun m!5155953 () Bool)

(assert (=> b!4454762 m!5155953))

(assert (=> b!4454766 m!5155951))

(assert (=> b!4454766 m!5155951))

(assert (=> b!4454766 m!5155953))

(assert (=> b!4454769 m!5155939))

(declare-fun m!5155955 () Bool)

(assert (=> b!4454769 m!5155955))

(assert (=> b!4454763 m!5155951))

(assert (=> b!4454767 m!5155943))

(assert (=> b!4454767 m!5155943))

(assert (=> b!4454767 m!5155945))

(declare-fun m!5155957 () Bool)

(assert (=> bm!310019 m!5155957))

(assert (=> b!4454641 d!1358913))

(declare-fun bs!790450 () Bool)

(declare-fun d!1358915 () Bool)

(assert (= bs!790450 (and d!1358915 start!436432)))

(declare-fun lambda!159920 () Int)

(assert (=> bs!790450 (= lambda!159920 lambda!159841)))

(declare-fun bs!790451 () Bool)

(assert (= bs!790451 (and d!1358915 d!1358885)))

(assert (=> bs!790451 (not (= lambda!159920 lambda!159850))))

(declare-fun bs!790452 () Bool)

(assert (= bs!790452 (and d!1358915 d!1358891)))

(assert (=> bs!790452 (= lambda!159920 lambda!159853)))

(declare-fun lt!1646416 () ListMap!3025)

(assert (=> d!1358915 (invariantList!870 (toList!3786 lt!1646416))))

(declare-fun e!2774006 () ListMap!3025)

(assert (=> d!1358915 (= lt!1646416 e!2774006)))

(declare-fun c!758386 () Bool)

(assert (=> d!1358915 (= c!758386 ((_ is Cons!49951) (toList!3785 lt!1646233)))))

(assert (=> d!1358915 (forall!9802 (toList!3785 lt!1646233) lambda!159920)))

(assert (=> d!1358915 (= (extractMap!958 (toList!3785 lt!1646233)) lt!1646416)))

(declare-fun b!4454771 () Bool)

(assert (=> b!4454771 (= e!2774006 (addToMapMapFromBucket!489 (_2!28286 (h!55696 (toList!3785 lt!1646233))) (extractMap!958 (t!357025 (toList!3785 lt!1646233)))))))

(declare-fun b!4454772 () Bool)

(assert (=> b!4454772 (= e!2774006 (ListMap!3026 Nil!49950))))

(assert (= (and d!1358915 c!758386) b!4454771))

(assert (= (and d!1358915 (not c!758386)) b!4454772))

(declare-fun m!5155959 () Bool)

(assert (=> d!1358915 m!5155959))

(declare-fun m!5155961 () Bool)

(assert (=> d!1358915 m!5155961))

(declare-fun m!5155963 () Bool)

(assert (=> b!4454771 m!5155963))

(assert (=> b!4454771 m!5155963))

(declare-fun m!5155965 () Bool)

(assert (=> b!4454771 m!5155965))

(assert (=> b!4454641 d!1358915))

(declare-fun d!1358917 () Bool)

(declare-fun tail!7469 (List!50075) List!50075)

(assert (=> d!1358917 (= (tail!7467 lm!1837) (ListLongMap!2440 (tail!7469 (toList!3785 lm!1837))))))

(declare-fun bs!790453 () Bool)

(assert (= bs!790453 d!1358917))

(declare-fun m!5155967 () Bool)

(assert (=> bs!790453 m!5155967))

(assert (=> b!4454641 d!1358917))

(declare-fun bs!790454 () Bool)

(declare-fun d!1358919 () Bool)

(assert (= bs!790454 (and d!1358919 start!436432)))

(declare-fun lambda!159921 () Int)

(assert (=> bs!790454 (not (= lambda!159921 lambda!159841))))

(declare-fun bs!790455 () Bool)

(assert (= bs!790455 (and d!1358919 d!1358885)))

(assert (=> bs!790455 (= lambda!159921 lambda!159850)))

(declare-fun bs!790456 () Bool)

(assert (= bs!790456 (and d!1358919 d!1358891)))

(assert (=> bs!790456 (not (= lambda!159921 lambda!159853))))

(declare-fun bs!790457 () Bool)

(assert (= bs!790457 (and d!1358919 d!1358915)))

(assert (=> bs!790457 (not (= lambda!159921 lambda!159920))))

(assert (=> d!1358919 true))

(assert (=> d!1358919 (= (allKeysSameHashInMap!1007 lt!1646233 hashF!1304) (forall!9802 (toList!3785 lt!1646233) lambda!159921))))

(declare-fun bs!790458 () Bool)

(assert (= bs!790458 d!1358919))

(declare-fun m!5155969 () Bool)

(assert (=> bs!790458 m!5155969))

(assert (=> b!4454642 d!1358919))

(declare-fun b!4454777 () Bool)

(declare-fun e!2774009 () Bool)

(declare-fun tp!1334828 () Bool)

(declare-fun tp!1334829 () Bool)

(assert (=> b!4454777 (= e!2774009 (and tp!1334828 tp!1334829))))

(assert (=> b!4454640 (= tp!1334817 e!2774009)))

(assert (= (and b!4454640 ((_ is Cons!49951) (toList!3785 lm!1837))) b!4454777))

(declare-fun b_lambda!147513 () Bool)

(assert (= b_lambda!147505 (or start!436432 b_lambda!147513)))

(declare-fun bs!790459 () Bool)

(declare-fun d!1358921 () Bool)

(assert (= bs!790459 (and d!1358921 start!436432)))

(assert (=> bs!790459 (= (dynLambda!20959 lambda!159841 (h!55696 (toList!3785 lt!1646233))) (noDuplicateKeys!889 (_2!28286 (h!55696 (toList!3785 lt!1646233)))))))

(declare-fun m!5155971 () Bool)

(assert (=> bs!790459 m!5155971))

(assert (=> b!4454666 d!1358921))

(declare-fun b_lambda!147515 () Bool)

(assert (= b_lambda!147503 (or start!436432 b_lambda!147515)))

(declare-fun bs!790460 () Bool)

(declare-fun d!1358923 () Bool)

(assert (= bs!790460 (and d!1358923 start!436432)))

(assert (=> bs!790460 (= (dynLambda!20959 lambda!159841 (h!55696 (toList!3785 lm!1837))) (noDuplicateKeys!889 (_2!28286 (h!55696 (toList!3785 lm!1837)))))))

(assert (=> bs!790460 m!5155929))

(assert (=> b!4454662 d!1358923))

(check-sat (not bm!310019) (not b!4454737) (not bs!790460) (not bs!790459) tp_is_empty!26787 (not b_lambda!147513) (not d!1358883) (not d!1358915) (not b!4454766) (not d!1358919) (not b!4454763) (not b_lambda!147515) (not d!1358917) (not bm!310015) (not d!1358891) (not b!4454771) (not b!4454739) (not b!4454770) (not b!4454672) (not b!4454667) (not b!4454767) (not b!4454762) (not bm!310014) (not bm!310016) (not b!4454765) (not d!1358913) (not b!4454777) (not d!1358893) (not b!4454663) (not b!4454740) (not b!4454741) (not d!1358885) (not b!4454769))
(check-sat)
(get-model)

(declare-fun b!4454878 () Bool)

(assert (=> b!4454878 true))

(declare-fun d!1358955 () Bool)

(declare-fun e!2774068 () Bool)

(assert (=> d!1358955 e!2774068))

(declare-fun res!1846512 () Bool)

(assert (=> d!1358955 (=> (not res!1846512) (not e!2774068))))

(declare-fun lt!1646505 () List!50077)

(declare-fun noDuplicate!688 (List!50077) Bool)

(assert (=> d!1358955 (= res!1846512 (noDuplicate!688 lt!1646505))))

(assert (=> d!1358955 (= lt!1646505 (getKeysList!317 (toList!3786 lt!1646234)))))

(assert (=> d!1358955 (= (keys!17153 lt!1646234) lt!1646505)))

(declare-fun b!4454877 () Bool)

(declare-fun res!1846514 () Bool)

(assert (=> b!4454877 (=> (not res!1846514) (not e!2774068))))

(declare-fun length!232 (List!50077) Int)

(declare-fun length!233 (List!50074) Int)

(assert (=> b!4454877 (= res!1846514 (= (length!232 lt!1646505) (length!233 (toList!3786 lt!1646234))))))

(declare-fun res!1846513 () Bool)

(assert (=> b!4454878 (=> (not res!1846513) (not e!2774068))))

(declare-fun lambda!159956 () Int)

(declare-fun forall!9806 (List!50077 Int) Bool)

(assert (=> b!4454878 (= res!1846513 (forall!9806 lt!1646505 lambda!159956))))

(declare-fun lambda!159957 () Int)

(declare-fun b!4454879 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!8041 (List!50077) (InoxSet K!11325))

(declare-fun map!10936 (List!50074 Int) List!50077)

(assert (=> b!4454879 (= e!2774068 (= (content!8041 lt!1646505) (content!8041 (map!10936 (toList!3786 lt!1646234) lambda!159957))))))

(assert (= (and d!1358955 res!1846512) b!4454877))

(assert (= (and b!4454877 res!1846514) b!4454878))

(assert (= (and b!4454878 res!1846513) b!4454879))

(declare-fun m!5156109 () Bool)

(assert (=> d!1358955 m!5156109))

(assert (=> d!1358955 m!5155949))

(declare-fun m!5156111 () Bool)

(assert (=> b!4454877 m!5156111))

(declare-fun m!5156113 () Bool)

(assert (=> b!4454877 m!5156113))

(declare-fun m!5156115 () Bool)

(assert (=> b!4454878 m!5156115))

(declare-fun m!5156117 () Bool)

(assert (=> b!4454879 m!5156117))

(declare-fun m!5156119 () Bool)

(assert (=> b!4454879 m!5156119))

(assert (=> b!4454879 m!5156119))

(declare-fun m!5156121 () Bool)

(assert (=> b!4454879 m!5156121))

(assert (=> b!4454763 d!1358955))

(declare-fun d!1358959 () Bool)

(declare-fun res!1846523 () Bool)

(declare-fun e!2774077 () Bool)

(assert (=> d!1358959 (=> res!1846523 e!2774077)))

(assert (=> d!1358959 (= res!1846523 ((_ is Nil!49950) (_2!28286 (h!55696 (toList!3785 lm!1837)))))))

(assert (=> d!1358959 (= (forall!9804 (_2!28286 (h!55696 (toList!3785 lm!1837))) lambda!159919) e!2774077)))

(declare-fun b!4454890 () Bool)

(declare-fun e!2774078 () Bool)

(assert (=> b!4454890 (= e!2774077 e!2774078)))

(declare-fun res!1846524 () Bool)

(assert (=> b!4454890 (=> (not res!1846524) (not e!2774078))))

(declare-fun dynLambda!20961 (Int tuple2!49982) Bool)

(assert (=> b!4454890 (= res!1846524 (dynLambda!20961 lambda!159919 (h!55695 (_2!28286 (h!55696 (toList!3785 lm!1837))))))))

(declare-fun b!4454891 () Bool)

(assert (=> b!4454891 (= e!2774078 (forall!9804 (t!357024 (_2!28286 (h!55696 (toList!3785 lm!1837)))) lambda!159919))))

(assert (= (and d!1358959 (not res!1846523)) b!4454890))

(assert (= (and b!4454890 res!1846524) b!4454891))

(declare-fun b_lambda!147531 () Bool)

(assert (=> (not b_lambda!147531) (not b!4454890)))

(declare-fun m!5156165 () Bool)

(assert (=> b!4454890 m!5156165))

(declare-fun m!5156167 () Bool)

(assert (=> b!4454891 m!5156167))

(assert (=> d!1358893 d!1358959))

(declare-fun d!1358967 () Bool)

(declare-fun res!1846537 () Bool)

(declare-fun e!2774091 () Bool)

(assert (=> d!1358967 (=> res!1846537 e!2774091)))

(assert (=> d!1358967 (= res!1846537 (not ((_ is Cons!49950) (_2!28286 (h!55696 (toList!3785 lm!1837))))))))

(assert (=> d!1358967 (= (noDuplicateKeys!889 (_2!28286 (h!55696 (toList!3785 lm!1837)))) e!2774091)))

(declare-fun b!4454904 () Bool)

(declare-fun e!2774092 () Bool)

(assert (=> b!4454904 (= e!2774091 e!2774092)))

(declare-fun res!1846538 () Bool)

(assert (=> b!4454904 (=> (not res!1846538) (not e!2774092))))

(declare-fun containsKey!1312 (List!50074 K!11325) Bool)

(assert (=> b!4454904 (= res!1846538 (not (containsKey!1312 (t!357024 (_2!28286 (h!55696 (toList!3785 lm!1837)))) (_1!28285 (h!55695 (_2!28286 (h!55696 (toList!3785 lm!1837))))))))))

(declare-fun b!4454905 () Bool)

(assert (=> b!4454905 (= e!2774092 (noDuplicateKeys!889 (t!357024 (_2!28286 (h!55696 (toList!3785 lm!1837))))))))

(assert (= (and d!1358967 (not res!1846537)) b!4454904))

(assert (= (and b!4454904 res!1846538) b!4454905))

(declare-fun m!5156173 () Bool)

(assert (=> b!4454904 m!5156173))

(declare-fun m!5156177 () Bool)

(assert (=> b!4454905 m!5156177))

(assert (=> d!1358893 d!1358967))

(declare-fun d!1358973 () Bool)

(declare-fun lt!1646529 () Bool)

(assert (=> d!1358973 (= lt!1646529 (select (content!8041 (keys!17153 lt!1646234)) key!4369))))

(declare-fun e!2774102 () Bool)

(assert (=> d!1358973 (= lt!1646529 e!2774102)))

(declare-fun res!1846548 () Bool)

(assert (=> d!1358973 (=> (not res!1846548) (not e!2774102))))

(assert (=> d!1358973 (= res!1846548 ((_ is Cons!49953) (keys!17153 lt!1646234)))))

(assert (=> d!1358973 (= (contains!12517 (keys!17153 lt!1646234) key!4369) lt!1646529)))

(declare-fun b!4454917 () Bool)

(declare-fun e!2774103 () Bool)

(assert (=> b!4454917 (= e!2774102 e!2774103)))

(declare-fun res!1846549 () Bool)

(assert (=> b!4454917 (=> res!1846549 e!2774103)))

(assert (=> b!4454917 (= res!1846549 (= (h!55698 (keys!17153 lt!1646234)) key!4369))))

(declare-fun b!4454918 () Bool)

(assert (=> b!4454918 (= e!2774103 (contains!12517 (t!357027 (keys!17153 lt!1646234)) key!4369))))

(assert (= (and d!1358973 res!1846548) b!4454917))

(assert (= (and b!4454917 (not res!1846549)) b!4454918))

(assert (=> d!1358973 m!5155951))

(declare-fun m!5156183 () Bool)

(assert (=> d!1358973 m!5156183))

(declare-fun m!5156185 () Bool)

(assert (=> d!1358973 m!5156185))

(declare-fun m!5156187 () Bool)

(assert (=> b!4454918 m!5156187))

(assert (=> b!4454762 d!1358973))

(assert (=> b!4454762 d!1358955))

(declare-fun d!1358977 () Bool)

(declare-fun res!1846550 () Bool)

(declare-fun e!2774104 () Bool)

(assert (=> d!1358977 (=> res!1846550 e!2774104)))

(assert (=> d!1358977 (= res!1846550 ((_ is Nil!49951) (t!357025 (toList!3785 lt!1646233))))))

(assert (=> d!1358977 (= (forall!9802 (t!357025 (toList!3785 lt!1646233)) lambda!159841) e!2774104)))

(declare-fun b!4454919 () Bool)

(declare-fun e!2774105 () Bool)

(assert (=> b!4454919 (= e!2774104 e!2774105)))

(declare-fun res!1846551 () Bool)

(assert (=> b!4454919 (=> (not res!1846551) (not e!2774105))))

(assert (=> b!4454919 (= res!1846551 (dynLambda!20959 lambda!159841 (h!55696 (t!357025 (toList!3785 lt!1646233)))))))

(declare-fun b!4454920 () Bool)

(assert (=> b!4454920 (= e!2774105 (forall!9802 (t!357025 (t!357025 (toList!3785 lt!1646233))) lambda!159841))))

(assert (= (and d!1358977 (not res!1846550)) b!4454919))

(assert (= (and b!4454919 res!1846551) b!4454920))

(declare-fun b_lambda!147537 () Bool)

(assert (=> (not b_lambda!147537) (not b!4454919)))

(declare-fun m!5156189 () Bool)

(assert (=> b!4454919 m!5156189))

(declare-fun m!5156191 () Bool)

(assert (=> b!4454920 m!5156191))

(assert (=> b!4454667 d!1358977))

(declare-fun d!1358979 () Bool)

(declare-fun res!1846556 () Bool)

(declare-fun e!2774110 () Bool)

(assert (=> d!1358979 (=> res!1846556 e!2774110)))

(assert (=> d!1358979 (= res!1846556 (or ((_ is Nil!49951) (toList!3785 lm!1837)) ((_ is Nil!49951) (t!357025 (toList!3785 lm!1837)))))))

(assert (=> d!1358979 (= (isStrictlySorted!298 (toList!3785 lm!1837)) e!2774110)))

(declare-fun b!4454925 () Bool)

(declare-fun e!2774111 () Bool)

(assert (=> b!4454925 (= e!2774110 e!2774111)))

(declare-fun res!1846557 () Bool)

(assert (=> b!4454925 (=> (not res!1846557) (not e!2774111))))

(assert (=> b!4454925 (= res!1846557 (bvslt (_1!28286 (h!55696 (toList!3785 lm!1837))) (_1!28286 (h!55696 (t!357025 (toList!3785 lm!1837))))))))

(declare-fun b!4454926 () Bool)

(assert (=> b!4454926 (= e!2774111 (isStrictlySorted!298 (t!357025 (toList!3785 lm!1837))))))

(assert (= (and d!1358979 (not res!1846556)) b!4454925))

(assert (= (and b!4454925 res!1846557) b!4454926))

(declare-fun m!5156193 () Bool)

(assert (=> b!4454926 m!5156193))

(assert (=> d!1358883 d!1358979))

(declare-fun d!1358981 () Bool)

(declare-fun res!1846558 () Bool)

(declare-fun e!2774112 () Bool)

(assert (=> d!1358981 (=> res!1846558 e!2774112)))

(assert (=> d!1358981 (= res!1846558 ((_ is Nil!49951) (t!357025 (toList!3785 lm!1837))))))

(assert (=> d!1358981 (= (forall!9802 (t!357025 (toList!3785 lm!1837)) lambda!159841) e!2774112)))

(declare-fun b!4454927 () Bool)

(declare-fun e!2774113 () Bool)

(assert (=> b!4454927 (= e!2774112 e!2774113)))

(declare-fun res!1846559 () Bool)

(assert (=> b!4454927 (=> (not res!1846559) (not e!2774113))))

(assert (=> b!4454927 (= res!1846559 (dynLambda!20959 lambda!159841 (h!55696 (t!357025 (toList!3785 lm!1837)))))))

(declare-fun b!4454928 () Bool)

(assert (=> b!4454928 (= e!2774113 (forall!9802 (t!357025 (t!357025 (toList!3785 lm!1837))) lambda!159841))))

(assert (= (and d!1358981 (not res!1846558)) b!4454927))

(assert (= (and b!4454927 res!1846559) b!4454928))

(declare-fun b_lambda!147539 () Bool)

(assert (=> (not b_lambda!147539) (not b!4454927)))

(declare-fun m!5156195 () Bool)

(assert (=> b!4454927 m!5156195))

(declare-fun m!5156197 () Bool)

(assert (=> b!4454928 m!5156197))

(assert (=> b!4454663 d!1358981))

(declare-fun d!1358983 () Bool)

(declare-fun res!1846564 () Bool)

(declare-fun e!2774118 () Bool)

(assert (=> d!1358983 (=> res!1846564 e!2774118)))

(assert (=> d!1358983 (= res!1846564 (and ((_ is Cons!49950) (toList!3786 lt!1646234)) (= (_1!28285 (h!55695 (toList!3786 lt!1646234))) key!4369)))))

(assert (=> d!1358983 (= (containsKey!1311 (toList!3786 lt!1646234) key!4369) e!2774118)))

(declare-fun b!4454933 () Bool)

(declare-fun e!2774119 () Bool)

(assert (=> b!4454933 (= e!2774118 e!2774119)))

(declare-fun res!1846565 () Bool)

(assert (=> b!4454933 (=> (not res!1846565) (not e!2774119))))

(assert (=> b!4454933 (= res!1846565 ((_ is Cons!49950) (toList!3786 lt!1646234)))))

(declare-fun b!4454934 () Bool)

(assert (=> b!4454934 (= e!2774119 (containsKey!1311 (t!357024 (toList!3786 lt!1646234)) key!4369))))

(assert (= (and d!1358983 (not res!1846564)) b!4454933))

(assert (= (and b!4454933 res!1846565) b!4454934))

(declare-fun m!5156213 () Bool)

(assert (=> b!4454934 m!5156213))

(assert (=> d!1358913 d!1358983))

(declare-fun d!1358985 () Bool)

(declare-fun res!1846566 () Bool)

(declare-fun e!2774120 () Bool)

(assert (=> d!1358985 (=> res!1846566 e!2774120)))

(assert (=> d!1358985 (= res!1846566 ((_ is Nil!49951) (toList!3785 lt!1646233)))))

(assert (=> d!1358985 (= (forall!9802 (toList!3785 lt!1646233) lambda!159921) e!2774120)))

(declare-fun b!4454935 () Bool)

(declare-fun e!2774121 () Bool)

(assert (=> b!4454935 (= e!2774120 e!2774121)))

(declare-fun res!1846567 () Bool)

(assert (=> b!4454935 (=> (not res!1846567) (not e!2774121))))

(assert (=> b!4454935 (= res!1846567 (dynLambda!20959 lambda!159921 (h!55696 (toList!3785 lt!1646233))))))

(declare-fun b!4454936 () Bool)

(assert (=> b!4454936 (= e!2774121 (forall!9802 (t!357025 (toList!3785 lt!1646233)) lambda!159921))))

(assert (= (and d!1358985 (not res!1846566)) b!4454935))

(assert (= (and b!4454935 res!1846567) b!4454936))

(declare-fun b_lambda!147541 () Bool)

(assert (=> (not b_lambda!147541) (not b!4454935)))

(declare-fun m!5156227 () Bool)

(assert (=> b!4454935 m!5156227))

(declare-fun m!5156231 () Bool)

(assert (=> b!4454936 m!5156231))

(assert (=> d!1358919 d!1358985))

(declare-fun bs!790526 () Bool)

(declare-fun b!4454940 () Bool)

(assert (= bs!790526 (and b!4454940 b!4454738)))

(declare-fun lambda!159963 () Int)

(assert (=> bs!790526 (= (= (extractMap!958 (t!357025 (toList!3785 lt!1646233))) lt!1646234) (= lambda!159963 lambda!159916))))

(declare-fun bs!790529 () Bool)

(assert (= bs!790529 (and b!4454940 b!4454737)))

(assert (=> bs!790529 (= (= (extractMap!958 (t!357025 (toList!3785 lt!1646233))) lt!1646234) (= lambda!159963 lambda!159917))))

(assert (=> bs!790529 (= (= (extractMap!958 (t!357025 (toList!3785 lt!1646233))) lt!1646375) (= lambda!159963 lambda!159918))))

(declare-fun bs!790530 () Bool)

(assert (= bs!790530 (and b!4454940 d!1358893)))

(assert (=> bs!790530 (= (= (extractMap!958 (t!357025 (toList!3785 lt!1646233))) lt!1646384) (= lambda!159963 lambda!159919))))

(assert (=> b!4454940 true))

(declare-fun bs!790531 () Bool)

(declare-fun b!4454939 () Bool)

(assert (= bs!790531 (and b!4454939 d!1358893)))

(declare-fun lambda!159964 () Int)

(assert (=> bs!790531 (= (= (extractMap!958 (t!357025 (toList!3785 lt!1646233))) lt!1646384) (= lambda!159964 lambda!159919))))

(declare-fun bs!790532 () Bool)

(assert (= bs!790532 (and b!4454939 b!4454737)))

(assert (=> bs!790532 (= (= (extractMap!958 (t!357025 (toList!3785 lt!1646233))) lt!1646234) (= lambda!159964 lambda!159917))))

(assert (=> bs!790532 (= (= (extractMap!958 (t!357025 (toList!3785 lt!1646233))) lt!1646375) (= lambda!159964 lambda!159918))))

(declare-fun bs!790533 () Bool)

(assert (= bs!790533 (and b!4454939 b!4454940)))

(assert (=> bs!790533 (= lambda!159964 lambda!159963)))

(declare-fun bs!790534 () Bool)

(assert (= bs!790534 (and b!4454939 b!4454738)))

(assert (=> bs!790534 (= (= (extractMap!958 (t!357025 (toList!3785 lt!1646233))) lt!1646234) (= lambda!159964 lambda!159916))))

(assert (=> b!4454939 true))

(declare-fun lt!1646534 () ListMap!3025)

(declare-fun lambda!159965 () Int)

(assert (=> b!4454939 (= (= lt!1646534 (extractMap!958 (t!357025 (toList!3785 lt!1646233)))) (= lambda!159965 lambda!159964))))

(assert (=> bs!790531 (= (= lt!1646534 lt!1646384) (= lambda!159965 lambda!159919))))

(assert (=> bs!790532 (= (= lt!1646534 lt!1646234) (= lambda!159965 lambda!159917))))

(assert (=> bs!790532 (= (= lt!1646534 lt!1646375) (= lambda!159965 lambda!159918))))

(assert (=> bs!790533 (= (= lt!1646534 (extractMap!958 (t!357025 (toList!3785 lt!1646233)))) (= lambda!159965 lambda!159963))))

(assert (=> bs!790534 (= (= lt!1646534 lt!1646234) (= lambda!159965 lambda!159916))))

(assert (=> b!4454939 true))

(declare-fun bs!790535 () Bool)

(declare-fun d!1358987 () Bool)

(assert (= bs!790535 (and d!1358987 b!4454939)))

(declare-fun lambda!159966 () Int)

(declare-fun lt!1646544 () ListMap!3025)

(assert (=> bs!790535 (= (= lt!1646544 (extractMap!958 (t!357025 (toList!3785 lt!1646233)))) (= lambda!159966 lambda!159964))))

(assert (=> bs!790535 (= (= lt!1646544 lt!1646534) (= lambda!159966 lambda!159965))))

(declare-fun bs!790536 () Bool)

(assert (= bs!790536 (and d!1358987 d!1358893)))

(assert (=> bs!790536 (= (= lt!1646544 lt!1646384) (= lambda!159966 lambda!159919))))

(declare-fun bs!790537 () Bool)

(assert (= bs!790537 (and d!1358987 b!4454737)))

(assert (=> bs!790537 (= (= lt!1646544 lt!1646234) (= lambda!159966 lambda!159917))))

(assert (=> bs!790537 (= (= lt!1646544 lt!1646375) (= lambda!159966 lambda!159918))))

(declare-fun bs!790538 () Bool)

(assert (= bs!790538 (and d!1358987 b!4454940)))

(assert (=> bs!790538 (= (= lt!1646544 (extractMap!958 (t!357025 (toList!3785 lt!1646233)))) (= lambda!159966 lambda!159963))))

(declare-fun bs!790539 () Bool)

(assert (= bs!790539 (and d!1358987 b!4454738)))

(assert (=> bs!790539 (= (= lt!1646544 lt!1646234) (= lambda!159966 lambda!159916))))

(assert (=> d!1358987 true))

(declare-fun e!2774122 () ListMap!3025)

(assert (=> b!4454939 (= e!2774122 lt!1646534)))

(declare-fun lt!1646532 () ListMap!3025)

(assert (=> b!4454939 (= lt!1646532 (+!1280 (extractMap!958 (t!357025 (toList!3785 lt!1646233))) (h!55695 (_2!28286 (h!55696 (toList!3785 lt!1646233))))))))

(assert (=> b!4454939 (= lt!1646534 (addToMapMapFromBucket!489 (t!357024 (_2!28286 (h!55696 (toList!3785 lt!1646233)))) (+!1280 (extractMap!958 (t!357025 (toList!3785 lt!1646233))) (h!55695 (_2!28286 (h!55696 (toList!3785 lt!1646233)))))))))

(declare-fun lt!1646547 () Unit!85864)

(declare-fun call!310034 () Unit!85864)

(assert (=> b!4454939 (= lt!1646547 call!310034)))

(assert (=> b!4454939 (forall!9804 (toList!3786 (extractMap!958 (t!357025 (toList!3785 lt!1646233)))) lambda!159964)))

(declare-fun lt!1646538 () Unit!85864)

(assert (=> b!4454939 (= lt!1646538 lt!1646547)))

(assert (=> b!4454939 (forall!9804 (toList!3786 lt!1646532) lambda!159965)))

(declare-fun lt!1646545 () Unit!85864)

(declare-fun Unit!85887 () Unit!85864)

(assert (=> b!4454939 (= lt!1646545 Unit!85887)))

(declare-fun call!310035 () Bool)

(assert (=> b!4454939 call!310035))

(declare-fun lt!1646540 () Unit!85864)

(declare-fun Unit!85888 () Unit!85864)

(assert (=> b!4454939 (= lt!1646540 Unit!85888)))

(declare-fun lt!1646551 () Unit!85864)

(declare-fun Unit!85889 () Unit!85864)

(assert (=> b!4454939 (= lt!1646551 Unit!85889)))

(declare-fun lt!1646548 () Unit!85864)

(assert (=> b!4454939 (= lt!1646548 (forallContained!2171 (toList!3786 lt!1646532) lambda!159965 (h!55695 (_2!28286 (h!55696 (toList!3785 lt!1646233))))))))

(assert (=> b!4454939 (contains!12515 lt!1646532 (_1!28285 (h!55695 (_2!28286 (h!55696 (toList!3785 lt!1646233))))))))

(declare-fun lt!1646539 () Unit!85864)

(declare-fun Unit!85890 () Unit!85864)

(assert (=> b!4454939 (= lt!1646539 Unit!85890)))

(assert (=> b!4454939 (contains!12515 lt!1646534 (_1!28285 (h!55695 (_2!28286 (h!55696 (toList!3785 lt!1646233))))))))

(declare-fun lt!1646535 () Unit!85864)

(declare-fun Unit!85891 () Unit!85864)

(assert (=> b!4454939 (= lt!1646535 Unit!85891)))

(assert (=> b!4454939 (forall!9804 (_2!28286 (h!55696 (toList!3785 lt!1646233))) lambda!159965)))

(declare-fun lt!1646536 () Unit!85864)

(declare-fun Unit!85892 () Unit!85864)

(assert (=> b!4454939 (= lt!1646536 Unit!85892)))

(assert (=> b!4454939 (forall!9804 (toList!3786 lt!1646532) lambda!159965)))

(declare-fun lt!1646537 () Unit!85864)

(declare-fun Unit!85893 () Unit!85864)

(assert (=> b!4454939 (= lt!1646537 Unit!85893)))

(declare-fun lt!1646549 () Unit!85864)

(declare-fun Unit!85894 () Unit!85864)

(assert (=> b!4454939 (= lt!1646549 Unit!85894)))

(declare-fun lt!1646530 () Unit!85864)

(assert (=> b!4454939 (= lt!1646530 (addForallContainsKeyThenBeforeAdding!223 (extractMap!958 (t!357025 (toList!3785 lt!1646233))) lt!1646534 (_1!28285 (h!55695 (_2!28286 (h!55696 (toList!3785 lt!1646233))))) (_2!28285 (h!55695 (_2!28286 (h!55696 (toList!3785 lt!1646233)))))))))

(declare-fun call!310033 () Bool)

(assert (=> b!4454939 call!310033))

(declare-fun lt!1646543 () Unit!85864)

(assert (=> b!4454939 (= lt!1646543 lt!1646530)))

(assert (=> b!4454939 (forall!9804 (toList!3786 (extractMap!958 (t!357025 (toList!3785 lt!1646233)))) lambda!159965)))

(declare-fun lt!1646546 () Unit!85864)

(declare-fun Unit!85895 () Unit!85864)

(assert (=> b!4454939 (= lt!1646546 Unit!85895)))

(declare-fun res!1846570 () Bool)

(assert (=> b!4454939 (= res!1846570 (forall!9804 (_2!28286 (h!55696 (toList!3785 lt!1646233))) lambda!159965))))

(declare-fun e!2774123 () Bool)

(assert (=> b!4454939 (=> (not res!1846570) (not e!2774123))))

(assert (=> b!4454939 e!2774123))

(declare-fun lt!1646542 () Unit!85864)

(declare-fun Unit!85898 () Unit!85864)

(assert (=> b!4454939 (= lt!1646542 Unit!85898)))

(assert (=> b!4454940 (= e!2774122 (extractMap!958 (t!357025 (toList!3785 lt!1646233))))))

(declare-fun lt!1646531 () Unit!85864)

(assert (=> b!4454940 (= lt!1646531 call!310034)))

(assert (=> b!4454940 call!310033))

(declare-fun lt!1646533 () Unit!85864)

(assert (=> b!4454940 (= lt!1646533 lt!1646531)))

(assert (=> b!4454940 call!310035))

(declare-fun lt!1646550 () Unit!85864)

(declare-fun Unit!85900 () Unit!85864)

(assert (=> b!4454940 (= lt!1646550 Unit!85900)))

(declare-fun bm!310028 () Bool)

(declare-fun c!758404 () Bool)

(assert (=> bm!310028 (= call!310033 (forall!9804 (toList!3786 (extractMap!958 (t!357025 (toList!3785 lt!1646233)))) (ite c!758404 lambda!159963 lambda!159965)))))

(declare-fun b!4454941 () Bool)

(assert (=> b!4454941 (= e!2774123 (forall!9804 (toList!3786 (extractMap!958 (t!357025 (toList!3785 lt!1646233)))) lambda!159965))))

(declare-fun b!4454942 () Bool)

(declare-fun e!2774125 () Bool)

(assert (=> b!4454942 (= e!2774125 (invariantList!870 (toList!3786 lt!1646544)))))

(declare-fun bm!310029 () Bool)

(assert (=> bm!310029 (= call!310034 (lemmaContainsAllItsOwnKeys!223 (extractMap!958 (t!357025 (toList!3785 lt!1646233)))))))

(assert (=> d!1358987 e!2774125))

(declare-fun res!1846568 () Bool)

(assert (=> d!1358987 (=> (not res!1846568) (not e!2774125))))

(assert (=> d!1358987 (= res!1846568 (forall!9804 (_2!28286 (h!55696 (toList!3785 lt!1646233))) lambda!159966))))

(assert (=> d!1358987 (= lt!1646544 e!2774122)))

(assert (=> d!1358987 (= c!758404 ((_ is Nil!49950) (_2!28286 (h!55696 (toList!3785 lt!1646233)))))))

(assert (=> d!1358987 (noDuplicateKeys!889 (_2!28286 (h!55696 (toList!3785 lt!1646233))))))

(assert (=> d!1358987 (= (addToMapMapFromBucket!489 (_2!28286 (h!55696 (toList!3785 lt!1646233))) (extractMap!958 (t!357025 (toList!3785 lt!1646233)))) lt!1646544)))

(declare-fun b!4454943 () Bool)

(declare-fun res!1846569 () Bool)

(assert (=> b!4454943 (=> (not res!1846569) (not e!2774125))))

(assert (=> b!4454943 (= res!1846569 (forall!9804 (toList!3786 (extractMap!958 (t!357025 (toList!3785 lt!1646233)))) lambda!159966))))

(declare-fun bm!310030 () Bool)

(assert (=> bm!310030 (= call!310035 (forall!9804 (ite c!758404 (toList!3786 (extractMap!958 (t!357025 (toList!3785 lt!1646233)))) (t!357024 (_2!28286 (h!55696 (toList!3785 lt!1646233))))) (ite c!758404 lambda!159963 lambda!159965)))))

(assert (= (and d!1358987 c!758404) b!4454940))

(assert (= (and d!1358987 (not c!758404)) b!4454939))

(assert (= (and b!4454939 res!1846570) b!4454941))

(assert (= (or b!4454940 b!4454939) bm!310028))

(assert (= (or b!4454940 b!4454939) bm!310030))

(assert (= (or b!4454940 b!4454939) bm!310029))

(assert (= (and d!1358987 res!1846568) b!4454943))

(assert (= (and b!4454943 res!1846569) b!4454942))

(assert (=> b!4454939 m!5155963))

(declare-fun m!5156261 () Bool)

(assert (=> b!4454939 m!5156261))

(declare-fun m!5156263 () Bool)

(assert (=> b!4454939 m!5156263))

(declare-fun m!5156265 () Bool)

(assert (=> b!4454939 m!5156265))

(declare-fun m!5156267 () Bool)

(assert (=> b!4454939 m!5156267))

(assert (=> b!4454939 m!5156267))

(declare-fun m!5156269 () Bool)

(assert (=> b!4454939 m!5156269))

(declare-fun m!5156271 () Bool)

(assert (=> b!4454939 m!5156271))

(assert (=> b!4454939 m!5155963))

(assert (=> b!4454939 m!5156263))

(declare-fun m!5156273 () Bool)

(assert (=> b!4454939 m!5156273))

(declare-fun m!5156275 () Bool)

(assert (=> b!4454939 m!5156275))

(declare-fun m!5156277 () Bool)

(assert (=> b!4454939 m!5156277))

(declare-fun m!5156279 () Bool)

(assert (=> b!4454939 m!5156279))

(assert (=> b!4454939 m!5156279))

(declare-fun m!5156281 () Bool)

(assert (=> b!4454943 m!5156281))

(assert (=> b!4454941 m!5156277))

(declare-fun m!5156283 () Bool)

(assert (=> d!1358987 m!5156283))

(assert (=> d!1358987 m!5155971))

(assert (=> bm!310029 m!5155963))

(declare-fun m!5156285 () Bool)

(assert (=> bm!310029 m!5156285))

(declare-fun m!5156287 () Bool)

(assert (=> bm!310030 m!5156287))

(declare-fun m!5156289 () Bool)

(assert (=> bm!310028 m!5156289))

(declare-fun m!5156291 () Bool)

(assert (=> b!4454942 m!5156291))

(assert (=> b!4454771 d!1358987))

(declare-fun bs!790552 () Bool)

(declare-fun d!1359003 () Bool)

(assert (= bs!790552 (and d!1359003 d!1358919)))

(declare-fun lambda!159968 () Int)

(assert (=> bs!790552 (not (= lambda!159968 lambda!159921))))

(declare-fun bs!790553 () Bool)

(assert (= bs!790553 (and d!1359003 d!1358885)))

(assert (=> bs!790553 (not (= lambda!159968 lambda!159850))))

(declare-fun bs!790554 () Bool)

(assert (= bs!790554 (and d!1359003 d!1358915)))

(assert (=> bs!790554 (= lambda!159968 lambda!159920)))

(declare-fun bs!790555 () Bool)

(assert (= bs!790555 (and d!1359003 start!436432)))

(assert (=> bs!790555 (= lambda!159968 lambda!159841)))

(declare-fun bs!790556 () Bool)

(assert (= bs!790556 (and d!1359003 d!1358891)))

(assert (=> bs!790556 (= lambda!159968 lambda!159853)))

(declare-fun lt!1646573 () ListMap!3025)

(assert (=> d!1359003 (invariantList!870 (toList!3786 lt!1646573))))

(declare-fun e!2774141 () ListMap!3025)

(assert (=> d!1359003 (= lt!1646573 e!2774141)))

(declare-fun c!758407 () Bool)

(assert (=> d!1359003 (= c!758407 ((_ is Cons!49951) (t!357025 (toList!3785 lt!1646233))))))

(assert (=> d!1359003 (forall!9802 (t!357025 (toList!3785 lt!1646233)) lambda!159968)))

(assert (=> d!1359003 (= (extractMap!958 (t!357025 (toList!3785 lt!1646233))) lt!1646573)))

(declare-fun b!4454961 () Bool)

(assert (=> b!4454961 (= e!2774141 (addToMapMapFromBucket!489 (_2!28286 (h!55696 (t!357025 (toList!3785 lt!1646233)))) (extractMap!958 (t!357025 (t!357025 (toList!3785 lt!1646233))))))))

(declare-fun b!4454962 () Bool)

(assert (=> b!4454962 (= e!2774141 (ListMap!3026 Nil!49950))))

(assert (= (and d!1359003 c!758407) b!4454961))

(assert (= (and d!1359003 (not c!758407)) b!4454962))

(declare-fun m!5156293 () Bool)

(assert (=> d!1359003 m!5156293))

(declare-fun m!5156295 () Bool)

(assert (=> d!1359003 m!5156295))

(declare-fun m!5156297 () Bool)

(assert (=> b!4454961 m!5156297))

(assert (=> b!4454961 m!5156297))

(declare-fun m!5156299 () Bool)

(assert (=> b!4454961 m!5156299))

(assert (=> b!4454771 d!1359003))

(declare-fun d!1359005 () Bool)

(declare-fun res!1846586 () Bool)

(declare-fun e!2774142 () Bool)

(assert (=> d!1359005 (=> res!1846586 e!2774142)))

(assert (=> d!1359005 (= res!1846586 ((_ is Nil!49950) (ite c!758376 (toList!3786 lt!1646234) (t!357024 (_2!28286 (h!55696 (toList!3785 lm!1837)))))))))

(assert (=> d!1359005 (= (forall!9804 (ite c!758376 (toList!3786 lt!1646234) (t!357024 (_2!28286 (h!55696 (toList!3785 lm!1837))))) (ite c!758376 lambda!159916 lambda!159918)) e!2774142)))

(declare-fun b!4454963 () Bool)

(declare-fun e!2774143 () Bool)

(assert (=> b!4454963 (= e!2774142 e!2774143)))

(declare-fun res!1846587 () Bool)

(assert (=> b!4454963 (=> (not res!1846587) (not e!2774143))))

(assert (=> b!4454963 (= res!1846587 (dynLambda!20961 (ite c!758376 lambda!159916 lambda!159918) (h!55695 (ite c!758376 (toList!3786 lt!1646234) (t!357024 (_2!28286 (h!55696 (toList!3785 lm!1837))))))))))

(declare-fun b!4454964 () Bool)

(assert (=> b!4454964 (= e!2774143 (forall!9804 (t!357024 (ite c!758376 (toList!3786 lt!1646234) (t!357024 (_2!28286 (h!55696 (toList!3785 lm!1837)))))) (ite c!758376 lambda!159916 lambda!159918)))))

(assert (= (and d!1359005 (not res!1846586)) b!4454963))

(assert (= (and b!4454963 res!1846587) b!4454964))

(declare-fun b_lambda!147549 () Bool)

(assert (=> (not b_lambda!147549) (not b!4454963)))

(declare-fun m!5156301 () Bool)

(assert (=> b!4454963 m!5156301))

(declare-fun m!5156303 () Bool)

(assert (=> b!4454964 m!5156303))

(assert (=> bm!310016 d!1359005))

(assert (=> bs!790460 d!1358967))

(declare-fun bs!790582 () Bool)

(declare-fun d!1359007 () Bool)

(assert (= bs!790582 (and d!1359007 b!4454939)))

(declare-fun lambda!159974 () Int)

(assert (=> bs!790582 (= (= lt!1646234 (extractMap!958 (t!357025 (toList!3785 lt!1646233)))) (= lambda!159974 lambda!159964))))

(assert (=> bs!790582 (= (= lt!1646234 lt!1646534) (= lambda!159974 lambda!159965))))

(declare-fun bs!790583 () Bool)

(assert (= bs!790583 (and d!1359007 d!1358893)))

(assert (=> bs!790583 (= (= lt!1646234 lt!1646384) (= lambda!159974 lambda!159919))))

(declare-fun bs!790584 () Bool)

(assert (= bs!790584 (and d!1359007 b!4454737)))

(assert (=> bs!790584 (= lambda!159974 lambda!159917)))

(assert (=> bs!790584 (= (= lt!1646234 lt!1646375) (= lambda!159974 lambda!159918))))

(declare-fun bs!790585 () Bool)

(assert (= bs!790585 (and d!1359007 d!1358987)))

(assert (=> bs!790585 (= (= lt!1646234 lt!1646544) (= lambda!159974 lambda!159966))))

(declare-fun bs!790586 () Bool)

(assert (= bs!790586 (and d!1359007 b!4454940)))

(assert (=> bs!790586 (= (= lt!1646234 (extractMap!958 (t!357025 (toList!3785 lt!1646233)))) (= lambda!159974 lambda!159963))))

(declare-fun bs!790587 () Bool)

(assert (= bs!790587 (and d!1359007 b!4454738)))

(assert (=> bs!790587 (= lambda!159974 lambda!159916)))

(assert (=> d!1359007 true))

(assert (=> d!1359007 (forall!9804 (toList!3786 lt!1646234) lambda!159974)))

(declare-fun lt!1646576 () Unit!85864)

(declare-fun choose!28365 (ListMap!3025) Unit!85864)

(assert (=> d!1359007 (= lt!1646576 (choose!28365 lt!1646234))))

(assert (=> d!1359007 (= (lemmaContainsAllItsOwnKeys!223 lt!1646234) lt!1646576)))

(declare-fun bs!790588 () Bool)

(assert (= bs!790588 d!1359007))

(declare-fun m!5156337 () Bool)

(assert (=> bs!790588 m!5156337))

(declare-fun m!5156339 () Bool)

(assert (=> bs!790588 m!5156339))

(assert (=> bm!310015 d!1359007))

(declare-fun d!1359011 () Bool)

(declare-fun res!1846588 () Bool)

(declare-fun e!2774145 () Bool)

(assert (=> d!1359011 (=> res!1846588 e!2774145)))

(assert (=> d!1359011 (= res!1846588 ((_ is Nil!49950) (toList!3786 lt!1646234)))))

(assert (=> d!1359011 (= (forall!9804 (toList!3786 lt!1646234) lambda!159919) e!2774145)))

(declare-fun b!4454967 () Bool)

(declare-fun e!2774146 () Bool)

(assert (=> b!4454967 (= e!2774145 e!2774146)))

(declare-fun res!1846589 () Bool)

(assert (=> b!4454967 (=> (not res!1846589) (not e!2774146))))

(assert (=> b!4454967 (= res!1846589 (dynLambda!20961 lambda!159919 (h!55695 (toList!3786 lt!1646234))))))

(declare-fun b!4454968 () Bool)

(assert (=> b!4454968 (= e!2774146 (forall!9804 (t!357024 (toList!3786 lt!1646234)) lambda!159919))))

(assert (= (and d!1359011 (not res!1846588)) b!4454967))

(assert (= (and b!4454967 res!1846589) b!4454968))

(declare-fun b_lambda!147551 () Bool)

(assert (=> (not b_lambda!147551) (not b!4454967)))

(declare-fun m!5156341 () Bool)

(assert (=> b!4454967 m!5156341))

(declare-fun m!5156343 () Bool)

(assert (=> b!4454968 m!5156343))

(assert (=> b!4454741 d!1359011))

(declare-fun d!1359013 () Bool)

(assert (=> d!1359013 (isDefined!8137 (getValueByKey!835 (toList!3786 lt!1646234) key!4369))))

(declare-fun lt!1646580 () Unit!85864)

(declare-fun choose!28366 (List!50074 K!11325) Unit!85864)

(assert (=> d!1359013 (= lt!1646580 (choose!28366 (toList!3786 lt!1646234) key!4369))))

(assert (=> d!1359013 (invariantList!870 (toList!3786 lt!1646234))))

(assert (=> d!1359013 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!739 (toList!3786 lt!1646234) key!4369) lt!1646580)))

(declare-fun bs!790596 () Bool)

(assert (= bs!790596 d!1359013))

(assert (=> bs!790596 m!5155943))

(assert (=> bs!790596 m!5155943))

(assert (=> bs!790596 m!5155945))

(declare-fun m!5156359 () Bool)

(assert (=> bs!790596 m!5156359))

(declare-fun m!5156361 () Bool)

(assert (=> bs!790596 m!5156361))

(assert (=> b!4454770 d!1359013))

(declare-fun d!1359021 () Bool)

(declare-fun isEmpty!28448 (Option!10849) Bool)

(assert (=> d!1359021 (= (isDefined!8137 (getValueByKey!835 (toList!3786 lt!1646234) key!4369)) (not (isEmpty!28448 (getValueByKey!835 (toList!3786 lt!1646234) key!4369))))))

(declare-fun bs!790597 () Bool)

(assert (= bs!790597 d!1359021))

(assert (=> bs!790597 m!5155943))

(declare-fun m!5156363 () Bool)

(assert (=> bs!790597 m!5156363))

(assert (=> b!4454770 d!1359021))

(declare-fun d!1359023 () Bool)

(declare-fun c!758413 () Bool)

(assert (=> d!1359023 (= c!758413 (and ((_ is Cons!49950) (toList!3786 lt!1646234)) (= (_1!28285 (h!55695 (toList!3786 lt!1646234))) key!4369)))))

(declare-fun e!2774153 () Option!10849)

(assert (=> d!1359023 (= (getValueByKey!835 (toList!3786 lt!1646234) key!4369) e!2774153)))

(declare-fun b!4454981 () Bool)

(declare-fun e!2774154 () Option!10849)

(assert (=> b!4454981 (= e!2774154 (getValueByKey!835 (t!357024 (toList!3786 lt!1646234)) key!4369))))

(declare-fun b!4454982 () Bool)

(assert (=> b!4454982 (= e!2774154 None!10848)))

(declare-fun b!4454979 () Bool)

(assert (=> b!4454979 (= e!2774153 (Some!10848 (_2!28285 (h!55695 (toList!3786 lt!1646234)))))))

(declare-fun b!4454980 () Bool)

(assert (=> b!4454980 (= e!2774153 e!2774154)))

(declare-fun c!758414 () Bool)

(assert (=> b!4454980 (= c!758414 (and ((_ is Cons!49950) (toList!3786 lt!1646234)) (not (= (_1!28285 (h!55695 (toList!3786 lt!1646234))) key!4369))))))

(assert (= (and d!1359023 c!758413) b!4454979))

(assert (= (and d!1359023 (not c!758413)) b!4454980))

(assert (= (and b!4454980 c!758414) b!4454981))

(assert (= (and b!4454980 (not c!758414)) b!4454982))

(declare-fun m!5156369 () Bool)

(assert (=> b!4454981 m!5156369))

(assert (=> b!4454770 d!1359023))

(declare-fun d!1359029 () Bool)

(assert (=> d!1359029 (contains!12517 (getKeysList!317 (toList!3786 lt!1646234)) key!4369)))

(declare-fun lt!1646586 () Unit!85864)

(declare-fun choose!28367 (List!50074 K!11325) Unit!85864)

(assert (=> d!1359029 (= lt!1646586 (choose!28367 (toList!3786 lt!1646234) key!4369))))

(assert (=> d!1359029 (invariantList!870 (toList!3786 lt!1646234))))

(assert (=> d!1359029 (= (lemmaInListThenGetKeysListContains!313 (toList!3786 lt!1646234) key!4369) lt!1646586)))

(declare-fun bs!790600 () Bool)

(assert (= bs!790600 d!1359029))

(assert (=> bs!790600 m!5155949))

(assert (=> bs!790600 m!5155949))

(declare-fun m!5156373 () Bool)

(assert (=> bs!790600 m!5156373))

(declare-fun m!5156375 () Bool)

(assert (=> bs!790600 m!5156375))

(assert (=> bs!790600 m!5156361))

(assert (=> b!4454770 d!1359029))

(declare-fun bs!790601 () Bool)

(declare-fun b!4454996 () Bool)

(assert (= bs!790601 (and b!4454996 b!4454939)))

(declare-fun lambda!159976 () Int)

(assert (=> bs!790601 (= (= (extractMap!958 (t!357025 (toList!3785 lm!1837))) (extractMap!958 (t!357025 (toList!3785 lt!1646233)))) (= lambda!159976 lambda!159964))))

(assert (=> bs!790601 (= (= (extractMap!958 (t!357025 (toList!3785 lm!1837))) lt!1646534) (= lambda!159976 lambda!159965))))

(declare-fun bs!790602 () Bool)

(assert (= bs!790602 (and b!4454996 d!1358893)))

(assert (=> bs!790602 (= (= (extractMap!958 (t!357025 (toList!3785 lm!1837))) lt!1646384) (= lambda!159976 lambda!159919))))

(declare-fun bs!790603 () Bool)

(assert (= bs!790603 (and b!4454996 d!1359007)))

(assert (=> bs!790603 (= (= (extractMap!958 (t!357025 (toList!3785 lm!1837))) lt!1646234) (= lambda!159976 lambda!159974))))

(declare-fun bs!790604 () Bool)

(assert (= bs!790604 (and b!4454996 b!4454737)))

(assert (=> bs!790604 (= (= (extractMap!958 (t!357025 (toList!3785 lm!1837))) lt!1646234) (= lambda!159976 lambda!159917))))

(assert (=> bs!790604 (= (= (extractMap!958 (t!357025 (toList!3785 lm!1837))) lt!1646375) (= lambda!159976 lambda!159918))))

(declare-fun bs!790605 () Bool)

(assert (= bs!790605 (and b!4454996 d!1358987)))

(assert (=> bs!790605 (= (= (extractMap!958 (t!357025 (toList!3785 lm!1837))) lt!1646544) (= lambda!159976 lambda!159966))))

(declare-fun bs!790606 () Bool)

(assert (= bs!790606 (and b!4454996 b!4454940)))

(assert (=> bs!790606 (= (= (extractMap!958 (t!357025 (toList!3785 lm!1837))) (extractMap!958 (t!357025 (toList!3785 lt!1646233)))) (= lambda!159976 lambda!159963))))

(declare-fun bs!790607 () Bool)

(assert (= bs!790607 (and b!4454996 b!4454738)))

(assert (=> bs!790607 (= (= (extractMap!958 (t!357025 (toList!3785 lm!1837))) lt!1646234) (= lambda!159976 lambda!159916))))

(assert (=> b!4454996 true))

(declare-fun bs!790609 () Bool)

(declare-fun b!4454995 () Bool)

(assert (= bs!790609 (and b!4454995 b!4454939)))

(declare-fun lambda!159977 () Int)

(assert (=> bs!790609 (= (= (extractMap!958 (t!357025 (toList!3785 lm!1837))) (extractMap!958 (t!357025 (toList!3785 lt!1646233)))) (= lambda!159977 lambda!159964))))

(assert (=> bs!790609 (= (= (extractMap!958 (t!357025 (toList!3785 lm!1837))) lt!1646534) (= lambda!159977 lambda!159965))))

(declare-fun bs!790610 () Bool)

(assert (= bs!790610 (and b!4454995 d!1358893)))

(assert (=> bs!790610 (= (= (extractMap!958 (t!357025 (toList!3785 lm!1837))) lt!1646384) (= lambda!159977 lambda!159919))))

(declare-fun bs!790611 () Bool)

(assert (= bs!790611 (and b!4454995 d!1359007)))

(assert (=> bs!790611 (= (= (extractMap!958 (t!357025 (toList!3785 lm!1837))) lt!1646234) (= lambda!159977 lambda!159974))))

(declare-fun bs!790612 () Bool)

(assert (= bs!790612 (and b!4454995 b!4454996)))

(assert (=> bs!790612 (= lambda!159977 lambda!159976)))

(declare-fun bs!790613 () Bool)

(assert (= bs!790613 (and b!4454995 b!4454737)))

(assert (=> bs!790613 (= (= (extractMap!958 (t!357025 (toList!3785 lm!1837))) lt!1646234) (= lambda!159977 lambda!159917))))

(assert (=> bs!790613 (= (= (extractMap!958 (t!357025 (toList!3785 lm!1837))) lt!1646375) (= lambda!159977 lambda!159918))))

(declare-fun bs!790614 () Bool)

(assert (= bs!790614 (and b!4454995 d!1358987)))

(assert (=> bs!790614 (= (= (extractMap!958 (t!357025 (toList!3785 lm!1837))) lt!1646544) (= lambda!159977 lambda!159966))))

(declare-fun bs!790615 () Bool)

(assert (= bs!790615 (and b!4454995 b!4454940)))

(assert (=> bs!790615 (= (= (extractMap!958 (t!357025 (toList!3785 lm!1837))) (extractMap!958 (t!357025 (toList!3785 lt!1646233)))) (= lambda!159977 lambda!159963))))

(declare-fun bs!790616 () Bool)

(assert (= bs!790616 (and b!4454995 b!4454738)))

(assert (=> bs!790616 (= (= (extractMap!958 (t!357025 (toList!3785 lm!1837))) lt!1646234) (= lambda!159977 lambda!159916))))

(assert (=> b!4454995 true))

(declare-fun lambda!159978 () Int)

(declare-fun lt!1646591 () ListMap!3025)

(assert (=> bs!790609 (= (= lt!1646591 lt!1646534) (= lambda!159978 lambda!159965))))

(assert (=> bs!790610 (= (= lt!1646591 lt!1646384) (= lambda!159978 lambda!159919))))

(assert (=> bs!790611 (= (= lt!1646591 lt!1646234) (= lambda!159978 lambda!159974))))

(assert (=> bs!790612 (= (= lt!1646591 (extractMap!958 (t!357025 (toList!3785 lm!1837)))) (= lambda!159978 lambda!159976))))

(assert (=> bs!790613 (= (= lt!1646591 lt!1646234) (= lambda!159978 lambda!159917))))

(assert (=> bs!790613 (= (= lt!1646591 lt!1646375) (= lambda!159978 lambda!159918))))

(assert (=> bs!790614 (= (= lt!1646591 lt!1646544) (= lambda!159978 lambda!159966))))

(assert (=> bs!790609 (= (= lt!1646591 (extractMap!958 (t!357025 (toList!3785 lt!1646233)))) (= lambda!159978 lambda!159964))))

(assert (=> b!4454995 (= (= lt!1646591 (extractMap!958 (t!357025 (toList!3785 lm!1837)))) (= lambda!159978 lambda!159977))))

(assert (=> bs!790615 (= (= lt!1646591 (extractMap!958 (t!357025 (toList!3785 lt!1646233)))) (= lambda!159978 lambda!159963))))

(assert (=> bs!790616 (= (= lt!1646591 lt!1646234) (= lambda!159978 lambda!159916))))

(assert (=> b!4454995 true))

(declare-fun bs!790617 () Bool)

(declare-fun d!1359033 () Bool)

(assert (= bs!790617 (and d!1359033 b!4454939)))

(declare-fun lambda!159979 () Int)

(declare-fun lt!1646600 () ListMap!3025)

(assert (=> bs!790617 (= (= lt!1646600 lt!1646534) (= lambda!159979 lambda!159965))))

(declare-fun bs!790618 () Bool)

(assert (= bs!790618 (and d!1359033 b!4454995)))

(assert (=> bs!790618 (= (= lt!1646600 lt!1646591) (= lambda!159979 lambda!159978))))

(declare-fun bs!790619 () Bool)

(assert (= bs!790619 (and d!1359033 d!1358893)))

(assert (=> bs!790619 (= (= lt!1646600 lt!1646384) (= lambda!159979 lambda!159919))))

(declare-fun bs!790620 () Bool)

(assert (= bs!790620 (and d!1359033 d!1359007)))

(assert (=> bs!790620 (= (= lt!1646600 lt!1646234) (= lambda!159979 lambda!159974))))

(declare-fun bs!790621 () Bool)

(assert (= bs!790621 (and d!1359033 b!4454996)))

(assert (=> bs!790621 (= (= lt!1646600 (extractMap!958 (t!357025 (toList!3785 lm!1837)))) (= lambda!159979 lambda!159976))))

(declare-fun bs!790622 () Bool)

(assert (= bs!790622 (and d!1359033 b!4454737)))

(assert (=> bs!790622 (= (= lt!1646600 lt!1646234) (= lambda!159979 lambda!159917))))

(assert (=> bs!790622 (= (= lt!1646600 lt!1646375) (= lambda!159979 lambda!159918))))

(declare-fun bs!790623 () Bool)

(assert (= bs!790623 (and d!1359033 d!1358987)))

(assert (=> bs!790623 (= (= lt!1646600 lt!1646544) (= lambda!159979 lambda!159966))))

(assert (=> bs!790617 (= (= lt!1646600 (extractMap!958 (t!357025 (toList!3785 lt!1646233)))) (= lambda!159979 lambda!159964))))

(assert (=> bs!790618 (= (= lt!1646600 (extractMap!958 (t!357025 (toList!3785 lm!1837)))) (= lambda!159979 lambda!159977))))

(declare-fun bs!790624 () Bool)

(assert (= bs!790624 (and d!1359033 b!4454940)))

(assert (=> bs!790624 (= (= lt!1646600 (extractMap!958 (t!357025 (toList!3785 lt!1646233)))) (= lambda!159979 lambda!159963))))

(declare-fun bs!790625 () Bool)

(assert (= bs!790625 (and d!1359033 b!4454738)))

(assert (=> bs!790625 (= (= lt!1646600 lt!1646234) (= lambda!159979 lambda!159916))))

(assert (=> d!1359033 true))

(declare-fun e!2774161 () ListMap!3025)

(assert (=> b!4454995 (= e!2774161 lt!1646591)))

(declare-fun lt!1646589 () ListMap!3025)

(assert (=> b!4454995 (= lt!1646589 (+!1280 (extractMap!958 (t!357025 (toList!3785 lm!1837))) (h!55695 (_2!28286 (h!55696 (toList!3785 lm!1837))))))))

(assert (=> b!4454995 (= lt!1646591 (addToMapMapFromBucket!489 (t!357024 (_2!28286 (h!55696 (toList!3785 lm!1837)))) (+!1280 (extractMap!958 (t!357025 (toList!3785 lm!1837))) (h!55695 (_2!28286 (h!55696 (toList!3785 lm!1837)))))))))

(declare-fun lt!1646603 () Unit!85864)

(declare-fun call!310040 () Unit!85864)

(assert (=> b!4454995 (= lt!1646603 call!310040)))

(assert (=> b!4454995 (forall!9804 (toList!3786 (extractMap!958 (t!357025 (toList!3785 lm!1837)))) lambda!159977)))

(declare-fun lt!1646595 () Unit!85864)

(assert (=> b!4454995 (= lt!1646595 lt!1646603)))

(assert (=> b!4454995 (forall!9804 (toList!3786 lt!1646589) lambda!159978)))

(declare-fun lt!1646601 () Unit!85864)

(declare-fun Unit!85909 () Unit!85864)

(assert (=> b!4454995 (= lt!1646601 Unit!85909)))

(declare-fun call!310041 () Bool)

(assert (=> b!4454995 call!310041))

(declare-fun lt!1646597 () Unit!85864)

(declare-fun Unit!85910 () Unit!85864)

(assert (=> b!4454995 (= lt!1646597 Unit!85910)))

(declare-fun lt!1646607 () Unit!85864)

(declare-fun Unit!85911 () Unit!85864)

(assert (=> b!4454995 (= lt!1646607 Unit!85911)))

(declare-fun lt!1646604 () Unit!85864)

(assert (=> b!4454995 (= lt!1646604 (forallContained!2171 (toList!3786 lt!1646589) lambda!159978 (h!55695 (_2!28286 (h!55696 (toList!3785 lm!1837))))))))

(assert (=> b!4454995 (contains!12515 lt!1646589 (_1!28285 (h!55695 (_2!28286 (h!55696 (toList!3785 lm!1837))))))))

(declare-fun lt!1646596 () Unit!85864)

(declare-fun Unit!85912 () Unit!85864)

(assert (=> b!4454995 (= lt!1646596 Unit!85912)))

(assert (=> b!4454995 (contains!12515 lt!1646591 (_1!28285 (h!55695 (_2!28286 (h!55696 (toList!3785 lm!1837))))))))

(declare-fun lt!1646592 () Unit!85864)

(declare-fun Unit!85913 () Unit!85864)

(assert (=> b!4454995 (= lt!1646592 Unit!85913)))

(assert (=> b!4454995 (forall!9804 (_2!28286 (h!55696 (toList!3785 lm!1837))) lambda!159978)))

(declare-fun lt!1646593 () Unit!85864)

(declare-fun Unit!85914 () Unit!85864)

(assert (=> b!4454995 (= lt!1646593 Unit!85914)))

(assert (=> b!4454995 (forall!9804 (toList!3786 lt!1646589) lambda!159978)))

(declare-fun lt!1646594 () Unit!85864)

(declare-fun Unit!85915 () Unit!85864)

(assert (=> b!4454995 (= lt!1646594 Unit!85915)))

(declare-fun lt!1646605 () Unit!85864)

(declare-fun Unit!85917 () Unit!85864)

(assert (=> b!4454995 (= lt!1646605 Unit!85917)))

(declare-fun lt!1646587 () Unit!85864)

(assert (=> b!4454995 (= lt!1646587 (addForallContainsKeyThenBeforeAdding!223 (extractMap!958 (t!357025 (toList!3785 lm!1837))) lt!1646591 (_1!28285 (h!55695 (_2!28286 (h!55696 (toList!3785 lm!1837))))) (_2!28285 (h!55695 (_2!28286 (h!55696 (toList!3785 lm!1837)))))))))

(declare-fun call!310039 () Bool)

(assert (=> b!4454995 call!310039))

(declare-fun lt!1646599 () Unit!85864)

(assert (=> b!4454995 (= lt!1646599 lt!1646587)))

(assert (=> b!4454995 (forall!9804 (toList!3786 (extractMap!958 (t!357025 (toList!3785 lm!1837)))) lambda!159978)))

(declare-fun lt!1646602 () Unit!85864)

(declare-fun Unit!85920 () Unit!85864)

(assert (=> b!4454995 (= lt!1646602 Unit!85920)))

(declare-fun res!1846594 () Bool)

(assert (=> b!4454995 (= res!1846594 (forall!9804 (_2!28286 (h!55696 (toList!3785 lm!1837))) lambda!159978))))

(declare-fun e!2774162 () Bool)

(assert (=> b!4454995 (=> (not res!1846594) (not e!2774162))))

(assert (=> b!4454995 e!2774162))

(declare-fun lt!1646598 () Unit!85864)

(declare-fun Unit!85923 () Unit!85864)

(assert (=> b!4454995 (= lt!1646598 Unit!85923)))

(assert (=> b!4454996 (= e!2774161 (extractMap!958 (t!357025 (toList!3785 lm!1837))))))

(declare-fun lt!1646588 () Unit!85864)

(assert (=> b!4454996 (= lt!1646588 call!310040)))

(assert (=> b!4454996 call!310039))

(declare-fun lt!1646590 () Unit!85864)

(assert (=> b!4454996 (= lt!1646590 lt!1646588)))

(assert (=> b!4454996 call!310041))

(declare-fun lt!1646606 () Unit!85864)

(declare-fun Unit!85926 () Unit!85864)

(assert (=> b!4454996 (= lt!1646606 Unit!85926)))

(declare-fun c!758421 () Bool)

(declare-fun bm!310034 () Bool)

(assert (=> bm!310034 (= call!310039 (forall!9804 (toList!3786 (extractMap!958 (t!357025 (toList!3785 lm!1837)))) (ite c!758421 lambda!159976 lambda!159978)))))

(declare-fun b!4454997 () Bool)

(assert (=> b!4454997 (= e!2774162 (forall!9804 (toList!3786 (extractMap!958 (t!357025 (toList!3785 lm!1837)))) lambda!159978))))

(declare-fun b!4454998 () Bool)

(declare-fun e!2774163 () Bool)

(assert (=> b!4454998 (= e!2774163 (invariantList!870 (toList!3786 lt!1646600)))))

(declare-fun bm!310035 () Bool)

(assert (=> bm!310035 (= call!310040 (lemmaContainsAllItsOwnKeys!223 (extractMap!958 (t!357025 (toList!3785 lm!1837)))))))

(assert (=> d!1359033 e!2774163))

(declare-fun res!1846592 () Bool)

(assert (=> d!1359033 (=> (not res!1846592) (not e!2774163))))

(assert (=> d!1359033 (= res!1846592 (forall!9804 (_2!28286 (h!55696 (toList!3785 lm!1837))) lambda!159979))))

(assert (=> d!1359033 (= lt!1646600 e!2774161)))

(assert (=> d!1359033 (= c!758421 ((_ is Nil!49950) (_2!28286 (h!55696 (toList!3785 lm!1837)))))))

(assert (=> d!1359033 (noDuplicateKeys!889 (_2!28286 (h!55696 (toList!3785 lm!1837))))))

(assert (=> d!1359033 (= (addToMapMapFromBucket!489 (_2!28286 (h!55696 (toList!3785 lm!1837))) (extractMap!958 (t!357025 (toList!3785 lm!1837)))) lt!1646600)))

(declare-fun b!4454999 () Bool)

(declare-fun res!1846593 () Bool)

(assert (=> b!4454999 (=> (not res!1846593) (not e!2774163))))

(assert (=> b!4454999 (= res!1846593 (forall!9804 (toList!3786 (extractMap!958 (t!357025 (toList!3785 lm!1837)))) lambda!159979))))

(declare-fun bm!310036 () Bool)

(assert (=> bm!310036 (= call!310041 (forall!9804 (ite c!758421 (toList!3786 (extractMap!958 (t!357025 (toList!3785 lm!1837)))) (t!357024 (_2!28286 (h!55696 (toList!3785 lm!1837))))) (ite c!758421 lambda!159976 lambda!159978)))))

(assert (= (and d!1359033 c!758421) b!4454996))

(assert (= (and d!1359033 (not c!758421)) b!4454995))

(assert (= (and b!4454995 res!1846594) b!4454997))

(assert (= (or b!4454996 b!4454995) bm!310034))

(assert (= (or b!4454996 b!4454995) bm!310036))

(assert (= (or b!4454996 b!4454995) bm!310035))

(assert (= (and d!1359033 res!1846592) b!4454999))

(assert (= (and b!4454999 res!1846593) b!4454998))

(assert (=> b!4454995 m!5155827))

(declare-fun m!5156395 () Bool)

(assert (=> b!4454995 m!5156395))

(declare-fun m!5156397 () Bool)

(assert (=> b!4454995 m!5156397))

(declare-fun m!5156399 () Bool)

(assert (=> b!4454995 m!5156399))

(declare-fun m!5156401 () Bool)

(assert (=> b!4454995 m!5156401))

(assert (=> b!4454995 m!5156401))

(declare-fun m!5156403 () Bool)

(assert (=> b!4454995 m!5156403))

(declare-fun m!5156405 () Bool)

(assert (=> b!4454995 m!5156405))

(assert (=> b!4454995 m!5155827))

(assert (=> b!4454995 m!5156397))

(declare-fun m!5156407 () Bool)

(assert (=> b!4454995 m!5156407))

(declare-fun m!5156409 () Bool)

(assert (=> b!4454995 m!5156409))

(declare-fun m!5156411 () Bool)

(assert (=> b!4454995 m!5156411))

(declare-fun m!5156413 () Bool)

(assert (=> b!4454995 m!5156413))

(assert (=> b!4454995 m!5156413))

(declare-fun m!5156415 () Bool)

(assert (=> b!4454999 m!5156415))

(assert (=> b!4454997 m!5156411))

(declare-fun m!5156417 () Bool)

(assert (=> d!1359033 m!5156417))

(assert (=> d!1359033 m!5155929))

(assert (=> bm!310035 m!5155827))

(declare-fun m!5156419 () Bool)

(assert (=> bm!310035 m!5156419))

(declare-fun m!5156421 () Bool)

(assert (=> bm!310036 m!5156421))

(declare-fun m!5156423 () Bool)

(assert (=> bm!310034 m!5156423))

(declare-fun m!5156425 () Bool)

(assert (=> b!4454998 m!5156425))

(assert (=> b!4454672 d!1359033))

(declare-fun bs!790626 () Bool)

(declare-fun d!1359047 () Bool)

(assert (= bs!790626 (and d!1359047 d!1358919)))

(declare-fun lambda!159980 () Int)

(assert (=> bs!790626 (not (= lambda!159980 lambda!159921))))

(declare-fun bs!790627 () Bool)

(assert (= bs!790627 (and d!1359047 d!1358885)))

(assert (=> bs!790627 (not (= lambda!159980 lambda!159850))))

(declare-fun bs!790628 () Bool)

(assert (= bs!790628 (and d!1359047 start!436432)))

(assert (=> bs!790628 (= lambda!159980 lambda!159841)))

(declare-fun bs!790630 () Bool)

(assert (= bs!790630 (and d!1359047 d!1358891)))

(assert (=> bs!790630 (= lambda!159980 lambda!159853)))

(declare-fun bs!790631 () Bool)

(assert (= bs!790631 (and d!1359047 d!1358915)))

(assert (=> bs!790631 (= lambda!159980 lambda!159920)))

(declare-fun bs!790632 () Bool)

(assert (= bs!790632 (and d!1359047 d!1359003)))

(assert (=> bs!790632 (= lambda!159980 lambda!159968)))

(declare-fun lt!1646613 () ListMap!3025)

(assert (=> d!1359047 (invariantList!870 (toList!3786 lt!1646613))))

(declare-fun e!2774176 () ListMap!3025)

(assert (=> d!1359047 (= lt!1646613 e!2774176)))

(declare-fun c!758422 () Bool)

(assert (=> d!1359047 (= c!758422 ((_ is Cons!49951) (t!357025 (toList!3785 lm!1837))))))

(assert (=> d!1359047 (forall!9802 (t!357025 (toList!3785 lm!1837)) lambda!159980)))

(assert (=> d!1359047 (= (extractMap!958 (t!357025 (toList!3785 lm!1837))) lt!1646613)))

(declare-fun b!4455012 () Bool)

(assert (=> b!4455012 (= e!2774176 (addToMapMapFromBucket!489 (_2!28286 (h!55696 (t!357025 (toList!3785 lm!1837)))) (extractMap!958 (t!357025 (t!357025 (toList!3785 lm!1837))))))))

(declare-fun b!4455013 () Bool)

(assert (=> b!4455013 (= e!2774176 (ListMap!3026 Nil!49950))))

(assert (= (and d!1359047 c!758422) b!4455012))

(assert (= (and d!1359047 (not c!758422)) b!4455013))

(declare-fun m!5156429 () Bool)

(assert (=> d!1359047 m!5156429))

(declare-fun m!5156431 () Bool)

(assert (=> d!1359047 m!5156431))

(declare-fun m!5156433 () Bool)

(assert (=> b!4455012 m!5156433))

(assert (=> b!4455012 m!5156433))

(declare-fun m!5156435 () Bool)

(assert (=> b!4455012 m!5156435))

(assert (=> b!4454672 d!1359047))

(declare-fun d!1359049 () Bool)

(declare-fun noDuplicatedKeys!203 (List!50074) Bool)

(assert (=> d!1359049 (= (invariantList!870 (toList!3786 lt!1646384)) (noDuplicatedKeys!203 (toList!3786 lt!1646384)))))

(declare-fun bs!790633 () Bool)

(assert (= bs!790633 d!1359049))

(declare-fun m!5156437 () Bool)

(assert (=> bs!790633 m!5156437))

(assert (=> b!4454740 d!1359049))

(declare-fun d!1359051 () Bool)

(assert (=> d!1359051 (= (invariantList!870 (toList!3786 lt!1646416)) (noDuplicatedKeys!203 (toList!3786 lt!1646416)))))

(declare-fun bs!790634 () Bool)

(assert (= bs!790634 d!1359051))

(declare-fun m!5156439 () Bool)

(assert (=> bs!790634 m!5156439))

(assert (=> d!1358915 d!1359051))

(declare-fun d!1359053 () Bool)

(declare-fun res!1846607 () Bool)

(declare-fun e!2774181 () Bool)

(assert (=> d!1359053 (=> res!1846607 e!2774181)))

(assert (=> d!1359053 (= res!1846607 ((_ is Nil!49951) (toList!3785 lt!1646233)))))

(assert (=> d!1359053 (= (forall!9802 (toList!3785 lt!1646233) lambda!159920) e!2774181)))

(declare-fun b!4455020 () Bool)

(declare-fun e!2774182 () Bool)

(assert (=> b!4455020 (= e!2774181 e!2774182)))

(declare-fun res!1846608 () Bool)

(assert (=> b!4455020 (=> (not res!1846608) (not e!2774182))))

(assert (=> b!4455020 (= res!1846608 (dynLambda!20959 lambda!159920 (h!55696 (toList!3785 lt!1646233))))))

(declare-fun b!4455021 () Bool)

(assert (=> b!4455021 (= e!2774182 (forall!9802 (t!357025 (toList!3785 lt!1646233)) lambda!159920))))

(assert (= (and d!1359053 (not res!1846607)) b!4455020))

(assert (= (and b!4455020 res!1846608) b!4455021))

(declare-fun b_lambda!147585 () Bool)

(assert (=> (not b_lambda!147585) (not b!4455020)))

(declare-fun m!5156445 () Bool)

(assert (=> b!4455020 m!5156445))

(declare-fun m!5156447 () Bool)

(assert (=> b!4455021 m!5156447))

(assert (=> d!1358915 d!1359053))

(assert (=> b!4454769 d!1358983))

(declare-fun d!1359061 () Bool)

(assert (=> d!1359061 (containsKey!1311 (toList!3786 lt!1646234) key!4369)))

(declare-fun lt!1646617 () Unit!85864)

(declare-fun choose!28368 (List!50074 K!11325) Unit!85864)

(assert (=> d!1359061 (= lt!1646617 (choose!28368 (toList!3786 lt!1646234) key!4369))))

(assert (=> d!1359061 (invariantList!870 (toList!3786 lt!1646234))))

(assert (=> d!1359061 (= (lemmaInGetKeysListThenContainsKey!315 (toList!3786 lt!1646234) key!4369) lt!1646617)))

(declare-fun bs!790647 () Bool)

(assert (= bs!790647 d!1359061))

(assert (=> bs!790647 m!5155939))

(declare-fun m!5156463 () Bool)

(assert (=> bs!790647 m!5156463))

(assert (=> bs!790647 m!5156361))

(assert (=> b!4454769 d!1359061))

(declare-fun d!1359081 () Bool)

(declare-fun res!1846609 () Bool)

(declare-fun e!2774183 () Bool)

(assert (=> d!1359081 (=> res!1846609 e!2774183)))

(assert (=> d!1359081 (= res!1846609 ((_ is Nil!49950) (toList!3786 lt!1646234)))))

(assert (=> d!1359081 (= (forall!9804 (toList!3786 lt!1646234) lambda!159918) e!2774183)))

(declare-fun b!4455022 () Bool)

(declare-fun e!2774184 () Bool)

(assert (=> b!4455022 (= e!2774183 e!2774184)))

(declare-fun res!1846610 () Bool)

(assert (=> b!4455022 (=> (not res!1846610) (not e!2774184))))

(assert (=> b!4455022 (= res!1846610 (dynLambda!20961 lambda!159918 (h!55695 (toList!3786 lt!1646234))))))

(declare-fun b!4455023 () Bool)

(assert (=> b!4455023 (= e!2774184 (forall!9804 (t!357024 (toList!3786 lt!1646234)) lambda!159918))))

(assert (= (and d!1359081 (not res!1846609)) b!4455022))

(assert (= (and b!4455022 res!1846610) b!4455023))

(declare-fun b_lambda!147587 () Bool)

(assert (=> (not b_lambda!147587) (not b!4455022)))

(declare-fun m!5156465 () Bool)

(assert (=> b!4455022 m!5156465))

(declare-fun m!5156467 () Bool)

(assert (=> b!4455023 m!5156467))

(assert (=> b!4454739 d!1359081))

(declare-fun d!1359083 () Bool)

(assert (=> d!1359083 (= (invariantList!870 (toList!3786 lt!1646240)) (noDuplicatedKeys!203 (toList!3786 lt!1646240)))))

(declare-fun bs!790648 () Bool)

(assert (= bs!790648 d!1359083))

(declare-fun m!5156469 () Bool)

(assert (=> bs!790648 m!5156469))

(assert (=> d!1358891 d!1359083))

(declare-fun d!1359085 () Bool)

(declare-fun res!1846611 () Bool)

(declare-fun e!2774185 () Bool)

(assert (=> d!1359085 (=> res!1846611 e!2774185)))

(assert (=> d!1359085 (= res!1846611 ((_ is Nil!49951) (toList!3785 lm!1837)))))

(assert (=> d!1359085 (= (forall!9802 (toList!3785 lm!1837) lambda!159853) e!2774185)))

(declare-fun b!4455024 () Bool)

(declare-fun e!2774186 () Bool)

(assert (=> b!4455024 (= e!2774185 e!2774186)))

(declare-fun res!1846612 () Bool)

(assert (=> b!4455024 (=> (not res!1846612) (not e!2774186))))

(assert (=> b!4455024 (= res!1846612 (dynLambda!20959 lambda!159853 (h!55696 (toList!3785 lm!1837))))))

(declare-fun b!4455025 () Bool)

(assert (=> b!4455025 (= e!2774186 (forall!9802 (t!357025 (toList!3785 lm!1837)) lambda!159853))))

(assert (= (and d!1359085 (not res!1846611)) b!4455024))

(assert (= (and b!4455024 res!1846612) b!4455025))

(declare-fun b_lambda!147589 () Bool)

(assert (=> (not b_lambda!147589) (not b!4455024)))

(declare-fun m!5156471 () Bool)

(assert (=> b!4455024 m!5156471))

(declare-fun m!5156473 () Bool)

(assert (=> b!4455025 m!5156473))

(assert (=> d!1358891 d!1359085))

(declare-fun d!1359087 () Bool)

(declare-fun res!1846613 () Bool)

(declare-fun e!2774187 () Bool)

(assert (=> d!1359087 (=> res!1846613 e!2774187)))

(assert (=> d!1359087 (= res!1846613 ((_ is Nil!49951) (toList!3785 lm!1837)))))

(assert (=> d!1359087 (= (forall!9802 (toList!3785 lm!1837) lambda!159850) e!2774187)))

(declare-fun b!4455026 () Bool)

(declare-fun e!2774188 () Bool)

(assert (=> b!4455026 (= e!2774187 e!2774188)))

(declare-fun res!1846614 () Bool)

(assert (=> b!4455026 (=> (not res!1846614) (not e!2774188))))

(assert (=> b!4455026 (= res!1846614 (dynLambda!20959 lambda!159850 (h!55696 (toList!3785 lm!1837))))))

(declare-fun b!4455027 () Bool)

(assert (=> b!4455027 (= e!2774188 (forall!9802 (t!357025 (toList!3785 lm!1837)) lambda!159850))))

(assert (= (and d!1359087 (not res!1846613)) b!4455026))

(assert (= (and b!4455026 res!1846614) b!4455027))

(declare-fun b_lambda!147591 () Bool)

(assert (=> (not b_lambda!147591) (not b!4455026)))

(declare-fun m!5156475 () Bool)

(assert (=> b!4455026 m!5156475))

(declare-fun m!5156477 () Bool)

(assert (=> b!4455027 m!5156477))

(assert (=> d!1358885 d!1359087))

(declare-fun d!1359089 () Bool)

(declare-fun res!1846615 () Bool)

(declare-fun e!2774189 () Bool)

(assert (=> d!1359089 (=> res!1846615 e!2774189)))

(assert (=> d!1359089 (= res!1846615 (not ((_ is Cons!49950) (_2!28286 (h!55696 (toList!3785 lt!1646233))))))))

(assert (=> d!1359089 (= (noDuplicateKeys!889 (_2!28286 (h!55696 (toList!3785 lt!1646233)))) e!2774189)))

(declare-fun b!4455028 () Bool)

(declare-fun e!2774190 () Bool)

(assert (=> b!4455028 (= e!2774189 e!2774190)))

(declare-fun res!1846616 () Bool)

(assert (=> b!4455028 (=> (not res!1846616) (not e!2774190))))

(assert (=> b!4455028 (= res!1846616 (not (containsKey!1312 (t!357024 (_2!28286 (h!55696 (toList!3785 lt!1646233)))) (_1!28285 (h!55695 (_2!28286 (h!55696 (toList!3785 lt!1646233))))))))))

(declare-fun b!4455029 () Bool)

(assert (=> b!4455029 (= e!2774190 (noDuplicateKeys!889 (t!357024 (_2!28286 (h!55696 (toList!3785 lt!1646233))))))))

(assert (= (and d!1359089 (not res!1846615)) b!4455028))

(assert (= (and b!4455028 res!1846616) b!4455029))

(declare-fun m!5156479 () Bool)

(assert (=> b!4455028 m!5156479))

(declare-fun m!5156481 () Bool)

(assert (=> b!4455029 m!5156481))

(assert (=> bs!790459 d!1359089))

(declare-fun d!1359091 () Bool)

(declare-fun res!1846617 () Bool)

(declare-fun e!2774191 () Bool)

(assert (=> d!1359091 (=> res!1846617 e!2774191)))

(assert (=> d!1359091 (= res!1846617 ((_ is Nil!49950) (toList!3786 lt!1646234)))))

(assert (=> d!1359091 (= (forall!9804 (toList!3786 lt!1646234) (ite c!758376 lambda!159916 lambda!159918)) e!2774191)))

(declare-fun b!4455030 () Bool)

(declare-fun e!2774192 () Bool)

(assert (=> b!4455030 (= e!2774191 e!2774192)))

(declare-fun res!1846618 () Bool)

(assert (=> b!4455030 (=> (not res!1846618) (not e!2774192))))

(assert (=> b!4455030 (= res!1846618 (dynLambda!20961 (ite c!758376 lambda!159916 lambda!159918) (h!55695 (toList!3786 lt!1646234))))))

(declare-fun b!4455031 () Bool)

(assert (=> b!4455031 (= e!2774192 (forall!9804 (t!357024 (toList!3786 lt!1646234)) (ite c!758376 lambda!159916 lambda!159918)))))

(assert (= (and d!1359091 (not res!1846617)) b!4455030))

(assert (= (and b!4455030 res!1846618) b!4455031))

(declare-fun b_lambda!147593 () Bool)

(assert (=> (not b_lambda!147593) (not b!4455030)))

(declare-fun m!5156483 () Bool)

(assert (=> b!4455030 m!5156483))

(declare-fun m!5156485 () Bool)

(assert (=> b!4455031 m!5156485))

(assert (=> bm!310014 d!1359091))

(declare-fun d!1359093 () Bool)

(assert (=> d!1359093 (= (tail!7469 (toList!3785 lm!1837)) (t!357025 (toList!3785 lm!1837)))))

(assert (=> d!1358917 d!1359093))

(assert (=> b!4454767 d!1359021))

(assert (=> b!4454767 d!1359023))

(declare-fun bs!790649 () Bool)

(declare-fun d!1359095 () Bool)

(assert (= bs!790649 (and d!1359095 b!4454939)))

(declare-fun lambda!159985 () Int)

(assert (=> bs!790649 (= (= lt!1646375 lt!1646534) (= lambda!159985 lambda!159965))))

(declare-fun bs!790650 () Bool)

(assert (= bs!790650 (and d!1359095 b!4454995)))

(assert (=> bs!790650 (= (= lt!1646375 lt!1646591) (= lambda!159985 lambda!159978))))

(declare-fun bs!790651 () Bool)

(assert (= bs!790651 (and d!1359095 d!1358893)))

(assert (=> bs!790651 (= (= lt!1646375 lt!1646384) (= lambda!159985 lambda!159919))))

(declare-fun bs!790652 () Bool)

(assert (= bs!790652 (and d!1359095 d!1359007)))

(assert (=> bs!790652 (= (= lt!1646375 lt!1646234) (= lambda!159985 lambda!159974))))

(declare-fun bs!790653 () Bool)

(assert (= bs!790653 (and d!1359095 b!4454996)))

(assert (=> bs!790653 (= (= lt!1646375 (extractMap!958 (t!357025 (toList!3785 lm!1837)))) (= lambda!159985 lambda!159976))))

(declare-fun bs!790654 () Bool)

(assert (= bs!790654 (and d!1359095 b!4454737)))

(assert (=> bs!790654 (= (= lt!1646375 lt!1646234) (= lambda!159985 lambda!159917))))

(assert (=> bs!790654 (= lambda!159985 lambda!159918)))

(declare-fun bs!790655 () Bool)

(assert (= bs!790655 (and d!1359095 d!1358987)))

(assert (=> bs!790655 (= (= lt!1646375 lt!1646544) (= lambda!159985 lambda!159966))))

(declare-fun bs!790656 () Bool)

(assert (= bs!790656 (and d!1359095 d!1359033)))

(assert (=> bs!790656 (= (= lt!1646375 lt!1646600) (= lambda!159985 lambda!159979))))

(assert (=> bs!790649 (= (= lt!1646375 (extractMap!958 (t!357025 (toList!3785 lt!1646233)))) (= lambda!159985 lambda!159964))))

(assert (=> bs!790650 (= (= lt!1646375 (extractMap!958 (t!357025 (toList!3785 lm!1837)))) (= lambda!159985 lambda!159977))))

(declare-fun bs!790657 () Bool)

(assert (= bs!790657 (and d!1359095 b!4454940)))

(assert (=> bs!790657 (= (= lt!1646375 (extractMap!958 (t!357025 (toList!3785 lt!1646233)))) (= lambda!159985 lambda!159963))))

(declare-fun bs!790658 () Bool)

(assert (= bs!790658 (and d!1359095 b!4454738)))

(assert (=> bs!790658 (= (= lt!1646375 lt!1646234) (= lambda!159985 lambda!159916))))

(assert (=> d!1359095 true))

(assert (=> d!1359095 (forall!9804 (toList!3786 lt!1646234) lambda!159985)))

(declare-fun lt!1646620 () Unit!85864)

(declare-fun choose!28369 (ListMap!3025 ListMap!3025 K!11325 V!11571) Unit!85864)

(assert (=> d!1359095 (= lt!1646620 (choose!28369 lt!1646234 lt!1646375 (_1!28285 (h!55695 (_2!28286 (h!55696 (toList!3785 lm!1837))))) (_2!28285 (h!55695 (_2!28286 (h!55696 (toList!3785 lm!1837)))))))))

(assert (=> d!1359095 (forall!9804 (toList!3786 (+!1280 lt!1646234 (tuple2!49983 (_1!28285 (h!55695 (_2!28286 (h!55696 (toList!3785 lm!1837))))) (_2!28285 (h!55695 (_2!28286 (h!55696 (toList!3785 lm!1837)))))))) lambda!159985)))

(assert (=> d!1359095 (= (addForallContainsKeyThenBeforeAdding!223 lt!1646234 lt!1646375 (_1!28285 (h!55695 (_2!28286 (h!55696 (toList!3785 lm!1837))))) (_2!28285 (h!55695 (_2!28286 (h!55696 (toList!3785 lm!1837)))))) lt!1646620)))

(declare-fun bs!790659 () Bool)

(assert (= bs!790659 d!1359095))

(declare-fun m!5156487 () Bool)

(assert (=> bs!790659 m!5156487))

(declare-fun m!5156489 () Bool)

(assert (=> bs!790659 m!5156489))

(declare-fun m!5156491 () Bool)

(assert (=> bs!790659 m!5156491))

(declare-fun m!5156493 () Bool)

(assert (=> bs!790659 m!5156493))

(assert (=> b!4454737 d!1359095))

(assert (=> b!4454737 d!1359081))

(declare-fun d!1359097 () Bool)

(declare-fun res!1846619 () Bool)

(declare-fun e!2774193 () Bool)

(assert (=> d!1359097 (=> res!1846619 e!2774193)))

(assert (=> d!1359097 (= res!1846619 ((_ is Nil!49950) (toList!3786 lt!1646373)))))

(assert (=> d!1359097 (= (forall!9804 (toList!3786 lt!1646373) lambda!159918) e!2774193)))

(declare-fun b!4455033 () Bool)

(declare-fun e!2774194 () Bool)

(assert (=> b!4455033 (= e!2774193 e!2774194)))

(declare-fun res!1846620 () Bool)

(assert (=> b!4455033 (=> (not res!1846620) (not e!2774194))))

(assert (=> b!4455033 (= res!1846620 (dynLambda!20961 lambda!159918 (h!55695 (toList!3786 lt!1646373))))))

(declare-fun b!4455034 () Bool)

(assert (=> b!4455034 (= e!2774194 (forall!9804 (t!357024 (toList!3786 lt!1646373)) lambda!159918))))

(assert (= (and d!1359097 (not res!1846619)) b!4455033))

(assert (= (and b!4455033 res!1846620) b!4455034))

(declare-fun b_lambda!147595 () Bool)

(assert (=> (not b_lambda!147595) (not b!4455033)))

(declare-fun m!5156495 () Bool)

(assert (=> b!4455033 m!5156495))

(declare-fun m!5156497 () Bool)

(assert (=> b!4455034 m!5156497))

(assert (=> b!4454737 d!1359097))

(declare-fun d!1359099 () Bool)

(assert (=> d!1359099 (dynLambda!20961 lambda!159918 (h!55695 (_2!28286 (h!55696 (toList!3785 lm!1837)))))))

(declare-fun lt!1646623 () Unit!85864)

(declare-fun choose!28370 (List!50074 Int tuple2!49982) Unit!85864)

(assert (=> d!1359099 (= lt!1646623 (choose!28370 (toList!3786 lt!1646373) lambda!159918 (h!55695 (_2!28286 (h!55696 (toList!3785 lm!1837))))))))

(declare-fun e!2774197 () Bool)

(assert (=> d!1359099 e!2774197))

(declare-fun res!1846623 () Bool)

(assert (=> d!1359099 (=> (not res!1846623) (not e!2774197))))

(assert (=> d!1359099 (= res!1846623 (forall!9804 (toList!3786 lt!1646373) lambda!159918))))

(assert (=> d!1359099 (= (forallContained!2171 (toList!3786 lt!1646373) lambda!159918 (h!55695 (_2!28286 (h!55696 (toList!3785 lm!1837))))) lt!1646623)))

(declare-fun b!4455037 () Bool)

(declare-fun contains!12519 (List!50074 tuple2!49982) Bool)

(assert (=> b!4455037 (= e!2774197 (contains!12519 (toList!3786 lt!1646373) (h!55695 (_2!28286 (h!55696 (toList!3785 lm!1837))))))))

(assert (= (and d!1359099 res!1846623) b!4455037))

(declare-fun b_lambda!147597 () Bool)

(assert (=> (not b_lambda!147597) (not d!1359099)))

(declare-fun m!5156499 () Bool)

(assert (=> d!1359099 m!5156499))

(declare-fun m!5156501 () Bool)

(assert (=> d!1359099 m!5156501))

(assert (=> d!1359099 m!5155911))

(declare-fun m!5156503 () Bool)

(assert (=> b!4455037 m!5156503))

(assert (=> b!4454737 d!1359099))

(declare-fun d!1359101 () Bool)

(declare-fun res!1846624 () Bool)

(declare-fun e!2774198 () Bool)

(assert (=> d!1359101 (=> res!1846624 e!2774198)))

(assert (=> d!1359101 (= res!1846624 ((_ is Nil!49950) (_2!28286 (h!55696 (toList!3785 lm!1837)))))))

(assert (=> d!1359101 (= (forall!9804 (_2!28286 (h!55696 (toList!3785 lm!1837))) lambda!159918) e!2774198)))

(declare-fun b!4455038 () Bool)

(declare-fun e!2774199 () Bool)

(assert (=> b!4455038 (= e!2774198 e!2774199)))

(declare-fun res!1846625 () Bool)

(assert (=> b!4455038 (=> (not res!1846625) (not e!2774199))))

(assert (=> b!4455038 (= res!1846625 (dynLambda!20961 lambda!159918 (h!55695 (_2!28286 (h!55696 (toList!3785 lm!1837))))))))

(declare-fun b!4455039 () Bool)

(assert (=> b!4455039 (= e!2774199 (forall!9804 (t!357024 (_2!28286 (h!55696 (toList!3785 lm!1837)))) lambda!159918))))

(assert (= (and d!1359101 (not res!1846624)) b!4455038))

(assert (= (and b!4455038 res!1846625) b!4455039))

(declare-fun b_lambda!147599 () Bool)

(assert (=> (not b_lambda!147599) (not b!4455038)))

(assert (=> b!4455038 m!5156499))

(declare-fun m!5156505 () Bool)

(assert (=> b!4455039 m!5156505))

(assert (=> b!4454737 d!1359101))

(declare-fun b!4455040 () Bool)

(declare-fun e!2774200 () Bool)

(assert (=> b!4455040 (= e!2774200 (not (contains!12517 (keys!17153 lt!1646375) (_1!28285 (h!55695 (_2!28286 (h!55696 (toList!3785 lm!1837))))))))))

(declare-fun b!4455041 () Bool)

(declare-fun e!2774203 () List!50077)

(assert (=> b!4455041 (= e!2774203 (keys!17153 lt!1646375))))

(declare-fun b!4455043 () Bool)

(assert (=> b!4455043 (= e!2774203 (getKeysList!317 (toList!3786 lt!1646375)))))

(declare-fun b!4455044 () Bool)

(declare-fun e!2774204 () Bool)

(assert (=> b!4455044 (= e!2774204 (contains!12517 (keys!17153 lt!1646375) (_1!28285 (h!55695 (_2!28286 (h!55696 (toList!3785 lm!1837)))))))))

(declare-fun b!4455045 () Bool)

(declare-fun e!2774205 () Bool)

(assert (=> b!4455045 (= e!2774205 e!2774204)))

(declare-fun res!1846628 () Bool)

(assert (=> b!4455045 (=> (not res!1846628) (not e!2774204))))

(assert (=> b!4455045 (= res!1846628 (isDefined!8137 (getValueByKey!835 (toList!3786 lt!1646375) (_1!28285 (h!55695 (_2!28286 (h!55696 (toList!3785 lm!1837))))))))))

(declare-fun bm!310037 () Bool)

(declare-fun call!310042 () Bool)

(assert (=> bm!310037 (= call!310042 (contains!12517 e!2774203 (_1!28285 (h!55695 (_2!28286 (h!55696 (toList!3785 lm!1837)))))))))

(declare-fun c!758425 () Bool)

(declare-fun c!758423 () Bool)

(assert (=> bm!310037 (= c!758425 c!758423)))

(declare-fun b!4455046 () Bool)

(declare-fun e!2774201 () Unit!85864)

(declare-fun e!2774202 () Unit!85864)

(assert (=> b!4455046 (= e!2774201 e!2774202)))

(declare-fun c!758424 () Bool)

(assert (=> b!4455046 (= c!758424 call!310042)))

(declare-fun d!1359103 () Bool)

(assert (=> d!1359103 e!2774205))

(declare-fun res!1846627 () Bool)

(assert (=> d!1359103 (=> res!1846627 e!2774205)))

(assert (=> d!1359103 (= res!1846627 e!2774200)))

(declare-fun res!1846626 () Bool)

(assert (=> d!1359103 (=> (not res!1846626) (not e!2774200))))

(declare-fun lt!1646631 () Bool)

(assert (=> d!1359103 (= res!1846626 (not lt!1646631))))

(declare-fun lt!1646624 () Bool)

(assert (=> d!1359103 (= lt!1646631 lt!1646624)))

(declare-fun lt!1646627 () Unit!85864)

(assert (=> d!1359103 (= lt!1646627 e!2774201)))

(assert (=> d!1359103 (= c!758423 lt!1646624)))

(assert (=> d!1359103 (= lt!1646624 (containsKey!1311 (toList!3786 lt!1646375) (_1!28285 (h!55695 (_2!28286 (h!55696 (toList!3785 lm!1837)))))))))

(assert (=> d!1359103 (= (contains!12515 lt!1646375 (_1!28285 (h!55695 (_2!28286 (h!55696 (toList!3785 lm!1837)))))) lt!1646631)))

(declare-fun b!4455042 () Bool)

(declare-fun Unit!85931 () Unit!85864)

(assert (=> b!4455042 (= e!2774202 Unit!85931)))

(declare-fun b!4455047 () Bool)

(assert (=> b!4455047 false))

(declare-fun lt!1646630 () Unit!85864)

(declare-fun lt!1646625 () Unit!85864)

(assert (=> b!4455047 (= lt!1646630 lt!1646625)))

(assert (=> b!4455047 (containsKey!1311 (toList!3786 lt!1646375) (_1!28285 (h!55695 (_2!28286 (h!55696 (toList!3785 lm!1837))))))))

(assert (=> b!4455047 (= lt!1646625 (lemmaInGetKeysListThenContainsKey!315 (toList!3786 lt!1646375) (_1!28285 (h!55695 (_2!28286 (h!55696 (toList!3785 lm!1837)))))))))

(declare-fun Unit!85932 () Unit!85864)

(assert (=> b!4455047 (= e!2774202 Unit!85932)))

(declare-fun b!4455048 () Bool)

(declare-fun lt!1646628 () Unit!85864)

(assert (=> b!4455048 (= e!2774201 lt!1646628)))

(declare-fun lt!1646629 () Unit!85864)

(assert (=> b!4455048 (= lt!1646629 (lemmaContainsKeyImpliesGetValueByKeyDefined!739 (toList!3786 lt!1646375) (_1!28285 (h!55695 (_2!28286 (h!55696 (toList!3785 lm!1837)))))))))

(assert (=> b!4455048 (isDefined!8137 (getValueByKey!835 (toList!3786 lt!1646375) (_1!28285 (h!55695 (_2!28286 (h!55696 (toList!3785 lm!1837)))))))))

(declare-fun lt!1646626 () Unit!85864)

(assert (=> b!4455048 (= lt!1646626 lt!1646629)))

(assert (=> b!4455048 (= lt!1646628 (lemmaInListThenGetKeysListContains!313 (toList!3786 lt!1646375) (_1!28285 (h!55695 (_2!28286 (h!55696 (toList!3785 lm!1837)))))))))

(assert (=> b!4455048 call!310042))

(assert (= (and d!1359103 c!758423) b!4455048))

(assert (= (and d!1359103 (not c!758423)) b!4455046))

(assert (= (and b!4455046 c!758424) b!4455047))

(assert (= (and b!4455046 (not c!758424)) b!4455042))

(assert (= (or b!4455048 b!4455046) bm!310037))

(assert (= (and bm!310037 c!758425) b!4455043))

(assert (= (and bm!310037 (not c!758425)) b!4455041))

(assert (= (and d!1359103 res!1846626) b!4455040))

(assert (= (and d!1359103 (not res!1846627)) b!4455045))

(assert (= (and b!4455045 res!1846628) b!4455044))

(declare-fun m!5156507 () Bool)

(assert (=> d!1359103 m!5156507))

(declare-fun m!5156509 () Bool)

(assert (=> b!4455048 m!5156509))

(declare-fun m!5156511 () Bool)

(assert (=> b!4455048 m!5156511))

(assert (=> b!4455048 m!5156511))

(declare-fun m!5156513 () Bool)

(assert (=> b!4455048 m!5156513))

(declare-fun m!5156515 () Bool)

(assert (=> b!4455048 m!5156515))

(declare-fun m!5156517 () Bool)

(assert (=> b!4455043 m!5156517))

(declare-fun m!5156519 () Bool)

(assert (=> b!4455040 m!5156519))

(assert (=> b!4455040 m!5156519))

(declare-fun m!5156521 () Bool)

(assert (=> b!4455040 m!5156521))

(assert (=> b!4455044 m!5156519))

(assert (=> b!4455044 m!5156519))

(assert (=> b!4455044 m!5156521))

(assert (=> b!4455047 m!5156507))

(declare-fun m!5156523 () Bool)

(assert (=> b!4455047 m!5156523))

(assert (=> b!4455041 m!5156519))

(assert (=> b!4455045 m!5156511))

(assert (=> b!4455045 m!5156511))

(assert (=> b!4455045 m!5156513))

(declare-fun m!5156525 () Bool)

(assert (=> bm!310037 m!5156525))

(assert (=> b!4454737 d!1359103))

(declare-fun d!1359105 () Bool)

(declare-fun e!2774208 () Bool)

(assert (=> d!1359105 e!2774208))

(declare-fun res!1846634 () Bool)

(assert (=> d!1359105 (=> (not res!1846634) (not e!2774208))))

(declare-fun lt!1646642 () ListMap!3025)

(assert (=> d!1359105 (= res!1846634 (contains!12515 lt!1646642 (_1!28285 (h!55695 (_2!28286 (h!55696 (toList!3785 lm!1837)))))))))

(declare-fun lt!1646640 () List!50074)

(assert (=> d!1359105 (= lt!1646642 (ListMap!3026 lt!1646640))))

(declare-fun lt!1646643 () Unit!85864)

(declare-fun lt!1646641 () Unit!85864)

(assert (=> d!1359105 (= lt!1646643 lt!1646641)))

(assert (=> d!1359105 (= (getValueByKey!835 lt!1646640 (_1!28285 (h!55695 (_2!28286 (h!55696 (toList!3785 lm!1837)))))) (Some!10848 (_2!28285 (h!55695 (_2!28286 (h!55696 (toList!3785 lm!1837)))))))))

(declare-fun lemmaContainsTupThenGetReturnValue!544 (List!50074 K!11325 V!11571) Unit!85864)

(assert (=> d!1359105 (= lt!1646641 (lemmaContainsTupThenGetReturnValue!544 lt!1646640 (_1!28285 (h!55695 (_2!28286 (h!55696 (toList!3785 lm!1837))))) (_2!28285 (h!55695 (_2!28286 (h!55696 (toList!3785 lm!1837)))))))))

(declare-fun insertNoDuplicatedKeys!238 (List!50074 K!11325 V!11571) List!50074)

(assert (=> d!1359105 (= lt!1646640 (insertNoDuplicatedKeys!238 (toList!3786 lt!1646234) (_1!28285 (h!55695 (_2!28286 (h!55696 (toList!3785 lm!1837))))) (_2!28285 (h!55695 (_2!28286 (h!55696 (toList!3785 lm!1837)))))))))

(assert (=> d!1359105 (= (+!1280 lt!1646234 (h!55695 (_2!28286 (h!55696 (toList!3785 lm!1837))))) lt!1646642)))

(declare-fun b!4455053 () Bool)

(declare-fun res!1846633 () Bool)

(assert (=> b!4455053 (=> (not res!1846633) (not e!2774208))))

(assert (=> b!4455053 (= res!1846633 (= (getValueByKey!835 (toList!3786 lt!1646642) (_1!28285 (h!55695 (_2!28286 (h!55696 (toList!3785 lm!1837)))))) (Some!10848 (_2!28285 (h!55695 (_2!28286 (h!55696 (toList!3785 lm!1837))))))))))

(declare-fun b!4455054 () Bool)

(assert (=> b!4455054 (= e!2774208 (contains!12519 (toList!3786 lt!1646642) (h!55695 (_2!28286 (h!55696 (toList!3785 lm!1837))))))))

(assert (= (and d!1359105 res!1846634) b!4455053))

(assert (= (and b!4455053 res!1846633) b!4455054))

(declare-fun m!5156527 () Bool)

(assert (=> d!1359105 m!5156527))

(declare-fun m!5156529 () Bool)

(assert (=> d!1359105 m!5156529))

(declare-fun m!5156531 () Bool)

(assert (=> d!1359105 m!5156531))

(declare-fun m!5156533 () Bool)

(assert (=> d!1359105 m!5156533))

(declare-fun m!5156535 () Bool)

(assert (=> b!4455053 m!5156535))

(declare-fun m!5156537 () Bool)

(assert (=> b!4455054 m!5156537))

(assert (=> b!4454737 d!1359105))

(declare-fun b!4455055 () Bool)

(declare-fun e!2774209 () Bool)

(assert (=> b!4455055 (= e!2774209 (not (contains!12517 (keys!17153 lt!1646373) (_1!28285 (h!55695 (_2!28286 (h!55696 (toList!3785 lm!1837))))))))))

(declare-fun b!4455056 () Bool)

(declare-fun e!2774212 () List!50077)

(assert (=> b!4455056 (= e!2774212 (keys!17153 lt!1646373))))

(declare-fun b!4455058 () Bool)

(assert (=> b!4455058 (= e!2774212 (getKeysList!317 (toList!3786 lt!1646373)))))

(declare-fun b!4455059 () Bool)

(declare-fun e!2774213 () Bool)

(assert (=> b!4455059 (= e!2774213 (contains!12517 (keys!17153 lt!1646373) (_1!28285 (h!55695 (_2!28286 (h!55696 (toList!3785 lm!1837)))))))))

(declare-fun b!4455060 () Bool)

(declare-fun e!2774214 () Bool)

(assert (=> b!4455060 (= e!2774214 e!2774213)))

(declare-fun res!1846637 () Bool)

(assert (=> b!4455060 (=> (not res!1846637) (not e!2774213))))

(assert (=> b!4455060 (= res!1846637 (isDefined!8137 (getValueByKey!835 (toList!3786 lt!1646373) (_1!28285 (h!55695 (_2!28286 (h!55696 (toList!3785 lm!1837))))))))))

(declare-fun bm!310038 () Bool)

(declare-fun call!310043 () Bool)

(assert (=> bm!310038 (= call!310043 (contains!12517 e!2774212 (_1!28285 (h!55695 (_2!28286 (h!55696 (toList!3785 lm!1837)))))))))

(declare-fun c!758428 () Bool)

(declare-fun c!758426 () Bool)

(assert (=> bm!310038 (= c!758428 c!758426)))

(declare-fun b!4455061 () Bool)

(declare-fun e!2774210 () Unit!85864)

(declare-fun e!2774211 () Unit!85864)

(assert (=> b!4455061 (= e!2774210 e!2774211)))

(declare-fun c!758427 () Bool)

(assert (=> b!4455061 (= c!758427 call!310043)))

(declare-fun d!1359107 () Bool)

(assert (=> d!1359107 e!2774214))

(declare-fun res!1846636 () Bool)

(assert (=> d!1359107 (=> res!1846636 e!2774214)))

(assert (=> d!1359107 (= res!1846636 e!2774209)))

(declare-fun res!1846635 () Bool)

(assert (=> d!1359107 (=> (not res!1846635) (not e!2774209))))

(declare-fun lt!1646651 () Bool)

(assert (=> d!1359107 (= res!1846635 (not lt!1646651))))

(declare-fun lt!1646644 () Bool)

(assert (=> d!1359107 (= lt!1646651 lt!1646644)))

(declare-fun lt!1646647 () Unit!85864)

(assert (=> d!1359107 (= lt!1646647 e!2774210)))

(assert (=> d!1359107 (= c!758426 lt!1646644)))

(assert (=> d!1359107 (= lt!1646644 (containsKey!1311 (toList!3786 lt!1646373) (_1!28285 (h!55695 (_2!28286 (h!55696 (toList!3785 lm!1837)))))))))

(assert (=> d!1359107 (= (contains!12515 lt!1646373 (_1!28285 (h!55695 (_2!28286 (h!55696 (toList!3785 lm!1837)))))) lt!1646651)))

(declare-fun b!4455057 () Bool)

(declare-fun Unit!85944 () Unit!85864)

(assert (=> b!4455057 (= e!2774211 Unit!85944)))

(declare-fun b!4455062 () Bool)

(assert (=> b!4455062 false))

(declare-fun lt!1646650 () Unit!85864)

(declare-fun lt!1646645 () Unit!85864)

(assert (=> b!4455062 (= lt!1646650 lt!1646645)))

(assert (=> b!4455062 (containsKey!1311 (toList!3786 lt!1646373) (_1!28285 (h!55695 (_2!28286 (h!55696 (toList!3785 lm!1837))))))))

(assert (=> b!4455062 (= lt!1646645 (lemmaInGetKeysListThenContainsKey!315 (toList!3786 lt!1646373) (_1!28285 (h!55695 (_2!28286 (h!55696 (toList!3785 lm!1837)))))))))

(declare-fun Unit!85945 () Unit!85864)

(assert (=> b!4455062 (= e!2774211 Unit!85945)))

(declare-fun b!4455063 () Bool)

(declare-fun lt!1646648 () Unit!85864)

(assert (=> b!4455063 (= e!2774210 lt!1646648)))

(declare-fun lt!1646649 () Unit!85864)

(assert (=> b!4455063 (= lt!1646649 (lemmaContainsKeyImpliesGetValueByKeyDefined!739 (toList!3786 lt!1646373) (_1!28285 (h!55695 (_2!28286 (h!55696 (toList!3785 lm!1837)))))))))

(assert (=> b!4455063 (isDefined!8137 (getValueByKey!835 (toList!3786 lt!1646373) (_1!28285 (h!55695 (_2!28286 (h!55696 (toList!3785 lm!1837)))))))))

(declare-fun lt!1646646 () Unit!85864)

(assert (=> b!4455063 (= lt!1646646 lt!1646649)))

(assert (=> b!4455063 (= lt!1646648 (lemmaInListThenGetKeysListContains!313 (toList!3786 lt!1646373) (_1!28285 (h!55695 (_2!28286 (h!55696 (toList!3785 lm!1837)))))))))

(assert (=> b!4455063 call!310043))

(assert (= (and d!1359107 c!758426) b!4455063))

(assert (= (and d!1359107 (not c!758426)) b!4455061))

(assert (= (and b!4455061 c!758427) b!4455062))

(assert (= (and b!4455061 (not c!758427)) b!4455057))

(assert (= (or b!4455063 b!4455061) bm!310038))

(assert (= (and bm!310038 c!758428) b!4455058))

(assert (= (and bm!310038 (not c!758428)) b!4455056))

(assert (= (and d!1359107 res!1846635) b!4455055))

(assert (= (and d!1359107 (not res!1846636)) b!4455060))

(assert (= (and b!4455060 res!1846637) b!4455059))

(declare-fun m!5156539 () Bool)

(assert (=> d!1359107 m!5156539))

(declare-fun m!5156541 () Bool)

(assert (=> b!4455063 m!5156541))

(declare-fun m!5156543 () Bool)

(assert (=> b!4455063 m!5156543))

(assert (=> b!4455063 m!5156543))

(declare-fun m!5156545 () Bool)

(assert (=> b!4455063 m!5156545))

(declare-fun m!5156547 () Bool)

(assert (=> b!4455063 m!5156547))

(declare-fun m!5156549 () Bool)

(assert (=> b!4455058 m!5156549))

(declare-fun m!5156551 () Bool)

(assert (=> b!4455055 m!5156551))

(assert (=> b!4455055 m!5156551))

(declare-fun m!5156553 () Bool)

(assert (=> b!4455055 m!5156553))

(assert (=> b!4455059 m!5156551))

(assert (=> b!4455059 m!5156551))

(assert (=> b!4455059 m!5156553))

(assert (=> b!4455062 m!5156539))

(declare-fun m!5156555 () Bool)

(assert (=> b!4455062 m!5156555))

(assert (=> b!4455056 m!5156551))

(assert (=> b!4455060 m!5156543))

(assert (=> b!4455060 m!5156543))

(assert (=> b!4455060 m!5156545))

(declare-fun m!5156557 () Bool)

(assert (=> bm!310038 m!5156557))

(assert (=> b!4454737 d!1359107))

(declare-fun d!1359109 () Bool)

(declare-fun res!1846638 () Bool)

(declare-fun e!2774215 () Bool)

(assert (=> d!1359109 (=> res!1846638 e!2774215)))

(assert (=> d!1359109 (= res!1846638 ((_ is Nil!49950) (toList!3786 lt!1646234)))))

(assert (=> d!1359109 (= (forall!9804 (toList!3786 lt!1646234) lambda!159917) e!2774215)))

(declare-fun b!4455064 () Bool)

(declare-fun e!2774216 () Bool)

(assert (=> b!4455064 (= e!2774215 e!2774216)))

(declare-fun res!1846639 () Bool)

(assert (=> b!4455064 (=> (not res!1846639) (not e!2774216))))

(assert (=> b!4455064 (= res!1846639 (dynLambda!20961 lambda!159917 (h!55695 (toList!3786 lt!1646234))))))

(declare-fun b!4455065 () Bool)

(assert (=> b!4455065 (= e!2774216 (forall!9804 (t!357024 (toList!3786 lt!1646234)) lambda!159917))))

(assert (= (and d!1359109 (not res!1846638)) b!4455064))

(assert (= (and b!4455064 res!1846639) b!4455065))

(declare-fun b_lambda!147601 () Bool)

(assert (=> (not b_lambda!147601) (not b!4455064)))

(declare-fun m!5156559 () Bool)

(assert (=> b!4455064 m!5156559))

(declare-fun m!5156561 () Bool)

(assert (=> b!4455065 m!5156561))

(assert (=> b!4454737 d!1359109))

(declare-fun bs!790660 () Bool)

(declare-fun b!4455067 () Bool)

(assert (= bs!790660 (and b!4455067 b!4454939)))

(declare-fun lambda!159986 () Int)

(assert (=> bs!790660 (= (= (+!1280 lt!1646234 (h!55695 (_2!28286 (h!55696 (toList!3785 lm!1837))))) lt!1646534) (= lambda!159986 lambda!159965))))

(declare-fun bs!790661 () Bool)

(assert (= bs!790661 (and b!4455067 b!4454995)))

(assert (=> bs!790661 (= (= (+!1280 lt!1646234 (h!55695 (_2!28286 (h!55696 (toList!3785 lm!1837))))) lt!1646591) (= lambda!159986 lambda!159978))))

(declare-fun bs!790662 () Bool)

(assert (= bs!790662 (and b!4455067 d!1358893)))

(assert (=> bs!790662 (= (= (+!1280 lt!1646234 (h!55695 (_2!28286 (h!55696 (toList!3785 lm!1837))))) lt!1646384) (= lambda!159986 lambda!159919))))

(declare-fun bs!790663 () Bool)

(assert (= bs!790663 (and b!4455067 d!1359007)))

(assert (=> bs!790663 (= (= (+!1280 lt!1646234 (h!55695 (_2!28286 (h!55696 (toList!3785 lm!1837))))) lt!1646234) (= lambda!159986 lambda!159974))))

(declare-fun bs!790664 () Bool)

(assert (= bs!790664 (and b!4455067 b!4454996)))

(assert (=> bs!790664 (= (= (+!1280 lt!1646234 (h!55695 (_2!28286 (h!55696 (toList!3785 lm!1837))))) (extractMap!958 (t!357025 (toList!3785 lm!1837)))) (= lambda!159986 lambda!159976))))

(declare-fun bs!790665 () Bool)

(assert (= bs!790665 (and b!4455067 b!4454737)))

(assert (=> bs!790665 (= (= (+!1280 lt!1646234 (h!55695 (_2!28286 (h!55696 (toList!3785 lm!1837))))) lt!1646234) (= lambda!159986 lambda!159917))))

(assert (=> bs!790665 (= (= (+!1280 lt!1646234 (h!55695 (_2!28286 (h!55696 (toList!3785 lm!1837))))) lt!1646375) (= lambda!159986 lambda!159918))))

(declare-fun bs!790666 () Bool)

(assert (= bs!790666 (and b!4455067 d!1359033)))

(assert (=> bs!790666 (= (= (+!1280 lt!1646234 (h!55695 (_2!28286 (h!55696 (toList!3785 lm!1837))))) lt!1646600) (= lambda!159986 lambda!159979))))

(assert (=> bs!790660 (= (= (+!1280 lt!1646234 (h!55695 (_2!28286 (h!55696 (toList!3785 lm!1837))))) (extractMap!958 (t!357025 (toList!3785 lt!1646233)))) (= lambda!159986 lambda!159964))))

(assert (=> bs!790661 (= (= (+!1280 lt!1646234 (h!55695 (_2!28286 (h!55696 (toList!3785 lm!1837))))) (extractMap!958 (t!357025 (toList!3785 lm!1837)))) (= lambda!159986 lambda!159977))))

(declare-fun bs!790667 () Bool)

(assert (= bs!790667 (and b!4455067 b!4454940)))

(assert (=> bs!790667 (= (= (+!1280 lt!1646234 (h!55695 (_2!28286 (h!55696 (toList!3785 lm!1837))))) (extractMap!958 (t!357025 (toList!3785 lt!1646233)))) (= lambda!159986 lambda!159963))))

(declare-fun bs!790668 () Bool)

(assert (= bs!790668 (and b!4455067 b!4454738)))

(assert (=> bs!790668 (= (= (+!1280 lt!1646234 (h!55695 (_2!28286 (h!55696 (toList!3785 lm!1837))))) lt!1646234) (= lambda!159986 lambda!159916))))

(declare-fun bs!790669 () Bool)

(assert (= bs!790669 (and b!4455067 d!1358987)))

(assert (=> bs!790669 (= (= (+!1280 lt!1646234 (h!55695 (_2!28286 (h!55696 (toList!3785 lm!1837))))) lt!1646544) (= lambda!159986 lambda!159966))))

(declare-fun bs!790670 () Bool)

(assert (= bs!790670 (and b!4455067 d!1359095)))

(assert (=> bs!790670 (= (= (+!1280 lt!1646234 (h!55695 (_2!28286 (h!55696 (toList!3785 lm!1837))))) lt!1646375) (= lambda!159986 lambda!159985))))

(assert (=> b!4455067 true))

(declare-fun bs!790671 () Bool)

(declare-fun b!4455066 () Bool)

(assert (= bs!790671 (and b!4455066 b!4454939)))

(declare-fun lambda!159987 () Int)

(assert (=> bs!790671 (= (= (+!1280 lt!1646234 (h!55695 (_2!28286 (h!55696 (toList!3785 lm!1837))))) lt!1646534) (= lambda!159987 lambda!159965))))

(declare-fun bs!790672 () Bool)

(assert (= bs!790672 (and b!4455066 b!4454995)))

(assert (=> bs!790672 (= (= (+!1280 lt!1646234 (h!55695 (_2!28286 (h!55696 (toList!3785 lm!1837))))) lt!1646591) (= lambda!159987 lambda!159978))))

(declare-fun bs!790673 () Bool)

(assert (= bs!790673 (and b!4455066 d!1358893)))

(assert (=> bs!790673 (= (= (+!1280 lt!1646234 (h!55695 (_2!28286 (h!55696 (toList!3785 lm!1837))))) lt!1646384) (= lambda!159987 lambda!159919))))

(declare-fun bs!790674 () Bool)

(assert (= bs!790674 (and b!4455066 d!1359007)))

(assert (=> bs!790674 (= (= (+!1280 lt!1646234 (h!55695 (_2!28286 (h!55696 (toList!3785 lm!1837))))) lt!1646234) (= lambda!159987 lambda!159974))))

(declare-fun bs!790675 () Bool)

(assert (= bs!790675 (and b!4455066 b!4454737)))

(assert (=> bs!790675 (= (= (+!1280 lt!1646234 (h!55695 (_2!28286 (h!55696 (toList!3785 lm!1837))))) lt!1646234) (= lambda!159987 lambda!159917))))

(assert (=> bs!790675 (= (= (+!1280 lt!1646234 (h!55695 (_2!28286 (h!55696 (toList!3785 lm!1837))))) lt!1646375) (= lambda!159987 lambda!159918))))

(declare-fun bs!790676 () Bool)

(assert (= bs!790676 (and b!4455066 d!1359033)))

(assert (=> bs!790676 (= (= (+!1280 lt!1646234 (h!55695 (_2!28286 (h!55696 (toList!3785 lm!1837))))) lt!1646600) (= lambda!159987 lambda!159979))))

(assert (=> bs!790671 (= (= (+!1280 lt!1646234 (h!55695 (_2!28286 (h!55696 (toList!3785 lm!1837))))) (extractMap!958 (t!357025 (toList!3785 lt!1646233)))) (= lambda!159987 lambda!159964))))

(assert (=> bs!790672 (= (= (+!1280 lt!1646234 (h!55695 (_2!28286 (h!55696 (toList!3785 lm!1837))))) (extractMap!958 (t!357025 (toList!3785 lm!1837)))) (= lambda!159987 lambda!159977))))

(declare-fun bs!790677 () Bool)

(assert (= bs!790677 (and b!4455066 b!4454940)))

(assert (=> bs!790677 (= (= (+!1280 lt!1646234 (h!55695 (_2!28286 (h!55696 (toList!3785 lm!1837))))) (extractMap!958 (t!357025 (toList!3785 lt!1646233)))) (= lambda!159987 lambda!159963))))

(declare-fun bs!790678 () Bool)

(assert (= bs!790678 (and b!4455066 b!4454738)))

(assert (=> bs!790678 (= (= (+!1280 lt!1646234 (h!55695 (_2!28286 (h!55696 (toList!3785 lm!1837))))) lt!1646234) (= lambda!159987 lambda!159916))))

(declare-fun bs!790679 () Bool)

(assert (= bs!790679 (and b!4455066 b!4454996)))

(assert (=> bs!790679 (= (= (+!1280 lt!1646234 (h!55695 (_2!28286 (h!55696 (toList!3785 lm!1837))))) (extractMap!958 (t!357025 (toList!3785 lm!1837)))) (= lambda!159987 lambda!159976))))

(declare-fun bs!790680 () Bool)

(assert (= bs!790680 (and b!4455066 b!4455067)))

(assert (=> bs!790680 (= lambda!159987 lambda!159986)))

(declare-fun bs!790681 () Bool)

(assert (= bs!790681 (and b!4455066 d!1358987)))

(assert (=> bs!790681 (= (= (+!1280 lt!1646234 (h!55695 (_2!28286 (h!55696 (toList!3785 lm!1837))))) lt!1646544) (= lambda!159987 lambda!159966))))

(declare-fun bs!790682 () Bool)

(assert (= bs!790682 (and b!4455066 d!1359095)))

(assert (=> bs!790682 (= (= (+!1280 lt!1646234 (h!55695 (_2!28286 (h!55696 (toList!3785 lm!1837))))) lt!1646375) (= lambda!159987 lambda!159985))))

(assert (=> b!4455066 true))

(declare-fun lt!1646656 () ListMap!3025)

(declare-fun lambda!159988 () Int)

(assert (=> bs!790671 (= (= lt!1646656 lt!1646534) (= lambda!159988 lambda!159965))))

(assert (=> bs!790672 (= (= lt!1646656 lt!1646591) (= lambda!159988 lambda!159978))))

(assert (=> bs!790673 (= (= lt!1646656 lt!1646384) (= lambda!159988 lambda!159919))))

(assert (=> bs!790674 (= (= lt!1646656 lt!1646234) (= lambda!159988 lambda!159974))))

(assert (=> b!4455066 (= (= lt!1646656 (+!1280 lt!1646234 (h!55695 (_2!28286 (h!55696 (toList!3785 lm!1837)))))) (= lambda!159988 lambda!159987))))

(assert (=> bs!790675 (= (= lt!1646656 lt!1646234) (= lambda!159988 lambda!159917))))

(assert (=> bs!790675 (= (= lt!1646656 lt!1646375) (= lambda!159988 lambda!159918))))

(assert (=> bs!790676 (= (= lt!1646656 lt!1646600) (= lambda!159988 lambda!159979))))

(assert (=> bs!790671 (= (= lt!1646656 (extractMap!958 (t!357025 (toList!3785 lt!1646233)))) (= lambda!159988 lambda!159964))))

(assert (=> bs!790672 (= (= lt!1646656 (extractMap!958 (t!357025 (toList!3785 lm!1837)))) (= lambda!159988 lambda!159977))))

(assert (=> bs!790677 (= (= lt!1646656 (extractMap!958 (t!357025 (toList!3785 lt!1646233)))) (= lambda!159988 lambda!159963))))

(assert (=> bs!790678 (= (= lt!1646656 lt!1646234) (= lambda!159988 lambda!159916))))

(assert (=> bs!790679 (= (= lt!1646656 (extractMap!958 (t!357025 (toList!3785 lm!1837)))) (= lambda!159988 lambda!159976))))

(assert (=> bs!790680 (= (= lt!1646656 (+!1280 lt!1646234 (h!55695 (_2!28286 (h!55696 (toList!3785 lm!1837)))))) (= lambda!159988 lambda!159986))))

(assert (=> bs!790681 (= (= lt!1646656 lt!1646544) (= lambda!159988 lambda!159966))))

(assert (=> bs!790682 (= (= lt!1646656 lt!1646375) (= lambda!159988 lambda!159985))))

(assert (=> b!4455066 true))

(declare-fun bs!790683 () Bool)

(declare-fun d!1359111 () Bool)

(assert (= bs!790683 (and d!1359111 b!4454995)))

(declare-fun lt!1646665 () ListMap!3025)

(declare-fun lambda!159989 () Int)

(assert (=> bs!790683 (= (= lt!1646665 lt!1646591) (= lambda!159989 lambda!159978))))

(declare-fun bs!790684 () Bool)

(assert (= bs!790684 (and d!1359111 d!1358893)))

(assert (=> bs!790684 (= (= lt!1646665 lt!1646384) (= lambda!159989 lambda!159919))))

(declare-fun bs!790685 () Bool)

(assert (= bs!790685 (and d!1359111 d!1359007)))

(assert (=> bs!790685 (= (= lt!1646665 lt!1646234) (= lambda!159989 lambda!159974))))

(declare-fun bs!790686 () Bool)

(assert (= bs!790686 (and d!1359111 b!4455066)))

(assert (=> bs!790686 (= (= lt!1646665 (+!1280 lt!1646234 (h!55695 (_2!28286 (h!55696 (toList!3785 lm!1837)))))) (= lambda!159989 lambda!159987))))

(declare-fun bs!790687 () Bool)

(assert (= bs!790687 (and d!1359111 b!4454737)))

(assert (=> bs!790687 (= (= lt!1646665 lt!1646234) (= lambda!159989 lambda!159917))))

(assert (=> bs!790687 (= (= lt!1646665 lt!1646375) (= lambda!159989 lambda!159918))))

(declare-fun bs!790688 () Bool)

(assert (= bs!790688 (and d!1359111 d!1359033)))

(assert (=> bs!790688 (= (= lt!1646665 lt!1646600) (= lambda!159989 lambda!159979))))

(declare-fun bs!790689 () Bool)

(assert (= bs!790689 (and d!1359111 b!4454939)))

(assert (=> bs!790689 (= (= lt!1646665 (extractMap!958 (t!357025 (toList!3785 lt!1646233)))) (= lambda!159989 lambda!159964))))

(assert (=> bs!790683 (= (= lt!1646665 (extractMap!958 (t!357025 (toList!3785 lm!1837)))) (= lambda!159989 lambda!159977))))

(declare-fun bs!790690 () Bool)

(assert (= bs!790690 (and d!1359111 b!4454940)))

(assert (=> bs!790690 (= (= lt!1646665 (extractMap!958 (t!357025 (toList!3785 lt!1646233)))) (= lambda!159989 lambda!159963))))

(declare-fun bs!790691 () Bool)

(assert (= bs!790691 (and d!1359111 b!4454738)))

(assert (=> bs!790691 (= (= lt!1646665 lt!1646234) (= lambda!159989 lambda!159916))))

(assert (=> bs!790689 (= (= lt!1646665 lt!1646534) (= lambda!159989 lambda!159965))))

(assert (=> bs!790686 (= (= lt!1646665 lt!1646656) (= lambda!159989 lambda!159988))))

(declare-fun bs!790692 () Bool)

(assert (= bs!790692 (and d!1359111 b!4454996)))

(assert (=> bs!790692 (= (= lt!1646665 (extractMap!958 (t!357025 (toList!3785 lm!1837)))) (= lambda!159989 lambda!159976))))

(declare-fun bs!790693 () Bool)

(assert (= bs!790693 (and d!1359111 b!4455067)))

(assert (=> bs!790693 (= (= lt!1646665 (+!1280 lt!1646234 (h!55695 (_2!28286 (h!55696 (toList!3785 lm!1837)))))) (= lambda!159989 lambda!159986))))

(declare-fun bs!790694 () Bool)

(assert (= bs!790694 (and d!1359111 d!1358987)))

(assert (=> bs!790694 (= (= lt!1646665 lt!1646544) (= lambda!159989 lambda!159966))))

(declare-fun bs!790695 () Bool)

(assert (= bs!790695 (and d!1359111 d!1359095)))

(assert (=> bs!790695 (= (= lt!1646665 lt!1646375) (= lambda!159989 lambda!159985))))

(assert (=> d!1359111 true))

(declare-fun e!2774217 () ListMap!3025)

(assert (=> b!4455066 (= e!2774217 lt!1646656)))

(declare-fun lt!1646654 () ListMap!3025)

(assert (=> b!4455066 (= lt!1646654 (+!1280 (+!1280 lt!1646234 (h!55695 (_2!28286 (h!55696 (toList!3785 lm!1837))))) (h!55695 (t!357024 (_2!28286 (h!55696 (toList!3785 lm!1837)))))))))

(assert (=> b!4455066 (= lt!1646656 (addToMapMapFromBucket!489 (t!357024 (t!357024 (_2!28286 (h!55696 (toList!3785 lm!1837))))) (+!1280 (+!1280 lt!1646234 (h!55695 (_2!28286 (h!55696 (toList!3785 lm!1837))))) (h!55695 (t!357024 (_2!28286 (h!55696 (toList!3785 lm!1837))))))))))

(declare-fun lt!1646668 () Unit!85864)

(declare-fun call!310045 () Unit!85864)

(assert (=> b!4455066 (= lt!1646668 call!310045)))

(assert (=> b!4455066 (forall!9804 (toList!3786 (+!1280 lt!1646234 (h!55695 (_2!28286 (h!55696 (toList!3785 lm!1837)))))) lambda!159987)))

(declare-fun lt!1646660 () Unit!85864)

(assert (=> b!4455066 (= lt!1646660 lt!1646668)))

(assert (=> b!4455066 (forall!9804 (toList!3786 lt!1646654) lambda!159988)))

(declare-fun lt!1646666 () Unit!85864)

(declare-fun Unit!85946 () Unit!85864)

(assert (=> b!4455066 (= lt!1646666 Unit!85946)))

(declare-fun call!310046 () Bool)

(assert (=> b!4455066 call!310046))

(declare-fun lt!1646662 () Unit!85864)

(declare-fun Unit!85947 () Unit!85864)

(assert (=> b!4455066 (= lt!1646662 Unit!85947)))

(declare-fun lt!1646672 () Unit!85864)

(declare-fun Unit!85948 () Unit!85864)

(assert (=> b!4455066 (= lt!1646672 Unit!85948)))

(declare-fun lt!1646669 () Unit!85864)

(assert (=> b!4455066 (= lt!1646669 (forallContained!2171 (toList!3786 lt!1646654) lambda!159988 (h!55695 (t!357024 (_2!28286 (h!55696 (toList!3785 lm!1837)))))))))

(assert (=> b!4455066 (contains!12515 lt!1646654 (_1!28285 (h!55695 (t!357024 (_2!28286 (h!55696 (toList!3785 lm!1837)))))))))

(declare-fun lt!1646661 () Unit!85864)

(declare-fun Unit!85949 () Unit!85864)

(assert (=> b!4455066 (= lt!1646661 Unit!85949)))

(assert (=> b!4455066 (contains!12515 lt!1646656 (_1!28285 (h!55695 (t!357024 (_2!28286 (h!55696 (toList!3785 lm!1837)))))))))

(declare-fun lt!1646657 () Unit!85864)

(declare-fun Unit!85950 () Unit!85864)

(assert (=> b!4455066 (= lt!1646657 Unit!85950)))

(assert (=> b!4455066 (forall!9804 (t!357024 (_2!28286 (h!55696 (toList!3785 lm!1837)))) lambda!159988)))

(declare-fun lt!1646658 () Unit!85864)

(declare-fun Unit!85951 () Unit!85864)

(assert (=> b!4455066 (= lt!1646658 Unit!85951)))

(assert (=> b!4455066 (forall!9804 (toList!3786 lt!1646654) lambda!159988)))

(declare-fun lt!1646659 () Unit!85864)

(declare-fun Unit!85952 () Unit!85864)

(assert (=> b!4455066 (= lt!1646659 Unit!85952)))

(declare-fun lt!1646670 () Unit!85864)

(declare-fun Unit!85953 () Unit!85864)

(assert (=> b!4455066 (= lt!1646670 Unit!85953)))

(declare-fun lt!1646652 () Unit!85864)

(assert (=> b!4455066 (= lt!1646652 (addForallContainsKeyThenBeforeAdding!223 (+!1280 lt!1646234 (h!55695 (_2!28286 (h!55696 (toList!3785 lm!1837))))) lt!1646656 (_1!28285 (h!55695 (t!357024 (_2!28286 (h!55696 (toList!3785 lm!1837)))))) (_2!28285 (h!55695 (t!357024 (_2!28286 (h!55696 (toList!3785 lm!1837))))))))))

(declare-fun call!310044 () Bool)

(assert (=> b!4455066 call!310044))

(declare-fun lt!1646664 () Unit!85864)

(assert (=> b!4455066 (= lt!1646664 lt!1646652)))

(assert (=> b!4455066 (forall!9804 (toList!3786 (+!1280 lt!1646234 (h!55695 (_2!28286 (h!55696 (toList!3785 lm!1837)))))) lambda!159988)))

(declare-fun lt!1646667 () Unit!85864)

(declare-fun Unit!85954 () Unit!85864)

(assert (=> b!4455066 (= lt!1646667 Unit!85954)))

(declare-fun res!1846642 () Bool)

(assert (=> b!4455066 (= res!1846642 (forall!9804 (t!357024 (_2!28286 (h!55696 (toList!3785 lm!1837)))) lambda!159988))))

(declare-fun e!2774218 () Bool)

(assert (=> b!4455066 (=> (not res!1846642) (not e!2774218))))

(assert (=> b!4455066 e!2774218))

(declare-fun lt!1646663 () Unit!85864)

(declare-fun Unit!85955 () Unit!85864)

(assert (=> b!4455066 (= lt!1646663 Unit!85955)))

(assert (=> b!4455067 (= e!2774217 (+!1280 lt!1646234 (h!55695 (_2!28286 (h!55696 (toList!3785 lm!1837))))))))

(declare-fun lt!1646653 () Unit!85864)

(assert (=> b!4455067 (= lt!1646653 call!310045)))

(assert (=> b!4455067 call!310044))

(declare-fun lt!1646655 () Unit!85864)

(assert (=> b!4455067 (= lt!1646655 lt!1646653)))

(assert (=> b!4455067 call!310046))

(declare-fun lt!1646671 () Unit!85864)

(declare-fun Unit!85956 () Unit!85864)

(assert (=> b!4455067 (= lt!1646671 Unit!85956)))

(declare-fun c!758429 () Bool)

(declare-fun bm!310039 () Bool)

(assert (=> bm!310039 (= call!310044 (forall!9804 (toList!3786 (+!1280 lt!1646234 (h!55695 (_2!28286 (h!55696 (toList!3785 lm!1837)))))) (ite c!758429 lambda!159986 lambda!159988)))))

(declare-fun b!4455068 () Bool)

(assert (=> b!4455068 (= e!2774218 (forall!9804 (toList!3786 (+!1280 lt!1646234 (h!55695 (_2!28286 (h!55696 (toList!3785 lm!1837)))))) lambda!159988))))

(declare-fun b!4455069 () Bool)

(declare-fun e!2774219 () Bool)

(assert (=> b!4455069 (= e!2774219 (invariantList!870 (toList!3786 lt!1646665)))))

(declare-fun bm!310040 () Bool)

(assert (=> bm!310040 (= call!310045 (lemmaContainsAllItsOwnKeys!223 (+!1280 lt!1646234 (h!55695 (_2!28286 (h!55696 (toList!3785 lm!1837)))))))))

(assert (=> d!1359111 e!2774219))

(declare-fun res!1846640 () Bool)

(assert (=> d!1359111 (=> (not res!1846640) (not e!2774219))))

(assert (=> d!1359111 (= res!1846640 (forall!9804 (t!357024 (_2!28286 (h!55696 (toList!3785 lm!1837)))) lambda!159989))))

(assert (=> d!1359111 (= lt!1646665 e!2774217)))

(assert (=> d!1359111 (= c!758429 ((_ is Nil!49950) (t!357024 (_2!28286 (h!55696 (toList!3785 lm!1837))))))))

(assert (=> d!1359111 (noDuplicateKeys!889 (t!357024 (_2!28286 (h!55696 (toList!3785 lm!1837)))))))

(assert (=> d!1359111 (= (addToMapMapFromBucket!489 (t!357024 (_2!28286 (h!55696 (toList!3785 lm!1837)))) (+!1280 lt!1646234 (h!55695 (_2!28286 (h!55696 (toList!3785 lm!1837)))))) lt!1646665)))

(declare-fun b!4455070 () Bool)

(declare-fun res!1846641 () Bool)

(assert (=> b!4455070 (=> (not res!1846641) (not e!2774219))))

(assert (=> b!4455070 (= res!1846641 (forall!9804 (toList!3786 (+!1280 lt!1646234 (h!55695 (_2!28286 (h!55696 (toList!3785 lm!1837)))))) lambda!159989))))

(declare-fun bm!310041 () Bool)

(assert (=> bm!310041 (= call!310046 (forall!9804 (ite c!758429 (toList!3786 (+!1280 lt!1646234 (h!55695 (_2!28286 (h!55696 (toList!3785 lm!1837)))))) (t!357024 (t!357024 (_2!28286 (h!55696 (toList!3785 lm!1837)))))) (ite c!758429 lambda!159986 lambda!159988)))))

(assert (= (and d!1359111 c!758429) b!4455067))

(assert (= (and d!1359111 (not c!758429)) b!4455066))

(assert (= (and b!4455066 res!1846642) b!4455068))

(assert (= (or b!4455067 b!4455066) bm!310039))

(assert (= (or b!4455067 b!4455066) bm!310041))

(assert (= (or b!4455067 b!4455066) bm!310040))

(assert (= (and d!1359111 res!1846640) b!4455070))

(assert (= (and b!4455070 res!1846641) b!4455069))

(assert (=> b!4455066 m!5155907))

(declare-fun m!5156563 () Bool)

(assert (=> b!4455066 m!5156563))

(declare-fun m!5156565 () Bool)

(assert (=> b!4455066 m!5156565))

(declare-fun m!5156567 () Bool)

(assert (=> b!4455066 m!5156567))

(declare-fun m!5156569 () Bool)

(assert (=> b!4455066 m!5156569))

(assert (=> b!4455066 m!5156569))

(declare-fun m!5156571 () Bool)

(assert (=> b!4455066 m!5156571))

(declare-fun m!5156573 () Bool)

(assert (=> b!4455066 m!5156573))

(assert (=> b!4455066 m!5155907))

(assert (=> b!4455066 m!5156565))

(declare-fun m!5156575 () Bool)

(assert (=> b!4455066 m!5156575))

(declare-fun m!5156577 () Bool)

(assert (=> b!4455066 m!5156577))

(declare-fun m!5156579 () Bool)

(assert (=> b!4455066 m!5156579))

(declare-fun m!5156581 () Bool)

(assert (=> b!4455066 m!5156581))

(assert (=> b!4455066 m!5156581))

(declare-fun m!5156583 () Bool)

(assert (=> b!4455070 m!5156583))

(assert (=> b!4455068 m!5156579))

(declare-fun m!5156585 () Bool)

(assert (=> d!1359111 m!5156585))

(assert (=> d!1359111 m!5156177))

(assert (=> bm!310040 m!5155907))

(declare-fun m!5156587 () Bool)

(assert (=> bm!310040 m!5156587))

(declare-fun m!5156589 () Bool)

(assert (=> bm!310041 m!5156589))

(declare-fun m!5156591 () Bool)

(assert (=> bm!310039 m!5156591))

(declare-fun m!5156593 () Bool)

(assert (=> b!4455069 m!5156593))

(assert (=> b!4454737 d!1359111))

(declare-fun d!1359113 () Bool)

(declare-fun lt!1646673 () Bool)

(assert (=> d!1359113 (= lt!1646673 (select (content!8041 e!2774003) key!4369))))

(declare-fun e!2774220 () Bool)

(assert (=> d!1359113 (= lt!1646673 e!2774220)))

(declare-fun res!1846643 () Bool)

(assert (=> d!1359113 (=> (not res!1846643) (not e!2774220))))

(assert (=> d!1359113 (= res!1846643 ((_ is Cons!49953) e!2774003))))

(assert (=> d!1359113 (= (contains!12517 e!2774003 key!4369) lt!1646673)))

(declare-fun b!4455071 () Bool)

(declare-fun e!2774221 () Bool)

(assert (=> b!4455071 (= e!2774220 e!2774221)))

(declare-fun res!1846644 () Bool)

(assert (=> b!4455071 (=> res!1846644 e!2774221)))

(assert (=> b!4455071 (= res!1846644 (= (h!55698 e!2774003) key!4369))))

(declare-fun b!4455072 () Bool)

(assert (=> b!4455072 (= e!2774221 (contains!12517 (t!357027 e!2774003) key!4369))))

(assert (= (and d!1359113 res!1846643) b!4455071))

(assert (= (and b!4455071 (not res!1846644)) b!4455072))

(declare-fun m!5156595 () Bool)

(assert (=> d!1359113 m!5156595))

(declare-fun m!5156597 () Bool)

(assert (=> d!1359113 m!5156597))

(declare-fun m!5156599 () Bool)

(assert (=> b!4455072 m!5156599))

(assert (=> bm!310019 d!1359113))

(assert (=> b!4454766 d!1358973))

(assert (=> b!4454766 d!1358955))

(declare-fun bs!790696 () Bool)

(declare-fun b!4455097 () Bool)

(assert (= bs!790696 (and b!4455097 b!4454878)))

(declare-fun lambda!159998 () Int)

(assert (=> bs!790696 (= (= (t!357024 (toList!3786 lt!1646234)) (toList!3786 lt!1646234)) (= lambda!159998 lambda!159956))))

(assert (=> b!4455097 true))

(declare-fun bs!790697 () Bool)

(declare-fun b!4455092 () Bool)

(assert (= bs!790697 (and b!4455092 b!4454878)))

(declare-fun lambda!159999 () Int)

(assert (=> bs!790697 (= (= (Cons!49950 (h!55695 (toList!3786 lt!1646234)) (t!357024 (toList!3786 lt!1646234))) (toList!3786 lt!1646234)) (= lambda!159999 lambda!159956))))

(declare-fun bs!790698 () Bool)

(assert (= bs!790698 (and b!4455092 b!4455097)))

(assert (=> bs!790698 (= (= (Cons!49950 (h!55695 (toList!3786 lt!1646234)) (t!357024 (toList!3786 lt!1646234))) (t!357024 (toList!3786 lt!1646234))) (= lambda!159999 lambda!159998))))

(assert (=> b!4455092 true))

(declare-fun bs!790699 () Bool)

(declare-fun b!4455093 () Bool)

(assert (= bs!790699 (and b!4455093 b!4454878)))

(declare-fun lambda!160000 () Int)

(assert (=> bs!790699 (= lambda!160000 lambda!159956)))

(declare-fun bs!790700 () Bool)

(assert (= bs!790700 (and b!4455093 b!4455097)))

(assert (=> bs!790700 (= (= (toList!3786 lt!1646234) (t!357024 (toList!3786 lt!1646234))) (= lambda!160000 lambda!159998))))

(declare-fun bs!790701 () Bool)

(assert (= bs!790701 (and b!4455093 b!4455092)))

(assert (=> bs!790701 (= (= (toList!3786 lt!1646234) (Cons!49950 (h!55695 (toList!3786 lt!1646234)) (t!357024 (toList!3786 lt!1646234)))) (= lambda!160000 lambda!159999))))

(assert (=> b!4455093 true))

(declare-fun bs!790702 () Bool)

(declare-fun b!4455099 () Bool)

(assert (= bs!790702 (and b!4455099 b!4454879)))

(declare-fun lambda!160001 () Int)

(assert (=> bs!790702 (= lambda!160001 lambda!159957)))

(declare-fun b!4455091 () Bool)

(declare-fun res!1846653 () Bool)

(declare-fun e!2774231 () Bool)

(assert (=> b!4455091 (=> (not res!1846653) (not e!2774231))))

(declare-fun lt!1646690 () List!50077)

(assert (=> b!4455091 (= res!1846653 (= (length!232 lt!1646690) (length!233 (toList!3786 lt!1646234))))))

(declare-fun d!1359115 () Bool)

(assert (=> d!1359115 e!2774231))

(declare-fun res!1846651 () Bool)

(assert (=> d!1359115 (=> (not res!1846651) (not e!2774231))))

(assert (=> d!1359115 (= res!1846651 (noDuplicate!688 lt!1646690))))

(declare-fun e!2774230 () List!50077)

(assert (=> d!1359115 (= lt!1646690 e!2774230)))

(declare-fun c!758438 () Bool)

(assert (=> d!1359115 (= c!758438 ((_ is Cons!49950) (toList!3786 lt!1646234)))))

(assert (=> d!1359115 (invariantList!870 (toList!3786 lt!1646234))))

(assert (=> d!1359115 (= (getKeysList!317 (toList!3786 lt!1646234)) lt!1646690)))

(assert (=> b!4455092 (= e!2774230 (Cons!49953 (_1!28285 (h!55695 (toList!3786 lt!1646234))) (getKeysList!317 (t!357024 (toList!3786 lt!1646234)))))))

(declare-fun c!758436 () Bool)

(assert (=> b!4455092 (= c!758436 (containsKey!1311 (t!357024 (toList!3786 lt!1646234)) (_1!28285 (h!55695 (toList!3786 lt!1646234)))))))

(declare-fun lt!1646689 () Unit!85864)

(declare-fun e!2774232 () Unit!85864)

(assert (=> b!4455092 (= lt!1646689 e!2774232)))

(declare-fun c!758437 () Bool)

(assert (=> b!4455092 (= c!758437 (contains!12517 (getKeysList!317 (t!357024 (toList!3786 lt!1646234))) (_1!28285 (h!55695 (toList!3786 lt!1646234)))))))

(declare-fun lt!1646691 () Unit!85864)

(declare-fun e!2774233 () Unit!85864)

(assert (=> b!4455092 (= lt!1646691 e!2774233)))

(declare-fun lt!1646692 () List!50077)

(assert (=> b!4455092 (= lt!1646692 (getKeysList!317 (t!357024 (toList!3786 lt!1646234))))))

(declare-fun lt!1646688 () Unit!85864)

(declare-fun lemmaForallContainsAddHeadPreserves!110 (List!50074 List!50077 tuple2!49982) Unit!85864)

(assert (=> b!4455092 (= lt!1646688 (lemmaForallContainsAddHeadPreserves!110 (t!357024 (toList!3786 lt!1646234)) lt!1646692 (h!55695 (toList!3786 lt!1646234))))))

(assert (=> b!4455092 (forall!9806 lt!1646692 lambda!159999)))

(declare-fun lt!1646693 () Unit!85864)

(assert (=> b!4455092 (= lt!1646693 lt!1646688)))

(declare-fun res!1846652 () Bool)

(assert (=> b!4455093 (=> (not res!1846652) (not e!2774231))))

(assert (=> b!4455093 (= res!1846652 (forall!9806 lt!1646690 lambda!160000))))

(declare-fun b!4455094 () Bool)

(declare-fun Unit!85957 () Unit!85864)

(assert (=> b!4455094 (= e!2774233 Unit!85957)))

(declare-fun b!4455095 () Bool)

(assert (=> b!4455095 (= e!2774230 Nil!49953)))

(declare-fun b!4455096 () Bool)

(declare-fun Unit!85958 () Unit!85864)

(assert (=> b!4455096 (= e!2774232 Unit!85958)))

(assert (=> b!4455097 false))

(declare-fun lt!1646694 () Unit!85864)

(declare-fun forallContained!2173 (List!50077 Int K!11325) Unit!85864)

(assert (=> b!4455097 (= lt!1646694 (forallContained!2173 (getKeysList!317 (t!357024 (toList!3786 lt!1646234))) lambda!159998 (_1!28285 (h!55695 (toList!3786 lt!1646234)))))))

(declare-fun Unit!85959 () Unit!85864)

(assert (=> b!4455097 (= e!2774233 Unit!85959)))

(declare-fun b!4455098 () Bool)

(assert (=> b!4455098 false))

(declare-fun Unit!85960 () Unit!85864)

(assert (=> b!4455098 (= e!2774232 Unit!85960)))

(assert (=> b!4455099 (= e!2774231 (= (content!8041 lt!1646690) (content!8041 (map!10936 (toList!3786 lt!1646234) lambda!160001))))))

(assert (= (and d!1359115 c!758438) b!4455092))

(assert (= (and d!1359115 (not c!758438)) b!4455095))

(assert (= (and b!4455092 c!758436) b!4455098))

(assert (= (and b!4455092 (not c!758436)) b!4455096))

(assert (= (and b!4455092 c!758437) b!4455097))

(assert (= (and b!4455092 (not c!758437)) b!4455094))

(assert (= (and d!1359115 res!1846651) b!4455091))

(assert (= (and b!4455091 res!1846653) b!4455093))

(assert (= (and b!4455093 res!1846652) b!4455099))

(declare-fun m!5156601 () Bool)

(assert (=> b!4455099 m!5156601))

(declare-fun m!5156603 () Bool)

(assert (=> b!4455099 m!5156603))

(assert (=> b!4455099 m!5156603))

(declare-fun m!5156605 () Bool)

(assert (=> b!4455099 m!5156605))

(declare-fun m!5156607 () Bool)

(assert (=> b!4455097 m!5156607))

(assert (=> b!4455097 m!5156607))

(declare-fun m!5156609 () Bool)

(assert (=> b!4455097 m!5156609))

(declare-fun m!5156611 () Bool)

(assert (=> d!1359115 m!5156611))

(assert (=> d!1359115 m!5156361))

(declare-fun m!5156613 () Bool)

(assert (=> b!4455092 m!5156613))

(declare-fun m!5156615 () Bool)

(assert (=> b!4455092 m!5156615))

(declare-fun m!5156617 () Bool)

(assert (=> b!4455092 m!5156617))

(assert (=> b!4455092 m!5156607))

(declare-fun m!5156619 () Bool)

(assert (=> b!4455092 m!5156619))

(assert (=> b!4455092 m!5156607))

(declare-fun m!5156621 () Bool)

(assert (=> b!4455093 m!5156621))

(declare-fun m!5156623 () Bool)

(assert (=> b!4455091 m!5156623))

(assert (=> b!4455091 m!5156113))

(assert (=> b!4454765 d!1359115))

(declare-fun tp_is_empty!26791 () Bool)

(declare-fun b!4455106 () Bool)

(declare-fun e!2774236 () Bool)

(declare-fun tp!1334837 () Bool)

(assert (=> b!4455106 (= e!2774236 (and tp_is_empty!26787 tp_is_empty!26791 tp!1334837))))

(assert (=> b!4454777 (= tp!1334828 e!2774236)))

(assert (= (and b!4454777 ((_ is Cons!49950) (_2!28286 (h!55696 (toList!3785 lm!1837))))) b!4455106))

(declare-fun b!4455107 () Bool)

(declare-fun e!2774237 () Bool)

(declare-fun tp!1334838 () Bool)

(declare-fun tp!1334839 () Bool)

(assert (=> b!4455107 (= e!2774237 (and tp!1334838 tp!1334839))))

(assert (=> b!4454777 (= tp!1334829 e!2774237)))

(assert (= (and b!4454777 ((_ is Cons!49951) (t!357025 (toList!3785 lm!1837)))) b!4455107))

(declare-fun b_lambda!147603 () Bool)

(assert (= b_lambda!147601 (or b!4454737 b_lambda!147603)))

(declare-fun bs!790703 () Bool)

(declare-fun d!1359117 () Bool)

(assert (= bs!790703 (and d!1359117 b!4454737)))

(assert (=> bs!790703 (= (dynLambda!20961 lambda!159917 (h!55695 (toList!3786 lt!1646234))) (contains!12515 lt!1646234 (_1!28285 (h!55695 (toList!3786 lt!1646234)))))))

(declare-fun m!5156625 () Bool)

(assert (=> bs!790703 m!5156625))

(assert (=> b!4455064 d!1359117))

(declare-fun b_lambda!147605 () Bool)

(assert (= b_lambda!147537 (or start!436432 b_lambda!147605)))

(declare-fun bs!790704 () Bool)

(declare-fun d!1359119 () Bool)

(assert (= bs!790704 (and d!1359119 start!436432)))

(assert (=> bs!790704 (= (dynLambda!20959 lambda!159841 (h!55696 (t!357025 (toList!3785 lt!1646233)))) (noDuplicateKeys!889 (_2!28286 (h!55696 (t!357025 (toList!3785 lt!1646233))))))))

(declare-fun m!5156627 () Bool)

(assert (=> bs!790704 m!5156627))

(assert (=> b!4454919 d!1359119))

(declare-fun b_lambda!147607 () Bool)

(assert (= b_lambda!147541 (or d!1358919 b_lambda!147607)))

(declare-fun bs!790705 () Bool)

(declare-fun d!1359121 () Bool)

(assert (= bs!790705 (and d!1359121 d!1358919)))

(declare-fun allKeysSameHash!834 (List!50074 (_ BitVec 64) Hashable!5295) Bool)

(assert (=> bs!790705 (= (dynLambda!20959 lambda!159921 (h!55696 (toList!3785 lt!1646233))) (allKeysSameHash!834 (_2!28286 (h!55696 (toList!3785 lt!1646233))) (_1!28286 (h!55696 (toList!3785 lt!1646233))) hashF!1304))))

(declare-fun m!5156629 () Bool)

(assert (=> bs!790705 m!5156629))

(assert (=> b!4454935 d!1359121))

(declare-fun b_lambda!147609 () Bool)

(assert (= b_lambda!147597 (or b!4454737 b_lambda!147609)))

(declare-fun bs!790706 () Bool)

(declare-fun d!1359123 () Bool)

(assert (= bs!790706 (and d!1359123 b!4454737)))

(assert (=> bs!790706 (= (dynLambda!20961 lambda!159918 (h!55695 (_2!28286 (h!55696 (toList!3785 lm!1837))))) (contains!12515 lt!1646375 (_1!28285 (h!55695 (_2!28286 (h!55696 (toList!3785 lm!1837)))))))))

(assert (=> bs!790706 m!5155915))

(assert (=> d!1359099 d!1359123))

(declare-fun b_lambda!147611 () Bool)

(assert (= b_lambda!147585 (or d!1358915 b_lambda!147611)))

(declare-fun bs!790707 () Bool)

(declare-fun d!1359125 () Bool)

(assert (= bs!790707 (and d!1359125 d!1358915)))

(assert (=> bs!790707 (= (dynLambda!20959 lambda!159920 (h!55696 (toList!3785 lt!1646233))) (noDuplicateKeys!889 (_2!28286 (h!55696 (toList!3785 lt!1646233)))))))

(assert (=> bs!790707 m!5155971))

(assert (=> b!4455020 d!1359125))

(declare-fun b_lambda!147613 () Bool)

(assert (= b_lambda!147595 (or b!4454737 b_lambda!147613)))

(declare-fun bs!790708 () Bool)

(declare-fun d!1359127 () Bool)

(assert (= bs!790708 (and d!1359127 b!4454737)))

(assert (=> bs!790708 (= (dynLambda!20961 lambda!159918 (h!55695 (toList!3786 lt!1646373))) (contains!12515 lt!1646375 (_1!28285 (h!55695 (toList!3786 lt!1646373)))))))

(declare-fun m!5156631 () Bool)

(assert (=> bs!790708 m!5156631))

(assert (=> b!4455033 d!1359127))

(declare-fun b_lambda!147615 () Bool)

(assert (= b_lambda!147539 (or start!436432 b_lambda!147615)))

(declare-fun bs!790709 () Bool)

(declare-fun d!1359129 () Bool)

(assert (= bs!790709 (and d!1359129 start!436432)))

(assert (=> bs!790709 (= (dynLambda!20959 lambda!159841 (h!55696 (t!357025 (toList!3785 lm!1837)))) (noDuplicateKeys!889 (_2!28286 (h!55696 (t!357025 (toList!3785 lm!1837))))))))

(declare-fun m!5156633 () Bool)

(assert (=> bs!790709 m!5156633))

(assert (=> b!4454927 d!1359129))

(declare-fun b_lambda!147617 () Bool)

(assert (= b_lambda!147591 (or d!1358885 b_lambda!147617)))

(declare-fun bs!790710 () Bool)

(declare-fun d!1359131 () Bool)

(assert (= bs!790710 (and d!1359131 d!1358885)))

(assert (=> bs!790710 (= (dynLambda!20959 lambda!159850 (h!55696 (toList!3785 lm!1837))) (allKeysSameHash!834 (_2!28286 (h!55696 (toList!3785 lm!1837))) (_1!28286 (h!55696 (toList!3785 lm!1837))) hashF!1304))))

(declare-fun m!5156635 () Bool)

(assert (=> bs!790710 m!5156635))

(assert (=> b!4455026 d!1359131))

(declare-fun b_lambda!147619 () Bool)

(assert (= b_lambda!147589 (or d!1358891 b_lambda!147619)))

(declare-fun bs!790711 () Bool)

(declare-fun d!1359133 () Bool)

(assert (= bs!790711 (and d!1359133 d!1358891)))

(assert (=> bs!790711 (= (dynLambda!20959 lambda!159853 (h!55696 (toList!3785 lm!1837))) (noDuplicateKeys!889 (_2!28286 (h!55696 (toList!3785 lm!1837)))))))

(assert (=> bs!790711 m!5155929))

(assert (=> b!4455024 d!1359133))

(declare-fun b_lambda!147621 () Bool)

(assert (= b_lambda!147531 (or d!1358893 b_lambda!147621)))

(declare-fun bs!790712 () Bool)

(declare-fun d!1359135 () Bool)

(assert (= bs!790712 (and d!1359135 d!1358893)))

(assert (=> bs!790712 (= (dynLambda!20961 lambda!159919 (h!55695 (_2!28286 (h!55696 (toList!3785 lm!1837))))) (contains!12515 lt!1646384 (_1!28285 (h!55695 (_2!28286 (h!55696 (toList!3785 lm!1837)))))))))

(declare-fun m!5156637 () Bool)

(assert (=> bs!790712 m!5156637))

(assert (=> b!4454890 d!1359135))

(declare-fun b_lambda!147623 () Bool)

(assert (= b_lambda!147587 (or b!4454737 b_lambda!147623)))

(declare-fun bs!790713 () Bool)

(declare-fun d!1359137 () Bool)

(assert (= bs!790713 (and d!1359137 b!4454737)))

(assert (=> bs!790713 (= (dynLambda!20961 lambda!159918 (h!55695 (toList!3786 lt!1646234))) (contains!12515 lt!1646375 (_1!28285 (h!55695 (toList!3786 lt!1646234)))))))

(declare-fun m!5156639 () Bool)

(assert (=> bs!790713 m!5156639))

(assert (=> b!4455022 d!1359137))

(declare-fun b_lambda!147625 () Bool)

(assert (= b_lambda!147551 (or d!1358893 b_lambda!147625)))

(declare-fun bs!790714 () Bool)

(declare-fun d!1359139 () Bool)

(assert (= bs!790714 (and d!1359139 d!1358893)))

(assert (=> bs!790714 (= (dynLambda!20961 lambda!159919 (h!55695 (toList!3786 lt!1646234))) (contains!12515 lt!1646384 (_1!28285 (h!55695 (toList!3786 lt!1646234)))))))

(declare-fun m!5156641 () Bool)

(assert (=> bs!790714 m!5156641))

(assert (=> b!4454967 d!1359139))

(declare-fun b_lambda!147627 () Bool)

(assert (= b_lambda!147599 (or b!4454737 b_lambda!147627)))

(assert (=> b!4455038 d!1359123))

(check-sat (not bm!310028) (not b_lambda!147615) (not b!4455106) (not b!4455043) (not b!4455107) (not b!4454995) (not b!4454928) (not b!4455062) (not b_lambda!147515) (not b!4454961) (not b!4454941) (not d!1359115) (not b!4455059) (not b!4455041) (not b_lambda!147611) (not bm!310036) (not b_lambda!147593) (not bs!790712) (not b!4455039) (not d!1358987) (not b!4455063) (not bm!310038) (not b!4454877) (not b!4455034) (not bm!310040) (not b!4454918) (not bs!790709) (not d!1359013) (not b!4455092) (not d!1359029) (not b!4454934) (not b!4454904) (not b!4454942) (not bm!310029) tp_is_empty!26787 (not d!1358973) (not d!1359007) (not b!4454920) (not b!4454997) (not b!4454879) tp_is_empty!26791 (not b!4454939) (not b!4455069) (not bs!790705) (not b!4455025) (not d!1359049) (not b!4455040) (not d!1359103) (not b_lambda!147513) (not b!4454926) (not b_lambda!147603) (not bs!790706) (not b!4454998) (not d!1359105) (not b!4455054) (not bs!790708) (not b!4454999) (not bs!790704) (not d!1359111) (not bs!790707) (not d!1359083) (not bs!790710) (not d!1359003) (not b!4454968) (not bs!790714) (not b!4455099) (not d!1359051) (not b_lambda!147623) (not d!1359061) (not d!1359099) (not d!1359095) (not b!4455097) (not b!4454891) (not bm!310037) (not b!4455058) (not d!1359047) (not b!4455012) (not b_lambda!147609) (not b!4455056) (not b!4455037) (not b_lambda!147617) (not bm!310034) (not b!4455060) (not bm!310030) (not b_lambda!147605) (not d!1358955) (not b!4455072) (not b!4455091) (not b!4454981) (not b_lambda!147613) (not b!4454943) (not b!4455066) (not b_lambda!147607) (not b!4455055) (not b!4455029) (not b!4455053) (not bs!790711) (not b!4454964) (not b_lambda!147619) (not b!4455065) (not b!4455047) (not b!4455070) (not b!4454936) (not b_lambda!147627) (not b!4455093) (not d!1359033) (not b_lambda!147549) (not b!4455027) (not d!1359113) (not b!4455031) (not b!4455023) (not b_lambda!147625) (not b!4455021) (not d!1359107) (not d!1359021) (not b!4454905) (not b!4455048) (not b!4455044) (not bm!310039) (not bm!310041) (not b!4455068) (not bs!790713) (not bm!310035) (not b!4454878) (not b!4455045) (not b_lambda!147621) (not b!4455028) (not bs!790703))
(check-sat)
