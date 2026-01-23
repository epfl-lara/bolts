; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!427022 () Bool)

(assert start!427022)

(declare-fun b!4396649 () Bool)

(declare-fun res!1812853 () Bool)

(declare-fun e!2737519 () Bool)

(assert (=> b!4396649 (=> res!1812853 e!2737519)))

(declare-datatypes ((K!10603 0))(
  ( (K!10604 (val!16753 Int)) )
))
(declare-datatypes ((V!10849 0))(
  ( (V!10850 (val!16754 Int)) )
))
(declare-datatypes ((tuple2!48826 0))(
  ( (tuple2!48827 (_1!27707 K!10603) (_2!27707 V!10849)) )
))
(declare-datatypes ((List!49369 0))(
  ( (Nil!49245) (Cons!49245 (h!54862 tuple2!48826) (t!356303 List!49369)) )
))
(declare-fun newBucket!200 () List!49369)

(declare-fun noDuplicateKeys!614 (List!49369) Bool)

(assert (=> b!4396649 (= res!1812853 (not (noDuplicateKeys!614 newBucket!200)))))

(declare-fun tp_is_empty!25695 () Bool)

(declare-fun b!4396650 () Bool)

(declare-fun tp_is_empty!25693 () Bool)

(declare-fun tp!1331638 () Bool)

(declare-fun e!2737516 () Bool)

(assert (=> b!4396650 (= e!2737516 (and tp_is_empty!25693 tp_is_empty!25695 tp!1331638))))

(declare-fun b!4396651 () Bool)

(declare-fun e!2737517 () Bool)

(declare-datatypes ((tuple2!48828 0))(
  ( (tuple2!48829 (_1!27708 (_ BitVec 64)) (_2!27708 List!49369)) )
))
(declare-datatypes ((List!49370 0))(
  ( (Nil!49246) (Cons!49246 (h!54863 tuple2!48828) (t!356304 List!49370)) )
))
(declare-datatypes ((ListLongMap!1861 0))(
  ( (ListLongMap!1862 (toList!3211 List!49370)) )
))
(declare-fun lt!1603096 () ListLongMap!1861)

(declare-fun lambda!148058 () Int)

(declare-fun forall!9337 (List!49370 Int) Bool)

(assert (=> b!4396651 (= e!2737517 (forall!9337 (toList!3211 lt!1603096) lambda!148058))))

(declare-fun b!4396653 () Bool)

(declare-fun e!2737520 () Bool)

(declare-fun lt!1603103 () ListLongMap!1861)

(assert (=> b!4396653 (= e!2737520 (forall!9337 (toList!3211 lt!1603103) lambda!148058))))

(declare-fun key!3918 () K!10603)

(declare-datatypes ((ListMap!2455 0))(
  ( (ListMap!2456 (toList!3212 List!49369)) )
))
(declare-fun contains!11621 (ListMap!2455 K!10603) Bool)

(declare-fun extractMap!673 (List!49370) ListMap!2455)

(assert (=> b!4396653 (contains!11621 (extractMap!673 (toList!3211 lt!1603103)) key!3918)))

(declare-fun lm!1707 () ListLongMap!1861)

(declare-fun tail!7093 (ListLongMap!1861) ListLongMap!1861)

(assert (=> b!4396653 (= lt!1603103 (tail!7093 lm!1707))))

(declare-fun lt!1603098 () ListMap!2455)

(assert (=> b!4396653 (contains!11621 lt!1603098 key!3918)))

(declare-datatypes ((Unit!78396 0))(
  ( (Unit!78397) )
))
(declare-fun lt!1603099 () Unit!78396)

(declare-fun newValue!99 () V!10849)

(declare-fun lemmaAddToMapContainsAndNotInListThenInAcc!73 (List!49369 K!10603 V!10849 ListMap!2455) Unit!78396)

(assert (=> b!4396653 (= lt!1603099 (lemmaAddToMapContainsAndNotInListThenInAcc!73 (_2!27708 (h!54863 (toList!3211 lm!1707))) key!3918 newValue!99 lt!1603098))))

(assert (=> b!4396653 (= lt!1603098 (extractMap!673 (t!356304 (toList!3211 lm!1707))))))

(declare-fun e!2737521 () Bool)

(assert (=> b!4396653 e!2737521))

(declare-fun res!1812859 () Bool)

(assert (=> b!4396653 (=> (not res!1812859) (not e!2737521))))

(declare-fun containsKey!906 (List!49369 K!10603) Bool)

(declare-fun apply!11466 (ListLongMap!1861 (_ BitVec 64)) List!49369)

(assert (=> b!4396653 (= res!1812859 (not (containsKey!906 (apply!11466 lm!1707 (_1!27708 (h!54863 (toList!3211 lm!1707)))) key!3918)))))

(declare-fun lt!1603095 () Unit!78396)

(declare-datatypes ((Hashable!5006 0))(
  ( (HashableExt!5005 (__x!30709 Int)) )
))
(declare-fun hashF!1247 () Hashable!5006)

(declare-fun lemmaNotSameHashThenCannotContainKey!85 (ListLongMap!1861 K!10603 (_ BitVec 64) Hashable!5006) Unit!78396)

(assert (=> b!4396653 (= lt!1603095 (lemmaNotSameHashThenCannotContainKey!85 lm!1707 key!3918 (_1!27708 (h!54863 (toList!3211 lm!1707))) hashF!1247))))

(declare-fun b!4396654 () Bool)

(declare-fun res!1812855 () Bool)

(declare-fun e!2737518 () Bool)

(assert (=> b!4396654 (=> (not res!1812855) (not e!2737518))))

(declare-fun hash!377 () (_ BitVec 64))

(declare-fun hash!1832 (Hashable!5006 K!10603) (_ BitVec 64))

(assert (=> b!4396654 (= res!1812855 (= (hash!1832 hashF!1247 key!3918) hash!377))))

(declare-fun b!4396655 () Bool)

(declare-fun res!1812851 () Bool)

(assert (=> b!4396655 (=> (not res!1812851) (not e!2737518))))

(assert (=> b!4396655 (= res!1812851 (contains!11621 (extractMap!673 (toList!3211 lm!1707)) key!3918))))

(declare-fun b!4396656 () Bool)

(assert (=> b!4396656 (= e!2737519 e!2737520)))

(declare-fun res!1812857 () Bool)

(assert (=> b!4396656 (=> res!1812857 e!2737520)))

(assert (=> b!4396656 (= res!1812857 (or (and (is-Cons!49246 (toList!3211 lm!1707)) (= (_1!27708 (h!54863 (toList!3211 lm!1707))) hash!377)) (not (is-Cons!49246 (toList!3211 lm!1707))) (= (_1!27708 (h!54863 (toList!3211 lm!1707))) hash!377)))))

(assert (=> b!4396656 e!2737517))

(declare-fun res!1812852 () Bool)

(assert (=> b!4396656 (=> (not res!1812852) (not e!2737517))))

(assert (=> b!4396656 (= res!1812852 (forall!9337 (toList!3211 lt!1603096) lambda!148058))))

(declare-fun +!849 (ListLongMap!1861 tuple2!48828) ListLongMap!1861)

(assert (=> b!4396656 (= lt!1603096 (+!849 lm!1707 (tuple2!48829 hash!377 newBucket!200)))))

(declare-fun lt!1603100 () Unit!78396)

(declare-fun addValidProp!260 (ListLongMap!1861 Int (_ BitVec 64) List!49369) Unit!78396)

(assert (=> b!4396656 (= lt!1603100 (addValidProp!260 lm!1707 lambda!148058 hash!377 newBucket!200))))

(assert (=> b!4396656 (forall!9337 (toList!3211 lm!1707) lambda!148058)))

(declare-fun b!4396657 () Bool)

(declare-fun res!1812854 () Bool)

(assert (=> b!4396657 (=> (not res!1812854) (not e!2737518))))

(declare-fun allKeysSameHashInMap!718 (ListLongMap!1861 Hashable!5006) Bool)

(assert (=> b!4396657 (= res!1812854 (allKeysSameHashInMap!718 lm!1707 hashF!1247))))

(declare-fun b!4396658 () Bool)

(declare-fun res!1812858 () Bool)

(assert (=> b!4396658 (=> (not res!1812858) (not e!2737518))))

(declare-fun contains!11622 (ListLongMap!1861 (_ BitVec 64)) Bool)

(assert (=> b!4396658 (= res!1812858 (contains!11622 lm!1707 hash!377))))

(declare-fun b!4396659 () Bool)

(assert (=> b!4396659 (= e!2737521 (not (containsKey!906 (_2!27708 (h!54863 (toList!3211 lm!1707))) key!3918)))))

(declare-fun b!4396652 () Bool)

(declare-fun e!2737515 () Bool)

(declare-fun tp!1331637 () Bool)

(assert (=> b!4396652 (= e!2737515 tp!1331637)))

(declare-fun res!1812860 () Bool)

(assert (=> start!427022 (=> (not res!1812860) (not e!2737518))))

(assert (=> start!427022 (= res!1812860 (forall!9337 (toList!3211 lm!1707) lambda!148058))))

(assert (=> start!427022 e!2737518))

(assert (=> start!427022 e!2737516))

(assert (=> start!427022 true))

(declare-fun inv!64790 (ListLongMap!1861) Bool)

(assert (=> start!427022 (and (inv!64790 lm!1707) e!2737515)))

(assert (=> start!427022 tp_is_empty!25693))

(assert (=> start!427022 tp_is_empty!25695))

(declare-fun b!4396660 () Bool)

(assert (=> b!4396660 (= e!2737518 (not e!2737519))))

(declare-fun res!1812850 () Bool)

(assert (=> b!4396660 (=> res!1812850 e!2737519)))

(declare-fun lt!1603101 () List!49369)

(declare-fun removePairForKey!582 (List!49369 K!10603) List!49369)

(assert (=> b!4396660 (= res!1812850 (not (= newBucket!200 (Cons!49245 (tuple2!48827 key!3918 newValue!99) (removePairForKey!582 lt!1603101 key!3918)))))))

(declare-fun lt!1603097 () Unit!78396)

(declare-fun lt!1603104 () tuple2!48828)

(declare-fun forallContained!1974 (List!49370 Int tuple2!48828) Unit!78396)

(assert (=> b!4396660 (= lt!1603097 (forallContained!1974 (toList!3211 lm!1707) lambda!148058 lt!1603104))))

(declare-fun contains!11623 (List!49370 tuple2!48828) Bool)

