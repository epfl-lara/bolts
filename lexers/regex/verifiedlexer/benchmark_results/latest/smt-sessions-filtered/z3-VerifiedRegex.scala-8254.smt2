; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!428616 () Bool)

(assert start!428616)

(declare-fun b!4404777 () Bool)

(declare-fun e!2742762 () Bool)

(declare-fun e!2742768 () Bool)

(assert (=> b!4404777 (= e!2742762 e!2742768)))

(declare-fun res!1817363 () Bool)

(assert (=> b!4404777 (=> res!1817363 e!2742768)))

(declare-datatypes ((V!10921 0))(
  ( (V!10922 (val!16811 Int)) )
))
(declare-datatypes ((K!10675 0))(
  ( (K!10676 (val!16812 Int)) )
))
(declare-datatypes ((tuple2!48942 0))(
  ( (tuple2!48943 (_1!27765 K!10675) (_2!27765 V!10921)) )
))
(declare-datatypes ((List!49444 0))(
  ( (Nil!49320) (Cons!49320 (h!54955 tuple2!48942) (t!356378 List!49444)) )
))
(declare-datatypes ((tuple2!48944 0))(
  ( (tuple2!48945 (_1!27766 (_ BitVec 64)) (_2!27766 List!49444)) )
))
(declare-datatypes ((List!49445 0))(
  ( (Nil!49321) (Cons!49321 (h!54956 tuple2!48944) (t!356379 List!49445)) )
))
(declare-datatypes ((ListLongMap!1919 0))(
  ( (ListLongMap!1920 (toList!3269 List!49445)) )
))
(declare-fun lm!1707 () ListLongMap!1919)

(declare-fun noDuplicateKeys!643 (List!49444) Bool)

(assert (=> b!4404777 (= res!1817363 (not (noDuplicateKeys!643 (_2!27766 (h!54956 (toList!3269 lm!1707))))))))

(declare-datatypes ((ListMap!2513 0))(
  ( (ListMap!2514 (toList!3270 List!49444)) )
))
(declare-fun lt!1609317 () ListMap!2513)

(declare-fun lt!1609315 () tuple2!48942)

(declare-fun lt!1609318 () ListMap!2513)

(declare-fun eq!349 (ListMap!2513 ListMap!2513) Bool)

(declare-fun +!901 (ListMap!2513 tuple2!48942) ListMap!2513)

(assert (=> b!4404777 (eq!349 (+!901 lt!1609317 lt!1609315) lt!1609318)))

(declare-fun lt!1609301 () ListMap!2513)

(declare-fun newValue!99 () V!10921)

(declare-datatypes ((Unit!79313 0))(
  ( (Unit!79314) )
))
(declare-fun lt!1609304 () Unit!79313)

(declare-fun key!3918 () K!10675)

(declare-fun lemmaAddToEqMapsPreservesEq!20 (ListMap!2513 ListMap!2513 K!10675 V!10921) Unit!79313)

(assert (=> b!4404777 (= lt!1609304 (lemmaAddToEqMapsPreservesEq!20 lt!1609317 lt!1609301 key!3918 newValue!99))))

(declare-fun b!4404778 () Bool)

(declare-fun res!1817366 () Bool)

(declare-fun e!2742769 () Bool)

(assert (=> b!4404778 (=> (not res!1817366) (not e!2742769))))

(declare-datatypes ((Hashable!5035 0))(
  ( (HashableExt!5034 (__x!30738 Int)) )
))
(declare-fun hashF!1247 () Hashable!5035)

(declare-fun allKeysSameHashInMap!747 (ListLongMap!1919 Hashable!5035) Bool)

(assert (=> b!4404778 (= res!1817366 (allKeysSameHashInMap!747 lm!1707 hashF!1247))))

(declare-fun b!4404780 () Bool)

(declare-fun e!2742765 () Bool)

(declare-fun containsKey!969 (List!49444 K!10675) Bool)

(assert (=> b!4404780 (= e!2742765 (not (containsKey!969 (_2!27766 (h!54956 (toList!3269 lm!1707))) key!3918)))))

(declare-fun tp_is_empty!25809 () Bool)

(declare-fun tp_is_empty!25811 () Bool)

(declare-fun e!2742767 () Bool)

(declare-fun b!4404781 () Bool)

(declare-fun tp!1332022 () Bool)

(assert (=> b!4404781 (= e!2742767 (and tp_is_empty!25809 tp_is_empty!25811 tp!1332022))))

(declare-fun b!4404782 () Bool)

(declare-fun res!1817360 () Bool)

(assert (=> b!4404782 (=> (not res!1817360) (not e!2742769))))

(declare-fun hash!377 () (_ BitVec 64))

(declare-fun hash!1921 (Hashable!5035 K!10675) (_ BitVec 64))

(assert (=> b!4404782 (= res!1817360 (= (hash!1921 hashF!1247 key!3918) hash!377))))

(declare-fun b!4404783 () Bool)

(declare-fun e!2742772 () Bool)

(assert (=> b!4404783 (= e!2742772 e!2742762)))

(declare-fun res!1817357 () Bool)

(assert (=> b!4404783 (=> res!1817357 e!2742762)))

(assert (=> b!4404783 (= res!1817357 (not (eq!349 lt!1609301 lt!1609317)))))

(declare-fun lt!1609303 () ListMap!2513)

(assert (=> b!4404783 (eq!349 lt!1609303 lt!1609318)))

(assert (=> b!4404783 (= lt!1609318 (+!901 lt!1609301 lt!1609315))))

(declare-fun lt!1609320 () ListMap!2513)

(declare-fun addToMapMapFromBucket!309 (List!49444 ListMap!2513) ListMap!2513)

(assert (=> b!4404783 (= lt!1609303 (addToMapMapFromBucket!309 (_2!27766 (h!54956 (toList!3269 lm!1707))) lt!1609320))))

(declare-fun lt!1609299 () ListMap!2513)

(declare-fun lt!1609305 () Unit!79313)

(declare-fun lemmaAddToMapFromBucketPlusKeyValueIsCommutative!148 (ListMap!2513 K!10675 V!10921 List!49444) Unit!79313)

(assert (=> b!4404783 (= lt!1609305 (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!148 lt!1609299 key!3918 newValue!99 (_2!27766 (h!54956 (toList!3269 lm!1707)))))))

(assert (=> b!4404783 (= lt!1609317 lt!1609301)))

(assert (=> b!4404783 (= lt!1609301 (addToMapMapFromBucket!309 (_2!27766 (h!54956 (toList!3269 lm!1707))) lt!1609299))))

(declare-fun e!2742770 () Bool)

(assert (=> b!4404783 e!2742770))

(declare-fun res!1817356 () Bool)

(assert (=> b!4404783 (=> (not res!1817356) (not e!2742770))))

(declare-fun lt!1609307 () ListMap!2513)

(assert (=> b!4404783 (= res!1817356 (eq!349 lt!1609307 lt!1609320))))

(assert (=> b!4404783 (= lt!1609320 (+!901 lt!1609299 lt!1609315))))

(declare-fun lt!1609316 () ListLongMap!1919)

(declare-fun lt!1609300 () tuple2!48944)

(declare-fun extractMap!702 (List!49445) ListMap!2513)

(declare-fun +!902 (ListLongMap!1919 tuple2!48944) ListLongMap!1919)

(assert (=> b!4404783 (= lt!1609307 (extractMap!702 (toList!3269 (+!902 lt!1609316 lt!1609300))))))

(declare-fun newBucket!200 () List!49444)

(declare-fun lt!1609312 () Unit!79313)

(declare-fun lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!147 (ListLongMap!1919 (_ BitVec 64) List!49444 K!10675 V!10921 Hashable!5035) Unit!79313)

(assert (=> b!4404783 (= lt!1609312 (lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!147 lt!1609316 hash!377 newBucket!200 key!3918 newValue!99 hashF!1247))))

(declare-fun contains!11733 (ListMap!2513 K!10675) Bool)

(assert (=> b!4404783 (contains!11733 lt!1609299 key!3918)))

(assert (=> b!4404783 (= lt!1609299 (extractMap!702 (toList!3269 lt!1609316)))))

(declare-fun tail!7139 (ListLongMap!1919) ListLongMap!1919)

(assert (=> b!4404783 (= lt!1609316 (tail!7139 lm!1707))))

(declare-fun lt!1609313 () ListMap!2513)

(assert (=> b!4404783 (contains!11733 lt!1609313 key!3918)))

(declare-fun lt!1609306 () Unit!79313)

(declare-fun lemmaAddToMapContainsAndNotInListThenInAcc!102 (List!49444 K!10675 V!10921 ListMap!2513) Unit!79313)

(assert (=> b!4404783 (= lt!1609306 (lemmaAddToMapContainsAndNotInListThenInAcc!102 (_2!27766 (h!54956 (toList!3269 lm!1707))) key!3918 newValue!99 lt!1609313))))

(assert (=> b!4404783 (= lt!1609313 (extractMap!702 (t!356379 (toList!3269 lm!1707))))))

(assert (=> b!4404783 e!2742765))

(declare-fun res!1817367 () Bool)

(assert (=> b!4404783 (=> (not res!1817367) (not e!2742765))))

(declare-fun apply!11495 (ListLongMap!1919 (_ BitVec 64)) List!49444)

(assert (=> b!4404783 (= res!1817367 (not (containsKey!969 (apply!11495 lm!1707 (_1!27766 (h!54956 (toList!3269 lm!1707)))) key!3918)))))

(declare-fun lt!1609310 () Unit!79313)

(declare-fun lemmaNotSameHashThenCannotContainKey!114 (ListLongMap!1919 K!10675 (_ BitVec 64) Hashable!5035) Unit!79313)

(assert (=> b!4404783 (= lt!1609310 (lemmaNotSameHashThenCannotContainKey!114 lm!1707 key!3918 (_1!27766 (h!54956 (toList!3269 lm!1707))) hashF!1247))))

(declare-fun b!4404779 () Bool)

(declare-fun res!1817364 () Bool)

(assert (=> b!4404779 (=> (not res!1817364) (not e!2742769))))

(declare-fun allKeysSameHash!601 (List!49444 (_ BitVec 64) Hashable!5035) Bool)

(assert (=> b!4404779 (= res!1817364 (allKeysSameHash!601 newBucket!200 hash!377 hashF!1247))))

(declare-fun res!1817359 () Bool)

(assert (=> start!428616 (=> (not res!1817359) (not e!2742769))))

(declare-fun lambda!149763 () Int)

(declare-fun forall!9396 (List!49445 Int) Bool)

(assert (=> start!428616 (= res!1817359 (forall!9396 (toList!3269 lm!1707) lambda!149763))))

(assert (=> start!428616 e!2742769))

(assert (=> start!428616 e!2742767))

(assert (=> start!428616 true))

(declare-fun e!2742771 () Bool)

(declare-fun inv!64861 (ListLongMap!1919) Bool)

(assert (=> start!428616 (and (inv!64861 lm!1707) e!2742771)))

(assert (=> start!428616 tp_is_empty!25809))

(assert (=> start!428616 tp_is_empty!25811))

(declare-fun b!4404784 () Bool)

(declare-fun e!2742763 () Bool)

(assert (=> b!4404784 (= e!2742769 e!2742763)))

(declare-fun res!1817362 () Bool)

(assert (=> b!4404784 (=> (not res!1817362) (not e!2742763))))

(assert (=> b!4404784 (= res!1817362 (contains!11733 lt!1609317 key!3918))))

(assert (=> b!4404784 (= lt!1609317 (extractMap!702 (toList!3269 lm!1707)))))

(declare-fun b!4404785 () Bool)

(declare-fun e!2742766 () Bool)

(assert (=> b!4404785 (= e!2742763 (not e!2742766))))

(declare-fun res!1817369 () Bool)

(assert (=> b!4404785 (=> res!1817369 e!2742766)))

(declare-fun lt!1609302 () List!49444)

(declare-fun removePairForKey!611 (List!49444 K!10675) List!49444)

(assert (=> b!4404785 (= res!1817369 (not (= newBucket!200 (Cons!49320 lt!1609315 (removePairForKey!611 lt!1609302 key!3918)))))))

(assert (=> b!4404785 (= lt!1609315 (tuple2!48943 key!3918 newValue!99))))

(declare-fun lt!1609309 () tuple2!48944)

(declare-fun lt!1609319 () Unit!79313)

(declare-fun forallContained!2031 (List!49445 Int tuple2!48944) Unit!79313)

(assert (=> b!4404785 (= lt!1609319 (forallContained!2031 (toList!3269 lm!1707) lambda!149763 lt!1609309))))

(declare-fun contains!11734 (List!49445 tuple2!48944) Bool)

(assert (=> b!4404785 (contains!11734 (toList!3269 lm!1707) lt!1609309)))

(assert (=> b!4404785 (= lt!1609309 (tuple2!48945 hash!377 lt!1609302))))

(declare-fun lt!1609314 () Unit!79313)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!488 (List!49445 (_ BitVec 64) List!49444) Unit!79313)

(assert (=> b!4404785 (= lt!1609314 (lemmaGetValueByKeyImpliesContainsTuple!488 (toList!3269 lm!1707) hash!377 lt!1609302))))

(assert (=> b!4404785 (= lt!1609302 (apply!11495 lm!1707 hash!377))))

(declare-fun b!4404786 () Bool)

(declare-fun head!9128 (ListLongMap!1919) tuple2!48944)

(assert (=> b!4404786 (= e!2742770 (not (= (head!9128 lm!1707) lt!1609300)))))

(declare-fun b!4404787 () Bool)

(declare-fun res!1817365 () Bool)

(assert (=> b!4404787 (=> res!1817365 e!2742766)))

(assert (=> b!4404787 (= res!1817365 (not (noDuplicateKeys!643 newBucket!200)))))

(declare-fun b!4404788 () Bool)

(assert (=> b!4404788 (= e!2742766 e!2742772)))

(declare-fun res!1817358 () Bool)

(assert (=> b!4404788 (=> res!1817358 e!2742772)))

(get-info :version)

(assert (=> b!4404788 (= res!1817358 (or (and ((_ is Cons!49321) (toList!3269 lm!1707)) (= (_1!27766 (h!54956 (toList!3269 lm!1707))) hash!377)) (not ((_ is Cons!49321) (toList!3269 lm!1707))) (= (_1!27766 (h!54956 (toList!3269 lm!1707))) hash!377)))))

(declare-fun e!2742764 () Bool)

(assert (=> b!4404788 e!2742764))

(declare-fun res!1817361 () Bool)

(assert (=> b!4404788 (=> (not res!1817361) (not e!2742764))))

(declare-fun lt!1609308 () ListLongMap!1919)

(assert (=> b!4404788 (= res!1817361 (forall!9396 (toList!3269 lt!1609308) lambda!149763))))

(assert (=> b!4404788 (= lt!1609308 (+!902 lm!1707 lt!1609300))))

(assert (=> b!4404788 (= lt!1609300 (tuple2!48945 hash!377 newBucket!200))))

(declare-fun lt!1609311 () Unit!79313)

(declare-fun addValidProp!289 (ListLongMap!1919 Int (_ BitVec 64) List!49444) Unit!79313)

(assert (=> b!4404788 (= lt!1609311 (addValidProp!289 lm!1707 lambda!149763 hash!377 newBucket!200))))

(assert (=> b!4404788 (forall!9396 (toList!3269 lm!1707) lambda!149763)))

(declare-fun b!4404789 () Bool)

(assert (=> b!4404789 (= e!2742764 (forall!9396 (toList!3269 lt!1609308) lambda!149763))))

(declare-fun b!4404790 () Bool)

(assert (=> b!4404790 (= e!2742768 (eq!349 lt!1609320 lt!1609307))))

(declare-fun b!4404791 () Bool)

(declare-fun tp!1332021 () Bool)

(assert (=> b!4404791 (= e!2742771 tp!1332021)))

(declare-fun b!4404792 () Bool)

(declare-fun res!1817368 () Bool)

(assert (=> b!4404792 (=> (not res!1817368) (not e!2742763))))

(declare-fun contains!11735 (ListLongMap!1919 (_ BitVec 64)) Bool)

(assert (=> b!4404792 (= res!1817368 (contains!11735 lm!1707 hash!377))))

(assert (= (and start!428616 res!1817359) b!4404778))

(assert (= (and b!4404778 res!1817366) b!4404782))

(assert (= (and b!4404782 res!1817360) b!4404779))

(assert (= (and b!4404779 res!1817364) b!4404784))

(assert (= (and b!4404784 res!1817362) b!4404792))

(assert (= (and b!4404792 res!1817368) b!4404785))

(assert (= (and b!4404785 (not res!1817369)) b!4404787))

(assert (= (and b!4404787 (not res!1817365)) b!4404788))

(assert (= (and b!4404788 res!1817361) b!4404789))

(assert (= (and b!4404788 (not res!1817358)) b!4404783))

(assert (= (and b!4404783 res!1817367) b!4404780))

(assert (= (and b!4404783 res!1817356) b!4404786))

(assert (= (and b!4404783 (not res!1817357)) b!4404777))

(assert (= (and b!4404777 (not res!1817363)) b!4404790))

(assert (= (and start!428616 ((_ is Cons!49320) newBucket!200)) b!4404781))

(assert (= start!428616 b!4404791))

(declare-fun m!5070509 () Bool)

(assert (=> b!4404792 m!5070509))

