; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!426828 () Bool)

(assert start!426828)

(declare-fun b!4395776 () Bool)

(declare-fun res!1812408 () Bool)

(declare-fun e!2736950 () Bool)

(assert (=> b!4395776 (=> (not res!1812408) (not e!2736950))))

(declare-datatypes ((V!10846 0))(
  ( (V!10847 (val!16751 Int)) )
))
(declare-datatypes ((K!10600 0))(
  ( (K!10601 (val!16752 Int)) )
))
(declare-datatypes ((tuple2!48822 0))(
  ( (tuple2!48823 (_1!27705 K!10600) (_2!27705 V!10846)) )
))
(declare-datatypes ((List!49365 0))(
  ( (Nil!49241) (Cons!49241 (h!54856 tuple2!48822) (t!356299 List!49365)) )
))
(declare-datatypes ((tuple2!48824 0))(
  ( (tuple2!48825 (_1!27706 (_ BitVec 64)) (_2!27706 List!49365)) )
))
(declare-datatypes ((List!49366 0))(
  ( (Nil!49242) (Cons!49242 (h!54857 tuple2!48824) (t!356300 List!49366)) )
))
(declare-datatypes ((ListLongMap!1859 0))(
  ( (ListLongMap!1860 (toList!3209 List!49366)) )
))
(declare-fun lm!1707 () ListLongMap!1859)

(declare-datatypes ((Hashable!5005 0))(
  ( (HashableExt!5004 (__x!30708 Int)) )
))
(declare-fun hashF!1247 () Hashable!5005)

(declare-fun allKeysSameHashInMap!717 (ListLongMap!1859 Hashable!5005) Bool)

(assert (=> b!4395776 (= res!1812408 (allKeysSameHashInMap!717 lm!1707 hashF!1247))))

(declare-fun b!4395777 () Bool)

(declare-fun e!2736951 () Bool)

(declare-fun key!3918 () K!10600)

(declare-datatypes ((ListMap!2453 0))(
  ( (ListMap!2454 (toList!3210 List!49365)) )
))
(declare-fun contains!11616 (ListMap!2453 K!10600) Bool)

(declare-fun extractMap!672 (List!49366) ListMap!2453)

(declare-fun tail!7090 (ListLongMap!1859) ListLongMap!1859)

(assert (=> b!4395777 (= e!2736951 (contains!11616 (extractMap!672 (toList!3209 (tail!7090 lm!1707))) key!3918))))

(declare-fun lt!1602517 () ListMap!2453)

(assert (=> b!4395777 (contains!11616 lt!1602517 key!3918)))

(declare-datatypes ((Unit!78288 0))(
  ( (Unit!78289) )
))
(declare-fun lt!1602519 () Unit!78288)

(declare-fun newValue!99 () V!10846)

(declare-fun lemmaAddToMapContainsAndNotInListThenInAcc!72 (List!49365 K!10600 V!10846 ListMap!2453) Unit!78288)

(assert (=> b!4395777 (= lt!1602519 (lemmaAddToMapContainsAndNotInListThenInAcc!72 (_2!27706 (h!54857 (toList!3209 lm!1707))) key!3918 newValue!99 lt!1602517))))

(assert (=> b!4395777 (= lt!1602517 (extractMap!672 (t!356300 (toList!3209 lm!1707))))))

(declare-fun e!2736947 () Bool)

(assert (=> b!4395777 e!2736947))

(declare-fun res!1812409 () Bool)

(assert (=> b!4395777 (=> (not res!1812409) (not e!2736947))))

(declare-fun containsKey!901 (List!49365 K!10600) Bool)

(declare-fun apply!11465 (ListLongMap!1859 (_ BitVec 64)) List!49365)

(assert (=> b!4395777 (= res!1812409 (not (containsKey!901 (apply!11465 lm!1707 (_1!27706 (h!54857 (toList!3209 lm!1707)))) key!3918)))))

(declare-fun lt!1602515 () Unit!78288)

(declare-fun lemmaNotSameHashThenCannotContainKey!84 (ListLongMap!1859 K!10600 (_ BitVec 64) Hashable!5005) Unit!78288)

(assert (=> b!4395777 (= lt!1602515 (lemmaNotSameHashThenCannotContainKey!84 lm!1707 key!3918 (_1!27706 (h!54857 (toList!3209 lm!1707))) hashF!1247))))

(declare-fun b!4395778 () Bool)

(declare-fun res!1812403 () Bool)

(assert (=> b!4395778 (=> (not res!1812403) (not e!2736950))))

(declare-fun newBucket!200 () List!49365)

(declare-fun hash!377 () (_ BitVec 64))

(declare-fun allKeysSameHash!571 (List!49365 (_ BitVec 64) Hashable!5005) Bool)

(assert (=> b!4395778 (= res!1812403 (allKeysSameHash!571 newBucket!200 hash!377 hashF!1247))))

(declare-fun b!4395779 () Bool)

(declare-fun res!1812405 () Bool)

(assert (=> b!4395779 (=> (not res!1812405) (not e!2736950))))

(declare-fun contains!11617 (ListLongMap!1859 (_ BitVec 64)) Bool)

(assert (=> b!4395779 (= res!1812405 (contains!11617 lm!1707 hash!377))))

(declare-fun b!4395780 () Bool)

(declare-fun e!2736952 () Bool)

(declare-fun tp!1331606 () Bool)

(assert (=> b!4395780 (= e!2736952 tp!1331606)))

(declare-fun b!4395781 () Bool)

(declare-fun e!2736946 () Bool)

(assert (=> b!4395781 (= e!2736950 (not e!2736946))))

(declare-fun res!1812411 () Bool)

(assert (=> b!4395781 (=> res!1812411 e!2736946)))

(declare-fun lt!1602520 () List!49365)

(declare-fun removePairForKey!581 (List!49365 K!10600) List!49365)

(assert (=> b!4395781 (= res!1812411 (not (= newBucket!200 (Cons!49241 (tuple2!48823 key!3918 newValue!99) (removePairForKey!581 lt!1602520 key!3918)))))))

(declare-fun lt!1602518 () tuple2!48824)

(declare-fun lambda!147873 () Int)

(declare-fun lt!1602512 () Unit!78288)

(declare-fun forallContained!1969 (List!49366 Int tuple2!48824) Unit!78288)

(assert (=> b!4395781 (= lt!1602512 (forallContained!1969 (toList!3209 lm!1707) lambda!147873 lt!1602518))))

(declare-fun contains!11618 (List!49366 tuple2!48824) Bool)

(assert (=> b!4395781 (contains!11618 (toList!3209 lm!1707) lt!1602518)))

(assert (=> b!4395781 (= lt!1602518 (tuple2!48825 hash!377 lt!1602520))))

(declare-fun lt!1602513 () Unit!78288)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!458 (List!49366 (_ BitVec 64) List!49365) Unit!78288)

(assert (=> b!4395781 (= lt!1602513 (lemmaGetValueByKeyImpliesContainsTuple!458 (toList!3209 lm!1707) hash!377 lt!1602520))))

(assert (=> b!4395781 (= lt!1602520 (apply!11465 lm!1707 hash!377))))

(declare-fun b!4395782 () Bool)

(declare-fun res!1812407 () Bool)

(assert (=> b!4395782 (=> res!1812407 e!2736946)))

(declare-fun noDuplicateKeys!613 (List!49365) Bool)

(assert (=> b!4395782 (= res!1812407 (not (noDuplicateKeys!613 newBucket!200)))))

(declare-fun b!4395783 () Bool)

(declare-fun res!1812410 () Bool)

(assert (=> b!4395783 (=> (not res!1812410) (not e!2736950))))

(declare-fun hash!1825 (Hashable!5005 K!10600) (_ BitVec 64))

(assert (=> b!4395783 (= res!1812410 (= (hash!1825 hashF!1247 key!3918) hash!377))))

(declare-fun b!4395784 () Bool)

(declare-fun e!2736949 () Bool)

(declare-fun lt!1602514 () ListLongMap!1859)

(declare-fun forall!9332 (List!49366 Int) Bool)

(assert (=> b!4395784 (= e!2736949 (forall!9332 (toList!3209 lt!1602514) lambda!147873))))

(declare-fun b!4395785 () Bool)

(assert (=> b!4395785 (= e!2736947 (not (containsKey!901 (_2!27706 (h!54857 (toList!3209 lm!1707))) key!3918)))))

(declare-fun e!2736948 () Bool)

(declare-fun tp_is_empty!25691 () Bool)

(declare-fun b!4395786 () Bool)

(declare-fun tp_is_empty!25689 () Bool)

(declare-fun tp!1331605 () Bool)

(assert (=> b!4395786 (= e!2736948 (and tp_is_empty!25689 tp_is_empty!25691 tp!1331605))))

(declare-fun b!4395787 () Bool)

(declare-fun res!1812404 () Bool)

(assert (=> b!4395787 (=> (not res!1812404) (not e!2736950))))

(assert (=> b!4395787 (= res!1812404 (contains!11616 (extractMap!672 (toList!3209 lm!1707)) key!3918))))

(declare-fun res!1812406 () Bool)

(assert (=> start!426828 (=> (not res!1812406) (not e!2736950))))

(assert (=> start!426828 (= res!1812406 (forall!9332 (toList!3209 lm!1707) lambda!147873))))

(assert (=> start!426828 e!2736950))

(assert (=> start!426828 e!2736948))

(assert (=> start!426828 true))

(declare-fun inv!64786 (ListLongMap!1859) Bool)

(assert (=> start!426828 (and (inv!64786 lm!1707) e!2736952)))

(assert (=> start!426828 tp_is_empty!25689))

(assert (=> start!426828 tp_is_empty!25691))

(declare-fun b!4395788 () Bool)

(assert (=> b!4395788 (= e!2736946 e!2736951)))

(declare-fun res!1812401 () Bool)

(assert (=> b!4395788 (=> res!1812401 e!2736951)))

(get-info :version)

(assert (=> b!4395788 (= res!1812401 (or (and ((_ is Cons!49242) (toList!3209 lm!1707)) (= (_1!27706 (h!54857 (toList!3209 lm!1707))) hash!377)) (not ((_ is Cons!49242) (toList!3209 lm!1707))) (= (_1!27706 (h!54857 (toList!3209 lm!1707))) hash!377)))))

(assert (=> b!4395788 e!2736949))

(declare-fun res!1812402 () Bool)

(assert (=> b!4395788 (=> (not res!1812402) (not e!2736949))))

(assert (=> b!4395788 (= res!1812402 (forall!9332 (toList!3209 lt!1602514) lambda!147873))))

(declare-fun +!846 (ListLongMap!1859 tuple2!48824) ListLongMap!1859)

(assert (=> b!4395788 (= lt!1602514 (+!846 lm!1707 (tuple2!48825 hash!377 newBucket!200)))))

(declare-fun lt!1602516 () Unit!78288)

(declare-fun addValidProp!259 (ListLongMap!1859 Int (_ BitVec 64) List!49365) Unit!78288)

(assert (=> b!4395788 (= lt!1602516 (addValidProp!259 lm!1707 lambda!147873 hash!377 newBucket!200))))

(assert (=> b!4395788 (forall!9332 (toList!3209 lm!1707) lambda!147873)))

(assert (= (and start!426828 res!1812406) b!4395776))

(assert (= (and b!4395776 res!1812408) b!4395783))

(assert (= (and b!4395783 res!1812410) b!4395778))

(assert (= (and b!4395778 res!1812403) b!4395787))

(assert (= (and b!4395787 res!1812404) b!4395779))

(assert (= (and b!4395779 res!1812405) b!4395781))

(assert (= (and b!4395781 (not res!1812411)) b!4395782))

(assert (= (and b!4395782 (not res!1812407)) b!4395788))

(assert (= (and b!4395788 res!1812402) b!4395784))

(assert (= (and b!4395788 (not res!1812401)) b!4395777))

(assert (= (and b!4395777 res!1812409) b!4395785))

(assert (= (and start!426828 ((_ is Cons!49241) newBucket!200)) b!4395786))

(assert (= start!426828 b!4395780))

(declare-fun m!5056067 () Bool)

(assert (=> b!4395778 m!5056067))

(declare-fun m!5056069 () Bool)

(assert (=> b!4395783 m!5056069))

(declare-fun m!5056071 () Bool)

(assert (=> b!4395779 m!5056071))

(declare-fun m!5056073 () Bool)

(assert (=> b!4395788 m!5056073))

(declare-fun m!5056075 () Bool)

(assert (=> b!4395788 m!5056075))

(declare-fun m!5056077 () Bool)

(assert (=> b!4395788 m!5056077))

(declare-fun m!5056079 () Bool)

(assert (=> b!4395788 m!5056079))

(declare-fun m!5056081 () Bool)

(assert (=> b!4395776 m!5056081))

(declare-fun m!5056083 () Bool)

(assert (=> b!4395782 m!5056083))

(declare-fun m!5056085 () Bool)

(assert (=> b!4395777 m!5056085))

(declare-fun m!5056087 () Bool)

(assert (=> b!4395777 m!5056087))

(declare-fun m!5056089 () Bool)

(assert (=> b!4395777 m!5056089))

(declare-fun m!5056091 () Bool)

(assert (=> b!4395777 m!5056091))

(declare-fun m!5056093 () Bool)

(assert (=> b!4395777 m!5056093))

(declare-fun m!5056095 () Bool)

(assert (=> b!4395777 m!5056095))

(assert (=> b!4395777 m!5056087))

(declare-fun m!5056097 () Bool)

(assert (=> b!4395777 m!5056097))

(declare-fun m!5056099 () Bool)

(assert (=> b!4395777 m!5056099))

(assert (=> b!4395777 m!5056099))

(declare-fun m!5056101 () Bool)

(assert (=> b!4395777 m!5056101))

(declare-fun m!5056103 () Bool)

(assert (=> b!4395787 m!5056103))

(assert (=> b!4395787 m!5056103))

(declare-fun m!5056105 () Bool)

(assert (=> b!4395787 m!5056105))

(assert (=> b!4395784 m!5056073))

(declare-fun m!5056107 () Bool)

(assert (=> b!4395785 m!5056107))

(assert (=> start!426828 m!5056079))

(declare-fun m!5056109 () Bool)

(assert (=> start!426828 m!5056109))

(declare-fun m!5056111 () Bool)

(assert (=> b!4395781 m!5056111))

(declare-fun m!5056113 () Bool)

(assert (=> b!4395781 m!5056113))

(declare-fun m!5056115 () Bool)

(assert (=> b!4395781 m!5056115))

(declare-fun m!5056117 () Bool)

(assert (=> b!4395781 m!5056117))

(declare-fun m!5056119 () Bool)

(assert (=> b!4395781 m!5056119))

(check-sat (not b!4395786) (not b!4395778) (not b!4395777) (not b!4395785) (not b!4395784) (not b!4395776) (not b!4395781) (not b!4395783) (not b!4395787) (not b!4395779) (not start!426828) (not b!4395780) tp_is_empty!25691 (not b!4395782) (not b!4395788) tp_is_empty!25689)
(check-sat)
(get-model)

(declare-fun d!1324346 () Bool)

(declare-fun hash!1829 (Hashable!5005 K!10600) (_ BitVec 64))

(assert (=> d!1324346 (= (hash!1825 hashF!1247 key!3918) (hash!1829 hashF!1247 key!3918))))

(declare-fun bs!726447 () Bool)

(assert (= bs!726447 d!1324346))

(declare-fun m!5056121 () Bool)

(assert (=> bs!726447 m!5056121))

(assert (=> b!4395783 d!1324346))

(declare-fun d!1324348 () Bool)

(declare-fun res!1812416 () Bool)

(declare-fun e!2736957 () Bool)

(assert (=> d!1324348 (=> res!1812416 e!2736957)))

(assert (=> d!1324348 (= res!1812416 ((_ is Nil!49242) (toList!3209 lm!1707)))))

(assert (=> d!1324348 (= (forall!9332 (toList!3209 lm!1707) lambda!147873) e!2736957)))

(declare-fun b!4395793 () Bool)

(declare-fun e!2736958 () Bool)

(assert (=> b!4395793 (= e!2736957 e!2736958)))

(declare-fun res!1812417 () Bool)

(assert (=> b!4395793 (=> (not res!1812417) (not e!2736958))))

(declare-fun dynLambda!20745 (Int tuple2!48824) Bool)

(assert (=> b!4395793 (= res!1812417 (dynLambda!20745 lambda!147873 (h!54857 (toList!3209 lm!1707))))))

(declare-fun b!4395794 () Bool)

(assert (=> b!4395794 (= e!2736958 (forall!9332 (t!356300 (toList!3209 lm!1707)) lambda!147873))))

(assert (= (and d!1324348 (not res!1812416)) b!4395793))

(assert (= (and b!4395793 res!1812417) b!4395794))

(declare-fun b_lambda!139129 () Bool)

(assert (=> (not b_lambda!139129) (not b!4395793)))

(declare-fun m!5056123 () Bool)

(assert (=> b!4395793 m!5056123))

(declare-fun m!5056125 () Bool)

(assert (=> b!4395794 m!5056125))

(assert (=> start!426828 d!1324348))

(declare-fun d!1324350 () Bool)

(declare-fun isStrictlySorted!167 (List!49366) Bool)

(assert (=> d!1324350 (= (inv!64786 lm!1707) (isStrictlySorted!167 (toList!3209 lm!1707)))))

(declare-fun bs!726448 () Bool)

(assert (= bs!726448 d!1324350))

(declare-fun m!5056127 () Bool)

(assert (=> bs!726448 m!5056127))

(assert (=> start!426828 d!1324350))

(declare-fun d!1324352 () Bool)

(declare-fun res!1812418 () Bool)

(declare-fun e!2736959 () Bool)

(assert (=> d!1324352 (=> res!1812418 e!2736959)))

(assert (=> d!1324352 (= res!1812418 ((_ is Nil!49242) (toList!3209 lt!1602514)))))

(assert (=> d!1324352 (= (forall!9332 (toList!3209 lt!1602514) lambda!147873) e!2736959)))

(declare-fun b!4395795 () Bool)

(declare-fun e!2736960 () Bool)

(assert (=> b!4395795 (= e!2736959 e!2736960)))

(declare-fun res!1812419 () Bool)

(assert (=> b!4395795 (=> (not res!1812419) (not e!2736960))))

(assert (=> b!4395795 (= res!1812419 (dynLambda!20745 lambda!147873 (h!54857 (toList!3209 lt!1602514))))))

(declare-fun b!4395796 () Bool)

(assert (=> b!4395796 (= e!2736960 (forall!9332 (t!356300 (toList!3209 lt!1602514)) lambda!147873))))

(assert (= (and d!1324352 (not res!1812418)) b!4395795))

(assert (= (and b!4395795 res!1812419) b!4395796))

(declare-fun b_lambda!139131 () Bool)

(assert (=> (not b_lambda!139131) (not b!4395795)))

(declare-fun m!5056129 () Bool)

(assert (=> b!4395795 m!5056129))

(declare-fun m!5056131 () Bool)

(assert (=> b!4395796 m!5056131))

(assert (=> b!4395784 d!1324352))

(declare-fun d!1324354 () Bool)

(declare-fun res!1812424 () Bool)

(declare-fun e!2736965 () Bool)

(assert (=> d!1324354 (=> res!1812424 e!2736965)))

(assert (=> d!1324354 (= res!1812424 (not ((_ is Cons!49241) newBucket!200)))))

(assert (=> d!1324354 (= (noDuplicateKeys!613 newBucket!200) e!2736965)))

(declare-fun b!4395801 () Bool)

(declare-fun e!2736966 () Bool)

(assert (=> b!4395801 (= e!2736965 e!2736966)))

(declare-fun res!1812425 () Bool)

(assert (=> b!4395801 (=> (not res!1812425) (not e!2736966))))

(assert (=> b!4395801 (= res!1812425 (not (containsKey!901 (t!356299 newBucket!200) (_1!27705 (h!54856 newBucket!200)))))))

(declare-fun b!4395802 () Bool)

(assert (=> b!4395802 (= e!2736966 (noDuplicateKeys!613 (t!356299 newBucket!200)))))

(assert (= (and d!1324354 (not res!1812424)) b!4395801))

(assert (= (and b!4395801 res!1812425) b!4395802))

(declare-fun m!5056133 () Bool)

(assert (=> b!4395801 m!5056133))

(declare-fun m!5056135 () Bool)

(assert (=> b!4395802 m!5056135))

(assert (=> b!4395782 d!1324354))

(declare-fun d!1324356 () Bool)

(declare-datatypes ((Option!10594 0))(
  ( (None!10593) (Some!10593 (v!43659 List!49365)) )
))
(declare-fun get!16026 (Option!10594) List!49365)

(declare-fun getValueByKey!580 (List!49366 (_ BitVec 64)) Option!10594)

(assert (=> d!1324356 (= (apply!11465 lm!1707 hash!377) (get!16026 (getValueByKey!580 (toList!3209 lm!1707) hash!377)))))

(declare-fun bs!726449 () Bool)

(assert (= bs!726449 d!1324356))

(declare-fun m!5056137 () Bool)

(assert (=> bs!726449 m!5056137))

(assert (=> bs!726449 m!5056137))

(declare-fun m!5056139 () Bool)

(assert (=> bs!726449 m!5056139))

(assert (=> b!4395781 d!1324356))

(declare-fun d!1324360 () Bool)

(declare-fun lt!1602535 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7851 (List!49366) (InoxSet tuple2!48824))

(assert (=> d!1324360 (= lt!1602535 (select (content!7851 (toList!3209 lm!1707)) lt!1602518))))

(declare-fun e!2736983 () Bool)

(assert (=> d!1324360 (= lt!1602535 e!2736983)))

(declare-fun res!1812440 () Bool)

(assert (=> d!1324360 (=> (not res!1812440) (not e!2736983))))

(assert (=> d!1324360 (= res!1812440 ((_ is Cons!49242) (toList!3209 lm!1707)))))

(assert (=> d!1324360 (= (contains!11618 (toList!3209 lm!1707) lt!1602518) lt!1602535)))

(declare-fun b!4395822 () Bool)

(declare-fun e!2736984 () Bool)

(assert (=> b!4395822 (= e!2736983 e!2736984)))

(declare-fun res!1812439 () Bool)

(assert (=> b!4395822 (=> res!1812439 e!2736984)))

(assert (=> b!4395822 (= res!1812439 (= (h!54857 (toList!3209 lm!1707)) lt!1602518))))

(declare-fun b!4395823 () Bool)

(assert (=> b!4395823 (= e!2736984 (contains!11618 (t!356300 (toList!3209 lm!1707)) lt!1602518))))

(assert (= (and d!1324360 res!1812440) b!4395822))

(assert (= (and b!4395822 (not res!1812439)) b!4395823))

(declare-fun m!5056153 () Bool)

(assert (=> d!1324360 m!5056153))

(declare-fun m!5056155 () Bool)

(assert (=> d!1324360 m!5056155))

(declare-fun m!5056157 () Bool)

(assert (=> b!4395823 m!5056157))

(assert (=> b!4395781 d!1324360))

(declare-fun d!1324368 () Bool)

(assert (=> d!1324368 (contains!11618 (toList!3209 lm!1707) (tuple2!48825 hash!377 lt!1602520))))

(declare-fun lt!1602538 () Unit!78288)

(declare-fun choose!27487 (List!49366 (_ BitVec 64) List!49365) Unit!78288)

(assert (=> d!1324368 (= lt!1602538 (choose!27487 (toList!3209 lm!1707) hash!377 lt!1602520))))

(declare-fun e!2736995 () Bool)

(assert (=> d!1324368 e!2736995))

(declare-fun res!1812451 () Bool)

(assert (=> d!1324368 (=> (not res!1812451) (not e!2736995))))

(assert (=> d!1324368 (= res!1812451 (isStrictlySorted!167 (toList!3209 lm!1707)))))

(assert (=> d!1324368 (= (lemmaGetValueByKeyImpliesContainsTuple!458 (toList!3209 lm!1707) hash!377 lt!1602520) lt!1602538)))

(declare-fun b!4395838 () Bool)

(assert (=> b!4395838 (= e!2736995 (= (getValueByKey!580 (toList!3209 lm!1707) hash!377) (Some!10593 lt!1602520)))))

(assert (= (and d!1324368 res!1812451) b!4395838))

(declare-fun m!5056171 () Bool)

(assert (=> d!1324368 m!5056171))

(declare-fun m!5056173 () Bool)

(assert (=> d!1324368 m!5056173))

(assert (=> d!1324368 m!5056127))

(assert (=> b!4395838 m!5056137))

(assert (=> b!4395781 d!1324368))

(declare-fun d!1324378 () Bool)

(assert (=> d!1324378 (dynLambda!20745 lambda!147873 lt!1602518)))

(declare-fun lt!1602553 () Unit!78288)

(declare-fun choose!27488 (List!49366 Int tuple2!48824) Unit!78288)

(assert (=> d!1324378 (= lt!1602553 (choose!27488 (toList!3209 lm!1707) lambda!147873 lt!1602518))))

(declare-fun e!2737001 () Bool)

(assert (=> d!1324378 e!2737001))

(declare-fun res!1812460 () Bool)

(assert (=> d!1324378 (=> (not res!1812460) (not e!2737001))))

(assert (=> d!1324378 (= res!1812460 (forall!9332 (toList!3209 lm!1707) lambda!147873))))

(assert (=> d!1324378 (= (forallContained!1969 (toList!3209 lm!1707) lambda!147873 lt!1602518) lt!1602553)))

(declare-fun b!4395847 () Bool)

(assert (=> b!4395847 (= e!2737001 (contains!11618 (toList!3209 lm!1707) lt!1602518))))

(assert (= (and d!1324378 res!1812460) b!4395847))

(declare-fun b_lambda!139137 () Bool)

(assert (=> (not b_lambda!139137) (not d!1324378)))

(declare-fun m!5056187 () Bool)

(assert (=> d!1324378 m!5056187))

(declare-fun m!5056189 () Bool)

(assert (=> d!1324378 m!5056189))

(assert (=> d!1324378 m!5056079))

(assert (=> b!4395847 m!5056113))

(assert (=> b!4395781 d!1324378))

(declare-fun b!4395872 () Bool)

(declare-fun e!2737016 () List!49365)

(assert (=> b!4395872 (= e!2737016 (t!356299 lt!1602520))))

(declare-fun b!4395873 () Bool)

(declare-fun e!2737015 () List!49365)

(assert (=> b!4395873 (= e!2737016 e!2737015)))

(declare-fun c!748295 () Bool)

(assert (=> b!4395873 (= c!748295 ((_ is Cons!49241) lt!1602520))))

(declare-fun b!4395874 () Bool)

(assert (=> b!4395874 (= e!2737015 (Cons!49241 (h!54856 lt!1602520) (removePairForKey!581 (t!356299 lt!1602520) key!3918)))))

(declare-fun b!4395875 () Bool)

(assert (=> b!4395875 (= e!2737015 Nil!49241)))

(declare-fun d!1324382 () Bool)

(declare-fun lt!1602562 () List!49365)

(assert (=> d!1324382 (not (containsKey!901 lt!1602562 key!3918))))

(assert (=> d!1324382 (= lt!1602562 e!2737016)))

(declare-fun c!748294 () Bool)

(assert (=> d!1324382 (= c!748294 (and ((_ is Cons!49241) lt!1602520) (= (_1!27705 (h!54856 lt!1602520)) key!3918)))))

(assert (=> d!1324382 (noDuplicateKeys!613 lt!1602520)))

(assert (=> d!1324382 (= (removePairForKey!581 lt!1602520 key!3918) lt!1602562)))

(assert (= (and d!1324382 c!748294) b!4395872))

(assert (= (and d!1324382 (not c!748294)) b!4395873))

(assert (= (and b!4395873 c!748295) b!4395874))

(assert (= (and b!4395873 (not c!748295)) b!4395875))

(declare-fun m!5056205 () Bool)

(assert (=> b!4395874 m!5056205))

(declare-fun m!5056207 () Bool)

(assert (=> d!1324382 m!5056207))

(declare-fun m!5056209 () Bool)

(assert (=> d!1324382 m!5056209))

(assert (=> b!4395781 d!1324382))

(declare-fun d!1324390 () Bool)

(assert (=> d!1324390 true))

(assert (=> d!1324390 true))

(declare-fun lambda!147879 () Int)

(declare-fun forall!9334 (List!49365 Int) Bool)

(assert (=> d!1324390 (= (allKeysSameHash!571 newBucket!200 hash!377 hashF!1247) (forall!9334 newBucket!200 lambda!147879))))

(declare-fun bs!726454 () Bool)

(assert (= bs!726454 d!1324390))

(declare-fun m!5056219 () Bool)

(assert (=> bs!726454 m!5056219))

(assert (=> b!4395778 d!1324390))

(assert (=> b!4395788 d!1324352))

(declare-fun d!1324396 () Bool)

(declare-fun e!2737037 () Bool)

(assert (=> d!1324396 e!2737037))

(declare-fun res!1812487 () Bool)

(assert (=> d!1324396 (=> (not res!1812487) (not e!2737037))))

(declare-fun lt!1602580 () ListLongMap!1859)

(assert (=> d!1324396 (= res!1812487 (contains!11617 lt!1602580 (_1!27706 (tuple2!48825 hash!377 newBucket!200))))))

(declare-fun lt!1602581 () List!49366)

(assert (=> d!1324396 (= lt!1602580 (ListLongMap!1860 lt!1602581))))

(declare-fun lt!1602583 () Unit!78288)

(declare-fun lt!1602582 () Unit!78288)

(assert (=> d!1324396 (= lt!1602583 lt!1602582)))

(assert (=> d!1324396 (= (getValueByKey!580 lt!1602581 (_1!27706 (tuple2!48825 hash!377 newBucket!200))) (Some!10593 (_2!27706 (tuple2!48825 hash!377 newBucket!200))))))

(declare-fun lemmaContainsTupThenGetReturnValue!336 (List!49366 (_ BitVec 64) List!49365) Unit!78288)

(assert (=> d!1324396 (= lt!1602582 (lemmaContainsTupThenGetReturnValue!336 lt!1602581 (_1!27706 (tuple2!48825 hash!377 newBucket!200)) (_2!27706 (tuple2!48825 hash!377 newBucket!200))))))

(declare-fun insertStrictlySorted!195 (List!49366 (_ BitVec 64) List!49365) List!49366)

(assert (=> d!1324396 (= lt!1602581 (insertStrictlySorted!195 (toList!3209 lm!1707) (_1!27706 (tuple2!48825 hash!377 newBucket!200)) (_2!27706 (tuple2!48825 hash!377 newBucket!200))))))

(assert (=> d!1324396 (= (+!846 lm!1707 (tuple2!48825 hash!377 newBucket!200)) lt!1602580)))

(declare-fun b!4395902 () Bool)

(declare-fun res!1812486 () Bool)

(assert (=> b!4395902 (=> (not res!1812486) (not e!2737037))))

(assert (=> b!4395902 (= res!1812486 (= (getValueByKey!580 (toList!3209 lt!1602580) (_1!27706 (tuple2!48825 hash!377 newBucket!200))) (Some!10593 (_2!27706 (tuple2!48825 hash!377 newBucket!200)))))))

(declare-fun b!4395903 () Bool)

(assert (=> b!4395903 (= e!2737037 (contains!11618 (toList!3209 lt!1602580) (tuple2!48825 hash!377 newBucket!200)))))

(assert (= (and d!1324396 res!1812487) b!4395902))

(assert (= (and b!4395902 res!1812486) b!4395903))

(declare-fun m!5056231 () Bool)

(assert (=> d!1324396 m!5056231))

(declare-fun m!5056233 () Bool)

(assert (=> d!1324396 m!5056233))

(declare-fun m!5056235 () Bool)

(assert (=> d!1324396 m!5056235))

(declare-fun m!5056237 () Bool)

(assert (=> d!1324396 m!5056237))

(declare-fun m!5056239 () Bool)

(assert (=> b!4395902 m!5056239))

(declare-fun m!5056241 () Bool)

(assert (=> b!4395903 m!5056241))

(assert (=> b!4395788 d!1324396))

(declare-fun d!1324402 () Bool)

(assert (=> d!1324402 (forall!9332 (toList!3209 (+!846 lm!1707 (tuple2!48825 hash!377 newBucket!200))) lambda!147873)))

(declare-fun lt!1602610 () Unit!78288)

(declare-fun choose!27490 (ListLongMap!1859 Int (_ BitVec 64) List!49365) Unit!78288)

(assert (=> d!1324402 (= lt!1602610 (choose!27490 lm!1707 lambda!147873 hash!377 newBucket!200))))

(declare-fun e!2737058 () Bool)

(assert (=> d!1324402 e!2737058))

(declare-fun res!1812499 () Bool)

(assert (=> d!1324402 (=> (not res!1812499) (not e!2737058))))

(assert (=> d!1324402 (= res!1812499 (forall!9332 (toList!3209 lm!1707) lambda!147873))))

(assert (=> d!1324402 (= (addValidProp!259 lm!1707 lambda!147873 hash!377 newBucket!200) lt!1602610)))

(declare-fun b!4395934 () Bool)

(assert (=> b!4395934 (= e!2737058 (dynLambda!20745 lambda!147873 (tuple2!48825 hash!377 newBucket!200)))))

(assert (= (and d!1324402 res!1812499) b!4395934))

(declare-fun b_lambda!139143 () Bool)

(assert (=> (not b_lambda!139143) (not b!4395934)))

(assert (=> d!1324402 m!5056075))

(declare-fun m!5056263 () Bool)

(assert (=> d!1324402 m!5056263))

(declare-fun m!5056265 () Bool)

(assert (=> d!1324402 m!5056265))

(assert (=> d!1324402 m!5056079))

(declare-fun m!5056267 () Bool)

(assert (=> b!4395934 m!5056267))

(assert (=> b!4395788 d!1324402))

(assert (=> b!4395788 d!1324348))

(declare-fun d!1324406 () Bool)

(assert (=> d!1324406 (= (apply!11465 lm!1707 (_1!27706 (h!54857 (toList!3209 lm!1707)))) (get!16026 (getValueByKey!580 (toList!3209 lm!1707) (_1!27706 (h!54857 (toList!3209 lm!1707))))))))

(declare-fun bs!726455 () Bool)

(assert (= bs!726455 d!1324406))

(declare-fun m!5056269 () Bool)

(assert (=> bs!726455 m!5056269))

(assert (=> bs!726455 m!5056269))

(declare-fun m!5056271 () Bool)

(assert (=> bs!726455 m!5056271))

(assert (=> b!4395777 d!1324406))

(declare-fun d!1324408 () Bool)

(declare-fun res!1812504 () Bool)

(declare-fun e!2737066 () Bool)

(assert (=> d!1324408 (=> res!1812504 e!2737066)))

(assert (=> d!1324408 (= res!1812504 (and ((_ is Cons!49241) (apply!11465 lm!1707 (_1!27706 (h!54857 (toList!3209 lm!1707))))) (= (_1!27705 (h!54856 (apply!11465 lm!1707 (_1!27706 (h!54857 (toList!3209 lm!1707)))))) key!3918)))))

(assert (=> d!1324408 (= (containsKey!901 (apply!11465 lm!1707 (_1!27706 (h!54857 (toList!3209 lm!1707)))) key!3918) e!2737066)))

(declare-fun b!4395945 () Bool)

(declare-fun e!2737067 () Bool)

(assert (=> b!4395945 (= e!2737066 e!2737067)))

(declare-fun res!1812505 () Bool)

(assert (=> b!4395945 (=> (not res!1812505) (not e!2737067))))

(assert (=> b!4395945 (= res!1812505 ((_ is Cons!49241) (apply!11465 lm!1707 (_1!27706 (h!54857 (toList!3209 lm!1707))))))))

(declare-fun b!4395946 () Bool)

(assert (=> b!4395946 (= e!2737067 (containsKey!901 (t!356299 (apply!11465 lm!1707 (_1!27706 (h!54857 (toList!3209 lm!1707))))) key!3918))))

(assert (= (and d!1324408 (not res!1812504)) b!4395945))

(assert (= (and b!4395945 res!1812505) b!4395946))

(declare-fun m!5056279 () Bool)

(assert (=> b!4395946 m!5056279))

(assert (=> b!4395777 d!1324408))

(declare-fun b!4396002 () Bool)

(declare-datatypes ((List!49368 0))(
  ( (Nil!49244) (Cons!49244 (h!54861 K!10600) (t!356302 List!49368)) )
))
(declare-fun e!2737107 () List!49368)

(declare-fun getKeysList!188 (List!49365) List!49368)

(assert (=> b!4396002 (= e!2737107 (getKeysList!188 (toList!3210 lt!1602517)))))

(declare-fun b!4396003 () Bool)

(declare-fun keys!16724 (ListMap!2453) List!49368)

(assert (=> b!4396003 (= e!2737107 (keys!16724 lt!1602517))))

(declare-fun b!4396004 () Bool)

(declare-fun e!2737104 () Bool)

(declare-fun contains!11620 (List!49368 K!10600) Bool)

(assert (=> b!4396004 (= e!2737104 (not (contains!11620 (keys!16724 lt!1602517) key!3918)))))

(declare-fun b!4396005 () Bool)

(declare-fun e!2737103 () Unit!78288)

(declare-fun Unit!78297 () Unit!78288)

(assert (=> b!4396005 (= e!2737103 Unit!78297)))

(declare-fun b!4396006 () Bool)

(declare-fun e!2737105 () Bool)

(assert (=> b!4396006 (= e!2737105 (contains!11620 (keys!16724 lt!1602517) key!3918))))

(declare-fun b!4396007 () Bool)

(declare-fun e!2737102 () Bool)

(assert (=> b!4396007 (= e!2737102 e!2737105)))

(declare-fun res!1812522 () Bool)

(assert (=> b!4396007 (=> (not res!1812522) (not e!2737105))))

(declare-datatypes ((Option!10595 0))(
  ( (None!10594) (Some!10594 (v!43660 V!10846)) )
))
(declare-fun isDefined!7887 (Option!10595) Bool)

(declare-fun getValueByKey!581 (List!49365 K!10600) Option!10595)

(assert (=> b!4396007 (= res!1812522 (isDefined!7887 (getValueByKey!581 (toList!3210 lt!1602517) key!3918)))))

(declare-fun b!4396008 () Bool)

(declare-fun e!2737106 () Unit!78288)

(declare-fun lt!1602655 () Unit!78288)

(assert (=> b!4396008 (= e!2737106 lt!1602655)))

(declare-fun lt!1602654 () Unit!78288)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!490 (List!49365 K!10600) Unit!78288)

(assert (=> b!4396008 (= lt!1602654 (lemmaContainsKeyImpliesGetValueByKeyDefined!490 (toList!3210 lt!1602517) key!3918))))