(assert (=> b!4396660 (contains!11623 (toList!3211 lm!1707) lt!1603104)))

(assert (=> b!4396660 (= lt!1603104 (tuple2!48829 hash!377 lt!1603101))))

(declare-fun lt!1603102 () Unit!78396)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!459 (List!49370 (_ BitVec 64) List!49369) Unit!78396)

(assert (=> b!4396660 (= lt!1603102 (lemmaGetValueByKeyImpliesContainsTuple!459 (toList!3211 lm!1707) hash!377 lt!1603101))))

(assert (=> b!4396660 (= lt!1603101 (apply!11466 lm!1707 hash!377))))

(declare-fun b!4396661 () Bool)

(declare-fun res!1812856 () Bool)

(assert (=> b!4396661 (=> (not res!1812856) (not e!2737518))))

(declare-fun allKeysSameHash!572 (List!49369 (_ BitVec 64) Hashable!5006) Bool)

(assert (=> b!4396661 (= res!1812856 (allKeysSameHash!572 newBucket!200 hash!377 hashF!1247))))

(assert (= (and start!427022 res!1812860) b!4396657))

(assert (= (and b!4396657 res!1812854) b!4396654))

(assert (= (and b!4396654 res!1812855) b!4396661))

(assert (= (and b!4396661 res!1812856) b!4396655))

(assert (= (and b!4396655 res!1812851) b!4396658))

(assert (= (and b!4396658 res!1812858) b!4396660))

(assert (= (and b!4396660 (not res!1812850)) b!4396649))

(assert (= (and b!4396649 (not res!1812853)) b!4396656))

(assert (= (and b!4396656 res!1812852) b!4396651))

(assert (= (and b!4396656 (not res!1812857)) b!4396653))

(assert (= (and b!4396653 res!1812859) b!4396659))

(assert (= (and start!427022 (is-Cons!49245 newBucket!200)) b!4396650))

(assert (= start!427022 b!4396652))

(declare-fun m!5057395 () Bool)

(assert (=> b!4396659 m!5057395))

(declare-fun m!5057397 () Bool)

(assert (=> b!4396651 m!5057397))

(declare-fun m!5057399 () Bool)

(assert (=> b!4396657 m!5057399))

(declare-fun m!5057401 () Bool)

(assert (=> b!4396649 m!5057401))

(declare-fun m!5057403 () Bool)

(assert (=> start!427022 m!5057403))

(declare-fun m!5057405 () Bool)

(assert (=> start!427022 m!5057405))

(declare-fun m!5057407 () Bool)

(assert (=> b!4396660 m!5057407))

(declare-fun m!5057409 () Bool)

(assert (=> b!4396660 m!5057409))

(declare-fun m!5057411 () Bool)

(assert (=> b!4396660 m!5057411))

(declare-fun m!5057413 () Bool)

(assert (=> b!4396660 m!5057413))

(declare-fun m!5057415 () Bool)

(assert (=> b!4396660 m!5057415))

(assert (=> b!4396656 m!5057397))

(declare-fun m!5057417 () Bool)

(assert (=> b!4396656 m!5057417))

(declare-fun m!5057419 () Bool)

(assert (=> b!4396656 m!5057419))

(assert (=> b!4396656 m!5057403))

(declare-fun m!5057421 () Bool)

(assert (=> b!4396654 m!5057421))

(declare-fun m!5057423 () Bool)

(assert (=> b!4396653 m!5057423))

(declare-fun m!5057425 () Bool)

(assert (=> b!4396653 m!5057425))

(declare-fun m!5057427 () Bool)

(assert (=> b!4396653 m!5057427))

(assert (=> b!4396653 m!5057425))

(declare-fun m!5057429 () Bool)

(assert (=> b!4396653 m!5057429))

(declare-fun m!5057431 () Bool)

(assert (=> b!4396653 m!5057431))

(declare-fun m!5057433 () Bool)

(assert (=> b!4396653 m!5057433))

(declare-fun m!5057435 () Bool)

(assert (=> b!4396653 m!5057435))

(assert (=> b!4396653 m!5057435))

(declare-fun m!5057437 () Bool)

(assert (=> b!4396653 m!5057437))

(declare-fun m!5057439 () Bool)

(assert (=> b!4396653 m!5057439))

(declare-fun m!5057441 () Bool)

(assert (=> b!4396653 m!5057441))

(declare-fun m!5057443 () Bool)

(assert (=> b!4396661 m!5057443))

(declare-fun m!5057445 () Bool)

(assert (=> b!4396658 m!5057445))

(declare-fun m!5057447 () Bool)

(assert (=> b!4396655 m!5057447))

(assert (=> b!4396655 m!5057447))

(declare-fun m!5057449 () Bool)

(assert (=> b!4396655 m!5057449))

(push 1)

(assert (not b!4396652))

(assert (not b!4396656))

(assert (not b!4396651))

(assert (not b!4396661))

(assert tp_is_empty!25693)

(assert (not b!4396655))

(assert (not b!4396657))

(assert (not b!4396659))

(assert (not b!4396660))

(assert (not b!4396649))

(assert (not b!4396653))

(assert (not b!4396658))

(assert (not start!427022))

(assert tp_is_empty!25695)

(assert (not b!4396650))

(assert (not b!4396654))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1324835 () Bool)

(declare-datatypes ((Option!10596 0))(
  ( (None!10595) (Some!10595 (v!43667 List!49369)) )
))
(declare-fun get!16028 (Option!10596) List!49369)

(declare-fun getValueByKey!582 (List!49370 (_ BitVec 64)) Option!10596)

(assert (=> d!1324835 (= (apply!11466 lm!1707 hash!377) (get!16028 (getValueByKey!582 (toList!3211 lm!1707) hash!377)))))

(declare-fun bs!726845 () Bool)

(assert (= bs!726845 d!1324835))

(declare-fun m!5057507 () Bool)

(assert (=> bs!726845 m!5057507))

(assert (=> bs!726845 m!5057507))

(declare-fun m!5057509 () Bool)

(assert (=> bs!726845 m!5057509))

(assert (=> b!4396660 d!1324835))

(declare-fun d!1324837 () Bool)

(declare-fun dynLambda!20748 (Int tuple2!48828) Bool)

(assert (=> d!1324837 (dynLambda!20748 lambda!148058 lt!1603104)))

(declare-fun lt!1603137 () Unit!78396)

(declare-fun choose!27505 (List!49370 Int tuple2!48828) Unit!78396)

(assert (=> d!1324837 (= lt!1603137 (choose!27505 (toList!3211 lm!1707) lambda!148058 lt!1603104))))

(declare-fun e!2737545 () Bool)

(assert (=> d!1324837 e!2737545))

(declare-fun res!1812896 () Bool)

(assert (=> d!1324837 (=> (not res!1812896) (not e!2737545))))

(assert (=> d!1324837 (= res!1812896 (forall!9337 (toList!3211 lm!1707) lambda!148058))))

(assert (=> d!1324837 (= (forallContained!1974 (toList!3211 lm!1707) lambda!148058 lt!1603104) lt!1603137)))

(declare-fun b!4396703 () Bool)

(assert (=> b!4396703 (= e!2737545 (contains!11623 (toList!3211 lm!1707) lt!1603104))))

(assert (= (and d!1324837 res!1812896) b!4396703))

(declare-fun b_lambda!139241 () Bool)

(assert (=> (not b_lambda!139241) (not d!1324837)))

(declare-fun m!5057511 () Bool)

(assert (=> d!1324837 m!5057511))

(declare-fun m!5057513 () Bool)

(assert (=> d!1324837 m!5057513))

(assert (=> d!1324837 m!5057403))

(assert (=> b!4396703 m!5057407))

(assert (=> b!4396660 d!1324837))

(declare-fun b!4396714 () Bool)

(declare-fun e!2737551 () List!49369)

(assert (=> b!4396714 (= e!2737551 (Cons!49245 (h!54862 lt!1603101) (removePairForKey!582 (t!356303 lt!1603101) key!3918)))))

(declare-fun b!4396713 () Bool)

(declare-fun e!2737550 () List!49369)

(assert (=> b!4396713 (= e!2737550 e!2737551)))

(declare-fun c!748468 () Bool)

(assert (=> b!4396713 (= c!748468 (is-Cons!49245 lt!1603101))))

(declare-fun b!4396712 () Bool)

(assert (=> b!4396712 (= e!2737550 (t!356303 lt!1603101))))

(declare-fun b!4396715 () Bool)

(assert (=> b!4396715 (= e!2737551 Nil!49245)))

(declare-fun d!1324839 () Bool)

(declare-fun lt!1603140 () List!49369)

(assert (=> d!1324839 (not (containsKey!906 lt!1603140 key!3918))))

(assert (=> d!1324839 (= lt!1603140 e!2737550)))

(declare-fun c!748467 () Bool)

(assert (=> d!1324839 (= c!748467 (and (is-Cons!49245 lt!1603101) (= (_1!27707 (h!54862 lt!1603101)) key!3918)))))

(assert (=> d!1324839 (noDuplicateKeys!614 lt!1603101)))

(assert (=> d!1324839 (= (removePairForKey!582 lt!1603101 key!3918) lt!1603140)))

(assert (= (and d!1324839 c!748467) b!4396712))

(assert (= (and d!1324839 (not c!748467)) b!4396713))

(assert (= (and b!4396713 c!748468) b!4396714))

(assert (= (and b!4396713 (not c!748468)) b!4396715))

(declare-fun m!5057515 () Bool)

(assert (=> b!4396714 m!5057515))

(declare-fun m!5057517 () Bool)

(assert (=> d!1324839 m!5057517))

(declare-fun m!5057519 () Bool)

(assert (=> d!1324839 m!5057519))

(assert (=> b!4396660 d!1324839))

(declare-fun d!1324841 () Bool)

(assert (=> d!1324841 (contains!11623 (toList!3211 lm!1707) (tuple2!48829 hash!377 lt!1603101))))

(declare-fun lt!1603143 () Unit!78396)

(declare-fun choose!27506 (List!49370 (_ BitVec 64) List!49369) Unit!78396)

(assert (=> d!1324841 (= lt!1603143 (choose!27506 (toList!3211 lm!1707) hash!377 lt!1603101))))

(declare-fun e!2737554 () Bool)

(assert (=> d!1324841 e!2737554))

(declare-fun res!1812899 () Bool)

(assert (=> d!1324841 (=> (not res!1812899) (not e!2737554))))

(declare-fun isStrictlySorted!168 (List!49370) Bool)