(declare-fun m!5070511 () Bool)

(assert (=> b!4404790 m!5070511))

(declare-fun m!5070513 () Bool)

(assert (=> b!4404778 m!5070513))

(declare-fun m!5070515 () Bool)

(assert (=> b!4404779 m!5070515))

(declare-fun m!5070517 () Bool)

(assert (=> b!4404783 m!5070517))

(declare-fun m!5070519 () Bool)

(assert (=> b!4404783 m!5070519))

(declare-fun m!5070521 () Bool)

(assert (=> b!4404783 m!5070521))

(declare-fun m!5070523 () Bool)

(assert (=> b!4404783 m!5070523))

(declare-fun m!5070525 () Bool)

(assert (=> b!4404783 m!5070525))

(declare-fun m!5070527 () Bool)

(assert (=> b!4404783 m!5070527))

(declare-fun m!5070529 () Bool)

(assert (=> b!4404783 m!5070529))

(declare-fun m!5070531 () Bool)

(assert (=> b!4404783 m!5070531))

(declare-fun m!5070533 () Bool)

(assert (=> b!4404783 m!5070533))

(declare-fun m!5070535 () Bool)

(assert (=> b!4404783 m!5070535))

(declare-fun m!5070537 () Bool)

(assert (=> b!4404783 m!5070537))

(declare-fun m!5070539 () Bool)

(assert (=> b!4404783 m!5070539))

(declare-fun m!5070541 () Bool)

(assert (=> b!4404783 m!5070541))

(declare-fun m!5070543 () Bool)

(assert (=> b!4404783 m!5070543))

(assert (=> b!4404783 m!5070543))

(declare-fun m!5070545 () Bool)

(assert (=> b!4404783 m!5070545))

(declare-fun m!5070547 () Bool)

(assert (=> b!4404783 m!5070547))

(declare-fun m!5070549 () Bool)

(assert (=> b!4404783 m!5070549))

(declare-fun m!5070551 () Bool)

(assert (=> b!4404783 m!5070551))

(declare-fun m!5070553 () Bool)

(assert (=> b!4404783 m!5070553))

(declare-fun m!5070555 () Bool)

(assert (=> b!4404783 m!5070555))

(declare-fun m!5070557 () Bool)

(assert (=> b!4404787 m!5070557))

(declare-fun m!5070559 () Bool)

(assert (=> b!4404784 m!5070559))

(declare-fun m!5070561 () Bool)

(assert (=> b!4404784 m!5070561))

(declare-fun m!5070563 () Bool)

(assert (=> start!428616 m!5070563))

(declare-fun m!5070565 () Bool)

(assert (=> start!428616 m!5070565))

(declare-fun m!5070567 () Bool)

(assert (=> b!4404789 m!5070567))

(declare-fun m!5070569 () Bool)

(assert (=> b!4404780 m!5070569))

(declare-fun m!5070571 () Bool)

(assert (=> b!4404785 m!5070571))

(declare-fun m!5070573 () Bool)

(assert (=> b!4404785 m!5070573))

(declare-fun m!5070575 () Bool)

(assert (=> b!4404785 m!5070575))

(declare-fun m!5070577 () Bool)

(assert (=> b!4404785 m!5070577))

(declare-fun m!5070579 () Bool)

(assert (=> b!4404785 m!5070579))

(assert (=> b!4404788 m!5070567))

(declare-fun m!5070581 () Bool)

(assert (=> b!4404788 m!5070581))

(declare-fun m!5070583 () Bool)

(assert (=> b!4404788 m!5070583))

(assert (=> b!4404788 m!5070563))

(declare-fun m!5070585 () Bool)

(assert (=> b!4404777 m!5070585))

(declare-fun m!5070587 () Bool)

(assert (=> b!4404777 m!5070587))

(assert (=> b!4404777 m!5070587))

(declare-fun m!5070589 () Bool)

(assert (=> b!4404777 m!5070589))

(declare-fun m!5070591 () Bool)

(assert (=> b!4404777 m!5070591))

(declare-fun m!5070593 () Bool)

(assert (=> b!4404782 m!5070593))

(declare-fun m!5070595 () Bool)

(assert (=> b!4404786 m!5070595))

(check-sat (not b!4404783) (not b!4404779) (not b!4404790) (not b!4404780) (not b!4404785) (not b!4404782) tp_is_empty!25811 (not b!4404777) (not b!4404791) (not start!428616) (not b!4404788) (not b!4404789) tp_is_empty!25809 (not b!4404786) (not b!4404792) (not b!4404781) (not b!4404787) (not b!4404784) (not b!4404778))
(check-sat)
(get-model)

(declare-fun d!1328969 () Bool)

(declare-fun res!1817389 () Bool)

(declare-fun e!2742801 () Bool)

(assert (=> d!1328969 (=> res!1817389 e!2742801)))

(assert (=> d!1328969 (= res!1817389 ((_ is Nil!49321) (toList!3269 lt!1609308)))))

(assert (=> d!1328969 (= (forall!9396 (toList!3269 lt!1609308) lambda!149763) e!2742801)))

(declare-fun b!4404830 () Bool)

(declare-fun e!2742802 () Bool)

(assert (=> b!4404830 (= e!2742801 e!2742802)))

(declare-fun res!1817390 () Bool)

(assert (=> b!4404830 (=> (not res!1817390) (not e!2742802))))

(declare-fun dynLambda!20778 (Int tuple2!48944) Bool)

(assert (=> b!4404830 (= res!1817390 (dynLambda!20778 lambda!149763 (h!54956 (toList!3269 lt!1609308))))))

(declare-fun b!4404831 () Bool)

(assert (=> b!4404831 (= e!2742802 (forall!9396 (t!356379 (toList!3269 lt!1609308)) lambda!149763))))

(assert (= (and d!1328969 (not res!1817389)) b!4404830))

(assert (= (and b!4404830 res!1817390) b!4404831))

(declare-fun b_lambda!140247 () Bool)

(assert (=> (not b_lambda!140247) (not b!4404830)))

(declare-fun m!5070619 () Bool)

(assert (=> b!4404830 m!5070619))

(declare-fun m!5070621 () Bool)

(assert (=> b!4404831 m!5070621))

(assert (=> b!4404789 d!1328969))

(declare-fun bs!730266 () Bool)

(declare-fun d!1328971 () Bool)

(assert (= bs!730266 (and d!1328971 start!428616)))

(declare-fun lambda!149769 () Int)

(assert (=> bs!730266 (not (= lambda!149769 lambda!149763))))

(assert (=> d!1328971 true))

(assert (=> d!1328971 (= (allKeysSameHashInMap!747 lm!1707 hashF!1247) (forall!9396 (toList!3269 lm!1707) lambda!149769))))

(declare-fun bs!730267 () Bool)

(assert (= bs!730267 d!1328971))

(declare-fun m!5070629 () Bool)

(assert (=> bs!730267 m!5070629))

(assert (=> b!4404778 d!1328971))

(assert (=> b!4404788 d!1328969))

(declare-fun d!1328977 () Bool)

(declare-fun e!2742830 () Bool)

(assert (=> d!1328977 e!2742830))

(declare-fun res!1817420 () Bool)

(assert (=> d!1328977 (=> (not res!1817420) (not e!2742830))))

(declare-fun lt!1609373 () ListLongMap!1919)

(assert (=> d!1328977 (= res!1817420 (contains!11735 lt!1609373 (_1!27766 lt!1609300)))))

(declare-fun lt!1609371 () List!49445)

(assert (=> d!1328977 (= lt!1609373 (ListLongMap!1920 lt!1609371))))

(declare-fun lt!1609372 () Unit!79313)

(declare-fun lt!1609374 () Unit!79313)

(assert (=> d!1328977 (= lt!1609372 lt!1609374)))

(declare-datatypes ((Option!10632 0))(
  ( (None!10631) (Some!10631 (v!43769 List!49444)) )
))
(declare-fun getValueByKey!618 (List!49445 (_ BitVec 64)) Option!10632)

(assert (=> d!1328977 (= (getValueByKey!618 lt!1609371 (_1!27766 lt!1609300)) (Some!10631 (_2!27766 lt!1609300)))))

(declare-fun lemmaContainsTupThenGetReturnValue!363 (List!49445 (_ BitVec 64) List!49444) Unit!79313)

(assert (=> d!1328977 (= lt!1609374 (lemmaContainsTupThenGetReturnValue!363 lt!1609371 (_1!27766 lt!1609300) (_2!27766 lt!1609300)))))

(declare-fun insertStrictlySorted!214 (List!49445 (_ BitVec 64) List!49444) List!49445)

(assert (=> d!1328977 (= lt!1609371 (insertStrictlySorted!214 (toList!3269 lm!1707) (_1!27766 lt!1609300) (_2!27766 lt!1609300)))))

(assert (=> d!1328977 (= (+!902 lm!1707 lt!1609300) lt!1609373)))

(declare-fun b!4404870 () Bool)

(declare-fun res!1817421 () Bool)

(assert (=> b!4404870 (=> (not res!1817421) (not e!2742830))))

(assert (=> b!4404870 (= res!1817421 (= (getValueByKey!618 (toList!3269 lt!1609373) (_1!27766 lt!1609300)) (Some!10631 (_2!27766 lt!1609300))))))

(declare-fun b!4404871 () Bool)

(assert (=> b!4404871 (= e!2742830 (contains!11734 (toList!3269 lt!1609373) lt!1609300))))

(assert (= (and d!1328977 res!1817420) b!4404870))

(assert (= (and b!4404870 res!1817421) b!4404871))

(declare-fun m!5070667 () Bool)

(assert (=> d!1328977 m!5070667))

(declare-fun m!5070669 () Bool)

(assert (=> d!1328977 m!5070669))

(declare-fun m!5070671 () Bool)

(assert (=> d!1328977 m!5070671))

(declare-fun m!5070673 () Bool)

(assert (=> d!1328977 m!5070673))

(declare-fun m!5070675 () Bool)

(assert (=> b!4404870 m!5070675))

(declare-fun m!5070677 () Bool)

(assert (=> b!4404871 m!5070677))

(assert (=> b!4404788 d!1328977))

(declare-fun d!1328991 () Bool)

(assert (=> d!1328991 (forall!9396 (toList!3269 (+!902 lm!1707 (tuple2!48945 hash!377 newBucket!200))) lambda!149763)))

(declare-fun lt!1609388 () Unit!79313)

(declare-fun choose!27686 (ListLongMap!1919 Int (_ BitVec 64) List!49444) Unit!79313)

(assert (=> d!1328991 (= lt!1609388 (choose!27686 lm!1707 lambda!149763 hash!377 newBucket!200))))

(declare-fun e!2742839 () Bool)

(assert (=> d!1328991 e!2742839))

(declare-fun res!1817427 () Bool)

(assert (=> d!1328991 (=> (not res!1817427) (not e!2742839))))

(assert (=> d!1328991 (= res!1817427 (forall!9396 (toList!3269 lm!1707) lambda!149763))))

(assert (=> d!1328991 (= (addValidProp!289 lm!1707 lambda!149763 hash!377 newBucket!200) lt!1609388)))

(declare-fun b!4404884 () Bool)

(assert (=> b!4404884 (= e!2742839 (dynLambda!20778 lambda!149763 (tuple2!48945 hash!377 newBucket!200)))))

(assert (= (and d!1328991 res!1817427) b!4404884))

(declare-fun b_lambda!140255 () Bool)

(assert (=> (not b_lambda!140255) (not b!4404884)))

(declare-fun m!5070713 () Bool)

(assert (=> d!1328991 m!5070713))

(declare-fun m!5070715 () Bool)

(assert (=> d!1328991 m!5070715))

(declare-fun m!5070717 () Bool)

(assert (=> d!1328991 m!5070717))

(assert (=> d!1328991 m!5070563))

(declare-fun m!5070719 () Bool)

(assert (=> b!4404884 m!5070719))

(assert (=> b!4404788 d!1328991))

(declare-fun d!1328999 () Bool)

(declare-fun res!1817428 () Bool)

(declare-fun e!2742840 () Bool)

(assert (=> d!1328999 (=> res!1817428 e!2742840)))

(assert (=> d!1328999 (= res!1817428 ((_ is Nil!49321) (toList!3269 lm!1707)))))

(assert (=> d!1328999 (= (forall!9396 (toList!3269 lm!1707) lambda!149763) e!2742840)))

(declare-fun b!4404885 () Bool)

(declare-fun e!2742841 () Bool)

(assert (=> b!4404885 (= e!2742840 e!2742841)))

(declare-fun res!1817429 () Bool)

(assert (=> b!4404885 (=> (not res!1817429) (not e!2742841))))

(assert (=> b!4404885 (= res!1817429 (dynLambda!20778 lambda!149763 (h!54956 (toList!3269 lm!1707))))))

(declare-fun b!4404886 () Bool)

(assert (=> b!4404886 (= e!2742841 (forall!9396 (t!356379 (toList!3269 lm!1707)) lambda!149763))))

(assert (= (and d!1328999 (not res!1817428)) b!4404885))

(assert (= (and b!4404885 res!1817429) b!4404886))

(declare-fun b_lambda!140257 () Bool)

(assert (=> (not b_lambda!140257) (not b!4404885)))

(declare-fun m!5070721 () Bool)

(assert (=> b!4404885 m!5070721))

(declare-fun m!5070723 () Bool)

(assert (=> b!4404886 m!5070723))

(assert (=> b!4404788 d!1328999))

(declare-fun d!1329001 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7892 (List!49444) (InoxSet tuple2!48942))

(assert (=> d!1329001 (= (eq!349 lt!1609320 lt!1609307) (= (content!7892 (toList!3270 lt!1609320)) (content!7892 (toList!3270 lt!1609307))))))

(declare-fun bs!730271 () Bool)

(assert (= bs!730271 d!1329001))

(declare-fun m!5070725 () Bool)

(assert (=> bs!730271 m!5070725))

(declare-fun m!5070727 () Bool)

(assert (=> bs!730271 m!5070727))

(assert (=> b!4404790 d!1329001))

(declare-fun d!1329003 () Bool)

(assert (=> d!1329003 true))

(assert (=> d!1329003 true))

(declare-fun lambda!149772 () Int)

(declare-fun forall!9398 (List!49444 Int) Bool)

(assert (=> d!1329003 (= (allKeysSameHash!601 newBucket!200 hash!377 hashF!1247) (forall!9398 newBucket!200 lambda!149772))))

(declare-fun bs!730272 () Bool)

(assert (= bs!730272 d!1329003))

(declare-fun m!5070729 () Bool)

(assert (=> bs!730272 m!5070729))

(assert (=> b!4404779 d!1329003))

(declare-fun d!1329005 () Bool)

(declare-fun head!9129 (List!49445) tuple2!48944)

(assert (=> d!1329005 (= (head!9128 lm!1707) (head!9129 (toList!3269 lm!1707)))))

(declare-fun bs!730273 () Bool)

(assert (= bs!730273 d!1329005))

(declare-fun m!5070731 () Bool)

(assert (=> bs!730273 m!5070731))

(assert (=> b!4404786 d!1329005))

(declare-fun d!1329007 () Bool)

(declare-fun res!1817434 () Bool)

(declare-fun e!2742846 () Bool)

(assert (=> d!1329007 (=> res!1817434 e!2742846)))

(assert (=> d!1329007 (= res!1817434 (not ((_ is Cons!49320) (_2!27766 (h!54956 (toList!3269 lm!1707))))))))

(assert (=> d!1329007 (= (noDuplicateKeys!643 (_2!27766 (h!54956 (toList!3269 lm!1707)))) e!2742846)))

(declare-fun b!4404895 () Bool)

(declare-fun e!2742847 () Bool)

(assert (=> b!4404895 (= e!2742846 e!2742847)))

(declare-fun res!1817435 () Bool)

(assert (=> b!4404895 (=> (not res!1817435) (not e!2742847))))

(assert (=> b!4404895 (= res!1817435 (not (containsKey!969 (t!356378 (_2!27766 (h!54956 (toList!3269 lm!1707)))) (_1!27765 (h!54955 (_2!27766 (h!54956 (toList!3269 lm!1707))))))))))

(declare-fun b!4404896 () Bool)

(assert (=> b!4404896 (= e!2742847 (noDuplicateKeys!643 (t!356378 (_2!27766 (h!54956 (toList!3269 lm!1707))))))))

(assert (= (and d!1329007 (not res!1817434)) b!4404895))

(assert (= (and b!4404895 res!1817435) b!4404896))

(declare-fun m!5070733 () Bool)

(assert (=> b!4404895 m!5070733))

(declare-fun m!5070735 () Bool)

(assert (=> b!4404896 m!5070735))

(assert (=> b!4404777 d!1329007))

(declare-fun d!1329009 () Bool)

(assert (=> d!1329009 (= (eq!349 (+!901 lt!1609317 lt!1609315) lt!1609318) (= (content!7892 (toList!3270 (+!901 lt!1609317 lt!1609315))) (content!7892 (toList!3270 lt!1609318))))))

(declare-fun bs!730274 () Bool)

(assert (= bs!730274 d!1329009))

(declare-fun m!5070737 () Bool)

(assert (=> bs!730274 m!5070737))

(declare-fun m!5070739 () Bool)

(assert (=> bs!730274 m!5070739))

(assert (=> b!4404777 d!1329009))

(declare-fun d!1329011 () Bool)