(assert (=> b!4396008 (isDefined!7887 (getValueByKey!581 (toList!3210 lt!1602517) key!3918))))

(declare-fun lt!1602657 () Unit!78288)

(assert (=> b!4396008 (= lt!1602657 lt!1602654)))

(declare-fun lemmaInListThenGetKeysListContains!185 (List!49365 K!10600) Unit!78288)

(assert (=> b!4396008 (= lt!1602655 (lemmaInListThenGetKeysListContains!185 (toList!3210 lt!1602517) key!3918))))

(declare-fun call!305977 () Bool)

(assert (=> b!4396008 call!305977))

(declare-fun d!1324412 () Bool)

(assert (=> d!1324412 e!2737102))

(declare-fun res!1812521 () Bool)

(assert (=> d!1324412 (=> res!1812521 e!2737102)))

(assert (=> d!1324412 (= res!1812521 e!2737104)))

(declare-fun res!1812520 () Bool)

(assert (=> d!1324412 (=> (not res!1812520) (not e!2737104))))

(declare-fun lt!1602656 () Bool)

(assert (=> d!1324412 (= res!1812520 (not lt!1602656))))

(declare-fun lt!1602658 () Bool)

(assert (=> d!1324412 (= lt!1602656 lt!1602658)))

(declare-fun lt!1602661 () Unit!78288)

(assert (=> d!1324412 (= lt!1602661 e!2737106)))

(declare-fun c!748324 () Bool)

(assert (=> d!1324412 (= c!748324 lt!1602658)))

(declare-fun containsKey!904 (List!49365 K!10600) Bool)

(assert (=> d!1324412 (= lt!1602658 (containsKey!904 (toList!3210 lt!1602517) key!3918))))

(assert (=> d!1324412 (= (contains!11616 lt!1602517 key!3918) lt!1602656)))

(declare-fun b!4396001 () Bool)

(assert (=> b!4396001 (= e!2737106 e!2737103)))

(declare-fun c!748323 () Bool)

(assert (=> b!4396001 (= c!748323 call!305977)))

(declare-fun b!4396009 () Bool)

(assert (=> b!4396009 false))

(declare-fun lt!1602660 () Unit!78288)

(declare-fun lt!1602659 () Unit!78288)

(assert (=> b!4396009 (= lt!1602660 lt!1602659)))

(assert (=> b!4396009 (containsKey!904 (toList!3210 lt!1602517) key!3918)))

(declare-fun lemmaInGetKeysListThenContainsKey!186 (List!49365 K!10600) Unit!78288)

(assert (=> b!4396009 (= lt!1602659 (lemmaInGetKeysListThenContainsKey!186 (toList!3210 lt!1602517) key!3918))))

(declare-fun Unit!78298 () Unit!78288)

(assert (=> b!4396009 (= e!2737103 Unit!78298)))

(declare-fun bm!305972 () Bool)

(assert (=> bm!305972 (= call!305977 (contains!11620 e!2737107 key!3918))))

(declare-fun c!748322 () Bool)

(assert (=> bm!305972 (= c!748322 c!748324)))

(assert (= (and d!1324412 c!748324) b!4396008))

(assert (= (and d!1324412 (not c!748324)) b!4396001))

(assert (= (and b!4396001 c!748323) b!4396009))

(assert (= (and b!4396001 (not c!748323)) b!4396005))

(assert (= (or b!4396008 b!4396001) bm!305972))

(assert (= (and bm!305972 c!748322) b!4396002))

(assert (= (and bm!305972 (not c!748322)) b!4396003))

(assert (= (and d!1324412 res!1812520) b!4396004))

(assert (= (and d!1324412 (not res!1812521)) b!4396007))

(assert (= (and b!4396007 res!1812522) b!4396006))

(declare-fun m!5056361 () Bool)

(assert (=> b!4396004 m!5056361))

(assert (=> b!4396004 m!5056361))

(declare-fun m!5056363 () Bool)

(assert (=> b!4396004 m!5056363))

(assert (=> b!4396003 m!5056361))

(declare-fun m!5056365 () Bool)

(assert (=> d!1324412 m!5056365))

(assert (=> b!4396009 m!5056365))

(declare-fun m!5056367 () Bool)

(assert (=> b!4396009 m!5056367))

(assert (=> b!4396006 m!5056361))

(assert (=> b!4396006 m!5056361))

(assert (=> b!4396006 m!5056363))

(declare-fun m!5056369 () Bool)

(assert (=> b!4396008 m!5056369))

(declare-fun m!5056371 () Bool)

(assert (=> b!4396008 m!5056371))

(assert (=> b!4396008 m!5056371))

(declare-fun m!5056373 () Bool)

(assert (=> b!4396008 m!5056373))

(declare-fun m!5056375 () Bool)

(assert (=> b!4396008 m!5056375))

(declare-fun m!5056377 () Bool)

(assert (=> b!4396002 m!5056377))

(declare-fun m!5056379 () Bool)

(assert (=> bm!305972 m!5056379))

(assert (=> b!4396007 m!5056371))

(assert (=> b!4396007 m!5056371))

(assert (=> b!4396007 m!5056373))

(assert (=> b!4395777 d!1324412))

(declare-fun b!4396011 () Bool)

(declare-fun e!2737113 () List!49368)

(assert (=> b!4396011 (= e!2737113 (getKeysList!188 (toList!3210 (extractMap!672 (toList!3209 (tail!7090 lm!1707))))))))

(declare-fun b!4396012 () Bool)

(assert (=> b!4396012 (= e!2737113 (keys!16724 (extractMap!672 (toList!3209 (tail!7090 lm!1707)))))))

(declare-fun b!4396013 () Bool)

(declare-fun e!2737110 () Bool)

(assert (=> b!4396013 (= e!2737110 (not (contains!11620 (keys!16724 (extractMap!672 (toList!3209 (tail!7090 lm!1707)))) key!3918)))))

(declare-fun b!4396014 () Bool)

(declare-fun e!2737109 () Unit!78288)

(declare-fun Unit!78299 () Unit!78288)

(assert (=> b!4396014 (= e!2737109 Unit!78299)))

(declare-fun b!4396015 () Bool)

(declare-fun e!2737111 () Bool)

(assert (=> b!4396015 (= e!2737111 (contains!11620 (keys!16724 (extractMap!672 (toList!3209 (tail!7090 lm!1707)))) key!3918))))

(declare-fun b!4396016 () Bool)

(declare-fun e!2737108 () Bool)

(assert (=> b!4396016 (= e!2737108 e!2737111)))

(declare-fun res!1812525 () Bool)

(assert (=> b!4396016 (=> (not res!1812525) (not e!2737111))))

(assert (=> b!4396016 (= res!1812525 (isDefined!7887 (getValueByKey!581 (toList!3210 (extractMap!672 (toList!3209 (tail!7090 lm!1707)))) key!3918)))))

(declare-fun b!4396017 () Bool)

(declare-fun e!2737112 () Unit!78288)

(declare-fun lt!1602663 () Unit!78288)

(assert (=> b!4396017 (= e!2737112 lt!1602663)))

(declare-fun lt!1602662 () Unit!78288)

(assert (=> b!4396017 (= lt!1602662 (lemmaContainsKeyImpliesGetValueByKeyDefined!490 (toList!3210 (extractMap!672 (toList!3209 (tail!7090 lm!1707)))) key!3918))))

(assert (=> b!4396017 (isDefined!7887 (getValueByKey!581 (toList!3210 (extractMap!672 (toList!3209 (tail!7090 lm!1707)))) key!3918))))

(declare-fun lt!1602665 () Unit!78288)

(assert (=> b!4396017 (= lt!1602665 lt!1602662)))

(assert (=> b!4396017 (= lt!1602663 (lemmaInListThenGetKeysListContains!185 (toList!3210 (extractMap!672 (toList!3209 (tail!7090 lm!1707)))) key!3918))))

(declare-fun call!305978 () Bool)

(assert (=> b!4396017 call!305978))

(declare-fun d!1324440 () Bool)

(assert (=> d!1324440 e!2737108))

(declare-fun res!1812524 () Bool)

(assert (=> d!1324440 (=> res!1812524 e!2737108)))

(assert (=> d!1324440 (= res!1812524 e!2737110)))

(declare-fun res!1812523 () Bool)

(assert (=> d!1324440 (=> (not res!1812523) (not e!2737110))))

(declare-fun lt!1602664 () Bool)

(assert (=> d!1324440 (= res!1812523 (not lt!1602664))))

(declare-fun lt!1602666 () Bool)

(assert (=> d!1324440 (= lt!1602664 lt!1602666)))

(declare-fun lt!1602669 () Unit!78288)

(assert (=> d!1324440 (= lt!1602669 e!2737112)))

(declare-fun c!748327 () Bool)

(assert (=> d!1324440 (= c!748327 lt!1602666)))

(assert (=> d!1324440 (= lt!1602666 (containsKey!904 (toList!3210 (extractMap!672 (toList!3209 (tail!7090 lm!1707)))) key!3918))))

(assert (=> d!1324440 (= (contains!11616 (extractMap!672 (toList!3209 (tail!7090 lm!1707))) key!3918) lt!1602664)))

(declare-fun b!4396010 () Bool)

(assert (=> b!4396010 (= e!2737112 e!2737109)))

(declare-fun c!748326 () Bool)

(assert (=> b!4396010 (= c!748326 call!305978)))

(declare-fun b!4396018 () Bool)

(assert (=> b!4396018 false))

(declare-fun lt!1602668 () Unit!78288)

(declare-fun lt!1602667 () Unit!78288)

(assert (=> b!4396018 (= lt!1602668 lt!1602667)))

(assert (=> b!4396018 (containsKey!904 (toList!3210 (extractMap!672 (toList!3209 (tail!7090 lm!1707)))) key!3918)))

(assert (=> b!4396018 (= lt!1602667 (lemmaInGetKeysListThenContainsKey!186 (toList!3210 (extractMap!672 (toList!3209 (tail!7090 lm!1707)))) key!3918))))

(declare-fun Unit!78300 () Unit!78288)

(assert (=> b!4396018 (= e!2737109 Unit!78300)))

(declare-fun bm!305973 () Bool)

(assert (=> bm!305973 (= call!305978 (contains!11620 e!2737113 key!3918))))

(declare-fun c!748325 () Bool)

(assert (=> bm!305973 (= c!748325 c!748327)))

(assert (= (and d!1324440 c!748327) b!4396017))

(assert (= (and d!1324440 (not c!748327)) b!4396010))

(assert (= (and b!4396010 c!748326) b!4396018))

(assert (= (and b!4396010 (not c!748326)) b!4396014))

(assert (= (or b!4396017 b!4396010) bm!305973))

(assert (= (and bm!305973 c!748325) b!4396011))

(assert (= (and bm!305973 (not c!748325)) b!4396012))

(assert (= (and d!1324440 res!1812523) b!4396013))

(assert (= (and d!1324440 (not res!1812524)) b!4396016))

(assert (= (and b!4396016 res!1812525) b!4396015))

(assert (=> b!4396013 m!5056087))

(declare-fun m!5056381 () Bool)

(assert (=> b!4396013 m!5056381))

(assert (=> b!4396013 m!5056381))

(declare-fun m!5056383 () Bool)

(assert (=> b!4396013 m!5056383))

(assert (=> b!4396012 m!5056087))

(assert (=> b!4396012 m!5056381))

(declare-fun m!5056385 () Bool)

(assert (=> d!1324440 m!5056385))

(assert (=> b!4396018 m!5056385))

(declare-fun m!5056387 () Bool)

(assert (=> b!4396018 m!5056387))

(assert (=> b!4396015 m!5056087))

(assert (=> b!4396015 m!5056381))

(assert (=> b!4396015 m!5056381))

(assert (=> b!4396015 m!5056383))

(declare-fun m!5056389 () Bool)

(assert (=> b!4396017 m!5056389))

(declare-fun m!5056391 () Bool)

(assert (=> b!4396017 m!5056391))

(assert (=> b!4396017 m!5056391))

(declare-fun m!5056393 () Bool)

(assert (=> b!4396017 m!5056393))

(declare-fun m!5056395 () Bool)

(assert (=> b!4396017 m!5056395))

(declare-fun m!5056397 () Bool)

(assert (=> b!4396011 m!5056397))

(declare-fun m!5056399 () Bool)

(assert (=> bm!305973 m!5056399))

(assert (=> b!4396016 m!5056391))

(assert (=> b!4396016 m!5056391))

(assert (=> b!4396016 m!5056393))

(assert (=> b!4395777 d!1324440))

(declare-fun d!1324442 () Bool)

(declare-fun tail!7092 (List!49366) List!49366)

(assert (=> d!1324442 (= (tail!7090 lm!1707) (ListLongMap!1860 (tail!7092 (toList!3209 lm!1707))))))

(declare-fun bs!726480 () Bool)

(assert (= bs!726480 d!1324442))

(declare-fun m!5056401 () Bool)

(assert (=> bs!726480 m!5056401))

(assert (=> b!4395777 d!1324442))

(declare-fun bs!726481 () Bool)

(declare-fun d!1324444 () Bool)

(assert (= bs!726481 (and d!1324444 start!426828)))

(declare-fun lambda!147893 () Int)

(assert (=> bs!726481 (= lambda!147893 lambda!147873)))

(declare-fun lt!1602672 () ListMap!2453)

(declare-fun invariantList!741 (List!49365) Bool)

(assert (=> d!1324444 (invariantList!741 (toList!3210 lt!1602672))))

(declare-fun e!2737116 () ListMap!2453)

(assert (=> d!1324444 (= lt!1602672 e!2737116)))

(declare-fun c!748330 () Bool)

(assert (=> d!1324444 (= c!748330 ((_ is Cons!49242) (t!356300 (toList!3209 lm!1707))))))

(assert (=> d!1324444 (forall!9332 (t!356300 (toList!3209 lm!1707)) lambda!147893)))

(assert (=> d!1324444 (= (extractMap!672 (t!356300 (toList!3209 lm!1707))) lt!1602672)))

(declare-fun b!4396023 () Bool)

(declare-fun addToMapMapFromBucket!286 (List!49365 ListMap!2453) ListMap!2453)

(assert (=> b!4396023 (= e!2737116 (addToMapMapFromBucket!286 (_2!27706 (h!54857 (t!356300 (toList!3209 lm!1707)))) (extractMap!672 (t!356300 (t!356300 (toList!3209 lm!1707))))))))

(declare-fun b!4396024 () Bool)

(assert (=> b!4396024 (= e!2737116 (ListMap!2454 Nil!49241))))

(assert (= (and d!1324444 c!748330) b!4396023))

(assert (= (and d!1324444 (not c!748330)) b!4396024))

(declare-fun m!5056403 () Bool)

(assert (=> d!1324444 m!5056403))

(declare-fun m!5056405 () Bool)

(assert (=> d!1324444 m!5056405))

(declare-fun m!5056407 () Bool)

(assert (=> b!4396023 m!5056407))

(assert (=> b!4396023 m!5056407))

(declare-fun m!5056409 () Bool)

(assert (=> b!4396023 m!5056409))

(assert (=> b!4395777 d!1324444))

(declare-fun bs!726482 () Bool)

(declare-fun d!1324446 () Bool)

(assert (= bs!726482 (and d!1324446 start!426828)))

(declare-fun lambda!147896 () Int)

(assert (=> bs!726482 (= lambda!147896 lambda!147873)))

(declare-fun bs!726483 () Bool)

(assert (= bs!726483 (and d!1324446 d!1324444)))

(assert (=> bs!726483 (= lambda!147896 lambda!147893)))

(assert (=> d!1324446 (not (containsKey!901 (apply!11465 lm!1707 (_1!27706 (h!54857 (toList!3209 lm!1707)))) key!3918))))

(declare-fun lt!1602675 () Unit!78288)

(declare-fun choose!27491 (ListLongMap!1859 K!10600 (_ BitVec 64) Hashable!5005) Unit!78288)

(assert (=> d!1324446 (= lt!1602675 (choose!27491 lm!1707 key!3918 (_1!27706 (h!54857 (toList!3209 lm!1707))) hashF!1247))))

(assert (=> d!1324446 (forall!9332 (toList!3209 lm!1707) lambda!147896)))

(assert (=> d!1324446 (= (lemmaNotSameHashThenCannotContainKey!84 lm!1707 key!3918 (_1!27706 (h!54857 (toList!3209 lm!1707))) hashF!1247) lt!1602675)))

(declare-fun bs!726484 () Bool)

(assert (= bs!726484 d!1324446))

(assert (=> bs!726484 m!5056099))

(assert (=> bs!726484 m!5056099))

(assert (=> bs!726484 m!5056101))

(declare-fun m!5056411 () Bool)

(assert (=> bs!726484 m!5056411))

(declare-fun m!5056413 () Bool)

(assert (=> bs!726484 m!5056413))

(assert (=> b!4395777 d!1324446))

(declare-fun d!1324448 () Bool)

(assert (=> d!1324448 (contains!11616 lt!1602517 key!3918)))

(declare-fun lt!1602678 () Unit!78288)

(declare-fun choose!27492 (List!49365 K!10600 V!10846 ListMap!2453) Unit!78288)

(assert (=> d!1324448 (= lt!1602678 (choose!27492 (_2!27706 (h!54857 (toList!3209 lm!1707))) key!3918 newValue!99 lt!1602517))))

(assert (=> d!1324448 (noDuplicateKeys!613 (_2!27706 (h!54857 (toList!3209 lm!1707))))))

(assert (=> d!1324448 (= (lemmaAddToMapContainsAndNotInListThenInAcc!72 (_2!27706 (h!54857 (toList!3209 lm!1707))) key!3918 newValue!99 lt!1602517) lt!1602678)))

(declare-fun bs!726485 () Bool)

(assert (= bs!726485 d!1324448))

(assert (=> bs!726485 m!5056095))

(declare-fun m!5056415 () Bool)

(assert (=> bs!726485 m!5056415))

(declare-fun m!5056417 () Bool)

(assert (=> bs!726485 m!5056417))

(assert (=> b!4395777 d!1324448))

(declare-fun bs!726486 () Bool)

(declare-fun d!1324450 () Bool)

(assert (= bs!726486 (and d!1324450 start!426828)))

(declare-fun lambda!147897 () Int)

(assert (=> bs!726486 (= lambda!147897 lambda!147873)))

(declare-fun bs!726487 () Bool)

(assert (= bs!726487 (and d!1324450 d!1324444)))

(assert (=> bs!726487 (= lambda!147897 lambda!147893)))

(declare-fun bs!726488 () Bool)

(assert (= bs!726488 (and d!1324450 d!1324446)))

(assert (=> bs!726488 (= lambda!147897 lambda!147896)))

(declare-fun lt!1602679 () ListMap!2453)

(assert (=> d!1324450 (invariantList!741 (toList!3210 lt!1602679))))

(declare-fun e!2737117 () ListMap!2453)

(assert (=> d!1324450 (= lt!1602679 e!2737117)))

(declare-fun c!748331 () Bool)

(assert (=> d!1324450 (= c!748331 ((_ is Cons!49242) (toList!3209 (tail!7090 lm!1707))))))

(assert (=> d!1324450 (forall!9332 (toList!3209 (tail!7090 lm!1707)) lambda!147897)))

(assert (=> d!1324450 (= (extractMap!672 (toList!3209 (tail!7090 lm!1707))) lt!1602679)))

(declare-fun b!4396025 () Bool)

(assert (=> b!4396025 (= e!2737117 (addToMapMapFromBucket!286 (_2!27706 (h!54857 (toList!3209 (tail!7090 lm!1707)))) (extractMap!672 (t!356300 (toList!3209 (tail!7090 lm!1707))))))))

(declare-fun b!4396026 () Bool)

(assert (=> b!4396026 (= e!2737117 (ListMap!2454 Nil!49241))))

(assert (= (and d!1324450 c!748331) b!4396025))

(assert (= (and d!1324450 (not c!748331)) b!4396026))

(declare-fun m!5056419 () Bool)

(assert (=> d!1324450 m!5056419))

(declare-fun m!5056421 () Bool)

(assert (=> d!1324450 m!5056421))

(declare-fun m!5056423 () Bool)

(assert (=> b!4396025 m!5056423))

(assert (=> b!4396025 m!5056423))

(declare-fun m!5056425 () Bool)

(assert (=> b!4396025 m!5056425))

(assert (=> b!4395777 d!1324450))

(declare-fun d!1324452 () Bool)

(declare-fun e!2737123 () Bool)

(assert (=> d!1324452 e!2737123))

(declare-fun res!1812528 () Bool)

(assert (=> d!1324452 (=> res!1812528 e!2737123)))

(declare-fun lt!1602689 () Bool)

(assert (=> d!1324452 (= res!1812528 (not lt!1602689))))

(declare-fun lt!1602691 () Bool)

(assert (=> d!1324452 (= lt!1602689 lt!1602691)))

(declare-fun lt!1602688 () Unit!78288)

(declare-fun e!2737122 () Unit!78288)

(assert (=> d!1324452 (= lt!1602688 e!2737122)))

(declare-fun c!748334 () Bool)

(assert (=> d!1324452 (= c!748334 lt!1602691)))

(declare-fun containsKey!905 (List!49366 (_ BitVec 64)) Bool)

(assert (=> d!1324452 (= lt!1602691 (containsKey!905 (toList!3209 lm!1707) hash!377))))

(assert (=> d!1324452 (= (contains!11617 lm!1707 hash!377) lt!1602689)))

(declare-fun b!4396033 () Bool)

(declare-fun lt!1602690 () Unit!78288)

(assert (=> b!4396033 (= e!2737122 lt!1602690)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!491 (List!49366 (_ BitVec 64)) Unit!78288)

(assert (=> b!4396033 (= lt!1602690 (lemmaContainsKeyImpliesGetValueByKeyDefined!491 (toList!3209 lm!1707) hash!377))))

(declare-fun isDefined!7888 (Option!10594) Bool)

(assert (=> b!4396033 (isDefined!7888 (getValueByKey!580 (toList!3209 lm!1707) hash!377))))

(declare-fun b!4396034 () Bool)

(declare-fun Unit!78301 () Unit!78288)

(assert (=> b!4396034 (= e!2737122 Unit!78301)))

(declare-fun b!4396035 () Bool)

(assert (=> b!4396035 (= e!2737123 (isDefined!7888 (getValueByKey!580 (toList!3209 lm!1707) hash!377)))))

(assert (= (and d!1324452 c!748334) b!4396033))

(assert (= (and d!1324452 (not c!748334)) b!4396034))

(assert (= (and d!1324452 (not res!1812528)) b!4396035))

(declare-fun m!5056427 () Bool)

(assert (=> d!1324452 m!5056427))

(declare-fun m!5056429 () Bool)

(assert (=> b!4396033 m!5056429))

(assert (=> b!4396033 m!5056137))

(assert (=> b!4396033 m!5056137))

(declare-fun m!5056431 () Bool)

(assert (=> b!4396033 m!5056431))

(assert (=> b!4396035 m!5056137))

(assert (=> b!4396035 m!5056137))

(assert (=> b!4396035 m!5056431))

(assert (=> b!4395779 d!1324452))

(declare-fun d!1324454 () Bool)

(declare-fun res!1812529 () Bool)

(declare-fun e!2737124 () Bool)

(assert (=> d!1324454 (=> res!1812529 e!2737124)))

(assert (=> d!1324454 (= res!1812529 (and ((_ is Cons!49241) (_2!27706 (h!54857 (toList!3209 lm!1707)))) (= (_1!27705 (h!54856 (_2!27706 (h!54857 (toList!3209 lm!1707))))) key!3918)))))

(assert (=> d!1324454 (= (containsKey!901 (_2!27706 (h!54857 (toList!3209 lm!1707))) key!3918) e!2737124)))

(declare-fun b!4396036 () Bool)

(declare-fun e!2737125 () Bool)

(assert (=> b!4396036 (= e!2737124 e!2737125)))

(declare-fun res!1812530 () Bool)

(assert (=> b!4396036 (=> (not res!1812530) (not e!2737125))))

(assert (=> b!4396036 (= res!1812530 ((_ is Cons!49241) (_2!27706 (h!54857 (toList!3209 lm!1707)))))))

(declare-fun b!4396037 () Bool)

(assert (=> b!4396037 (= e!2737125 (containsKey!901 (t!356299 (_2!27706 (h!54857 (toList!3209 lm!1707)))) key!3918))))

(assert (= (and d!1324454 (not res!1812529)) b!4396036))

(assert (= (and b!4396036 res!1812530) b!4396037))

(declare-fun m!5056433 () Bool)

(assert (=> b!4396037 m!5056433))

(assert (=> b!4395785 d!1324454))

(declare-fun b!4396039 () Bool)

(declare-fun e!2737131 () List!49368)

(assert (=> b!4396039 (= e!2737131 (getKeysList!188 (toList!3210 (extractMap!672 (toList!3209 lm!1707)))))))

(declare-fun b!4396040 () Bool)

(assert (=> b!4396040 (= e!2737131 (keys!16724 (extractMap!672 (toList!3209 lm!1707))))))

(declare-fun b!4396041 () Bool)

(declare-fun e!2737128 () Bool)

(assert (=> b!4396041 (= e!2737128 (not (contains!11620 (keys!16724 (extractMap!672 (toList!3209 lm!1707))) key!3918)))))

(declare-fun b!4396042 () Bool)

(declare-fun e!2737127 () Unit!78288)

(declare-fun Unit!78302 () Unit!78288)

(assert (=> b!4396042 (= e!2737127 Unit!78302)))

(declare-fun b!4396043 () Bool)

(declare-fun e!2737129 () Bool)

(assert (=> b!4396043 (= e!2737129 (contains!11620 (keys!16724 (extractMap!672 (toList!3209 lm!1707))) key!3918))))

(declare-fun b!4396044 () Bool)

(declare-fun e!2737126 () Bool)

(assert (=> b!4396044 (= e!2737126 e!2737129)))

(declare-fun res!1812533 () Bool)

(assert (=> b!4396044 (=> (not res!1812533) (not e!2737129))))

(assert (=> b!4396044 (= res!1812533 (isDefined!7887 (getValueByKey!581 (toList!3210 (extractMap!672 (toList!3209 lm!1707))) key!3918)))))

(declare-fun b!4396045 () Bool)

(declare-fun e!2737130 () Unit!78288)

(declare-fun lt!1602693 () Unit!78288)

(assert (=> b!4396045 (= e!2737130 lt!1602693)))

(declare-fun lt!1602692 () Unit!78288)

(assert (=> b!4396045 (= lt!1602692 (lemmaContainsKeyImpliesGetValueByKeyDefined!490 (toList!3210 (extractMap!672 (toList!3209 lm!1707))) key!3918))))

(assert (=> b!4396045 (isDefined!7887 (getValueByKey!581 (toList!3210 (extractMap!672 (toList!3209 lm!1707))) key!3918))))

(declare-fun lt!1602695 () Unit!78288)

(assert (=> b!4396045 (= lt!1602695 lt!1602692)))

(assert (=> b!4396045 (= lt!1602693 (lemmaInListThenGetKeysListContains!185 (toList!3210 (extractMap!672 (toList!3209 lm!1707))) key!3918))))

(declare-fun call!305979 () Bool)

(assert (=> b!4396045 call!305979))

(declare-fun d!1324456 () Bool)

(assert (=> d!1324456 e!2737126))

(declare-fun res!1812532 () Bool)

(assert (=> d!1324456 (=> res!1812532 e!2737126)))

(assert (=> d!1324456 (= res!1812532 e!2737128)))

(declare-fun res!1812531 () Bool)

(assert (=> d!1324456 (=> (not res!1812531) (not e!2737128))))

(declare-fun lt!1602694 () Bool)

(assert (=> d!1324456 (= res!1812531 (not lt!1602694))))

(declare-fun lt!1602696 () Bool)

(assert (=> d!1324456 (= lt!1602694 lt!1602696)))

(declare-fun lt!1602699 () Unit!78288)

(assert (=> d!1324456 (= lt!1602699 e!2737130)))

(declare-fun c!748337 () Bool)

(assert (=> d!1324456 (= c!748337 lt!1602696)))

(assert (=> d!1324456 (= lt!1602696 (containsKey!904 (toList!3210 (extractMap!672 (toList!3209 lm!1707))) key!3918))))

(assert (=> d!1324456 (= (contains!11616 (extractMap!672 (toList!3209 lm!1707)) key!3918) lt!1602694)))

(declare-fun b!4396038 () Bool)

(assert (=> b!4396038 (= e!2737130 e!2737127)))

(declare-fun c!748336 () Bool)

(assert (=> b!4396038 (= c!748336 call!305979)))

(declare-fun b!4396046 () Bool)

(assert (=> b!4396046 false))

(declare-fun lt!1602698 () Unit!78288)

(declare-fun lt!1602697 () Unit!78288)

(assert (=> b!4396046 (= lt!1602698 lt!1602697)))

(assert (=> b!4396046 (containsKey!904 (toList!3210 (extractMap!672 (toList!3209 lm!1707))) key!3918)))

(assert (=> b!4396046 (= lt!1602697 (lemmaInGetKeysListThenContainsKey!186 (toList!3210 (extractMap!672 (toList!3209 lm!1707))) key!3918))))

(declare-fun Unit!78303 () Unit!78288)

(assert (=> b!4396046 (= e!2737127 Unit!78303)))

(declare-fun bm!305974 () Bool)

(assert (=> bm!305974 (= call!305979 (contains!11620 e!2737131 key!3918))))

(declare-fun c!748335 () Bool)

(assert (=> bm!305974 (= c!748335 c!748337)))

(assert (= (and d!1324456 c!748337) b!4396045))

(assert (= (and d!1324456 (not c!748337)) b!4396038))

(assert (= (and b!4396038 c!748336) b!4396046))

(assert (= (and b!4396038 (not c!748336)) b!4396042))

(assert (= (or b!4396045 b!4396038) bm!305974))

(assert (= (and bm!305974 c!748335) b!4396039))

(assert (= (and bm!305974 (not c!748335)) b!4396040))

(assert (= (and d!1324456 res!1812531) b!4396041))

(assert (= (and d!1324456 (not res!1812532)) b!4396044))

(assert (= (and b!4396044 res!1812533) b!4396043))

(assert (=> b!4396041 m!5056103))

(declare-fun m!5056435 () Bool)

(assert (=> b!4396041 m!5056435))

(assert (=> b!4396041 m!5056435))

(declare-fun m!5056437 () Bool)

(assert (=> b!4396041 m!5056437))

(assert (=> b!4396040 m!5056103))

(assert (=> b!4396040 m!5056435))

(declare-fun m!5056439 () Bool)

(assert (=> d!1324456 m!5056439))

(assert (=> b!4396046 m!5056439))

(declare-fun m!5056441 () Bool)

(assert (=> b!4396046 m!5056441))

(assert (=> b!4396043 m!5056103))

(assert (=> b!4396043 m!5056435))

(assert (=> b!4396043 m!5056435))

(assert (=> b!4396043 m!5056437))

(declare-fun m!5056443 () Bool)

(assert (=> b!4396045 m!5056443))

(declare-fun m!5056445 () Bool)

(assert (=> b!4396045 m!5056445))

(assert (=> b!4396045 m!5056445))

(declare-fun m!5056447 () Bool)

(assert (=> b!4396045 m!5056447))

(declare-fun m!5056449 () Bool)

(assert (=> b!4396045 m!5056449))

(declare-fun m!5056451 () Bool)

(assert (=> b!4396039 m!5056451))

(declare-fun m!5056453 () Bool)

(assert (=> bm!305974 m!5056453))

(assert (=> b!4396044 m!5056445))

(assert (=> b!4396044 m!5056445))

(assert (=> b!4396044 m!5056447))

(assert (=> b!4395787 d!1324456))

(declare-fun bs!726489 () Bool)

(declare-fun d!1324458 () Bool)

(assert (= bs!726489 (and d!1324458 start!426828)))

(declare-fun lambda!147898 () Int)

(assert (=> bs!726489 (= lambda!147898 lambda!147873)))

(declare-fun bs!726490 () Bool)

(assert (= bs!726490 (and d!1324458 d!1324444)))

(assert (=> bs!726490 (= lambda!147898 lambda!147893)))

(declare-fun bs!726491 () Bool)

(assert (= bs!726491 (and d!1324458 d!1324446)))

(assert (=> bs!726491 (= lambda!147898 lambda!147896)))

(declare-fun bs!726492 () Bool)

(assert (= bs!726492 (and d!1324458 d!1324450)))

(assert (=> bs!726492 (= lambda!147898 lambda!147897)))

(declare-fun lt!1602700 () ListMap!2453)

(assert (=> d!1324458 (invariantList!741 (toList!3210 lt!1602700))))

(declare-fun e!2737132 () ListMap!2453)

(assert (=> d!1324458 (= lt!1602700 e!2737132)))

(declare-fun c!748338 () Bool)

(assert (=> d!1324458 (= c!748338 ((_ is Cons!49242) (toList!3209 lm!1707)))))

(assert (=> d!1324458 (forall!9332 (toList!3209 lm!1707) lambda!147898)))

(assert (=> d!1324458 (= (extractMap!672 (toList!3209 lm!1707)) lt!1602700)))

(declare-fun b!4396047 () Bool)

(assert (=> b!4396047 (= e!2737132 (addToMapMapFromBucket!286 (_2!27706 (h!54857 (toList!3209 lm!1707))) (extractMap!672 (t!356300 (toList!3209 lm!1707)))))))

(declare-fun b!4396048 () Bool)

(assert (=> b!4396048 (= e!2737132 (ListMap!2454 Nil!49241))))

(assert (= (and d!1324458 c!748338) b!4396047))

(assert (= (and d!1324458 (not c!748338)) b!4396048))

(declare-fun m!5056455 () Bool)

(assert (=> d!1324458 m!5056455))

(declare-fun m!5056457 () Bool)

(assert (=> d!1324458 m!5056457))

(assert (=> b!4396047 m!5056085))

(assert (=> b!4396047 m!5056085))

(declare-fun m!5056459 () Bool)

(assert (=> b!4396047 m!5056459))

(assert (=> b!4395787 d!1324458))

(declare-fun bs!726493 () Bool)

(declare-fun d!1324460 () Bool)

(assert (= bs!726493 (and d!1324460 d!1324446)))

(declare-fun lambda!147901 () Int)

(assert (=> bs!726493 (not (= lambda!147901 lambda!147896))))

(declare-fun bs!726494 () Bool)

(assert (= bs!726494 (and d!1324460 start!426828)))

(assert (=> bs!726494 (not (= lambda!147901 lambda!147873))))

(declare-fun bs!726495 () Bool)

(assert (= bs!726495 (and d!1324460 d!1324458)))

(assert (=> bs!726495 (not (= lambda!147901 lambda!147898))))

(declare-fun bs!726496 () Bool)

(assert (= bs!726496 (and d!1324460 d!1324450)))

(assert (=> bs!726496 (not (= lambda!147901 lambda!147897))))

(declare-fun bs!726497 () Bool)

(assert (= bs!726497 (and d!1324460 d!1324444)))

(assert (=> bs!726497 (not (= lambda!147901 lambda!147893))))

(assert (=> d!1324460 true))

(assert (=> d!1324460 (= (allKeysSameHashInMap!717 lm!1707 hashF!1247) (forall!9332 (toList!3209 lm!1707) lambda!147901))))

(declare-fun bs!726498 () Bool)

(assert (= bs!726498 d!1324460))

(declare-fun m!5056461 () Bool)

(assert (=> bs!726498 m!5056461))

(assert (=> b!4395776 d!1324460))

(declare-fun b!4396055 () Bool)

(declare-fun tp!1331618 () Bool)

(declare-fun e!2737135 () Bool)

(assert (=> b!4396055 (= e!2737135 (and tp_is_empty!25689 tp_is_empty!25691 tp!1331618))))

(assert (=> b!4395786 (= tp!1331605 e!2737135)))

(assert (= (and b!4395786 ((_ is Cons!49241) (t!356299 newBucket!200))) b!4396055))

(declare-fun b!4396060 () Bool)

(declare-fun e!2737138 () Bool)

(declare-fun tp!1331623 () Bool)

(declare-fun tp!1331624 () Bool)

(assert (=> b!4396060 (= e!2737138 (and tp!1331623 tp!1331624))))

(assert (=> b!4395780 (= tp!1331606 e!2737138)))

(assert (= (and b!4395780 ((_ is Cons!49242) (toList!3209 lm!1707))) b!4396060))

(declare-fun b_lambda!139153 () Bool)

(assert (= b_lambda!139129 (or start!426828 b_lambda!139153)))

(declare-fun bs!726499 () Bool)

(declare-fun d!1324462 () Bool)

(assert (= bs!726499 (and d!1324462 start!426828)))

(assert (=> bs!726499 (= (dynLambda!20745 lambda!147873 (h!54857 (toList!3209 lm!1707))) (noDuplicateKeys!613 (_2!27706 (h!54857 (toList!3209 lm!1707)))))))

(assert (=> bs!726499 m!5056417))

(assert (=> b!4395793 d!1324462))

(declare-fun b_lambda!139155 () Bool)

(assert (= b_lambda!139131 (or start!426828 b_lambda!139155)))

(declare-fun bs!726500 () Bool)

(declare-fun d!1324464 () Bool)

(assert (= bs!726500 (and d!1324464 start!426828)))

(assert (=> bs!726500 (= (dynLambda!20745 lambda!147873 (h!54857 (toList!3209 lt!1602514))) (noDuplicateKeys!613 (_2!27706 (h!54857 (toList!3209 lt!1602514)))))))

(declare-fun m!5056463 () Bool)

(assert (=> bs!726500 m!5056463))

(assert (=> b!4395795 d!1324464))

(declare-fun b_lambda!139157 () Bool)

(assert (= b_lambda!139137 (or start!426828 b_lambda!139157)))

(declare-fun bs!726501 () Bool)

(declare-fun d!1324466 () Bool)

(assert (= bs!726501 (and d!1324466 start!426828)))

(assert (=> bs!726501 (= (dynLambda!20745 lambda!147873 lt!1602518) (noDuplicateKeys!613 (_2!27706 lt!1602518)))))

(declare-fun m!5056465 () Bool)

(assert (=> bs!726501 m!5056465))

(assert (=> d!1324378 d!1324466))

(declare-fun b_lambda!139159 () Bool)

(assert (= b_lambda!139143 (or start!426828 b_lambda!139159)))

(declare-fun bs!726502 () Bool)

(declare-fun d!1324468 () Bool)

(assert (= bs!726502 (and d!1324468 start!426828)))

(assert (=> bs!726502 (= (dynLambda!20745 lambda!147873 (tuple2!48825 hash!377 newBucket!200)) (noDuplicateKeys!613 (_2!27706 (tuple2!48825 hash!377 newBucket!200))))))

(declare-fun m!5056467 () Bool)

(assert (=> bs!726502 m!5056467))

(assert (=> b!4395934 d!1324468))

(check-sat (not d!1324458) (not b!4396007) (not b!4396037) (not b_lambda!139153) (not d!1324368) (not bs!726501) (not b!4396023) (not b!4396046) (not b!4396011) (not b!4396055) (not b!4395902) (not d!1324460) (not bm!305972) (not b!4396008) (not b!4396018) (not b!4396016) (not bm!305973) (not b!4395801) (not d!1324350) (not d!1324412) (not b!4395802) (not d!1324444) (not d!1324456) (not d!1324360) (not b!4396003) (not b!4396009) (not d!1324382) (not b!4396045) (not b!4395838) (not b!4396015) (not d!1324346) (not b!4396047) (not bm!305974) (not d!1324356) (not b!4396033) (not d!1324396) (not b!4395946) (not bs!726502) (not d!1324390) (not b!4395903) tp_is_empty!25691 (not b!4395796) (not b!4396004) (not b!4395823) (not b!4396006) (not bs!726499) (not b!4396002) (not b!4396060) (not b!4396039) (not d!1324448) (not d!1324406) (not b!4396043) (not b!4396013) (not d!1324452) (not d!1324450) (not b!4396012) (not d!1324378) (not b!4396044) (not b!4396041) (not bs!726500) (not d!1324402) (not b!4395874) (not b!4395847) (not b!4396040) (not b_lambda!139157) (not b!4396035) (not b!4395794) tp_is_empty!25689 (not d!1324440) (not d!1324446) (not b_lambda!139159) (not b!4396017) (not d!1324442) (not b!4396025) (not b_lambda!139155))
(check-sat)
(get-model)

(declare-fun d!1324554 () Bool)

(declare-fun lt!1602737 () Bool)

(declare-fun content!7853 (List!49368) (InoxSet K!10600))

(assert (=> d!1324554 (= lt!1602737 (select (content!7853 e!2737131) key!3918))))

(declare-fun e!2737236 () Bool)

(assert (=> d!1324554 (= lt!1602737 e!2737236)))

(declare-fun res!1812611 () Bool)

(assert (=> d!1324554 (=> (not res!1812611) (not e!2737236))))

(assert (=> d!1324554 (= res!1812611 ((_ is Cons!49244) e!2737131))))

(assert (=> d!1324554 (= (contains!11620 e!2737131 key!3918) lt!1602737)))

(declare-fun b!4396212 () Bool)

(declare-fun e!2737237 () Bool)

(assert (=> b!4396212 (= e!2737236 e!2737237)))

(declare-fun res!1812612 () Bool)

(assert (=> b!4396212 (=> res!1812612 e!2737237)))

(assert (=> b!4396212 (= res!1812612 (= (h!54861 e!2737131) key!3918))))

(declare-fun b!4396213 () Bool)

(assert (=> b!4396213 (= e!2737237 (contains!11620 (t!356302 e!2737131) key!3918))))

(assert (= (and d!1324554 res!1812611) b!4396212))

(assert (= (and b!4396212 (not res!1812612)) b!4396213))

(declare-fun m!5056647 () Bool)

(assert (=> d!1324554 m!5056647))

(declare-fun m!5056649 () Bool)

(assert (=> d!1324554 m!5056649))

(declare-fun m!5056651 () Bool)

(assert (=> b!4396213 m!5056651))

(assert (=> bm!305974 d!1324554))

(declare-fun b!4396221 () Bool)

(assert (=> b!4396221 true))

(declare-fun d!1324556 () Bool)

(declare-fun e!2737240 () Bool)

(assert (=> d!1324556 e!2737240))

(declare-fun res!1812621 () Bool)

(assert (=> d!1324556 (=> (not res!1812621) (not e!2737240))))

(declare-fun lt!1602740 () List!49368)

(declare-fun noDuplicate!630 (List!49368) Bool)

(assert (=> d!1324556 (= res!1812621 (noDuplicate!630 lt!1602740))))

(assert (=> d!1324556 (= lt!1602740 (getKeysList!188 (toList!3210 lt!1602517)))))

(assert (=> d!1324556 (= (keys!16724 lt!1602517) lt!1602740)))

(declare-fun b!4396220 () Bool)

(declare-fun res!1812619 () Bool)

(assert (=> b!4396220 (=> (not res!1812619) (not e!2737240))))

(declare-fun length!116 (List!49368) Int)

(declare-fun length!117 (List!49365) Int)

(assert (=> b!4396220 (= res!1812619 (= (length!116 lt!1602740) (length!117 (toList!3210 lt!1602517))))))

(declare-fun res!1812620 () Bool)

(assert (=> b!4396221 (=> (not res!1812620) (not e!2737240))))

(declare-fun lambda!147916 () Int)

(declare-fun forall!9336 (List!49368 Int) Bool)

(assert (=> b!4396221 (= res!1812620 (forall!9336 lt!1602740 lambda!147916))))

(declare-fun lambda!147917 () Int)

(declare-fun b!4396222 () Bool)

(declare-fun map!10733 (List!49365 Int) List!49368)

(assert (=> b!4396222 (= e!2737240 (= (content!7853 lt!1602740) (content!7853 (map!10733 (toList!3210 lt!1602517) lambda!147917))))))

(assert (= (and d!1324556 res!1812621) b!4396220))

(assert (= (and b!4396220 res!1812619) b!4396221))

(assert (= (and b!4396221 res!1812620) b!4396222))

(declare-fun m!5056653 () Bool)

(assert (=> d!1324556 m!5056653))

(assert (=> d!1324556 m!5056377))

(declare-fun m!5056655 () Bool)

(assert (=> b!4396220 m!5056655))

(declare-fun m!5056657 () Bool)

(assert (=> b!4396220 m!5056657))

(declare-fun m!5056659 () Bool)

(assert (=> b!4396221 m!5056659))

(declare-fun m!5056661 () Bool)

(assert (=> b!4396222 m!5056661))

(declare-fun m!5056663 () Bool)

(assert (=> b!4396222 m!5056663))

(assert (=> b!4396222 m!5056663))

(declare-fun m!5056665 () Bool)

(assert (=> b!4396222 m!5056665))

(assert (=> b!4396003 d!1324556))

(declare-fun d!1324558 () Bool)

(declare-fun noDuplicatedKeys!146 (List!49365) Bool)

(assert (=> d!1324558 (= (invariantList!741 (toList!3210 lt!1602700)) (noDuplicatedKeys!146 (toList!3210 lt!1602700)))))

(declare-fun bs!726519 () Bool)

(assert (= bs!726519 d!1324558))

(declare-fun m!5056667 () Bool)

(assert (=> bs!726519 m!5056667))

(assert (=> d!1324458 d!1324558))

(declare-fun d!1324560 () Bool)

(declare-fun res!1812622 () Bool)

(declare-fun e!2737241 () Bool)

(assert (=> d!1324560 (=> res!1812622 e!2737241)))

(assert (=> d!1324560 (= res!1812622 ((_ is Nil!49242) (toList!3209 lm!1707)))))

(assert (=> d!1324560 (= (forall!9332 (toList!3209 lm!1707) lambda!147898) e!2737241)))

(declare-fun b!4396225 () Bool)

(declare-fun e!2737242 () Bool)

(assert (=> b!4396225 (= e!2737241 e!2737242)))

(declare-fun res!1812623 () Bool)

(assert (=> b!4396225 (=> (not res!1812623) (not e!2737242))))

(assert (=> b!4396225 (= res!1812623 (dynLambda!20745 lambda!147898 (h!54857 (toList!3209 lm!1707))))))

(declare-fun b!4396226 () Bool)

(assert (=> b!4396226 (= e!2737242 (forall!9332 (t!356300 (toList!3209 lm!1707)) lambda!147898))))

(assert (= (and d!1324560 (not res!1812622)) b!4396225))

(assert (= (and b!4396225 res!1812623) b!4396226))

(declare-fun b_lambda!139171 () Bool)

(assert (=> (not b_lambda!139171) (not b!4396225)))

(declare-fun m!5056669 () Bool)

(assert (=> b!4396225 m!5056669))

(declare-fun m!5056671 () Bool)

(assert (=> b!4396226 m!5056671))

(assert (=> d!1324458 d!1324560))

(declare-fun d!1324562 () Bool)

(declare-fun res!1812628 () Bool)

(declare-fun e!2737247 () Bool)

(assert (=> d!1324562 (=> res!1812628 e!2737247)))

(assert (=> d!1324562 (= res!1812628 (and ((_ is Cons!49241) (toList!3210 (extractMap!672 (toList!3209 (tail!7090 lm!1707))))) (= (_1!27705 (h!54856 (toList!3210 (extractMap!672 (toList!3209 (tail!7090 lm!1707)))))) key!3918)))))

(assert (=> d!1324562 (= (containsKey!904 (toList!3210 (extractMap!672 (toList!3209 (tail!7090 lm!1707)))) key!3918) e!2737247)))

(declare-fun b!4396231 () Bool)

(declare-fun e!2737248 () Bool)

(assert (=> b!4396231 (= e!2737247 e!2737248)))

(declare-fun res!1812629 () Bool)

(assert (=> b!4396231 (=> (not res!1812629) (not e!2737248))))

(assert (=> b!4396231 (= res!1812629 ((_ is Cons!49241) (toList!3210 (extractMap!672 (toList!3209 (tail!7090 lm!1707))))))))

(declare-fun b!4396232 () Bool)

(assert (=> b!4396232 (= e!2737248 (containsKey!904 (t!356299 (toList!3210 (extractMap!672 (toList!3209 (tail!7090 lm!1707))))) key!3918))))

(assert (= (and d!1324562 (not res!1812628)) b!4396231))

(assert (= (and b!4396231 res!1812629) b!4396232))

(declare-fun m!5056673 () Bool)

(assert (=> b!4396232 m!5056673))

(assert (=> b!4396018 d!1324562))

(declare-fun d!1324564 () Bool)

(assert (=> d!1324564 (containsKey!904 (toList!3210 (extractMap!672 (toList!3209 (tail!7090 lm!1707)))) key!3918)))

(declare-fun lt!1602743 () Unit!78288)

(declare-fun choose!27496 (List!49365 K!10600) Unit!78288)

(assert (=> d!1324564 (= lt!1602743 (choose!27496 (toList!3210 (extractMap!672 (toList!3209 (tail!7090 lm!1707)))) key!3918))))

(assert (=> d!1324564 (invariantList!741 (toList!3210 (extractMap!672 (toList!3209 (tail!7090 lm!1707)))))))

(assert (=> d!1324564 (= (lemmaInGetKeysListThenContainsKey!186 (toList!3210 (extractMap!672 (toList!3209 (tail!7090 lm!1707)))) key!3918) lt!1602743)))

(declare-fun bs!726520 () Bool)

(assert (= bs!726520 d!1324564))

(assert (=> bs!726520 m!5056385))

(declare-fun m!5056675 () Bool)

(assert (=> bs!726520 m!5056675))

(declare-fun m!5056677 () Bool)

(assert (=> bs!726520 m!5056677))

(assert (=> b!4396018 d!1324564))

(declare-fun d!1324566 () Bool)

(assert (=> d!1324566 (isDefined!7887 (getValueByKey!581 (toList!3210 (extractMap!672 (toList!3209 lm!1707))) key!3918))))

(declare-fun lt!1602746 () Unit!78288)

(declare-fun choose!27497 (List!49365 K!10600) Unit!78288)

(assert (=> d!1324566 (= lt!1602746 (choose!27497 (toList!3210 (extractMap!672 (toList!3209 lm!1707))) key!3918))))

(assert (=> d!1324566 (invariantList!741 (toList!3210 (extractMap!672 (toList!3209 lm!1707))))))

(assert (=> d!1324566 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!490 (toList!3210 (extractMap!672 (toList!3209 lm!1707))) key!3918) lt!1602746)))