(assert (=> d!1324841 (= res!1812899 (isStrictlySorted!168 (toList!3211 lm!1707)))))

(assert (=> d!1324841 (= (lemmaGetValueByKeyImpliesContainsTuple!459 (toList!3211 lm!1707) hash!377 lt!1603101) lt!1603143)))

(declare-fun b!4396718 () Bool)

(assert (=> b!4396718 (= e!2737554 (= (getValueByKey!582 (toList!3211 lm!1707) hash!377) (Some!10595 lt!1603101)))))

(assert (= (and d!1324841 res!1812899) b!4396718))

(declare-fun m!5057521 () Bool)

(assert (=> d!1324841 m!5057521))

(declare-fun m!5057523 () Bool)

(assert (=> d!1324841 m!5057523))

(declare-fun m!5057525 () Bool)

(assert (=> d!1324841 m!5057525))

(assert (=> b!4396718 m!5057507))

(assert (=> b!4396660 d!1324841))

(declare-fun d!1324843 () Bool)

(declare-fun lt!1603146 () Bool)

(declare-fun content!7854 (List!49370) (Set tuple2!48828))

(assert (=> d!1324843 (= lt!1603146 (set.member lt!1603104 (content!7854 (toList!3211 lm!1707))))))

(declare-fun e!2737559 () Bool)

(assert (=> d!1324843 (= lt!1603146 e!2737559)))

(declare-fun res!1812905 () Bool)

(assert (=> d!1324843 (=> (not res!1812905) (not e!2737559))))

(assert (=> d!1324843 (= res!1812905 (is-Cons!49246 (toList!3211 lm!1707)))))

(assert (=> d!1324843 (= (contains!11623 (toList!3211 lm!1707) lt!1603104) lt!1603146)))

(declare-fun b!4396723 () Bool)

(declare-fun e!2737560 () Bool)

(assert (=> b!4396723 (= e!2737559 e!2737560)))

(declare-fun res!1812904 () Bool)

(assert (=> b!4396723 (=> res!1812904 e!2737560)))

(assert (=> b!4396723 (= res!1812904 (= (h!54863 (toList!3211 lm!1707)) lt!1603104))))

(declare-fun b!4396724 () Bool)

(assert (=> b!4396724 (= e!2737560 (contains!11623 (t!356304 (toList!3211 lm!1707)) lt!1603104))))

(assert (= (and d!1324843 res!1812905) b!4396723))

(assert (= (and b!4396723 (not res!1812904)) b!4396724))

(declare-fun m!5057527 () Bool)

(assert (=> d!1324843 m!5057527))

(declare-fun m!5057529 () Bool)

(assert (=> d!1324843 m!5057529))

(declare-fun m!5057531 () Bool)

(assert (=> b!4396724 m!5057531))

(assert (=> b!4396660 d!1324843))

(declare-fun d!1324845 () Bool)

(declare-fun res!1812910 () Bool)

(declare-fun e!2737565 () Bool)

(assert (=> d!1324845 (=> res!1812910 e!2737565)))

(assert (=> d!1324845 (= res!1812910 (not (is-Cons!49245 newBucket!200)))))

(assert (=> d!1324845 (= (noDuplicateKeys!614 newBucket!200) e!2737565)))

(declare-fun b!4396729 () Bool)

(declare-fun e!2737566 () Bool)

(assert (=> b!4396729 (= e!2737565 e!2737566)))

(declare-fun res!1812911 () Bool)

(assert (=> b!4396729 (=> (not res!1812911) (not e!2737566))))

(assert (=> b!4396729 (= res!1812911 (not (containsKey!906 (t!356303 newBucket!200) (_1!27707 (h!54862 newBucket!200)))))))

(declare-fun b!4396730 () Bool)

(assert (=> b!4396730 (= e!2737566 (noDuplicateKeys!614 (t!356303 newBucket!200)))))

(assert (= (and d!1324845 (not res!1812910)) b!4396729))

(assert (= (and b!4396729 res!1812911) b!4396730))

(declare-fun m!5057533 () Bool)

(assert (=> b!4396729 m!5057533))

(declare-fun m!5057535 () Bool)

(assert (=> b!4396730 m!5057535))

(assert (=> b!4396649 d!1324845))

(declare-fun d!1324847 () Bool)

(declare-fun res!1812916 () Bool)

(declare-fun e!2737571 () Bool)

(assert (=> d!1324847 (=> res!1812916 e!2737571)))

(assert (=> d!1324847 (= res!1812916 (and (is-Cons!49245 (_2!27708 (h!54863 (toList!3211 lm!1707)))) (= (_1!27707 (h!54862 (_2!27708 (h!54863 (toList!3211 lm!1707))))) key!3918)))))

(assert (=> d!1324847 (= (containsKey!906 (_2!27708 (h!54863 (toList!3211 lm!1707))) key!3918) e!2737571)))

(declare-fun b!4396735 () Bool)

(declare-fun e!2737572 () Bool)

(assert (=> b!4396735 (= e!2737571 e!2737572)))

(declare-fun res!1812917 () Bool)

(assert (=> b!4396735 (=> (not res!1812917) (not e!2737572))))

(assert (=> b!4396735 (= res!1812917 (is-Cons!49245 (_2!27708 (h!54863 (toList!3211 lm!1707)))))))

(declare-fun b!4396736 () Bool)

(assert (=> b!4396736 (= e!2737572 (containsKey!906 (t!356303 (_2!27708 (h!54863 (toList!3211 lm!1707)))) key!3918))))

(assert (= (and d!1324847 (not res!1812916)) b!4396735))

(assert (= (and b!4396735 res!1812917) b!4396736))

(declare-fun m!5057537 () Bool)

(assert (=> b!4396736 m!5057537))

(assert (=> b!4396659 d!1324847))

(declare-fun d!1324849 () Bool)

(declare-fun res!1812922 () Bool)

(declare-fun e!2737577 () Bool)

(assert (=> d!1324849 (=> res!1812922 e!2737577)))

(assert (=> d!1324849 (= res!1812922 (is-Nil!49246 (toList!3211 lm!1707)))))

(assert (=> d!1324849 (= (forall!9337 (toList!3211 lm!1707) lambda!148058) e!2737577)))

(declare-fun b!4396741 () Bool)

(declare-fun e!2737578 () Bool)

(assert (=> b!4396741 (= e!2737577 e!2737578)))

(declare-fun res!1812923 () Bool)

(assert (=> b!4396741 (=> (not res!1812923) (not e!2737578))))

(assert (=> b!4396741 (= res!1812923 (dynLambda!20748 lambda!148058 (h!54863 (toList!3211 lm!1707))))))

(declare-fun b!4396742 () Bool)

(assert (=> b!4396742 (= e!2737578 (forall!9337 (t!356304 (toList!3211 lm!1707)) lambda!148058))))

(assert (= (and d!1324849 (not res!1812922)) b!4396741))

(assert (= (and b!4396741 res!1812923) b!4396742))

(declare-fun b_lambda!139243 () Bool)

(assert (=> (not b_lambda!139243) (not b!4396741)))

(declare-fun m!5057539 () Bool)

(assert (=> b!4396741 m!5057539))

(declare-fun m!5057541 () Bool)

(assert (=> b!4396742 m!5057541))

(assert (=> start!427022 d!1324849))

(declare-fun d!1324853 () Bool)

(assert (=> d!1324853 (= (inv!64790 lm!1707) (isStrictlySorted!168 (toList!3211 lm!1707)))))

(declare-fun bs!726846 () Bool)

(assert (= bs!726846 d!1324853))

(assert (=> bs!726846 m!5057525))

(assert (=> start!427022 d!1324853))

(declare-fun d!1324855 () Bool)

(assert (=> d!1324855 true))

(assert (=> d!1324855 true))

(declare-fun lambda!148074 () Int)

(declare-fun forall!9339 (List!49369 Int) Bool)

(assert (=> d!1324855 (= (allKeysSameHash!572 newBucket!200 hash!377 hashF!1247) (forall!9339 newBucket!200 lambda!148074))))

(declare-fun bs!726847 () Bool)

(assert (= bs!726847 d!1324855))

(declare-fun m!5057543 () Bool)

(assert (=> bs!726847 m!5057543))

(assert (=> b!4396661 d!1324855))

(declare-fun d!1324857 () Bool)

(declare-fun res!1812928 () Bool)

(declare-fun e!2737583 () Bool)

(assert (=> d!1324857 (=> res!1812928 e!2737583)))

(assert (=> d!1324857 (= res!1812928 (is-Nil!49246 (toList!3211 lt!1603096)))))

(assert (=> d!1324857 (= (forall!9337 (toList!3211 lt!1603096) lambda!148058) e!2737583)))

(declare-fun b!4396751 () Bool)

(declare-fun e!2737584 () Bool)

(assert (=> b!4396751 (= e!2737583 e!2737584)))

(declare-fun res!1812929 () Bool)

(assert (=> b!4396751 (=> (not res!1812929) (not e!2737584))))

(assert (=> b!4396751 (= res!1812929 (dynLambda!20748 lambda!148058 (h!54863 (toList!3211 lt!1603096))))))

(declare-fun b!4396752 () Bool)

(assert (=> b!4396752 (= e!2737584 (forall!9337 (t!356304 (toList!3211 lt!1603096)) lambda!148058))))

(assert (= (and d!1324857 (not res!1812928)) b!4396751))

(assert (= (and b!4396751 res!1812929) b!4396752))

(declare-fun b_lambda!139245 () Bool)

(assert (=> (not b_lambda!139245) (not b!4396751)))

(declare-fun m!5057545 () Bool)

(assert (=> b!4396751 m!5057545))

(declare-fun m!5057547 () Bool)

(assert (=> b!4396752 m!5057547))

(assert (=> b!4396651 d!1324857))

(declare-fun b!4396783 () Bool)

(declare-fun e!2737607 () Bool)

(declare-fun e!2737606 () Bool)

(assert (=> b!4396783 (= e!2737607 e!2737606)))

(declare-fun res!1812945 () Bool)

(assert (=> b!4396783 (=> (not res!1812945) (not e!2737606))))

(declare-datatypes ((Option!10597 0))(
  ( (None!10596) (Some!10596 (v!43668 V!10849)) )
))
(declare-fun isDefined!7889 (Option!10597) Bool)

(declare-fun getValueByKey!583 (List!49369 K!10603) Option!10597)