(declare-fun e!2742850 () Bool)

(assert (=> d!1329011 e!2742850))

(declare-fun res!1817441 () Bool)

(assert (=> d!1329011 (=> (not res!1817441) (not e!2742850))))

(declare-fun lt!1609397 () ListMap!2513)

(assert (=> d!1329011 (= res!1817441 (contains!11733 lt!1609397 (_1!27765 lt!1609315)))))

(declare-fun lt!1609400 () List!49444)

(assert (=> d!1329011 (= lt!1609397 (ListMap!2514 lt!1609400))))

(declare-fun lt!1609398 () Unit!79313)

(declare-fun lt!1609399 () Unit!79313)

(assert (=> d!1329011 (= lt!1609398 lt!1609399)))

(declare-datatypes ((Option!10633 0))(
  ( (None!10632) (Some!10632 (v!43770 V!10921)) )
))
(declare-fun getValueByKey!619 (List!49444 K!10675) Option!10633)

(assert (=> d!1329011 (= (getValueByKey!619 lt!1609400 (_1!27765 lt!1609315)) (Some!10632 (_2!27765 lt!1609315)))))

(declare-fun lemmaContainsTupThenGetReturnValue!364 (List!49444 K!10675 V!10921) Unit!79313)

(assert (=> d!1329011 (= lt!1609399 (lemmaContainsTupThenGetReturnValue!364 lt!1609400 (_1!27765 lt!1609315) (_2!27765 lt!1609315)))))

(declare-fun insertNoDuplicatedKeys!158 (List!49444 K!10675 V!10921) List!49444)

(assert (=> d!1329011 (= lt!1609400 (insertNoDuplicatedKeys!158 (toList!3270 lt!1609317) (_1!27765 lt!1609315) (_2!27765 lt!1609315)))))

(assert (=> d!1329011 (= (+!901 lt!1609317 lt!1609315) lt!1609397)))

(declare-fun b!4404901 () Bool)

(declare-fun res!1817440 () Bool)

(assert (=> b!4404901 (=> (not res!1817440) (not e!2742850))))

(assert (=> b!4404901 (= res!1817440 (= (getValueByKey!619 (toList!3270 lt!1609397) (_1!27765 lt!1609315)) (Some!10632 (_2!27765 lt!1609315))))))

(declare-fun b!4404902 () Bool)

(declare-fun contains!11737 (List!49444 tuple2!48942) Bool)

(assert (=> b!4404902 (= e!2742850 (contains!11737 (toList!3270 lt!1609397) lt!1609315))))

(assert (= (and d!1329011 res!1817441) b!4404901))

(assert (= (and b!4404901 res!1817440) b!4404902))

(declare-fun m!5070741 () Bool)

(assert (=> d!1329011 m!5070741))

(declare-fun m!5070743 () Bool)

(assert (=> d!1329011 m!5070743))

(declare-fun m!5070745 () Bool)

(assert (=> d!1329011 m!5070745))

(declare-fun m!5070747 () Bool)

(assert (=> d!1329011 m!5070747))

(declare-fun m!5070749 () Bool)

(assert (=> b!4404901 m!5070749))

(declare-fun m!5070751 () Bool)

(assert (=> b!4404902 m!5070751))

(assert (=> b!4404777 d!1329011))

(declare-fun d!1329013 () Bool)

(assert (=> d!1329013 (eq!349 (+!901 lt!1609317 (tuple2!48943 key!3918 newValue!99)) (+!901 lt!1609301 (tuple2!48943 key!3918 newValue!99)))))

(declare-fun lt!1609403 () Unit!79313)

(declare-fun choose!27688 (ListMap!2513 ListMap!2513 K!10675 V!10921) Unit!79313)

(assert (=> d!1329013 (= lt!1609403 (choose!27688 lt!1609317 lt!1609301 key!3918 newValue!99))))

(assert (=> d!1329013 (eq!349 lt!1609317 lt!1609301)))

(assert (=> d!1329013 (= (lemmaAddToEqMapsPreservesEq!20 lt!1609317 lt!1609301 key!3918 newValue!99) lt!1609403)))

(declare-fun bs!730275 () Bool)

(assert (= bs!730275 d!1329013))

(declare-fun m!5070753 () Bool)

(assert (=> bs!730275 m!5070753))

(declare-fun m!5070755 () Bool)

(assert (=> bs!730275 m!5070755))

(assert (=> bs!730275 m!5070755))

(declare-fun m!5070757 () Bool)

(assert (=> bs!730275 m!5070757))

(declare-fun m!5070759 () Bool)

(assert (=> bs!730275 m!5070759))

(assert (=> bs!730275 m!5070757))

(declare-fun m!5070761 () Bool)

(assert (=> bs!730275 m!5070761))

(assert (=> b!4404777 d!1329013))

(declare-fun d!1329015 () Bool)

(declare-fun res!1817442 () Bool)

(declare-fun e!2742851 () Bool)

(assert (=> d!1329015 (=> res!1817442 e!2742851)))

(assert (=> d!1329015 (= res!1817442 (not ((_ is Cons!49320) newBucket!200)))))

(assert (=> d!1329015 (= (noDuplicateKeys!643 newBucket!200) e!2742851)))

(declare-fun b!4404903 () Bool)

(declare-fun e!2742852 () Bool)

(assert (=> b!4404903 (= e!2742851 e!2742852)))

(declare-fun res!1817443 () Bool)

(assert (=> b!4404903 (=> (not res!1817443) (not e!2742852))))

(assert (=> b!4404903 (= res!1817443 (not (containsKey!969 (t!356378 newBucket!200) (_1!27765 (h!54955 newBucket!200)))))))

(declare-fun b!4404904 () Bool)

(assert (=> b!4404904 (= e!2742852 (noDuplicateKeys!643 (t!356378 newBucket!200)))))

(assert (= (and d!1329015 (not res!1817442)) b!4404903))

(assert (= (and b!4404903 res!1817443) b!4404904))

(declare-fun m!5070763 () Bool)

(assert (=> b!4404903 m!5070763))

(declare-fun m!5070765 () Bool)

(assert (=> b!4404904 m!5070765))

(assert (=> b!4404787 d!1329015))

(declare-fun d!1329017 () Bool)

(assert (=> d!1329017 (= (eq!349 lt!1609301 lt!1609317) (= (content!7892 (toList!3270 lt!1609301)) (content!7892 (toList!3270 lt!1609317))))))

(declare-fun bs!730276 () Bool)

(assert (= bs!730276 d!1329017))

(declare-fun m!5070767 () Bool)

(assert (=> bs!730276 m!5070767))

(declare-fun m!5070769 () Bool)

(assert (=> bs!730276 m!5070769))

(assert (=> b!4404783 d!1329017))

(declare-fun d!1329019 () Bool)

(assert (=> d!1329019 (eq!349 (addToMapMapFromBucket!309 (_2!27766 (h!54956 (toList!3269 lm!1707))) (+!901 lt!1609299 (tuple2!48943 key!3918 newValue!99))) (+!901 (addToMapMapFromBucket!309 (_2!27766 (h!54956 (toList!3269 lm!1707))) lt!1609299) (tuple2!48943 key!3918 newValue!99)))))

(declare-fun lt!1609406 () Unit!79313)

(declare-fun choose!27689 (ListMap!2513 K!10675 V!10921 List!49444) Unit!79313)

(assert (=> d!1329019 (= lt!1609406 (choose!27689 lt!1609299 key!3918 newValue!99 (_2!27766 (h!54956 (toList!3269 lm!1707)))))))

(assert (=> d!1329019 (not (containsKey!969 (_2!27766 (h!54956 (toList!3269 lm!1707))) key!3918))))

(assert (=> d!1329019 (= (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!148 lt!1609299 key!3918 newValue!99 (_2!27766 (h!54956 (toList!3269 lm!1707)))) lt!1609406)))

(declare-fun bs!730277 () Bool)

(assert (= bs!730277 d!1329019))

(assert (=> bs!730277 m!5070517))

(declare-fun m!5070771 () Bool)

(assert (=> bs!730277 m!5070771))

(declare-fun m!5070773 () Bool)

(assert (=> bs!730277 m!5070773))

(assert (=> bs!730277 m!5070517))

(declare-fun m!5070775 () Bool)

(assert (=> bs!730277 m!5070775))

(assert (=> bs!730277 m!5070771))

(assert (=> bs!730277 m!5070569))

(declare-fun m!5070777 () Bool)

(assert (=> bs!730277 m!5070777))

(assert (=> bs!730277 m!5070773))

(assert (=> bs!730277 m!5070775))

(declare-fun m!5070779 () Bool)

(assert (=> bs!730277 m!5070779))

(assert (=> b!4404783 d!1329019))

(declare-fun d!1329021 () Bool)

(assert (=> d!1329021 (contains!11733 lt!1609313 key!3918)))

(declare-fun lt!1609439 () Unit!79313)

(declare-fun choose!27690 (List!49444 K!10675 V!10921 ListMap!2513) Unit!79313)

(assert (=> d!1329021 (= lt!1609439 (choose!27690 (_2!27766 (h!54956 (toList!3269 lm!1707))) key!3918 newValue!99 lt!1609313))))

(assert (=> d!1329021 (noDuplicateKeys!643 (_2!27766 (h!54956 (toList!3269 lm!1707))))))

(assert (=> d!1329021 (= (lemmaAddToMapContainsAndNotInListThenInAcc!102 (_2!27766 (h!54956 (toList!3269 lm!1707))) key!3918 newValue!99 lt!1609313) lt!1609439)))

(declare-fun bs!730278 () Bool)

(assert (= bs!730278 d!1329021))

(assert (=> bs!730278 m!5070553))

(declare-fun m!5070781 () Bool)

(assert (=> bs!730278 m!5070781))

(assert (=> bs!730278 m!5070585))

(assert (=> b!4404783 d!1329021))

(declare-fun d!1329023 () Bool)

(declare-fun res!1817450 () Bool)

(declare-fun e!2742861 () Bool)

(assert (=> d!1329023 (=> res!1817450 e!2742861)))

(assert (=> d!1329023 (= res!1817450 (and ((_ is Cons!49320) (apply!11495 lm!1707 (_1!27766 (h!54956 (toList!3269 lm!1707))))) (= (_1!27765 (h!54955 (apply!11495 lm!1707 (_1!27766 (h!54956 (toList!3269 lm!1707)))))) key!3918)))))

(assert (=> d!1329023 (= (containsKey!969 (apply!11495 lm!1707 (_1!27766 (h!54956 (toList!3269 lm!1707)))) key!3918) e!2742861)))

(declare-fun b!4404915 () Bool)

(declare-fun e!2742862 () Bool)

(assert (=> b!4404915 (= e!2742861 e!2742862)))

(declare-fun res!1817451 () Bool)

(assert (=> b!4404915 (=> (not res!1817451) (not e!2742862))))

(assert (=> b!4404915 (= res!1817451 ((_ is Cons!49320) (apply!11495 lm!1707 (_1!27766 (h!54956 (toList!3269 lm!1707))))))))

(declare-fun b!4404916 () Bool)

(assert (=> b!4404916 (= e!2742862 (containsKey!969 (t!356378 (apply!11495 lm!1707 (_1!27766 (h!54956 (toList!3269 lm!1707))))) key!3918))))

(assert (= (and d!1329023 (not res!1817450)) b!4404915))

(assert (= (and b!4404915 res!1817451) b!4404916))

(declare-fun m!5070783 () Bool)

(assert (=> b!4404916 m!5070783))

(assert (=> b!4404783 d!1329023))

(declare-fun d!1329025 () Bool)

(assert (=> d!1329025 (= (eq!349 lt!1609303 lt!1609318) (= (content!7892 (toList!3270 lt!1609303)) (content!7892 (toList!3270 lt!1609318))))))

(declare-fun bs!730279 () Bool)

(assert (= bs!730279 d!1329025))

(declare-fun m!5070785 () Bool)

(assert (=> bs!730279 m!5070785))

(assert (=> bs!730279 m!5070739))

(assert (=> b!4404783 d!1329025))

(declare-fun d!1329027 () Bool)

(declare-fun e!2742863 () Bool)

(assert (=> d!1329027 e!2742863))

(declare-fun res!1817452 () Bool)

(assert (=> d!1329027 (=> (not res!1817452) (not e!2742863))))

(declare-fun lt!1609454 () ListLongMap!1919)

(assert (=> d!1329027 (= res!1817452 (contains!11735 lt!1609454 (_1!27766 lt!1609300)))))

(declare-fun lt!1609452 () List!49445)

(assert (=> d!1329027 (= lt!1609454 (ListLongMap!1920 lt!1609452))))

(declare-fun lt!1609453 () Unit!79313)

(declare-fun lt!1609455 () Unit!79313)

(assert (=> d!1329027 (= lt!1609453 lt!1609455)))

(assert (=> d!1329027 (= (getValueByKey!618 lt!1609452 (_1!27766 lt!1609300)) (Some!10631 (_2!27766 lt!1609300)))))

(assert (=> d!1329027 (= lt!1609455 (lemmaContainsTupThenGetReturnValue!363 lt!1609452 (_1!27766 lt!1609300) (_2!27766 lt!1609300)))))

(assert (=> d!1329027 (= lt!1609452 (insertStrictlySorted!214 (toList!3269 lt!1609316) (_1!27766 lt!1609300) (_2!27766 lt!1609300)))))

(assert (=> d!1329027 (= (+!902 lt!1609316 lt!1609300) lt!1609454)))

(declare-fun b!4404917 () Bool)

(declare-fun res!1817453 () Bool)

(assert (=> b!4404917 (=> (not res!1817453) (not e!2742863))))

(assert (=> b!4404917 (= res!1817453 (= (getValueByKey!618 (toList!3269 lt!1609454) (_1!27766 lt!1609300)) (Some!10631 (_2!27766 lt!1609300))))))

(declare-fun b!4404918 () Bool)

(assert (=> b!4404918 (= e!2742863 (contains!11734 (toList!3269 lt!1609454) lt!1609300))))

(assert (= (and d!1329027 res!1817452) b!4404917))

(assert (= (and b!4404917 res!1817453) b!4404918))

(declare-fun m!5070787 () Bool)

(assert (=> d!1329027 m!5070787))

(declare-fun m!5070789 () Bool)

(assert (=> d!1329027 m!5070789))

(declare-fun m!5070791 () Bool)

(assert (=> d!1329027 m!5070791))

(declare-fun m!5070793 () Bool)

(assert (=> d!1329027 m!5070793))

(declare-fun m!5070795 () Bool)

(assert (=> b!4404917 m!5070795))

(declare-fun m!5070797 () Bool)

(assert (=> b!4404918 m!5070797))

(assert (=> b!4404783 d!1329027))

(declare-fun d!1329029 () Bool)

(declare-fun e!2742864 () Bool)

(assert (=> d!1329029 e!2742864))

(declare-fun res!1817455 () Bool)

(assert (=> d!1329029 (=> (not res!1817455) (not e!2742864))))

(declare-fun lt!1609456 () ListMap!2513)

(assert (=> d!1329029 (= res!1817455 (contains!11733 lt!1609456 (_1!27765 lt!1609315)))))

(declare-fun lt!1609459 () List!49444)

(assert (=> d!1329029 (= lt!1609456 (ListMap!2514 lt!1609459))))

(declare-fun lt!1609457 () Unit!79313)

(declare-fun lt!1609458 () Unit!79313)

(assert (=> d!1329029 (= lt!1609457 lt!1609458)))

(assert (=> d!1329029 (= (getValueByKey!619 lt!1609459 (_1!27765 lt!1609315)) (Some!10632 (_2!27765 lt!1609315)))))

(assert (=> d!1329029 (= lt!1609458 (lemmaContainsTupThenGetReturnValue!364 lt!1609459 (_1!27765 lt!1609315) (_2!27765 lt!1609315)))))

(assert (=> d!1329029 (= lt!1609459 (insertNoDuplicatedKeys!158 (toList!3270 lt!1609299) (_1!27765 lt!1609315) (_2!27765 lt!1609315)))))

(assert (=> d!1329029 (= (+!901 lt!1609299 lt!1609315) lt!1609456)))

(declare-fun b!4404919 () Bool)

(declare-fun res!1817454 () Bool)

(assert (=> b!4404919 (=> (not res!1817454) (not e!2742864))))

(assert (=> b!4404919 (= res!1817454 (= (getValueByKey!619 (toList!3270 lt!1609456) (_1!27765 lt!1609315)) (Some!10632 (_2!27765 lt!1609315))))))

(declare-fun b!4404920 () Bool)

(assert (=> b!4404920 (= e!2742864 (contains!11737 (toList!3270 lt!1609456) lt!1609315))))

(assert (= (and d!1329029 res!1817455) b!4404919))

(assert (= (and b!4404919 res!1817454) b!4404920))

(declare-fun m!5070799 () Bool)

(assert (=> d!1329029 m!5070799))

(declare-fun m!5070801 () Bool)

(assert (=> d!1329029 m!5070801))

(declare-fun m!5070803 () Bool)

(assert (=> d!1329029 m!5070803))

(declare-fun m!5070805 () Bool)

(assert (=> d!1329029 m!5070805))

(declare-fun m!5070807 () Bool)

(assert (=> b!4404919 m!5070807))

(declare-fun m!5070809 () Bool)

(assert (=> b!4404920 m!5070809))

(assert (=> b!4404783 d!1329029))