(declare-fun bs!726521 () Bool)

(assert (= bs!726521 d!1324566))

(assert (=> bs!726521 m!5056445))

(assert (=> bs!726521 m!5056445))

(assert (=> bs!726521 m!5056447))

(declare-fun m!5056679 () Bool)

(assert (=> bs!726521 m!5056679))

(declare-fun m!5056681 () Bool)

(assert (=> bs!726521 m!5056681))

(assert (=> b!4396045 d!1324566))

(declare-fun d!1324568 () Bool)

(declare-fun isEmpty!28266 (Option!10595) Bool)

(assert (=> d!1324568 (= (isDefined!7887 (getValueByKey!581 (toList!3210 (extractMap!672 (toList!3209 lm!1707))) key!3918)) (not (isEmpty!28266 (getValueByKey!581 (toList!3210 (extractMap!672 (toList!3209 lm!1707))) key!3918))))))

(declare-fun bs!726522 () Bool)

(assert (= bs!726522 d!1324568))

(assert (=> bs!726522 m!5056445))

(declare-fun m!5056683 () Bool)

(assert (=> bs!726522 m!5056683))

(assert (=> b!4396045 d!1324568))

(declare-fun d!1324570 () Bool)

(declare-fun c!748379 () Bool)

(assert (=> d!1324570 (= c!748379 (and ((_ is Cons!49241) (toList!3210 (extractMap!672 (toList!3209 lm!1707)))) (= (_1!27705 (h!54856 (toList!3210 (extractMap!672 (toList!3209 lm!1707))))) key!3918)))))

(declare-fun e!2737253 () Option!10595)

(assert (=> d!1324570 (= (getValueByKey!581 (toList!3210 (extractMap!672 (toList!3209 lm!1707))) key!3918) e!2737253)))

(declare-fun b!4396244 () Bool)

(declare-fun e!2737254 () Option!10595)

(assert (=> b!4396244 (= e!2737254 None!10594)))

(declare-fun b!4396242 () Bool)

(assert (=> b!4396242 (= e!2737253 e!2737254)))

(declare-fun c!748380 () Bool)

(assert (=> b!4396242 (= c!748380 (and ((_ is Cons!49241) (toList!3210 (extractMap!672 (toList!3209 lm!1707)))) (not (= (_1!27705 (h!54856 (toList!3210 (extractMap!672 (toList!3209 lm!1707))))) key!3918))))))

(declare-fun b!4396241 () Bool)

(assert (=> b!4396241 (= e!2737253 (Some!10594 (_2!27705 (h!54856 (toList!3210 (extractMap!672 (toList!3209 lm!1707)))))))))

(declare-fun b!4396243 () Bool)

(assert (=> b!4396243 (= e!2737254 (getValueByKey!581 (t!356299 (toList!3210 (extractMap!672 (toList!3209 lm!1707)))) key!3918))))

(assert (= (and d!1324570 c!748379) b!4396241))

(assert (= (and d!1324570 (not c!748379)) b!4396242))

(assert (= (and b!4396242 c!748380) b!4396243))

(assert (= (and b!4396242 (not c!748380)) b!4396244))

(declare-fun m!5056685 () Bool)

(assert (=> b!4396243 m!5056685))

(assert (=> b!4396045 d!1324570))

(declare-fun d!1324572 () Bool)

(assert (=> d!1324572 (contains!11620 (getKeysList!188 (toList!3210 (extractMap!672 (toList!3209 lm!1707)))) key!3918)))

(declare-fun lt!1602749 () Unit!78288)

(declare-fun choose!27499 (List!49365 K!10600) Unit!78288)

(assert (=> d!1324572 (= lt!1602749 (choose!27499 (toList!3210 (extractMap!672 (toList!3209 lm!1707))) key!3918))))

(assert (=> d!1324572 (invariantList!741 (toList!3210 (extractMap!672 (toList!3209 lm!1707))))))

(assert (=> d!1324572 (= (lemmaInListThenGetKeysListContains!185 (toList!3210 (extractMap!672 (toList!3209 lm!1707))) key!3918) lt!1602749)))

(declare-fun bs!726523 () Bool)

(assert (= bs!726523 d!1324572))

(assert (=> bs!726523 m!5056451))

(assert (=> bs!726523 m!5056451))

(declare-fun m!5056687 () Bool)

(assert (=> bs!726523 m!5056687))

(declare-fun m!5056689 () Bool)

(assert (=> bs!726523 m!5056689))

(assert (=> bs!726523 m!5056681))

(assert (=> b!4396045 d!1324572))

(declare-fun d!1324574 () Bool)

(assert (=> d!1324574 (= (tail!7092 (toList!3209 lm!1707)) (t!356300 (toList!3209 lm!1707)))))

(assert (=> d!1324442 d!1324574))

(declare-fun d!1324576 () Bool)

(declare-fun res!1812634 () Bool)

(declare-fun e!2737259 () Bool)

(assert (=> d!1324576 (=> res!1812634 e!2737259)))

(assert (=> d!1324576 (= res!1812634 (and ((_ is Cons!49242) (toList!3209 lm!1707)) (= (_1!27706 (h!54857 (toList!3209 lm!1707))) hash!377)))))

(assert (=> d!1324576 (= (containsKey!905 (toList!3209 lm!1707) hash!377) e!2737259)))

(declare-fun b!4396249 () Bool)

(declare-fun e!2737260 () Bool)

(assert (=> b!4396249 (= e!2737259 e!2737260)))

(declare-fun res!1812635 () Bool)

(assert (=> b!4396249 (=> (not res!1812635) (not e!2737260))))

(assert (=> b!4396249 (= res!1812635 (and (or (not ((_ is Cons!49242) (toList!3209 lm!1707))) (bvsle (_1!27706 (h!54857 (toList!3209 lm!1707))) hash!377)) ((_ is Cons!49242) (toList!3209 lm!1707)) (bvslt (_1!27706 (h!54857 (toList!3209 lm!1707))) hash!377)))))

(declare-fun b!4396250 () Bool)

(assert (=> b!4396250 (= e!2737260 (containsKey!905 (t!356300 (toList!3209 lm!1707)) hash!377))))

(assert (= (and d!1324576 (not res!1812634)) b!4396249))

(assert (= (and b!4396249 res!1812635) b!4396250))

(declare-fun m!5056691 () Bool)

(assert (=> b!4396250 m!5056691))

(assert (=> d!1324452 d!1324576))

(declare-fun bs!726663 () Bool)

(declare-fun b!4396372 () Bool)

(assert (= bs!726663 (and b!4396372 d!1324390)))

(declare-fun lambda!148008 () Int)

(assert (=> bs!726663 (not (= lambda!148008 lambda!147879))))

(assert (=> b!4396372 true))

(declare-fun bs!726664 () Bool)

(declare-fun b!4396373 () Bool)

(assert (= bs!726664 (and b!4396373 d!1324390)))

(declare-fun lambda!148009 () Int)

(assert (=> bs!726664 (not (= lambda!148009 lambda!147879))))

(declare-fun bs!726665 () Bool)

(assert (= bs!726665 (and b!4396373 b!4396372)))

(assert (=> bs!726665 (= lambda!148009 lambda!148008)))

(assert (=> b!4396373 true))

(declare-fun lambda!148010 () Int)

(assert (=> bs!726664 (not (= lambda!148010 lambda!147879))))

(declare-fun lt!1602962 () ListMap!2453)

(assert (=> bs!726665 (= (= lt!1602962 (extractMap!672 (t!356300 (toList!3209 lm!1707)))) (= lambda!148010 lambda!148008))))

(assert (=> b!4396373 (= (= lt!1602962 (extractMap!672 (t!356300 (toList!3209 lm!1707)))) (= lambda!148010 lambda!148009))))

(assert (=> b!4396373 true))

(declare-fun bs!726666 () Bool)

(declare-fun d!1324578 () Bool)

(assert (= bs!726666 (and d!1324578 d!1324390)))

(declare-fun lambda!148011 () Int)

(assert (=> bs!726666 (not (= lambda!148011 lambda!147879))))

(declare-fun bs!726667 () Bool)

(assert (= bs!726667 (and d!1324578 b!4396372)))

(declare-fun lt!1602943 () ListMap!2453)

(assert (=> bs!726667 (= (= lt!1602943 (extractMap!672 (t!356300 (toList!3209 lm!1707)))) (= lambda!148011 lambda!148008))))

(declare-fun bs!726668 () Bool)

(assert (= bs!726668 (and d!1324578 b!4396373)))

(assert (=> bs!726668 (= (= lt!1602943 (extractMap!672 (t!356300 (toList!3209 lm!1707)))) (= lambda!148011 lambda!148009))))

(assert (=> bs!726668 (= (= lt!1602943 lt!1602962) (= lambda!148011 lambda!148010))))

(assert (=> d!1324578 true))

(declare-fun b!4396371 () Bool)

(declare-fun e!2737334 () Bool)

(assert (=> b!4396371 (= e!2737334 (invariantList!741 (toList!3210 lt!1602943)))))

(declare-fun e!2737335 () ListMap!2453)

(assert (=> b!4396372 (= e!2737335 (extractMap!672 (t!356300 (toList!3209 lm!1707))))))

(declare-fun lt!1602953 () Unit!78288)

(declare-fun call!306010 () Unit!78288)

(assert (=> b!4396372 (= lt!1602953 call!306010)))

(declare-fun call!306012 () Bool)

(assert (=> b!4396372 call!306012))

(declare-fun lt!1602961 () Unit!78288)

(assert (=> b!4396372 (= lt!1602961 lt!1602953)))

(declare-fun call!306011 () Bool)

(assert (=> b!4396372 call!306011))

(declare-fun lt!1602949 () Unit!78288)

(declare-fun Unit!78305 () Unit!78288)

(assert (=> b!4396372 (= lt!1602949 Unit!78305)))

(declare-fun bm!306005 () Bool)

(declare-fun c!748407 () Bool)

(assert (=> bm!306005 (= call!306011 (forall!9334 (toList!3210 (extractMap!672 (t!356300 (toList!3209 lm!1707)))) (ite c!748407 lambda!148008 lambda!148010)))))

(assert (=> b!4396373 (= e!2737335 lt!1602962)))

(declare-fun lt!1602954 () ListMap!2453)

(declare-fun +!847 (ListMap!2453 tuple2!48822) ListMap!2453)

(assert (=> b!4396373 (= lt!1602954 (+!847 (extractMap!672 (t!356300 (toList!3209 lm!1707))) (h!54856 (_2!27706 (h!54857 (toList!3209 lm!1707))))))))

(assert (=> b!4396373 (= lt!1602962 (addToMapMapFromBucket!286 (t!356299 (_2!27706 (h!54857 (toList!3209 lm!1707)))) (+!847 (extractMap!672 (t!356300 (toList!3209 lm!1707))) (h!54856 (_2!27706 (h!54857 (toList!3209 lm!1707)))))))))

(declare-fun lt!1602959 () Unit!78288)

(assert (=> b!4396373 (= lt!1602959 call!306010)))

(assert (=> b!4396373 (forall!9334 (toList!3210 (extractMap!672 (t!356300 (toList!3209 lm!1707)))) lambda!148009)))

(declare-fun lt!1602951 () Unit!78288)

(assert (=> b!4396373 (= lt!1602951 lt!1602959)))

(assert (=> b!4396373 (forall!9334 (toList!3210 lt!1602954) lambda!148010)))

(declare-fun lt!1602942 () Unit!78288)

(declare-fun Unit!78306 () Unit!78288)

(assert (=> b!4396373 (= lt!1602942 Unit!78306)))

(assert (=> b!4396373 (forall!9334 (t!356299 (_2!27706 (h!54857 (toList!3209 lm!1707)))) lambda!148010)))

(declare-fun lt!1602960 () Unit!78288)

(declare-fun Unit!78307 () Unit!78288)

(assert (=> b!4396373 (= lt!1602960 Unit!78307)))

(declare-fun lt!1602944 () Unit!78288)

(declare-fun Unit!78308 () Unit!78288)

(assert (=> b!4396373 (= lt!1602944 Unit!78308)))

(declare-fun lt!1602946 () Unit!78288)

(declare-fun forallContained!1970 (List!49365 Int tuple2!48822) Unit!78288)

(assert (=> b!4396373 (= lt!1602946 (forallContained!1970 (toList!3210 lt!1602954) lambda!148010 (h!54856 (_2!27706 (h!54857 (toList!3209 lm!1707))))))))

(assert (=> b!4396373 (contains!11616 lt!1602954 (_1!27705 (h!54856 (_2!27706 (h!54857 (toList!3209 lm!1707))))))))

(declare-fun lt!1602957 () Unit!78288)

(declare-fun Unit!78309 () Unit!78288)

(assert (=> b!4396373 (= lt!1602957 Unit!78309)))

(assert (=> b!4396373 (contains!11616 lt!1602962 (_1!27705 (h!54856 (_2!27706 (h!54857 (toList!3209 lm!1707))))))))

(declare-fun lt!1602945 () Unit!78288)

(declare-fun Unit!78310 () Unit!78288)

(assert (=> b!4396373 (= lt!1602945 Unit!78310)))

(assert (=> b!4396373 (forall!9334 (_2!27706 (h!54857 (toList!3209 lm!1707))) lambda!148010)))

(declare-fun lt!1602955 () Unit!78288)

(declare-fun Unit!78311 () Unit!78288)

(assert (=> b!4396373 (= lt!1602955 Unit!78311)))

(assert (=> b!4396373 (forall!9334 (toList!3210 lt!1602954) lambda!148010)))

(declare-fun lt!1602950 () Unit!78288)

(declare-fun Unit!78312 () Unit!78288)

(assert (=> b!4396373 (= lt!1602950 Unit!78312)))

(declare-fun lt!1602956 () Unit!78288)

(declare-fun Unit!78313 () Unit!78288)

(assert (=> b!4396373 (= lt!1602956 Unit!78313)))

(declare-fun lt!1602947 () Unit!78288)

(declare-fun addForallContainsKeyThenBeforeAdding!120 (ListMap!2453 ListMap!2453 K!10600 V!10846) Unit!78288)

(assert (=> b!4396373 (= lt!1602947 (addForallContainsKeyThenBeforeAdding!120 (extractMap!672 (t!356300 (toList!3209 lm!1707))) lt!1602962 (_1!27705 (h!54856 (_2!27706 (h!54857 (toList!3209 lm!1707))))) (_2!27705 (h!54856 (_2!27706 (h!54857 (toList!3209 lm!1707)))))))))

(assert (=> b!4396373 call!306011))

(declare-fun lt!1602948 () Unit!78288)

(assert (=> b!4396373 (= lt!1602948 lt!1602947)))

(assert (=> b!4396373 (forall!9334 (toList!3210 (extractMap!672 (t!356300 (toList!3209 lm!1707)))) lambda!148010)))

(declare-fun lt!1602958 () Unit!78288)

(declare-fun Unit!78314 () Unit!78288)

(assert (=> b!4396373 (= lt!1602958 Unit!78314)))

(declare-fun res!1812701 () Bool)

(assert (=> b!4396373 (= res!1812701 call!306012)))

(declare-fun e!2737336 () Bool)

(assert (=> b!4396373 (=> (not res!1812701) (not e!2737336))))

(assert (=> b!4396373 e!2737336))

(declare-fun lt!1602952 () Unit!78288)

(declare-fun Unit!78315 () Unit!78288)

(assert (=> b!4396373 (= lt!1602952 Unit!78315)))

(declare-fun bm!306006 () Bool)

(assert (=> bm!306006 (= call!306012 (forall!9334 (ite c!748407 (toList!3210 (extractMap!672 (t!356300 (toList!3209 lm!1707)))) (_2!27706 (h!54857 (toList!3209 lm!1707)))) (ite c!748407 lambda!148008 lambda!148010)))))

(declare-fun b!4396374 () Bool)

(assert (=> b!4396374 (= e!2737336 (forall!9334 (toList!3210 (extractMap!672 (t!356300 (toList!3209 lm!1707)))) lambda!148010))))

(assert (=> d!1324578 e!2737334))

(declare-fun res!1812702 () Bool)

(assert (=> d!1324578 (=> (not res!1812702) (not e!2737334))))

(assert (=> d!1324578 (= res!1812702 (forall!9334 (_2!27706 (h!54857 (toList!3209 lm!1707))) lambda!148011))))

(assert (=> d!1324578 (= lt!1602943 e!2737335)))

(assert (=> d!1324578 (= c!748407 ((_ is Nil!49241) (_2!27706 (h!54857 (toList!3209 lm!1707)))))))

(assert (=> d!1324578 (noDuplicateKeys!613 (_2!27706 (h!54857 (toList!3209 lm!1707))))))

(assert (=> d!1324578 (= (addToMapMapFromBucket!286 (_2!27706 (h!54857 (toList!3209 lm!1707))) (extractMap!672 (t!356300 (toList!3209 lm!1707)))) lt!1602943)))

(declare-fun b!4396375 () Bool)

(declare-fun res!1812700 () Bool)

(assert (=> b!4396375 (=> (not res!1812700) (not e!2737334))))

(assert (=> b!4396375 (= res!1812700 (forall!9334 (toList!3210 (extractMap!672 (t!356300 (toList!3209 lm!1707)))) lambda!148011))))

(declare-fun bm!306007 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!120 (ListMap!2453) Unit!78288)

(assert (=> bm!306007 (= call!306010 (lemmaContainsAllItsOwnKeys!120 (extractMap!672 (t!356300 (toList!3209 lm!1707)))))))

(assert (= (and d!1324578 c!748407) b!4396372))

(assert (= (and d!1324578 (not c!748407)) b!4396373))

(assert (= (and b!4396373 res!1812701) b!4396374))

(assert (= (or b!4396372 b!4396373) bm!306007))

(assert (= (or b!4396372 b!4396373) bm!306005))

(assert (= (or b!4396372 b!4396373) bm!306006))

(assert (= (and d!1324578 res!1812702) b!4396375))

(assert (= (and b!4396375 res!1812700) b!4396371))

(declare-fun m!5056947 () Bool)

(assert (=> b!4396373 m!5056947))

(declare-fun m!5056949 () Bool)

(assert (=> b!4396373 m!5056949))

(declare-fun m!5056951 () Bool)

(assert (=> b!4396373 m!5056951))

(declare-fun m!5056953 () Bool)

(assert (=> b!4396373 m!5056953))

(declare-fun m!5056955 () Bool)

(assert (=> b!4396373 m!5056955))

(declare-fun m!5056957 () Bool)

(assert (=> b!4396373 m!5056957))

(declare-fun m!5056959 () Bool)

(assert (=> b!4396373 m!5056959))

(assert (=> b!4396373 m!5056951))

(assert (=> b!4396373 m!5056085))

(assert (=> b!4396373 m!5056947))

(assert (=> b!4396373 m!5056085))

(declare-fun m!5056961 () Bool)

(assert (=> b!4396373 m!5056961))

(declare-fun m!5056963 () Bool)

(assert (=> b!4396373 m!5056963))

(declare-fun m!5056965 () Bool)

(assert (=> b!4396373 m!5056965))

(declare-fun m!5056967 () Bool)

(assert (=> b!4396373 m!5056967))

(declare-fun m!5056969 () Bool)

(assert (=> d!1324578 m!5056969))

(assert (=> d!1324578 m!5056417))

(assert (=> b!4396374 m!5056953))

(declare-fun m!5056971 () Bool)

(assert (=> b!4396371 m!5056971))

(declare-fun m!5056973 () Bool)

(assert (=> bm!306005 m!5056973))

(declare-fun m!5056975 () Bool)

(assert (=> bm!306006 m!5056975))

(assert (=> bm!306007 m!5056085))

(declare-fun m!5056977 () Bool)

(assert (=> bm!306007 m!5056977))

(declare-fun m!5056979 () Bool)

(assert (=> b!4396375 m!5056979))

(assert (=> b!4396047 d!1324578))

(assert (=> b!4396047 d!1324444))

(declare-fun d!1324644 () Bool)

(declare-fun res!1812711 () Bool)

(declare-fun e!2737347 () Bool)

(assert (=> d!1324644 (=> res!1812711 e!2737347)))

(assert (=> d!1324644 (= res!1812711 (not ((_ is Cons!49241) (_2!27706 (h!54857 (toList!3209 lt!1602514))))))))

(assert (=> d!1324644 (= (noDuplicateKeys!613 (_2!27706 (h!54857 (toList!3209 lt!1602514)))) e!2737347)))

(declare-fun b!4396390 () Bool)

(declare-fun e!2737348 () Bool)

(assert (=> b!4396390 (= e!2737347 e!2737348)))

(declare-fun res!1812712 () Bool)

(assert (=> b!4396390 (=> (not res!1812712) (not e!2737348))))

(assert (=> b!4396390 (= res!1812712 (not (containsKey!901 (t!356299 (_2!27706 (h!54857 (toList!3209 lt!1602514)))) (_1!27705 (h!54856 (_2!27706 (h!54857 (toList!3209 lt!1602514))))))))))

(declare-fun b!4396391 () Bool)

(assert (=> b!4396391 (= e!2737348 (noDuplicateKeys!613 (t!356299 (_2!27706 (h!54857 (toList!3209 lt!1602514))))))))

(assert (= (and d!1324644 (not res!1812711)) b!4396390))

(assert (= (and b!4396390 res!1812712) b!4396391))

(declare-fun m!5056981 () Bool)

(assert (=> b!4396390 m!5056981))

(declare-fun m!5056983 () Bool)

(assert (=> b!4396391 m!5056983))

(assert (=> bs!726500 d!1324644))

(declare-fun d!1324646 () Bool)

(declare-fun res!1812713 () Bool)

(declare-fun e!2737349 () Bool)

(assert (=> d!1324646 (=> res!1812713 e!2737349)))

(assert (=> d!1324646 (= res!1812713 (and ((_ is Cons!49241) (toList!3210 lt!1602517)) (= (_1!27705 (h!54856 (toList!3210 lt!1602517))) key!3918)))))

(assert (=> d!1324646 (= (containsKey!904 (toList!3210 lt!1602517) key!3918) e!2737349)))

(declare-fun b!4396392 () Bool)

(declare-fun e!2737350 () Bool)

(assert (=> b!4396392 (= e!2737349 e!2737350)))

(declare-fun res!1812714 () Bool)

(assert (=> b!4396392 (=> (not res!1812714) (not e!2737350))))

(assert (=> b!4396392 (= res!1812714 ((_ is Cons!49241) (toList!3210 lt!1602517)))))

(declare-fun b!4396393 () Bool)

(assert (=> b!4396393 (= e!2737350 (containsKey!904 (t!356299 (toList!3210 lt!1602517)) key!3918))))

(assert (= (and d!1324646 (not res!1812713)) b!4396392))

(assert (= (and b!4396392 res!1812714) b!4396393))

(declare-fun m!5056985 () Bool)

(assert (=> b!4396393 m!5056985))

(assert (=> b!4396009 d!1324646))

(declare-fun d!1324650 () Bool)

(assert (=> d!1324650 (containsKey!904 (toList!3210 lt!1602517) key!3918)))

(declare-fun lt!1602964 () Unit!78288)

(assert (=> d!1324650 (= lt!1602964 (choose!27496 (toList!3210 lt!1602517) key!3918))))

(assert (=> d!1324650 (invariantList!741 (toList!3210 lt!1602517))))

(assert (=> d!1324650 (= (lemmaInGetKeysListThenContainsKey!186 (toList!3210 lt!1602517) key!3918) lt!1602964)))

(declare-fun bs!726671 () Bool)

(assert (= bs!726671 d!1324650))

(assert (=> bs!726671 m!5056365))

(declare-fun m!5056989 () Bool)

(assert (=> bs!726671 m!5056989))

(declare-fun m!5056991 () Bool)

(assert (=> bs!726671 m!5056991))

(assert (=> b!4396009 d!1324650))

(declare-fun d!1324652 () Bool)

(declare-fun res!1812721 () Bool)

(declare-fun e!2737357 () Bool)

(assert (=> d!1324652 (=> res!1812721 e!2737357)))

(assert (=> d!1324652 (= res!1812721 (or ((_ is Nil!49242) (toList!3209 lm!1707)) ((_ is Nil!49242) (t!356300 (toList!3209 lm!1707)))))))

(assert (=> d!1324652 (= (isStrictlySorted!167 (toList!3209 lm!1707)) e!2737357)))

(declare-fun b!4396400 () Bool)

(declare-fun e!2737358 () Bool)

(assert (=> b!4396400 (= e!2737357 e!2737358)))

(declare-fun res!1812722 () Bool)

(assert (=> b!4396400 (=> (not res!1812722) (not e!2737358))))

(assert (=> b!4396400 (= res!1812722 (bvslt (_1!27706 (h!54857 (toList!3209 lm!1707))) (_1!27706 (h!54857 (t!356300 (toList!3209 lm!1707))))))))

(declare-fun b!4396401 () Bool)

(assert (=> b!4396401 (= e!2737358 (isStrictlySorted!167 (t!356300 (toList!3209 lm!1707))))))

(assert (= (and d!1324652 (not res!1812721)) b!4396400))

(assert (= (and b!4396400 res!1812722) b!4396401))

(declare-fun m!5056995 () Bool)

(assert (=> b!4396401 m!5056995))

(assert (=> d!1324350 d!1324652))

(declare-fun d!1324656 () Bool)

(declare-fun res!1812723 () Bool)

(declare-fun e!2737359 () Bool)

(assert (=> d!1324656 (=> res!1812723 e!2737359)))

(assert (=> d!1324656 (= res!1812723 (and ((_ is Cons!49241) lt!1602562) (= (_1!27705 (h!54856 lt!1602562)) key!3918)))))

(assert (=> d!1324656 (= (containsKey!901 lt!1602562 key!3918) e!2737359)))

(declare-fun b!4396402 () Bool)

(declare-fun e!2737360 () Bool)

(assert (=> b!4396402 (= e!2737359 e!2737360)))

(declare-fun res!1812724 () Bool)

(assert (=> b!4396402 (=> (not res!1812724) (not e!2737360))))

(assert (=> b!4396402 (= res!1812724 ((_ is Cons!49241) lt!1602562))))

(declare-fun b!4396403 () Bool)

(assert (=> b!4396403 (= e!2737360 (containsKey!901 (t!356299 lt!1602562) key!3918))))

(assert (= (and d!1324656 (not res!1812723)) b!4396402))

(assert (= (and b!4396402 res!1812724) b!4396403))

(declare-fun m!5056997 () Bool)

(assert (=> b!4396403 m!5056997))

(assert (=> d!1324382 d!1324656))

(declare-fun d!1324658 () Bool)

(declare-fun res!1812725 () Bool)

(declare-fun e!2737361 () Bool)

(assert (=> d!1324658 (=> res!1812725 e!2737361)))

(assert (=> d!1324658 (= res!1812725 (not ((_ is Cons!49241) lt!1602520)))))

(assert (=> d!1324658 (= (noDuplicateKeys!613 lt!1602520) e!2737361)))

(declare-fun b!4396404 () Bool)