(assert (=> b!4396783 (= res!1812945 (isDefined!7889 (getValueByKey!583 (toList!3212 (extractMap!673 (toList!3211 lm!1707))) key!3918)))))

(declare-fun bm!306025 () Bool)

(declare-fun call!306030 () Bool)

(declare-datatypes ((List!49373 0))(
  ( (Nil!49249) (Cons!49249 (h!54868 K!10603) (t!356307 List!49373)) )
))
(declare-fun e!2737608 () List!49373)

(declare-fun contains!11627 (List!49373 K!10603) Bool)

(assert (=> bm!306025 (= call!306030 (contains!11627 e!2737608 key!3918))))

(declare-fun c!748477 () Bool)

(declare-fun c!748476 () Bool)

(assert (=> bm!306025 (= c!748477 c!748476)))

(declare-fun b!4396784 () Bool)

(assert (=> b!4396784 false))

(declare-fun lt!1603164 () Unit!78396)

(declare-fun lt!1603169 () Unit!78396)

(assert (=> b!4396784 (= lt!1603164 lt!1603169)))

(declare-fun containsKey!908 (List!49369 K!10603) Bool)

(assert (=> b!4396784 (containsKey!908 (toList!3212 (extractMap!673 (toList!3211 lm!1707))) key!3918)))

(declare-fun lemmaInGetKeysListThenContainsKey!187 (List!49369 K!10603) Unit!78396)

(assert (=> b!4396784 (= lt!1603169 (lemmaInGetKeysListThenContainsKey!187 (toList!3212 (extractMap!673 (toList!3211 lm!1707))) key!3918))))

(declare-fun e!2737610 () Unit!78396)

(declare-fun Unit!78400 () Unit!78396)

(assert (=> b!4396784 (= e!2737610 Unit!78400)))

(declare-fun b!4396785 () Bool)

(declare-fun getKeysList!189 (List!49369) List!49373)

(assert (=> b!4396785 (= e!2737608 (getKeysList!189 (toList!3212 (extractMap!673 (toList!3211 lm!1707)))))))

(declare-fun b!4396786 () Bool)

(declare-fun keys!16727 (ListMap!2455) List!49373)

(assert (=> b!4396786 (= e!2737606 (contains!11627 (keys!16727 (extractMap!673 (toList!3211 lm!1707))) key!3918))))

(declare-fun b!4396787 () Bool)

(declare-fun e!2737605 () Unit!78396)

(assert (=> b!4396787 (= e!2737605 e!2737610)))

(declare-fun c!748475 () Bool)

(assert (=> b!4396787 (= c!748475 call!306030)))

(declare-fun b!4396788 () Bool)

(declare-fun e!2737609 () Bool)

(assert (=> b!4396788 (= e!2737609 (not (contains!11627 (keys!16727 (extractMap!673 (toList!3211 lm!1707))) key!3918)))))

(declare-fun b!4396789 () Bool)

(declare-fun lt!1603170 () Unit!78396)

(assert (=> b!4396789 (= e!2737605 lt!1603170)))

(declare-fun lt!1603167 () Unit!78396)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!492 (List!49369 K!10603) Unit!78396)

(assert (=> b!4396789 (= lt!1603167 (lemmaContainsKeyImpliesGetValueByKeyDefined!492 (toList!3212 (extractMap!673 (toList!3211 lm!1707))) key!3918))))

(assert (=> b!4396789 (isDefined!7889 (getValueByKey!583 (toList!3212 (extractMap!673 (toList!3211 lm!1707))) key!3918))))

(declare-fun lt!1603166 () Unit!78396)

(assert (=> b!4396789 (= lt!1603166 lt!1603167)))

(declare-fun lemmaInListThenGetKeysListContains!186 (List!49369 K!10603) Unit!78396)

(assert (=> b!4396789 (= lt!1603170 (lemmaInListThenGetKeysListContains!186 (toList!3212 (extractMap!673 (toList!3211 lm!1707))) key!3918))))

(assert (=> b!4396789 call!306030))

(declare-fun b!4396790 () Bool)

(assert (=> b!4396790 (= e!2737608 (keys!16727 (extractMap!673 (toList!3211 lm!1707))))))

(declare-fun d!1324859 () Bool)

(assert (=> d!1324859 e!2737607))

(declare-fun res!1812944 () Bool)

(assert (=> d!1324859 (=> res!1812944 e!2737607)))

(assert (=> d!1324859 (= res!1812944 e!2737609)))

(declare-fun res!1812946 () Bool)

(assert (=> d!1324859 (=> (not res!1812946) (not e!2737609))))

(declare-fun lt!1603168 () Bool)

(assert (=> d!1324859 (= res!1812946 (not lt!1603168))))

(declare-fun lt!1603165 () Bool)

(assert (=> d!1324859 (= lt!1603168 lt!1603165)))

(declare-fun lt!1603163 () Unit!78396)

(assert (=> d!1324859 (= lt!1603163 e!2737605)))

(assert (=> d!1324859 (= c!748476 lt!1603165)))

(assert (=> d!1324859 (= lt!1603165 (containsKey!908 (toList!3212 (extractMap!673 (toList!3211 lm!1707))) key!3918))))

(assert (=> d!1324859 (= (contains!11621 (extractMap!673 (toList!3211 lm!1707)) key!3918) lt!1603168)))

(declare-fun b!4396791 () Bool)

(declare-fun Unit!78401 () Unit!78396)

(assert (=> b!4396791 (= e!2737610 Unit!78401)))

(assert (= (and d!1324859 c!748476) b!4396789))

(assert (= (and d!1324859 (not c!748476)) b!4396787))

(assert (= (and b!4396787 c!748475) b!4396784))

(assert (= (and b!4396787 (not c!748475)) b!4396791))

(assert (= (or b!4396789 b!4396787) bm!306025))

(assert (= (and bm!306025 c!748477) b!4396785))

(assert (= (and bm!306025 (not c!748477)) b!4396790))

(assert (= (and d!1324859 res!1812946) b!4396788))

(assert (= (and d!1324859 (not res!1812944)) b!4396783))

(assert (= (and b!4396783 res!1812945) b!4396786))

(declare-fun m!5057559 () Bool)

(assert (=> b!4396784 m!5057559))

(declare-fun m!5057561 () Bool)

(assert (=> b!4396784 m!5057561))

(assert (=> d!1324859 m!5057559))

(declare-fun m!5057563 () Bool)

(assert (=> bm!306025 m!5057563))

(declare-fun m!5057565 () Bool)

(assert (=> b!4396789 m!5057565))

(declare-fun m!5057567 () Bool)

(assert (=> b!4396789 m!5057567))

(assert (=> b!4396789 m!5057567))

(declare-fun m!5057569 () Bool)

(assert (=> b!4396789 m!5057569))

(declare-fun m!5057571 () Bool)

(assert (=> b!4396789 m!5057571))

(declare-fun m!5057573 () Bool)

(assert (=> b!4396785 m!5057573))

(assert (=> b!4396790 m!5057447))

(declare-fun m!5057575 () Bool)

(assert (=> b!4396790 m!5057575))

(assert (=> b!4396788 m!5057447))

(assert (=> b!4396788 m!5057575))

(assert (=> b!4396788 m!5057575))

(declare-fun m!5057577 () Bool)

(assert (=> b!4396788 m!5057577))

(assert (=> b!4396786 m!5057447))

(assert (=> b!4396786 m!5057575))

(assert (=> b!4396786 m!5057575))

(assert (=> b!4396786 m!5057577))

(assert (=> b!4396783 m!5057567))

(assert (=> b!4396783 m!5057567))

(assert (=> b!4396783 m!5057569))

(assert (=> b!4396655 d!1324859))

(declare-fun bs!726852 () Bool)

(declare-fun d!1324869 () Bool)

(assert (= bs!726852 (and d!1324869 start!427022)))

(declare-fun lambda!148083 () Int)

(assert (=> bs!726852 (= lambda!148083 lambda!148058)))

(declare-fun lt!1603173 () ListMap!2455)

(declare-fun invariantList!742 (List!49369) Bool)

(assert (=> d!1324869 (invariantList!742 (toList!3212 lt!1603173))))

(declare-fun e!2737619 () ListMap!2455)

(assert (=> d!1324869 (= lt!1603173 e!2737619)))

(declare-fun c!748480 () Bool)

(assert (=> d!1324869 (= c!748480 (is-Cons!49246 (toList!3211 lm!1707)))))

(assert (=> d!1324869 (forall!9337 (toList!3211 lm!1707) lambda!148083)))

(assert (=> d!1324869 (= (extractMap!673 (toList!3211 lm!1707)) lt!1603173)))

(declare-fun b!4396804 () Bool)

(declare-fun addToMapMapFromBucket!287 (List!49369 ListMap!2455) ListMap!2455)

(assert (=> b!4396804 (= e!2737619 (addToMapMapFromBucket!287 (_2!27708 (h!54863 (toList!3211 lm!1707))) (extractMap!673 (t!356304 (toList!3211 lm!1707)))))))

(declare-fun b!4396805 () Bool)

(assert (=> b!4396805 (= e!2737619 (ListMap!2456 Nil!49245))))

(assert (= (and d!1324869 c!748480) b!4396804))

(assert (= (and d!1324869 (not c!748480)) b!4396805))

(declare-fun m!5057585 () Bool)

(assert (=> d!1324869 m!5057585))

(declare-fun m!5057587 () Bool)

(assert (=> d!1324869 m!5057587))

(assert (=> b!4396804 m!5057423))

(assert (=> b!4396804 m!5057423))

(declare-fun m!5057589 () Bool)

(assert (=> b!4396804 m!5057589))

(assert (=> b!4396655 d!1324869))

(declare-fun b!4396806 () Bool)

(declare-fun e!2737622 () Bool)

(declare-fun e!2737621 () Bool)

(assert (=> b!4396806 (= e!2737622 e!2737621)))

(declare-fun res!1812954 () Bool)

(assert (=> b!4396806 (=> (not res!1812954) (not e!2737621))))

(assert (=> b!4396806 (= res!1812954 (isDefined!7889 (getValueByKey!583 (toList!3212 (extractMap!673 (toList!3211 lt!1603103))) key!3918)))))

(declare-fun bm!306026 () Bool)

(declare-fun call!306031 () Bool)

(declare-fun e!2737623 () List!49373)

(assert (=> bm!306026 (= call!306031 (contains!11627 e!2737623 key!3918))))

(declare-fun c!748483 () Bool)

(declare-fun c!748482 () Bool)

(assert (=> bm!306026 (= c!748483 c!748482)))