(declare-fun b!4404957 () Bool)

(declare-fun e!2742888 () Bool)

(declare-fun e!2742887 () Bool)

(assert (=> b!4404957 (= e!2742888 e!2742887)))

(declare-fun res!1817473 () Bool)

(assert (=> b!4404957 (=> (not res!1817473) (not e!2742887))))

(declare-fun isDefined!7924 (Option!10633) Bool)

(assert (=> b!4404957 (= res!1817473 (isDefined!7924 (getValueByKey!619 (toList!3270 lt!1609299) key!3918)))))

(declare-fun bm!306553 () Bool)

(declare-fun call!306558 () Bool)

(declare-datatypes ((List!49447 0))(
  ( (Nil!49323) (Cons!49323 (h!54960 K!10675) (t!356381 List!49447)) )
))
(declare-fun e!2742886 () List!49447)

(declare-fun contains!11739 (List!49447 K!10675) Bool)

(assert (=> bm!306553 (= call!306558 (contains!11739 e!2742886 key!3918))))

(declare-fun c!749997 () Bool)

(declare-fun c!749996 () Bool)

(assert (=> bm!306553 (= c!749997 c!749996)))

(declare-fun b!4404958 () Bool)

(declare-fun getKeysList!207 (List!49444) List!49447)

(assert (=> b!4404958 (= e!2742886 (getKeysList!207 (toList!3270 lt!1609299)))))

(declare-fun b!4404959 () Bool)

(declare-fun keys!16773 (ListMap!2513) List!49447)

(assert (=> b!4404959 (= e!2742887 (contains!11739 (keys!16773 lt!1609299) key!3918))))

(declare-fun b!4404960 () Bool)

(declare-fun e!2742889 () Bool)

(assert (=> b!4404960 (= e!2742889 (not (contains!11739 (keys!16773 lt!1609299) key!3918)))))

(declare-fun b!4404961 () Bool)

(assert (=> b!4404961 false))

(declare-fun lt!1609523 () Unit!79313)

(declare-fun lt!1609524 () Unit!79313)

(assert (=> b!4404961 (= lt!1609523 lt!1609524)))

(declare-fun containsKey!971 (List!49444 K!10675) Bool)

(assert (=> b!4404961 (containsKey!971 (toList!3270 lt!1609299) key!3918)))

(declare-fun lemmaInGetKeysListThenContainsKey!205 (List!49444 K!10675) Unit!79313)

(assert (=> b!4404961 (= lt!1609524 (lemmaInGetKeysListThenContainsKey!205 (toList!3270 lt!1609299) key!3918))))

(declare-fun e!2742891 () Unit!79313)

(declare-fun Unit!79343 () Unit!79313)

(assert (=> b!4404961 (= e!2742891 Unit!79343)))

(declare-fun b!4404962 () Bool)

(declare-fun e!2742890 () Unit!79313)

(assert (=> b!4404962 (= e!2742890 e!2742891)))

(declare-fun c!749995 () Bool)

(assert (=> b!4404962 (= c!749995 call!306558)))

(declare-fun d!1329031 () Bool)

(assert (=> d!1329031 e!2742888))

(declare-fun res!1817472 () Bool)

(assert (=> d!1329031 (=> res!1817472 e!2742888)))

(assert (=> d!1329031 (= res!1817472 e!2742889)))

(declare-fun res!1817474 () Bool)

(assert (=> d!1329031 (=> (not res!1817474) (not e!2742889))))

(declare-fun lt!1609526 () Bool)

(assert (=> d!1329031 (= res!1817474 (not lt!1609526))))

(declare-fun lt!1609525 () Bool)

(assert (=> d!1329031 (= lt!1609526 lt!1609525)))

(declare-fun lt!1609522 () Unit!79313)

(assert (=> d!1329031 (= lt!1609522 e!2742890)))

(assert (=> d!1329031 (= c!749996 lt!1609525)))

(assert (=> d!1329031 (= lt!1609525 (containsKey!971 (toList!3270 lt!1609299) key!3918))))

(assert (=> d!1329031 (= (contains!11733 lt!1609299 key!3918) lt!1609526)))

(declare-fun b!4404963 () Bool)

(assert (=> b!4404963 (= e!2742886 (keys!16773 lt!1609299))))

(declare-fun b!4404964 () Bool)

(declare-fun Unit!79344 () Unit!79313)

(assert (=> b!4404964 (= e!2742891 Unit!79344)))

(declare-fun b!4404965 () Bool)

(declare-fun lt!1609519 () Unit!79313)

(assert (=> b!4404965 (= e!2742890 lt!1609519)))

(declare-fun lt!1609521 () Unit!79313)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!527 (List!49444 K!10675) Unit!79313)

(assert (=> b!4404965 (= lt!1609521 (lemmaContainsKeyImpliesGetValueByKeyDefined!527 (toList!3270 lt!1609299) key!3918))))

(assert (=> b!4404965 (isDefined!7924 (getValueByKey!619 (toList!3270 lt!1609299) key!3918))))

(declare-fun lt!1609520 () Unit!79313)

(assert (=> b!4404965 (= lt!1609520 lt!1609521)))

(declare-fun lemmaInListThenGetKeysListContains!204 (List!49444 K!10675) Unit!79313)

(assert (=> b!4404965 (= lt!1609519 (lemmaInListThenGetKeysListContains!204 (toList!3270 lt!1609299) key!3918))))

(assert (=> b!4404965 call!306558))

(assert (= (and d!1329031 c!749996) b!4404965))

(assert (= (and d!1329031 (not c!749996)) b!4404962))

(assert (= (and b!4404962 c!749995) b!4404961))

(assert (= (and b!4404962 (not c!749995)) b!4404964))

(assert (= (or b!4404965 b!4404962) bm!306553))

(assert (= (and bm!306553 c!749997) b!4404958))

(assert (= (and bm!306553 (not c!749997)) b!4404963))

(assert (= (and d!1329031 res!1817474) b!4404960))

(assert (= (and d!1329031 (not res!1817472)) b!4404957))

(assert (= (and b!4404957 res!1817473) b!4404959))

(declare-fun m!5070885 () Bool)

(assert (=> b!4404957 m!5070885))

(assert (=> b!4404957 m!5070885))

(declare-fun m!5070887 () Bool)

(assert (=> b!4404957 m!5070887))

(declare-fun m!5070889 () Bool)

(assert (=> b!4404959 m!5070889))

(assert (=> b!4404959 m!5070889))

(declare-fun m!5070891 () Bool)

(assert (=> b!4404959 m!5070891))

(declare-fun m!5070893 () Bool)

(assert (=> b!4404961 m!5070893))

(declare-fun m!5070895 () Bool)

(assert (=> b!4404961 m!5070895))

(assert (=> b!4404963 m!5070889))

(declare-fun m!5070897 () Bool)

(assert (=> b!4404958 m!5070897))

(assert (=> b!4404960 m!5070889))

(assert (=> b!4404960 m!5070889))

(assert (=> b!4404960 m!5070891))

(declare-fun m!5070899 () Bool)

(assert (=> b!4404965 m!5070899))

(assert (=> b!4404965 m!5070885))

(assert (=> b!4404965 m!5070885))

(assert (=> b!4404965 m!5070887))

(declare-fun m!5070901 () Bool)

(assert (=> b!4404965 m!5070901))

(declare-fun m!5070903 () Bool)

(assert (=> bm!306553 m!5070903))

(assert (=> d!1329031 m!5070893))

(assert (=> b!4404783 d!1329031))

(declare-fun d!1329041 () Bool)

(assert (=> d!1329041 (= (eq!349 lt!1609307 lt!1609320) (= (content!7892 (toList!3270 lt!1609307)) (content!7892 (toList!3270 lt!1609320))))))

(declare-fun bs!730298 () Bool)

(assert (= bs!730298 d!1329041))

(assert (=> bs!730298 m!5070727))

(assert (=> bs!730298 m!5070725))

(assert (=> b!4404783 d!1329041))

(declare-fun bs!730348 () Bool)

(declare-fun b!4405056 () Bool)

(assert (= bs!730348 (and b!4405056 d!1329003)))

(declare-fun lambda!149852 () Int)

(assert (=> bs!730348 (not (= lambda!149852 lambda!149772))))

(assert (=> b!4405056 true))

(declare-fun bs!730349 () Bool)

(declare-fun b!4405054 () Bool)

(assert (= bs!730349 (and b!4405054 d!1329003)))

(declare-fun lambda!149853 () Int)

(assert (=> bs!730349 (not (= lambda!149853 lambda!149772))))

(declare-fun bs!730350 () Bool)

(assert (= bs!730350 (and b!4405054 b!4405056)))

(assert (=> bs!730350 (= lambda!149853 lambda!149852)))

(assert (=> b!4405054 true))

(declare-fun lambda!149854 () Int)

(assert (=> bs!730349 (not (= lambda!149854 lambda!149772))))

(declare-fun lt!1609656 () ListMap!2513)

(assert (=> bs!730350 (= (= lt!1609656 lt!1609320) (= lambda!149854 lambda!149852))))

(assert (=> b!4405054 (= (= lt!1609656 lt!1609320) (= lambda!149854 lambda!149853))))

(assert (=> b!4405054 true))

(declare-fun bs!730351 () Bool)

(declare-fun d!1329043 () Bool)

(assert (= bs!730351 (and d!1329043 d!1329003)))

(declare-fun lambda!149855 () Int)

(assert (=> bs!730351 (not (= lambda!149855 lambda!149772))))

(declare-fun bs!730352 () Bool)

(assert (= bs!730352 (and d!1329043 b!4405056)))

(declare-fun lt!1609642 () ListMap!2513)

(assert (=> bs!730352 (= (= lt!1609642 lt!1609320) (= lambda!149855 lambda!149852))))

(declare-fun bs!730353 () Bool)

(assert (= bs!730353 (and d!1329043 b!4405054)))

(assert (=> bs!730353 (= (= lt!1609642 lt!1609320) (= lambda!149855 lambda!149853))))

(assert (=> bs!730353 (= (= lt!1609642 lt!1609656) (= lambda!149855 lambda!149854))))

(assert (=> d!1329043 true))

(declare-fun b!4405052 () Bool)

(declare-fun e!2742945 () Bool)

(declare-fun invariantList!760 (List!49444) Bool)

(assert (=> b!4405052 (= e!2742945 (invariantList!760 (toList!3270 lt!1609642)))))

(assert (=> d!1329043 e!2742945))

(declare-fun res!1817514 () Bool)

(assert (=> d!1329043 (=> (not res!1817514) (not e!2742945))))

(assert (=> d!1329043 (= res!1817514 (forall!9398 (_2!27766 (h!54956 (toList!3269 lm!1707))) lambda!149855))))

(declare-fun e!2742946 () ListMap!2513)

(assert (=> d!1329043 (= lt!1609642 e!2742946)))

(declare-fun c!750014 () Bool)

(assert (=> d!1329043 (= c!750014 ((_ is Nil!49320) (_2!27766 (h!54956 (toList!3269 lm!1707)))))))

(assert (=> d!1329043 (noDuplicateKeys!643 (_2!27766 (h!54956 (toList!3269 lm!1707))))))

(assert (=> d!1329043 (= (addToMapMapFromBucket!309 (_2!27766 (h!54956 (toList!3269 lm!1707))) lt!1609320) lt!1609642)))

(declare-fun bm!306561 () Bool)

(declare-fun lt!1609643 () ListMap!2513)

(declare-fun call!306566 () Bool)

(assert (=> bm!306561 (= call!306566 (forall!9398 (ite c!750014 (toList!3270 lt!1609320) (toList!3270 lt!1609643)) (ite c!750014 lambda!149852 lambda!149854)))))

(declare-fun bm!306562 () Bool)

(declare-fun call!306568 () Unit!79313)

(declare-fun lemmaContainsAllItsOwnKeys!139 (ListMap!2513) Unit!79313)

(assert (=> bm!306562 (= call!306568 (lemmaContainsAllItsOwnKeys!139 lt!1609320))))

(declare-fun b!4405053 () Bool)

(declare-fun e!2742944 () Bool)

(declare-fun call!306567 () Bool)

(assert (=> b!4405053 (= e!2742944 call!306567)))

(declare-fun bm!306563 () Bool)

(assert (=> bm!306563 (= call!306567 (forall!9398 (toList!3270 lt!1609320) (ite c!750014 lambda!149852 lambda!149854)))))

(assert (=> b!4405054 (= e!2742946 lt!1609656)))

(assert (=> b!4405054 (= lt!1609643 (+!901 lt!1609320 (h!54955 (_2!27766 (h!54956 (toList!3269 lm!1707))))))))

(assert (=> b!4405054 (= lt!1609656 (addToMapMapFromBucket!309 (t!356378 (_2!27766 (h!54956 (toList!3269 lm!1707)))) (+!901 lt!1609320 (h!54955 (_2!27766 (h!54956 (toList!3269 lm!1707)))))))))

(declare-fun lt!1609659 () Unit!79313)

(assert (=> b!4405054 (= lt!1609659 call!306568)))

(assert (=> b!4405054 (forall!9398 (toList!3270 lt!1609320) lambda!149853)))

(declare-fun lt!1609651 () Unit!79313)

(assert (=> b!4405054 (= lt!1609651 lt!1609659)))

(assert (=> b!4405054 (forall!9398 (toList!3270 lt!1609643) lambda!149854)))

(declare-fun lt!1609644 () Unit!79313)

(declare-fun Unit!79345 () Unit!79313)

(assert (=> b!4405054 (= lt!1609644 Unit!79345)))

(assert (=> b!4405054 (forall!9398 (t!356378 (_2!27766 (h!54956 (toList!3269 lm!1707)))) lambda!149854)))

(declare-fun lt!1609639 () Unit!79313)

(declare-fun Unit!79346 () Unit!79313)

(assert (=> b!4405054 (= lt!1609639 Unit!79346)))

(declare-fun lt!1609649 () Unit!79313)

(declare-fun Unit!79347 () Unit!79313)

(assert (=> b!4405054 (= lt!1609649 Unit!79347)))

(declare-fun lt!1609648 () Unit!79313)

(declare-fun forallContained!2033 (List!49444 Int tuple2!48942) Unit!79313)

(assert (=> b!4405054 (= lt!1609648 (forallContained!2033 (toList!3270 lt!1609643) lambda!149854 (h!54955 (_2!27766 (h!54956 (toList!3269 lm!1707))))))))

(assert (=> b!4405054 (contains!11733 lt!1609643 (_1!27765 (h!54955 (_2!27766 (h!54956 (toList!3269 lm!1707))))))))

(declare-fun lt!1609655 () Unit!79313)

(declare-fun Unit!79348 () Unit!79313)

(assert (=> b!4405054 (= lt!1609655 Unit!79348)))

(assert (=> b!4405054 (contains!11733 lt!1609656 (_1!27765 (h!54955 (_2!27766 (h!54956 (toList!3269 lm!1707))))))))

(declare-fun lt!1609641 () Unit!79313)

(declare-fun Unit!79349 () Unit!79313)

(assert (=> b!4405054 (= lt!1609641 Unit!79349)))

(assert (=> b!4405054 (forall!9398 (_2!27766 (h!54956 (toList!3269 lm!1707))) lambda!149854)))

(declare-fun lt!1609653 () Unit!79313)

(declare-fun Unit!79350 () Unit!79313)

(assert (=> b!4405054 (= lt!1609653 Unit!79350)))

(assert (=> b!4405054 call!306566))

(declare-fun lt!1609654 () Unit!79313)

(declare-fun Unit!79351 () Unit!79313)

(assert (=> b!4405054 (= lt!1609654 Unit!79351)))

(declare-fun lt!1609652 () Unit!79313)

(declare-fun Unit!79352 () Unit!79313)

(assert (=> b!4405054 (= lt!1609652 Unit!79352)))

(declare-fun lt!1609658 () Unit!79313)

(declare-fun addForallContainsKeyThenBeforeAdding!139 (ListMap!2513 ListMap!2513 K!10675 V!10921) Unit!79313)

(assert (=> b!4405054 (= lt!1609658 (addForallContainsKeyThenBeforeAdding!139 lt!1609320 lt!1609656 (_1!27765 (h!54955 (_2!27766 (h!54956 (toList!3269 lm!1707))))) (_2!27765 (h!54955 (_2!27766 (h!54956 (toList!3269 lm!1707)))))))))

(assert (=> b!4405054 (forall!9398 (toList!3270 lt!1609320) lambda!149854)))

(declare-fun lt!1609640 () Unit!79313)

(assert (=> b!4405054 (= lt!1609640 lt!1609658)))

(assert (=> b!4405054 (forall!9398 (toList!3270 lt!1609320) lambda!149854)))

(declare-fun lt!1609650 () Unit!79313)

(declare-fun Unit!79353 () Unit!79313)

(assert (=> b!4405054 (= lt!1609650 Unit!79353)))

(declare-fun res!1817515 () Bool)

(assert (=> b!4405054 (= res!1817515 (forall!9398 (_2!27766 (h!54956 (toList!3269 lm!1707))) lambda!149854))))

(assert (=> b!4405054 (=> (not res!1817515) (not e!2742944))))

(assert (=> b!4405054 e!2742944))

(declare-fun lt!1609646 () Unit!79313)

(declare-fun Unit!79354 () Unit!79313)

(assert (=> b!4405054 (= lt!1609646 Unit!79354)))