(declare-fun e!2737362 () Bool)

(assert (=> b!4396404 (= e!2737361 e!2737362)))

(declare-fun res!1812726 () Bool)

(assert (=> b!4396404 (=> (not res!1812726) (not e!2737362))))

(assert (=> b!4396404 (= res!1812726 (not (containsKey!901 (t!356299 lt!1602520) (_1!27705 (h!54856 lt!1602520)))))))

(declare-fun b!4396405 () Bool)

(assert (=> b!4396405 (= e!2737362 (noDuplicateKeys!613 (t!356299 lt!1602520)))))

(assert (= (and d!1324658 (not res!1812725)) b!4396404))

(assert (= (and b!4396404 res!1812726) b!4396405))

(declare-fun m!5056999 () Bool)

(assert (=> b!4396404 m!5056999))

(declare-fun m!5057001 () Bool)

(assert (=> b!4396405 m!5057001))

(assert (=> d!1324382 d!1324658))

(declare-fun d!1324660 () Bool)

(assert (=> d!1324660 (= (isDefined!7887 (getValueByKey!581 (toList!3210 lt!1602517) key!3918)) (not (isEmpty!28266 (getValueByKey!581 (toList!3210 lt!1602517) key!3918))))))

(declare-fun bs!726672 () Bool)

(assert (= bs!726672 d!1324660))

(assert (=> bs!726672 m!5056371))

(declare-fun m!5057003 () Bool)

(assert (=> bs!726672 m!5057003))

(assert (=> b!4396007 d!1324660))

(declare-fun d!1324662 () Bool)

(declare-fun c!748410 () Bool)

(assert (=> d!1324662 (= c!748410 (and ((_ is Cons!49241) (toList!3210 lt!1602517)) (= (_1!27705 (h!54856 (toList!3210 lt!1602517))) key!3918)))))

(declare-fun e!2737363 () Option!10595)

(assert (=> d!1324662 (= (getValueByKey!581 (toList!3210 lt!1602517) key!3918) e!2737363)))

(declare-fun b!4396409 () Bool)

(declare-fun e!2737364 () Option!10595)

(assert (=> b!4396409 (= e!2737364 None!10594)))

(declare-fun b!4396407 () Bool)

(assert (=> b!4396407 (= e!2737363 e!2737364)))

(declare-fun c!748411 () Bool)

(assert (=> b!4396407 (= c!748411 (and ((_ is Cons!49241) (toList!3210 lt!1602517)) (not (= (_1!27705 (h!54856 (toList!3210 lt!1602517))) key!3918))))))

(declare-fun b!4396406 () Bool)

(assert (=> b!4396406 (= e!2737363 (Some!10594 (_2!27705 (h!54856 (toList!3210 lt!1602517)))))))

(declare-fun b!4396408 () Bool)

(assert (=> b!4396408 (= e!2737364 (getValueByKey!581 (t!356299 (toList!3210 lt!1602517)) key!3918))))

(assert (= (and d!1324662 c!748410) b!4396406))

(assert (= (and d!1324662 (not c!748410)) b!4396407))

(assert (= (and b!4396407 c!748411) b!4396408))

(assert (= (and b!4396407 (not c!748411)) b!4396409))

(declare-fun m!5057005 () Bool)

(assert (=> b!4396408 m!5057005))

(assert (=> b!4396007 d!1324662))

(declare-fun bs!726686 () Bool)

(declare-fun b!4396445 () Bool)

(assert (= bs!726686 (and b!4396445 b!4396221)))

(declare-fun lambda!148020 () Int)

(assert (=> bs!726686 (= (= (t!356299 (toList!3210 (extractMap!672 (toList!3209 (tail!7090 lm!1707))))) (toList!3210 lt!1602517)) (= lambda!148020 lambda!147916))))

(assert (=> b!4396445 true))

(declare-fun bs!726687 () Bool)

(declare-fun b!4396438 () Bool)

(assert (= bs!726687 (and b!4396438 b!4396221)))

(declare-fun lambda!148021 () Int)

(assert (=> bs!726687 (= (= (Cons!49241 (h!54856 (toList!3210 (extractMap!672 (toList!3209 (tail!7090 lm!1707))))) (t!356299 (toList!3210 (extractMap!672 (toList!3209 (tail!7090 lm!1707)))))) (toList!3210 lt!1602517)) (= lambda!148021 lambda!147916))))

(declare-fun bs!726688 () Bool)

(assert (= bs!726688 (and b!4396438 b!4396445)))

(assert (=> bs!726688 (= (= (Cons!49241 (h!54856 (toList!3210 (extractMap!672 (toList!3209 (tail!7090 lm!1707))))) (t!356299 (toList!3210 (extractMap!672 (toList!3209 (tail!7090 lm!1707)))))) (t!356299 (toList!3210 (extractMap!672 (toList!3209 (tail!7090 lm!1707)))))) (= lambda!148021 lambda!148020))))

(assert (=> b!4396438 true))

(declare-fun bs!726689 () Bool)

(declare-fun b!4396440 () Bool)

(assert (= bs!726689 (and b!4396440 b!4396221)))

(declare-fun lambda!148022 () Int)

(assert (=> bs!726689 (= (= (toList!3210 (extractMap!672 (toList!3209 (tail!7090 lm!1707)))) (toList!3210 lt!1602517)) (= lambda!148022 lambda!147916))))

(declare-fun bs!726690 () Bool)

(assert (= bs!726690 (and b!4396440 b!4396445)))

(assert (=> bs!726690 (= (= (toList!3210 (extractMap!672 (toList!3209 (tail!7090 lm!1707)))) (t!356299 (toList!3210 (extractMap!672 (toList!3209 (tail!7090 lm!1707)))))) (= lambda!148022 lambda!148020))))

(declare-fun bs!726691 () Bool)

(assert (= bs!726691 (and b!4396440 b!4396438)))

(assert (=> bs!726691 (= (= (toList!3210 (extractMap!672 (toList!3209 (tail!7090 lm!1707)))) (Cons!49241 (h!54856 (toList!3210 (extractMap!672 (toList!3209 (tail!7090 lm!1707))))) (t!356299 (toList!3210 (extractMap!672 (toList!3209 (tail!7090 lm!1707))))))) (= lambda!148022 lambda!148021))))

(assert (=> b!4396440 true))

(declare-fun bs!726692 () Bool)

(declare-fun b!4396439 () Bool)

(assert (= bs!726692 (and b!4396439 b!4396222)))

(declare-fun lambda!148023 () Int)

(assert (=> bs!726692 (= lambda!148023 lambda!147917)))

(declare-fun e!2737385 () List!49368)

(assert (=> b!4396438 (= e!2737385 (Cons!49244 (_1!27705 (h!54856 (toList!3210 (extractMap!672 (toList!3209 (tail!7090 lm!1707)))))) (getKeysList!188 (t!356299 (toList!3210 (extractMap!672 (toList!3209 (tail!7090 lm!1707))))))))))

(declare-fun c!748418 () Bool)

(assert (=> b!4396438 (= c!748418 (containsKey!904 (t!356299 (toList!3210 (extractMap!672 (toList!3209 (tail!7090 lm!1707))))) (_1!27705 (h!54856 (toList!3210 (extractMap!672 (toList!3209 (tail!7090 lm!1707))))))))))

(declare-fun lt!1602986 () Unit!78288)

(declare-fun e!2737383 () Unit!78288)

(assert (=> b!4396438 (= lt!1602986 e!2737383)))

(declare-fun c!748419 () Bool)

(assert (=> b!4396438 (= c!748419 (contains!11620 (getKeysList!188 (t!356299 (toList!3210 (extractMap!672 (toList!3209 (tail!7090 lm!1707)))))) (_1!27705 (h!54856 (toList!3210 (extractMap!672 (toList!3209 (tail!7090 lm!1707))))))))))

(declare-fun lt!1602982 () Unit!78288)

(declare-fun e!2737382 () Unit!78288)

(assert (=> b!4396438 (= lt!1602982 e!2737382)))

(declare-fun lt!1602983 () List!49368)

(assert (=> b!4396438 (= lt!1602983 (getKeysList!188 (t!356299 (toList!3210 (extractMap!672 (toList!3209 (tail!7090 lm!1707)))))))))

(declare-fun lt!1602985 () Unit!78288)

(declare-fun lemmaForallContainsAddHeadPreserves!51 (List!49365 List!49368 tuple2!48822) Unit!78288)

(assert (=> b!4396438 (= lt!1602985 (lemmaForallContainsAddHeadPreserves!51 (t!356299 (toList!3210 (extractMap!672 (toList!3209 (tail!7090 lm!1707))))) lt!1602983 (h!54856 (toList!3210 (extractMap!672 (toList!3209 (tail!7090 lm!1707)))))))))

(assert (=> b!4396438 (forall!9336 lt!1602983 lambda!148021)))

(declare-fun lt!1602987 () Unit!78288)

(assert (=> b!4396438 (= lt!1602987 lt!1602985)))

(declare-fun e!2737384 () Bool)

(declare-fun lt!1602981 () List!49368)

(assert (=> b!4396439 (= e!2737384 (= (content!7853 lt!1602981) (content!7853 (map!10733 (toList!3210 (extractMap!672 (toList!3209 (tail!7090 lm!1707)))) lambda!148023))))))

(declare-fun res!1812739 () Bool)

(assert (=> b!4396440 (=> (not res!1812739) (not e!2737384))))

(assert (=> b!4396440 (= res!1812739 (forall!9336 lt!1602981 lambda!148022))))

(declare-fun b!4396441 () Bool)

(declare-fun Unit!78327 () Unit!78288)

(assert (=> b!4396441 (= e!2737382 Unit!78327)))

(declare-fun b!4396442 () Bool)

(declare-fun Unit!78329 () Unit!78288)

(assert (=> b!4396442 (= e!2737383 Unit!78329)))

(declare-fun b!4396443 () Bool)

(declare-fun res!1812741 () Bool)

(assert (=> b!4396443 (=> (not res!1812741) (not e!2737384))))

(assert (=> b!4396443 (= res!1812741 (= (length!116 lt!1602981) (length!117 (toList!3210 (extractMap!672 (toList!3209 (tail!7090 lm!1707)))))))))

(assert (=> b!4396445 false))

(declare-fun lt!1602984 () Unit!78288)

(declare-fun forallContained!1973 (List!49368 Int K!10600) Unit!78288)

(assert (=> b!4396445 (= lt!1602984 (forallContained!1973 (getKeysList!188 (t!356299 (toList!3210 (extractMap!672 (toList!3209 (tail!7090 lm!1707)))))) lambda!148020 (_1!27705 (h!54856 (toList!3210 (extractMap!672 (toList!3209 (tail!7090 lm!1707))))))))))

(declare-fun Unit!78331 () Unit!78288)

(assert (=> b!4396445 (= e!2737382 Unit!78331)))

(declare-fun b!4396446 () Bool)

(assert (=> b!4396446 (= e!2737385 Nil!49244)))

(declare-fun b!4396444 () Bool)

(assert (=> b!4396444 false))

(declare-fun Unit!78334 () Unit!78288)

(assert (=> b!4396444 (= e!2737383 Unit!78334)))

(declare-fun d!1324666 () Bool)

(assert (=> d!1324666 e!2737384))

(declare-fun res!1812740 () Bool)

(assert (=> d!1324666 (=> (not res!1812740) (not e!2737384))))

(assert (=> d!1324666 (= res!1812740 (noDuplicate!630 lt!1602981))))

(assert (=> d!1324666 (= lt!1602981 e!2737385)))

(declare-fun c!748420 () Bool)

(assert (=> d!1324666 (= c!748420 ((_ is Cons!49241) (toList!3210 (extractMap!672 (toList!3209 (tail!7090 lm!1707))))))))

(assert (=> d!1324666 (invariantList!741 (toList!3210 (extractMap!672 (toList!3209 (tail!7090 lm!1707)))))))

(assert (=> d!1324666 (= (getKeysList!188 (toList!3210 (extractMap!672 (toList!3209 (tail!7090 lm!1707))))) lt!1602981)))

(assert (= (and d!1324666 c!748420) b!4396438))

(assert (= (and d!1324666 (not c!748420)) b!4396446))

(assert (= (and b!4396438 c!748418) b!4396444))

(assert (= (and b!4396438 (not c!748418)) b!4396442))

(assert (= (and b!4396438 c!748419) b!4396445))

(assert (= (and b!4396438 (not c!748419)) b!4396441))

(assert (= (and d!1324666 res!1812740) b!4396443))

(assert (= (and b!4396443 res!1812741) b!4396440))

(assert (= (and b!4396440 res!1812739) b!4396439))

(declare-fun m!5057031 () Bool)

(assert (=> d!1324666 m!5057031))

(assert (=> d!1324666 m!5056677))

(declare-fun m!5057033 () Bool)

(assert (=> b!4396438 m!5057033))

(declare-fun m!5057035 () Bool)

(assert (=> b!4396438 m!5057035))

(assert (=> b!4396438 m!5057035))

(declare-fun m!5057037 () Bool)

(assert (=> b!4396438 m!5057037))

(declare-fun m!5057039 () Bool)

(assert (=> b!4396438 m!5057039))

(declare-fun m!5057041 () Bool)

(assert (=> b!4396438 m!5057041))

(assert (=> b!4396445 m!5057035))

(assert (=> b!4396445 m!5057035))

(declare-fun m!5057043 () Bool)

(assert (=> b!4396445 m!5057043))

(declare-fun m!5057045 () Bool)

(assert (=> b!4396440 m!5057045))

(declare-fun m!5057047 () Bool)

(assert (=> b!4396443 m!5057047))

(declare-fun m!5057049 () Bool)

(assert (=> b!4396443 m!5057049))

(declare-fun m!5057051 () Bool)

(assert (=> b!4396439 m!5057051))

(declare-fun m!5057053 () Bool)

(assert (=> b!4396439 m!5057053))

(assert (=> b!4396439 m!5057053))

(declare-fun m!5057055 () Bool)

(assert (=> b!4396439 m!5057055))

(assert (=> b!4396011 d!1324666))

(declare-fun d!1324696 () Bool)

(assert (=> d!1324696 (isDefined!7888 (getValueByKey!580 (toList!3209 lm!1707) hash!377))))

(declare-fun lt!1602990 () Unit!78288)

(declare-fun choose!27500 (List!49366 (_ BitVec 64)) Unit!78288)

(assert (=> d!1324696 (= lt!1602990 (choose!27500 (toList!3209 lm!1707) hash!377))))

(declare-fun e!2737388 () Bool)

(assert (=> d!1324696 e!2737388))

(declare-fun res!1812744 () Bool)

(assert (=> d!1324696 (=> (not res!1812744) (not e!2737388))))

(assert (=> d!1324696 (= res!1812744 (isStrictlySorted!167 (toList!3209 lm!1707)))))

(assert (=> d!1324696 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!491 (toList!3209 lm!1707) hash!377) lt!1602990)))

(declare-fun b!4396451 () Bool)

(assert (=> b!4396451 (= e!2737388 (containsKey!905 (toList!3209 lm!1707) hash!377))))

(assert (= (and d!1324696 res!1812744) b!4396451))

(assert (=> d!1324696 m!5056137))

(assert (=> d!1324696 m!5056137))

(assert (=> d!1324696 m!5056431))

(declare-fun m!5057057 () Bool)

(assert (=> d!1324696 m!5057057))

(assert (=> d!1324696 m!5056127))

(assert (=> b!4396451 m!5056427))

(assert (=> b!4396033 d!1324696))

(declare-fun d!1324698 () Bool)

(declare-fun isEmpty!28267 (Option!10594) Bool)

(assert (=> d!1324698 (= (isDefined!7888 (getValueByKey!580 (toList!3209 lm!1707) hash!377)) (not (isEmpty!28267 (getValueByKey!580 (toList!3209 lm!1707) hash!377))))))

(declare-fun bs!726693 () Bool)

(assert (= bs!726693 d!1324698))

(assert (=> bs!726693 m!5056137))

(declare-fun m!5057059 () Bool)

(assert (=> bs!726693 m!5057059))

(assert (=> b!4396033 d!1324698))

(declare-fun b!4396461 () Bool)

(declare-fun e!2737393 () Option!10594)

(declare-fun e!2737394 () Option!10594)

(assert (=> b!4396461 (= e!2737393 e!2737394)))

(declare-fun c!748426 () Bool)

(assert (=> b!4396461 (= c!748426 (and ((_ is Cons!49242) (toList!3209 lm!1707)) (not (= (_1!27706 (h!54857 (toList!3209 lm!1707))) hash!377))))))

(declare-fun b!4396463 () Bool)

(assert (=> b!4396463 (= e!2737394 None!10593)))

(declare-fun b!4396462 () Bool)

(assert (=> b!4396462 (= e!2737394 (getValueByKey!580 (t!356300 (toList!3209 lm!1707)) hash!377))))

(declare-fun b!4396460 () Bool)

(assert (=> b!4396460 (= e!2737393 (Some!10593 (_2!27706 (h!54857 (toList!3209 lm!1707)))))))

(declare-fun d!1324700 () Bool)

(declare-fun c!748425 () Bool)

(assert (=> d!1324700 (= c!748425 (and ((_ is Cons!49242) (toList!3209 lm!1707)) (= (_1!27706 (h!54857 (toList!3209 lm!1707))) hash!377)))))

(assert (=> d!1324700 (= (getValueByKey!580 (toList!3209 lm!1707) hash!377) e!2737393)))

(assert (= (and d!1324700 c!748425) b!4396460))

(assert (= (and d!1324700 (not c!748425)) b!4396461))

(assert (= (and b!4396461 c!748426) b!4396462))

(assert (= (and b!4396461 (not c!748426)) b!4396463))

(declare-fun m!5057061 () Bool)

(assert (=> b!4396462 m!5057061))

(assert (=> b!4396033 d!1324700))

(declare-fun d!1324702 () Bool)

(declare-fun res!1812745 () Bool)

(declare-fun e!2737395 () Bool)

(assert (=> d!1324702 (=> res!1812745 e!2737395)))

(assert (=> d!1324702 (= res!1812745 (and ((_ is Cons!49241) (t!356299 newBucket!200)) (= (_1!27705 (h!54856 (t!356299 newBucket!200))) (_1!27705 (h!54856 newBucket!200)))))))

(assert (=> d!1324702 (= (containsKey!901 (t!356299 newBucket!200) (_1!27705 (h!54856 newBucket!200))) e!2737395)))

(declare-fun b!4396464 () Bool)

(declare-fun e!2737396 () Bool)

(assert (=> b!4396464 (= e!2737395 e!2737396)))

(declare-fun res!1812746 () Bool)

(assert (=> b!4396464 (=> (not res!1812746) (not e!2737396))))

(assert (=> b!4396464 (= res!1812746 ((_ is Cons!49241) (t!356299 newBucket!200)))))

(declare-fun b!4396465 () Bool)

(assert (=> b!4396465 (= e!2737396 (containsKey!901 (t!356299 (t!356299 newBucket!200)) (_1!27705 (h!54856 newBucket!200))))))

(assert (= (and d!1324702 (not res!1812745)) b!4396464))

(assert (= (and b!4396464 res!1812746) b!4396465))

(declare-fun m!5057063 () Bool)

(assert (=> b!4396465 m!5057063))

(assert (=> b!4395801 d!1324702))

(assert (=> d!1324440 d!1324562))

(declare-fun d!1324704 () Bool)

(declare-fun res!1812747 () Bool)

(declare-fun e!2737397 () Bool)

(assert (=> d!1324704 (=> res!1812747 e!2737397)))

(assert (=> d!1324704 (= res!1812747 (not ((_ is Cons!49241) (_2!27706 (tuple2!48825 hash!377 newBucket!200)))))))

(assert (=> d!1324704 (= (noDuplicateKeys!613 (_2!27706 (tuple2!48825 hash!377 newBucket!200))) e!2737397)))

(declare-fun b!4396466 () Bool)

(declare-fun e!2737398 () Bool)

(assert (=> b!4396466 (= e!2737397 e!2737398)))

(declare-fun res!1812748 () Bool)

(assert (=> b!4396466 (=> (not res!1812748) (not e!2737398))))

(assert (=> b!4396466 (= res!1812748 (not (containsKey!901 (t!356299 (_2!27706 (tuple2!48825 hash!377 newBucket!200))) (_1!27705 (h!54856 (_2!27706 (tuple2!48825 hash!377 newBucket!200)))))))))

(declare-fun b!4396467 () Bool)

(assert (=> b!4396467 (= e!2737398 (noDuplicateKeys!613 (t!356299 (_2!27706 (tuple2!48825 hash!377 newBucket!200)))))))

(assert (= (and d!1324704 (not res!1812747)) b!4396466))

(assert (= (and b!4396466 res!1812748) b!4396467))

(declare-fun m!5057065 () Bool)

(assert (=> b!4396466 m!5057065))

(declare-fun m!5057067 () Bool)

(assert (=> b!4396467 m!5057067))

(assert (=> bs!726502 d!1324704))

(declare-fun d!1324706 () Bool)

(declare-fun lt!1602991 () Bool)

(assert (=> d!1324706 (= lt!1602991 (select (content!7853 (keys!16724 (extractMap!672 (toList!3209 (tail!7090 lm!1707))))) key!3918))))

(declare-fun e!2737399 () Bool)

(assert (=> d!1324706 (= lt!1602991 e!2737399)))

(declare-fun res!1812749 () Bool)

(assert (=> d!1324706 (=> (not res!1812749) (not e!2737399))))

(assert (=> d!1324706 (= res!1812749 ((_ is Cons!49244) (keys!16724 (extractMap!672 (toList!3209 (tail!7090 lm!1707))))))))

(assert (=> d!1324706 (= (contains!11620 (keys!16724 (extractMap!672 (toList!3209 (tail!7090 lm!1707)))) key!3918) lt!1602991)))

(declare-fun b!4396468 () Bool)

(declare-fun e!2737400 () Bool)

(assert (=> b!4396468 (= e!2737399 e!2737400)))

(declare-fun res!1812750 () Bool)

(assert (=> b!4396468 (=> res!1812750 e!2737400)))

(assert (=> b!4396468 (= res!1812750 (= (h!54861 (keys!16724 (extractMap!672 (toList!3209 (tail!7090 lm!1707))))) key!3918))))

(declare-fun b!4396469 () Bool)

(assert (=> b!4396469 (= e!2737400 (contains!11620 (t!356302 (keys!16724 (extractMap!672 (toList!3209 (tail!7090 lm!1707))))) key!3918))))

(assert (= (and d!1324706 res!1812749) b!4396468))

(assert (= (and b!4396468 (not res!1812750)) b!4396469))

(assert (=> d!1324706 m!5056381))

(declare-fun m!5057069 () Bool)

(assert (=> d!1324706 m!5057069))

(declare-fun m!5057071 () Bool)

(assert (=> d!1324706 m!5057071))

(declare-fun m!5057073 () Bool)

(assert (=> b!4396469 m!5057073))

(assert (=> b!4396015 d!1324706))

(declare-fun bs!726694 () Bool)

(declare-fun b!4396471 () Bool)

(assert (= bs!726694 (and b!4396471 b!4396221)))

(declare-fun lambda!148024 () Int)

(assert (=> bs!726694 (= (= (toList!3210 (extractMap!672 (toList!3209 (tail!7090 lm!1707)))) (toList!3210 lt!1602517)) (= lambda!148024 lambda!147916))))

(declare-fun bs!726695 () Bool)

(assert (= bs!726695 (and b!4396471 b!4396445)))

(assert (=> bs!726695 (= (= (toList!3210 (extractMap!672 (toList!3209 (tail!7090 lm!1707)))) (t!356299 (toList!3210 (extractMap!672 (toList!3209 (tail!7090 lm!1707)))))) (= lambda!148024 lambda!148020))))

(declare-fun bs!726696 () Bool)

(assert (= bs!726696 (and b!4396471 b!4396438)))

(assert (=> bs!726696 (= (= (toList!3210 (extractMap!672 (toList!3209 (tail!7090 lm!1707)))) (Cons!49241 (h!54856 (toList!3210 (extractMap!672 (toList!3209 (tail!7090 lm!1707))))) (t!356299 (toList!3210 (extractMap!672 (toList!3209 (tail!7090 lm!1707))))))) (= lambda!148024 lambda!148021))))

(declare-fun bs!726697 () Bool)

(assert (= bs!726697 (and b!4396471 b!4396440)))

(assert (=> bs!726697 (= lambda!148024 lambda!148022)))

(assert (=> b!4396471 true))

(declare-fun bs!726698 () Bool)

(declare-fun b!4396472 () Bool)

(assert (= bs!726698 (and b!4396472 b!4396222)))

(declare-fun lambda!148025 () Int)

(assert (=> bs!726698 (= lambda!148025 lambda!147917)))

(declare-fun bs!726699 () Bool)

(assert (= bs!726699 (and b!4396472 b!4396439)))

(assert (=> bs!726699 (= lambda!148025 lambda!148023)))

(declare-fun d!1324708 () Bool)

(declare-fun e!2737401 () Bool)

(assert (=> d!1324708 e!2737401))

(declare-fun res!1812753 () Bool)

(assert (=> d!1324708 (=> (not res!1812753) (not e!2737401))))

(declare-fun lt!1602992 () List!49368)

(assert (=> d!1324708 (= res!1812753 (noDuplicate!630 lt!1602992))))

(assert (=> d!1324708 (= lt!1602992 (getKeysList!188 (toList!3210 (extractMap!672 (toList!3209 (tail!7090 lm!1707))))))))

(assert (=> d!1324708 (= (keys!16724 (extractMap!672 (toList!3209 (tail!7090 lm!1707)))) lt!1602992)))

(declare-fun b!4396470 () Bool)

(declare-fun res!1812751 () Bool)

(assert (=> b!4396470 (=> (not res!1812751) (not e!2737401))))

(assert (=> b!4396470 (= res!1812751 (= (length!116 lt!1602992) (length!117 (toList!3210 (extractMap!672 (toList!3209 (tail!7090 lm!1707)))))))))

(declare-fun res!1812752 () Bool)

(assert (=> b!4396471 (=> (not res!1812752) (not e!2737401))))

(assert (=> b!4396471 (= res!1812752 (forall!9336 lt!1602992 lambda!148024))))

(assert (=> b!4396472 (= e!2737401 (= (content!7853 lt!1602992) (content!7853 (map!10733 (toList!3210 (extractMap!672 (toList!3209 (tail!7090 lm!1707)))) lambda!148025))))))

(assert (= (and d!1324708 res!1812753) b!4396470))

(assert (= (and b!4396470 res!1812751) b!4396471))

(assert (= (and b!4396471 res!1812752) b!4396472))

(declare-fun m!5057075 () Bool)

(assert (=> d!1324708 m!5057075))

(assert (=> d!1324708 m!5056397))

(declare-fun m!5057077 () Bool)

(assert (=> b!4396470 m!5057077))

(assert (=> b!4396470 m!5057049))

(declare-fun m!5057079 () Bool)

(assert (=> b!4396471 m!5057079))

(declare-fun m!5057081 () Bool)

(assert (=> b!4396472 m!5057081))

(declare-fun m!5057083 () Bool)

(assert (=> b!4396472 m!5057083))

(assert (=> b!4396472 m!5057083))

(declare-fun m!5057085 () Bool)

(assert (=> b!4396472 m!5057085))

(assert (=> b!4396015 d!1324708))

(assert (=> b!4396044 d!1324568))

(assert (=> b!4396044 d!1324570))

(declare-fun d!1324710 () Bool)

(assert (=> d!1324710 (isDefined!7887 (getValueByKey!581 (toList!3210 (extractMap!672 (toList!3209 (tail!7090 lm!1707)))) key!3918))))

(declare-fun lt!1602993 () Unit!78288)

(assert (=> d!1324710 (= lt!1602993 (choose!27497 (toList!3210 (extractMap!672 (toList!3209 (tail!7090 lm!1707)))) key!3918))))

(assert (=> d!1324710 (invariantList!741 (toList!3210 (extractMap!672 (toList!3209 (tail!7090 lm!1707)))))))

(assert (=> d!1324710 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!490 (toList!3210 (extractMap!672 (toList!3209 (tail!7090 lm!1707)))) key!3918) lt!1602993)))

(declare-fun bs!726700 () Bool)

(assert (= bs!726700 d!1324710))

(assert (=> bs!726700 m!5056391))

(assert (=> bs!726700 m!5056391))

(assert (=> bs!726700 m!5056393))

(declare-fun m!5057087 () Bool)

(assert (=> bs!726700 m!5057087))

(assert (=> bs!726700 m!5056677))

(assert (=> b!4396017 d!1324710))

(declare-fun d!1324712 () Bool)

(assert (=> d!1324712 (= (isDefined!7887 (getValueByKey!581 (toList!3210 (extractMap!672 (toList!3209 (tail!7090 lm!1707)))) key!3918)) (not (isEmpty!28266 (getValueByKey!581 (toList!3210 (extractMap!672 (toList!3209 (tail!7090 lm!1707)))) key!3918))))))

(declare-fun bs!726701 () Bool)

(assert (= bs!726701 d!1324712))

(assert (=> bs!726701 m!5056391))

(declare-fun m!5057089 () Bool)

(assert (=> bs!726701 m!5057089))

(assert (=> b!4396017 d!1324712))

(declare-fun d!1324714 () Bool)

(declare-fun c!748427 () Bool)

(assert (=> d!1324714 (= c!748427 (and ((_ is Cons!49241) (toList!3210 (extractMap!672 (toList!3209 (tail!7090 lm!1707))))) (= (_1!27705 (h!54856 (toList!3210 (extractMap!672 (toList!3209 (tail!7090 lm!1707)))))) key!3918)))))

(declare-fun e!2737402 () Option!10595)

(assert (=> d!1324714 (= (getValueByKey!581 (toList!3210 (extractMap!672 (toList!3209 (tail!7090 lm!1707)))) key!3918) e!2737402)))

(declare-fun b!4396476 () Bool)

(declare-fun e!2737403 () Option!10595)

(assert (=> b!4396476 (= e!2737403 None!10594)))

(declare-fun b!4396474 () Bool)

(assert (=> b!4396474 (= e!2737402 e!2737403)))

(declare-fun c!748428 () Bool)

(assert (=> b!4396474 (= c!748428 (and ((_ is Cons!49241) (toList!3210 (extractMap!672 (toList!3209 (tail!7090 lm!1707))))) (not (= (_1!27705 (h!54856 (toList!3210 (extractMap!672 (toList!3209 (tail!7090 lm!1707)))))) key!3918))))))

(declare-fun b!4396473 () Bool)

(assert (=> b!4396473 (= e!2737402 (Some!10594 (_2!27705 (h!54856 (toList!3210 (extractMap!672 (toList!3209 (tail!7090 lm!1707))))))))))

(declare-fun b!4396475 () Bool)

(assert (=> b!4396475 (= e!2737403 (getValueByKey!581 (t!356299 (toList!3210 (extractMap!672 (toList!3209 (tail!7090 lm!1707))))) key!3918))))

(assert (= (and d!1324714 c!748427) b!4396473))

(assert (= (and d!1324714 (not c!748427)) b!4396474))

(assert (= (and b!4396474 c!748428) b!4396475))

(assert (= (and b!4396474 (not c!748428)) b!4396476))

(declare-fun m!5057091 () Bool)

(assert (=> b!4396475 m!5057091))

(assert (=> b!4396017 d!1324714))

(declare-fun d!1324716 () Bool)

(assert (=> d!1324716 (contains!11620 (getKeysList!188 (toList!3210 (extractMap!672 (toList!3209 (tail!7090 lm!1707))))) key!3918)))

(declare-fun lt!1602994 () Unit!78288)

(assert (=> d!1324716 (= lt!1602994 (choose!27499 (toList!3210 (extractMap!672 (toList!3209 (tail!7090 lm!1707)))) key!3918))))

(assert (=> d!1324716 (invariantList!741 (toList!3210 (extractMap!672 (toList!3209 (tail!7090 lm!1707)))))))

(assert (=> d!1324716 (= (lemmaInListThenGetKeysListContains!185 (toList!3210 (extractMap!672 (toList!3209 (tail!7090 lm!1707)))) key!3918) lt!1602994)))

(declare-fun bs!726702 () Bool)

(assert (= bs!726702 d!1324716))

(assert (=> bs!726702 m!5056397))

(assert (=> bs!726702 m!5056397))

(declare-fun m!5057093 () Bool)

(assert (=> bs!726702 m!5057093))

(declare-fun m!5057095 () Bool)

(assert (=> bs!726702 m!5057095))

(assert (=> bs!726702 m!5056677))

(assert (=> b!4396017 d!1324716))

(assert (=> b!4395838 d!1324700))

(declare-fun d!1324718 () Bool)

(declare-fun res!1812758 () Bool)

(declare-fun e!2737408 () Bool)

(assert (=> d!1324718 (=> res!1812758 e!2737408)))

(assert (=> d!1324718 (= res!1812758 ((_ is Nil!49241) newBucket!200))))

(assert (=> d!1324718 (= (forall!9334 newBucket!200 lambda!147879) e!2737408)))

(declare-fun b!4396481 () Bool)

(declare-fun e!2737409 () Bool)

(assert (=> b!4396481 (= e!2737408 e!2737409)))

(declare-fun res!1812759 () Bool)

(assert (=> b!4396481 (=> (not res!1812759) (not e!2737409))))

(declare-fun dynLambda!20746 (Int tuple2!48822) Bool)

(assert (=> b!4396481 (= res!1812759 (dynLambda!20746 lambda!147879 (h!54856 newBucket!200)))))

(declare-fun b!4396482 () Bool)

(assert (=> b!4396482 (= e!2737409 (forall!9334 (t!356299 newBucket!200) lambda!147879))))

(assert (= (and d!1324718 (not res!1812758)) b!4396481))

(assert (= (and b!4396481 res!1812759) b!4396482))

(declare-fun b_lambda!139203 () Bool)

(assert (=> (not b_lambda!139203) (not b!4396481)))

(declare-fun m!5057097 () Bool)

(assert (=> b!4396481 m!5057097))

(declare-fun m!5057099 () Bool)

(assert (=> b!4396482 m!5057099))

(assert (=> d!1324390 d!1324718))

(declare-fun bs!726703 () Bool)

(declare-fun b!4396484 () Bool)

(assert (= bs!726703 (and b!4396484 b!4396440)))

(declare-fun lambda!148026 () Int)

(assert (=> bs!726703 (= (= (toList!3210 (extractMap!672 (toList!3209 lm!1707))) (toList!3210 (extractMap!672 (toList!3209 (tail!7090 lm!1707))))) (= lambda!148026 lambda!148022))))

(declare-fun bs!726704 () Bool)

(assert (= bs!726704 (and b!4396484 b!4396471)))

(assert (=> bs!726704 (= (= (toList!3210 (extractMap!672 (toList!3209 lm!1707))) (toList!3210 (extractMap!672 (toList!3209 (tail!7090 lm!1707))))) (= lambda!148026 lambda!148024))))

(declare-fun bs!726705 () Bool)

(assert (= bs!726705 (and b!4396484 b!4396221)))

(assert (=> bs!726705 (= (= (toList!3210 (extractMap!672 (toList!3209 lm!1707))) (toList!3210 lt!1602517)) (= lambda!148026 lambda!147916))))

(declare-fun bs!726706 () Bool)

(assert (= bs!726706 (and b!4396484 b!4396438)))

(assert (=> bs!726706 (= (= (toList!3210 (extractMap!672 (toList!3209 lm!1707))) (Cons!49241 (h!54856 (toList!3210 (extractMap!672 (toList!3209 (tail!7090 lm!1707))))) (t!356299 (toList!3210 (extractMap!672 (toList!3209 (tail!7090 lm!1707))))))) (= lambda!148026 lambda!148021))))

(declare-fun bs!726707 () Bool)

(assert (= bs!726707 (and b!4396484 b!4396445)))

(assert (=> bs!726707 (= (= (toList!3210 (extractMap!672 (toList!3209 lm!1707))) (t!356299 (toList!3210 (extractMap!672 (toList!3209 (tail!7090 lm!1707)))))) (= lambda!148026 lambda!148020))))

(assert (=> b!4396484 true))

(declare-fun bs!726708 () Bool)

(declare-fun b!4396485 () Bool)

(assert (= bs!726708 (and b!4396485 b!4396222)))

(declare-fun lambda!148027 () Int)

(assert (=> bs!726708 (= lambda!148027 lambda!147917)))

(declare-fun bs!726709 () Bool)

(assert (= bs!726709 (and b!4396485 b!4396439)))

(assert (=> bs!726709 (= lambda!148027 lambda!148023)))

(declare-fun bs!726710 () Bool)

(assert (= bs!726710 (and b!4396485 b!4396472)))

(assert (=> bs!726710 (= lambda!148027 lambda!148025)))

(declare-fun d!1324720 () Bool)

(declare-fun e!2737410 () Bool)

(assert (=> d!1324720 e!2737410))

(declare-fun res!1812762 () Bool)

(assert (=> d!1324720 (=> (not res!1812762) (not e!2737410))))

(declare-fun lt!1602995 () List!49368)

(assert (=> d!1324720 (= res!1812762 (noDuplicate!630 lt!1602995))))

(assert (=> d!1324720 (= lt!1602995 (getKeysList!188 (toList!3210 (extractMap!672 (toList!3209 lm!1707)))))))

(assert (=> d!1324720 (= (keys!16724 (extractMap!672 (toList!3209 lm!1707))) lt!1602995)))

(declare-fun b!4396483 () Bool)

(declare-fun res!1812760 () Bool)

(assert (=> b!4396483 (=> (not res!1812760) (not e!2737410))))

(assert (=> b!4396483 (= res!1812760 (= (length!116 lt!1602995) (length!117 (toList!3210 (extractMap!672 (toList!3209 lm!1707))))))))

(declare-fun res!1812761 () Bool)

(assert (=> b!4396484 (=> (not res!1812761) (not e!2737410))))

(assert (=> b!4396484 (= res!1812761 (forall!9336 lt!1602995 lambda!148026))))

(assert (=> b!4396485 (= e!2737410 (= (content!7853 lt!1602995) (content!7853 (map!10733 (toList!3210 (extractMap!672 (toList!3209 lm!1707))) lambda!148027))))))

(assert (= (and d!1324720 res!1812762) b!4396483))

(assert (= (and b!4396483 res!1812760) b!4396484))

(assert (= (and b!4396484 res!1812761) b!4396485))

(declare-fun m!5057101 () Bool)

(assert (=> d!1324720 m!5057101))

(assert (=> d!1324720 m!5056451))

(declare-fun m!5057103 () Bool)

(assert (=> b!4396483 m!5057103))

(declare-fun m!5057105 () Bool)

(assert (=> b!4396483 m!5057105))