(declare-fun b!4396807 () Bool)

(assert (=> b!4396807 false))

(declare-fun lt!1603175 () Unit!78396)

(declare-fun lt!1603180 () Unit!78396)

(assert (=> b!4396807 (= lt!1603175 lt!1603180)))

(assert (=> b!4396807 (containsKey!908 (toList!3212 (extractMap!673 (toList!3211 lt!1603103))) key!3918)))

(assert (=> b!4396807 (= lt!1603180 (lemmaInGetKeysListThenContainsKey!187 (toList!3212 (extractMap!673 (toList!3211 lt!1603103))) key!3918))))

(declare-fun e!2737625 () Unit!78396)

(declare-fun Unit!78402 () Unit!78396)

(assert (=> b!4396807 (= e!2737625 Unit!78402)))

(declare-fun b!4396808 () Bool)

(assert (=> b!4396808 (= e!2737623 (getKeysList!189 (toList!3212 (extractMap!673 (toList!3211 lt!1603103)))))))

(declare-fun b!4396809 () Bool)

(assert (=> b!4396809 (= e!2737621 (contains!11627 (keys!16727 (extractMap!673 (toList!3211 lt!1603103))) key!3918))))

(declare-fun b!4396810 () Bool)

(declare-fun e!2737620 () Unit!78396)

(assert (=> b!4396810 (= e!2737620 e!2737625)))

(declare-fun c!748481 () Bool)

(assert (=> b!4396810 (= c!748481 call!306031)))

(declare-fun b!4396811 () Bool)

(declare-fun e!2737624 () Bool)

(assert (=> b!4396811 (= e!2737624 (not (contains!11627 (keys!16727 (extractMap!673 (toList!3211 lt!1603103))) key!3918)))))

(declare-fun b!4396812 () Bool)

(declare-fun lt!1603181 () Unit!78396)

(assert (=> b!4396812 (= e!2737620 lt!1603181)))

(declare-fun lt!1603178 () Unit!78396)

(assert (=> b!4396812 (= lt!1603178 (lemmaContainsKeyImpliesGetValueByKeyDefined!492 (toList!3212 (extractMap!673 (toList!3211 lt!1603103))) key!3918))))

(assert (=> b!4396812 (isDefined!7889 (getValueByKey!583 (toList!3212 (extractMap!673 (toList!3211 lt!1603103))) key!3918))))

(declare-fun lt!1603177 () Unit!78396)

(assert (=> b!4396812 (= lt!1603177 lt!1603178)))

(assert (=> b!4396812 (= lt!1603181 (lemmaInListThenGetKeysListContains!186 (toList!3212 (extractMap!673 (toList!3211 lt!1603103))) key!3918))))

(assert (=> b!4396812 call!306031))

(declare-fun b!4396813 () Bool)

(assert (=> b!4396813 (= e!2737623 (keys!16727 (extractMap!673 (toList!3211 lt!1603103))))))

(declare-fun d!1324875 () Bool)

(assert (=> d!1324875 e!2737622))

(declare-fun res!1812953 () Bool)

(assert (=> d!1324875 (=> res!1812953 e!2737622)))

(assert (=> d!1324875 (= res!1812953 e!2737624)))

(declare-fun res!1812955 () Bool)

(assert (=> d!1324875 (=> (not res!1812955) (not e!2737624))))

(declare-fun lt!1603179 () Bool)

(assert (=> d!1324875 (= res!1812955 (not lt!1603179))))

(declare-fun lt!1603176 () Bool)

(assert (=> d!1324875 (= lt!1603179 lt!1603176)))

(declare-fun lt!1603174 () Unit!78396)

(assert (=> d!1324875 (= lt!1603174 e!2737620)))

(assert (=> d!1324875 (= c!748482 lt!1603176)))

(assert (=> d!1324875 (= lt!1603176 (containsKey!908 (toList!3212 (extractMap!673 (toList!3211 lt!1603103))) key!3918))))

(assert (=> d!1324875 (= (contains!11621 (extractMap!673 (toList!3211 lt!1603103)) key!3918) lt!1603179)))

(declare-fun b!4396814 () Bool)

(declare-fun Unit!78403 () Unit!78396)

(assert (=> b!4396814 (= e!2737625 Unit!78403)))

(assert (= (and d!1324875 c!748482) b!4396812))

(assert (= (and d!1324875 (not c!748482)) b!4396810))

(assert (= (and b!4396810 c!748481) b!4396807))

(assert (= (and b!4396810 (not c!748481)) b!4396814))

(assert (= (or b!4396812 b!4396810) bm!306026))

(assert (= (and bm!306026 c!748483) b!4396808))

(assert (= (and bm!306026 (not c!748483)) b!4396813))

(assert (= (and d!1324875 res!1812955) b!4396811))

(assert (= (and d!1324875 (not res!1812953)) b!4396806))

(assert (= (and b!4396806 res!1812954) b!4396809))

(declare-fun m!5057591 () Bool)

(assert (=> b!4396807 m!5057591))

(declare-fun m!5057593 () Bool)

(assert (=> b!4396807 m!5057593))

(assert (=> d!1324875 m!5057591))

(declare-fun m!5057595 () Bool)

(assert (=> bm!306026 m!5057595))

(declare-fun m!5057597 () Bool)

(assert (=> b!4396812 m!5057597))

(declare-fun m!5057599 () Bool)

(assert (=> b!4396812 m!5057599))

(assert (=> b!4396812 m!5057599))

(declare-fun m!5057601 () Bool)

(assert (=> b!4396812 m!5057601))

(declare-fun m!5057603 () Bool)

(assert (=> b!4396812 m!5057603))

(declare-fun m!5057605 () Bool)

(assert (=> b!4396808 m!5057605))

(assert (=> b!4396813 m!5057425))

(declare-fun m!5057607 () Bool)

(assert (=> b!4396813 m!5057607))

(assert (=> b!4396811 m!5057425))

(assert (=> b!4396811 m!5057607))

(assert (=> b!4396811 m!5057607))

(declare-fun m!5057609 () Bool)

(assert (=> b!4396811 m!5057609))

(assert (=> b!4396809 m!5057425))

(assert (=> b!4396809 m!5057607))

(assert (=> b!4396809 m!5057607))

(assert (=> b!4396809 m!5057609))

(assert (=> b!4396806 m!5057599))

(assert (=> b!4396806 m!5057599))

(assert (=> b!4396806 m!5057601))

(assert (=> b!4396653 d!1324875))

(declare-fun b!4396815 () Bool)

(declare-fun e!2737628 () Bool)

(declare-fun e!2737627 () Bool)

(assert (=> b!4396815 (= e!2737628 e!2737627)))

(declare-fun res!1812957 () Bool)

(assert (=> b!4396815 (=> (not res!1812957) (not e!2737627))))

(assert (=> b!4396815 (= res!1812957 (isDefined!7889 (getValueByKey!583 (toList!3212 lt!1603098) key!3918)))))

(declare-fun bm!306027 () Bool)

(declare-fun call!306032 () Bool)

(declare-fun e!2737629 () List!49373)

(assert (=> bm!306027 (= call!306032 (contains!11627 e!2737629 key!3918))))

(declare-fun c!748486 () Bool)

(declare-fun c!748485 () Bool)

(assert (=> bm!306027 (= c!748486 c!748485)))

(declare-fun b!4396816 () Bool)

(assert (=> b!4396816 false))

(declare-fun lt!1603183 () Unit!78396)

(declare-fun lt!1603188 () Unit!78396)

(assert (=> b!4396816 (= lt!1603183 lt!1603188)))

(assert (=> b!4396816 (containsKey!908 (toList!3212 lt!1603098) key!3918)))

(assert (=> b!4396816 (= lt!1603188 (lemmaInGetKeysListThenContainsKey!187 (toList!3212 lt!1603098) key!3918))))

(declare-fun e!2737631 () Unit!78396)

(declare-fun Unit!78404 () Unit!78396)

(assert (=> b!4396816 (= e!2737631 Unit!78404)))

(declare-fun b!4396817 () Bool)

(assert (=> b!4396817 (= e!2737629 (getKeysList!189 (toList!3212 lt!1603098)))))

(declare-fun b!4396818 () Bool)

(assert (=> b!4396818 (= e!2737627 (contains!11627 (keys!16727 lt!1603098) key!3918))))

(declare-fun b!4396819 () Bool)

(declare-fun e!2737626 () Unit!78396)

(assert (=> b!4396819 (= e!2737626 e!2737631)))

(declare-fun c!748484 () Bool)

(assert (=> b!4396819 (= c!748484 call!306032)))

(declare-fun b!4396820 () Bool)

(declare-fun e!2737630 () Bool)

(assert (=> b!4396820 (= e!2737630 (not (contains!11627 (keys!16727 lt!1603098) key!3918)))))

(declare-fun b!4396821 () Bool)

(declare-fun lt!1603189 () Unit!78396)

(assert (=> b!4396821 (= e!2737626 lt!1603189)))

(declare-fun lt!1603186 () Unit!78396)

(assert (=> b!4396821 (= lt!1603186 (lemmaContainsKeyImpliesGetValueByKeyDefined!492 (toList!3212 lt!1603098) key!3918))))

(assert (=> b!4396821 (isDefined!7889 (getValueByKey!583 (toList!3212 lt!1603098) key!3918))))

(declare-fun lt!1603185 () Unit!78396)

(assert (=> b!4396821 (= lt!1603185 lt!1603186)))

(assert (=> b!4396821 (= lt!1603189 (lemmaInListThenGetKeysListContains!186 (toList!3212 lt!1603098) key!3918))))

(assert (=> b!4396821 call!306032))

(declare-fun b!4396822 () Bool)

(assert (=> b!4396822 (= e!2737629 (keys!16727 lt!1603098))))

(declare-fun d!1324877 () Bool)

(assert (=> d!1324877 e!2737628))

(declare-fun res!1812956 () Bool)

(assert (=> d!1324877 (=> res!1812956 e!2737628)))

(assert (=> d!1324877 (= res!1812956 e!2737630)))

(declare-fun res!1812958 () Bool)

(assert (=> d!1324877 (=> (not res!1812958) (not e!2737630))))

(declare-fun lt!1603187 () Bool)

(assert (=> d!1324877 (= res!1812958 (not lt!1603187))))

(declare-fun lt!1603184 () Bool)

(assert (=> d!1324877 (= lt!1603187 lt!1603184)))

(declare-fun lt!1603182 () Unit!78396)

