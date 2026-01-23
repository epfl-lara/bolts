; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!424072 () Bool)

(assert start!424072)

(declare-fun b!4368888 () Bool)

(declare-fun res!1797647 () Bool)

(declare-fun e!2719136 () Bool)

(assert (=> b!4368888 (=> (not res!1797647) (not e!2719136))))

(declare-datatypes ((V!10696 0))(
  ( (V!10697 (val!16631 Int)) )
))
(declare-datatypes ((K!10450 0))(
  ( (K!10451 (val!16632 Int)) )
))
(declare-datatypes ((tuple2!48582 0))(
  ( (tuple2!48583 (_1!27585 K!10450) (_2!27585 V!10696)) )
))
(declare-datatypes ((List!49212 0))(
  ( (Nil!49088) (Cons!49088 (h!54669 tuple2!48582) (t!356134 List!49212)) )
))
(declare-datatypes ((tuple2!48584 0))(
  ( (tuple2!48585 (_1!27586 (_ BitVec 64)) (_2!27586 List!49212)) )
))
(declare-datatypes ((List!49213 0))(
  ( (Nil!49089) (Cons!49089 (h!54670 tuple2!48584) (t!356135 List!49213)) )
))
(declare-datatypes ((ListLongMap!1739 0))(
  ( (ListLongMap!1740 (toList!3089 List!49213)) )
))
(declare-fun lt!1580365 () ListLongMap!1739)

(declare-fun lambda!143285 () Int)

(declare-fun forall!9225 (List!49213 Int) Bool)

(assert (=> b!4368888 (= res!1797647 (forall!9225 (toList!3089 lt!1580365) lambda!143285))))

(declare-fun b!4368889 () Bool)

(declare-fun e!2719137 () Bool)

(declare-fun tp!1330854 () Bool)

(assert (=> b!4368889 (= e!2719137 tp!1330854)))

(declare-fun b!4368890 () Bool)

(declare-fun hash!377 () (_ BitVec 64))

(declare-fun lm!1707 () ListLongMap!1739)

(declare-fun lt!1580370 () tuple2!48584)

(get-info :version)

(assert (=> b!4368890 (= e!2719136 (or (not ((_ is Cons!49089) (toList!3089 lm!1707))) (not (= (_1!27586 (h!54670 (toList!3089 lm!1707))) hash!377)) (= lt!1580365 (ListLongMap!1740 (Cons!49089 lt!1580370 (t!356135 (toList!3089 lm!1707)))))))))

(declare-fun tp!1330853 () Bool)

(declare-fun tp_is_empty!25449 () Bool)

(declare-fun b!4368891 () Bool)

(declare-fun e!2719138 () Bool)

(declare-fun tp_is_empty!25451 () Bool)

(assert (=> b!4368891 (= e!2719138 (and tp_is_empty!25449 tp_is_empty!25451 tp!1330853))))

(declare-fun b!4368892 () Bool)

(declare-fun res!1797650 () Bool)

(declare-fun e!2719133 () Bool)

(assert (=> b!4368892 (=> (not res!1797650) (not e!2719133))))

(declare-fun key!3918 () K!10450)

(declare-datatypes ((ListMap!2333 0))(
  ( (ListMap!2334 (toList!3090 List!49212)) )
))
(declare-fun contains!11379 (ListMap!2333 K!10450) Bool)

(declare-fun extractMap!612 (List!49213) ListMap!2333)

(assert (=> b!4368892 (= res!1797650 (contains!11379 (extractMap!612 (toList!3089 lm!1707)) key!3918))))

(declare-fun b!4368893 () Bool)

(declare-fun res!1797651 () Bool)

(assert (=> b!4368893 (=> (not res!1797651) (not e!2719133))))

(declare-fun contains!11380 (ListLongMap!1739 (_ BitVec 64)) Bool)

(assert (=> b!4368893 (= res!1797651 (contains!11380 lm!1707 hash!377))))

(declare-fun b!4368894 () Bool)

(declare-fun e!2719134 () Bool)

(declare-fun e!2719135 () Bool)

(assert (=> b!4368894 (= e!2719134 e!2719135)))

(declare-fun res!1797649 () Bool)

(assert (=> b!4368894 (=> res!1797649 e!2719135)))

(assert (=> b!4368894 (= res!1797649 (or (not ((_ is Cons!49089) (toList!3089 lm!1707))) (not (= (_1!27586 (h!54670 (toList!3089 lm!1707))) hash!377))))))

(assert (=> b!4368894 e!2719136))

(declare-fun res!1797645 () Bool)

(assert (=> b!4368894 (=> (not res!1797645) (not e!2719136))))

(assert (=> b!4368894 (= res!1797645 (forall!9225 (toList!3089 lt!1580365) lambda!143285))))

(declare-fun +!738 (ListLongMap!1739 tuple2!48584) ListLongMap!1739)

(assert (=> b!4368894 (= lt!1580365 (+!738 lm!1707 lt!1580370))))

(declare-fun newBucket!200 () List!49212)

(assert (=> b!4368894 (= lt!1580370 (tuple2!48585 hash!377 newBucket!200))))

(declare-datatypes ((Unit!73316 0))(
  ( (Unit!73317) )
))
(declare-fun lt!1580367 () Unit!73316)

(declare-fun addValidProp!199 (ListLongMap!1739 Int (_ BitVec 64) List!49212) Unit!73316)

(assert (=> b!4368894 (= lt!1580367 (addValidProp!199 lm!1707 lambda!143285 hash!377 newBucket!200))))

(assert (=> b!4368894 (forall!9225 (toList!3089 lm!1707) lambda!143285)))

(declare-fun b!4368896 () Bool)

(declare-fun res!1797655 () Bool)

(assert (=> b!4368896 (=> res!1797655 e!2719134)))

(declare-fun noDuplicateKeys!553 (List!49212) Bool)

(assert (=> b!4368896 (= res!1797655 (not (noDuplicateKeys!553 newBucket!200)))))

(declare-fun b!4368897 () Bool)

(assert (=> b!4368897 (= e!2719133 (not e!2719134))))

(declare-fun res!1797653 () Bool)

(assert (=> b!4368897 (=> res!1797653 e!2719134)))

(declare-fun lt!1580368 () List!49212)

(declare-fun newValue!99 () V!10696)

(declare-fun removePairForKey!521 (List!49212 K!10450) List!49212)

(assert (=> b!4368897 (= res!1797653 (not (= newBucket!200 (Cons!49088 (tuple2!48583 key!3918 newValue!99) (removePairForKey!521 lt!1580368 key!3918)))))))

(declare-fun lt!1580366 () tuple2!48584)

(declare-fun lt!1580369 () Unit!73316)

(declare-fun forallContained!1863 (List!49213 Int tuple2!48584) Unit!73316)

(assert (=> b!4368897 (= lt!1580369 (forallContained!1863 (toList!3089 lm!1707) lambda!143285 lt!1580366))))

(declare-fun contains!11381 (List!49213 tuple2!48584) Bool)

(assert (=> b!4368897 (contains!11381 (toList!3089 lm!1707) lt!1580366)))

(assert (=> b!4368897 (= lt!1580366 (tuple2!48585 hash!377 lt!1580368))))

(declare-fun lt!1580364 () Unit!73316)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!398 (List!49213 (_ BitVec 64) List!49212) Unit!73316)

(assert (=> b!4368897 (= lt!1580364 (lemmaGetValueByKeyImpliesContainsTuple!398 (toList!3089 lm!1707) hash!377 lt!1580368))))

(declare-fun apply!11405 (ListLongMap!1739 (_ BitVec 64)) List!49212)

(assert (=> b!4368897 (= lt!1580368 (apply!11405 lm!1707 hash!377))))

(declare-fun b!4368898 () Bool)

(declare-fun res!1797648 () Bool)

(assert (=> b!4368898 (=> (not res!1797648) (not e!2719133))))

(declare-datatypes ((Hashable!4945 0))(
  ( (HashableExt!4944 (__x!30648 Int)) )
))
(declare-fun hashF!1247 () Hashable!4945)

(declare-fun allKeysSameHash!511 (List!49212 (_ BitVec 64) Hashable!4945) Bool)

(assert (=> b!4368898 (= res!1797648 (allKeysSameHash!511 newBucket!200 hash!377 hashF!1247))))

(declare-fun b!4368899 () Bool)

(declare-fun res!1797654 () Bool)

(assert (=> b!4368899 (=> (not res!1797654) (not e!2719133))))

(declare-fun hash!1704 (Hashable!4945 K!10450) (_ BitVec 64))

(assert (=> b!4368899 (= res!1797654 (= (hash!1704 hashF!1247 key!3918) hash!377))))