(declare-fun m!5057107 () Bool)

(assert (=> b!4396484 m!5057107))

(declare-fun m!5057109 () Bool)

(assert (=> b!4396485 m!5057109))

(declare-fun m!5057111 () Bool)

(assert (=> b!4396485 m!5057111))

(assert (=> b!4396485 m!5057111))

(declare-fun m!5057113 () Bool)

(assert (=> b!4396485 m!5057113))

(assert (=> b!4396040 d!1324720))

(assert (=> b!4396013 d!1324706))

(assert (=> b!4396013 d!1324708))

(assert (=> b!4396035 d!1324698))

(assert (=> b!4396035 d!1324700))

(declare-fun d!1324722 () Bool)

(assert (=> d!1324722 (= (invariantList!741 (toList!3210 lt!1602679)) (noDuplicatedKeys!146 (toList!3210 lt!1602679)))))

(declare-fun bs!726711 () Bool)

(assert (= bs!726711 d!1324722))

(declare-fun m!5057115 () Bool)

(assert (=> bs!726711 m!5057115))

(assert (=> d!1324450 d!1324722))

(declare-fun d!1324724 () Bool)

(declare-fun res!1812763 () Bool)

(declare-fun e!2737411 () Bool)

(assert (=> d!1324724 (=> res!1812763 e!2737411)))

(assert (=> d!1324724 (= res!1812763 ((_ is Nil!49242) (toList!3209 (tail!7090 lm!1707))))))

(assert (=> d!1324724 (= (forall!9332 (toList!3209 (tail!7090 lm!1707)) lambda!147897) e!2737411)))

(declare-fun b!4396486 () Bool)

(declare-fun e!2737412 () Bool)

(assert (=> b!4396486 (= e!2737411 e!2737412)))

(declare-fun res!1812764 () Bool)

(assert (=> b!4396486 (=> (not res!1812764) (not e!2737412))))

(assert (=> b!4396486 (= res!1812764 (dynLambda!20745 lambda!147897 (h!54857 (toList!3209 (tail!7090 lm!1707)))))))

(declare-fun b!4396487 () Bool)

(assert (=> b!4396487 (= e!2737412 (forall!9332 (t!356300 (toList!3209 (tail!7090 lm!1707))) lambda!147897))))

(assert (= (and d!1324724 (not res!1812763)) b!4396486))

(assert (= (and b!4396486 res!1812764) b!4396487))

(declare-fun b_lambda!139205 () Bool)

(assert (=> (not b_lambda!139205) (not b!4396486)))

(declare-fun m!5057117 () Bool)

(assert (=> b!4396486 m!5057117))

(declare-fun m!5057119 () Bool)

(assert (=> b!4396487 m!5057119))

(assert (=> d!1324450 d!1324724))

(declare-fun d!1324726 () Bool)

(declare-fun lt!1602996 () Bool)

(assert (=> d!1324726 (= lt!1602996 (select (content!7853 (keys!16724 lt!1602517)) key!3918))))

(declare-fun e!2737413 () Bool)

(assert (=> d!1324726 (= lt!1602996 e!2737413)))

(declare-fun res!1812765 () Bool)

(assert (=> d!1324726 (=> (not res!1812765) (not e!2737413))))

(assert (=> d!1324726 (= res!1812765 ((_ is Cons!49244) (keys!16724 lt!1602517)))))

(assert (=> d!1324726 (= (contains!11620 (keys!16724 lt!1602517) key!3918) lt!1602996)))

(declare-fun b!4396488 () Bool)

(declare-fun e!2737414 () Bool)

(assert (=> b!4396488 (= e!2737413 e!2737414)))

(declare-fun res!1812766 () Bool)

(assert (=> b!4396488 (=> res!1812766 e!2737414)))

(assert (=> b!4396488 (= res!1812766 (= (h!54861 (keys!16724 lt!1602517)) key!3918))))

(declare-fun b!4396489 () Bool)

(assert (=> b!4396489 (= e!2737414 (contains!11620 (t!356302 (keys!16724 lt!1602517)) key!3918))))

(assert (= (and d!1324726 res!1812765) b!4396488))

(assert (= (and b!4396488 (not res!1812766)) b!4396489))

(assert (=> d!1324726 m!5056361))

(declare-fun m!5057121 () Bool)

(assert (=> d!1324726 m!5057121))

(declare-fun m!5057123 () Bool)

(assert (=> d!1324726 m!5057123))

(declare-fun m!5057125 () Bool)

(assert (=> b!4396489 m!5057125))

(assert (=> b!4396004 d!1324726))

(assert (=> b!4396004 d!1324556))

(declare-fun d!1324728 () Bool)

(declare-fun res!1812767 () Bool)

(declare-fun e!2737415 () Bool)

(assert (=> d!1324728 (=> res!1812767 e!2737415)))

(assert (=> d!1324728 (= res!1812767 ((_ is Nil!49242) (t!356300 (toList!3209 lt!1602514))))))

(assert (=> d!1324728 (= (forall!9332 (t!356300 (toList!3209 lt!1602514)) lambda!147873) e!2737415)))

(declare-fun b!4396490 () Bool)

(declare-fun e!2737416 () Bool)

(assert (=> b!4396490 (= e!2737415 e!2737416)))

(declare-fun res!1812768 () Bool)

(assert (=> b!4396490 (=> (not res!1812768) (not e!2737416))))

(assert (=> b!4396490 (= res!1812768 (dynLambda!20745 lambda!147873 (h!54857 (t!356300 (toList!3209 lt!1602514)))))))

(declare-fun b!4396491 () Bool)

(assert (=> b!4396491 (= e!2737416 (forall!9332 (t!356300 (t!356300 (toList!3209 lt!1602514))) lambda!147873))))

(assert (= (and d!1324728 (not res!1812767)) b!4396490))

(assert (= (and b!4396490 res!1812768) b!4396491))

(declare-fun b_lambda!139207 () Bool)

(assert (=> (not b_lambda!139207) (not b!4396490)))

(declare-fun m!5057127 () Bool)

(assert (=> b!4396490 m!5057127))

(declare-fun m!5057129 () Bool)

(assert (=> b!4396491 m!5057129))

(assert (=> b!4395796 d!1324728))

(declare-fun lt!1602997 () Bool)

(declare-fun d!1324730 () Bool)

(assert (=> d!1324730 (= lt!1602997 (select (content!7851 (toList!3209 lt!1602580)) (tuple2!48825 hash!377 newBucket!200)))))

(declare-fun e!2737417 () Bool)

(assert (=> d!1324730 (= lt!1602997 e!2737417)))

(declare-fun res!1812770 () Bool)

(assert (=> d!1324730 (=> (not res!1812770) (not e!2737417))))

(assert (=> d!1324730 (= res!1812770 ((_ is Cons!49242) (toList!3209 lt!1602580)))))

(assert (=> d!1324730 (= (contains!11618 (toList!3209 lt!1602580) (tuple2!48825 hash!377 newBucket!200)) lt!1602997)))

(declare-fun b!4396492 () Bool)

(declare-fun e!2737418 () Bool)

(assert (=> b!4396492 (= e!2737417 e!2737418)))

(declare-fun res!1812769 () Bool)

(assert (=> b!4396492 (=> res!1812769 e!2737418)))

(assert (=> b!4396492 (= res!1812769 (= (h!54857 (toList!3209 lt!1602580)) (tuple2!48825 hash!377 newBucket!200)))))

(declare-fun b!4396493 () Bool)

(assert (=> b!4396493 (= e!2737418 (contains!11618 (t!356300 (toList!3209 lt!1602580)) (tuple2!48825 hash!377 newBucket!200)))))

(assert (= (and d!1324730 res!1812770) b!4396492))

(assert (= (and b!4396492 (not res!1812769)) b!4396493))

(declare-fun m!5057131 () Bool)

(assert (=> d!1324730 m!5057131))

(declare-fun m!5057133 () Bool)

(assert (=> d!1324730 m!5057133))

(declare-fun m!5057135 () Bool)

(assert (=> b!4396493 m!5057135))

(assert (=> b!4395903 d!1324730))

(declare-fun d!1324732 () Bool)

(declare-fun res!1812771 () Bool)

(declare-fun e!2737419 () Bool)

(assert (=> d!1324732 (=> res!1812771 e!2737419)))

(assert (=> d!1324732 (= res!1812771 ((_ is Nil!49242) (toList!3209 lm!1707)))))

(assert (=> d!1324732 (= (forall!9332 (toList!3209 lm!1707) lambda!147901) e!2737419)))

(declare-fun b!4396494 () Bool)

(declare-fun e!2737420 () Bool)

(assert (=> b!4396494 (= e!2737419 e!2737420)))

(declare-fun res!1812772 () Bool)

(assert (=> b!4396494 (=> (not res!1812772) (not e!2737420))))

(assert (=> b!4396494 (= res!1812772 (dynLambda!20745 lambda!147901 (h!54857 (toList!3209 lm!1707))))))

(declare-fun b!4396495 () Bool)

(assert (=> b!4396495 (= e!2737420 (forall!9332 (t!356300 (toList!3209 lm!1707)) lambda!147901))))

(assert (= (and d!1324732 (not res!1812771)) b!4396494))

(assert (= (and b!4396494 res!1812772) b!4396495))

(declare-fun b_lambda!139209 () Bool)

(assert (=> (not b_lambda!139209) (not b!4396494)))

(declare-fun m!5057137 () Bool)

(assert (=> b!4396494 m!5057137))

(declare-fun m!5057139 () Bool)

(assert (=> b!4396495 m!5057139))

(assert (=> d!1324460 d!1324732))

(declare-fun d!1324734 () Bool)

(declare-fun res!1812773 () Bool)

(declare-fun e!2737421 () Bool)

(assert (=> d!1324734 (=> res!1812773 e!2737421)))

(assert (=> d!1324734 (= res!1812773 (and ((_ is Cons!49241) (toList!3210 (extractMap!672 (toList!3209 lm!1707)))) (= (_1!27705 (h!54856 (toList!3210 (extractMap!672 (toList!3209 lm!1707))))) key!3918)))))

(assert (=> d!1324734 (= (containsKey!904 (toList!3210 (extractMap!672 (toList!3209 lm!1707))) key!3918) e!2737421)))

(declare-fun b!4396496 () Bool)

(declare-fun e!2737422 () Bool)

(assert (=> b!4396496 (= e!2737421 e!2737422)))

(declare-fun res!1812774 () Bool)

(assert (=> b!4396496 (=> (not res!1812774) (not e!2737422))))

(assert (=> b!4396496 (= res!1812774 ((_ is Cons!49241) (toList!3210 (extractMap!672 (toList!3209 lm!1707)))))))

(declare-fun b!4396497 () Bool)

(assert (=> b!4396497 (= e!2737422 (containsKey!904 (t!356299 (toList!3210 (extractMap!672 (toList!3209 lm!1707)))) key!3918))))

(assert (= (and d!1324734 (not res!1812773)) b!4396496))

(assert (= (and b!4396496 res!1812774) b!4396497))

(declare-fun m!5057141 () Bool)

(assert (=> b!4396497 m!5057141))

(assert (=> b!4396046 d!1324734))

(declare-fun d!1324736 () Bool)

(assert (=> d!1324736 (containsKey!904 (toList!3210 (extractMap!672 (toList!3209 lm!1707))) key!3918)))

(declare-fun lt!1602998 () Unit!78288)

(assert (=> d!1324736 (= lt!1602998 (choose!27496 (toList!3210 (extractMap!672 (toList!3209 lm!1707))) key!3918))))

(assert (=> d!1324736 (invariantList!741 (toList!3210 (extractMap!672 (toList!3209 lm!1707))))))

(assert (=> d!1324736 (= (lemmaInGetKeysListThenContainsKey!186 (toList!3210 (extractMap!672 (toList!3209 lm!1707))) key!3918) lt!1602998)))

(declare-fun bs!726712 () Bool)

(assert (= bs!726712 d!1324736))

(assert (=> bs!726712 m!5056439))

(declare-fun m!5057143 () Bool)

(assert (=> bs!726712 m!5057143))

(assert (=> bs!726712 m!5056681))

(assert (=> b!4396046 d!1324736))

(declare-fun d!1324738 () Bool)

(declare-fun lt!1602999 () Bool)

(assert (=> d!1324738 (= lt!1602999 (select (content!7853 e!2737113) key!3918))))

(declare-fun e!2737423 () Bool)

(assert (=> d!1324738 (= lt!1602999 e!2737423)))

(declare-fun res!1812775 () Bool)

(assert (=> d!1324738 (=> (not res!1812775) (not e!2737423))))

(assert (=> d!1324738 (= res!1812775 ((_ is Cons!49244) e!2737113))))

(assert (=> d!1324738 (= (contains!11620 e!2737113 key!3918) lt!1602999)))

(declare-fun b!4396498 () Bool)

(declare-fun e!2737424 () Bool)

(assert (=> b!4396498 (= e!2737423 e!2737424)))

(declare-fun res!1812776 () Bool)

(assert (=> b!4396498 (=> res!1812776 e!2737424)))

(assert (=> b!4396498 (= res!1812776 (= (h!54861 e!2737113) key!3918))))

(declare-fun b!4396499 () Bool)

(assert (=> b!4396499 (= e!2737424 (contains!11620 (t!356302 e!2737113) key!3918))))

(assert (= (and d!1324738 res!1812775) b!4396498))

(assert (= (and b!4396498 (not res!1812776)) b!4396499))

(declare-fun m!5057145 () Bool)

(assert (=> d!1324738 m!5057145))

(declare-fun m!5057147 () Bool)

(assert (=> d!1324738 m!5057147))

(declare-fun m!5057149 () Bool)

(assert (=> b!4396499 m!5057149))

(assert (=> bm!305973 d!1324738))

(declare-fun bs!726713 () Bool)

(declare-fun b!4396507 () Bool)

(assert (= bs!726713 (and b!4396507 b!4396484)))

(declare-fun lambda!148028 () Int)

(assert (=> bs!726713 (= (= (t!356299 (toList!3210 lt!1602517)) (toList!3210 (extractMap!672 (toList!3209 lm!1707)))) (= lambda!148028 lambda!148026))))

(declare-fun bs!726714 () Bool)

(assert (= bs!726714 (and b!4396507 b!4396440)))

(assert (=> bs!726714 (= (= (t!356299 (toList!3210 lt!1602517)) (toList!3210 (extractMap!672 (toList!3209 (tail!7090 lm!1707))))) (= lambda!148028 lambda!148022))))

(declare-fun bs!726715 () Bool)

(assert (= bs!726715 (and b!4396507 b!4396471)))

(assert (=> bs!726715 (= (= (t!356299 (toList!3210 lt!1602517)) (toList!3210 (extractMap!672 (toList!3209 (tail!7090 lm!1707))))) (= lambda!148028 lambda!148024))))

(declare-fun bs!726716 () Bool)

(assert (= bs!726716 (and b!4396507 b!4396221)))

(assert (=> bs!726716 (= (= (t!356299 (toList!3210 lt!1602517)) (toList!3210 lt!1602517)) (= lambda!148028 lambda!147916))))

(declare-fun bs!726717 () Bool)

(assert (= bs!726717 (and b!4396507 b!4396438)))

(assert (=> bs!726717 (= (= (t!356299 (toList!3210 lt!1602517)) (Cons!49241 (h!54856 (toList!3210 (extractMap!672 (toList!3209 (tail!7090 lm!1707))))) (t!356299 (toList!3210 (extractMap!672 (toList!3209 (tail!7090 lm!1707))))))) (= lambda!148028 lambda!148021))))

(declare-fun bs!726718 () Bool)

(assert (= bs!726718 (and b!4396507 b!4396445)))

(assert (=> bs!726718 (= (= (t!356299 (toList!3210 lt!1602517)) (t!356299 (toList!3210 (extractMap!672 (toList!3209 (tail!7090 lm!1707)))))) (= lambda!148028 lambda!148020))))

(assert (=> b!4396507 true))

(declare-fun bs!726719 () Bool)

(declare-fun b!4396500 () Bool)

(assert (= bs!726719 (and b!4396500 b!4396484)))

(declare-fun lambda!148029 () Int)

(assert (=> bs!726719 (= (= (Cons!49241 (h!54856 (toList!3210 lt!1602517)) (t!356299 (toList!3210 lt!1602517))) (toList!3210 (extractMap!672 (toList!3209 lm!1707)))) (= lambda!148029 lambda!148026))))

(declare-fun bs!726720 () Bool)

(assert (= bs!726720 (and b!4396500 b!4396507)))

(assert (=> bs!726720 (= (= (Cons!49241 (h!54856 (toList!3210 lt!1602517)) (t!356299 (toList!3210 lt!1602517))) (t!356299 (toList!3210 lt!1602517))) (= lambda!148029 lambda!148028))))

(declare-fun bs!726721 () Bool)

(assert (= bs!726721 (and b!4396500 b!4396440)))

(assert (=> bs!726721 (= (= (Cons!49241 (h!54856 (toList!3210 lt!1602517)) (t!356299 (toList!3210 lt!1602517))) (toList!3210 (extractMap!672 (toList!3209 (tail!7090 lm!1707))))) (= lambda!148029 lambda!148022))))

(declare-fun bs!726722 () Bool)

(assert (= bs!726722 (and b!4396500 b!4396471)))

(assert (=> bs!726722 (= (= (Cons!49241 (h!54856 (toList!3210 lt!1602517)) (t!356299 (toList!3210 lt!1602517))) (toList!3210 (extractMap!672 (toList!3209 (tail!7090 lm!1707))))) (= lambda!148029 lambda!148024))))

(declare-fun bs!726723 () Bool)

(assert (= bs!726723 (and b!4396500 b!4396221)))

(assert (=> bs!726723 (= (= (Cons!49241 (h!54856 (toList!3210 lt!1602517)) (t!356299 (toList!3210 lt!1602517))) (toList!3210 lt!1602517)) (= lambda!148029 lambda!147916))))

(declare-fun bs!726724 () Bool)

(assert (= bs!726724 (and b!4396500 b!4396438)))

(assert (=> bs!726724 (= (= (Cons!49241 (h!54856 (toList!3210 lt!1602517)) (t!356299 (toList!3210 lt!1602517))) (Cons!49241 (h!54856 (toList!3210 (extractMap!672 (toList!3209 (tail!7090 lm!1707))))) (t!356299 (toList!3210 (extractMap!672 (toList!3209 (tail!7090 lm!1707))))))) (= lambda!148029 lambda!148021))))

(declare-fun bs!726725 () Bool)

(assert (= bs!726725 (and b!4396500 b!4396445)))

(assert (=> bs!726725 (= (= (Cons!49241 (h!54856 (toList!3210 lt!1602517)) (t!356299 (toList!3210 lt!1602517))) (t!356299 (toList!3210 (extractMap!672 (toList!3209 (tail!7090 lm!1707)))))) (= lambda!148029 lambda!148020))))

(assert (=> b!4396500 true))

(declare-fun bs!726726 () Bool)

(declare-fun b!4396502 () Bool)

(assert (= bs!726726 (and b!4396502 b!4396484)))

(declare-fun lambda!148030 () Int)

(assert (=> bs!726726 (= (= (toList!3210 lt!1602517) (toList!3210 (extractMap!672 (toList!3209 lm!1707)))) (= lambda!148030 lambda!148026))))

(declare-fun bs!726727 () Bool)

(assert (= bs!726727 (and b!4396502 b!4396507)))

(assert (=> bs!726727 (= (= (toList!3210 lt!1602517) (t!356299 (toList!3210 lt!1602517))) (= lambda!148030 lambda!148028))))

(declare-fun bs!726728 () Bool)

(assert (= bs!726728 (and b!4396502 b!4396440)))

(assert (=> bs!726728 (= (= (toList!3210 lt!1602517) (toList!3210 (extractMap!672 (toList!3209 (tail!7090 lm!1707))))) (= lambda!148030 lambda!148022))))

(declare-fun bs!726729 () Bool)

(assert (= bs!726729 (and b!4396502 b!4396221)))

(assert (=> bs!726729 (= lambda!148030 lambda!147916)))

(declare-fun bs!726730 () Bool)

(assert (= bs!726730 (and b!4396502 b!4396438)))

(assert (=> bs!726730 (= (= (toList!3210 lt!1602517) (Cons!49241 (h!54856 (toList!3210 (extractMap!672 (toList!3209 (tail!7090 lm!1707))))) (t!356299 (toList!3210 (extractMap!672 (toList!3209 (tail!7090 lm!1707))))))) (= lambda!148030 lambda!148021))))

(declare-fun bs!726731 () Bool)

(assert (= bs!726731 (and b!4396502 b!4396445)))

(assert (=> bs!726731 (= (= (toList!3210 lt!1602517) (t!356299 (toList!3210 (extractMap!672 (toList!3209 (tail!7090 lm!1707)))))) (= lambda!148030 lambda!148020))))

(declare-fun bs!726732 () Bool)

(assert (= bs!726732 (and b!4396502 b!4396471)))

(assert (=> bs!726732 (= (= (toList!3210 lt!1602517) (toList!3210 (extractMap!672 (toList!3209 (tail!7090 lm!1707))))) (= lambda!148030 lambda!148024))))

(declare-fun bs!726733 () Bool)

(assert (= bs!726733 (and b!4396502 b!4396500)))

(assert (=> bs!726733 (= (= (toList!3210 lt!1602517) (Cons!49241 (h!54856 (toList!3210 lt!1602517)) (t!356299 (toList!3210 lt!1602517)))) (= lambda!148030 lambda!148029))))

(assert (=> b!4396502 true))

(declare-fun bs!726734 () Bool)

(declare-fun b!4396501 () Bool)

(assert (= bs!726734 (and b!4396501 b!4396222)))

(declare-fun lambda!148031 () Int)

(assert (=> bs!726734 (= lambda!148031 lambda!147917)))

(declare-fun bs!726735 () Bool)

(assert (= bs!726735 (and b!4396501 b!4396439)))

(assert (=> bs!726735 (= lambda!148031 lambda!148023)))

(declare-fun bs!726736 () Bool)

(assert (= bs!726736 (and b!4396501 b!4396472)))

(assert (=> bs!726736 (= lambda!148031 lambda!148025)))

(declare-fun bs!726737 () Bool)

(assert (= bs!726737 (and b!4396501 b!4396485)))

(assert (=> bs!726737 (= lambda!148031 lambda!148027)))

(declare-fun e!2737428 () List!49368)

(assert (=> b!4396500 (= e!2737428 (Cons!49244 (_1!27705 (h!54856 (toList!3210 lt!1602517))) (getKeysList!188 (t!356299 (toList!3210 lt!1602517)))))))

(declare-fun c!748429 () Bool)

(assert (=> b!4396500 (= c!748429 (containsKey!904 (t!356299 (toList!3210 lt!1602517)) (_1!27705 (h!54856 (toList!3210 lt!1602517)))))))

(declare-fun lt!1603005 () Unit!78288)

(declare-fun e!2737426 () Unit!78288)

(assert (=> b!4396500 (= lt!1603005 e!2737426)))

(declare-fun c!748430 () Bool)

(assert (=> b!4396500 (= c!748430 (contains!11620 (getKeysList!188 (t!356299 (toList!3210 lt!1602517))) (_1!27705 (h!54856 (toList!3210 lt!1602517)))))))

(declare-fun lt!1603001 () Unit!78288)

(declare-fun e!2737425 () Unit!78288)

(assert (=> b!4396500 (= lt!1603001 e!2737425)))

(declare-fun lt!1603002 () List!49368)

(assert (=> b!4396500 (= lt!1603002 (getKeysList!188 (t!356299 (toList!3210 lt!1602517))))))

(declare-fun lt!1603004 () Unit!78288)

(assert (=> b!4396500 (= lt!1603004 (lemmaForallContainsAddHeadPreserves!51 (t!356299 (toList!3210 lt!1602517)) lt!1603002 (h!54856 (toList!3210 lt!1602517))))))

(assert (=> b!4396500 (forall!9336 lt!1603002 lambda!148029)))

(declare-fun lt!1603006 () Unit!78288)

(assert (=> b!4396500 (= lt!1603006 lt!1603004)))

(declare-fun e!2737427 () Bool)

(declare-fun lt!1603000 () List!49368)

(assert (=> b!4396501 (= e!2737427 (= (content!7853 lt!1603000) (content!7853 (map!10733 (toList!3210 lt!1602517) lambda!148031))))))

(declare-fun res!1812777 () Bool)

(assert (=> b!4396502 (=> (not res!1812777) (not e!2737427))))

(assert (=> b!4396502 (= res!1812777 (forall!9336 lt!1603000 lambda!148030))))

(declare-fun b!4396503 () Bool)

(declare-fun Unit!78346 () Unit!78288)

(assert (=> b!4396503 (= e!2737425 Unit!78346)))

(declare-fun b!4396504 () Bool)

(declare-fun Unit!78347 () Unit!78288)

(assert (=> b!4396504 (= e!2737426 Unit!78347)))

(declare-fun b!4396505 () Bool)

(declare-fun res!1812779 () Bool)

(assert (=> b!4396505 (=> (not res!1812779) (not e!2737427))))

(assert (=> b!4396505 (= res!1812779 (= (length!116 lt!1603000) (length!117 (toList!3210 lt!1602517))))))

(assert (=> b!4396507 false))

(declare-fun lt!1603003 () Unit!78288)

(assert (=> b!4396507 (= lt!1603003 (forallContained!1973 (getKeysList!188 (t!356299 (toList!3210 lt!1602517))) lambda!148028 (_1!27705 (h!54856 (toList!3210 lt!1602517)))))))

(declare-fun Unit!78348 () Unit!78288)

(assert (=> b!4396507 (= e!2737425 Unit!78348)))

(declare-fun b!4396508 () Bool)

(assert (=> b!4396508 (= e!2737428 Nil!49244)))

(declare-fun b!4396506 () Bool)

(assert (=> b!4396506 false))

(declare-fun Unit!78349 () Unit!78288)

(assert (=> b!4396506 (= e!2737426 Unit!78349)))

(declare-fun d!1324740 () Bool)

(assert (=> d!1324740 e!2737427))

(declare-fun res!1812778 () Bool)

(assert (=> d!1324740 (=> (not res!1812778) (not e!2737427))))

(assert (=> d!1324740 (= res!1812778 (noDuplicate!630 lt!1603000))))

(assert (=> d!1324740 (= lt!1603000 e!2737428)))

(declare-fun c!748431 () Bool)

(assert (=> d!1324740 (= c!748431 ((_ is Cons!49241) (toList!3210 lt!1602517)))))

(assert (=> d!1324740 (invariantList!741 (toList!3210 lt!1602517))))

(assert (=> d!1324740 (= (getKeysList!188 (toList!3210 lt!1602517)) lt!1603000)))

(assert (= (and d!1324740 c!748431) b!4396500))

(assert (= (and d!1324740 (not c!748431)) b!4396508))

(assert (= (and b!4396500 c!748429) b!4396506))

(assert (= (and b!4396500 (not c!748429)) b!4396504))

(assert (= (and b!4396500 c!748430) b!4396507))

(assert (= (and b!4396500 (not c!748430)) b!4396503))

(assert (= (and d!1324740 res!1812778) b!4396505))

(assert (= (and b!4396505 res!1812779) b!4396502))

(assert (= (and b!4396502 res!1812777) b!4396501))

(declare-fun m!5057151 () Bool)

(assert (=> d!1324740 m!5057151))

(assert (=> d!1324740 m!5056991))

(declare-fun m!5057153 () Bool)

(assert (=> b!4396500 m!5057153))

(declare-fun m!5057155 () Bool)

(assert (=> b!4396500 m!5057155))

(assert (=> b!4396500 m!5057155))

(declare-fun m!5057157 () Bool)

(assert (=> b!4396500 m!5057157))

(declare-fun m!5057159 () Bool)

(assert (=> b!4396500 m!5057159))

(declare-fun m!5057161 () Bool)

(assert (=> b!4396500 m!5057161))

(assert (=> b!4396507 m!5057155))

(assert (=> b!4396507 m!5057155))

(declare-fun m!5057163 () Bool)

(assert (=> b!4396507 m!5057163))

(declare-fun m!5057165 () Bool)

(assert (=> b!4396502 m!5057165))

(declare-fun m!5057167 () Bool)

(assert (=> b!4396505 m!5057167))

(assert (=> b!4396505 m!5056657))

(declare-fun m!5057169 () Bool)

(assert (=> b!4396501 m!5057169))

(declare-fun m!5057171 () Bool)

(assert (=> b!4396501 m!5057171))

(assert (=> b!4396501 m!5057171))

(declare-fun m!5057173 () Bool)

(assert (=> b!4396501 m!5057173))

(assert (=> b!4396002 d!1324740))

(declare-fun d!1324742 () Bool)

(assert (=> d!1324742 (dynLambda!20745 lambda!147873 lt!1602518)))

(assert (=> d!1324742 true))

(declare-fun _$7!1585 () Unit!78288)

(assert (=> d!1324742 (= (choose!27488 (toList!3209 lm!1707) lambda!147873 lt!1602518) _$7!1585)))

(declare-fun b_lambda!139211 () Bool)

(assert (=> (not b_lambda!139211) (not d!1324742)))

(declare-fun bs!726738 () Bool)

(assert (= bs!726738 d!1324742))

(assert (=> bs!726738 m!5056187))

(assert (=> d!1324378 d!1324742))

(assert (=> d!1324378 d!1324348))

(declare-fun d!1324744 () Bool)

(assert (=> d!1324744 (isDefined!7887 (getValueByKey!581 (toList!3210 lt!1602517) key!3918))))

(declare-fun lt!1603007 () Unit!78288)

(assert (=> d!1324744 (= lt!1603007 (choose!27497 (toList!3210 lt!1602517) key!3918))))

(assert (=> d!1324744 (invariantList!741 (toList!3210 lt!1602517))))

(assert (=> d!1324744 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!490 (toList!3210 lt!1602517) key!3918) lt!1603007)))

(declare-fun bs!726739 () Bool)

(assert (= bs!726739 d!1324744))

(assert (=> bs!726739 m!5056371))

(assert (=> bs!726739 m!5056371))

(assert (=> bs!726739 m!5056373))

(declare-fun m!5057175 () Bool)

(assert (=> bs!726739 m!5057175))

(assert (=> bs!726739 m!5056991))

(assert (=> b!4396008 d!1324744))

(assert (=> b!4396008 d!1324660))

(assert (=> b!4396008 d!1324662))

(declare-fun d!1324746 () Bool)

(assert (=> d!1324746 (contains!11620 (getKeysList!188 (toList!3210 lt!1602517)) key!3918)))

(declare-fun lt!1603008 () Unit!78288)

(assert (=> d!1324746 (= lt!1603008 (choose!27499 (toList!3210 lt!1602517) key!3918))))

(assert (=> d!1324746 (invariantList!741 (toList!3210 lt!1602517))))

(assert (=> d!1324746 (= (lemmaInListThenGetKeysListContains!185 (toList!3210 lt!1602517) key!3918) lt!1603008)))

(declare-fun bs!726740 () Bool)

(assert (= bs!726740 d!1324746))

(assert (=> bs!726740 m!5056377))

(assert (=> bs!726740 m!5056377))

(declare-fun m!5057177 () Bool)

(assert (=> bs!726740 m!5057177))

(declare-fun m!5057179 () Bool)

(assert (=> bs!726740 m!5057179))

(assert (=> bs!726740 m!5056991))

(assert (=> b!4396008 d!1324746))

(declare-fun d!1324748 () Bool)

(declare-fun c!748434 () Bool)

(assert (=> d!1324748 (= c!748434 ((_ is Nil!49242) (toList!3209 lm!1707)))))

(declare-fun e!2737431 () (InoxSet tuple2!48824))

(assert (=> d!1324748 (= (content!7851 (toList!3209 lm!1707)) e!2737431)))

(declare-fun b!4396513 () Bool)

(assert (=> b!4396513 (= e!2737431 ((as const (Array tuple2!48824 Bool)) false))))

(declare-fun b!4396514 () Bool)

(assert (=> b!4396514 (= e!2737431 ((_ map or) (store ((as const (Array tuple2!48824 Bool)) false) (h!54857 (toList!3209 lm!1707)) true) (content!7851 (t!356300 (toList!3209 lm!1707)))))))

(assert (= (and d!1324748 c!748434) b!4396513))

(assert (= (and d!1324748 (not c!748434)) b!4396514))

(declare-fun m!5057181 () Bool)

(assert (=> b!4396514 m!5057181))

(declare-fun m!5057183 () Bool)

(assert (=> b!4396514 m!5057183))

(assert (=> d!1324360 d!1324748))

(declare-fun d!1324750 () Bool)

(declare-fun res!1812780 () Bool)

(declare-fun e!2737432 () Bool)

(assert (=> d!1324750 (=> res!1812780 e!2737432)))

(assert (=> d!1324750 (= res!1812780 (and ((_ is Cons!49241) (t!356299 (_2!27706 (h!54857 (toList!3209 lm!1707))))) (= (_1!27705 (h!54856 (t!356299 (_2!27706 (h!54857 (toList!3209 lm!1707)))))) key!3918)))))

(assert (=> d!1324750 (= (containsKey!901 (t!356299 (_2!27706 (h!54857 (toList!3209 lm!1707)))) key!3918) e!2737432)))

(declare-fun b!4396515 () Bool)

(declare-fun e!2737433 () Bool)

(assert (=> b!4396515 (= e!2737432 e!2737433)))

(declare-fun res!1812781 () Bool)

(assert (=> b!4396515 (=> (not res!1812781) (not e!2737433))))

(assert (=> b!4396515 (= res!1812781 ((_ is Cons!49241) (t!356299 (_2!27706 (h!54857 (toList!3209 lm!1707))))))))

(declare-fun b!4396516 () Bool)

(assert (=> b!4396516 (= e!2737433 (containsKey!901 (t!356299 (t!356299 (_2!27706 (h!54857 (toList!3209 lm!1707))))) key!3918))))

(assert (= (and d!1324750 (not res!1812780)) b!4396515))

(assert (= (and b!4396515 res!1812781) b!4396516))

(declare-fun m!5057185 () Bool)

(assert (=> b!4396516 m!5057185))

(assert (=> b!4396037 d!1324750))

(declare-fun d!1324752 () Bool)

(declare-fun lt!1603009 () Bool)

(assert (=> d!1324752 (= lt!1603009 (select (content!7853 e!2737107) key!3918))))

(declare-fun e!2737434 () Bool)

(assert (=> d!1324752 (= lt!1603009 e!2737434)))

(declare-fun res!1812782 () Bool)

(assert (=> d!1324752 (=> (not res!1812782) (not e!2737434))))

(assert (=> d!1324752 (= res!1812782 ((_ is Cons!49244) e!2737107))))

(assert (=> d!1324752 (= (contains!11620 e!2737107 key!3918) lt!1603009)))

(declare-fun b!4396517 () Bool)

(declare-fun e!2737435 () Bool)

(assert (=> b!4396517 (= e!2737434 e!2737435)))

(declare-fun res!1812783 () Bool)

(assert (=> b!4396517 (=> res!1812783 e!2737435)))

(assert (=> b!4396517 (= res!1812783 (= (h!54861 e!2737107) key!3918))))

(declare-fun b!4396518 () Bool)

(assert (=> b!4396518 (= e!2737435 (contains!11620 (t!356302 e!2737107) key!3918))))

(assert (= (and d!1324752 res!1812782) b!4396517))

(assert (= (and b!4396517 (not res!1812783)) b!4396518))

(declare-fun m!5057187 () Bool)

(assert (=> d!1324752 m!5057187))

(declare-fun m!5057189 () Bool)

(assert (=> d!1324752 m!5057189))

(declare-fun m!5057191 () Bool)

(assert (=> b!4396518 m!5057191))

(assert (=> bm!305972 d!1324752))

(assert (=> d!1324448 d!1324412))

(declare-fun d!1324754 () Bool)

(assert (=> d!1324754 (contains!11616 lt!1602517 key!3918)))

(assert (=> d!1324754 true))

(declare-fun _$11!1179 () Unit!78288)

(assert (=> d!1324754 (= (choose!27492 (_2!27706 (h!54857 (toList!3209 lm!1707))) key!3918 newValue!99 lt!1602517) _$11!1179)))

(declare-fun bs!726741 () Bool)

(assert (= bs!726741 d!1324754))

(assert (=> bs!726741 m!5056095))

(assert (=> d!1324448 d!1324754))

(declare-fun d!1324756 () Bool)

(declare-fun res!1812784 () Bool)

(declare-fun e!2737436 () Bool)

(assert (=> d!1324756 (=> res!1812784 e!2737436)))

(assert (=> d!1324756 (= res!1812784 (not ((_ is Cons!49241) (_2!27706 (h!54857 (toList!3209 lm!1707))))))))

(assert (=> d!1324756 (= (noDuplicateKeys!613 (_2!27706 (h!54857 (toList!3209 lm!1707)))) e!2737436)))

(declare-fun b!4396519 () Bool)

(declare-fun e!2737437 () Bool)

(assert (=> b!4396519 (= e!2737436 e!2737437)))

(declare-fun res!1812785 () Bool)

(assert (=> b!4396519 (=> (not res!1812785) (not e!2737437))))

(assert (=> b!4396519 (= res!1812785 (not (containsKey!901 (t!356299 (_2!27706 (h!54857 (toList!3209 lm!1707)))) (_1!27705 (h!54856 (_2!27706 (h!54857 (toList!3209 lm!1707))))))))))

(declare-fun b!4396520 () Bool)

(assert (=> b!4396520 (= e!2737437 (noDuplicateKeys!613 (t!356299 (_2!27706 (h!54857 (toList!3209 lm!1707))))))))

(assert (= (and d!1324756 (not res!1812784)) b!4396519))

(assert (= (and b!4396519 res!1812785) b!4396520))

(declare-fun m!5057193 () Bool)

(assert (=> b!4396519 m!5057193))

(declare-fun m!5057195 () Bool)

(assert (=> b!4396520 m!5057195))

(assert (=> d!1324448 d!1324756))

(assert (=> d!1324412 d!1324646))

(assert (=> b!4396006 d!1324726))

(assert (=> b!4396006 d!1324556))

(declare-fun d!1324758 () Bool)

(declare-fun lt!1603010 () Bool)

(assert (=> d!1324758 (= lt!1603010 (select (content!7851 (t!356300 (toList!3209 lm!1707))) lt!1602518))))

(declare-fun e!2737438 () Bool)

(assert (=> d!1324758 (= lt!1603010 e!2737438)))

(declare-fun res!1812787 () Bool)

(assert (=> d!1324758 (=> (not res!1812787) (not e!2737438))))

(assert (=> d!1324758 (= res!1812787 ((_ is Cons!49242) (t!356300 (toList!3209 lm!1707))))))