(declare-fun b!4405055 () Bool)

(declare-fun res!1817513 () Bool)

(assert (=> b!4405055 (=> (not res!1817513) (not e!2742945))))

(assert (=> b!4405055 (= res!1817513 (forall!9398 (toList!3270 lt!1609320) lambda!149855))))

(assert (=> b!4405056 (= e!2742946 lt!1609320)))

(declare-fun lt!1609647 () Unit!79313)

(assert (=> b!4405056 (= lt!1609647 call!306568)))

(assert (=> b!4405056 call!306567))

(declare-fun lt!1609645 () Unit!79313)

(assert (=> b!4405056 (= lt!1609645 lt!1609647)))

(assert (=> b!4405056 call!306566))

(declare-fun lt!1609657 () Unit!79313)

(declare-fun Unit!79355 () Unit!79313)

(assert (=> b!4405056 (= lt!1609657 Unit!79355)))

(assert (= (and d!1329043 c!750014) b!4405056))

(assert (= (and d!1329043 (not c!750014)) b!4405054))

(assert (= (and b!4405054 res!1817515) b!4405053))

(assert (= (or b!4405056 b!4405054) bm!306562))

(assert (= (or b!4405056 b!4405053) bm!306563))

(assert (= (or b!4405056 b!4405054) bm!306561))

(assert (= (and d!1329043 res!1817514) b!4405055))

(assert (= (and b!4405055 res!1817513) b!4405052))

(declare-fun m!5071079 () Bool)

(assert (=> bm!306562 m!5071079))

(declare-fun m!5071081 () Bool)

(assert (=> b!4405054 m!5071081))

(declare-fun m!5071083 () Bool)

(assert (=> b!4405054 m!5071083))

(assert (=> b!4405054 m!5071083))

(declare-fun m!5071085 () Bool)

(assert (=> b!4405054 m!5071085))

(declare-fun m!5071087 () Bool)

(assert (=> b!4405054 m!5071087))

(declare-fun m!5071089 () Bool)

(assert (=> b!4405054 m!5071089))

(declare-fun m!5071091 () Bool)

(assert (=> b!4405054 m!5071091))

(declare-fun m!5071093 () Bool)

(assert (=> b!4405054 m!5071093))

(declare-fun m!5071095 () Bool)

(assert (=> b!4405054 m!5071095))

(declare-fun m!5071097 () Bool)

(assert (=> b!4405054 m!5071097))

(assert (=> b!4405054 m!5071089))

(declare-fun m!5071099 () Bool)

(assert (=> b!4405054 m!5071099))

(assert (=> b!4405054 m!5071081))

(declare-fun m!5071101 () Bool)

(assert (=> b!4405054 m!5071101))

(declare-fun m!5071103 () Bool)

(assert (=> b!4405055 m!5071103))

(declare-fun m!5071105 () Bool)

(assert (=> bm!306563 m!5071105))

(declare-fun m!5071107 () Bool)

(assert (=> b!4405052 m!5071107))

(declare-fun m!5071109 () Bool)

(assert (=> d!1329043 m!5071109))

(assert (=> d!1329043 m!5070585))

(declare-fun m!5071111 () Bool)

(assert (=> bm!306561 m!5071111))

(assert (=> b!4404783 d!1329043))

(declare-fun bs!730354 () Bool)

(declare-fun d!1329105 () Bool)

(assert (= bs!730354 (and d!1329105 start!428616)))

(declare-fun lambda!149858 () Int)

(assert (=> bs!730354 (= lambda!149858 lambda!149763)))

(declare-fun bs!730355 () Bool)

(assert (= bs!730355 (and d!1329105 d!1328971)))

(assert (=> bs!730355 (not (= lambda!149858 lambda!149769))))

(declare-fun lt!1609662 () ListMap!2513)

(assert (=> d!1329105 (invariantList!760 (toList!3270 lt!1609662))))

(declare-fun e!2742949 () ListMap!2513)

(assert (=> d!1329105 (= lt!1609662 e!2742949)))

(declare-fun c!750017 () Bool)

(assert (=> d!1329105 (= c!750017 ((_ is Cons!49321) (toList!3269 lt!1609316)))))

(assert (=> d!1329105 (forall!9396 (toList!3269 lt!1609316) lambda!149858)))

(assert (=> d!1329105 (= (extractMap!702 (toList!3269 lt!1609316)) lt!1609662)))

(declare-fun b!4405063 () Bool)

(assert (=> b!4405063 (= e!2742949 (addToMapMapFromBucket!309 (_2!27766 (h!54956 (toList!3269 lt!1609316))) (extractMap!702 (t!356379 (toList!3269 lt!1609316)))))))

(declare-fun b!4405064 () Bool)

(assert (=> b!4405064 (= e!2742949 (ListMap!2514 Nil!49320))))

(assert (= (and d!1329105 c!750017) b!4405063))

(assert (= (and d!1329105 (not c!750017)) b!4405064))

(declare-fun m!5071113 () Bool)

(assert (=> d!1329105 m!5071113))

(declare-fun m!5071115 () Bool)

(assert (=> d!1329105 m!5071115))

(declare-fun m!5071117 () Bool)

(assert (=> b!4405063 m!5071117))

(assert (=> b!4405063 m!5071117))

(declare-fun m!5071119 () Bool)

(assert (=> b!4405063 m!5071119))

(assert (=> b!4404783 d!1329105))

(declare-fun d!1329107 () Bool)

(declare-fun get!16060 (Option!10632) List!49444)

(assert (=> d!1329107 (= (apply!11495 lm!1707 (_1!27766 (h!54956 (toList!3269 lm!1707)))) (get!16060 (getValueByKey!618 (toList!3269 lm!1707) (_1!27766 (h!54956 (toList!3269 lm!1707))))))))

(declare-fun bs!730356 () Bool)

(assert (= bs!730356 d!1329107))

(declare-fun m!5071121 () Bool)

(assert (=> bs!730356 m!5071121))

(assert (=> bs!730356 m!5071121))

(declare-fun m!5071123 () Bool)

(assert (=> bs!730356 m!5071123))

(assert (=> b!4404783 d!1329107))

(declare-fun bs!730357 () Bool)

(declare-fun d!1329109 () Bool)

(assert (= bs!730357 (and d!1329109 start!428616)))

(declare-fun lambda!149861 () Int)

(assert (=> bs!730357 (= lambda!149861 lambda!149763)))

(declare-fun bs!730358 () Bool)

(assert (= bs!730358 (and d!1329109 d!1328971)))

(assert (=> bs!730358 (not (= lambda!149861 lambda!149769))))

(declare-fun bs!730359 () Bool)

(assert (= bs!730359 (and d!1329109 d!1329105)))

(assert (=> bs!730359 (= lambda!149861 lambda!149858)))

(assert (=> d!1329109 (eq!349 (extractMap!702 (toList!3269 (+!902 lt!1609316 (tuple2!48945 hash!377 newBucket!200)))) (+!901 (extractMap!702 (toList!3269 lt!1609316)) (tuple2!48943 key!3918 newValue!99)))))

(declare-fun lt!1609665 () Unit!79313)

(declare-fun choose!27695 (ListLongMap!1919 (_ BitVec 64) List!49444 K!10675 V!10921 Hashable!5035) Unit!79313)

(assert (=> d!1329109 (= lt!1609665 (choose!27695 lt!1609316 hash!377 newBucket!200 key!3918 newValue!99 hashF!1247))))

(assert (=> d!1329109 (forall!9396 (toList!3269 lt!1609316) lambda!149861)))

(assert (=> d!1329109 (= (lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!147 lt!1609316 hash!377 newBucket!200 key!3918 newValue!99 hashF!1247) lt!1609665)))

(declare-fun bs!730360 () Bool)

(assert (= bs!730360 d!1329109))

(declare-fun m!5071125 () Bool)

(assert (=> bs!730360 m!5071125))

(declare-fun m!5071127 () Bool)

(assert (=> bs!730360 m!5071127))

(assert (=> bs!730360 m!5070523))

(declare-fun m!5071129 () Bool)

(assert (=> bs!730360 m!5071129))

(assert (=> bs!730360 m!5070523))

(declare-fun m!5071131 () Bool)

(assert (=> bs!730360 m!5071131))

(assert (=> bs!730360 m!5071127))

(assert (=> bs!730360 m!5071129))

(declare-fun m!5071133 () Bool)

(assert (=> bs!730360 m!5071133))

(declare-fun m!5071135 () Bool)

(assert (=> bs!730360 m!5071135))

(assert (=> b!4404783 d!1329109))

(declare-fun d!1329111 () Bool)

(declare-fun tail!7141 (List!49445) List!49445)

(assert (=> d!1329111 (= (tail!7139 lm!1707) (ListLongMap!1920 (tail!7141 (toList!3269 lm!1707))))))

(declare-fun bs!730361 () Bool)

(assert (= bs!730361 d!1329111))

(declare-fun m!5071137 () Bool)

(assert (=> bs!730361 m!5071137))

(assert (=> b!4404783 d!1329111))

(declare-fun bs!730362 () Bool)

(declare-fun b!4405069 () Bool)

(assert (= bs!730362 (and b!4405069 b!4405054)))

(declare-fun lambda!149862 () Int)

(assert (=> bs!730362 (= (= lt!1609299 lt!1609656) (= lambda!149862 lambda!149854))))

(declare-fun bs!730363 () Bool)

(assert (= bs!730363 (and b!4405069 d!1329003)))

(assert (=> bs!730363 (not (= lambda!149862 lambda!149772))))

(assert (=> bs!730362 (= (= lt!1609299 lt!1609320) (= lambda!149862 lambda!149853))))

(declare-fun bs!730364 () Bool)

(assert (= bs!730364 (and b!4405069 b!4405056)))

(assert (=> bs!730364 (= (= lt!1609299 lt!1609320) (= lambda!149862 lambda!149852))))

(declare-fun bs!730365 () Bool)

(assert (= bs!730365 (and b!4405069 d!1329043)))

(assert (=> bs!730365 (= (= lt!1609299 lt!1609642) (= lambda!149862 lambda!149855))))

(assert (=> b!4405069 true))

(declare-fun bs!730366 () Bool)

(declare-fun b!4405067 () Bool)

(assert (= bs!730366 (and b!4405067 b!4405054)))

(declare-fun lambda!149863 () Int)

(assert (=> bs!730366 (= (= lt!1609299 lt!1609656) (= lambda!149863 lambda!149854))))

(declare-fun bs!730367 () Bool)

(assert (= bs!730367 (and b!4405067 b!4405069)))

(assert (=> bs!730367 (= lambda!149863 lambda!149862)))

(declare-fun bs!730368 () Bool)

(assert (= bs!730368 (and b!4405067 d!1329003)))

(assert (=> bs!730368 (not (= lambda!149863 lambda!149772))))

(assert (=> bs!730366 (= (= lt!1609299 lt!1609320) (= lambda!149863 lambda!149853))))

(declare-fun bs!730369 () Bool)

(assert (= bs!730369 (and b!4405067 b!4405056)))

(assert (=> bs!730369 (= (= lt!1609299 lt!1609320) (= lambda!149863 lambda!149852))))

(declare-fun bs!730370 () Bool)

(assert (= bs!730370 (and b!4405067 d!1329043)))

(assert (=> bs!730370 (= (= lt!1609299 lt!1609642) (= lambda!149863 lambda!149855))))

(assert (=> b!4405067 true))

(declare-fun lt!1609683 () ListMap!2513)

(declare-fun lambda!149864 () Int)

(assert (=> bs!730366 (= (= lt!1609683 lt!1609656) (= lambda!149864 lambda!149854))))

(assert (=> bs!730367 (= (= lt!1609683 lt!1609299) (= lambda!149864 lambda!149862))))

(assert (=> bs!730368 (not (= lambda!149864 lambda!149772))))

(assert (=> b!4405067 (= (= lt!1609683 lt!1609299) (= lambda!149864 lambda!149863))))

(assert (=> bs!730366 (= (= lt!1609683 lt!1609320) (= lambda!149864 lambda!149853))))

(assert (=> bs!730369 (= (= lt!1609683 lt!1609320) (= lambda!149864 lambda!149852))))

(assert (=> bs!730370 (= (= lt!1609683 lt!1609642) (= lambda!149864 lambda!149855))))

(assert (=> b!4405067 true))

(declare-fun bs!730371 () Bool)

(declare-fun d!1329113 () Bool)

(assert (= bs!730371 (and d!1329113 b!4405054)))

(declare-fun lt!1609669 () ListMap!2513)

(declare-fun lambda!149865 () Int)

(assert (=> bs!730371 (= (= lt!1609669 lt!1609656) (= lambda!149865 lambda!149854))))

(declare-fun bs!730372 () Bool)

(assert (= bs!730372 (and d!1329113 b!4405069)))

(assert (=> bs!730372 (= (= lt!1609669 lt!1609299) (= lambda!149865 lambda!149862))))

(declare-fun bs!730373 () Bool)

(assert (= bs!730373 (and d!1329113 d!1329003)))

(assert (=> bs!730373 (not (= lambda!149865 lambda!149772))))

(declare-fun bs!730374 () Bool)

(assert (= bs!730374 (and d!1329113 b!4405067)))

(assert (=> bs!730374 (= (= lt!1609669 lt!1609299) (= lambda!149865 lambda!149863))))

(assert (=> bs!730374 (= (= lt!1609669 lt!1609683) (= lambda!149865 lambda!149864))))

(assert (=> bs!730371 (= (= lt!1609669 lt!1609320) (= lambda!149865 lambda!149853))))

(declare-fun bs!730375 () Bool)

(assert (= bs!730375 (and d!1329113 b!4405056)))

(assert (=> bs!730375 (= (= lt!1609669 lt!1609320) (= lambda!149865 lambda!149852))))

(declare-fun bs!730376 () Bool)

(assert (= bs!730376 (and d!1329113 d!1329043)))

(assert (=> bs!730376 (= (= lt!1609669 lt!1609642) (= lambda!149865 lambda!149855))))

(assert (=> d!1329113 true))

(declare-fun b!4405065 () Bool)

(declare-fun e!2742951 () Bool)

(assert (=> b!4405065 (= e!2742951 (invariantList!760 (toList!3270 lt!1609669)))))

(assert (=> d!1329113 e!2742951))

(declare-fun res!1817517 () Bool)

(assert (=> d!1329113 (=> (not res!1817517) (not e!2742951))))

(assert (=> d!1329113 (= res!1817517 (forall!9398 (_2!27766 (h!54956 (toList!3269 lm!1707))) lambda!149865))))

(declare-fun e!2742952 () ListMap!2513)

(assert (=> d!1329113 (= lt!1609669 e!2742952)))

(declare-fun c!750018 () Bool)

(assert (=> d!1329113 (= c!750018 ((_ is Nil!49320) (_2!27766 (h!54956 (toList!3269 lm!1707)))))))

(assert (=> d!1329113 (noDuplicateKeys!643 (_2!27766 (h!54956 (toList!3269 lm!1707))))))

(assert (=> d!1329113 (= (addToMapMapFromBucket!309 (_2!27766 (h!54956 (toList!3269 lm!1707))) lt!1609299) lt!1609669)))

(declare-fun lt!1609670 () ListMap!2513)

(declare-fun bm!306564 () Bool)

(declare-fun call!306569 () Bool)

(assert (=> bm!306564 (= call!306569 (forall!9398 (ite c!750018 (toList!3270 lt!1609299) (toList!3270 lt!1609670)) (ite c!750018 lambda!149862 lambda!149864)))))

(declare-fun bm!306565 () Bool)

(declare-fun call!306571 () Unit!79313)

(assert (=> bm!306565 (= call!306571 (lemmaContainsAllItsOwnKeys!139 lt!1609299))))

(declare-fun b!4405066 () Bool)

(declare-fun e!2742950 () Bool)

(declare-fun call!306570 () Bool)

(assert (=> b!4405066 (= e!2742950 call!306570)))

(declare-fun bm!306566 () Bool)

(assert (=> bm!306566 (= call!306570 (forall!9398 (toList!3270 lt!1609299) (ite c!750018 lambda!149862 lambda!149864)))))

(assert (=> b!4405067 (= e!2742952 lt!1609683)))

(assert (=> b!4405067 (= lt!1609670 (+!901 lt!1609299 (h!54955 (_2!27766 (h!54956 (toList!3269 lm!1707))))))))

(assert (=> b!4405067 (= lt!1609683 (addToMapMapFromBucket!309 (t!356378 (_2!27766 (h!54956 (toList!3269 lm!1707)))) (+!901 lt!1609299 (h!54955 (_2!27766 (h!54956 (toList!3269 lm!1707)))))))))

(declare-fun lt!1609686 () Unit!79313)

(assert (=> b!4405067 (= lt!1609686 call!306571)))

(assert (=> b!4405067 (forall!9398 (toList!3270 lt!1609299) lambda!149863)))

(declare-fun lt!1609678 () Unit!79313)

(assert (=> b!4405067 (= lt!1609678 lt!1609686)))

(assert (=> b!4405067 (forall!9398 (toList!3270 lt!1609670) lambda!149864)))

(declare-fun lt!1609671 () Unit!79313)

(declare-fun Unit!79357 () Unit!79313)

(assert (=> b!4405067 (= lt!1609671 Unit!79357)))