(assert (=> d!1324877 (= lt!1603182 e!2737626)))

(assert (=> d!1324877 (= c!748485 lt!1603184)))

(assert (=> d!1324877 (= lt!1603184 (containsKey!908 (toList!3212 lt!1603098) key!3918))))

(assert (=> d!1324877 (= (contains!11621 lt!1603098 key!3918) lt!1603187)))

(declare-fun b!4396823 () Bool)

(declare-fun Unit!78405 () Unit!78396)

(assert (=> b!4396823 (= e!2737631 Unit!78405)))

(assert (= (and d!1324877 c!748485) b!4396821))

(assert (= (and d!1324877 (not c!748485)) b!4396819))

(assert (= (and b!4396819 c!748484) b!4396816))

(assert (= (and b!4396819 (not c!748484)) b!4396823))

(assert (= (or b!4396821 b!4396819) bm!306027))

(assert (= (and bm!306027 c!748486) b!4396817))

(assert (= (and bm!306027 (not c!748486)) b!4396822))

(assert (= (and d!1324877 res!1812958) b!4396820))

(assert (= (and d!1324877 (not res!1812956)) b!4396815))

(assert (= (and b!4396815 res!1812957) b!4396818))

(declare-fun m!5057611 () Bool)

(assert (=> b!4396816 m!5057611))

(declare-fun m!5057613 () Bool)

(assert (=> b!4396816 m!5057613))

(assert (=> d!1324877 m!5057611))

(declare-fun m!5057615 () Bool)

(assert (=> bm!306027 m!5057615))

(declare-fun m!5057617 () Bool)

(assert (=> b!4396821 m!5057617))

(declare-fun m!5057619 () Bool)

(assert (=> b!4396821 m!5057619))

(assert (=> b!4396821 m!5057619))

(declare-fun m!5057621 () Bool)

(assert (=> b!4396821 m!5057621))

(declare-fun m!5057623 () Bool)

(assert (=> b!4396821 m!5057623))

(declare-fun m!5057625 () Bool)

(assert (=> b!4396817 m!5057625))

(declare-fun m!5057627 () Bool)

(assert (=> b!4396822 m!5057627))

(assert (=> b!4396820 m!5057627))

(assert (=> b!4396820 m!5057627))

(declare-fun m!5057629 () Bool)

(assert (=> b!4396820 m!5057629))

(assert (=> b!4396818 m!5057627))

(assert (=> b!4396818 m!5057627))

(assert (=> b!4396818 m!5057629))

(assert (=> b!4396815 m!5057619))

(assert (=> b!4396815 m!5057619))

(assert (=> b!4396815 m!5057621))

(assert (=> b!4396653 d!1324877))

(declare-fun d!1324879 () Bool)

(assert (=> d!1324879 (= (apply!11466 lm!1707 (_1!27708 (h!54863 (toList!3211 lm!1707)))) (get!16028 (getValueByKey!582 (toList!3211 lm!1707) (_1!27708 (h!54863 (toList!3211 lm!1707))))))))

(declare-fun bs!726853 () Bool)

(assert (= bs!726853 d!1324879))

(declare-fun m!5057631 () Bool)

(assert (=> bs!726853 m!5057631))

(assert (=> bs!726853 m!5057631))

(declare-fun m!5057633 () Bool)

(assert (=> bs!726853 m!5057633))

(assert (=> b!4396653 d!1324879))

(declare-fun d!1324881 () Bool)

(assert (=> d!1324881 (contains!11621 lt!1603098 key!3918)))

(declare-fun lt!1603200 () Unit!78396)

(declare-fun choose!27507 (List!49369 K!10603 V!10849 ListMap!2455) Unit!78396)

(assert (=> d!1324881 (= lt!1603200 (choose!27507 (_2!27708 (h!54863 (toList!3211 lm!1707))) key!3918 newValue!99 lt!1603098))))

(assert (=> d!1324881 (noDuplicateKeys!614 (_2!27708 (h!54863 (toList!3211 lm!1707))))))

(assert (=> d!1324881 (= (lemmaAddToMapContainsAndNotInListThenInAcc!73 (_2!27708 (h!54863 (toList!3211 lm!1707))) key!3918 newValue!99 lt!1603098) lt!1603200)))

(declare-fun bs!726854 () Bool)

(assert (= bs!726854 d!1324881))

(assert (=> bs!726854 m!5057439))

(declare-fun m!5057635 () Bool)

(assert (=> bs!726854 m!5057635))

(declare-fun m!5057637 () Bool)

(assert (=> bs!726854 m!5057637))

(assert (=> b!4396653 d!1324881))

(declare-fun d!1324883 () Bool)

(declare-fun res!1812963 () Bool)

(declare-fun e!2737634 () Bool)

(assert (=> d!1324883 (=> res!1812963 e!2737634)))

(assert (=> d!1324883 (= res!1812963 (and (is-Cons!49245 (apply!11466 lm!1707 (_1!27708 (h!54863 (toList!3211 lm!1707))))) (= (_1!27707 (h!54862 (apply!11466 lm!1707 (_1!27708 (h!54863 (toList!3211 lm!1707)))))) key!3918)))))

(assert (=> d!1324883 (= (containsKey!906 (apply!11466 lm!1707 (_1!27708 (h!54863 (toList!3211 lm!1707)))) key!3918) e!2737634)))

(declare-fun b!4396828 () Bool)

(declare-fun e!2737635 () Bool)

(assert (=> b!4396828 (= e!2737634 e!2737635)))

(declare-fun res!1812964 () Bool)

(assert (=> b!4396828 (=> (not res!1812964) (not e!2737635))))

(assert (=> b!4396828 (= res!1812964 (is-Cons!49245 (apply!11466 lm!1707 (_1!27708 (h!54863 (toList!3211 lm!1707))))))))

(declare-fun b!4396829 () Bool)

(assert (=> b!4396829 (= e!2737635 (containsKey!906 (t!356303 (apply!11466 lm!1707 (_1!27708 (h!54863 (toList!3211 lm!1707))))) key!3918))))

(assert (= (and d!1324883 (not res!1812963)) b!4396828))

(assert (= (and b!4396828 res!1812964) b!4396829))

(declare-fun m!5057639 () Bool)

(assert (=> b!4396829 m!5057639))

(assert (=> b!4396653 d!1324883))

(declare-fun d!1324885 () Bool)

(declare-fun res!1812965 () Bool)

(declare-fun e!2737636 () Bool)

(assert (=> d!1324885 (=> res!1812965 e!2737636)))

(assert (=> d!1324885 (= res!1812965 (is-Nil!49246 (toList!3211 lt!1603103)))))

(assert (=> d!1324885 (= (forall!9337 (toList!3211 lt!1603103) lambda!148058) e!2737636)))

(declare-fun b!4396830 () Bool)

(declare-fun e!2737637 () Bool)

(assert (=> b!4396830 (= e!2737636 e!2737637)))

(declare-fun res!1812966 () Bool)

(assert (=> b!4396830 (=> (not res!1812966) (not e!2737637))))

(assert (=> b!4396830 (= res!1812966 (dynLambda!20748 lambda!148058 (h!54863 (toList!3211 lt!1603103))))))

(declare-fun b!4396831 () Bool)

(assert (=> b!4396831 (= e!2737637 (forall!9337 (t!356304 (toList!3211 lt!1603103)) lambda!148058))))

(assert (= (and d!1324885 (not res!1812965)) b!4396830))

(assert (= (and b!4396830 res!1812966) b!4396831))

(declare-fun b_lambda!139249 () Bool)

(assert (=> (not b_lambda!139249) (not b!4396830)))

(declare-fun m!5057641 () Bool)

(assert (=> b!4396830 m!5057641))

(declare-fun m!5057643 () Bool)

(assert (=> b!4396831 m!5057643))

(assert (=> b!4396653 d!1324885))

(declare-fun d!1324887 () Bool)

(declare-fun tail!7095 (List!49370) List!49370)

(assert (=> d!1324887 (= (tail!7093 lm!1707) (ListLongMap!1862 (tail!7095 (toList!3211 lm!1707))))))

(declare-fun bs!726855 () Bool)

(assert (= bs!726855 d!1324887))

(declare-fun m!5057645 () Bool)

(assert (=> bs!726855 m!5057645))

(assert (=> b!4396653 d!1324887))

(declare-fun bs!726856 () Bool)

(declare-fun d!1324889 () Bool)

(assert (= bs!726856 (and d!1324889 start!427022)))

(declare-fun lambda!148084 () Int)

(assert (=> bs!726856 (= lambda!148084 lambda!148058)))

(declare-fun bs!726857 () Bool)

(assert (= bs!726857 (and d!1324889 d!1324869)))

(assert (=> bs!726857 (= lambda!148084 lambda!148083)))

(declare-fun lt!1603201 () ListMap!2455)

(assert (=> d!1324889 (invariantList!742 (toList!3212 lt!1603201))))

(declare-fun e!2737638 () ListMap!2455)

(assert (=> d!1324889 (= lt!1603201 e!2737638)))

(declare-fun c!748487 () Bool)

(assert (=> d!1324889 (= c!748487 (is-Cons!49246 (t!356304 (toList!3211 lm!1707))))))

(assert (=> d!1324889 (forall!9337 (t!356304 (toList!3211 lm!1707)) lambda!148084)))

(assert (=> d!1324889 (= (extractMap!673 (t!356304 (toList!3211 lm!1707))) lt!1603201)))

(declare-fun b!4396832 () Bool)

(assert (=> b!4396832 (= e!2737638 (addToMapMapFromBucket!287 (_2!27708 (h!54863 (t!356304 (toList!3211 lm!1707)))) (extractMap!673 (t!356304 (t!356304 (toList!3211 lm!1707))))))))

(declare-fun b!4396833 () Bool)

(assert (=> b!4396833 (= e!2737638 (ListMap!2456 Nil!49245))))

(assert (= (and d!1324889 c!748487) b!4396832))

(assert (= (and d!1324889 (not c!748487)) b!4396833))

(declare-fun m!5057647 () Bool)

(assert (=> d!1324889 m!5057647))

(declare-fun m!5057649 () Bool)

(assert (=> d!1324889 m!5057649))

(declare-fun m!5057651 () Bool)

(assert (=> b!4396832 m!5057651))

(assert (=> b!4396832 m!5057651))

(declare-fun m!5057653 () Bool)

(assert (=> b!4396832 m!5057653))

(assert (=> b!4396653 d!1324889))