(assert (=> d!1324758 (= (contains!11618 (t!356300 (toList!3209 lm!1707)) lt!1602518) lt!1603010)))

(declare-fun b!4396521 () Bool)

(declare-fun e!2737439 () Bool)

(assert (=> b!4396521 (= e!2737438 e!2737439)))

(declare-fun res!1812786 () Bool)

(assert (=> b!4396521 (=> res!1812786 e!2737439)))

(assert (=> b!4396521 (= res!1812786 (= (h!54857 (t!356300 (toList!3209 lm!1707))) lt!1602518))))

(declare-fun b!4396522 () Bool)

(assert (=> b!4396522 (= e!2737439 (contains!11618 (t!356300 (t!356300 (toList!3209 lm!1707))) lt!1602518))))

(assert (= (and d!1324758 res!1812787) b!4396521))

(assert (= (and b!4396521 (not res!1812786)) b!4396522))

(assert (=> d!1324758 m!5057183))

(declare-fun m!5057197 () Bool)

(assert (=> d!1324758 m!5057197))

(declare-fun m!5057199 () Bool)

(assert (=> b!4396522 m!5057199))

(assert (=> b!4395823 d!1324758))

(assert (=> bs!726499 d!1324756))

(declare-fun d!1324760 () Bool)

(declare-fun res!1812788 () Bool)

(declare-fun e!2737440 () Bool)

(assert (=> d!1324760 (=> res!1812788 e!2737440)))

(assert (=> d!1324760 (= res!1812788 ((_ is Nil!49242) (toList!3209 (+!846 lm!1707 (tuple2!48825 hash!377 newBucket!200)))))))

(assert (=> d!1324760 (= (forall!9332 (toList!3209 (+!846 lm!1707 (tuple2!48825 hash!377 newBucket!200))) lambda!147873) e!2737440)))

(declare-fun b!4396523 () Bool)

(declare-fun e!2737441 () Bool)

(assert (=> b!4396523 (= e!2737440 e!2737441)))

(declare-fun res!1812789 () Bool)

(assert (=> b!4396523 (=> (not res!1812789) (not e!2737441))))

(assert (=> b!4396523 (= res!1812789 (dynLambda!20745 lambda!147873 (h!54857 (toList!3209 (+!846 lm!1707 (tuple2!48825 hash!377 newBucket!200))))))))

(declare-fun b!4396524 () Bool)

(assert (=> b!4396524 (= e!2737441 (forall!9332 (t!356300 (toList!3209 (+!846 lm!1707 (tuple2!48825 hash!377 newBucket!200)))) lambda!147873))))

(assert (= (and d!1324760 (not res!1812788)) b!4396523))

(assert (= (and b!4396523 res!1812789) b!4396524))

(declare-fun b_lambda!139213 () Bool)

(assert (=> (not b_lambda!139213) (not b!4396523)))

(declare-fun m!5057201 () Bool)

(assert (=> b!4396523 m!5057201))

(declare-fun m!5057203 () Bool)

(assert (=> b!4396524 m!5057203))

(assert (=> d!1324402 d!1324760))

(assert (=> d!1324402 d!1324396))

(declare-fun d!1324762 () Bool)

(assert (=> d!1324762 (forall!9332 (toList!3209 (+!846 lm!1707 (tuple2!48825 hash!377 newBucket!200))) lambda!147873)))

(assert (=> d!1324762 true))

(declare-fun _$31!304 () Unit!78288)

(assert (=> d!1324762 (= (choose!27490 lm!1707 lambda!147873 hash!377 newBucket!200) _$31!304)))

(declare-fun bs!726742 () Bool)

(assert (= bs!726742 d!1324762))

(assert (=> bs!726742 m!5056075))

(assert (=> bs!726742 m!5056263))

(assert (=> d!1324402 d!1324762))

(assert (=> d!1324402 d!1324348))

(declare-fun b!4396526 () Bool)

(declare-fun e!2737443 () List!49365)

(assert (=> b!4396526 (= e!2737443 (t!356299 (t!356299 lt!1602520)))))

(declare-fun b!4396527 () Bool)

(declare-fun e!2737442 () List!49365)

(assert (=> b!4396527 (= e!2737443 e!2737442)))

(declare-fun c!748436 () Bool)

(assert (=> b!4396527 (= c!748436 ((_ is Cons!49241) (t!356299 lt!1602520)))))

(declare-fun b!4396528 () Bool)

(assert (=> b!4396528 (= e!2737442 (Cons!49241 (h!54856 (t!356299 lt!1602520)) (removePairForKey!581 (t!356299 (t!356299 lt!1602520)) key!3918)))))

(declare-fun b!4396529 () Bool)

(assert (=> b!4396529 (= e!2737442 Nil!49241)))

(declare-fun d!1324764 () Bool)

(declare-fun lt!1603011 () List!49365)

(assert (=> d!1324764 (not (containsKey!901 lt!1603011 key!3918))))

(assert (=> d!1324764 (= lt!1603011 e!2737443)))

(declare-fun c!748435 () Bool)

(assert (=> d!1324764 (= c!748435 (and ((_ is Cons!49241) (t!356299 lt!1602520)) (= (_1!27705 (h!54856 (t!356299 lt!1602520))) key!3918)))))

(assert (=> d!1324764 (noDuplicateKeys!613 (t!356299 lt!1602520))))

(assert (=> d!1324764 (= (removePairForKey!581 (t!356299 lt!1602520) key!3918) lt!1603011)))

(assert (= (and d!1324764 c!748435) b!4396526))

(assert (= (and d!1324764 (not c!748435)) b!4396527))

(assert (= (and b!4396527 c!748436) b!4396528))

(assert (= (and b!4396527 (not c!748436)) b!4396529))

(declare-fun m!5057205 () Bool)

(assert (=> b!4396528 m!5057205))

(declare-fun m!5057207 () Bool)

(assert (=> d!1324764 m!5057207))

(assert (=> d!1324764 m!5057001))

(assert (=> b!4395874 d!1324764))

(declare-fun bs!726743 () Bool)

(declare-fun b!4396531 () Bool)

(assert (= bs!726743 (and b!4396531 d!1324390)))

(declare-fun lambda!148032 () Int)

(assert (=> bs!726743 (not (= lambda!148032 lambda!147879))))

(declare-fun bs!726744 () Bool)

(assert (= bs!726744 (and b!4396531 b!4396372)))

(assert (=> bs!726744 (= (= (extractMap!672 (t!356300 (toList!3209 (tail!7090 lm!1707)))) (extractMap!672 (t!356300 (toList!3209 lm!1707)))) (= lambda!148032 lambda!148008))))

(declare-fun bs!726745 () Bool)

(assert (= bs!726745 (and b!4396531 b!4396373)))

(assert (=> bs!726745 (= (= (extractMap!672 (t!356300 (toList!3209 (tail!7090 lm!1707)))) lt!1602962) (= lambda!148032 lambda!148010))))

(declare-fun bs!726746 () Bool)

(assert (= bs!726746 (and b!4396531 d!1324578)))

(assert (=> bs!726746 (= (= (extractMap!672 (t!356300 (toList!3209 (tail!7090 lm!1707)))) lt!1602943) (= lambda!148032 lambda!148011))))

(assert (=> bs!726745 (= (= (extractMap!672 (t!356300 (toList!3209 (tail!7090 lm!1707)))) (extractMap!672 (t!356300 (toList!3209 lm!1707)))) (= lambda!148032 lambda!148009))))

(assert (=> b!4396531 true))

(declare-fun bs!726747 () Bool)

(declare-fun b!4396532 () Bool)

(assert (= bs!726747 (and b!4396532 d!1324390)))

(declare-fun lambda!148033 () Int)

(assert (=> bs!726747 (not (= lambda!148033 lambda!147879))))

(declare-fun bs!726748 () Bool)

(assert (= bs!726748 (and b!4396532 b!4396531)))

(assert (=> bs!726748 (= lambda!148033 lambda!148032)))

(declare-fun bs!726749 () Bool)

(assert (= bs!726749 (and b!4396532 b!4396372)))

(assert (=> bs!726749 (= (= (extractMap!672 (t!356300 (toList!3209 (tail!7090 lm!1707)))) (extractMap!672 (t!356300 (toList!3209 lm!1707)))) (= lambda!148033 lambda!148008))))

(declare-fun bs!726750 () Bool)

(assert (= bs!726750 (and b!4396532 b!4396373)))

(assert (=> bs!726750 (= (= (extractMap!672 (t!356300 (toList!3209 (tail!7090 lm!1707)))) lt!1602962) (= lambda!148033 lambda!148010))))

(declare-fun bs!726751 () Bool)

(assert (= bs!726751 (and b!4396532 d!1324578)))

(assert (=> bs!726751 (= (= (extractMap!672 (t!356300 (toList!3209 (tail!7090 lm!1707)))) lt!1602943) (= lambda!148033 lambda!148011))))

(assert (=> bs!726750 (= (= (extractMap!672 (t!356300 (toList!3209 (tail!7090 lm!1707)))) (extractMap!672 (t!356300 (toList!3209 lm!1707)))) (= lambda!148033 lambda!148009))))

(assert (=> b!4396532 true))

(declare-fun lambda!148034 () Int)

(assert (=> bs!726747 (not (= lambda!148034 lambda!147879))))

(declare-fun lt!1603032 () ListMap!2453)

(assert (=> bs!726748 (= (= lt!1603032 (extractMap!672 (t!356300 (toList!3209 (tail!7090 lm!1707))))) (= lambda!148034 lambda!148032))))

(assert (=> b!4396532 (= (= lt!1603032 (extractMap!672 (t!356300 (toList!3209 (tail!7090 lm!1707))))) (= lambda!148034 lambda!148033))))

(assert (=> bs!726749 (= (= lt!1603032 (extractMap!672 (t!356300 (toList!3209 lm!1707)))) (= lambda!148034 lambda!148008))))

(assert (=> bs!726750 (= (= lt!1603032 lt!1602962) (= lambda!148034 lambda!148010))))

(assert (=> bs!726751 (= (= lt!1603032 lt!1602943) (= lambda!148034 lambda!148011))))

(assert (=> bs!726750 (= (= lt!1603032 (extractMap!672 (t!356300 (toList!3209 lm!1707)))) (= lambda!148034 lambda!148009))))

(assert (=> b!4396532 true))

(declare-fun bs!726752 () Bool)

(declare-fun d!1324766 () Bool)

(assert (= bs!726752 (and d!1324766 d!1324390)))

(declare-fun lambda!148035 () Int)

(assert (=> bs!726752 (not (= lambda!148035 lambda!147879))))

(declare-fun bs!726753 () Bool)

(assert (= bs!726753 (and d!1324766 b!4396531)))

(declare-fun lt!1603013 () ListMap!2453)

(assert (=> bs!726753 (= (= lt!1603013 (extractMap!672 (t!356300 (toList!3209 (tail!7090 lm!1707))))) (= lambda!148035 lambda!148032))))

(declare-fun bs!726754 () Bool)

(assert (= bs!726754 (and d!1324766 b!4396532)))

(assert (=> bs!726754 (= (= lt!1603013 lt!1603032) (= lambda!148035 lambda!148034))))

(assert (=> bs!726754 (= (= lt!1603013 (extractMap!672 (t!356300 (toList!3209 (tail!7090 lm!1707))))) (= lambda!148035 lambda!148033))))

(declare-fun bs!726755 () Bool)

(assert (= bs!726755 (and d!1324766 b!4396372)))

(assert (=> bs!726755 (= (= lt!1603013 (extractMap!672 (t!356300 (toList!3209 lm!1707)))) (= lambda!148035 lambda!148008))))

(declare-fun bs!726756 () Bool)

(assert (= bs!726756 (and d!1324766 b!4396373)))

(assert (=> bs!726756 (= (= lt!1603013 lt!1602962) (= lambda!148035 lambda!148010))))

(declare-fun bs!726757 () Bool)

(assert (= bs!726757 (and d!1324766 d!1324578)))

(assert (=> bs!726757 (= (= lt!1603013 lt!1602943) (= lambda!148035 lambda!148011))))

(assert (=> bs!726756 (= (= lt!1603013 (extractMap!672 (t!356300 (toList!3209 lm!1707)))) (= lambda!148035 lambda!148009))))

(assert (=> d!1324766 true))

(declare-fun b!4396530 () Bool)

(declare-fun e!2737444 () Bool)

(assert (=> b!4396530 (= e!2737444 (invariantList!741 (toList!3210 lt!1603013)))))

(declare-fun e!2737445 () ListMap!2453)

(assert (=> b!4396531 (= e!2737445 (extractMap!672 (t!356300 (toList!3209 (tail!7090 lm!1707)))))))

(declare-fun lt!1603023 () Unit!78288)

(declare-fun call!306013 () Unit!78288)

(assert (=> b!4396531 (= lt!1603023 call!306013)))

(declare-fun call!306015 () Bool)

(assert (=> b!4396531 call!306015))

(declare-fun lt!1603031 () Unit!78288)

(assert (=> b!4396531 (= lt!1603031 lt!1603023)))

(declare-fun call!306014 () Bool)

(assert (=> b!4396531 call!306014))

(declare-fun lt!1603019 () Unit!78288)

(declare-fun Unit!78354 () Unit!78288)

(assert (=> b!4396531 (= lt!1603019 Unit!78354)))

(declare-fun c!748437 () Bool)

(declare-fun bm!306008 () Bool)

(assert (=> bm!306008 (= call!306014 (forall!9334 (toList!3210 (extractMap!672 (t!356300 (toList!3209 (tail!7090 lm!1707))))) (ite c!748437 lambda!148032 lambda!148034)))))

(assert (=> b!4396532 (= e!2737445 lt!1603032)))

(declare-fun lt!1603024 () ListMap!2453)

(assert (=> b!4396532 (= lt!1603024 (+!847 (extractMap!672 (t!356300 (toList!3209 (tail!7090 lm!1707)))) (h!54856 (_2!27706 (h!54857 (toList!3209 (tail!7090 lm!1707)))))))))

(assert (=> b!4396532 (= lt!1603032 (addToMapMapFromBucket!286 (t!356299 (_2!27706 (h!54857 (toList!3209 (tail!7090 lm!1707))))) (+!847 (extractMap!672 (t!356300 (toList!3209 (tail!7090 lm!1707)))) (h!54856 (_2!27706 (h!54857 (toList!3209 (tail!7090 lm!1707))))))))))

(declare-fun lt!1603029 () Unit!78288)

(assert (=> b!4396532 (= lt!1603029 call!306013)))

(assert (=> b!4396532 (forall!9334 (toList!3210 (extractMap!672 (t!356300 (toList!3209 (tail!7090 lm!1707))))) lambda!148033)))

(declare-fun lt!1603021 () Unit!78288)

(assert (=> b!4396532 (= lt!1603021 lt!1603029)))

(assert (=> b!4396532 (forall!9334 (toList!3210 lt!1603024) lambda!148034)))

(declare-fun lt!1603012 () Unit!78288)

(declare-fun Unit!78355 () Unit!78288)

(assert (=> b!4396532 (= lt!1603012 Unit!78355)))

(assert (=> b!4396532 (forall!9334 (t!356299 (_2!27706 (h!54857 (toList!3209 (tail!7090 lm!1707))))) lambda!148034)))

(declare-fun lt!1603030 () Unit!78288)

(declare-fun Unit!78356 () Unit!78288)

(assert (=> b!4396532 (= lt!1603030 Unit!78356)))

(declare-fun lt!1603014 () Unit!78288)

(declare-fun Unit!78357 () Unit!78288)

(assert (=> b!4396532 (= lt!1603014 Unit!78357)))

(declare-fun lt!1603016 () Unit!78288)

(assert (=> b!4396532 (= lt!1603016 (forallContained!1970 (toList!3210 lt!1603024) lambda!148034 (h!54856 (_2!27706 (h!54857 (toList!3209 (tail!7090 lm!1707)))))))))

(assert (=> b!4396532 (contains!11616 lt!1603024 (_1!27705 (h!54856 (_2!27706 (h!54857 (toList!3209 (tail!7090 lm!1707)))))))))

(declare-fun lt!1603027 () Unit!78288)

(declare-fun Unit!78359 () Unit!78288)

(assert (=> b!4396532 (= lt!1603027 Unit!78359)))

(assert (=> b!4396532 (contains!11616 lt!1603032 (_1!27705 (h!54856 (_2!27706 (h!54857 (toList!3209 (tail!7090 lm!1707)))))))))

(declare-fun lt!1603015 () Unit!78288)

(declare-fun Unit!78360 () Unit!78288)

(assert (=> b!4396532 (= lt!1603015 Unit!78360)))

(assert (=> b!4396532 (forall!9334 (_2!27706 (h!54857 (toList!3209 (tail!7090 lm!1707)))) lambda!148034)))

(declare-fun lt!1603025 () Unit!78288)

(declare-fun Unit!78361 () Unit!78288)

(assert (=> b!4396532 (= lt!1603025 Unit!78361)))

(assert (=> b!4396532 (forall!9334 (toList!3210 lt!1603024) lambda!148034)))

(declare-fun lt!1603020 () Unit!78288)

(declare-fun Unit!78363 () Unit!78288)

(assert (=> b!4396532 (= lt!1603020 Unit!78363)))

(declare-fun lt!1603026 () Unit!78288)

(declare-fun Unit!78365 () Unit!78288)

(assert (=> b!4396532 (= lt!1603026 Unit!78365)))

(declare-fun lt!1603017 () Unit!78288)

(assert (=> b!4396532 (= lt!1603017 (addForallContainsKeyThenBeforeAdding!120 (extractMap!672 (t!356300 (toList!3209 (tail!7090 lm!1707)))) lt!1603032 (_1!27705 (h!54856 (_2!27706 (h!54857 (toList!3209 (tail!7090 lm!1707)))))) (_2!27705 (h!54856 (_2!27706 (h!54857 (toList!3209 (tail!7090 lm!1707))))))))))

(assert (=> b!4396532 call!306014))

(declare-fun lt!1603018 () Unit!78288)

(assert (=> b!4396532 (= lt!1603018 lt!1603017)))

(assert (=> b!4396532 (forall!9334 (toList!3210 (extractMap!672 (t!356300 (toList!3209 (tail!7090 lm!1707))))) lambda!148034)))

(declare-fun lt!1603028 () Unit!78288)

(declare-fun Unit!78367 () Unit!78288)

(assert (=> b!4396532 (= lt!1603028 Unit!78367)))

(declare-fun res!1812791 () Bool)

(assert (=> b!4396532 (= res!1812791 call!306015)))

(declare-fun e!2737446 () Bool)

(assert (=> b!4396532 (=> (not res!1812791) (not e!2737446))))

(assert (=> b!4396532 e!2737446))

(declare-fun lt!1603022 () Unit!78288)

(declare-fun Unit!78368 () Unit!78288)

(assert (=> b!4396532 (= lt!1603022 Unit!78368)))

(declare-fun bm!306009 () Bool)

(assert (=> bm!306009 (= call!306015 (forall!9334 (ite c!748437 (toList!3210 (extractMap!672 (t!356300 (toList!3209 (tail!7090 lm!1707))))) (_2!27706 (h!54857 (toList!3209 (tail!7090 lm!1707))))) (ite c!748437 lambda!148032 lambda!148034)))))

(declare-fun b!4396533 () Bool)

(assert (=> b!4396533 (= e!2737446 (forall!9334 (toList!3210 (extractMap!672 (t!356300 (toList!3209 (tail!7090 lm!1707))))) lambda!148034))))

(assert (=> d!1324766 e!2737444))

(declare-fun res!1812792 () Bool)

(assert (=> d!1324766 (=> (not res!1812792) (not e!2737444))))

(assert (=> d!1324766 (= res!1812792 (forall!9334 (_2!27706 (h!54857 (toList!3209 (tail!7090 lm!1707)))) lambda!148035))))

(assert (=> d!1324766 (= lt!1603013 e!2737445)))

(assert (=> d!1324766 (= c!748437 ((_ is Nil!49241) (_2!27706 (h!54857 (toList!3209 (tail!7090 lm!1707))))))))

(assert (=> d!1324766 (noDuplicateKeys!613 (_2!27706 (h!54857 (toList!3209 (tail!7090 lm!1707)))))))

(assert (=> d!1324766 (= (addToMapMapFromBucket!286 (_2!27706 (h!54857 (toList!3209 (tail!7090 lm!1707)))) (extractMap!672 (t!356300 (toList!3209 (tail!7090 lm!1707))))) lt!1603013)))

(declare-fun b!4396534 () Bool)

(declare-fun res!1812790 () Bool)

(assert (=> b!4396534 (=> (not res!1812790) (not e!2737444))))

(assert (=> b!4396534 (= res!1812790 (forall!9334 (toList!3210 (extractMap!672 (t!356300 (toList!3209 (tail!7090 lm!1707))))) lambda!148035))))

(declare-fun bm!306010 () Bool)

(assert (=> bm!306010 (= call!306013 (lemmaContainsAllItsOwnKeys!120 (extractMap!672 (t!356300 (toList!3209 (tail!7090 lm!1707))))))))

(assert (= (and d!1324766 c!748437) b!4396531))

(assert (= (and d!1324766 (not c!748437)) b!4396532))

(assert (= (and b!4396532 res!1812791) b!4396533))

(assert (= (or b!4396531 b!4396532) bm!306010))

(assert (= (or b!4396531 b!4396532) bm!306008))

(assert (= (or b!4396531 b!4396532) bm!306009))

(assert (= (and d!1324766 res!1812792) b!4396534))

(assert (= (and b!4396534 res!1812790) b!4396530))

(declare-fun m!5057209 () Bool)

(assert (=> b!4396532 m!5057209))

(declare-fun m!5057211 () Bool)

(assert (=> b!4396532 m!5057211))

(declare-fun m!5057213 () Bool)

(assert (=> b!4396532 m!5057213))

(declare-fun m!5057215 () Bool)

(assert (=> b!4396532 m!5057215))

(declare-fun m!5057217 () Bool)

(assert (=> b!4396532 m!5057217))

(declare-fun m!5057219 () Bool)

(assert (=> b!4396532 m!5057219))

(declare-fun m!5057221 () Bool)

(assert (=> b!4396532 m!5057221))

(assert (=> b!4396532 m!5057213))

(assert (=> b!4396532 m!5056423))

(assert (=> b!4396532 m!5057209))

(assert (=> b!4396532 m!5056423))

(declare-fun m!5057223 () Bool)

(assert (=> b!4396532 m!5057223))

(declare-fun m!5057225 () Bool)

(assert (=> b!4396532 m!5057225))

(declare-fun m!5057227 () Bool)

(assert (=> b!4396532 m!5057227))

(declare-fun m!5057229 () Bool)

(assert (=> b!4396532 m!5057229))

(declare-fun m!5057231 () Bool)

(assert (=> d!1324766 m!5057231))

(declare-fun m!5057233 () Bool)

(assert (=> d!1324766 m!5057233))

(assert (=> b!4396533 m!5057215))

(declare-fun m!5057235 () Bool)

(assert (=> b!4396530 m!5057235))

(declare-fun m!5057237 () Bool)

(assert (=> bm!306008 m!5057237))

(declare-fun m!5057239 () Bool)

(assert (=> bm!306009 m!5057239))

(assert (=> bm!306010 m!5056423))

(declare-fun m!5057241 () Bool)

(assert (=> bm!306010 m!5057241))

(declare-fun m!5057243 () Bool)

(assert (=> b!4396534 m!5057243))

(assert (=> b!4396025 d!1324766))

(declare-fun bs!726758 () Bool)

(declare-fun d!1324768 () Bool)

(assert (= bs!726758 (and d!1324768 d!1324446)))

(declare-fun lambda!148036 () Int)

(assert (=> bs!726758 (= lambda!148036 lambda!147896)))

(declare-fun bs!726759 () Bool)

(assert (= bs!726759 (and d!1324768 start!426828)))

(assert (=> bs!726759 (= lambda!148036 lambda!147873)))

(declare-fun bs!726760 () Bool)

(assert (= bs!726760 (and d!1324768 d!1324458)))

(assert (=> bs!726760 (= lambda!148036 lambda!147898)))

(declare-fun bs!726761 () Bool)

(assert (= bs!726761 (and d!1324768 d!1324460)))

(assert (=> bs!726761 (not (= lambda!148036 lambda!147901))))

(declare-fun bs!726762 () Bool)

(assert (= bs!726762 (and d!1324768 d!1324450)))

(assert (=> bs!726762 (= lambda!148036 lambda!147897)))

(declare-fun bs!726763 () Bool)

(assert (= bs!726763 (and d!1324768 d!1324444)))

(assert (=> bs!726763 (= lambda!148036 lambda!147893)))

(declare-fun lt!1603033 () ListMap!2453)

(assert (=> d!1324768 (invariantList!741 (toList!3210 lt!1603033))))

(declare-fun e!2737447 () ListMap!2453)

(assert (=> d!1324768 (= lt!1603033 e!2737447)))

(declare-fun c!748438 () Bool)

(assert (=> d!1324768 (= c!748438 ((_ is Cons!49242) (t!356300 (toList!3209 (tail!7090 lm!1707)))))))

(assert (=> d!1324768 (forall!9332 (t!356300 (toList!3209 (tail!7090 lm!1707))) lambda!148036)))

(assert (=> d!1324768 (= (extractMap!672 (t!356300 (toList!3209 (tail!7090 lm!1707)))) lt!1603033)))

(declare-fun b!4396535 () Bool)

(assert (=> b!4396535 (= e!2737447 (addToMapMapFromBucket!286 (_2!27706 (h!54857 (t!356300 (toList!3209 (tail!7090 lm!1707))))) (extractMap!672 (t!356300 (t!356300 (toList!3209 (tail!7090 lm!1707)))))))))

(declare-fun b!4396536 () Bool)

(assert (=> b!4396536 (= e!2737447 (ListMap!2454 Nil!49241))))

(assert (= (and d!1324768 c!748438) b!4396535))

(assert (= (and d!1324768 (not c!748438)) b!4396536))

(declare-fun m!5057245 () Bool)

(assert (=> d!1324768 m!5057245))

(declare-fun m!5057247 () Bool)

(assert (=> d!1324768 m!5057247))

(declare-fun m!5057249 () Bool)

(assert (=> b!4396535 m!5057249))

(assert (=> b!4396535 m!5057249))

(declare-fun m!5057251 () Bool)

(assert (=> b!4396535 m!5057251))

(assert (=> b!4396025 d!1324768))

(assert (=> d!1324446 d!1324408))

(assert (=> d!1324446 d!1324406))

(declare-fun d!1324770 () Bool)

(assert (=> d!1324770 (not (containsKey!901 (apply!11465 lm!1707 (_1!27706 (h!54857 (toList!3209 lm!1707)))) key!3918))))

(assert (=> d!1324770 true))

(declare-fun _$39!304 () Unit!78288)

(assert (=> d!1324770 (= (choose!27491 lm!1707 key!3918 (_1!27706 (h!54857 (toList!3209 lm!1707))) hashF!1247) _$39!304)))

(declare-fun bs!726764 () Bool)

(assert (= bs!726764 d!1324770))

(assert (=> bs!726764 m!5056099))

(assert (=> bs!726764 m!5056099))

(assert (=> bs!726764 m!5056101))

(assert (=> d!1324446 d!1324770))

(declare-fun d!1324772 () Bool)

(declare-fun res!1812793 () Bool)

(declare-fun e!2737448 () Bool)

(assert (=> d!1324772 (=> res!1812793 e!2737448)))

(assert (=> d!1324772 (= res!1812793 ((_ is Nil!49242) (toList!3209 lm!1707)))))

(assert (=> d!1324772 (= (forall!9332 (toList!3209 lm!1707) lambda!147896) e!2737448)))

(declare-fun b!4396537 () Bool)

(declare-fun e!2737449 () Bool)

(assert (=> b!4396537 (= e!2737448 e!2737449)))

(declare-fun res!1812794 () Bool)

(assert (=> b!4396537 (=> (not res!1812794) (not e!2737449))))

(assert (=> b!4396537 (= res!1812794 (dynLambda!20745 lambda!147896 (h!54857 (toList!3209 lm!1707))))))

(declare-fun b!4396538 () Bool)

(assert (=> b!4396538 (= e!2737449 (forall!9332 (t!356300 (toList!3209 lm!1707)) lambda!147896))))

(assert (= (and d!1324772 (not res!1812793)) b!4396537))

(assert (= (and b!4396537 res!1812794) b!4396538))

(declare-fun b_lambda!139215 () Bool)

(assert (=> (not b_lambda!139215) (not b!4396537)))

(declare-fun m!5057253 () Bool)

(assert (=> b!4396537 m!5057253))

(declare-fun m!5057255 () Bool)

(assert (=> b!4396538 m!5057255))

(assert (=> d!1324446 d!1324772))

(assert (=> d!1324456 d!1324734))

(declare-fun d!1324774 () Bool)

(declare-fun res!1812795 () Bool)

(declare-fun e!2737450 () Bool)

(assert (=> d!1324774 (=> res!1812795 e!2737450)))

(assert (=> d!1324774 (= res!1812795 (not ((_ is Cons!49241) (_2!27706 lt!1602518))))))

(assert (=> d!1324774 (= (noDuplicateKeys!613 (_2!27706 lt!1602518)) e!2737450)))

(declare-fun b!4396539 () Bool)

(declare-fun e!2737451 () Bool)

(assert (=> b!4396539 (= e!2737450 e!2737451)))

(declare-fun res!1812796 () Bool)

(assert (=> b!4396539 (=> (not res!1812796) (not e!2737451))))

(assert (=> b!4396539 (= res!1812796 (not (containsKey!901 (t!356299 (_2!27706 lt!1602518)) (_1!27705 (h!54856 (_2!27706 lt!1602518))))))))

(declare-fun b!4396540 () Bool)

(assert (=> b!4396540 (= e!2737451 (noDuplicateKeys!613 (t!356299 (_2!27706 lt!1602518))))))

(assert (= (and d!1324774 (not res!1812795)) b!4396539))

(assert (= (and b!4396539 res!1812796) b!4396540))

(declare-fun m!5057257 () Bool)

(assert (=> b!4396539 m!5057257))

(declare-fun m!5057259 () Bool)

(assert (=> b!4396540 m!5057259))

(assert (=> bs!726501 d!1324774))

(declare-fun d!1324776 () Bool)

(declare-fun e!2737453 () Bool)

(assert (=> d!1324776 e!2737453))

(declare-fun res!1812797 () Bool)

(assert (=> d!1324776 (=> res!1812797 e!2737453)))

(declare-fun lt!1603035 () Bool)

(assert (=> d!1324776 (= res!1812797 (not lt!1603035))))

(declare-fun lt!1603037 () Bool)

(assert (=> d!1324776 (= lt!1603035 lt!1603037)))

(declare-fun lt!1603034 () Unit!78288)

(declare-fun e!2737452 () Unit!78288)

(assert (=> d!1324776 (= lt!1603034 e!2737452)))

(declare-fun c!748439 () Bool)

(assert (=> d!1324776 (= c!748439 lt!1603037)))

(assert (=> d!1324776 (= lt!1603037 (containsKey!905 (toList!3209 lt!1602580) (_1!27706 (tuple2!48825 hash!377 newBucket!200))))))

(assert (=> d!1324776 (= (contains!11617 lt!1602580 (_1!27706 (tuple2!48825 hash!377 newBucket!200))) lt!1603035)))

(declare-fun b!4396541 () Bool)

(declare-fun lt!1603036 () Unit!78288)

(assert (=> b!4396541 (= e!2737452 lt!1603036)))

(assert (=> b!4396541 (= lt!1603036 (lemmaContainsKeyImpliesGetValueByKeyDefined!491 (toList!3209 lt!1602580) (_1!27706 (tuple2!48825 hash!377 newBucket!200))))))

(assert (=> b!4396541 (isDefined!7888 (getValueByKey!580 (toList!3209 lt!1602580) (_1!27706 (tuple2!48825 hash!377 newBucket!200))))))

(declare-fun b!4396542 () Bool)

(declare-fun Unit!78369 () Unit!78288)

(assert (=> b!4396542 (= e!2737452 Unit!78369)))

(declare-fun b!4396543 () Bool)

(assert (=> b!4396543 (= e!2737453 (isDefined!7888 (getValueByKey!580 (toList!3209 lt!1602580) (_1!27706 (tuple2!48825 hash!377 newBucket!200)))))))

(assert (= (and d!1324776 c!748439) b!4396541))

(assert (= (and d!1324776 (not c!748439)) b!4396542))

(assert (= (and d!1324776 (not res!1812797)) b!4396543))

(declare-fun m!5057261 () Bool)

(assert (=> d!1324776 m!5057261))

(declare-fun m!5057263 () Bool)

(assert (=> b!4396541 m!5057263))

(assert (=> b!4396541 m!5056239))

(assert (=> b!4396541 m!5056239))

(declare-fun m!5057265 () Bool)

(assert (=> b!4396541 m!5057265))

(assert (=> b!4396543 m!5056239))

(assert (=> b!4396543 m!5056239))

(assert (=> b!4396543 m!5057265))

(assert (=> d!1324396 d!1324776))

(declare-fun b!4396545 () Bool)

(declare-fun e!2737454 () Option!10594)

(declare-fun e!2737455 () Option!10594)

(assert (=> b!4396545 (= e!2737454 e!2737455)))

(declare-fun c!748441 () Bool)

(assert (=> b!4396545 (= c!748441 (and ((_ is Cons!49242) lt!1602581) (not (= (_1!27706 (h!54857 lt!1602581)) (_1!27706 (tuple2!48825 hash!377 newBucket!200))))))))

(declare-fun b!4396547 () Bool)

(assert (=> b!4396547 (= e!2737455 None!10593)))

(declare-fun b!4396546 () Bool)

(assert (=> b!4396546 (= e!2737455 (getValueByKey!580 (t!356300 lt!1602581) (_1!27706 (tuple2!48825 hash!377 newBucket!200))))))

(declare-fun b!4396544 () Bool)

(assert (=> b!4396544 (= e!2737454 (Some!10593 (_2!27706 (h!54857 lt!1602581))))))

(declare-fun c!748440 () Bool)

(declare-fun d!1324778 () Bool)

(assert (=> d!1324778 (= c!748440 (and ((_ is Cons!49242) lt!1602581) (= (_1!27706 (h!54857 lt!1602581)) (_1!27706 (tuple2!48825 hash!377 newBucket!200)))))))

(assert (=> d!1324778 (= (getValueByKey!580 lt!1602581 (_1!27706 (tuple2!48825 hash!377 newBucket!200))) e!2737454)))

(assert (= (and d!1324778 c!748440) b!4396544))

(assert (= (and d!1324778 (not c!748440)) b!4396545))

(assert (= (and b!4396545 c!748441) b!4396546))

(assert (= (and b!4396545 (not c!748441)) b!4396547))

(declare-fun m!5057267 () Bool)

(assert (=> b!4396546 m!5057267))

(assert (=> d!1324396 d!1324778))

(declare-fun d!1324780 () Bool)

(assert (=> d!1324780 (= (getValueByKey!580 lt!1602581 (_1!27706 (tuple2!48825 hash!377 newBucket!200))) (Some!10593 (_2!27706 (tuple2!48825 hash!377 newBucket!200))))))

(declare-fun lt!1603040 () Unit!78288)

(declare-fun choose!27503 (List!49366 (_ BitVec 64) List!49365) Unit!78288)

(assert (=> d!1324780 (= lt!1603040 (choose!27503 lt!1602581 (_1!27706 (tuple2!48825 hash!377 newBucket!200)) (_2!27706 (tuple2!48825 hash!377 newBucket!200))))))

(declare-fun e!2737458 () Bool)

(assert (=> d!1324780 e!2737458))

(declare-fun res!1812802 () Bool)

(assert (=> d!1324780 (=> (not res!1812802) (not e!2737458))))

(assert (=> d!1324780 (= res!1812802 (isStrictlySorted!167 lt!1602581))))

(assert (=> d!1324780 (= (lemmaContainsTupThenGetReturnValue!336 lt!1602581 (_1!27706 (tuple2!48825 hash!377 newBucket!200)) (_2!27706 (tuple2!48825 hash!377 newBucket!200))) lt!1603040)))

(declare-fun b!4396552 () Bool)

(declare-fun res!1812803 () Bool)

(assert (=> b!4396552 (=> (not res!1812803) (not e!2737458))))

(assert (=> b!4396552 (= res!1812803 (containsKey!905 lt!1602581 (_1!27706 (tuple2!48825 hash!377 newBucket!200))))))

(declare-fun b!4396553 () Bool)

(assert (=> b!4396553 (= e!2737458 (contains!11618 lt!1602581 (tuple2!48825 (_1!27706 (tuple2!48825 hash!377 newBucket!200)) (_2!27706 (tuple2!48825 hash!377 newBucket!200)))))))

(assert (= (and d!1324780 res!1812802) b!4396552))

(assert (= (and b!4396552 res!1812803) b!4396553))

(assert (=> d!1324780 m!5056233))

(declare-fun m!5057269 () Bool)

(assert (=> d!1324780 m!5057269))

(declare-fun m!5057271 () Bool)

(assert (=> d!1324780 m!5057271))

(declare-fun m!5057273 () Bool)

(assert (=> b!4396552 m!5057273))

(declare-fun m!5057275 () Bool)

(assert (=> b!4396553 m!5057275))

(assert (=> d!1324396 d!1324780))

(declare-fun d!1324782 () Bool)

(declare-fun e!2737473 () Bool)

(assert (=> d!1324782 e!2737473))

(declare-fun res!1812809 () Bool)

(assert (=> d!1324782 (=> (not res!1812809) (not e!2737473))))

(declare-fun lt!1603043 () List!49366)

(assert (=> d!1324782 (= res!1812809 (isStrictlySorted!167 lt!1603043))))

(declare-fun e!2737472 () List!49366)

(assert (=> d!1324782 (= lt!1603043 e!2737472)))

(declare-fun c!748453 () Bool)

(assert (=> d!1324782 (= c!748453 (and ((_ is Cons!49242) (toList!3209 lm!1707)) (bvslt (_1!27706 (h!54857 (toList!3209 lm!1707))) (_1!27706 (tuple2!48825 hash!377 newBucket!200)))))))

(assert (=> d!1324782 (isStrictlySorted!167 (toList!3209 lm!1707))))

(assert (=> d!1324782 (= (insertStrictlySorted!195 (toList!3209 lm!1707) (_1!27706 (tuple2!48825 hash!377 newBucket!200)) (_2!27706 (tuple2!48825 hash!377 newBucket!200))) lt!1603043)))

(declare-fun b!4396574 () Bool)

(declare-fun e!2737469 () List!49366)

(assert (=> b!4396574 (= e!2737472 e!2737469)))