(assert (=> b!4405067 (forall!9398 (t!356378 (_2!27766 (h!54956 (toList!3269 lm!1707)))) lambda!149864)))

(declare-fun lt!1609666 () Unit!79313)

(declare-fun Unit!79358 () Unit!79313)

(assert (=> b!4405067 (= lt!1609666 Unit!79358)))

(declare-fun lt!1609676 () Unit!79313)

(declare-fun Unit!79359 () Unit!79313)

(assert (=> b!4405067 (= lt!1609676 Unit!79359)))

(declare-fun lt!1609675 () Unit!79313)

(assert (=> b!4405067 (= lt!1609675 (forallContained!2033 (toList!3270 lt!1609670) lambda!149864 (h!54955 (_2!27766 (h!54956 (toList!3269 lm!1707))))))))

(assert (=> b!4405067 (contains!11733 lt!1609670 (_1!27765 (h!54955 (_2!27766 (h!54956 (toList!3269 lm!1707))))))))

(declare-fun lt!1609682 () Unit!79313)

(declare-fun Unit!79360 () Unit!79313)

(assert (=> b!4405067 (= lt!1609682 Unit!79360)))

(assert (=> b!4405067 (contains!11733 lt!1609683 (_1!27765 (h!54955 (_2!27766 (h!54956 (toList!3269 lm!1707))))))))

(declare-fun lt!1609668 () Unit!79313)

(declare-fun Unit!79361 () Unit!79313)

(assert (=> b!4405067 (= lt!1609668 Unit!79361)))

(assert (=> b!4405067 (forall!9398 (_2!27766 (h!54956 (toList!3269 lm!1707))) lambda!149864)))

(declare-fun lt!1609680 () Unit!79313)

(declare-fun Unit!79362 () Unit!79313)

(assert (=> b!4405067 (= lt!1609680 Unit!79362)))

(assert (=> b!4405067 call!306569))

(declare-fun lt!1609681 () Unit!79313)

(declare-fun Unit!79363 () Unit!79313)

(assert (=> b!4405067 (= lt!1609681 Unit!79363)))

(declare-fun lt!1609679 () Unit!79313)

(declare-fun Unit!79364 () Unit!79313)

(assert (=> b!4405067 (= lt!1609679 Unit!79364)))

(declare-fun lt!1609685 () Unit!79313)

(assert (=> b!4405067 (= lt!1609685 (addForallContainsKeyThenBeforeAdding!139 lt!1609299 lt!1609683 (_1!27765 (h!54955 (_2!27766 (h!54956 (toList!3269 lm!1707))))) (_2!27765 (h!54955 (_2!27766 (h!54956 (toList!3269 lm!1707)))))))))

(assert (=> b!4405067 (forall!9398 (toList!3270 lt!1609299) lambda!149864)))

(declare-fun lt!1609667 () Unit!79313)

(assert (=> b!4405067 (= lt!1609667 lt!1609685)))

(assert (=> b!4405067 (forall!9398 (toList!3270 lt!1609299) lambda!149864)))

(declare-fun lt!1609677 () Unit!79313)

(declare-fun Unit!79365 () Unit!79313)

(assert (=> b!4405067 (= lt!1609677 Unit!79365)))

(declare-fun res!1817518 () Bool)

(assert (=> b!4405067 (= res!1817518 (forall!9398 (_2!27766 (h!54956 (toList!3269 lm!1707))) lambda!149864))))

(assert (=> b!4405067 (=> (not res!1817518) (not e!2742950))))

(assert (=> b!4405067 e!2742950))

(declare-fun lt!1609673 () Unit!79313)

(declare-fun Unit!79366 () Unit!79313)

(assert (=> b!4405067 (= lt!1609673 Unit!79366)))

(declare-fun b!4405068 () Bool)

(declare-fun res!1817516 () Bool)

(assert (=> b!4405068 (=> (not res!1817516) (not e!2742951))))

(assert (=> b!4405068 (= res!1817516 (forall!9398 (toList!3270 lt!1609299) lambda!149865))))

(assert (=> b!4405069 (= e!2742952 lt!1609299)))

(declare-fun lt!1609674 () Unit!79313)

(assert (=> b!4405069 (= lt!1609674 call!306571)))

(assert (=> b!4405069 call!306570))

(declare-fun lt!1609672 () Unit!79313)

(assert (=> b!4405069 (= lt!1609672 lt!1609674)))

(assert (=> b!4405069 call!306569))

(declare-fun lt!1609684 () Unit!79313)

(declare-fun Unit!79367 () Unit!79313)

(assert (=> b!4405069 (= lt!1609684 Unit!79367)))

(assert (= (and d!1329113 c!750018) b!4405069))

(assert (= (and d!1329113 (not c!750018)) b!4405067))

(assert (= (and b!4405067 res!1817518) b!4405066))

(assert (= (or b!4405069 b!4405067) bm!306565))

(assert (= (or b!4405069 b!4405066) bm!306566))

(assert (= (or b!4405069 b!4405067) bm!306564))

(assert (= (and d!1329113 res!1817517) b!4405068))

(assert (= (and b!4405068 res!1817516) b!4405065))

(declare-fun m!5071139 () Bool)

(assert (=> bm!306565 m!5071139))

(declare-fun m!5071141 () Bool)

(assert (=> b!4405067 m!5071141))

(declare-fun m!5071143 () Bool)

(assert (=> b!4405067 m!5071143))

(assert (=> b!4405067 m!5071143))

(declare-fun m!5071145 () Bool)

(assert (=> b!4405067 m!5071145))

(declare-fun m!5071147 () Bool)

(assert (=> b!4405067 m!5071147))

(declare-fun m!5071149 () Bool)

(assert (=> b!4405067 m!5071149))

(declare-fun m!5071151 () Bool)

(assert (=> b!4405067 m!5071151))

(declare-fun m!5071153 () Bool)

(assert (=> b!4405067 m!5071153))

(declare-fun m!5071155 () Bool)

(assert (=> b!4405067 m!5071155))

(declare-fun m!5071157 () Bool)

(assert (=> b!4405067 m!5071157))

(assert (=> b!4405067 m!5071149))

(declare-fun m!5071159 () Bool)

(assert (=> b!4405067 m!5071159))

(assert (=> b!4405067 m!5071141))

(declare-fun m!5071161 () Bool)

(assert (=> b!4405067 m!5071161))

(declare-fun m!5071163 () Bool)

(assert (=> b!4405068 m!5071163))

(declare-fun m!5071165 () Bool)

(assert (=> bm!306566 m!5071165))

(declare-fun m!5071167 () Bool)

(assert (=> b!4405065 m!5071167))

(declare-fun m!5071169 () Bool)

(assert (=> d!1329113 m!5071169))

(assert (=> d!1329113 m!5070585))

(declare-fun m!5071171 () Bool)

(assert (=> bm!306564 m!5071171))

(assert (=> b!4404783 d!1329113))

(declare-fun d!1329115 () Bool)

(declare-fun e!2742953 () Bool)

(assert (=> d!1329115 e!2742953))

(declare-fun res!1817520 () Bool)

(assert (=> d!1329115 (=> (not res!1817520) (not e!2742953))))

(declare-fun lt!1609687 () ListMap!2513)

(assert (=> d!1329115 (= res!1817520 (contains!11733 lt!1609687 (_1!27765 lt!1609315)))))

(declare-fun lt!1609690 () List!49444)

(assert (=> d!1329115 (= lt!1609687 (ListMap!2514 lt!1609690))))

(declare-fun lt!1609688 () Unit!79313)

(declare-fun lt!1609689 () Unit!79313)

(assert (=> d!1329115 (= lt!1609688 lt!1609689)))

(assert (=> d!1329115 (= (getValueByKey!619 lt!1609690 (_1!27765 lt!1609315)) (Some!10632 (_2!27765 lt!1609315)))))

(assert (=> d!1329115 (= lt!1609689 (lemmaContainsTupThenGetReturnValue!364 lt!1609690 (_1!27765 lt!1609315) (_2!27765 lt!1609315)))))

(assert (=> d!1329115 (= lt!1609690 (insertNoDuplicatedKeys!158 (toList!3270 lt!1609301) (_1!27765 lt!1609315) (_2!27765 lt!1609315)))))

(assert (=> d!1329115 (= (+!901 lt!1609301 lt!1609315) lt!1609687)))

(declare-fun b!4405070 () Bool)

(declare-fun res!1817519 () Bool)

(assert (=> b!4405070 (=> (not res!1817519) (not e!2742953))))

(assert (=> b!4405070 (= res!1817519 (= (getValueByKey!619 (toList!3270 lt!1609687) (_1!27765 lt!1609315)) (Some!10632 (_2!27765 lt!1609315))))))

(declare-fun b!4405071 () Bool)

(assert (=> b!4405071 (= e!2742953 (contains!11737 (toList!3270 lt!1609687) lt!1609315))))

(assert (= (and d!1329115 res!1817520) b!4405070))

(assert (= (and b!4405070 res!1817519) b!4405071))

(declare-fun m!5071173 () Bool)

(assert (=> d!1329115 m!5071173))

(declare-fun m!5071175 () Bool)

(assert (=> d!1329115 m!5071175))

(declare-fun m!5071177 () Bool)

(assert (=> d!1329115 m!5071177))

(declare-fun m!5071179 () Bool)

(assert (=> d!1329115 m!5071179))

(declare-fun m!5071181 () Bool)

(assert (=> b!4405070 m!5071181))

(declare-fun m!5071183 () Bool)

(assert (=> b!4405071 m!5071183))

(assert (=> b!4404783 d!1329115))

(declare-fun bs!730377 () Bool)

(declare-fun d!1329117 () Bool)

(assert (= bs!730377 (and d!1329117 start!428616)))

(declare-fun lambda!149866 () Int)

(assert (=> bs!730377 (= lambda!149866 lambda!149763)))

(declare-fun bs!730378 () Bool)

(assert (= bs!730378 (and d!1329117 d!1328971)))

(assert (=> bs!730378 (not (= lambda!149866 lambda!149769))))

(declare-fun bs!730379 () Bool)

(assert (= bs!730379 (and d!1329117 d!1329105)))

(assert (=> bs!730379 (= lambda!149866 lambda!149858)))

(declare-fun bs!730380 () Bool)

(assert (= bs!730380 (and d!1329117 d!1329109)))

(assert (=> bs!730380 (= lambda!149866 lambda!149861)))

(declare-fun lt!1609691 () ListMap!2513)

(assert (=> d!1329117 (invariantList!760 (toList!3270 lt!1609691))))

(declare-fun e!2742954 () ListMap!2513)

(assert (=> d!1329117 (= lt!1609691 e!2742954)))

(declare-fun c!750019 () Bool)

(assert (=> d!1329117 (= c!750019 ((_ is Cons!49321) (t!356379 (toList!3269 lm!1707))))))

(assert (=> d!1329117 (forall!9396 (t!356379 (toList!3269 lm!1707)) lambda!149866)))

(assert (=> d!1329117 (= (extractMap!702 (t!356379 (toList!3269 lm!1707))) lt!1609691)))

(declare-fun b!4405072 () Bool)

(assert (=> b!4405072 (= e!2742954 (addToMapMapFromBucket!309 (_2!27766 (h!54956 (t!356379 (toList!3269 lm!1707)))) (extractMap!702 (t!356379 (t!356379 (toList!3269 lm!1707))))))))

(declare-fun b!4405073 () Bool)

(assert (=> b!4405073 (= e!2742954 (ListMap!2514 Nil!49320))))

(assert (= (and d!1329117 c!750019) b!4405072))

(assert (= (and d!1329117 (not c!750019)) b!4405073))

(declare-fun m!5071185 () Bool)

(assert (=> d!1329117 m!5071185))

(declare-fun m!5071187 () Bool)

(assert (=> d!1329117 m!5071187))

(declare-fun m!5071189 () Bool)

(assert (=> b!4405072 m!5071189))

(assert (=> b!4405072 m!5071189))

(declare-fun m!5071191 () Bool)

(assert (=> b!4405072 m!5071191))

(assert (=> b!4404783 d!1329117))

(declare-fun bs!730381 () Bool)

(declare-fun d!1329119 () Bool)

(assert (= bs!730381 (and d!1329119 d!1329117)))

(declare-fun lambda!149867 () Int)

(assert (=> bs!730381 (= lambda!149867 lambda!149866)))

(declare-fun bs!730382 () Bool)

(assert (= bs!730382 (and d!1329119 d!1328971)))

(assert (=> bs!730382 (not (= lambda!149867 lambda!149769))))

(declare-fun bs!730383 () Bool)

(assert (= bs!730383 (and d!1329119 d!1329109)))

(assert (=> bs!730383 (= lambda!149867 lambda!149861)))

(declare-fun bs!730384 () Bool)

(assert (= bs!730384 (and d!1329119 start!428616)))

(assert (=> bs!730384 (= lambda!149867 lambda!149763)))

(declare-fun bs!730385 () Bool)

(assert (= bs!730385 (and d!1329119 d!1329105)))

(assert (=> bs!730385 (= lambda!149867 lambda!149858)))

(declare-fun lt!1609692 () ListMap!2513)

(assert (=> d!1329119 (invariantList!760 (toList!3270 lt!1609692))))

(declare-fun e!2742955 () ListMap!2513)

(assert (=> d!1329119 (= lt!1609692 e!2742955)))

(declare-fun c!750020 () Bool)

(assert (=> d!1329119 (= c!750020 ((_ is Cons!49321) (toList!3269 (+!902 lt!1609316 lt!1609300))))))

(assert (=> d!1329119 (forall!9396 (toList!3269 (+!902 lt!1609316 lt!1609300)) lambda!149867)))

(assert (=> d!1329119 (= (extractMap!702 (toList!3269 (+!902 lt!1609316 lt!1609300))) lt!1609692)))

(declare-fun b!4405074 () Bool)

(assert (=> b!4405074 (= e!2742955 (addToMapMapFromBucket!309 (_2!27766 (h!54956 (toList!3269 (+!902 lt!1609316 lt!1609300)))) (extractMap!702 (t!356379 (toList!3269 (+!902 lt!1609316 lt!1609300))))))))

(declare-fun b!4405075 () Bool)

(assert (=> b!4405075 (= e!2742955 (ListMap!2514 Nil!49320))))

(assert (= (and d!1329119 c!750020) b!4405074))

(assert (= (and d!1329119 (not c!750020)) b!4405075))

(declare-fun m!5071193 () Bool)

(assert (=> d!1329119 m!5071193))

(declare-fun m!5071195 () Bool)

(assert (=> d!1329119 m!5071195))

(declare-fun m!5071197 () Bool)

(assert (=> b!4405074 m!5071197))

(assert (=> b!4405074 m!5071197))

(declare-fun m!5071199 () Bool)

(assert (=> b!4405074 m!5071199))

(assert (=> b!4404783 d!1329119))

(declare-fun bs!730386 () Bool)

(declare-fun d!1329121 () Bool)

(assert (= bs!730386 (and d!1329121 d!1329117)))

(declare-fun lambda!149870 () Int)

(assert (=> bs!730386 (= lambda!149870 lambda!149866)))

(declare-fun bs!730387 () Bool)

(assert (= bs!730387 (and d!1329121 d!1329109)))

(assert (=> bs!730387 (= lambda!149870 lambda!149861)))

(declare-fun bs!730388 () Bool)

(assert (= bs!730388 (and d!1329121 start!428616)))

(assert (=> bs!730388 (= lambda!149870 lambda!149763)))

(declare-fun bs!730389 () Bool)

(assert (= bs!730389 (and d!1329121 d!1329105)))

(assert (=> bs!730389 (= lambda!149870 lambda!149858)))

(declare-fun bs!730390 () Bool)

(assert (= bs!730390 (and d!1329121 d!1328971)))

(assert (=> bs!730390 (not (= lambda!149870 lambda!149769))))

(declare-fun bs!730391 () Bool)

(assert (= bs!730391 (and d!1329121 d!1329119)))

(assert (=> bs!730391 (= lambda!149870 lambda!149867)))

(assert (=> d!1329121 (not (containsKey!969 (apply!11495 lm!1707 (_1!27766 (h!54956 (toList!3269 lm!1707)))) key!3918))))

(declare-fun lt!1609695 () Unit!79313)

(declare-fun choose!27697 (ListLongMap!1919 K!10675 (_ BitVec 64) Hashable!5035) Unit!79313)

(assert (=> d!1329121 (= lt!1609695 (choose!27697 lm!1707 key!3918 (_1!27766 (h!54956 (toList!3269 lm!1707))) hashF!1247))))

(assert (=> d!1329121 (forall!9396 (toList!3269 lm!1707) lambda!149870)))

(assert (=> d!1329121 (= (lemmaNotSameHashThenCannotContainKey!114 lm!1707 key!3918 (_1!27766 (h!54956 (toList!3269 lm!1707))) hashF!1247) lt!1609695)))

(declare-fun bs!730392 () Bool)

(assert (= bs!730392 d!1329121))

(assert (=> bs!730392 m!5070543))

(assert (=> bs!730392 m!5070543))

(assert (=> bs!730392 m!5070545))

(declare-fun m!5071201 () Bool)

(assert (=> bs!730392 m!5071201))

(declare-fun m!5071203 () Bool)

(assert (=> bs!730392 m!5071203))

(assert (=> b!4404783 d!1329121))

(declare-fun b!4405076 () Bool)

(declare-fun e!2742958 () Bool)