(declare-fun bs!726858 () Bool)

(declare-fun d!1324891 () Bool)

(assert (= bs!726858 (and d!1324891 start!427022)))

(declare-fun lambda!148087 () Int)

(assert (=> bs!726858 (= lambda!148087 lambda!148058)))

(declare-fun bs!726859 () Bool)

(assert (= bs!726859 (and d!1324891 d!1324869)))

(assert (=> bs!726859 (= lambda!148087 lambda!148083)))

(declare-fun bs!726860 () Bool)

(assert (= bs!726860 (and d!1324891 d!1324889)))

(assert (=> bs!726860 (= lambda!148087 lambda!148084)))

(assert (=> d!1324891 (not (containsKey!906 (apply!11466 lm!1707 (_1!27708 (h!54863 (toList!3211 lm!1707)))) key!3918))))

(declare-fun lt!1603208 () Unit!78396)

(declare-fun choose!27508 (ListLongMap!1861 K!10603 (_ BitVec 64) Hashable!5006) Unit!78396)

(assert (=> d!1324891 (= lt!1603208 (choose!27508 lm!1707 key!3918 (_1!27708 (h!54863 (toList!3211 lm!1707))) hashF!1247))))

(assert (=> d!1324891 (forall!9337 (toList!3211 lm!1707) lambda!148087)))

(assert (=> d!1324891 (= (lemmaNotSameHashThenCannotContainKey!85 lm!1707 key!3918 (_1!27708 (h!54863 (toList!3211 lm!1707))) hashF!1247) lt!1603208)))

(declare-fun bs!726861 () Bool)

(assert (= bs!726861 d!1324891))

(assert (=> bs!726861 m!5057435))

(assert (=> bs!726861 m!5057435))

(assert (=> bs!726861 m!5057437))

(declare-fun m!5057667 () Bool)

(assert (=> bs!726861 m!5057667))

(declare-fun m!5057669 () Bool)

(assert (=> bs!726861 m!5057669))

(assert (=> b!4396653 d!1324891))

(declare-fun bs!726862 () Bool)

(declare-fun d!1324895 () Bool)

(assert (= bs!726862 (and d!1324895 start!427022)))

(declare-fun lambda!148088 () Int)

(assert (=> bs!726862 (= lambda!148088 lambda!148058)))

(declare-fun bs!726863 () Bool)

(assert (= bs!726863 (and d!1324895 d!1324869)))

(assert (=> bs!726863 (= lambda!148088 lambda!148083)))

(declare-fun bs!726864 () Bool)

(assert (= bs!726864 (and d!1324895 d!1324889)))

(assert (=> bs!726864 (= lambda!148088 lambda!148084)))

(declare-fun bs!726865 () Bool)

(assert (= bs!726865 (and d!1324895 d!1324891)))

(assert (=> bs!726865 (= lambda!148088 lambda!148087)))

(declare-fun lt!1603209 () ListMap!2455)

(assert (=> d!1324895 (invariantList!742 (toList!3212 lt!1603209))))

(declare-fun e!2737640 () ListMap!2455)

(assert (=> d!1324895 (= lt!1603209 e!2737640)))

(declare-fun c!748488 () Bool)

(assert (=> d!1324895 (= c!748488 (is-Cons!49246 (toList!3211 lt!1603103)))))

(assert (=> d!1324895 (forall!9337 (toList!3211 lt!1603103) lambda!148088)))

(assert (=> d!1324895 (= (extractMap!673 (toList!3211 lt!1603103)) lt!1603209)))

(declare-fun b!4396836 () Bool)

(assert (=> b!4396836 (= e!2737640 (addToMapMapFromBucket!287 (_2!27708 (h!54863 (toList!3211 lt!1603103))) (extractMap!673 (t!356304 (toList!3211 lt!1603103)))))))

(declare-fun b!4396837 () Bool)

(assert (=> b!4396837 (= e!2737640 (ListMap!2456 Nil!49245))))

(assert (= (and d!1324895 c!748488) b!4396836))

(assert (= (and d!1324895 (not c!748488)) b!4396837))

(declare-fun m!5057671 () Bool)

(assert (=> d!1324895 m!5057671))

(declare-fun m!5057673 () Bool)

(assert (=> d!1324895 m!5057673))

(declare-fun m!5057675 () Bool)

(assert (=> b!4396836 m!5057675))

(assert (=> b!4396836 m!5057675))

(declare-fun m!5057677 () Bool)

(assert (=> b!4396836 m!5057677))

(assert (=> b!4396653 d!1324895))

(declare-fun d!1324897 () Bool)

(declare-fun hash!1835 (Hashable!5006 K!10603) (_ BitVec 64))

(assert (=> d!1324897 (= (hash!1832 hashF!1247 key!3918) (hash!1835 hashF!1247 key!3918))))

(declare-fun bs!726866 () Bool)

(assert (= bs!726866 d!1324897))

(declare-fun m!5057679 () Bool)

(assert (=> bs!726866 m!5057679))

(assert (=> b!4396654 d!1324897))

(declare-fun bs!726867 () Bool)

(declare-fun d!1324899 () Bool)

(assert (= bs!726867 (and d!1324899 d!1324891)))

(declare-fun lambda!148091 () Int)

(assert (=> bs!726867 (not (= lambda!148091 lambda!148087))))

(declare-fun bs!726868 () Bool)

(assert (= bs!726868 (and d!1324899 start!427022)))

(assert (=> bs!726868 (not (= lambda!148091 lambda!148058))))

(declare-fun bs!726869 () Bool)

(assert (= bs!726869 (and d!1324899 d!1324889)))

(assert (=> bs!726869 (not (= lambda!148091 lambda!148084))))

(declare-fun bs!726870 () Bool)

(assert (= bs!726870 (and d!1324899 d!1324869)))

(assert (=> bs!726870 (not (= lambda!148091 lambda!148083))))

(declare-fun bs!726871 () Bool)

(assert (= bs!726871 (and d!1324899 d!1324895)))

(assert (=> bs!726871 (not (= lambda!148091 lambda!148088))))

(assert (=> d!1324899 true))

(assert (=> d!1324899 (= (allKeysSameHashInMap!718 lm!1707 hashF!1247) (forall!9337 (toList!3211 lm!1707) lambda!148091))))

(declare-fun bs!726872 () Bool)

(assert (= bs!726872 d!1324899))

(declare-fun m!5057681 () Bool)

(assert (=> bs!726872 m!5057681))

(assert (=> b!4396657 d!1324899))

(declare-fun d!1324901 () Bool)

(declare-fun e!2737647 () Bool)

(assert (=> d!1324901 e!2737647))

(declare-fun res!1812973 () Bool)

(assert (=> d!1324901 (=> res!1812973 e!2737647)))

(declare-fun lt!1603223 () Bool)

(assert (=> d!1324901 (= res!1812973 (not lt!1603223))))

(declare-fun lt!1603220 () Bool)

(assert (=> d!1324901 (= lt!1603223 lt!1603220)))

(declare-fun lt!1603222 () Unit!78396)

(declare-fun e!2737648 () Unit!78396)

(assert (=> d!1324901 (= lt!1603222 e!2737648)))

(declare-fun c!748491 () Bool)

(assert (=> d!1324901 (= c!748491 lt!1603220)))

(declare-fun containsKey!909 (List!49370 (_ BitVec 64)) Bool)

(assert (=> d!1324901 (= lt!1603220 (containsKey!909 (toList!3211 lm!1707) hash!377))))

(assert (=> d!1324901 (= (contains!11622 lm!1707 hash!377) lt!1603223)))

(declare-fun b!4396849 () Bool)

(declare-fun lt!1603221 () Unit!78396)