(declare-fun c!748450 () Bool)

(assert (=> b!4396574 (= c!748450 (and ((_ is Cons!49242) (toList!3209 lm!1707)) (= (_1!27706 (h!54857 (toList!3209 lm!1707))) (_1!27706 (tuple2!48825 hash!377 newBucket!200)))))))

(declare-fun e!2737470 () List!49366)

(declare-fun b!4396575 () Bool)

(declare-fun c!748452 () Bool)

(assert (=> b!4396575 (= e!2737470 (ite c!748450 (t!356300 (toList!3209 lm!1707)) (ite c!748452 (Cons!49242 (h!54857 (toList!3209 lm!1707)) (t!356300 (toList!3209 lm!1707))) Nil!49242)))))

(declare-fun b!4396576 () Bool)

(assert (=> b!4396576 (= e!2737473 (contains!11618 lt!1603043 (tuple2!48825 (_1!27706 (tuple2!48825 hash!377 newBucket!200)) (_2!27706 (tuple2!48825 hash!377 newBucket!200)))))))

(declare-fun b!4396577 () Bool)

(assert (=> b!4396577 (= c!748452 (and ((_ is Cons!49242) (toList!3209 lm!1707)) (bvsgt (_1!27706 (h!54857 (toList!3209 lm!1707))) (_1!27706 (tuple2!48825 hash!377 newBucket!200)))))))

(declare-fun e!2737471 () List!49366)

(assert (=> b!4396577 (= e!2737469 e!2737471)))

(declare-fun bm!306017 () Bool)

(declare-fun call!306023 () List!49366)

(declare-fun call!306022 () List!49366)

(assert (=> bm!306017 (= call!306023 call!306022)))

(declare-fun b!4396578 () Bool)

(declare-fun call!306024 () List!49366)

(assert (=> b!4396578 (= e!2737472 call!306024)))

(declare-fun bm!306018 () Bool)

(assert (=> bm!306018 (= call!306022 call!306024)))

(declare-fun b!4396579 () Bool)

(assert (=> b!4396579 (= e!2737471 call!306023)))

(declare-fun bm!306019 () Bool)

(declare-fun $colon$colon!743 (List!49366 tuple2!48824) List!49366)

(assert (=> bm!306019 (= call!306024 ($colon$colon!743 e!2737470 (ite c!748453 (h!54857 (toList!3209 lm!1707)) (tuple2!48825 (_1!27706 (tuple2!48825 hash!377 newBucket!200)) (_2!27706 (tuple2!48825 hash!377 newBucket!200))))))))

(declare-fun c!748451 () Bool)

(assert (=> bm!306019 (= c!748451 c!748453)))

(declare-fun b!4396580 () Bool)

(assert (=> b!4396580 (= e!2737469 call!306022)))

(declare-fun b!4396581 () Bool)

(declare-fun res!1812808 () Bool)

(assert (=> b!4396581 (=> (not res!1812808) (not e!2737473))))

(assert (=> b!4396581 (= res!1812808 (containsKey!905 lt!1603043 (_1!27706 (tuple2!48825 hash!377 newBucket!200))))))

(declare-fun b!4396582 () Bool)

(assert (=> b!4396582 (= e!2737470 (insertStrictlySorted!195 (t!356300 (toList!3209 lm!1707)) (_1!27706 (tuple2!48825 hash!377 newBucket!200)) (_2!27706 (tuple2!48825 hash!377 newBucket!200))))))

(declare-fun b!4396583 () Bool)

(assert (=> b!4396583 (= e!2737471 call!306023)))

(assert (= (and d!1324782 c!748453) b!4396578))

(assert (= (and d!1324782 (not c!748453)) b!4396574))

(assert (= (and b!4396574 c!748450) b!4396580))

(assert (= (and b!4396574 (not c!748450)) b!4396577))

(assert (= (and b!4396577 c!748452) b!4396583))

(assert (= (and b!4396577 (not c!748452)) b!4396579))

(assert (= (or b!4396583 b!4396579) bm!306017))

(assert (= (or b!4396580 bm!306017) bm!306018))

(assert (= (or b!4396578 bm!306018) bm!306019))

(assert (= (and bm!306019 c!748451) b!4396582))

(assert (= (and bm!306019 (not c!748451)) b!4396575))

(assert (= (and d!1324782 res!1812809) b!4396581))

(assert (= (and b!4396581 res!1812808) b!4396576))

(declare-fun m!5057277 () Bool)

(assert (=> d!1324782 m!5057277))

(assert (=> d!1324782 m!5056127))

(declare-fun m!5057279 () Bool)

(assert (=> b!4396581 m!5057279))

(declare-fun m!5057281 () Bool)

(assert (=> b!4396576 m!5057281))

(declare-fun m!5057283 () Bool)

(assert (=> bm!306019 m!5057283))

(declare-fun m!5057285 () Bool)

(assert (=> b!4396582 m!5057285))

(assert (=> d!1324396 d!1324782))

(assert (=> b!4396012 d!1324708))

(declare-fun d!1324784 () Bool)

(assert (=> d!1324784 (= (invariantList!741 (toList!3210 lt!1602672)) (noDuplicatedKeys!146 (toList!3210 lt!1602672)))))

(declare-fun bs!726765 () Bool)

(assert (= bs!726765 d!1324784))

(declare-fun m!5057287 () Bool)

(assert (=> bs!726765 m!5057287))

(assert (=> d!1324444 d!1324784))

(declare-fun d!1324786 () Bool)

(declare-fun res!1812810 () Bool)

(declare-fun e!2737474 () Bool)

(assert (=> d!1324786 (=> res!1812810 e!2737474)))

(assert (=> d!1324786 (= res!1812810 ((_ is Nil!49242) (t!356300 (toList!3209 lm!1707))))))

(assert (=> d!1324786 (= (forall!9332 (t!356300 (toList!3209 lm!1707)) lambda!147893) e!2737474)))

(declare-fun b!4396584 () Bool)

(declare-fun e!2737475 () Bool)

(assert (=> b!4396584 (= e!2737474 e!2737475)))

(declare-fun res!1812811 () Bool)

(assert (=> b!4396584 (=> (not res!1812811) (not e!2737475))))

(assert (=> b!4396584 (= res!1812811 (dynLambda!20745 lambda!147893 (h!54857 (t!356300 (toList!3209 lm!1707)))))))

(declare-fun b!4396585 () Bool)

(assert (=> b!4396585 (= e!2737475 (forall!9332 (t!356300 (t!356300 (toList!3209 lm!1707))) lambda!147893))))

(assert (= (and d!1324786 (not res!1812810)) b!4396584))

(assert (= (and b!4396584 res!1812811) b!4396585))

(declare-fun b_lambda!139217 () Bool)

(assert (=> (not b_lambda!139217) (not b!4396584)))

(declare-fun m!5057289 () Bool)

(assert (=> b!4396584 m!5057289))

(declare-fun m!5057291 () Bool)

(assert (=> b!4396585 m!5057291))

(assert (=> d!1324444 d!1324786))

(declare-fun d!1324788 () Bool)

(declare-fun res!1812812 () Bool)

(declare-fun e!2737476 () Bool)

(assert (=> d!1324788 (=> res!1812812 e!2737476)))

(assert (=> d!1324788 (= res!1812812 (not ((_ is Cons!49241) (t!356299 newBucket!200))))))

(assert (=> d!1324788 (= (noDuplicateKeys!613 (t!356299 newBucket!200)) e!2737476)))

(declare-fun b!4396586 () Bool)

(declare-fun e!2737477 () Bool)

(assert (=> b!4396586 (= e!2737476 e!2737477)))

(declare-fun res!1812813 () Bool)

(assert (=> b!4396586 (=> (not res!1812813) (not e!2737477))))

(assert (=> b!4396586 (= res!1812813 (not (containsKey!901 (t!356299 (t!356299 newBucket!200)) (_1!27705 (h!54856 (t!356299 newBucket!200))))))))

(declare-fun b!4396587 () Bool)

(assert (=> b!4396587 (= e!2737477 (noDuplicateKeys!613 (t!356299 (t!356299 newBucket!200))))))

(assert (= (and d!1324788 (not res!1812812)) b!4396586))

(assert (= (and b!4396586 res!1812813) b!4396587))

(declare-fun m!5057293 () Bool)

(assert (=> b!4396586 m!5057293))

(declare-fun m!5057295 () Bool)

(assert (=> b!4396587 m!5057295))

(assert (=> b!4395802 d!1324788))

(declare-fun d!1324790 () Bool)

(assert (=> d!1324790 (= (get!16026 (getValueByKey!580 (toList!3209 lm!1707) (_1!27706 (h!54857 (toList!3209 lm!1707))))) (v!43659 (getValueByKey!580 (toList!3209 lm!1707) (_1!27706 (h!54857 (toList!3209 lm!1707))))))))

(assert (=> d!1324406 d!1324790))

(declare-fun b!4396589 () Bool)

(declare-fun e!2737478 () Option!10594)

(declare-fun e!2737479 () Option!10594)

(assert (=> b!4396589 (= e!2737478 e!2737479)))

(declare-fun c!748455 () Bool)

(assert (=> b!4396589 (= c!748455 (and ((_ is Cons!49242) (toList!3209 lm!1707)) (not (= (_1!27706 (h!54857 (toList!3209 lm!1707))) (_1!27706 (h!54857 (toList!3209 lm!1707)))))))))

(declare-fun b!4396591 () Bool)

(assert (=> b!4396591 (= e!2737479 None!10593)))

(declare-fun b!4396590 () Bool)

(assert (=> b!4396590 (= e!2737479 (getValueByKey!580 (t!356300 (toList!3209 lm!1707)) (_1!27706 (h!54857 (toList!3209 lm!1707)))))))

(declare-fun b!4396588 () Bool)

(assert (=> b!4396588 (= e!2737478 (Some!10593 (_2!27706 (h!54857 (toList!3209 lm!1707)))))))

(declare-fun d!1324792 () Bool)

(declare-fun c!748454 () Bool)

(assert (=> d!1324792 (= c!748454 (and ((_ is Cons!49242) (toList!3209 lm!1707)) (= (_1!27706 (h!54857 (toList!3209 lm!1707))) (_1!27706 (h!54857 (toList!3209 lm!1707))))))))

(assert (=> d!1324792 (= (getValueByKey!580 (toList!3209 lm!1707) (_1!27706 (h!54857 (toList!3209 lm!1707)))) e!2737478)))

(assert (= (and d!1324792 c!748454) b!4396588))

(assert (= (and d!1324792 (not c!748454)) b!4396589))

(assert (= (and b!4396589 c!748455) b!4396590))

(assert (= (and b!4396589 (not c!748455)) b!4396591))

(declare-fun m!5057297 () Bool)

(assert (=> b!4396590 m!5057297))

(assert (=> d!1324406 d!1324792))

(declare-fun d!1324794 () Bool)

(declare-fun choose!27504 (Hashable!5005 K!10600) (_ BitVec 64))

(assert (=> d!1324794 (= (hash!1829 hashF!1247 key!3918) (choose!27504 hashF!1247 key!3918))))

(declare-fun bs!726766 () Bool)

(assert (= bs!726766 d!1324794))

(declare-fun m!5057299 () Bool)

(assert (=> bs!726766 m!5057299))

(assert (=> d!1324346 d!1324794))

(declare-fun lt!1603044 () Bool)

(declare-fun d!1324796 () Bool)

(assert (=> d!1324796 (= lt!1603044 (select (content!7851 (toList!3209 lm!1707)) (tuple2!48825 hash!377 lt!1602520)))))

(declare-fun e!2737480 () Bool)

(assert (=> d!1324796 (= lt!1603044 e!2737480)))

(declare-fun res!1812815 () Bool)

(assert (=> d!1324796 (=> (not res!1812815) (not e!2737480))))

(assert (=> d!1324796 (= res!1812815 ((_ is Cons!49242) (toList!3209 lm!1707)))))

(assert (=> d!1324796 (= (contains!11618 (toList!3209 lm!1707) (tuple2!48825 hash!377 lt!1602520)) lt!1603044)))

(declare-fun b!4396592 () Bool)

(declare-fun e!2737481 () Bool)

(assert (=> b!4396592 (= e!2737480 e!2737481)))

(declare-fun res!1812814 () Bool)

(assert (=> b!4396592 (=> res!1812814 e!2737481)))

(assert (=> b!4396592 (= res!1812814 (= (h!54857 (toList!3209 lm!1707)) (tuple2!48825 hash!377 lt!1602520)))))

(declare-fun b!4396593 () Bool)

(assert (=> b!4396593 (= e!2737481 (contains!11618 (t!356300 (toList!3209 lm!1707)) (tuple2!48825 hash!377 lt!1602520)))))

(assert (= (and d!1324796 res!1812815) b!4396592))

(assert (= (and b!4396592 (not res!1812814)) b!4396593))

(assert (=> d!1324796 m!5056153))

(declare-fun m!5057301 () Bool)

(assert (=> d!1324796 m!5057301))

(declare-fun m!5057303 () Bool)

(assert (=> b!4396593 m!5057303))

(assert (=> d!1324368 d!1324796))

(declare-fun d!1324798 () Bool)

(assert (=> d!1324798 (contains!11618 (toList!3209 lm!1707) (tuple2!48825 hash!377 lt!1602520))))

(assert (=> d!1324798 true))

(declare-fun _$14!872 () Unit!78288)

(assert (=> d!1324798 (= (choose!27487 (toList!3209 lm!1707) hash!377 lt!1602520) _$14!872)))

(declare-fun bs!726767 () Bool)

(assert (= bs!726767 d!1324798))

(assert (=> bs!726767 m!5056171))

(assert (=> d!1324368 d!1324798))

(assert (=> d!1324368 d!1324652))

(declare-fun d!1324800 () Bool)

(declare-fun res!1812816 () Bool)

(declare-fun e!2737482 () Bool)

(assert (=> d!1324800 (=> res!1812816 e!2737482)))

(assert (=> d!1324800 (= res!1812816 (and ((_ is Cons!49241) (t!356299 (apply!11465 lm!1707 (_1!27706 (h!54857 (toList!3209 lm!1707)))))) (= (_1!27705 (h!54856 (t!356299 (apply!11465 lm!1707 (_1!27706 (h!54857 (toList!3209 lm!1707))))))) key!3918)))))

(assert (=> d!1324800 (= (containsKey!901 (t!356299 (apply!11465 lm!1707 (_1!27706 (h!54857 (toList!3209 lm!1707))))) key!3918) e!2737482)))

(declare-fun b!4396594 () Bool)

(declare-fun e!2737483 () Bool)

(assert (=> b!4396594 (= e!2737482 e!2737483)))

(declare-fun res!1812817 () Bool)

(assert (=> b!4396594 (=> (not res!1812817) (not e!2737483))))

(assert (=> b!4396594 (= res!1812817 ((_ is Cons!49241) (t!356299 (apply!11465 lm!1707 (_1!27706 (h!54857 (toList!3209 lm!1707)))))))))

(declare-fun b!4396595 () Bool)

(assert (=> b!4396595 (= e!2737483 (containsKey!901 (t!356299 (t!356299 (apply!11465 lm!1707 (_1!27706 (h!54857 (toList!3209 lm!1707)))))) key!3918))))

(assert (= (and d!1324800 (not res!1812816)) b!4396594))

(assert (= (and b!4396594 res!1812817) b!4396595))

(declare-fun m!5057305 () Bool)

(assert (=> b!4396595 m!5057305))

(assert (=> b!4395946 d!1324800))

(assert (=> b!4396016 d!1324712))

(assert (=> b!4396016 d!1324714))

(declare-fun d!1324802 () Bool)

(declare-fun res!1812818 () Bool)

(declare-fun e!2737484 () Bool)

(assert (=> d!1324802 (=> res!1812818 e!2737484)))

(assert (=> d!1324802 (= res!1812818 ((_ is Nil!49242) (t!356300 (toList!3209 lm!1707))))))

(assert (=> d!1324802 (= (forall!9332 (t!356300 (toList!3209 lm!1707)) lambda!147873) e!2737484)))

(declare-fun b!4396596 () Bool)

(declare-fun e!2737485 () Bool)

(assert (=> b!4396596 (= e!2737484 e!2737485)))

(declare-fun res!1812819 () Bool)

(assert (=> b!4396596 (=> (not res!1812819) (not e!2737485))))

(assert (=> b!4396596 (= res!1812819 (dynLambda!20745 lambda!147873 (h!54857 (t!356300 (toList!3209 lm!1707)))))))

(declare-fun b!4396597 () Bool)

(assert (=> b!4396597 (= e!2737485 (forall!9332 (t!356300 (t!356300 (toList!3209 lm!1707))) lambda!147873))))

(assert (= (and d!1324802 (not res!1812818)) b!4396596))

(assert (= (and b!4396596 res!1812819) b!4396597))

(declare-fun b_lambda!139219 () Bool)

(assert (=> (not b_lambda!139219) (not b!4396596)))

(declare-fun m!5057307 () Bool)

(assert (=> b!4396596 m!5057307))

(declare-fun m!5057309 () Bool)

(assert (=> b!4396597 m!5057309))

(assert (=> b!4395794 d!1324802))

(assert (=> b!4395847 d!1324360))

(declare-fun d!1324804 () Bool)

(declare-fun lt!1603045 () Bool)

(assert (=> d!1324804 (= lt!1603045 (select (content!7853 (keys!16724 (extractMap!672 (toList!3209 lm!1707)))) key!3918))))

(declare-fun e!2737486 () Bool)

(assert (=> d!1324804 (= lt!1603045 e!2737486)))

(declare-fun res!1812820 () Bool)

(assert (=> d!1324804 (=> (not res!1812820) (not e!2737486))))

(assert (=> d!1324804 (= res!1812820 ((_ is Cons!49244) (keys!16724 (extractMap!672 (toList!3209 lm!1707)))))))

(assert (=> d!1324804 (= (contains!11620 (keys!16724 (extractMap!672 (toList!3209 lm!1707))) key!3918) lt!1603045)))

(declare-fun b!4396598 () Bool)

(declare-fun e!2737487 () Bool)

(assert (=> b!4396598 (= e!2737486 e!2737487)))

(declare-fun res!1812821 () Bool)

(assert (=> b!4396598 (=> res!1812821 e!2737487)))

(assert (=> b!4396598 (= res!1812821 (= (h!54861 (keys!16724 (extractMap!672 (toList!3209 lm!1707)))) key!3918))))

(declare-fun b!4396599 () Bool)

(assert (=> b!4396599 (= e!2737487 (contains!11620 (t!356302 (keys!16724 (extractMap!672 (toList!3209 lm!1707)))) key!3918))))

(assert (= (and d!1324804 res!1812820) b!4396598))

(assert (= (and b!4396598 (not res!1812821)) b!4396599))

(assert (=> d!1324804 m!5056435))

(declare-fun m!5057311 () Bool)

(assert (=> d!1324804 m!5057311))

(declare-fun m!5057313 () Bool)

(assert (=> d!1324804 m!5057313))

(declare-fun m!5057315 () Bool)

(assert (=> b!4396599 m!5057315))

(assert (=> b!4396043 d!1324804))

(assert (=> b!4396043 d!1324720))

(declare-fun b!4396601 () Bool)

(declare-fun e!2737488 () Option!10594)

(declare-fun e!2737489 () Option!10594)

(assert (=> b!4396601 (= e!2737488 e!2737489)))

(declare-fun c!748457 () Bool)

(assert (=> b!4396601 (= c!748457 (and ((_ is Cons!49242) (toList!3209 lt!1602580)) (not (= (_1!27706 (h!54857 (toList!3209 lt!1602580))) (_1!27706 (tuple2!48825 hash!377 newBucket!200))))))))

(declare-fun b!4396603 () Bool)

(assert (=> b!4396603 (= e!2737489 None!10593)))

(declare-fun b!4396602 () Bool)

(assert (=> b!4396602 (= e!2737489 (getValueByKey!580 (t!356300 (toList!3209 lt!1602580)) (_1!27706 (tuple2!48825 hash!377 newBucket!200))))))

(declare-fun b!4396600 () Bool)

(assert (=> b!4396600 (= e!2737488 (Some!10593 (_2!27706 (h!54857 (toList!3209 lt!1602580)))))))

(declare-fun c!748456 () Bool)

(declare-fun d!1324806 () Bool)

(assert (=> d!1324806 (= c!748456 (and ((_ is Cons!49242) (toList!3209 lt!1602580)) (= (_1!27706 (h!54857 (toList!3209 lt!1602580))) (_1!27706 (tuple2!48825 hash!377 newBucket!200)))))))

(assert (=> d!1324806 (= (getValueByKey!580 (toList!3209 lt!1602580) (_1!27706 (tuple2!48825 hash!377 newBucket!200))) e!2737488)))

(assert (= (and d!1324806 c!748456) b!4396600))

(assert (= (and d!1324806 (not c!748456)) b!4396601))

(assert (= (and b!4396601 c!748457) b!4396602))

(assert (= (and b!4396601 (not c!748457)) b!4396603))

(declare-fun m!5057317 () Bool)

(assert (=> b!4396602 m!5057317))

(assert (=> b!4395902 d!1324806))

(declare-fun bs!726768 () Bool)

(declare-fun b!4396605 () Bool)

(assert (= bs!726768 (and b!4396605 d!1324390)))

(declare-fun lambda!148037 () Int)

(assert (=> bs!726768 (not (= lambda!148037 lambda!147879))))

(declare-fun bs!726769 () Bool)

(assert (= bs!726769 (and b!4396605 b!4396531)))

(assert (=> bs!726769 (= (= (extractMap!672 (t!356300 (t!356300 (toList!3209 lm!1707)))) (extractMap!672 (t!356300 (toList!3209 (tail!7090 lm!1707))))) (= lambda!148037 lambda!148032))))

(declare-fun bs!726770 () Bool)

(assert (= bs!726770 (and b!4396605 b!4396532)))

(assert (=> bs!726770 (= (= (extractMap!672 (t!356300 (t!356300 (toList!3209 lm!1707)))) lt!1603032) (= lambda!148037 lambda!148034))))

(assert (=> bs!726770 (= (= (extractMap!672 (t!356300 (t!356300 (toList!3209 lm!1707)))) (extractMap!672 (t!356300 (toList!3209 (tail!7090 lm!1707))))) (= lambda!148037 lambda!148033))))

(declare-fun bs!726771 () Bool)

(assert (= bs!726771 (and b!4396605 d!1324766)))

(assert (=> bs!726771 (= (= (extractMap!672 (t!356300 (t!356300 (toList!3209 lm!1707)))) lt!1603013) (= lambda!148037 lambda!148035))))

(declare-fun bs!726772 () Bool)

(assert (= bs!726772 (and b!4396605 b!4396372)))

(assert (=> bs!726772 (= (= (extractMap!672 (t!356300 (t!356300 (toList!3209 lm!1707)))) (extractMap!672 (t!356300 (toList!3209 lm!1707)))) (= lambda!148037 lambda!148008))))

(declare-fun bs!726773 () Bool)

(assert (= bs!726773 (and b!4396605 b!4396373)))

(assert (=> bs!726773 (= (= (extractMap!672 (t!356300 (t!356300 (toList!3209 lm!1707)))) lt!1602962) (= lambda!148037 lambda!148010))))

(declare-fun bs!726774 () Bool)

(assert (= bs!726774 (and b!4396605 d!1324578)))

(assert (=> bs!726774 (= (= (extractMap!672 (t!356300 (t!356300 (toList!3209 lm!1707)))) lt!1602943) (= lambda!148037 lambda!148011))))

(assert (=> bs!726773 (= (= (extractMap!672 (t!356300 (t!356300 (toList!3209 lm!1707)))) (extractMap!672 (t!356300 (toList!3209 lm!1707)))) (= lambda!148037 lambda!148009))))

(assert (=> b!4396605 true))

(declare-fun bs!726775 () Bool)

(declare-fun b!4396606 () Bool)

(assert (= bs!726775 (and b!4396606 d!1324390)))

(declare-fun lambda!148038 () Int)

(assert (=> bs!726775 (not (= lambda!148038 lambda!147879))))

(declare-fun bs!726776 () Bool)

(assert (= bs!726776 (and b!4396606 b!4396531)))

(assert (=> bs!726776 (= (= (extractMap!672 (t!356300 (t!356300 (toList!3209 lm!1707)))) (extractMap!672 (t!356300 (toList!3209 (tail!7090 lm!1707))))) (= lambda!148038 lambda!148032))))

(declare-fun bs!726777 () Bool)

(assert (= bs!726777 (and b!4396606 b!4396532)))

(assert (=> bs!726777 (= (= (extractMap!672 (t!356300 (t!356300 (toList!3209 lm!1707)))) lt!1603032) (= lambda!148038 lambda!148034))))

(assert (=> bs!726777 (= (= (extractMap!672 (t!356300 (t!356300 (toList!3209 lm!1707)))) (extractMap!672 (t!356300 (toList!3209 (tail!7090 lm!1707))))) (= lambda!148038 lambda!148033))))

(declare-fun bs!726778 () Bool)

(assert (= bs!726778 (and b!4396606 d!1324766)))

(assert (=> bs!726778 (= (= (extractMap!672 (t!356300 (t!356300 (toList!3209 lm!1707)))) lt!1603013) (= lambda!148038 lambda!148035))))

(declare-fun bs!726779 () Bool)

(assert (= bs!726779 (and b!4396606 b!4396372)))

(assert (=> bs!726779 (= (= (extractMap!672 (t!356300 (t!356300 (toList!3209 lm!1707)))) (extractMap!672 (t!356300 (toList!3209 lm!1707)))) (= lambda!148038 lambda!148008))))

(declare-fun bs!726780 () Bool)

(assert (= bs!726780 (and b!4396606 b!4396605)))

(assert (=> bs!726780 (= lambda!148038 lambda!148037)))

(declare-fun bs!726781 () Bool)

(assert (= bs!726781 (and b!4396606 b!4396373)))

(assert (=> bs!726781 (= (= (extractMap!672 (t!356300 (t!356300 (toList!3209 lm!1707)))) lt!1602962) (= lambda!148038 lambda!148010))))

(declare-fun bs!726782 () Bool)

(assert (= bs!726782 (and b!4396606 d!1324578)))

(assert (=> bs!726782 (= (= (extractMap!672 (t!356300 (t!356300 (toList!3209 lm!1707)))) lt!1602943) (= lambda!148038 lambda!148011))))

(assert (=> bs!726781 (= (= (extractMap!672 (t!356300 (t!356300 (toList!3209 lm!1707)))) (extractMap!672 (t!356300 (toList!3209 lm!1707)))) (= lambda!148038 lambda!148009))))

(assert (=> b!4396606 true))

(declare-fun lambda!148039 () Int)

(assert (=> bs!726775 (not (= lambda!148039 lambda!147879))))

(declare-fun lt!1603066 () ListMap!2453)

(assert (=> bs!726776 (= (= lt!1603066 (extractMap!672 (t!356300 (toList!3209 (tail!7090 lm!1707))))) (= lambda!148039 lambda!148032))))

(assert (=> bs!726777 (= (= lt!1603066 lt!1603032) (= lambda!148039 lambda!148034))))

(assert (=> b!4396606 (= (= lt!1603066 (extractMap!672 (t!356300 (t!356300 (toList!3209 lm!1707))))) (= lambda!148039 lambda!148038))))

(assert (=> bs!726777 (= (= lt!1603066 (extractMap!672 (t!356300 (toList!3209 (tail!7090 lm!1707))))) (= lambda!148039 lambda!148033))))

(assert (=> bs!726778 (= (= lt!1603066 lt!1603013) (= lambda!148039 lambda!148035))))

(assert (=> bs!726779 (= (= lt!1603066 (extractMap!672 (t!356300 (toList!3209 lm!1707)))) (= lambda!148039 lambda!148008))))

(assert (=> bs!726780 (= (= lt!1603066 (extractMap!672 (t!356300 (t!356300 (toList!3209 lm!1707))))) (= lambda!148039 lambda!148037))))

(assert (=> bs!726781 (= (= lt!1603066 lt!1602962) (= lambda!148039 lambda!148010))))

(assert (=> bs!726782 (= (= lt!1603066 lt!1602943) (= lambda!148039 lambda!148011))))

(assert (=> bs!726781 (= (= lt!1603066 (extractMap!672 (t!356300 (toList!3209 lm!1707)))) (= lambda!148039 lambda!148009))))

(assert (=> b!4396606 true))

(declare-fun bs!726783 () Bool)

(declare-fun d!1324808 () Bool)

(assert (= bs!726783 (and d!1324808 d!1324390)))

(declare-fun lambda!148040 () Int)

(assert (=> bs!726783 (not (= lambda!148040 lambda!147879))))

(declare-fun bs!726784 () Bool)

(assert (= bs!726784 (and d!1324808 b!4396531)))

(declare-fun lt!1603047 () ListMap!2453)

(assert (=> bs!726784 (= (= lt!1603047 (extractMap!672 (t!356300 (toList!3209 (tail!7090 lm!1707))))) (= lambda!148040 lambda!148032))))

(declare-fun bs!726785 () Bool)

(assert (= bs!726785 (and d!1324808 b!4396532)))

(assert (=> bs!726785 (= (= lt!1603047 lt!1603032) (= lambda!148040 lambda!148034))))

(declare-fun bs!726786 () Bool)

(assert (= bs!726786 (and d!1324808 b!4396606)))

(assert (=> bs!726786 (= (= lt!1603047 (extractMap!672 (t!356300 (t!356300 (toList!3209 lm!1707))))) (= lambda!148040 lambda!148038))))

(assert (=> bs!726785 (= (= lt!1603047 (extractMap!672 (t!356300 (toList!3209 (tail!7090 lm!1707))))) (= lambda!148040 lambda!148033))))

(declare-fun bs!726787 () Bool)

(assert (= bs!726787 (and d!1324808 d!1324766)))

(assert (=> bs!726787 (= (= lt!1603047 lt!1603013) (= lambda!148040 lambda!148035))))

(assert (=> bs!726786 (= (= lt!1603047 lt!1603066) (= lambda!148040 lambda!148039))))

(declare-fun bs!726788 () Bool)

(assert (= bs!726788 (and d!1324808 b!4396372)))

(assert (=> bs!726788 (= (= lt!1603047 (extractMap!672 (t!356300 (toList!3209 lm!1707)))) (= lambda!148040 lambda!148008))))

(declare-fun bs!726789 () Bool)

(assert (= bs!726789 (and d!1324808 b!4396605)))

(assert (=> bs!726789 (= (= lt!1603047 (extractMap!672 (t!356300 (t!356300 (toList!3209 lm!1707))))) (= lambda!148040 lambda!148037))))

(declare-fun bs!726790 () Bool)

(assert (= bs!726790 (and d!1324808 b!4396373)))

(assert (=> bs!726790 (= (= lt!1603047 lt!1602962) (= lambda!148040 lambda!148010))))

(declare-fun bs!726791 () Bool)

(assert (= bs!726791 (and d!1324808 d!1324578)))

(assert (=> bs!726791 (= (= lt!1603047 lt!1602943) (= lambda!148040 lambda!148011))))

(assert (=> bs!726790 (= (= lt!1603047 (extractMap!672 (t!356300 (toList!3209 lm!1707)))) (= lambda!148040 lambda!148009))))

(assert (=> d!1324808 true))

(declare-fun b!4396604 () Bool)

(declare-fun e!2737490 () Bool)

(assert (=> b!4396604 (= e!2737490 (invariantList!741 (toList!3210 lt!1603047)))))

(declare-fun e!2737491 () ListMap!2453)

(assert (=> b!4396605 (= e!2737491 (extractMap!672 (t!356300 (t!356300 (toList!3209 lm!1707)))))))

(declare-fun lt!1603057 () Unit!78288)

(declare-fun call!306025 () Unit!78288)

(assert (=> b!4396605 (= lt!1603057 call!306025)))

(declare-fun call!306027 () Bool)

(assert (=> b!4396605 call!306027))

(declare-fun lt!1603065 () Unit!78288)

(assert (=> b!4396605 (= lt!1603065 lt!1603057)))

(declare-fun call!306026 () Bool)

(assert (=> b!4396605 call!306026))

(declare-fun lt!1603053 () Unit!78288)

(declare-fun Unit!78381 () Unit!78288)

(assert (=> b!4396605 (= lt!1603053 Unit!78381)))

(declare-fun c!748458 () Bool)

(declare-fun bm!306020 () Bool)

(assert (=> bm!306020 (= call!306026 (forall!9334 (toList!3210 (extractMap!672 (t!356300 (t!356300 (toList!3209 lm!1707))))) (ite c!748458 lambda!148037 lambda!148039)))))

(assert (=> b!4396606 (= e!2737491 lt!1603066)))

(declare-fun lt!1603058 () ListMap!2453)

(assert (=> b!4396606 (= lt!1603058 (+!847 (extractMap!672 (t!356300 (t!356300 (toList!3209 lm!1707)))) (h!54856 (_2!27706 (h!54857 (t!356300 (toList!3209 lm!1707)))))))))

(assert (=> b!4396606 (= lt!1603066 (addToMapMapFromBucket!286 (t!356299 (_2!27706 (h!54857 (t!356300 (toList!3209 lm!1707))))) (+!847 (extractMap!672 (t!356300 (t!356300 (toList!3209 lm!1707)))) (h!54856 (_2!27706 (h!54857 (t!356300 (toList!3209 lm!1707))))))))))

(declare-fun lt!1603063 () Unit!78288)

(assert (=> b!4396606 (= lt!1603063 call!306025)))

(assert (=> b!4396606 (forall!9334 (toList!3210 (extractMap!672 (t!356300 (t!356300 (toList!3209 lm!1707))))) lambda!148038)))

(declare-fun lt!1603055 () Unit!78288)

(assert (=> b!4396606 (= lt!1603055 lt!1603063)))

(assert (=> b!4396606 (forall!9334 (toList!3210 lt!1603058) lambda!148039)))

(declare-fun lt!1603046 () Unit!78288)

(declare-fun Unit!78382 () Unit!78288)

(assert (=> b!4396606 (= lt!1603046 Unit!78382)))

(assert (=> b!4396606 (forall!9334 (t!356299 (_2!27706 (h!54857 (t!356300 (toList!3209 lm!1707))))) lambda!148039)))

(declare-fun lt!1603064 () Unit!78288)

(declare-fun Unit!78383 () Unit!78288)

(assert (=> b!4396606 (= lt!1603064 Unit!78383)))

(declare-fun lt!1603048 () Unit!78288)

(declare-fun Unit!78384 () Unit!78288)

(assert (=> b!4396606 (= lt!1603048 Unit!78384)))

(declare-fun lt!1603050 () Unit!78288)

(assert (=> b!4396606 (= lt!1603050 (forallContained!1970 (toList!3210 lt!1603058) lambda!148039 (h!54856 (_2!27706 (h!54857 (t!356300 (toList!3209 lm!1707)))))))))

(assert (=> b!4396606 (contains!11616 lt!1603058 (_1!27705 (h!54856 (_2!27706 (h!54857 (t!356300 (toList!3209 lm!1707)))))))))

(declare-fun lt!1603061 () Unit!78288)

(declare-fun Unit!78385 () Unit!78288)

(assert (=> b!4396606 (= lt!1603061 Unit!78385)))

(assert (=> b!4396606 (contains!11616 lt!1603066 (_1!27705 (h!54856 (_2!27706 (h!54857 (t!356300 (toList!3209 lm!1707)))))))))

(declare-fun lt!1603049 () Unit!78288)

(declare-fun Unit!78386 () Unit!78288)

(assert (=> b!4396606 (= lt!1603049 Unit!78386)))

(assert (=> b!4396606 (forall!9334 (_2!27706 (h!54857 (t!356300 (toList!3209 lm!1707)))) lambda!148039)))

(declare-fun lt!1603059 () Unit!78288)

(declare-fun Unit!78387 () Unit!78288)

(assert (=> b!4396606 (= lt!1603059 Unit!78387)))

(assert (=> b!4396606 (forall!9334 (toList!3210 lt!1603058) lambda!148039)))

(declare-fun lt!1603054 () Unit!78288)

(declare-fun Unit!78388 () Unit!78288)

(assert (=> b!4396606 (= lt!1603054 Unit!78388)))

(declare-fun lt!1603060 () Unit!78288)

(declare-fun Unit!78389 () Unit!78288)

(assert (=> b!4396606 (= lt!1603060 Unit!78389)))

(declare-fun lt!1603051 () Unit!78288)

(assert (=> b!4396606 (= lt!1603051 (addForallContainsKeyThenBeforeAdding!120 (extractMap!672 (t!356300 (t!356300 (toList!3209 lm!1707)))) lt!1603066 (_1!27705 (h!54856 (_2!27706 (h!54857 (t!356300 (toList!3209 lm!1707)))))) (_2!27705 (h!54856 (_2!27706 (h!54857 (t!356300 (toList!3209 lm!1707))))))))))

(assert (=> b!4396606 call!306026))

(declare-fun lt!1603052 () Unit!78288)

(assert (=> b!4396606 (= lt!1603052 lt!1603051)))

(assert (=> b!4396606 (forall!9334 (toList!3210 (extractMap!672 (t!356300 (t!356300 (toList!3209 lm!1707))))) lambda!148039)))

(declare-fun lt!1603062 () Unit!78288)

(declare-fun Unit!78390 () Unit!78288)

(assert (=> b!4396606 (= lt!1603062 Unit!78390)))

(declare-fun res!1812823 () Bool)

(assert (=> b!4396606 (= res!1812823 call!306027)))

(declare-fun e!2737492 () Bool)

(assert (=> b!4396606 (=> (not res!1812823) (not e!2737492))))

(assert (=> b!4396606 e!2737492))

(declare-fun lt!1603056 () Unit!78288)

(declare-fun Unit!78391 () Unit!78288)

(assert (=> b!4396606 (= lt!1603056 Unit!78391)))

(declare-fun bm!306021 () Bool)

(assert (=> bm!306021 (= call!306027 (forall!9334 (ite c!748458 (toList!3210 (extractMap!672 (t!356300 (t!356300 (toList!3209 lm!1707))))) (_2!27706 (h!54857 (t!356300 (toList!3209 lm!1707))))) (ite c!748458 lambda!148037 lambda!148039)))))

(declare-fun b!4396607 () Bool)

(assert (=> b!4396607 (= e!2737492 (forall!9334 (toList!3210 (extractMap!672 (t!356300 (t!356300 (toList!3209 lm!1707))))) lambda!148039))))

(assert (=> d!1324808 e!2737490))

(declare-fun res!1812824 () Bool)

(assert (=> d!1324808 (=> (not res!1812824) (not e!2737490))))

(assert (=> d!1324808 (= res!1812824 (forall!9334 (_2!27706 (h!54857 (t!356300 (toList!3209 lm!1707)))) lambda!148040))))