(declare-fun e!2742957 () Bool)

(assert (=> b!4405076 (= e!2742958 e!2742957)))

(declare-fun res!1817522 () Bool)

(assert (=> b!4405076 (=> (not res!1817522) (not e!2742957))))

(assert (=> b!4405076 (= res!1817522 (isDefined!7924 (getValueByKey!619 (toList!3270 lt!1609313) key!3918)))))

(declare-fun bm!306567 () Bool)

(declare-fun call!306572 () Bool)

(declare-fun e!2742956 () List!49447)

(assert (=> bm!306567 (= call!306572 (contains!11739 e!2742956 key!3918))))

(declare-fun c!750023 () Bool)

(declare-fun c!750022 () Bool)

(assert (=> bm!306567 (= c!750023 c!750022)))

(declare-fun b!4405077 () Bool)

(assert (=> b!4405077 (= e!2742956 (getKeysList!207 (toList!3270 lt!1609313)))))

(declare-fun b!4405078 () Bool)

(assert (=> b!4405078 (= e!2742957 (contains!11739 (keys!16773 lt!1609313) key!3918))))

(declare-fun b!4405079 () Bool)

(declare-fun e!2742959 () Bool)

(assert (=> b!4405079 (= e!2742959 (not (contains!11739 (keys!16773 lt!1609313) key!3918)))))

(declare-fun b!4405080 () Bool)

(assert (=> b!4405080 false))

(declare-fun lt!1609700 () Unit!79313)

(declare-fun lt!1609701 () Unit!79313)

(assert (=> b!4405080 (= lt!1609700 lt!1609701)))

(assert (=> b!4405080 (containsKey!971 (toList!3270 lt!1609313) key!3918)))

(assert (=> b!4405080 (= lt!1609701 (lemmaInGetKeysListThenContainsKey!205 (toList!3270 lt!1609313) key!3918))))

(declare-fun e!2742961 () Unit!79313)

(declare-fun Unit!79368 () Unit!79313)

(assert (=> b!4405080 (= e!2742961 Unit!79368)))

(declare-fun b!4405081 () Bool)

(declare-fun e!2742960 () Unit!79313)

(assert (=> b!4405081 (= e!2742960 e!2742961)))

(declare-fun c!750021 () Bool)

(assert (=> b!4405081 (= c!750021 call!306572)))

(declare-fun d!1329123 () Bool)

(assert (=> d!1329123 e!2742958))

(declare-fun res!1817521 () Bool)

(assert (=> d!1329123 (=> res!1817521 e!2742958)))

(assert (=> d!1329123 (= res!1817521 e!2742959)))

(declare-fun res!1817523 () Bool)

(assert (=> d!1329123 (=> (not res!1817523) (not e!2742959))))

(declare-fun lt!1609703 () Bool)

(assert (=> d!1329123 (= res!1817523 (not lt!1609703))))

(declare-fun lt!1609702 () Bool)

(assert (=> d!1329123 (= lt!1609703 lt!1609702)))

(declare-fun lt!1609699 () Unit!79313)

(assert (=> d!1329123 (= lt!1609699 e!2742960)))

(assert (=> d!1329123 (= c!750022 lt!1609702)))

(assert (=> d!1329123 (= lt!1609702 (containsKey!971 (toList!3270 lt!1609313) key!3918))))

(assert (=> d!1329123 (= (contains!11733 lt!1609313 key!3918) lt!1609703)))

(declare-fun b!4405082 () Bool)

(assert (=> b!4405082 (= e!2742956 (keys!16773 lt!1609313))))

(declare-fun b!4405083 () Bool)

(declare-fun Unit!79369 () Unit!79313)

(assert (=> b!4405083 (= e!2742961 Unit!79369)))

(declare-fun b!4405084 () Bool)

(declare-fun lt!1609696 () Unit!79313)

(assert (=> b!4405084 (= e!2742960 lt!1609696)))

(declare-fun lt!1609698 () Unit!79313)

(assert (=> b!4405084 (= lt!1609698 (lemmaContainsKeyImpliesGetValueByKeyDefined!527 (toList!3270 lt!1609313) key!3918))))

(assert (=> b!4405084 (isDefined!7924 (getValueByKey!619 (toList!3270 lt!1609313) key!3918))))

(declare-fun lt!1609697 () Unit!79313)

(assert (=> b!4405084 (= lt!1609697 lt!1609698)))

(assert (=> b!4405084 (= lt!1609696 (lemmaInListThenGetKeysListContains!204 (toList!3270 lt!1609313) key!3918))))

(assert (=> b!4405084 call!306572))

(assert (= (and d!1329123 c!750022) b!4405084))

(assert (= (and d!1329123 (not c!750022)) b!4405081))

(assert (= (and b!4405081 c!750021) b!4405080))

(assert (= (and b!4405081 (not c!750021)) b!4405083))

(assert (= (or b!4405084 b!4405081) bm!306567))

(assert (= (and bm!306567 c!750023) b!4405077))

(assert (= (and bm!306567 (not c!750023)) b!4405082))

(assert (= (and d!1329123 res!1817523) b!4405079))

(assert (= (and d!1329123 (not res!1817521)) b!4405076))

(assert (= (and b!4405076 res!1817522) b!4405078))

(declare-fun m!5071205 () Bool)

(assert (=> b!4405076 m!5071205))

(assert (=> b!4405076 m!5071205))

(declare-fun m!5071207 () Bool)

(assert (=> b!4405076 m!5071207))

(declare-fun m!5071209 () Bool)

(assert (=> b!4405078 m!5071209))

(assert (=> b!4405078 m!5071209))

(declare-fun m!5071211 () Bool)

(assert (=> b!4405078 m!5071211))

(declare-fun m!5071213 () Bool)

(assert (=> b!4405080 m!5071213))

(declare-fun m!5071215 () Bool)

(assert (=> b!4405080 m!5071215))

(assert (=> b!4405082 m!5071209))

(declare-fun m!5071217 () Bool)

(assert (=> b!4405077 m!5071217))

(assert (=> b!4405079 m!5071209))

(assert (=> b!4405079 m!5071209))

(assert (=> b!4405079 m!5071211))

(declare-fun m!5071219 () Bool)

(assert (=> b!4405084 m!5071219))

(assert (=> b!4405084 m!5071205))

(assert (=> b!4405084 m!5071205))

(assert (=> b!4405084 m!5071207))

(declare-fun m!5071221 () Bool)

(assert (=> b!4405084 m!5071221))

(declare-fun m!5071223 () Bool)

(assert (=> bm!306567 m!5071223))

(assert (=> d!1329123 m!5071213))

(assert (=> b!4404783 d!1329123))

(declare-fun d!1329125 () Bool)

(assert (=> d!1329125 (= (apply!11495 lm!1707 hash!377) (get!16060 (getValueByKey!618 (toList!3269 lm!1707) hash!377)))))

(declare-fun bs!730393 () Bool)

(assert (= bs!730393 d!1329125))

(declare-fun m!5071225 () Bool)

(assert (=> bs!730393 m!5071225))

(assert (=> bs!730393 m!5071225))

(declare-fun m!5071227 () Bool)

(assert (=> bs!730393 m!5071227))

(assert (=> b!4404785 d!1329125))

(declare-fun d!1329127 () Bool)

(declare-fun lt!1609706 () Bool)

(declare-fun content!7894 (List!49445) (InoxSet tuple2!48944))

(assert (=> d!1329127 (= lt!1609706 (select (content!7894 (toList!3269 lm!1707)) lt!1609309))))

(declare-fun e!2742966 () Bool)

(assert (=> d!1329127 (= lt!1609706 e!2742966)))

(declare-fun res!1817528 () Bool)

(assert (=> d!1329127 (=> (not res!1817528) (not e!2742966))))

(assert (=> d!1329127 (= res!1817528 ((_ is Cons!49321) (toList!3269 lm!1707)))))

(assert (=> d!1329127 (= (contains!11734 (toList!3269 lm!1707) lt!1609309) lt!1609706)))

(declare-fun b!4405089 () Bool)

(declare-fun e!2742967 () Bool)

(assert (=> b!4405089 (= e!2742966 e!2742967)))

(declare-fun res!1817529 () Bool)

(assert (=> b!4405089 (=> res!1817529 e!2742967)))

(assert (=> b!4405089 (= res!1817529 (= (h!54956 (toList!3269 lm!1707)) lt!1609309))))

(declare-fun b!4405090 () Bool)

(assert (=> b!4405090 (= e!2742967 (contains!11734 (t!356379 (toList!3269 lm!1707)) lt!1609309))))

(assert (= (and d!1329127 res!1817528) b!4405089))

(assert (= (and b!4405089 (not res!1817529)) b!4405090))

(declare-fun m!5071229 () Bool)

(assert (=> d!1329127 m!5071229))

(declare-fun m!5071231 () Bool)

(assert (=> d!1329127 m!5071231))

(declare-fun m!5071233 () Bool)

(assert (=> b!4405090 m!5071233))

(assert (=> b!4404785 d!1329127))

(declare-fun d!1329129 () Bool)

(assert (=> d!1329129 (dynLambda!20778 lambda!149763 lt!1609309)))

(declare-fun lt!1609709 () Unit!79313)

(declare-fun choose!27698 (List!49445 Int tuple2!48944) Unit!79313)

(assert (=> d!1329129 (= lt!1609709 (choose!27698 (toList!3269 lm!1707) lambda!149763 lt!1609309))))

(declare-fun e!2742970 () Bool)

(assert (=> d!1329129 e!2742970))

(declare-fun res!1817532 () Bool)

(assert (=> d!1329129 (=> (not res!1817532) (not e!2742970))))

(assert (=> d!1329129 (= res!1817532 (forall!9396 (toList!3269 lm!1707) lambda!149763))))

(assert (=> d!1329129 (= (forallContained!2031 (toList!3269 lm!1707) lambda!149763 lt!1609309) lt!1609709)))

(declare-fun b!4405093 () Bool)

(assert (=> b!4405093 (= e!2742970 (contains!11734 (toList!3269 lm!1707) lt!1609309))))

(assert (= (and d!1329129 res!1817532) b!4405093))

(declare-fun b_lambda!140269 () Bool)

(assert (=> (not b_lambda!140269) (not d!1329129)))

(declare-fun m!5071235 () Bool)

(assert (=> d!1329129 m!5071235))

(declare-fun m!5071237 () Bool)

(assert (=> d!1329129 m!5071237))

(assert (=> d!1329129 m!5070563))

(assert (=> b!4405093 m!5070575))

(assert (=> b!4404785 d!1329129))

(declare-fun d!1329131 () Bool)

(assert (=> d!1329131 (contains!11734 (toList!3269 lm!1707) (tuple2!48945 hash!377 lt!1609302))))

(declare-fun lt!1609712 () Unit!79313)

(declare-fun choose!27699 (List!49445 (_ BitVec 64) List!49444) Unit!79313)

(assert (=> d!1329131 (= lt!1609712 (choose!27699 (toList!3269 lm!1707) hash!377 lt!1609302))))

(declare-fun e!2742973 () Bool)

(assert (=> d!1329131 e!2742973))

(declare-fun res!1817535 () Bool)

(assert (=> d!1329131 (=> (not res!1817535) (not e!2742973))))

(declare-fun isStrictlySorted!186 (List!49445) Bool)

(assert (=> d!1329131 (= res!1817535 (isStrictlySorted!186 (toList!3269 lm!1707)))))

(assert (=> d!1329131 (= (lemmaGetValueByKeyImpliesContainsTuple!488 (toList!3269 lm!1707) hash!377 lt!1609302) lt!1609712)))

(declare-fun b!4405096 () Bool)

(assert (=> b!4405096 (= e!2742973 (= (getValueByKey!618 (toList!3269 lm!1707) hash!377) (Some!10631 lt!1609302)))))

(assert (= (and d!1329131 res!1817535) b!4405096))

(declare-fun m!5071239 () Bool)

(assert (=> d!1329131 m!5071239))

(declare-fun m!5071241 () Bool)

(assert (=> d!1329131 m!5071241))

(declare-fun m!5071243 () Bool)

(assert (=> d!1329131 m!5071243))

(assert (=> b!4405096 m!5071225))

(assert (=> b!4404785 d!1329131))

(declare-fun d!1329133 () Bool)

(declare-fun lt!1609715 () List!49444)

(assert (=> d!1329133 (not (containsKey!969 lt!1609715 key!3918))))

(declare-fun e!2742978 () List!49444)

(assert (=> d!1329133 (= lt!1609715 e!2742978)))

(declare-fun c!750029 () Bool)

(assert (=> d!1329133 (= c!750029 (and ((_ is Cons!49320) lt!1609302) (= (_1!27765 (h!54955 lt!1609302)) key!3918)))))

(assert (=> d!1329133 (noDuplicateKeys!643 lt!1609302)))

(assert (=> d!1329133 (= (removePairForKey!611 lt!1609302 key!3918) lt!1609715)))

(declare-fun b!4405107 () Bool)

(declare-fun e!2742979 () List!49444)

(assert (=> b!4405107 (= e!2742979 (Cons!49320 (h!54955 lt!1609302) (removePairForKey!611 (t!356378 lt!1609302) key!3918)))))

(declare-fun b!4405105 () Bool)

(assert (=> b!4405105 (= e!2742978 (t!356378 lt!1609302))))

(declare-fun b!4405108 () Bool)

(assert (=> b!4405108 (= e!2742979 Nil!49320)))

(declare-fun b!4405106 () Bool)

(assert (=> b!4405106 (= e!2742978 e!2742979)))

(declare-fun c!750028 () Bool)

(assert (=> b!4405106 (= c!750028 ((_ is Cons!49320) lt!1609302))))

(assert (= (and d!1329133 c!750029) b!4405105))

(assert (= (and d!1329133 (not c!750029)) b!4405106))

(assert (= (and b!4405106 c!750028) b!4405107))

(assert (= (and b!4405106 (not c!750028)) b!4405108))

(declare-fun m!5071245 () Bool)

(assert (=> d!1329133 m!5071245))

(declare-fun m!5071247 () Bool)

(assert (=> d!1329133 m!5071247))

(declare-fun m!5071249 () Bool)

(assert (=> b!4405107 m!5071249))

(assert (=> b!4404785 d!1329133))

(declare-fun b!4405109 () Bool)

(declare-fun e!2742982 () Bool)

(declare-fun e!2742981 () Bool)

(assert (=> b!4405109 (= e!2742982 e!2742981)))

(declare-fun res!1817537 () Bool)

(assert (=> b!4405109 (=> (not res!1817537) (not e!2742981))))

(assert (=> b!4405109 (= res!1817537 (isDefined!7924 (getValueByKey!619 (toList!3270 lt!1609317) key!3918)))))

(declare-fun bm!306568 () Bool)

(declare-fun call!306573 () Bool)

(declare-fun e!2742980 () List!49447)

(assert (=> bm!306568 (= call!306573 (contains!11739 e!2742980 key!3918))))

(declare-fun c!750032 () Bool)

(declare-fun c!750031 () Bool)

(assert (=> bm!306568 (= c!750032 c!750031)))

(declare-fun b!4405110 () Bool)

(assert (=> b!4405110 (= e!2742980 (getKeysList!207 (toList!3270 lt!1609317)))))

(declare-fun b!4405111 () Bool)

(assert (=> b!4405111 (= e!2742981 (contains!11739 (keys!16773 lt!1609317) key!3918))))

(declare-fun b!4405112 () Bool)

(declare-fun e!2742983 () Bool)

(assert (=> b!4405112 (= e!2742983 (not (contains!11739 (keys!16773 lt!1609317) key!3918)))))

(declare-fun b!4405113 () Bool)

(assert (=> b!4405113 false))

(declare-fun lt!1609720 () Unit!79313)

(declare-fun lt!1609721 () Unit!79313)

(assert (=> b!4405113 (= lt!1609720 lt!1609721)))

(assert (=> b!4405113 (containsKey!971 (toList!3270 lt!1609317) key!3918)))

(assert (=> b!4405113 (= lt!1609721 (lemmaInGetKeysListThenContainsKey!205 (toList!3270 lt!1609317) key!3918))))

(declare-fun e!2742985 () Unit!79313)

(declare-fun Unit!79370 () Unit!79313)

(assert (=> b!4405113 (= e!2742985 Unit!79370)))

(declare-fun b!4405114 () Bool)

(declare-fun e!2742984 () Unit!79313)

(assert (=> b!4405114 (= e!2742984 e!2742985)))

(declare-fun c!750030 () Bool)

(assert (=> b!4405114 (= c!750030 call!306573)))

(declare-fun d!1329135 () Bool)

(assert (=> d!1329135 e!2742982))

(declare-fun res!1817536 () Bool)

(assert (=> d!1329135 (=> res!1817536 e!2742982)))

(assert (=> d!1329135 (= res!1817536 e!2742983)))

(declare-fun res!1817538 () Bool)

(assert (=> d!1329135 (=> (not res!1817538) (not e!2742983))))

(declare-fun lt!1609723 () Bool)

(assert (=> d!1329135 (= res!1817538 (not lt!1609723))))

(declare-fun lt!1609722 () Bool)

(assert (=> d!1329135 (= lt!1609723 lt!1609722)))

(declare-fun lt!1609719 () Unit!79313)

(assert (=> d!1329135 (= lt!1609719 e!2742984)))

(assert (=> d!1329135 (= c!750031 lt!1609722)))