(declare-fun b!4368900 () Bool)

(declare-fun res!1797652 () Bool)

(assert (=> b!4368900 (=> (not res!1797652) (not e!2719133))))

(declare-fun allKeysSameHashInMap!657 (ListLongMap!1739 Hashable!4945) Bool)

(assert (=> b!4368900 (= res!1797652 (allKeysSameHashInMap!657 lm!1707 hashF!1247))))

(declare-fun res!1797646 () Bool)

(assert (=> start!424072 (=> (not res!1797646) (not e!2719133))))

(assert (=> start!424072 (= res!1797646 (forall!9225 (toList!3089 lm!1707) lambda!143285))))

(assert (=> start!424072 e!2719133))

(assert (=> start!424072 e!2719138))

(assert (=> start!424072 true))

(declare-fun inv!64636 (ListLongMap!1739) Bool)

(assert (=> start!424072 (and (inv!64636 lm!1707) e!2719137)))

(assert (=> start!424072 tp_is_empty!25449))

(assert (=> start!424072 tp_is_empty!25451))

(declare-fun b!4368895 () Bool)

(declare-fun addToMapMapFromBucket!234 (List!49212 ListMap!2333) ListMap!2333)

(assert (=> b!4368895 (= e!2719135 (= (extractMap!612 (toList!3089 lt!1580365)) (addToMapMapFromBucket!234 newBucket!200 (extractMap!612 (t!356135 (toList!3089 lm!1707))))))))

(assert (= (and start!424072 res!1797646) b!4368900))

(assert (= (and b!4368900 res!1797652) b!4368899))

(assert (= (and b!4368899 res!1797654) b!4368898))

(assert (= (and b!4368898 res!1797648) b!4368892))

(assert (= (and b!4368892 res!1797650) b!4368893))

(assert (= (and b!4368893 res!1797651) b!4368897))

(assert (= (and b!4368897 (not res!1797653)) b!4368896))

(assert (= (and b!4368896 (not res!1797655)) b!4368894))

(assert (= (and b!4368894 res!1797645) b!4368888))

(assert (= (and b!4368888 res!1797647) b!4368890))

(assert (= (and b!4368894 (not res!1797649)) b!4368895))

(assert (= (and start!424072 ((_ is Cons!49088) newBucket!200)) b!4368891))

(assert (= start!424072 b!4368889))

(declare-fun m!4992589 () Bool)

(assert (=> b!4368892 m!4992589))

(assert (=> b!4368892 m!4992589))

(declare-fun m!4992591 () Bool)

(assert (=> b!4368892 m!4992591))

(declare-fun m!4992593 () Bool)

(assert (=> b!4368894 m!4992593))

(declare-fun m!4992595 () Bool)

(assert (=> b!4368894 m!4992595))

(declare-fun m!4992597 () Bool)

(assert (=> b!4368894 m!4992597))

(declare-fun m!4992599 () Bool)

(assert (=> b!4368894 m!4992599))

(declare-fun m!4992601 () Bool)

(assert (=> b!4368895 m!4992601))

(declare-fun m!4992603 () Bool)

(assert (=> b!4368895 m!4992603))

(assert (=> b!4368895 m!4992603))

(declare-fun m!4992605 () Bool)

(assert (=> b!4368895 m!4992605))

(assert (=> start!424072 m!4992599))

(declare-fun m!4992607 () Bool)

(assert (=> start!424072 m!4992607))

(declare-fun m!4992609 () Bool)

(assert (=> b!4368898 m!4992609))

(declare-fun m!4992611 () Bool)

(assert (=> b!4368893 m!4992611))

(declare-fun m!4992613 () Bool)

(assert (=> b!4368900 m!4992613))

(declare-fun m!4992615 () Bool)

(assert (=> b!4368896 m!4992615))

(declare-fun m!4992617 () Bool)

(assert (=> b!4368897 m!4992617))

(declare-fun m!4992619 () Bool)

(assert (=> b!4368897 m!4992619))

(declare-fun m!4992621 () Bool)

(assert (=> b!4368897 m!4992621))

(declare-fun m!4992623 () Bool)

(assert (=> b!4368897 m!4992623))

(declare-fun m!4992625 () Bool)

(assert (=> b!4368897 m!4992625))

(assert (=> b!4368888 m!4992593))

(declare-fun m!4992627 () Bool)

(assert (=> b!4368899 m!4992627))

(check-sat (not b!4368894) tp_is_empty!25449 (not start!424072) (not b!4368888) (not b!4368896) (not b!4368892) tp_is_empty!25451 (not b!4368900) (not b!4368898) (not b!4368897) (not b!4368895) (not b!4368891) (not b!4368899) (not b!4368893) (not b!4368889))
(check-sat)
(get-model)

(declare-fun bm!303633 () Bool)

(declare-fun call!303638 () Bool)

(declare-datatypes ((List!49215 0))(
  ( (Nil!49091) (Cons!49091 (h!54674 K!10450) (t!356137 List!49215)) )
))
(declare-fun e!2719163 () List!49215)

(declare-fun contains!11383 (List!49215 K!10450) Bool)

(assert (=> bm!303633 (= call!303638 (contains!11383 e!2719163 key!3918))))

(declare-fun c!742798 () Bool)

(declare-fun c!742800 () Bool)

(assert (=> bm!303633 (= c!742798 c!742800)))

(declare-fun d!1293740 () Bool)

(declare-fun e!2719164 () Bool)

(assert (=> d!1293740 e!2719164))

(declare-fun res!1797668 () Bool)

(assert (=> d!1293740 (=> res!1797668 e!2719164)))

(declare-fun e!2719160 () Bool)

(assert (=> d!1293740 (= res!1797668 e!2719160)))

(declare-fun res!1797670 () Bool)

(assert (=> d!1293740 (=> (not res!1797670) (not e!2719160))))

(declare-fun lt!1580390 () Bool)

(assert (=> d!1293740 (= res!1797670 (not lt!1580390))))

(declare-fun lt!1580397 () Bool)

(assert (=> d!1293740 (= lt!1580390 lt!1580397)))

(declare-fun lt!1580391 () Unit!73316)

(declare-fun e!2719161 () Unit!73316)

(assert (=> d!1293740 (= lt!1580391 e!2719161)))

(assert (=> d!1293740 (= c!742800 lt!1580397)))

(declare-fun containsKey!800 (List!49212 K!10450) Bool)

(assert (=> d!1293740 (= lt!1580397 (containsKey!800 (toList!3090 (extractMap!612 (toList!3089 lm!1707))) key!3918))))

(assert (=> d!1293740 (= (contains!11379 (extractMap!612 (toList!3089 lm!1707)) key!3918) lt!1580390)))

(declare-fun b!4368937 () Bool)

(declare-fun keys!16625 (ListMap!2333) List!49215)

(assert (=> b!4368937 (= e!2719163 (keys!16625 (extractMap!612 (toList!3089 lm!1707))))))

(declare-fun b!4368938 () Bool)

(declare-fun getKeysList!155 (List!49212) List!49215)

(assert (=> b!4368938 (= e!2719163 (getKeysList!155 (toList!3090 (extractMap!612 (toList!3089 lm!1707)))))))

(declare-fun b!4368939 () Bool)

(declare-fun e!2719162 () Bool)

(assert (=> b!4368939 (= e!2719162 (contains!11383 (keys!16625 (extractMap!612 (toList!3089 lm!1707))) key!3918))))

(declare-fun b!4368940 () Bool)

(assert (=> b!4368940 (= e!2719164 e!2719162)))

(declare-fun res!1797669 () Bool)

(assert (=> b!4368940 (=> (not res!1797669) (not e!2719162))))

(declare-datatypes ((Option!10527 0))(
  ( (None!10526) (Some!10526 (v!43486 V!10696)) )
))
(declare-fun isDefined!7820 (Option!10527) Bool)

(declare-fun getValueByKey!513 (List!49212 K!10450) Option!10527)

(assert (=> b!4368940 (= res!1797669 (isDefined!7820 (getValueByKey!513 (toList!3090 (extractMap!612 (toList!3089 lm!1707))) key!3918)))))

(declare-fun b!4368941 () Bool)

(assert (=> b!4368941 false))

(declare-fun lt!1580393 () Unit!73316)

(declare-fun lt!1580395 () Unit!73316)

(assert (=> b!4368941 (= lt!1580393 lt!1580395)))

(assert (=> b!4368941 (containsKey!800 (toList!3090 (extractMap!612 (toList!3089 lm!1707))) key!3918)))

(declare-fun lemmaInGetKeysListThenContainsKey!153 (List!49212 K!10450) Unit!73316)