(assert (=> b!4396849 (= e!2737648 lt!1603221)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!493 (List!49370 (_ BitVec 64)) Unit!78396)

(assert (=> b!4396849 (= lt!1603221 (lemmaContainsKeyImpliesGetValueByKeyDefined!493 (toList!3211 lm!1707) hash!377))))

(declare-fun isDefined!7890 (Option!10596) Bool)

(assert (=> b!4396849 (isDefined!7890 (getValueByKey!582 (toList!3211 lm!1707) hash!377))))

(declare-fun b!4396850 () Bool)

(declare-fun Unit!78406 () Unit!78396)

(assert (=> b!4396850 (= e!2737648 Unit!78406)))

(declare-fun b!4396851 () Bool)

(assert (=> b!4396851 (= e!2737647 (isDefined!7890 (getValueByKey!582 (toList!3211 lm!1707) hash!377)))))

(assert (= (and d!1324901 c!748491) b!4396849))

(assert (= (and d!1324901 (not c!748491)) b!4396850))

(assert (= (and d!1324901 (not res!1812973)) b!4396851))

(declare-fun m!5057683 () Bool)

(assert (=> d!1324901 m!5057683))

(declare-fun m!5057685 () Bool)

(assert (=> b!4396849 m!5057685))

(assert (=> b!4396849 m!5057507))

(assert (=> b!4396849 m!5057507))

(declare-fun m!5057687 () Bool)

(assert (=> b!4396849 m!5057687))

(assert (=> b!4396851 m!5057507))

(assert (=> b!4396851 m!5057507))

(assert (=> b!4396851 m!5057687))

(assert (=> b!4396658 d!1324901))

(assert (=> b!4396656 d!1324857))

(declare-fun d!1324903 () Bool)

(declare-fun e!2737654 () Bool)

(assert (=> d!1324903 e!2737654))

(declare-fun res!1812981 () Bool)

(assert (=> d!1324903 (=> (not res!1812981) (not e!2737654))))

(declare-fun lt!1603236 () ListLongMap!1861)

(assert (=> d!1324903 (= res!1812981 (contains!11622 lt!1603236 (_1!27708 (tuple2!48829 hash!377 newBucket!200))))))

(declare-fun lt!1603233 () List!49370)

(assert (=> d!1324903 (= lt!1603236 (ListLongMap!1862 lt!1603233))))

(declare-fun lt!1603235 () Unit!78396)

(declare-fun lt!1603234 () Unit!78396)

(assert (=> d!1324903 (= lt!1603235 lt!1603234)))

(assert (=> d!1324903 (= (getValueByKey!582 lt!1603233 (_1!27708 (tuple2!48829 hash!377 newBucket!200))) (Some!10595 (_2!27708 (tuple2!48829 hash!377 newBucket!200))))))

(declare-fun lemmaContainsTupThenGetReturnValue!337 (List!49370 (_ BitVec 64) List!49369) Unit!78396)

(assert (=> d!1324903 (= lt!1603234 (lemmaContainsTupThenGetReturnValue!337 lt!1603233 (_1!27708 (tuple2!48829 hash!377 newBucket!200)) (_2!27708 (tuple2!48829 hash!377 newBucket!200))))))

(declare-fun insertStrictlySorted!196 (List!49370 (_ BitVec 64) List!49369) List!49370)

(assert (=> d!1324903 (= lt!1603233 (insertStrictlySorted!196 (toList!3211 lm!1707) (_1!27708 (tuple2!48829 hash!377 newBucket!200)) (_2!27708 (tuple2!48829 hash!377 newBucket!200))))))

(assert (=> d!1324903 (= (+!849 lm!1707 (tuple2!48829 hash!377 newBucket!200)) lt!1603236)))

(declare-fun b!4396859 () Bool)

(declare-fun res!1812982 () Bool)

(assert (=> b!4396859 (=> (not res!1812982) (not e!2737654))))

(assert (=> b!4396859 (= res!1812982 (= (getValueByKey!582 (toList!3211 lt!1603236) (_1!27708 (tuple2!48829 hash!377 newBucket!200))) (Some!10595 (_2!27708 (tuple2!48829 hash!377 newBucket!200)))))))

(declare-fun b!4396860 () Bool)

(assert (=> b!4396860 (= e!2737654 (contains!11623 (toList!3211 lt!1603236) (tuple2!48829 hash!377 newBucket!200)))))

(assert (= (and d!1324903 res!1812981) b!4396859))

(assert (= (and b!4396859 res!1812982) b!4396860))

(declare-fun m!5057699 () Bool)

(assert (=> d!1324903 m!5057699))

(declare-fun m!5057701 () Bool)

(assert (=> d!1324903 m!5057701))

(declare-fun m!5057703 () Bool)

(assert (=> d!1324903 m!5057703))

(declare-fun m!5057705 () Bool)

(assert (=> d!1324903 m!5057705))

(declare-fun m!5057707 () Bool)

(assert (=> b!4396859 m!5057707))

(declare-fun m!5057709 () Bool)

(assert (=> b!4396860 m!5057709))

(assert (=> b!4396656 d!1324903))

(declare-fun d!1324909 () Bool)

(assert (=> d!1324909 (forall!9337 (toList!3211 (+!849 lm!1707 (tuple2!48829 hash!377 newBucket!200))) lambda!148058)))

(declare-fun lt!1603239 () Unit!78396)

(declare-fun choose!27509 (ListLongMap!1861 Int (_ BitVec 64) List!49369) Unit!78396)

(assert (=> d!1324909 (= lt!1603239 (choose!27509 lm!1707 lambda!148058 hash!377 newBucket!200))))

(declare-fun e!2737657 () Bool)

(assert (=> d!1324909 e!2737657))

(declare-fun res!1812985 () Bool)

(assert (=> d!1324909 (=> (not res!1812985) (not e!2737657))))

(assert (=> d!1324909 (= res!1812985 (forall!9337 (toList!3211 lm!1707) lambda!148058))))

(assert (=> d!1324909 (= (addValidProp!260 lm!1707 lambda!148058 hash!377 newBucket!200) lt!1603239)))

(declare-fun b!4396864 () Bool)

(assert (=> b!4396864 (= e!2737657 (dynLambda!20748 lambda!148058 (tuple2!48829 hash!377 newBucket!200)))))

(assert (= (and d!1324909 res!1812985) b!4396864))

(declare-fun b_lambda!139255 () Bool)

(assert (=> (not b_lambda!139255) (not b!4396864)))

(assert (=> d!1324909 m!5057417))

(declare-fun m!5057711 () Bool)

(assert (=> d!1324909 m!5057711))

(declare-fun m!5057713 () Bool)

(assert (=> d!1324909 m!5057713))

(assert (=> d!1324909 m!5057403))

(declare-fun m!5057715 () Bool)

(assert (=> b!4396864 m!5057715))

(assert (=> b!4396656 d!1324909))

(assert (=> b!4396656 d!1324849))

(declare-fun e!2737662 () Bool)

(declare-fun tp!1331647 () Bool)

(declare-fun b!4396873 () Bool)

(assert (=> b!4396873 (= e!2737662 (and tp_is_empty!25693 tp_is_empty!25695 tp!1331647))))

(assert (=> b!4396650 (= tp!1331638 e!2737662)))

(assert (= (and b!4396650 (is-Cons!49245 (t!356303 newBucket!200))) b!4396873))

(declare-fun b!4396880 () Bool)

(declare-fun e!2737667 () Bool)

(declare-fun tp!1331652 () Bool)

(declare-fun tp!1331653 () Bool)

(assert (=> b!4396880 (= e!2737667 (and tp!1331652 tp!1331653))))

(assert (=> b!4396652 (= tp!1331637 e!2737667)))

(assert (= (and b!4396652 (is-Cons!49246 (toList!3211 lm!1707))) b!4396880))

(declare-fun b_lambda!139257 () Bool)

(assert (= b_lambda!139249 (or start!427022 b_lambda!139257)))

(declare-fun bs!726873 () Bool)

(declare-fun d!1324911 () Bool)

(assert (= bs!726873 (and d!1324911 start!427022)))

(assert (=> bs!726873 (= (dynLambda!20748 lambda!148058 (h!54863 (toList!3211 lt!1603103))) (noDuplicateKeys!614 (_2!27708 (h!54863 (toList!3211 lt!1603103)))))))

(declare-fun m!5057717 () Bool)

(assert (=> bs!726873 m!5057717))

(assert (=> b!4396830 d!1324911))

(declare-fun b_lambda!139259 () Bool)

(assert (= b_lambda!139243 (or start!427022 b_lambda!139259)))

(declare-fun bs!726874 () Bool)

(declare-fun d!1324913 () Bool)

(assert (= bs!726874 (and d!1324913 start!427022)))

(assert (=> bs!726874 (= (dynLambda!20748 lambda!148058 (h!54863 (toList!3211 lm!1707))) (noDuplicateKeys!614 (_2!27708 (h!54863 (toList!3211 lm!1707)))))))

(assert (=> bs!726874 m!5057637))

(assert (=> b!4396741 d!1324913))

(declare-fun b_lambda!139261 () Bool)

(assert (= b_lambda!139245 (or start!427022 b_lambda!139261)))

(declare-fun bs!726875 () Bool)

(declare-fun d!1324915 () Bool)

(assert (= bs!726875 (and d!1324915 start!427022)))

(assert (=> bs!726875 (= (dynLambda!20748 lambda!148058 (h!54863 (toList!3211 lt!1603096))) (noDuplicateKeys!614 (_2!27708 (h!54863 (toList!3211 lt!1603096)))))))

(declare-fun m!5057719 () Bool)

(assert (=> bs!726875 m!5057719))

(assert (=> b!4396751 d!1324915))

(declare-fun b_lambda!139263 () Bool)

(assert (= b_lambda!139255 (or start!427022 b_lambda!139263)))

(declare-fun bs!726876 () Bool)

(declare-fun d!1324917 () Bool)

(assert (= bs!726876 (and d!1324917 start!427022)))

(assert (=> bs!726876 (= (dynLambda!20748 lambda!148058 (tuple2!48829 hash!377 newBucket!200)) (noDuplicateKeys!614 (_2!27708 (tuple2!48829 hash!377 newBucket!200))))))

(declare-fun m!5057721 () Bool)

(assert (=> bs!726876 m!5057721))

(assert (=> b!4396864 d!1324917))

(declare-fun b_lambda!139265 () Bool)

(assert (= b_lambda!139241 (or start!427022 b_lambda!139265)))

(declare-fun bs!726877 () Bool)

(declare-fun d!1324919 () Bool)

(assert (= bs!726877 (and d!1324919 start!427022)))

(assert (=> bs!726877 (= (dynLambda!20748 lambda!148058 lt!1603104) (noDuplicateKeys!614 (_2!27708 lt!1603104)))))

(declare-fun m!5057723 () Bool)

(assert (=> bs!726877 m!5057723))

(assert (=> d!1324837 d!1324919))

(push 1)

(assert (not b!4396784))

(assert (not d!1324859))

(assert (not b_lambda!139257))

(assert (not b!4396789))

(assert (not d!1324901))

(assert (not bm!306026))

(assert (not b!4396812))

(assert (not d!1324909))

(assert (not b!4396859))

(assert (not b_lambda!139261))

(assert (not b!4396718))

(assert (not bm!306025))

(assert (not b!4396860))

(assert (not b!4396821))

(assert (not d!1324839))

(assert (not d!1324889))

(assert (not b!4396783))

(assert (not d!1324903))

(assert (not d!1324897))

(assert (not d!1324855))

(assert (not b_lambda!139259))

(assert (not d!1324875))

(assert (not b!4396831))

(assert tp_is_empty!25695)

(assert (not b!4396811))

(assert (not b!4396813))

(assert (not b!4396742))

(assert (not d!1324877))

(assert (not bs!726875))

(assert (not b!4396804))

(assert (not bs!726874))

(assert (not b!4396809))

(assert (not b!4396829))

(assert (not d!1324891))

(assert (not b!4396849))

(assert (not b!4396703))

(assert (not bs!726877))

(assert (not d!1324853))

(assert (not b_lambda!139265))

(assert (not bs!726876))

(assert (not d!1324881))

(assert (not d!1324841))

(assert (not b!4396714))

(assert (not b!4396815))

(assert (not b!4396836))

(assert (not d!1324887))

(assert (not b!4396806))

(assert (not b!4396880))

(assert (not bs!726873))

(assert (not b!4396729))

(assert (not b!4396851))

(assert (not d!1324879))

(assert (not b!4396832))

(assert tp_is_empty!25693)

(assert (not b!4396730))

(assert (not d!1324837))

(assert (not b!4396808))

(assert (not d!1324899))

(assert (not b_lambda!139263))

(assert (not b!4396807))

(assert (not d!1324895))

(assert (not b!4396818))

(assert (not b!4396786))

(assert (not b!4396790))

(assert (not b!4396816))

(assert (not bm!306027))

(assert (not b!4396752))

(assert (not d!1324835))

(assert (not d!1324869))

(assert (not b!4396788))

(assert (not d!1324843))

(assert (not b!4396822))

(assert (not b!4396873))

(assert (not b!4396785))

(assert (not b!4396736))

(assert (not b!4396820))

(assert (not b!4396817))

(assert (not b!4396724))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