(assert (=> d!1329135 (= lt!1609722 (containsKey!971 (toList!3270 lt!1609317) key!3918))))

(assert (=> d!1329135 (= (contains!11733 lt!1609317 key!3918) lt!1609723)))

(declare-fun b!4405115 () Bool)

(assert (=> b!4405115 (= e!2742980 (keys!16773 lt!1609317))))

(declare-fun b!4405116 () Bool)

(declare-fun Unit!79371 () Unit!79313)

(assert (=> b!4405116 (= e!2742985 Unit!79371)))

(declare-fun b!4405117 () Bool)

(declare-fun lt!1609716 () Unit!79313)

(assert (=> b!4405117 (= e!2742984 lt!1609716)))

(declare-fun lt!1609718 () Unit!79313)

(assert (=> b!4405117 (= lt!1609718 (lemmaContainsKeyImpliesGetValueByKeyDefined!527 (toList!3270 lt!1609317) key!3918))))

(assert (=> b!4405117 (isDefined!7924 (getValueByKey!619 (toList!3270 lt!1609317) key!3918))))

(declare-fun lt!1609717 () Unit!79313)

(assert (=> b!4405117 (= lt!1609717 lt!1609718)))

(assert (=> b!4405117 (= lt!1609716 (lemmaInListThenGetKeysListContains!204 (toList!3270 lt!1609317) key!3918))))

(assert (=> b!4405117 call!306573))

(assert (= (and d!1329135 c!750031) b!4405117))

(assert (= (and d!1329135 (not c!750031)) b!4405114))

(assert (= (and b!4405114 c!750030) b!4405113))

(assert (= (and b!4405114 (not c!750030)) b!4405116))

(assert (= (or b!4405117 b!4405114) bm!306568))

(assert (= (and bm!306568 c!750032) b!4405110))

(assert (= (and bm!306568 (not c!750032)) b!4405115))

(assert (= (and d!1329135 res!1817538) b!4405112))

(assert (= (and d!1329135 (not res!1817536)) b!4405109))

(assert (= (and b!4405109 res!1817537) b!4405111))

(declare-fun m!5071251 () Bool)

(assert (=> b!4405109 m!5071251))

(assert (=> b!4405109 m!5071251))

(declare-fun m!5071253 () Bool)

(assert (=> b!4405109 m!5071253))

(declare-fun m!5071255 () Bool)

(assert (=> b!4405111 m!5071255))

(assert (=> b!4405111 m!5071255))

(declare-fun m!5071257 () Bool)

(assert (=> b!4405111 m!5071257))

(declare-fun m!5071259 () Bool)

(assert (=> b!4405113 m!5071259))

(declare-fun m!5071261 () Bool)

(assert (=> b!4405113 m!5071261))

(assert (=> b!4405115 m!5071255))

(declare-fun m!5071263 () Bool)

(assert (=> b!4405110 m!5071263))

(assert (=> b!4405112 m!5071255))

(assert (=> b!4405112 m!5071255))

(assert (=> b!4405112 m!5071257))

(declare-fun m!5071265 () Bool)

(assert (=> b!4405117 m!5071265))

(assert (=> b!4405117 m!5071251))

(assert (=> b!4405117 m!5071251))

(assert (=> b!4405117 m!5071253))

(declare-fun m!5071267 () Bool)

(assert (=> b!4405117 m!5071267))

(declare-fun m!5071269 () Bool)

(assert (=> bm!306568 m!5071269))

(assert (=> d!1329135 m!5071259))

(assert (=> b!4404784 d!1329135))

(declare-fun bs!730394 () Bool)

(declare-fun d!1329137 () Bool)

(assert (= bs!730394 (and d!1329137 d!1329117)))

(declare-fun lambda!149871 () Int)

(assert (=> bs!730394 (= lambda!149871 lambda!149866)))

(declare-fun bs!730395 () Bool)

(assert (= bs!730395 (and d!1329137 d!1329109)))

(assert (=> bs!730395 (= lambda!149871 lambda!149861)))

(declare-fun bs!730396 () Bool)

(assert (= bs!730396 (and d!1329137 d!1329121)))

(assert (=> bs!730396 (= lambda!149871 lambda!149870)))

(declare-fun bs!730397 () Bool)

(assert (= bs!730397 (and d!1329137 start!428616)))

(assert (=> bs!730397 (= lambda!149871 lambda!149763)))

(declare-fun bs!730398 () Bool)

(assert (= bs!730398 (and d!1329137 d!1329105)))

(assert (=> bs!730398 (= lambda!149871 lambda!149858)))

(declare-fun bs!730399 () Bool)

(assert (= bs!730399 (and d!1329137 d!1328971)))

(assert (=> bs!730399 (not (= lambda!149871 lambda!149769))))

(declare-fun bs!730400 () Bool)

(assert (= bs!730400 (and d!1329137 d!1329119)))

(assert (=> bs!730400 (= lambda!149871 lambda!149867)))

(declare-fun lt!1609724 () ListMap!2513)

(assert (=> d!1329137 (invariantList!760 (toList!3270 lt!1609724))))

(declare-fun e!2742986 () ListMap!2513)

(assert (=> d!1329137 (= lt!1609724 e!2742986)))

(declare-fun c!750033 () Bool)

(assert (=> d!1329137 (= c!750033 ((_ is Cons!49321) (toList!3269 lm!1707)))))

(assert (=> d!1329137 (forall!9396 (toList!3269 lm!1707) lambda!149871)))

(assert (=> d!1329137 (= (extractMap!702 (toList!3269 lm!1707)) lt!1609724)))

(declare-fun b!4405118 () Bool)

(assert (=> b!4405118 (= e!2742986 (addToMapMapFromBucket!309 (_2!27766 (h!54956 (toList!3269 lm!1707))) (extractMap!702 (t!356379 (toList!3269 lm!1707)))))))

(declare-fun b!4405119 () Bool)

(assert (=> b!4405119 (= e!2742986 (ListMap!2514 Nil!49320))))

(assert (= (and d!1329137 c!750033) b!4405118))

(assert (= (and d!1329137 (not c!750033)) b!4405119))

(declare-fun m!5071271 () Bool)

(assert (=> d!1329137 m!5071271))

(declare-fun m!5071273 () Bool)

(assert (=> d!1329137 m!5071273))

(assert (=> b!4405118 m!5070535))

(assert (=> b!4405118 m!5070535))

(declare-fun m!5071275 () Bool)

(assert (=> b!4405118 m!5071275))

(assert (=> b!4404784 d!1329137))

(declare-fun d!1329139 () Bool)

(declare-fun res!1817539 () Bool)

(declare-fun e!2742987 () Bool)

(assert (=> d!1329139 (=> res!1817539 e!2742987)))

(assert (=> d!1329139 (= res!1817539 (and ((_ is Cons!49320) (_2!27766 (h!54956 (toList!3269 lm!1707)))) (= (_1!27765 (h!54955 (_2!27766 (h!54956 (toList!3269 lm!1707))))) key!3918)))))

(assert (=> d!1329139 (= (containsKey!969 (_2!27766 (h!54956 (toList!3269 lm!1707))) key!3918) e!2742987)))

(declare-fun b!4405120 () Bool)

(declare-fun e!2742988 () Bool)

(assert (=> b!4405120 (= e!2742987 e!2742988)))

(declare-fun res!1817540 () Bool)

(assert (=> b!4405120 (=> (not res!1817540) (not e!2742988))))

(assert (=> b!4405120 (= res!1817540 ((_ is Cons!49320) (_2!27766 (h!54956 (toList!3269 lm!1707)))))))

(declare-fun b!4405121 () Bool)

(assert (=> b!4405121 (= e!2742988 (containsKey!969 (t!356378 (_2!27766 (h!54956 (toList!3269 lm!1707)))) key!3918))))

(assert (= (and d!1329139 (not res!1817539)) b!4405120))

(assert (= (and b!4405120 res!1817540) b!4405121))

(declare-fun m!5071277 () Bool)

(assert (=> b!4405121 m!5071277))

(assert (=> b!4404780 d!1329139))

(declare-fun d!1329141 () Bool)

(declare-fun hash!1927 (Hashable!5035 K!10675) (_ BitVec 64))

(assert (=> d!1329141 (= (hash!1921 hashF!1247 key!3918) (hash!1927 hashF!1247 key!3918))))

(declare-fun bs!730401 () Bool)

(assert (= bs!730401 d!1329141))

(declare-fun m!5071279 () Bool)

(assert (=> bs!730401 m!5071279))

(assert (=> b!4404782 d!1329141))

(declare-fun d!1329143 () Bool)

(declare-fun e!2742993 () Bool)

(assert (=> d!1329143 e!2742993))

(declare-fun res!1817543 () Bool)

(assert (=> d!1329143 (=> res!1817543 e!2742993)))

(declare-fun lt!1609733 () Bool)

(assert (=> d!1329143 (= res!1817543 (not lt!1609733))))

(declare-fun lt!1609736 () Bool)

(assert (=> d!1329143 (= lt!1609733 lt!1609736)))

(declare-fun lt!1609734 () Unit!79313)

(declare-fun e!2742994 () Unit!79313)

(assert (=> d!1329143 (= lt!1609734 e!2742994)))

(declare-fun c!750036 () Bool)

(assert (=> d!1329143 (= c!750036 lt!1609736)))

(declare-fun containsKey!973 (List!49445 (_ BitVec 64)) Bool)

(assert (=> d!1329143 (= lt!1609736 (containsKey!973 (toList!3269 lm!1707) hash!377))))

(assert (=> d!1329143 (= (contains!11735 lm!1707 hash!377) lt!1609733)))

(declare-fun b!4405128 () Bool)

(declare-fun lt!1609735 () Unit!79313)

(assert (=> b!4405128 (= e!2742994 lt!1609735)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!529 (List!49445 (_ BitVec 64)) Unit!79313)

(assert (=> b!4405128 (= lt!1609735 (lemmaContainsKeyImpliesGetValueByKeyDefined!529 (toList!3269 lm!1707) hash!377))))

(declare-fun isDefined!7926 (Option!10632) Bool)

(assert (=> b!4405128 (isDefined!7926 (getValueByKey!618 (toList!3269 lm!1707) hash!377))))

(declare-fun b!4405129 () Bool)

(declare-fun Unit!79372 () Unit!79313)

(assert (=> b!4405129 (= e!2742994 Unit!79372)))

(declare-fun b!4405130 () Bool)

(assert (=> b!4405130 (= e!2742993 (isDefined!7926 (getValueByKey!618 (toList!3269 lm!1707) hash!377)))))

(assert (= (and d!1329143 c!750036) b!4405128))

(assert (= (and d!1329143 (not c!750036)) b!4405129))

(assert (= (and d!1329143 (not res!1817543)) b!4405130))

(declare-fun m!5071281 () Bool)

(assert (=> d!1329143 m!5071281))

(declare-fun m!5071283 () Bool)

(assert (=> b!4405128 m!5071283))

(assert (=> b!4405128 m!5071225))

(assert (=> b!4405128 m!5071225))

(declare-fun m!5071285 () Bool)

(assert (=> b!4405128 m!5071285))

(assert (=> b!4405130 m!5071225))

(assert (=> b!4405130 m!5071225))

(assert (=> b!4405130 m!5071285))

(assert (=> b!4404792 d!1329143))

(assert (=> start!428616 d!1328999))

(declare-fun d!1329145 () Bool)

(assert (=> d!1329145 (= (inv!64861 lm!1707) (isStrictlySorted!186 (toList!3269 lm!1707)))))

(declare-fun bs!730402 () Bool)

(assert (= bs!730402 d!1329145))

(assert (=> bs!730402 m!5071243))

(assert (=> start!428616 d!1329145))

(declare-fun b!4405135 () Bool)

(declare-fun e!2742997 () Bool)

(declare-fun tp!1332034 () Bool)

(assert (=> b!4405135 (= e!2742997 (and tp_is_empty!25809 tp_is_empty!25811 tp!1332034))))

(assert (=> b!4404781 (= tp!1332022 e!2742997)))

(assert (= (and b!4404781 ((_ is Cons!49320) (t!356378 newBucket!200))) b!4405135))

(declare-fun b!4405140 () Bool)

(declare-fun e!2743000 () Bool)

(declare-fun tp!1332039 () Bool)

(declare-fun tp!1332040 () Bool)

(assert (=> b!4405140 (= e!2743000 (and tp!1332039 tp!1332040))))

(assert (=> b!4404791 (= tp!1332021 e!2743000)))

(assert (= (and b!4404791 ((_ is Cons!49321) (toList!3269 lm!1707))) b!4405140))

(declare-fun b_lambda!140271 () Bool)

(assert (= b_lambda!140247 (or start!428616 b_lambda!140271)))

(declare-fun bs!730403 () Bool)

(declare-fun d!1329147 () Bool)

(assert (= bs!730403 (and d!1329147 start!428616)))

(assert (=> bs!730403 (= (dynLambda!20778 lambda!149763 (h!54956 (toList!3269 lt!1609308))) (noDuplicateKeys!643 (_2!27766 (h!54956 (toList!3269 lt!1609308)))))))

(declare-fun m!5071287 () Bool)

(assert (=> bs!730403 m!5071287))

(assert (=> b!4404830 d!1329147))

(declare-fun b_lambda!140273 () Bool)

(assert (= b_lambda!140255 (or start!428616 b_lambda!140273)))

(declare-fun bs!730404 () Bool)

(declare-fun d!1329149 () Bool)

(assert (= bs!730404 (and d!1329149 start!428616)))

(assert (=> bs!730404 (= (dynLambda!20778 lambda!149763 (tuple2!48945 hash!377 newBucket!200)) (noDuplicateKeys!643 (_2!27766 (tuple2!48945 hash!377 newBucket!200))))))

(declare-fun m!5071289 () Bool)

(assert (=> bs!730404 m!5071289))

(assert (=> b!4404884 d!1329149))

(declare-fun b_lambda!140275 () Bool)

(assert (= b_lambda!140269 (or start!428616 b_lambda!140275)))

(declare-fun bs!730405 () Bool)

(declare-fun d!1329151 () Bool)

(assert (= bs!730405 (and d!1329151 start!428616)))

(assert (=> bs!730405 (= (dynLambda!20778 lambda!149763 lt!1609309) (noDuplicateKeys!643 (_2!27766 lt!1609309)))))

(declare-fun m!5071291 () Bool)

(assert (=> bs!730405 m!5071291))

(assert (=> d!1329129 d!1329151))

(declare-fun b_lambda!140277 () Bool)

(assert (= b_lambda!140257 (or start!428616 b_lambda!140277)))

(declare-fun bs!730406 () Bool)

(declare-fun d!1329153 () Bool)

(assert (= bs!730406 (and d!1329153 start!428616)))

(assert (=> bs!730406 (= (dynLambda!20778 lambda!149763 (h!54956 (toList!3269 lm!1707))) (noDuplicateKeys!643 (_2!27766 (h!54956 (toList!3269 lm!1707)))))))

(assert (=> bs!730406 m!5070585))

(assert (=> b!4404885 d!1329153))

(check-sat (not b!4405109) (not b_lambda!140273) (not bs!730404) (not b!4404831) (not bm!306568) (not d!1329119) (not b!4404870) (not d!1329029) (not b!4405072) (not bm!306561) (not bm!306553) (not b!4404960) (not d!1329133) (not b_lambda!140275) (not b!4404895) (not b!4405093) (not d!1329115) (not bm!306563) (not b!4405052) (not d!1329021) (not d!1329107) (not b!4405117) (not d!1329025) (not b!4405118) (not b!4405107) (not b!4405111) (not d!1329009) (not b!4405076) (not d!1329105) (not b!4405080) (not d!1329129) tp_is_empty!25809 (not b!4405096) (not d!1329143) (not b!4404918) (not d!1329111) (not d!1329137) (not d!1329017) (not d!1328971) (not b!4404957) (not b!4405090) (not bs!730406) (not d!1329011) (not b!4405082) (not b!4405140) (not b!4405128) (not b!4405084) (not d!1329131) (not b!4405065) (not d!1329005) (not b_lambda!140271) (not b!4404961) (not d!1328991) (not b!4405070) (not b!4405113) (not b!4405068) (not b!4404903) (not b!4405077) (not d!1329027) (not bm!306566) (not b!4404965) (not b!4405121) (not d!1329145) (not b!4405078) (not d!1329135) (not b_lambda!140277) (not b!4404919) (not b!4404901) (not b!4405071) (not b!4404871) (not b!4405135) (not d!1329127) (not b!4404902) (not d!1329113) (not b!4404959) (not b!4405067) (not d!1329003) (not b!4404917) (not b!4405079) (not d!1329109) (not d!1329121) (not d!1329117) (not d!1329123) (not b!4404920) tp_is_empty!25811 (not d!1329041) (not b!4404886) (not b!4405074) (not bm!306562) (not d!1329001) (not bm!306565) (not b!4404896) (not b!4405115) (not b!4405110) (not d!1329043) (not b!4404958) (not b!4405054) (not b!4405130) (not d!1329141) (not d!1329019) (not bm!306567) (not bm!306564) (not d!1329031) (not d!1329013) (not d!1328977) (not b!4404963) (not b!4404916) (not b!4405063) (not bs!730403) (not bs!730405) (not d!1329125) (not b!4405112) (not b!4404904) (not b!4405055))
(check-sat)