(assert (=> b!4368941 (= lt!1580395 (lemmaInGetKeysListThenContainsKey!153 (toList!3090 (extractMap!612 (toList!3089 lm!1707))) key!3918))))

(declare-fun e!2719165 () Unit!73316)

(declare-fun Unit!73331 () Unit!73316)

(assert (=> b!4368941 (= e!2719165 Unit!73331)))

(declare-fun b!4368942 () Bool)

(declare-fun lt!1580394 () Unit!73316)

(assert (=> b!4368942 (= e!2719161 lt!1580394)))

(declare-fun lt!1580396 () Unit!73316)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!423 (List!49212 K!10450) Unit!73316)

(assert (=> b!4368942 (= lt!1580396 (lemmaContainsKeyImpliesGetValueByKeyDefined!423 (toList!3090 (extractMap!612 (toList!3089 lm!1707))) key!3918))))

(assert (=> b!4368942 (isDefined!7820 (getValueByKey!513 (toList!3090 (extractMap!612 (toList!3089 lm!1707))) key!3918))))

(declare-fun lt!1580392 () Unit!73316)

(assert (=> b!4368942 (= lt!1580392 lt!1580396)))

(declare-fun lemmaInListThenGetKeysListContains!152 (List!49212 K!10450) Unit!73316)

(assert (=> b!4368942 (= lt!1580394 (lemmaInListThenGetKeysListContains!152 (toList!3090 (extractMap!612 (toList!3089 lm!1707))) key!3918))))

(assert (=> b!4368942 call!303638))

(declare-fun b!4368943 () Bool)

(assert (=> b!4368943 (= e!2719160 (not (contains!11383 (keys!16625 (extractMap!612 (toList!3089 lm!1707))) key!3918)))))

(declare-fun b!4368944 () Bool)

(declare-fun Unit!73332 () Unit!73316)

(assert (=> b!4368944 (= e!2719165 Unit!73332)))

(declare-fun b!4368945 () Bool)

(assert (=> b!4368945 (= e!2719161 e!2719165)))

(declare-fun c!742799 () Bool)

(assert (=> b!4368945 (= c!742799 call!303638)))

(assert (= (and d!1293740 c!742800) b!4368942))

(assert (= (and d!1293740 (not c!742800)) b!4368945))

(assert (= (and b!4368945 c!742799) b!4368941))

(assert (= (and b!4368945 (not c!742799)) b!4368944))

(assert (= (or b!4368942 b!4368945) bm!303633))

(assert (= (and bm!303633 c!742798) b!4368938))

(assert (= (and bm!303633 (not c!742798)) b!4368937))

(assert (= (and d!1293740 res!1797670) b!4368943))

(assert (= (and d!1293740 (not res!1797668)) b!4368940))

(assert (= (and b!4368940 res!1797669) b!4368939))

(assert (=> b!4368939 m!4992589))

(declare-fun m!4992645 () Bool)

(assert (=> b!4368939 m!4992645))

(assert (=> b!4368939 m!4992645))

(declare-fun m!4992647 () Bool)

(assert (=> b!4368939 m!4992647))

(assert (=> b!4368937 m!4992589))

(assert (=> b!4368937 m!4992645))

(declare-fun m!4992649 () Bool)

(assert (=> b!4368941 m!4992649))

(declare-fun m!4992651 () Bool)

(assert (=> b!4368941 m!4992651))

(assert (=> d!1293740 m!4992649))

(declare-fun m!4992653 () Bool)

(assert (=> b!4368940 m!4992653))

(assert (=> b!4368940 m!4992653))

(declare-fun m!4992655 () Bool)

(assert (=> b!4368940 m!4992655))

(declare-fun m!4992657 () Bool)

(assert (=> bm!303633 m!4992657))

(declare-fun m!4992659 () Bool)

(assert (=> b!4368942 m!4992659))

(assert (=> b!4368942 m!4992653))

(assert (=> b!4368942 m!4992653))

(assert (=> b!4368942 m!4992655))

(declare-fun m!4992661 () Bool)

(assert (=> b!4368942 m!4992661))

(declare-fun m!4992663 () Bool)

(assert (=> b!4368938 m!4992663))

(assert (=> b!4368943 m!4992589))

(assert (=> b!4368943 m!4992645))

(assert (=> b!4368943 m!4992645))

(assert (=> b!4368943 m!4992647))

(assert (=> b!4368892 d!1293740))

(declare-fun bs!637801 () Bool)

(declare-fun d!1293752 () Bool)

(assert (= bs!637801 (and d!1293752 start!424072)))

(declare-fun lambda!143297 () Int)

(assert (=> bs!637801 (= lambda!143297 lambda!143285)))

(declare-fun lt!1580400 () ListMap!2333)

(declare-fun invariantList!707 (List!49212) Bool)

(assert (=> d!1293752 (invariantList!707 (toList!3090 lt!1580400))))

(declare-fun e!2719168 () ListMap!2333)

(assert (=> d!1293752 (= lt!1580400 e!2719168)))

(declare-fun c!742803 () Bool)

(assert (=> d!1293752 (= c!742803 ((_ is Cons!49089) (toList!3089 lm!1707)))))

(assert (=> d!1293752 (forall!9225 (toList!3089 lm!1707) lambda!143297)))

(assert (=> d!1293752 (= (extractMap!612 (toList!3089 lm!1707)) lt!1580400)))

(declare-fun b!4368950 () Bool)

(assert (=> b!4368950 (= e!2719168 (addToMapMapFromBucket!234 (_2!27586 (h!54670 (toList!3089 lm!1707))) (extractMap!612 (t!356135 (toList!3089 lm!1707)))))))

(declare-fun b!4368951 () Bool)

(assert (=> b!4368951 (= e!2719168 (ListMap!2334 Nil!49088))))

(assert (= (and d!1293752 c!742803) b!4368950))

(assert (= (and d!1293752 (not c!742803)) b!4368951))

(declare-fun m!4992665 () Bool)

(assert (=> d!1293752 m!4992665))

(declare-fun m!4992667 () Bool)

(assert (=> d!1293752 m!4992667))

(assert (=> b!4368950 m!4992603))

(assert (=> b!4368950 m!4992603))

(declare-fun m!4992669 () Bool)

(assert (=> b!4368950 m!4992669))

(assert (=> b!4368892 d!1293752))

(declare-fun d!1293754 () Bool)

(declare-fun e!2719173 () Bool)

(assert (=> d!1293754 e!2719173))

(declare-fun res!1797673 () Bool)

(assert (=> d!1293754 (=> res!1797673 e!2719173)))

(declare-fun lt!1580410 () Bool)

(assert (=> d!1293754 (= res!1797673 (not lt!1580410))))

(declare-fun lt!1580411 () Bool)

(assert (=> d!1293754 (= lt!1580410 lt!1580411)))

(declare-fun lt!1580412 () Unit!73316)

(declare-fun e!2719174 () Unit!73316)

(assert (=> d!1293754 (= lt!1580412 e!2719174)))

(declare-fun c!742806 () Bool)

(assert (=> d!1293754 (= c!742806 lt!1580411)))

(declare-fun containsKey!802 (List!49213 (_ BitVec 64)) Bool)

(assert (=> d!1293754 (= lt!1580411 (containsKey!802 (toList!3089 lm!1707) hash!377))))

(assert (=> d!1293754 (= (contains!11380 lm!1707 hash!377) lt!1580410)))

(declare-fun b!4368958 () Bool)

(declare-fun lt!1580409 () Unit!73316)