(assert (=> d!1324808 (= lt!1603047 e!2737491)))

(assert (=> d!1324808 (= c!748458 ((_ is Nil!49241) (_2!27706 (h!54857 (t!356300 (toList!3209 lm!1707))))))))

(assert (=> d!1324808 (noDuplicateKeys!613 (_2!27706 (h!54857 (t!356300 (toList!3209 lm!1707)))))))

(assert (=> d!1324808 (= (addToMapMapFromBucket!286 (_2!27706 (h!54857 (t!356300 (toList!3209 lm!1707)))) (extractMap!672 (t!356300 (t!356300 (toList!3209 lm!1707))))) lt!1603047)))

(declare-fun b!4396608 () Bool)

(declare-fun res!1812822 () Bool)

(assert (=> b!4396608 (=> (not res!1812822) (not e!2737490))))

(assert (=> b!4396608 (= res!1812822 (forall!9334 (toList!3210 (extractMap!672 (t!356300 (t!356300 (toList!3209 lm!1707))))) lambda!148040))))

(declare-fun bm!306022 () Bool)

(assert (=> bm!306022 (= call!306025 (lemmaContainsAllItsOwnKeys!120 (extractMap!672 (t!356300 (t!356300 (toList!3209 lm!1707))))))))

(assert (= (and d!1324808 c!748458) b!4396605))

(assert (= (and d!1324808 (not c!748458)) b!4396606))

(assert (= (and b!4396606 res!1812823) b!4396607))

(assert (= (or b!4396605 b!4396606) bm!306022))

(assert (= (or b!4396605 b!4396606) bm!306020))

(assert (= (or b!4396605 b!4396606) bm!306021))

(assert (= (and d!1324808 res!1812824) b!4396608))

(assert (= (and b!4396608 res!1812822) b!4396604))

(declare-fun m!5057319 () Bool)

(assert (=> b!4396606 m!5057319))

(declare-fun m!5057321 () Bool)

(assert (=> b!4396606 m!5057321))

(declare-fun m!5057323 () Bool)

(assert (=> b!4396606 m!5057323))

(declare-fun m!5057325 () Bool)

(assert (=> b!4396606 m!5057325))

(declare-fun m!5057327 () Bool)

(assert (=> b!4396606 m!5057327))

(declare-fun m!5057329 () Bool)

(assert (=> b!4396606 m!5057329))

(declare-fun m!5057331 () Bool)

(assert (=> b!4396606 m!5057331))

(assert (=> b!4396606 m!5057323))

(assert (=> b!4396606 m!5056407))

(assert (=> b!4396606 m!5057319))

(assert (=> b!4396606 m!5056407))

(declare-fun m!5057333 () Bool)

(assert (=> b!4396606 m!5057333))

(declare-fun m!5057335 () Bool)

(assert (=> b!4396606 m!5057335))

(declare-fun m!5057337 () Bool)

(assert (=> b!4396606 m!5057337))

(declare-fun m!5057339 () Bool)

(assert (=> b!4396606 m!5057339))

(declare-fun m!5057341 () Bool)

(assert (=> d!1324808 m!5057341))

(declare-fun m!5057343 () Bool)

(assert (=> d!1324808 m!5057343))

(assert (=> b!4396607 m!5057325))

(declare-fun m!5057345 () Bool)

(assert (=> b!4396604 m!5057345))

(declare-fun m!5057347 () Bool)

(assert (=> bm!306020 m!5057347))

(declare-fun m!5057349 () Bool)

(assert (=> bm!306021 m!5057349))

(assert (=> bm!306022 m!5056407))

(declare-fun m!5057351 () Bool)

(assert (=> bm!306022 m!5057351))

(declare-fun m!5057353 () Bool)

(assert (=> b!4396608 m!5057353))

(assert (=> b!4396023 d!1324808))

(declare-fun bs!726792 () Bool)

(declare-fun d!1324810 () Bool)

(assert (= bs!726792 (and d!1324810 d!1324446)))

(declare-fun lambda!148041 () Int)

(assert (=> bs!726792 (= lambda!148041 lambda!147896)))

(declare-fun bs!726793 () Bool)

(assert (= bs!726793 (and d!1324810 start!426828)))

(assert (=> bs!726793 (= lambda!148041 lambda!147873)))

(declare-fun bs!726794 () Bool)

(assert (= bs!726794 (and d!1324810 d!1324458)))

(assert (=> bs!726794 (= lambda!148041 lambda!147898)))

(declare-fun bs!726795 () Bool)

(assert (= bs!726795 (and d!1324810 d!1324460)))

(assert (=> bs!726795 (not (= lambda!148041 lambda!147901))))

(declare-fun bs!726796 () Bool)

(assert (= bs!726796 (and d!1324810 d!1324768)))

(assert (=> bs!726796 (= lambda!148041 lambda!148036)))

(declare-fun bs!726797 () Bool)

(assert (= bs!726797 (and d!1324810 d!1324450)))

(assert (=> bs!726797 (= lambda!148041 lambda!147897)))

(declare-fun bs!726798 () Bool)

(assert (= bs!726798 (and d!1324810 d!1324444)))

(assert (=> bs!726798 (= lambda!148041 lambda!147893)))

(declare-fun lt!1603067 () ListMap!2453)

(assert (=> d!1324810 (invariantList!741 (toList!3210 lt!1603067))))

(declare-fun e!2737493 () ListMap!2453)

(assert (=> d!1324810 (= lt!1603067 e!2737493)))

(declare-fun c!748459 () Bool)

(assert (=> d!1324810 (= c!748459 ((_ is Cons!49242) (t!356300 (t!356300 (toList!3209 lm!1707)))))))

(assert (=> d!1324810 (forall!9332 (t!356300 (t!356300 (toList!3209 lm!1707))) lambda!148041)))

(assert (=> d!1324810 (= (extractMap!672 (t!356300 (t!356300 (toList!3209 lm!1707)))) lt!1603067)))

(declare-fun b!4396609 () Bool)

(assert (=> b!4396609 (= e!2737493 (addToMapMapFromBucket!286 (_2!27706 (h!54857 (t!356300 (t!356300 (toList!3209 lm!1707))))) (extractMap!672 (t!356300 (t!356300 (t!356300 (toList!3209 lm!1707)))))))))

(declare-fun b!4396610 () Bool)

(assert (=> b!4396610 (= e!2737493 (ListMap!2454 Nil!49241))))

(assert (= (and d!1324810 c!748459) b!4396609))

(assert (= (and d!1324810 (not c!748459)) b!4396610))

(declare-fun m!5057355 () Bool)

(assert (=> d!1324810 m!5057355))

(declare-fun m!5057357 () Bool)

(assert (=> d!1324810 m!5057357))

(declare-fun m!5057359 () Bool)

(assert (=> b!4396609 m!5057359))

(assert (=> b!4396609 m!5057359))

(declare-fun m!5057361 () Bool)

(assert (=> b!4396609 m!5057361))

(assert (=> b!4396023 d!1324810))

(declare-fun bs!726799 () Bool)

(declare-fun b!4396618 () Bool)

(assert (= bs!726799 (and b!4396618 b!4396484)))

(declare-fun lambda!148042 () Int)

(assert (=> bs!726799 (= (= (t!356299 (toList!3210 (extractMap!672 (toList!3209 lm!1707)))) (toList!3210 (extractMap!672 (toList!3209 lm!1707)))) (= lambda!148042 lambda!148026))))

(declare-fun bs!726800 () Bool)

(assert (= bs!726800 (and b!4396618 b!4396507)))

(assert (=> bs!726800 (= (= (t!356299 (toList!3210 (extractMap!672 (toList!3209 lm!1707)))) (t!356299 (toList!3210 lt!1602517))) (= lambda!148042 lambda!148028))))

(declare-fun bs!726801 () Bool)

(assert (= bs!726801 (and b!4396618 b!4396440)))

(assert (=> bs!726801 (= (= (t!356299 (toList!3210 (extractMap!672 (toList!3209 lm!1707)))) (toList!3210 (extractMap!672 (toList!3209 (tail!7090 lm!1707))))) (= lambda!148042 lambda!148022))))

(declare-fun bs!726802 () Bool)

(assert (= bs!726802 (and b!4396618 b!4396502)))

(assert (=> bs!726802 (= (= (t!356299 (toList!3210 (extractMap!672 (toList!3209 lm!1707)))) (toList!3210 lt!1602517)) (= lambda!148042 lambda!148030))))

(declare-fun bs!726803 () Bool)

(assert (= bs!726803 (and b!4396618 b!4396221)))

(assert (=> bs!726803 (= (= (t!356299 (toList!3210 (extractMap!672 (toList!3209 lm!1707)))) (toList!3210 lt!1602517)) (= lambda!148042 lambda!147916))))

(declare-fun bs!726804 () Bool)

(assert (= bs!726804 (and b!4396618 b!4396438)))

(assert (=> bs!726804 (= (= (t!356299 (toList!3210 (extractMap!672 (toList!3209 lm!1707)))) (Cons!49241 (h!54856 (toList!3210 (extractMap!672 (toList!3209 (tail!7090 lm!1707))))) (t!356299 (toList!3210 (extractMap!672 (toList!3209 (tail!7090 lm!1707))))))) (= lambda!148042 lambda!148021))))

(declare-fun bs!726805 () Bool)

(assert (= bs!726805 (and b!4396618 b!4396445)))

(assert (=> bs!726805 (= (= (t!356299 (toList!3210 (extractMap!672 (toList!3209 lm!1707)))) (t!356299 (toList!3210 (extractMap!672 (toList!3209 (tail!7090 lm!1707)))))) (= lambda!148042 lambda!148020))))

(declare-fun bs!726806 () Bool)

(assert (= bs!726806 (and b!4396618 b!4396471)))

(assert (=> bs!726806 (= (= (t!356299 (toList!3210 (extractMap!672 (toList!3209 lm!1707)))) (toList!3210 (extractMap!672 (toList!3209 (tail!7090 lm!1707))))) (= lambda!148042 lambda!148024))))

(declare-fun bs!726807 () Bool)

(assert (= bs!726807 (and b!4396618 b!4396500)))

(assert (=> bs!726807 (= (= (t!356299 (toList!3210 (extractMap!672 (toList!3209 lm!1707)))) (Cons!49241 (h!54856 (toList!3210 lt!1602517)) (t!356299 (toList!3210 lt!1602517)))) (= lambda!148042 lambda!148029))))

(assert (=> b!4396618 true))

(declare-fun bs!726808 () Bool)

(declare-fun b!4396611 () Bool)

(assert (= bs!726808 (and b!4396611 b!4396484)))

(declare-fun lambda!148043 () Int)

(assert (=> bs!726808 (= (= (Cons!49241 (h!54856 (toList!3210 (extractMap!672 (toList!3209 lm!1707)))) (t!356299 (toList!3210 (extractMap!672 (toList!3209 lm!1707))))) (toList!3210 (extractMap!672 (toList!3209 lm!1707)))) (= lambda!148043 lambda!148026))))

(declare-fun bs!726809 () Bool)

(assert (= bs!726809 (and b!4396611 b!4396507)))

(assert (=> bs!726809 (= (= (Cons!49241 (h!54856 (toList!3210 (extractMap!672 (toList!3209 lm!1707)))) (t!356299 (toList!3210 (extractMap!672 (toList!3209 lm!1707))))) (t!356299 (toList!3210 lt!1602517))) (= lambda!148043 lambda!148028))))

(declare-fun bs!726810 () Bool)

(assert (= bs!726810 (and b!4396611 b!4396440)))

(assert (=> bs!726810 (= (= (Cons!49241 (h!54856 (toList!3210 (extractMap!672 (toList!3209 lm!1707)))) (t!356299 (toList!3210 (extractMap!672 (toList!3209 lm!1707))))) (toList!3210 (extractMap!672 (toList!3209 (tail!7090 lm!1707))))) (= lambda!148043 lambda!148022))))

(declare-fun bs!726811 () Bool)

(assert (= bs!726811 (and b!4396611 b!4396502)))

(assert (=> bs!726811 (= (= (Cons!49241 (h!54856 (toList!3210 (extractMap!672 (toList!3209 lm!1707)))) (t!356299 (toList!3210 (extractMap!672 (toList!3209 lm!1707))))) (toList!3210 lt!1602517)) (= lambda!148043 lambda!148030))))

(declare-fun bs!726812 () Bool)

(assert (= bs!726812 (and b!4396611 b!4396618)))

(assert (=> bs!726812 (= (= (Cons!49241 (h!54856 (toList!3210 (extractMap!672 (toList!3209 lm!1707)))) (t!356299 (toList!3210 (extractMap!672 (toList!3209 lm!1707))))) (t!356299 (toList!3210 (extractMap!672 (toList!3209 lm!1707))))) (= lambda!148043 lambda!148042))))

(declare-fun bs!726813 () Bool)

(assert (= bs!726813 (and b!4396611 b!4396221)))

(assert (=> bs!726813 (= (= (Cons!49241 (h!54856 (toList!3210 (extractMap!672 (toList!3209 lm!1707)))) (t!356299 (toList!3210 (extractMap!672 (toList!3209 lm!1707))))) (toList!3210 lt!1602517)) (= lambda!148043 lambda!147916))))

(declare-fun bs!726814 () Bool)

(assert (= bs!726814 (and b!4396611 b!4396438)))

(assert (=> bs!726814 (= (= (Cons!49241 (h!54856 (toList!3210 (extractMap!672 (toList!3209 lm!1707)))) (t!356299 (toList!3210 (extractMap!672 (toList!3209 lm!1707))))) (Cons!49241 (h!54856 (toList!3210 (extractMap!672 (toList!3209 (tail!7090 lm!1707))))) (t!356299 (toList!3210 (extractMap!672 (toList!3209 (tail!7090 lm!1707))))))) (= lambda!148043 lambda!148021))))

(declare-fun bs!726815 () Bool)

(assert (= bs!726815 (and b!4396611 b!4396445)))

(assert (=> bs!726815 (= (= (Cons!49241 (h!54856 (toList!3210 (extractMap!672 (toList!3209 lm!1707)))) (t!356299 (toList!3210 (extractMap!672 (toList!3209 lm!1707))))) (t!356299 (toList!3210 (extractMap!672 (toList!3209 (tail!7090 lm!1707)))))) (= lambda!148043 lambda!148020))))

(declare-fun bs!726816 () Bool)

(assert (= bs!726816 (and b!4396611 b!4396471)))

(assert (=> bs!726816 (= (= (Cons!49241 (h!54856 (toList!3210 (extractMap!672 (toList!3209 lm!1707)))) (t!356299 (toList!3210 (extractMap!672 (toList!3209 lm!1707))))) (toList!3210 (extractMap!672 (toList!3209 (tail!7090 lm!1707))))) (= lambda!148043 lambda!148024))))

(declare-fun bs!726817 () Bool)

(assert (= bs!726817 (and b!4396611 b!4396500)))

(assert (=> bs!726817 (= (= (Cons!49241 (h!54856 (toList!3210 (extractMap!672 (toList!3209 lm!1707)))) (t!356299 (toList!3210 (extractMap!672 (toList!3209 lm!1707))))) (Cons!49241 (h!54856 (toList!3210 lt!1602517)) (t!356299 (toList!3210 lt!1602517)))) (= lambda!148043 lambda!148029))))

(assert (=> b!4396611 true))

(declare-fun bs!726818 () Bool)

(declare-fun b!4396613 () Bool)

(assert (= bs!726818 (and b!4396613 b!4396507)))

(declare-fun lambda!148044 () Int)

(assert (=> bs!726818 (= (= (toList!3210 (extractMap!672 (toList!3209 lm!1707))) (t!356299 (toList!3210 lt!1602517))) (= lambda!148044 lambda!148028))))

(declare-fun bs!726819 () Bool)

(assert (= bs!726819 (and b!4396613 b!4396440)))

(assert (=> bs!726819 (= (= (toList!3210 (extractMap!672 (toList!3209 lm!1707))) (toList!3210 (extractMap!672 (toList!3209 (tail!7090 lm!1707))))) (= lambda!148044 lambda!148022))))

(declare-fun bs!726820 () Bool)

(assert (= bs!726820 (and b!4396613 b!4396502)))

(assert (=> bs!726820 (= (= (toList!3210 (extractMap!672 (toList!3209 lm!1707))) (toList!3210 lt!1602517)) (= lambda!148044 lambda!148030))))

(declare-fun bs!726821 () Bool)

(assert (= bs!726821 (and b!4396613 b!4396618)))

(assert (=> bs!726821 (= (= (toList!3210 (extractMap!672 (toList!3209 lm!1707))) (t!356299 (toList!3210 (extractMap!672 (toList!3209 lm!1707))))) (= lambda!148044 lambda!148042))))

(declare-fun bs!726822 () Bool)

(assert (= bs!726822 (and b!4396613 b!4396221)))

(assert (=> bs!726822 (= (= (toList!3210 (extractMap!672 (toList!3209 lm!1707))) (toList!3210 lt!1602517)) (= lambda!148044 lambda!147916))))

(declare-fun bs!726823 () Bool)

(assert (= bs!726823 (and b!4396613 b!4396438)))

(assert (=> bs!726823 (= (= (toList!3210 (extractMap!672 (toList!3209 lm!1707))) (Cons!49241 (h!54856 (toList!3210 (extractMap!672 (toList!3209 (tail!7090 lm!1707))))) (t!356299 (toList!3210 (extractMap!672 (toList!3209 (tail!7090 lm!1707))))))) (= lambda!148044 lambda!148021))))

(declare-fun bs!726824 () Bool)

(assert (= bs!726824 (and b!4396613 b!4396445)))

(assert (=> bs!726824 (= (= (toList!3210 (extractMap!672 (toList!3209 lm!1707))) (t!356299 (toList!3210 (extractMap!672 (toList!3209 (tail!7090 lm!1707)))))) (= lambda!148044 lambda!148020))))

(declare-fun bs!726825 () Bool)

(assert (= bs!726825 (and b!4396613 b!4396611)))

(assert (=> bs!726825 (= (= (toList!3210 (extractMap!672 (toList!3209 lm!1707))) (Cons!49241 (h!54856 (toList!3210 (extractMap!672 (toList!3209 lm!1707)))) (t!356299 (toList!3210 (extractMap!672 (toList!3209 lm!1707)))))) (= lambda!148044 lambda!148043))))

(declare-fun bs!726826 () Bool)

(assert (= bs!726826 (and b!4396613 b!4396484)))

(assert (=> bs!726826 (= lambda!148044 lambda!148026)))

(declare-fun bs!726827 () Bool)

(assert (= bs!726827 (and b!4396613 b!4396471)))

(assert (=> bs!726827 (= (= (toList!3210 (extractMap!672 (toList!3209 lm!1707))) (toList!3210 (extractMap!672 (toList!3209 (tail!7090 lm!1707))))) (= lambda!148044 lambda!148024))))

(declare-fun bs!726828 () Bool)

(assert (= bs!726828 (and b!4396613 b!4396500)))

(assert (=> bs!726828 (= (= (toList!3210 (extractMap!672 (toList!3209 lm!1707))) (Cons!49241 (h!54856 (toList!3210 lt!1602517)) (t!356299 (toList!3210 lt!1602517)))) (= lambda!148044 lambda!148029))))

(assert (=> b!4396613 true))

(declare-fun bs!726829 () Bool)

(declare-fun b!4396612 () Bool)

(assert (= bs!726829 (and b!4396612 b!4396501)))

(declare-fun lambda!148045 () Int)

(assert (=> bs!726829 (= lambda!148045 lambda!148031)))

(declare-fun bs!726830 () Bool)

(assert (= bs!726830 (and b!4396612 b!4396485)))

(assert (=> bs!726830 (= lambda!148045 lambda!148027)))

(declare-fun bs!726831 () Bool)

(assert (= bs!726831 (and b!4396612 b!4396472)))

(assert (=> bs!726831 (= lambda!148045 lambda!148025)))

(declare-fun bs!726832 () Bool)

(assert (= bs!726832 (and b!4396612 b!4396222)))

(assert (=> bs!726832 (= lambda!148045 lambda!147917)))

(declare-fun bs!726833 () Bool)

(assert (= bs!726833 (and b!4396612 b!4396439)))

(assert (=> bs!726833 (= lambda!148045 lambda!148023)))

(declare-fun e!2737497 () List!49368)

(assert (=> b!4396611 (= e!2737497 (Cons!49244 (_1!27705 (h!54856 (toList!3210 (extractMap!672 (toList!3209 lm!1707))))) (getKeysList!188 (t!356299 (toList!3210 (extractMap!672 (toList!3209 lm!1707)))))))))

(declare-fun c!748460 () Bool)

(assert (=> b!4396611 (= c!748460 (containsKey!904 (t!356299 (toList!3210 (extractMap!672 (toList!3209 lm!1707)))) (_1!27705 (h!54856 (toList!3210 (extractMap!672 (toList!3209 lm!1707)))))))))

(declare-fun lt!1603073 () Unit!78288)

(declare-fun e!2737495 () Unit!78288)

(assert (=> b!4396611 (= lt!1603073 e!2737495)))

(declare-fun c!748461 () Bool)

(assert (=> b!4396611 (= c!748461 (contains!11620 (getKeysList!188 (t!356299 (toList!3210 (extractMap!672 (toList!3209 lm!1707))))) (_1!27705 (h!54856 (toList!3210 (extractMap!672 (toList!3209 lm!1707)))))))))

(declare-fun lt!1603069 () Unit!78288)

(declare-fun e!2737494 () Unit!78288)

(assert (=> b!4396611 (= lt!1603069 e!2737494)))

(declare-fun lt!1603070 () List!49368)

(assert (=> b!4396611 (= lt!1603070 (getKeysList!188 (t!356299 (toList!3210 (extractMap!672 (toList!3209 lm!1707))))))))

(declare-fun lt!1603072 () Unit!78288)

(assert (=> b!4396611 (= lt!1603072 (lemmaForallContainsAddHeadPreserves!51 (t!356299 (toList!3210 (extractMap!672 (toList!3209 lm!1707)))) lt!1603070 (h!54856 (toList!3210 (extractMap!672 (toList!3209 lm!1707))))))))

(assert (=> b!4396611 (forall!9336 lt!1603070 lambda!148043)))

(declare-fun lt!1603074 () Unit!78288)

(assert (=> b!4396611 (= lt!1603074 lt!1603072)))

(declare-fun lt!1603068 () List!49368)

(declare-fun e!2737496 () Bool)

(assert (=> b!4396612 (= e!2737496 (= (content!7853 lt!1603068) (content!7853 (map!10733 (toList!3210 (extractMap!672 (toList!3209 lm!1707))) lambda!148045))))))

(declare-fun res!1812825 () Bool)

(assert (=> b!4396613 (=> (not res!1812825) (not e!2737496))))

(assert (=> b!4396613 (= res!1812825 (forall!9336 lt!1603068 lambda!148044))))

(declare-fun b!4396614 () Bool)

(declare-fun Unit!78392 () Unit!78288)

(assert (=> b!4396614 (= e!2737494 Unit!78392)))

(declare-fun b!4396615 () Bool)

(declare-fun Unit!78393 () Unit!78288)

(assert (=> b!4396615 (= e!2737495 Unit!78393)))

(declare-fun b!4396616 () Bool)

(declare-fun res!1812827 () Bool)

(assert (=> b!4396616 (=> (not res!1812827) (not e!2737496))))

(assert (=> b!4396616 (= res!1812827 (= (length!116 lt!1603068) (length!117 (toList!3210 (extractMap!672 (toList!3209 lm!1707))))))))

(assert (=> b!4396618 false))

(declare-fun lt!1603071 () Unit!78288)

(assert (=> b!4396618 (= lt!1603071 (forallContained!1973 (getKeysList!188 (t!356299 (toList!3210 (extractMap!672 (toList!3209 lm!1707))))) lambda!148042 (_1!27705 (h!54856 (toList!3210 (extractMap!672 (toList!3209 lm!1707)))))))))

(declare-fun Unit!78394 () Unit!78288)

(assert (=> b!4396618 (= e!2737494 Unit!78394)))

(declare-fun b!4396619 () Bool)

(assert (=> b!4396619 (= e!2737497 Nil!49244)))

(declare-fun b!4396617 () Bool)

(assert (=> b!4396617 false))

(declare-fun Unit!78395 () Unit!78288)

(assert (=> b!4396617 (= e!2737495 Unit!78395)))

(declare-fun d!1324812 () Bool)

(assert (=> d!1324812 e!2737496))

(declare-fun res!1812826 () Bool)

(assert (=> d!1324812 (=> (not res!1812826) (not e!2737496))))

(assert (=> d!1324812 (= res!1812826 (noDuplicate!630 lt!1603068))))

(assert (=> d!1324812 (= lt!1603068 e!2737497)))

(declare-fun c!748462 () Bool)

(assert (=> d!1324812 (= c!748462 ((_ is Cons!49241) (toList!3210 (extractMap!672 (toList!3209 lm!1707)))))))

(assert (=> d!1324812 (invariantList!741 (toList!3210 (extractMap!672 (toList!3209 lm!1707))))))

(assert (=> d!1324812 (= (getKeysList!188 (toList!3210 (extractMap!672 (toList!3209 lm!1707)))) lt!1603068)))

(assert (= (and d!1324812 c!748462) b!4396611))

(assert (= (and d!1324812 (not c!748462)) b!4396619))

(assert (= (and b!4396611 c!748460) b!4396617))

(assert (= (and b!4396611 (not c!748460)) b!4396615))

(assert (= (and b!4396611 c!748461) b!4396618))

(assert (= (and b!4396611 (not c!748461)) b!4396614))

(assert (= (and d!1324812 res!1812826) b!4396616))

(assert (= (and b!4396616 res!1812827) b!4396613))

(assert (= (and b!4396613 res!1812825) b!4396612))

(declare-fun m!5057363 () Bool)

(assert (=> d!1324812 m!5057363))

(assert (=> d!1324812 m!5056681))

(declare-fun m!5057365 () Bool)

(assert (=> b!4396611 m!5057365))

(declare-fun m!5057367 () Bool)

(assert (=> b!4396611 m!5057367))

(assert (=> b!4396611 m!5057367))

(declare-fun m!5057369 () Bool)

(assert (=> b!4396611 m!5057369))

(declare-fun m!5057371 () Bool)

(assert (=> b!4396611 m!5057371))

(declare-fun m!5057373 () Bool)

(assert (=> b!4396611 m!5057373))

(assert (=> b!4396618 m!5057367))

(assert (=> b!4396618 m!5057367))

(declare-fun m!5057375 () Bool)

(assert (=> b!4396618 m!5057375))

(declare-fun m!5057377 () Bool)

(assert (=> b!4396613 m!5057377))

(declare-fun m!5057379 () Bool)

(assert (=> b!4396616 m!5057379))

(assert (=> b!4396616 m!5057105))

(declare-fun m!5057381 () Bool)

(assert (=> b!4396612 m!5057381))

(declare-fun m!5057383 () Bool)

(assert (=> b!4396612 m!5057383))

(assert (=> b!4396612 m!5057383))

(declare-fun m!5057385 () Bool)

(assert (=> b!4396612 m!5057385))

(assert (=> b!4396039 d!1324812))

(declare-fun d!1324814 () Bool)

(assert (=> d!1324814 (= (get!16026 (getValueByKey!580 (toList!3209 lm!1707) hash!377)) (v!43659 (getValueByKey!580 (toList!3209 lm!1707) hash!377)))))

(assert (=> d!1324356 d!1324814))

(assert (=> d!1324356 d!1324700))

(assert (=> b!4396041 d!1324804))

(assert (=> b!4396041 d!1324720))

(declare-fun e!2737498 () Bool)

(declare-fun b!4396620 () Bool)

(declare-fun tp!1331629 () Bool)

(assert (=> b!4396620 (= e!2737498 (and tp_is_empty!25689 tp_is_empty!25691 tp!1331629))))

(assert (=> b!4396055 (= tp!1331618 e!2737498)))

(assert (= (and b!4396055 ((_ is Cons!49241) (t!356299 (t!356299 newBucket!200)))) b!4396620))

(declare-fun b!4396621 () Bool)

(declare-fun e!2737499 () Bool)

(declare-fun tp!1331630 () Bool)

(assert (=> b!4396621 (= e!2737499 (and tp_is_empty!25689 tp_is_empty!25691 tp!1331630))))

(assert (=> b!4396060 (= tp!1331623 e!2737499)))

(assert (= (and b!4396060 ((_ is Cons!49241) (_2!27706 (h!54857 (toList!3209 lm!1707))))) b!4396621))

(declare-fun b!4396622 () Bool)

(declare-fun e!2737500 () Bool)

(declare-fun tp!1331631 () Bool)

(declare-fun tp!1331632 () Bool)

(assert (=> b!4396622 (= e!2737500 (and tp!1331631 tp!1331632))))

(assert (=> b!4396060 (= tp!1331624 e!2737500)))

(assert (= (and b!4396060 ((_ is Cons!49242) (t!356300 (toList!3209 lm!1707)))) b!4396622))

(declare-fun b_lambda!139221 () Bool)

(assert (= b_lambda!139205 (or d!1324450 b_lambda!139221)))

(declare-fun bs!726834 () Bool)

(declare-fun d!1324816 () Bool)

(assert (= bs!726834 (and d!1324816 d!1324450)))

(assert (=> bs!726834 (= (dynLambda!20745 lambda!147897 (h!54857 (toList!3209 (tail!7090 lm!1707)))) (noDuplicateKeys!613 (_2!27706 (h!54857 (toList!3209 (tail!7090 lm!1707))))))))

(assert (=> bs!726834 m!5057233))

(assert (=> b!4396486 d!1324816))

(declare-fun b_lambda!139223 () Bool)

(assert (= b_lambda!139203 (or d!1324390 b_lambda!139223)))

(declare-fun bs!726835 () Bool)

(declare-fun d!1324818 () Bool)

(assert (= bs!726835 (and d!1324818 d!1324390)))

(assert (=> bs!726835 (= (dynLambda!20746 lambda!147879 (h!54856 newBucket!200)) (= (hash!1825 hashF!1247 (_1!27705 (h!54856 newBucket!200))) hash!377))))

(declare-fun m!5057387 () Bool)

(assert (=> bs!726835 m!5057387))

(assert (=> b!4396481 d!1324818))

(declare-fun b_lambda!139225 () Bool)

(assert (= b_lambda!139217 (or d!1324444 b_lambda!139225)))

(declare-fun bs!726836 () Bool)

(declare-fun d!1324820 () Bool)

(assert (= bs!726836 (and d!1324820 d!1324444)))

(assert (=> bs!726836 (= (dynLambda!20745 lambda!147893 (h!54857 (t!356300 (toList!3209 lm!1707)))) (noDuplicateKeys!613 (_2!27706 (h!54857 (t!356300 (toList!3209 lm!1707))))))))

(assert (=> bs!726836 m!5057343))

(assert (=> b!4396584 d!1324820))

(declare-fun b_lambda!139227 () Bool)

(assert (= b_lambda!139215 (or d!1324446 b_lambda!139227)))

(declare-fun bs!726837 () Bool)

(declare-fun d!1324822 () Bool)

(assert (= bs!726837 (and d!1324822 d!1324446)))

(assert (=> bs!726837 (= (dynLambda!20745 lambda!147896 (h!54857 (toList!3209 lm!1707))) (noDuplicateKeys!613 (_2!27706 (h!54857 (toList!3209 lm!1707)))))))

(assert (=> bs!726837 m!5056417))

(assert (=> b!4396537 d!1324822))

(declare-fun b_lambda!139229 () Bool)

(assert (= b_lambda!139207 (or start!426828 b_lambda!139229)))

(declare-fun bs!726838 () Bool)

(declare-fun d!1324824 () Bool)

(assert (= bs!726838 (and d!1324824 start!426828)))

(assert (=> bs!726838 (= (dynLambda!20745 lambda!147873 (h!54857 (t!356300 (toList!3209 lt!1602514)))) (noDuplicateKeys!613 (_2!27706 (h!54857 (t!356300 (toList!3209 lt!1602514))))))))

(declare-fun m!5057389 () Bool)

(assert (=> bs!726838 m!5057389))

(assert (=> b!4396490 d!1324824))

(declare-fun b_lambda!139231 () Bool)

(assert (= b_lambda!139171 (or d!1324458 b_lambda!139231)))

(declare-fun bs!726839 () Bool)

(declare-fun d!1324826 () Bool)

(assert (= bs!726839 (and d!1324826 d!1324458)))

(assert (=> bs!726839 (= (dynLambda!20745 lambda!147898 (h!54857 (toList!3209 lm!1707))) (noDuplicateKeys!613 (_2!27706 (h!54857 (toList!3209 lm!1707)))))))

(assert (=> bs!726839 m!5056417))

(assert (=> b!4396225 d!1324826))

(declare-fun b_lambda!139233 () Bool)

(assert (= b_lambda!139209 (or d!1324460 b_lambda!139233)))

(declare-fun bs!726840 () Bool)

(declare-fun d!1324828 () Bool)

(assert (= bs!726840 (and d!1324828 d!1324460)))

(assert (=> bs!726840 (= (dynLambda!20745 lambda!147901 (h!54857 (toList!3209 lm!1707))) (allKeysSameHash!571 (_2!27706 (h!54857 (toList!3209 lm!1707))) (_1!27706 (h!54857 (toList!3209 lm!1707))) hashF!1247))))

(declare-fun m!5057391 () Bool)

(assert (=> bs!726840 m!5057391))

(assert (=> b!4396494 d!1324828))

(declare-fun b_lambda!139235 () Bool)

(assert (= b_lambda!139213 (or start!426828 b_lambda!139235)))

(declare-fun bs!726841 () Bool)

(declare-fun d!1324830 () Bool)

(assert (= bs!726841 (and d!1324830 start!426828)))

(assert (=> bs!726841 (= (dynLambda!20745 lambda!147873 (h!54857 (toList!3209 (+!846 lm!1707 (tuple2!48825 hash!377 newBucket!200))))) (noDuplicateKeys!613 (_2!27706 (h!54857 (toList!3209 (+!846 lm!1707 (tuple2!48825 hash!377 newBucket!200)))))))))

(declare-fun m!5057393 () Bool)

(assert (=> bs!726841 m!5057393))

(assert (=> b!4396523 d!1324830))

(declare-fun b_lambda!139237 () Bool)

(assert (= b_lambda!139211 (or start!426828 b_lambda!139237)))

(assert (=> d!1324742 d!1324466))

(declare-fun b_lambda!139239 () Bool)

(assert (= b_lambda!139219 (or start!426828 b_lambda!139239)))

(declare-fun bs!726842 () Bool)

(declare-fun d!1324832 () Bool)

(assert (= bs!726842 (and d!1324832 start!426828)))

(assert (=> bs!726842 (= (dynLambda!20745 lambda!147873 (h!54857 (t!356300 (toList!3209 lm!1707)))) (noDuplicateKeys!613 (_2!27706 (h!54857 (t!356300 (toList!3209 lm!1707))))))))

(assert (=> bs!726842 m!5057343))

(assert (=> b!4396596 d!1324832))

(check-sat (not b!4396440) (not b!4396472) (not d!1324564) (not b!4396451) (not b_lambda!139237) (not b!4396546) (not b!4396465) (not b!4396438) (not d!1324710) (not b!4396514) (not d!1324784) (not b!4396497) (not bm!306009) (not b!4396607) (not b!4396516) (not bm!306019) (not b!4396581) (not b!4396470) (not b_lambda!139225) (not b!4396535) (not bm!306010) (not b!4396499) (not b!4396491) (not b!4396439) (not b!4396374) (not d!1324780) (not bs!726840) (not b!4396597) (not d!1324558) (not d!1324796) (not b!4396221) (not d!1324812) (not bs!726834) (not b_lambda!139233) (not b!4396616) (not b!4396522) (not b!4396507) (not d!1324758) (not d!1324572) (not b!4396391) (not b!4396538) (not b_lambda!139221) (not b!4396606) (not b!4396518) (not bm!306021) (not d!1324744) (not b_lambda!139235) (not b!4396467) (not b!4396403) (not b!4396585) (not b!4396401) (not b!4396495) (not d!1324766) (not d!1324808) (not d!1324716) (not b!4396595) (not bs!726835) (not d!1324554) (not b!4396609) (not b!4396618) (not d!1324568) (not b!4396220) (not b!4396540) (not bm!306006) (not b!4396534) (not b!4396622) (not b!4396613) (not b!4396604) (not d!1324726) (not d!1324698) (not b!4396608) (not b!4396528) (not d!1324578) (not b!4396483) (not b!4396405) (not d!1324754) (not b!4396502) (not d!1324776) (not b!4396232) (not b!4396485) (not b!4396445) (not b!4396390) tp_is_empty!25691 (not b_lambda!139223) (not b!4396493) (not b_lambda!139227) (not d!1324650) (not b_lambda!139231) (not d!1324736) (not d!1324696) (not bs!726836) (not b!4396539) (not b!4396541) (not bm!306020) (not d!1324556) (not b!4396552) (not d!1324740) (not b!4396393) (not bm!306005) (not bs!726841) (not b!4396484) (not b!4396590) (not b!4396471) (not d!1324722) (not bs!726839) (not b_lambda!139153) (not bs!726842) (not d!1324730) (not b!4396621) (not b!4396593) (not b!4396576) (not b!4396371) (not b!4396520) (not b!4396475) (not b!4396243) (not b!4396612) (not d!1324566) (not b!4396404) (not d!1324746) (not b!4396524) (not b!4396620) (not b!4396611) (not d!1324706) (not d!1324798) (not b!4396532) (not b!4396582) (not b!4396519) (not d!1324752) (not b!4396222) (not b_lambda!139229) (not b!4396533) (not b!4396443) (not d!1324810) (not bm!306008) (not b!4396482) (not d!1324660) (not b!4396599) (not b!4396500) (not b!4396489) (not b!4396530) (not b!4396213) (not b!4396487) (not d!1324804) (not d!1324762) (not b!4396462) (not b!4396226) (not bm!306022) (not b!4396466) (not bs!726838) (not b!4396375) (not b!4396501) (not d!1324768) (not d!1324712) (not d!1324794) (not b!4396469) (not b_lambda!139157) (not b!4396250) (not d!1324764) (not b!4396543) (not b!4396553) (not b!4396505) tp_is_empty!25689 (not d!1324720) (not bs!726837) (not b!4396408) (not b!4396586) (not b!4396373) (not b!4396587) (not b_lambda!139159) (not d!1324666) (not d!1324708) (not d!1324738) (not b_lambda!139155) (not bm!306007) (not b!4396602) (not d!1324770) (not d!1324782) (not b_lambda!139239))
(check-sat)