(assert (=> b!4368958 (= e!2719174 lt!1580409)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!425 (List!49213 (_ BitVec 64)) Unit!73316)

(assert (=> b!4368958 (= lt!1580409 (lemmaContainsKeyImpliesGetValueByKeyDefined!425 (toList!3089 lm!1707) hash!377))))

(declare-datatypes ((Option!10528 0))(
  ( (None!10527) (Some!10527 (v!43487 List!49212)) )
))
(declare-fun isDefined!7822 (Option!10528) Bool)

(declare-fun getValueByKey!514 (List!49213 (_ BitVec 64)) Option!10528)

(assert (=> b!4368958 (isDefined!7822 (getValueByKey!514 (toList!3089 lm!1707) hash!377))))

(declare-fun b!4368959 () Bool)

(declare-fun Unit!73334 () Unit!73316)

(assert (=> b!4368959 (= e!2719174 Unit!73334)))

(declare-fun b!4368960 () Bool)

(assert (=> b!4368960 (= e!2719173 (isDefined!7822 (getValueByKey!514 (toList!3089 lm!1707) hash!377)))))

(assert (= (and d!1293754 c!742806) b!4368958))

(assert (= (and d!1293754 (not c!742806)) b!4368959))

(assert (= (and d!1293754 (not res!1797673)) b!4368960))

(declare-fun m!4992671 () Bool)

(assert (=> d!1293754 m!4992671))

(declare-fun m!4992673 () Bool)

(assert (=> b!4368958 m!4992673))

(declare-fun m!4992675 () Bool)

(assert (=> b!4368958 m!4992675))

(assert (=> b!4368958 m!4992675))

(declare-fun m!4992677 () Bool)

(assert (=> b!4368958 m!4992677))

(assert (=> b!4368960 m!4992675))

(assert (=> b!4368960 m!4992675))

(assert (=> b!4368960 m!4992677))

(assert (=> b!4368893 d!1293754))

(declare-fun d!1293756 () Bool)

(declare-fun res!1797678 () Bool)

(declare-fun e!2719179 () Bool)

(assert (=> d!1293756 (=> res!1797678 e!2719179)))

(assert (=> d!1293756 (= res!1797678 ((_ is Nil!49089) (toList!3089 lm!1707)))))

(assert (=> d!1293756 (= (forall!9225 (toList!3089 lm!1707) lambda!143285) e!2719179)))

(declare-fun b!4368965 () Bool)

(declare-fun e!2719180 () Bool)

(assert (=> b!4368965 (= e!2719179 e!2719180)))

(declare-fun res!1797679 () Bool)

(assert (=> b!4368965 (=> (not res!1797679) (not e!2719180))))

(declare-fun dynLambda!20685 (Int tuple2!48584) Bool)

(assert (=> b!4368965 (= res!1797679 (dynLambda!20685 lambda!143285 (h!54670 (toList!3089 lm!1707))))))

(declare-fun b!4368966 () Bool)

(assert (=> b!4368966 (= e!2719180 (forall!9225 (t!356135 (toList!3089 lm!1707)) lambda!143285))))

(assert (= (and d!1293756 (not res!1797678)) b!4368965))

(assert (= (and b!4368965 res!1797679) b!4368966))

(declare-fun b_lambda!132831 () Bool)

(assert (=> (not b_lambda!132831) (not b!4368965)))

(declare-fun m!4992679 () Bool)

(assert (=> b!4368965 m!4992679))

(declare-fun m!4992681 () Bool)

(assert (=> b!4368966 m!4992681))

(assert (=> start!424072 d!1293756))

(declare-fun d!1293758 () Bool)

(declare-fun isStrictlySorted!134 (List!49213) Bool)

(assert (=> d!1293758 (= (inv!64636 lm!1707) (isStrictlySorted!134 (toList!3089 lm!1707)))))

(declare-fun bs!637802 () Bool)

(assert (= bs!637802 d!1293758))

(declare-fun m!4992683 () Bool)

(assert (=> bs!637802 m!4992683))

(assert (=> start!424072 d!1293758))

(declare-fun bs!637803 () Bool)

(declare-fun d!1293760 () Bool)

(assert (= bs!637803 (and d!1293760 start!424072)))

(declare-fun lambda!143300 () Int)

(assert (=> bs!637803 (not (= lambda!143300 lambda!143285))))

(declare-fun bs!637804 () Bool)

(assert (= bs!637804 (and d!1293760 d!1293752)))

(assert (=> bs!637804 (not (= lambda!143300 lambda!143297))))

(assert (=> d!1293760 true))

(assert (=> d!1293760 (= (allKeysSameHashInMap!657 lm!1707 hashF!1247) (forall!9225 (toList!3089 lm!1707) lambda!143300))))

(declare-fun bs!637805 () Bool)

(assert (= bs!637805 d!1293760))

(declare-fun m!4992685 () Bool)

(assert (=> bs!637805 m!4992685))

(assert (=> b!4368900 d!1293760))

(declare-fun d!1293762 () Bool)

(declare-fun hash!1705 (Hashable!4945 K!10450) (_ BitVec 64))

(assert (=> d!1293762 (= (hash!1704 hashF!1247 key!3918) (hash!1705 hashF!1247 key!3918))))

(declare-fun bs!637806 () Bool)

(assert (= bs!637806 d!1293762))

(declare-fun m!4992687 () Bool)

(assert (=> bs!637806 m!4992687))

(assert (=> b!4368899 d!1293762))

(declare-fun d!1293764 () Bool)

(declare-fun res!1797680 () Bool)

(declare-fun e!2719181 () Bool)

(assert (=> d!1293764 (=> res!1797680 e!2719181)))

(assert (=> d!1293764 (= res!1797680 ((_ is Nil!49089) (toList!3089 lt!1580365)))))

(assert (=> d!1293764 (= (forall!9225 (toList!3089 lt!1580365) lambda!143285) e!2719181)))

(declare-fun b!4368969 () Bool)

(declare-fun e!2719182 () Bool)

(assert (=> b!4368969 (= e!2719181 e!2719182)))

(declare-fun res!1797681 () Bool)

(assert (=> b!4368969 (=> (not res!1797681) (not e!2719182))))

(assert (=> b!4368969 (= res!1797681 (dynLambda!20685 lambda!143285 (h!54670 (toList!3089 lt!1580365))))))

(declare-fun b!4368970 () Bool)

(assert (=> b!4368970 (= e!2719182 (forall!9225 (t!356135 (toList!3089 lt!1580365)) lambda!143285))))

(assert (= (and d!1293764 (not res!1797680)) b!4368969))

(assert (= (and b!4368969 res!1797681) b!4368970))

(declare-fun b_lambda!132833 () Bool)

(assert (=> (not b_lambda!132833) (not b!4368969)))

(declare-fun m!4992689 () Bool)

(assert (=> b!4368969 m!4992689))

(declare-fun m!4992691 () Bool)

(assert (=> b!4368970 m!4992691))

(assert (=> b!4368888 d!1293764))

(declare-fun d!1293766 () Bool)

(assert (=> d!1293766 true))

(assert (=> d!1293766 true))

(declare-fun lambda!143303 () Int)

(declare-fun forall!9227 (List!49212 Int) Bool)

(assert (=> d!1293766 (= (allKeysSameHash!511 newBucket!200 hash!377 hashF!1247) (forall!9227 newBucket!200 lambda!143303))))

(declare-fun bs!637807 () Bool)

(assert (= bs!637807 d!1293766))

(declare-fun m!4992693 () Bool)

(assert (=> bs!637807 m!4992693))

(assert (=> b!4368898 d!1293766))

(declare-fun d!1293768 () Bool)

(declare-fun res!1797686 () Bool)

(declare-fun e!2719187 () Bool)

(assert (=> d!1293768 (=> res!1797686 e!2719187)))

(assert (=> d!1293768 (= res!1797686 (not ((_ is Cons!49088) newBucket!200)))))

(assert (=> d!1293768 (= (noDuplicateKeys!553 newBucket!200) e!2719187)))

(declare-fun b!4368981 () Bool)

(declare-fun e!2719188 () Bool)

(assert (=> b!4368981 (= e!2719187 e!2719188)))

(declare-fun res!1797687 () Bool)

(assert (=> b!4368981 (=> (not res!1797687) (not e!2719188))))

(declare-fun containsKey!803 (List!49212 K!10450) Bool)

(assert (=> b!4368981 (= res!1797687 (not (containsKey!803 (t!356134 newBucket!200) (_1!27585 (h!54669 newBucket!200)))))))

(declare-fun b!4368982 () Bool)

(assert (=> b!4368982 (= e!2719188 (noDuplicateKeys!553 (t!356134 newBucket!200)))))

(assert (= (and d!1293768 (not res!1797686)) b!4368981))

(assert (= (and b!4368981 res!1797687) b!4368982))

(declare-fun m!4992695 () Bool)

(assert (=> b!4368981 m!4992695))

(declare-fun m!4992697 () Bool)

(assert (=> b!4368982 m!4992697))

(assert (=> b!4368896 d!1293768))

(declare-fun d!1293770 () Bool)

(declare-fun get!15956 (Option!10528) List!49212)

(assert (=> d!1293770 (= (apply!11405 lm!1707 hash!377) (get!15956 (getValueByKey!514 (toList!3089 lm!1707) hash!377)))))

(declare-fun bs!637808 () Bool)

(assert (= bs!637808 d!1293770))

(assert (=> bs!637808 m!4992675))

(assert (=> bs!637808 m!4992675))

(declare-fun m!4992699 () Bool)

(assert (=> bs!637808 m!4992699))

(assert (=> b!4368897 d!1293770))

(declare-fun b!4368996 () Bool)

(declare-fun e!2719196 () List!49212)

(assert (=> b!4368996 (= e!2719196 Nil!49088)))

(declare-fun b!4368993 () Bool)

(declare-fun e!2719195 () List!49212)

(assert (=> b!4368993 (= e!2719195 (t!356134 lt!1580368))))

(declare-fun d!1293772 () Bool)

(declare-fun lt!1580455 () List!49212)

(assert (=> d!1293772 (not (containsKey!803 lt!1580455 key!3918))))

(assert (=> d!1293772 (= lt!1580455 e!2719195)))

(declare-fun c!742814 () Bool)

(assert (=> d!1293772 (= c!742814 (and ((_ is Cons!49088) lt!1580368) (= (_1!27585 (h!54669 lt!1580368)) key!3918)))))

(assert (=> d!1293772 (noDuplicateKeys!553 lt!1580368)))

(assert (=> d!1293772 (= (removePairForKey!521 lt!1580368 key!3918) lt!1580455)))

(declare-fun b!4368994 () Bool)

(assert (=> b!4368994 (= e!2719195 e!2719196)))

(declare-fun c!742813 () Bool)

(assert (=> b!4368994 (= c!742813 ((_ is Cons!49088) lt!1580368))))

(declare-fun b!4368995 () Bool)

(assert (=> b!4368995 (= e!2719196 (Cons!49088 (h!54669 lt!1580368) (removePairForKey!521 (t!356134 lt!1580368) key!3918)))))

(assert (= (and d!1293772 c!742814) b!4368993))

(assert (= (and d!1293772 (not c!742814)) b!4368994))

(assert (= (and b!4368994 c!742813) b!4368995))

(assert (= (and b!4368994 (not c!742813)) b!4368996))

(declare-fun m!4992701 () Bool)

(assert (=> d!1293772 m!4992701))

(declare-fun m!4992703 () Bool)

(assert (=> d!1293772 m!4992703))

(declare-fun m!4992705 () Bool)

(assert (=> b!4368995 m!4992705))

(assert (=> b!4368897 d!1293772))

(declare-fun d!1293774 () Bool)

(declare-fun lt!1580460 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7782 (List!49213) (InoxSet tuple2!48584))

(assert (=> d!1293774 (= lt!1580460 (select (content!7782 (toList!3089 lm!1707)) lt!1580366))))

(declare-fun e!2719206 () Bool)

(assert (=> d!1293774 (= lt!1580460 e!2719206)))

(declare-fun res!1797698 () Bool)

(assert (=> d!1293774 (=> (not res!1797698) (not e!2719206))))

(assert (=> d!1293774 (= res!1797698 ((_ is Cons!49089) (toList!3089 lm!1707)))))

(assert (=> d!1293774 (= (contains!11381 (toList!3089 lm!1707) lt!1580366) lt!1580460)))

(declare-fun b!4369005 () Bool)

(declare-fun e!2719205 () Bool)

(assert (=> b!4369005 (= e!2719206 e!2719205)))

(declare-fun res!1797699 () Bool)

(assert (=> b!4369005 (=> res!1797699 e!2719205)))

(assert (=> b!4369005 (= res!1797699 (= (h!54670 (toList!3089 lm!1707)) lt!1580366))))

(declare-fun b!4369006 () Bool)

(assert (=> b!4369006 (= e!2719205 (contains!11381 (t!356135 (toList!3089 lm!1707)) lt!1580366))))

(assert (= (and d!1293774 res!1797698) b!4369005))

(assert (= (and b!4369005 (not res!1797699)) b!4369006))

(declare-fun m!4992707 () Bool)

(assert (=> d!1293774 m!4992707))

(declare-fun m!4992709 () Bool)

(assert (=> d!1293774 m!4992709))

(declare-fun m!4992711 () Bool)

(assert (=> b!4369006 m!4992711))

(assert (=> b!4368897 d!1293774))

(declare-fun d!1293776 () Bool)

(assert (=> d!1293776 (contains!11381 (toList!3089 lm!1707) (tuple2!48585 hash!377 lt!1580368))))

(declare-fun lt!1580484 () Unit!73316)

(declare-fun choose!27190 (List!49213 (_ BitVec 64) List!49212) Unit!73316)

(assert (=> d!1293776 (= lt!1580484 (choose!27190 (toList!3089 lm!1707) hash!377 lt!1580368))))

(declare-fun e!2719212 () Bool)

(assert (=> d!1293776 e!2719212))

(declare-fun res!1797705 () Bool)

(assert (=> d!1293776 (=> (not res!1797705) (not e!2719212))))

(assert (=> d!1293776 (= res!1797705 (isStrictlySorted!134 (toList!3089 lm!1707)))))

(assert (=> d!1293776 (= (lemmaGetValueByKeyImpliesContainsTuple!398 (toList!3089 lm!1707) hash!377 lt!1580368) lt!1580484)))

(declare-fun b!4369016 () Bool)

(assert (=> b!4369016 (= e!2719212 (= (getValueByKey!514 (toList!3089 lm!1707) hash!377) (Some!10527 lt!1580368)))))

(assert (= (and d!1293776 res!1797705) b!4369016))

(declare-fun m!4992713 () Bool)

(assert (=> d!1293776 m!4992713))

(declare-fun m!4992715 () Bool)

(assert (=> d!1293776 m!4992715))

(assert (=> d!1293776 m!4992683))

(assert (=> b!4369016 m!4992675))

(assert (=> b!4368897 d!1293776))

(declare-fun d!1293778 () Bool)

(assert (=> d!1293778 (dynLambda!20685 lambda!143285 lt!1580366)))

(declare-fun lt!1580487 () Unit!73316)

(declare-fun choose!27191 (List!49213 Int tuple2!48584) Unit!73316)

(assert (=> d!1293778 (= lt!1580487 (choose!27191 (toList!3089 lm!1707) lambda!143285 lt!1580366))))

(declare-fun e!2719215 () Bool)

(assert (=> d!1293778 e!2719215))

(declare-fun res!1797708 () Bool)

(assert (=> d!1293778 (=> (not res!1797708) (not e!2719215))))

(assert (=> d!1293778 (= res!1797708 (forall!9225 (toList!3089 lm!1707) lambda!143285))))

(assert (=> d!1293778 (= (forallContained!1863 (toList!3089 lm!1707) lambda!143285 lt!1580366) lt!1580487)))

(declare-fun b!4369021 () Bool)

(assert (=> b!4369021 (= e!2719215 (contains!11381 (toList!3089 lm!1707) lt!1580366))))

(assert (= (and d!1293778 res!1797708) b!4369021))

(declare-fun b_lambda!132835 () Bool)

(assert (=> (not b_lambda!132835) (not d!1293778)))

(declare-fun m!4992751 () Bool)

(assert (=> d!1293778 m!4992751))

(declare-fun m!4992753 () Bool)

(assert (=> d!1293778 m!4992753))

(assert (=> d!1293778 m!4992599))

(assert (=> b!4369021 m!4992621))

(assert (=> b!4368897 d!1293778))

(declare-fun bs!637818 () Bool)

(declare-fun d!1293782 () Bool)

(assert (= bs!637818 (and d!1293782 start!424072)))

(declare-fun lambda!143337 () Int)

(assert (=> bs!637818 (= lambda!143337 lambda!143285)))

(declare-fun bs!637819 () Bool)

(assert (= bs!637819 (and d!1293782 d!1293752)))

(assert (=> bs!637819 (= lambda!143337 lambda!143297)))

(declare-fun bs!637820 () Bool)

(assert (= bs!637820 (and d!1293782 d!1293760)))

(assert (=> bs!637820 (not (= lambda!143337 lambda!143300))))

(declare-fun lt!1580489 () ListMap!2333)

(assert (=> d!1293782 (invariantList!707 (toList!3090 lt!1580489))))

(declare-fun e!2719217 () ListMap!2333)

(assert (=> d!1293782 (= lt!1580489 e!2719217)))

(declare-fun c!742817 () Bool)

(assert (=> d!1293782 (= c!742817 ((_ is Cons!49089) (toList!3089 lt!1580365)))))

(assert (=> d!1293782 (forall!9225 (toList!3089 lt!1580365) lambda!143337)))

(assert (=> d!1293782 (= (extractMap!612 (toList!3089 lt!1580365)) lt!1580489)))

(declare-fun b!4369024 () Bool)

(assert (=> b!4369024 (= e!2719217 (addToMapMapFromBucket!234 (_2!27586 (h!54670 (toList!3089 lt!1580365))) (extractMap!612 (t!356135 (toList!3089 lt!1580365)))))))

(declare-fun b!4369025 () Bool)

(assert (=> b!4369025 (= e!2719217 (ListMap!2334 Nil!49088))))

(assert (= (and d!1293782 c!742817) b!4369024))

(assert (= (and d!1293782 (not c!742817)) b!4369025))

(declare-fun m!4992763 () Bool)

(assert (=> d!1293782 m!4992763))

(declare-fun m!4992765 () Bool)

(assert (=> d!1293782 m!4992765))

(declare-fun m!4992767 () Bool)

(assert (=> b!4369024 m!4992767))

(assert (=> b!4369024 m!4992767))

(declare-fun m!4992769 () Bool)

(assert (=> b!4369024 m!4992769))

(assert (=> b!4368895 d!1293782))

(declare-fun bs!637832 () Bool)

(declare-fun b!4369126 () Bool)

(assert (= bs!637832 (and b!4369126 d!1293766)))

(declare-fun lambda!143367 () Int)

(assert (=> bs!637832 (not (= lambda!143367 lambda!143303))))

(assert (=> b!4369126 true))

(declare-fun bs!637833 () Bool)

(declare-fun b!4369130 () Bool)

(assert (= bs!637833 (and b!4369130 d!1293766)))

(declare-fun lambda!143368 () Int)

(assert (=> bs!637833 (not (= lambda!143368 lambda!143303))))

(declare-fun bs!637834 () Bool)

(assert (= bs!637834 (and b!4369130 b!4369126)))

(assert (=> bs!637834 (= lambda!143368 lambda!143367)))

(assert (=> b!4369130 true))

(declare-fun lambda!143369 () Int)

(assert (=> bs!637833 (not (= lambda!143369 lambda!143303))))

(declare-fun lt!1580616 () ListMap!2333)

(assert (=> bs!637834 (= (= lt!1580616 (extractMap!612 (t!356135 (toList!3089 lm!1707)))) (= lambda!143369 lambda!143367))))

(assert (=> b!4369130 (= (= lt!1580616 (extractMap!612 (t!356135 (toList!3089 lm!1707)))) (= lambda!143369 lambda!143368))))

(assert (=> b!4369130 true))

(declare-fun bs!637835 () Bool)

(declare-fun d!1293786 () Bool)

(assert (= bs!637835 (and d!1293786 d!1293766)))

(declare-fun lambda!143370 () Int)

(assert (=> bs!637835 (not (= lambda!143370 lambda!143303))))

(declare-fun bs!637836 () Bool)

(assert (= bs!637836 (and d!1293786 b!4369126)))

(declare-fun lt!1580601 () ListMap!2333)

(assert (=> bs!637836 (= (= lt!1580601 (extractMap!612 (t!356135 (toList!3089 lm!1707)))) (= lambda!143370 lambda!143367))))

(declare-fun bs!637837 () Bool)

(assert (= bs!637837 (and d!1293786 b!4369130)))

(assert (=> bs!637837 (= (= lt!1580601 (extractMap!612 (t!356135 (toList!3089 lm!1707)))) (= lambda!143370 lambda!143368))))

(assert (=> bs!637837 (= (= lt!1580601 lt!1580616) (= lambda!143370 lambda!143369))))

(assert (=> d!1293786 true))

(declare-fun e!2719288 () Bool)

(assert (=> d!1293786 e!2719288))

(declare-fun res!1797758 () Bool)

(assert (=> d!1293786 (=> (not res!1797758) (not e!2719288))))

(assert (=> d!1293786 (= res!1797758 (forall!9227 newBucket!200 lambda!143370))))

(declare-fun e!2719287 () ListMap!2333)

(assert (=> d!1293786 (= lt!1580601 e!2719287)))

(declare-fun c!742839 () Bool)

(assert (=> d!1293786 (= c!742839 ((_ is Nil!49088) newBucket!200))))

(assert (=> d!1293786 (noDuplicateKeys!553 newBucket!200)))

(assert (=> d!1293786 (= (addToMapMapFromBucket!234 newBucket!200 (extractMap!612 (t!356135 (toList!3089 lm!1707)))) lt!1580601)))

(assert (=> b!4369126 (= e!2719287 (extractMap!612 (t!356135 (toList!3089 lm!1707))))))

(declare-fun lt!1580608 () Unit!73316)

(declare-fun call!303658 () Unit!73316)

(assert (=> b!4369126 (= lt!1580608 call!303658)))

(declare-fun call!303659 () Bool)

(assert (=> b!4369126 call!303659))

(declare-fun lt!1580605 () Unit!73316)

(assert (=> b!4369126 (= lt!1580605 lt!1580608)))

(declare-fun call!303657 () Bool)

(assert (=> b!4369126 call!303657))

(declare-fun lt!1580606 () Unit!73316)

(declare-fun Unit!73335 () Unit!73316)

(assert (=> b!4369126 (= lt!1580606 Unit!73335)))

(declare-fun bm!303652 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!89 (ListMap!2333) Unit!73316)

(assert (=> bm!303652 (= call!303658 (lemmaContainsAllItsOwnKeys!89 (extractMap!612 (t!356135 (toList!3089 lm!1707)))))))

(declare-fun bm!303653 () Bool)

(declare-fun lt!1580599 () ListMap!2333)

(assert (=> bm!303653 (= call!303657 (forall!9227 (ite c!742839 (toList!3090 (extractMap!612 (t!356135 (toList!3089 lm!1707)))) (toList!3090 lt!1580599)) (ite c!742839 lambda!143367 lambda!143369)))))

(declare-fun b!4369127 () Bool)

(declare-fun e!2719289 () Bool)

(assert (=> b!4369127 (= e!2719289 call!303659)))

(declare-fun b!4369128 () Bool)

(assert (=> b!4369128 (= e!2719288 (invariantList!707 (toList!3090 lt!1580601)))))

(declare-fun b!4369129 () Bool)

(declare-fun res!1797757 () Bool)

(assert (=> b!4369129 (=> (not res!1797757) (not e!2719288))))

(assert (=> b!4369129 (= res!1797757 (forall!9227 (toList!3090 (extractMap!612 (t!356135 (toList!3089 lm!1707)))) lambda!143370))))

(assert (=> b!4369130 (= e!2719287 lt!1580616)))

(declare-fun +!740 (ListMap!2333 tuple2!48582) ListMap!2333)

(assert (=> b!4369130 (= lt!1580599 (+!740 (extractMap!612 (t!356135 (toList!3089 lm!1707))) (h!54669 newBucket!200)))))

(assert (=> b!4369130 (= lt!1580616 (addToMapMapFromBucket!234 (t!356134 newBucket!200) (+!740 (extractMap!612 (t!356135 (toList!3089 lm!1707))) (h!54669 newBucket!200))))))

(declare-fun lt!1580612 () Unit!73316)

(assert (=> b!4369130 (= lt!1580612 call!303658)))

(assert (=> b!4369130 (forall!9227 (toList!3090 (extractMap!612 (t!356135 (toList!3089 lm!1707)))) lambda!143368)))

(declare-fun lt!1580597 () Unit!73316)

(assert (=> b!4369130 (= lt!1580597 lt!1580612)))

(assert (=> b!4369130 (forall!9227 (toList!3090 lt!1580599) lambda!143369)))

(declare-fun lt!1580600 () Unit!73316)

(declare-fun Unit!73336 () Unit!73316)

(assert (=> b!4369130 (= lt!1580600 Unit!73336)))

(assert (=> b!4369130 (forall!9227 (t!356134 newBucket!200) lambda!143369)))

(declare-fun lt!1580604 () Unit!73316)

(declare-fun Unit!73337 () Unit!73316)

(assert (=> b!4369130 (= lt!1580604 Unit!73337)))

(declare-fun lt!1580614 () Unit!73316)

(declare-fun Unit!73338 () Unit!73316)

(assert (=> b!4369130 (= lt!1580614 Unit!73338)))

(declare-fun lt!1580598 () Unit!73316)

(declare-fun forallContained!1865 (List!49212 Int tuple2!48582) Unit!73316)

(assert (=> b!4369130 (= lt!1580598 (forallContained!1865 (toList!3090 lt!1580599) lambda!143369 (h!54669 newBucket!200)))))

(assert (=> b!4369130 (contains!11379 lt!1580599 (_1!27585 (h!54669 newBucket!200)))))

(declare-fun lt!1580609 () Unit!73316)

(declare-fun Unit!73339 () Unit!73316)

(assert (=> b!4369130 (= lt!1580609 Unit!73339)))

(assert (=> b!4369130 (contains!11379 lt!1580616 (_1!27585 (h!54669 newBucket!200)))))

(declare-fun lt!1580611 () Unit!73316)

(declare-fun Unit!73340 () Unit!73316)

(assert (=> b!4369130 (= lt!1580611 Unit!73340)))

(assert (=> b!4369130 (forall!9227 newBucket!200 lambda!143369)))

(declare-fun lt!1580610 () Unit!73316)

(declare-fun Unit!73341 () Unit!73316)

(assert (=> b!4369130 (= lt!1580610 Unit!73341)))

(assert (=> b!4369130 call!303657))

(declare-fun lt!1580607 () Unit!73316)

(declare-fun Unit!73342 () Unit!73316)

(assert (=> b!4369130 (= lt!1580607 Unit!73342)))

(declare-fun lt!1580596 () Unit!73316)

(declare-fun Unit!73343 () Unit!73316)

(assert (=> b!4369130 (= lt!1580596 Unit!73343)))

(declare-fun lt!1580603 () Unit!73316)

(declare-fun addForallContainsKeyThenBeforeAdding!89 (ListMap!2333 ListMap!2333 K!10450 V!10696) Unit!73316)

(assert (=> b!4369130 (= lt!1580603 (addForallContainsKeyThenBeforeAdding!89 (extractMap!612 (t!356135 (toList!3089 lm!1707))) lt!1580616 (_1!27585 (h!54669 newBucket!200)) (_2!27585 (h!54669 newBucket!200))))))

(assert (=> b!4369130 (forall!9227 (toList!3090 (extractMap!612 (t!356135 (toList!3089 lm!1707)))) lambda!143369)))

(declare-fun lt!1580602 () Unit!73316)

(assert (=> b!4369130 (= lt!1580602 lt!1580603)))

(assert (=> b!4369130 (forall!9227 (toList!3090 (extractMap!612 (t!356135 (toList!3089 lm!1707)))) lambda!143369)))

(declare-fun lt!1580615 () Unit!73316)

(declare-fun Unit!73344 () Unit!73316)

(assert (=> b!4369130 (= lt!1580615 Unit!73344)))

(declare-fun res!1797756 () Bool)

(assert (=> b!4369130 (= res!1797756 (forall!9227 newBucket!200 lambda!143369))))

(assert (=> b!4369130 (=> (not res!1797756) (not e!2719289))))

(assert (=> b!4369130 e!2719289))

(declare-fun lt!1580613 () Unit!73316)

(declare-fun Unit!73345 () Unit!73316)

(assert (=> b!4369130 (= lt!1580613 Unit!73345)))

(declare-fun bm!303654 () Bool)

(assert (=> bm!303654 (= call!303659 (forall!9227 (toList!3090 (extractMap!612 (t!356135 (toList!3089 lm!1707)))) (ite c!742839 lambda!143367 lambda!143369)))))

(assert (= (and d!1293786 c!742839) b!4369126))

(assert (= (and d!1293786 (not c!742839)) b!4369130))

(assert (= (and b!4369130 res!1797756) b!4369127))

(assert (= (or b!4369126 b!4369130) bm!303652))

(assert (= (or b!4369126 b!4369127) bm!303654))

(assert (= (or b!4369126 b!4369130) bm!303653))

(assert (= (and d!1293786 res!1797758) b!4369129))

(assert (= (and b!4369129 res!1797757) b!4369128))

(declare-fun m!4992867 () Bool)

(assert (=> bm!303653 m!4992867))

(declare-fun m!4992869 () Bool)

(assert (=> d!1293786 m!4992869))

(assert (=> d!1293786 m!4992615))

(declare-fun m!4992871 () Bool)

(assert (=> b!4369128 m!4992871))

(declare-fun m!4992873 () Bool)

(assert (=> bm!303654 m!4992873))

(assert (=> bm!303652 m!4992603))

(declare-fun m!4992875 () Bool)

(assert (=> bm!303652 m!4992875))

(declare-fun m!4992877 () Bool)

(assert (=> b!4369129 m!4992877))

(declare-fun m!4992879 () Bool)

(assert (=> b!4369130 m!4992879))

(assert (=> b!4369130 m!4992603))

(declare-fun m!4992881 () Bool)

(assert (=> b!4369130 m!4992881))

(declare-fun m!4992883 () Bool)

(assert (=> b!4369130 m!4992883))

(declare-fun m!4992885 () Bool)

(assert (=> b!4369130 m!4992885))

(declare-fun m!4992887 () Bool)

(assert (=> b!4369130 m!4992887))

(declare-fun m!4992889 () Bool)

(assert (=> b!4369130 m!4992889))

(declare-fun m!4992891 () Bool)

(assert (=> b!4369130 m!4992891))

(declare-fun m!4992893 () Bool)

(assert (=> b!4369130 m!4992893))

(assert (=> b!4369130 m!4992603))

(assert (=> b!4369130 m!4992883))

(declare-fun m!4992895 () Bool)

(assert (=> b!4369130 m!4992895))

(assert (=> b!4369130 m!4992893))

(declare-fun m!4992897 () Bool)

(assert (=> b!4369130 m!4992897))

(declare-fun m!4992899 () Bool)

(assert (=> b!4369130 m!4992899))

(assert (=> b!4369130 m!4992897))

(assert (=> b!4368895 d!1293786))

(declare-fun bs!637838 () Bool)

(declare-fun d!1293822 () Bool)

(assert (= bs!637838 (and d!1293822 start!424072)))

(declare-fun lambda!143371 () Int)

(assert (=> bs!637838 (= lambda!143371 lambda!143285)))

(declare-fun bs!637839 () Bool)

(assert (= bs!637839 (and d!1293822 d!1293752)))

(assert (=> bs!637839 (= lambda!143371 lambda!143297)))

(declare-fun bs!637840 () Bool)

(assert (= bs!637840 (and d!1293822 d!1293760)))

(assert (=> bs!637840 (not (= lambda!143371 lambda!143300))))

(declare-fun bs!637841 () Bool)

(assert (= bs!637841 (and d!1293822 d!1293782)))

(assert (=> bs!637841 (= lambda!143371 lambda!143337)))

(declare-fun lt!1580617 () ListMap!2333)

(assert (=> d!1293822 (invariantList!707 (toList!3090 lt!1580617))))

(declare-fun e!2719290 () ListMap!2333)

(assert (=> d!1293822 (= lt!1580617 e!2719290)))

(declare-fun c!742840 () Bool)

(assert (=> d!1293822 (= c!742840 ((_ is Cons!49089) (t!356135 (toList!3089 lm!1707))))))

(assert (=> d!1293822 (forall!9225 (t!356135 (toList!3089 lm!1707)) lambda!143371)))

(assert (=> d!1293822 (= (extractMap!612 (t!356135 (toList!3089 lm!1707))) lt!1580617)))

(declare-fun b!4369133 () Bool)

(assert (=> b!4369133 (= e!2719290 (addToMapMapFromBucket!234 (_2!27586 (h!54670 (t!356135 (toList!3089 lm!1707)))) (extractMap!612 (t!356135 (t!356135 (toList!3089 lm!1707))))))))

(declare-fun b!4369134 () Bool)

(assert (=> b!4369134 (= e!2719290 (ListMap!2334 Nil!49088))))

(assert (= (and d!1293822 c!742840) b!4369133))

(assert (= (and d!1293822 (not c!742840)) b!4369134))

(declare-fun m!4992901 () Bool)

(assert (=> d!1293822 m!4992901))

(declare-fun m!4992903 () Bool)

(assert (=> d!1293822 m!4992903))

(declare-fun m!4992905 () Bool)

(assert (=> b!4369133 m!4992905))

(assert (=> b!4369133 m!4992905))

(declare-fun m!4992907 () Bool)

(assert (=> b!4369133 m!4992907))

(assert (=> b!4368895 d!1293822))

(assert (=> b!4368894 d!1293764))

(declare-fun d!1293824 () Bool)

(declare-fun e!2719293 () Bool)

(assert (=> d!1293824 e!2719293))

(declare-fun res!1797764 () Bool)

(assert (=> d!1293824 (=> (not res!1797764) (not e!2719293))))

(declare-fun lt!1580629 () ListLongMap!1739)

(assert (=> d!1293824 (= res!1797764 (contains!11380 lt!1580629 (_1!27586 lt!1580370)))))

(declare-fun lt!1580626 () List!49213)

(assert (=> d!1293824 (= lt!1580629 (ListLongMap!1740 lt!1580626))))

(declare-fun lt!1580628 () Unit!73316)

(declare-fun lt!1580627 () Unit!73316)

(assert (=> d!1293824 (= lt!1580628 lt!1580627)))

(assert (=> d!1293824 (= (getValueByKey!514 lt!1580626 (_1!27586 lt!1580370)) (Some!10527 (_2!27586 lt!1580370)))))

(declare-fun lemmaContainsTupThenGetReturnValue!278 (List!49213 (_ BitVec 64) List!49212) Unit!73316)

(assert (=> d!1293824 (= lt!1580627 (lemmaContainsTupThenGetReturnValue!278 lt!1580626 (_1!27586 lt!1580370) (_2!27586 lt!1580370)))))

(declare-fun insertStrictlySorted!161 (List!49213 (_ BitVec 64) List!49212) List!49213)

(assert (=> d!1293824 (= lt!1580626 (insertStrictlySorted!161 (toList!3089 lm!1707) (_1!27586 lt!1580370) (_2!27586 lt!1580370)))))

(assert (=> d!1293824 (= (+!738 lm!1707 lt!1580370) lt!1580629)))

(declare-fun b!4369139 () Bool)

(declare-fun res!1797763 () Bool)

(assert (=> b!4369139 (=> (not res!1797763) (not e!2719293))))

(assert (=> b!4369139 (= res!1797763 (= (getValueByKey!514 (toList!3089 lt!1580629) (_1!27586 lt!1580370)) (Some!10527 (_2!27586 lt!1580370))))))

(declare-fun b!4369140 () Bool)

(assert (=> b!4369140 (= e!2719293 (contains!11381 (toList!3089 lt!1580629) lt!1580370))))

(assert (= (and d!1293824 res!1797764) b!4369139))

(assert (= (and b!4369139 res!1797763) b!4369140))

(declare-fun m!4992909 () Bool)

(assert (=> d!1293824 m!4992909))

(declare-fun m!4992911 () Bool)

(assert (=> d!1293824 m!4992911))

(declare-fun m!4992913 () Bool)

(assert (=> d!1293824 m!4992913))

(declare-fun m!4992915 () Bool)

(assert (=> d!1293824 m!4992915))

(declare-fun m!4992917 () Bool)

(assert (=> b!4369139 m!4992917))

(declare-fun m!4992919 () Bool)

(assert (=> b!4369140 m!4992919))

(assert (=> b!4368894 d!1293824))

(declare-fun d!1293826 () Bool)

(assert (=> d!1293826 (forall!9225 (toList!3089 (+!738 lm!1707 (tuple2!48585 hash!377 newBucket!200))) lambda!143285)))

(declare-fun lt!1580632 () Unit!73316)

(declare-fun choose!27192 (ListLongMap!1739 Int (_ BitVec 64) List!49212) Unit!73316)

(assert (=> d!1293826 (= lt!1580632 (choose!27192 lm!1707 lambda!143285 hash!377 newBucket!200))))

(declare-fun e!2719296 () Bool)

(assert (=> d!1293826 e!2719296))

(declare-fun res!1797767 () Bool)

(assert (=> d!1293826 (=> (not res!1797767) (not e!2719296))))

(assert (=> d!1293826 (= res!1797767 (forall!9225 (toList!3089 lm!1707) lambda!143285))))

(assert (=> d!1293826 (= (addValidProp!199 lm!1707 lambda!143285 hash!377 newBucket!200) lt!1580632)))

(declare-fun b!4369144 () Bool)

(assert (=> b!4369144 (= e!2719296 (dynLambda!20685 lambda!143285 (tuple2!48585 hash!377 newBucket!200)))))

(assert (= (and d!1293826 res!1797767) b!4369144))

(declare-fun b_lambda!132851 () Bool)

(assert (=> (not b_lambda!132851) (not b!4369144)))

(declare-fun m!4992921 () Bool)

(assert (=> d!1293826 m!4992921))

(declare-fun m!4992923 () Bool)

(assert (=> d!1293826 m!4992923))

(declare-fun m!4992925 () Bool)

(assert (=> d!1293826 m!4992925))

(assert (=> d!1293826 m!4992599))

(declare-fun m!4992927 () Bool)

(assert (=> b!4369144 m!4992927))

(assert (=> b!4368894 d!1293826))

(assert (=> b!4368894 d!1293756))

(declare-fun tp!1330866 () Bool)

(declare-fun e!2719299 () Bool)

(declare-fun b!4369149 () Bool)

(assert (=> b!4369149 (= e!2719299 (and tp_is_empty!25449 tp_is_empty!25451 tp!1330866))))

(assert (=> b!4368891 (= tp!1330853 e!2719299)))

(assert (= (and b!4368891 ((_ is Cons!49088) (t!356134 newBucket!200))) b!4369149))

(declare-fun b!4369154 () Bool)

(declare-fun e!2719302 () Bool)

(declare-fun tp!1330871 () Bool)

(declare-fun tp!1330872 () Bool)

(assert (=> b!4369154 (= e!2719302 (and tp!1330871 tp!1330872))))

(assert (=> b!4368889 (= tp!1330854 e!2719302)))

(assert (= (and b!4368889 ((_ is Cons!49089) (toList!3089 lm!1707))) b!4369154))

(declare-fun b_lambda!132853 () Bool)

(assert (= b_lambda!132831 (or start!424072 b_lambda!132853)))

(declare-fun bs!637842 () Bool)

(declare-fun d!1293828 () Bool)

(assert (= bs!637842 (and d!1293828 start!424072)))

(assert (=> bs!637842 (= (dynLambda!20685 lambda!143285 (h!54670 (toList!3089 lm!1707))) (noDuplicateKeys!553 (_2!27586 (h!54670 (toList!3089 lm!1707)))))))

(declare-fun m!4992929 () Bool)

(assert (=> bs!637842 m!4992929))

(assert (=> b!4368965 d!1293828))

(declare-fun b_lambda!132855 () Bool)

(assert (= b_lambda!132851 (or start!424072 b_lambda!132855)))

(declare-fun bs!637843 () Bool)

(declare-fun d!1293830 () Bool)

(assert (= bs!637843 (and d!1293830 start!424072)))

(assert (=> bs!637843 (= (dynLambda!20685 lambda!143285 (tuple2!48585 hash!377 newBucket!200)) (noDuplicateKeys!553 (_2!27586 (tuple2!48585 hash!377 newBucket!200))))))

(declare-fun m!4992931 () Bool)

(assert (=> bs!637843 m!4992931))

(assert (=> b!4369144 d!1293830))

(declare-fun b_lambda!132857 () Bool)

(assert (= b_lambda!132835 (or start!424072 b_lambda!132857)))

(declare-fun bs!637844 () Bool)

(declare-fun d!1293832 () Bool)

(assert (= bs!637844 (and d!1293832 start!424072)))

(assert (=> bs!637844 (= (dynLambda!20685 lambda!143285 lt!1580366) (noDuplicateKeys!553 (_2!27586 lt!1580366)))))

(declare-fun m!4992933 () Bool)

(assert (=> bs!637844 m!4992933))

(assert (=> d!1293778 d!1293832))

(declare-fun b_lambda!132859 () Bool)

(assert (= b_lambda!132833 (or start!424072 b_lambda!132859)))

(declare-fun bs!637845 () Bool)

(declare-fun d!1293834 () Bool)

(assert (= bs!637845 (and d!1293834 start!424072)))

(assert (=> bs!637845 (= (dynLambda!20685 lambda!143285 (h!54670 (toList!3089 lt!1580365))) (noDuplicateKeys!553 (_2!27586 (h!54670 (toList!3089 lt!1580365)))))))

(declare-fun m!4992935 () Bool)

(assert (=> bs!637845 m!4992935))

(assert (=> b!4368969 d!1293834))

(check-sat (not b!4369129) (not b!4369024) tp_is_empty!25449 (not d!1293766) (not d!1293752) (not b!4368958) (not bm!303654) (not d!1293776) (not b!4369149) (not d!1293760) (not b!4368941) (not d!1293740) (not bs!637845) (not b!4368939) (not d!1293826) (not b!4368943) (not b_lambda!132853) (not bs!637843) (not b!4369021) (not b!4369154) (not d!1293754) (not b!4368982) (not b!4369006) (not b!4369128) (not b_lambda!132857) (not d!1293772) (not bs!637842) (not d!1293774) (not b!4369139) (not d!1293758) (not b!4368970) (not b!4369130) (not bm!303653) (not b!4369133) (not b!4369016) (not b!4368981) (not d!1293762) (not b!4369140) (not d!1293786) (not b!4368940) (not b_lambda!132855) (not bm!303652) tp_is_empty!25451 (not b!4368960) (not d!1293824) (not b_lambda!132859) (not d!1293822) (not b!4368950) (not b!4368937) (not b!4368995) (not d!1293770) (not bm!303633) (not d!1293782) (not bs!637844) (not b!4368966) (not b!4368938) (not b!4368942) (not d!1293778))
(check-sat)
