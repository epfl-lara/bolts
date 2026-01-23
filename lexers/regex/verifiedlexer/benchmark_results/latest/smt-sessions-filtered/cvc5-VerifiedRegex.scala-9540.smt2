; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!502984 () Bool)

(assert start!502984)

(declare-fun b!4836678 () Bool)

(assert (=> b!4836678 true))

(declare-fun b!4836676 () Bool)

(declare-fun e!3022680 () Bool)

(declare-fun tp!1363503 () Bool)

(assert (=> b!4836676 (= e!3022680 tp!1363503)))

(declare-fun b!4836677 () Bool)

(declare-fun e!3022682 () Bool)

(declare-datatypes ((K!16987 0))(
  ( (K!16988 (val!21895 Int)) )
))
(declare-datatypes ((V!17233 0))(
  ( (V!17234 (val!21896 Int)) )
))
(declare-datatypes ((tuple2!58662 0))(
  ( (tuple2!58663 (_1!32625 K!16987) (_2!32625 V!17233)) )
))
(declare-datatypes ((List!55364 0))(
  ( (Nil!55240) (Cons!55240 (h!61675 tuple2!58662) (t!362860 List!55364)) )
))
(declare-datatypes ((tuple2!58664 0))(
  ( (tuple2!58665 (_1!32626 (_ BitVec 64)) (_2!32626 List!55364)) )
))
(declare-datatypes ((List!55365 0))(
  ( (Nil!55241) (Cons!55241 (h!61676 tuple2!58664) (t!362861 List!55365)) )
))
(declare-datatypes ((ListLongMap!6197 0))(
  ( (ListLongMap!6198 (toList!7661 List!55365)) )
))
(declare-fun lm!2671 () ListLongMap!6197)

(declare-fun lt!1982067 () tuple2!58662)

(declare-fun contains!19040 (List!55364 tuple2!58662) Bool)

(assert (=> b!4836677 (= e!3022682 (contains!19040 (_2!32626 (h!61676 (toList!7661 lm!2671))) lt!1982067))))

(declare-fun e!3022681 () Bool)

(declare-fun lambda!239683 () Int)

(declare-fun forall!12770 (List!55364 Int) Bool)

(assert (=> b!4836678 (= e!3022681 (not (forall!12770 (_2!32626 (h!61676 (toList!7661 lm!2671))) lambda!239683)))))

(declare-datatypes ((ListMap!7019 0))(
  ( (ListMap!7020 (toList!7662 List!55364)) )
))
(declare-fun lt!1982070 () ListMap!7019)

(declare-fun lt!1982066 () ListMap!7019)

(assert (=> b!4836678 (= lt!1982070 lt!1982066)))

(declare-fun lt!1982069 () ListMap!7019)

(declare-fun addToMapMapFromBucket!1869 (List!55364 ListMap!7019) ListMap!7019)

(assert (=> b!4836678 (= lt!1982066 (addToMapMapFromBucket!1869 (_2!32626 (h!61676 (toList!7661 lm!2671))) lt!1982069))))

(declare-fun extractMap!2729 (List!55365) ListMap!7019)

(assert (=> b!4836678 (= lt!1982070 (extractMap!2729 (toList!7661 lm!2671)))))

(assert (=> b!4836678 (= lt!1982069 (extractMap!2729 (t!362861 (toList!7661 lm!2671))))))

(assert (=> b!4836678 e!3022682))

(declare-fun res!2061057 () Bool)

(assert (=> b!4836678 (=> (not res!2061057) (not e!3022682))))

(declare-fun head!10375 (List!55365) tuple2!58664)

(assert (=> b!4836678 (= res!2061057 (contains!19040 (_2!32626 (head!10375 (toList!7661 lm!2671))) lt!1982067))))

(declare-fun key!6540 () K!16987)

(declare-fun lt!1982071 () V!17233)

(assert (=> b!4836678 (= lt!1982067 (tuple2!58663 key!6540 lt!1982071))))

(declare-datatypes ((Unit!144630 0))(
  ( (Unit!144631) )
))
(declare-fun lt!1982068 () Unit!144630)

(declare-datatypes ((Hashable!7367 0))(
  ( (HashableExt!7366 (__x!33642 Int)) )
))
(declare-fun hashF!1662 () Hashable!7367)

(declare-fun lemmaInPairListHeadThenGetValueInTuple!11 (ListLongMap!6197 K!16987 V!17233 Hashable!7367) Unit!144630)

(assert (=> b!4836678 (= lt!1982068 (lemmaInPairListHeadThenGetValueInTuple!11 lm!2671 key!6540 lt!1982071 hashF!1662))))

(declare-fun getValue!181 (List!55365 K!16987) V!17233)

(assert (=> b!4836678 (= lt!1982071 (getValue!181 (toList!7661 lm!2671) key!6540))))

(declare-fun b!4836679 () Bool)

(declare-fun res!2061058 () Bool)

(assert (=> b!4836679 (=> (not res!2061058) (not e!3022681))))

(declare-fun allKeysSameHashInMap!2683 (ListLongMap!6197 Hashable!7367) Bool)

(assert (=> b!4836679 (= res!2061058 (allKeysSameHashInMap!2683 lm!2671 hashF!1662))))

(declare-fun b!4836680 () Bool)

(declare-fun res!2061055 () Bool)

(assert (=> b!4836680 (=> (not res!2061055) (not e!3022681))))

(declare-fun containsKeyBiggerList!651 (List!55365 K!16987) Bool)

(assert (=> b!4836680 (= res!2061055 (containsKeyBiggerList!651 (toList!7661 lm!2671) key!6540))))

(declare-fun b!4836682 () Bool)

(declare-fun res!2061056 () Bool)

(assert (=> b!4836682 (=> (not res!2061056) (not e!3022681))))

(declare-fun containsKey!4517 (List!55364 K!16987) Bool)

(assert (=> b!4836682 (= res!2061056 (containsKey!4517 (_2!32626 (h!61676 (toList!7661 lm!2671))) key!6540))))

(declare-fun res!2061059 () Bool)

(assert (=> start!502984 (=> (not res!2061059) (not e!3022681))))

(declare-fun lambda!239682 () Int)

(declare-fun forall!12771 (List!55365 Int) Bool)

(assert (=> start!502984 (= res!2061059 (forall!12771 (toList!7661 lm!2671) lambda!239682))))

(assert (=> start!502984 e!3022681))

(declare-fun inv!70888 (ListLongMap!6197) Bool)

(assert (=> start!502984 (and (inv!70888 lm!2671) e!3022680)))

(assert (=> start!502984 true))

(declare-fun tp_is_empty!34833 () Bool)

(assert (=> start!502984 tp_is_empty!34833))

(declare-fun b!4836681 () Bool)

(declare-fun res!2061054 () Bool)

(assert (=> b!4836681 (=> (not res!2061054) (not e!3022681))))

(assert (=> b!4836681 (= res!2061054 (is-Cons!55241 (toList!7661 lm!2671)))))

(assert (= (and start!502984 res!2061059) b!4836679))

(assert (= (and b!4836679 res!2061058) b!4836680))

(assert (= (and b!4836680 res!2061055) b!4836681))

(assert (= (and b!4836681 res!2061054) b!4836682))

(assert (= (and b!4836682 res!2061056) b!4836678))

(assert (= (and b!4836678 res!2061057) b!4836677))

(assert (= start!502984 b!4836676))

(declare-fun m!5831972 () Bool)

(assert (=> b!4836680 m!5831972))

(declare-fun m!5831974 () Bool)

(assert (=> start!502984 m!5831974))

(declare-fun m!5831976 () Bool)

(assert (=> start!502984 m!5831976))

(declare-fun m!5831978 () Bool)

(assert (=> b!4836679 m!5831978))

(declare-fun m!5831980 () Bool)

(assert (=> b!4836682 m!5831980))

(declare-fun m!5831982 () Bool)

(assert (=> b!4836678 m!5831982))

(declare-fun m!5831984 () Bool)

(assert (=> b!4836678 m!5831984))

(declare-fun m!5831986 () Bool)

(assert (=> b!4836678 m!5831986))

(declare-fun m!5831988 () Bool)

(assert (=> b!4836678 m!5831988))

(declare-fun m!5831990 () Bool)

(assert (=> b!4836678 m!5831990))

(declare-fun m!5831992 () Bool)

(assert (=> b!4836678 m!5831992))

(declare-fun m!5831994 () Bool)

(assert (=> b!4836678 m!5831994))

(declare-fun m!5831996 () Bool)

(assert (=> b!4836678 m!5831996))

(declare-fun m!5831998 () Bool)

(assert (=> b!4836677 m!5831998))

(push 1)

(assert (not start!502984))

(assert (not b!4836677))

(assert (not b!4836682))

(assert (not b!4836678))

(assert (not b!4836679))

(assert (not b!4836676))

(assert (not b!4836680))

(assert tp_is_empty!34833)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1550541 () Bool)

(assert (=> d!1550541 (= (head!10375 (toList!7661 lm!2671)) (h!61676 (toList!7661 lm!2671)))))

(assert (=> b!4836678 d!1550541))

(declare-fun bs!1167576 () Bool)

(declare-fun d!1550543 () Bool)

(assert (= bs!1167576 (and d!1550543 start!502984)))

(declare-fun lambda!239692 () Int)

(assert (=> bs!1167576 (= lambda!239692 lambda!239682)))

(declare-fun lt!1982092 () ListMap!7019)

(declare-fun invariantList!1855 (List!55364) Bool)

(assert (=> d!1550543 (invariantList!1855 (toList!7662 lt!1982092))))

(declare-fun e!3022694 () ListMap!7019)

(assert (=> d!1550543 (= lt!1982092 e!3022694)))

(declare-fun c!823908 () Bool)

(assert (=> d!1550543 (= c!823908 (is-Cons!55241 (toList!7661 lm!2671)))))

(assert (=> d!1550543 (forall!12771 (toList!7661 lm!2671) lambda!239692)))

(assert (=> d!1550543 (= (extractMap!2729 (toList!7661 lm!2671)) lt!1982092)))

(declare-fun b!4836712 () Bool)

(assert (=> b!4836712 (= e!3022694 (addToMapMapFromBucket!1869 (_2!32626 (h!61676 (toList!7661 lm!2671))) (extractMap!2729 (t!362861 (toList!7661 lm!2671)))))))

(declare-fun b!4836713 () Bool)

(assert (=> b!4836713 (= e!3022694 (ListMap!7020 Nil!55240))))

(assert (= (and d!1550543 c!823908) b!4836712))

(assert (= (and d!1550543 (not c!823908)) b!4836713))

(declare-fun m!5832028 () Bool)

(assert (=> d!1550543 m!5832028))

(declare-fun m!5832030 () Bool)

(assert (=> d!1550543 m!5832030))

(assert (=> b!4836712 m!5831990))

(assert (=> b!4836712 m!5831990))

(declare-fun m!5832032 () Bool)

(assert (=> b!4836712 m!5832032))

(assert (=> b!4836678 d!1550543))

(declare-fun bs!1167580 () Bool)

(declare-fun b!4836753 () Bool)

(assert (= bs!1167580 (and b!4836753 b!4836678)))

(declare-fun lambda!239725 () Int)

(assert (=> bs!1167580 (= (= lt!1982069 lt!1982066) (= lambda!239725 lambda!239683))))

(assert (=> b!4836753 true))

(declare-fun bs!1167581 () Bool)

(declare-fun b!4836755 () Bool)

(assert (= bs!1167581 (and b!4836755 b!4836678)))

(declare-fun lambda!239726 () Int)

(assert (=> bs!1167581 (= (= lt!1982069 lt!1982066) (= lambda!239726 lambda!239683))))

(declare-fun bs!1167582 () Bool)

(assert (= bs!1167582 (and b!4836755 b!4836753)))

(assert (=> bs!1167582 (= lambda!239726 lambda!239725)))

(assert (=> b!4836755 true))

(declare-fun lambda!239727 () Int)

(declare-fun lt!1982161 () ListMap!7019)

(assert (=> bs!1167581 (= (= lt!1982161 lt!1982066) (= lambda!239727 lambda!239683))))

(assert (=> bs!1167582 (= (= lt!1982161 lt!1982069) (= lambda!239727 lambda!239725))))

(assert (=> b!4836755 (= (= lt!1982161 lt!1982069) (= lambda!239727 lambda!239726))))

(assert (=> b!4836755 true))

(declare-fun bs!1167583 () Bool)

(declare-fun d!1550545 () Bool)

(assert (= bs!1167583 (and d!1550545 b!4836678)))

(declare-fun lambda!239728 () Int)

(declare-fun lt!1982144 () ListMap!7019)

(assert (=> bs!1167583 (= (= lt!1982144 lt!1982066) (= lambda!239728 lambda!239683))))

(declare-fun bs!1167584 () Bool)

(assert (= bs!1167584 (and d!1550545 b!4836753)))

(assert (=> bs!1167584 (= (= lt!1982144 lt!1982069) (= lambda!239728 lambda!239725))))

(declare-fun bs!1167585 () Bool)

(assert (= bs!1167585 (and d!1550545 b!4836755)))

(assert (=> bs!1167585 (= (= lt!1982144 lt!1982069) (= lambda!239728 lambda!239726))))

(assert (=> bs!1167585 (= (= lt!1982144 lt!1982161) (= lambda!239728 lambda!239727))))

(assert (=> d!1550545 true))

(declare-fun bm!337082 () Bool)

(declare-fun call!337089 () Unit!144630)

(declare-fun lemmaContainsAllItsOwnKeys!1031 (ListMap!7019) Unit!144630)

(assert (=> bm!337082 (= call!337089 (lemmaContainsAllItsOwnKeys!1031 lt!1982069))))

(declare-fun e!3022724 () ListMap!7019)

(assert (=> b!4836753 (= e!3022724 lt!1982069)))

(declare-fun lt!1982145 () Unit!144630)

(assert (=> b!4836753 (= lt!1982145 call!337089)))

(declare-fun call!337087 () Bool)

(assert (=> b!4836753 call!337087))

(declare-fun lt!1982150 () Unit!144630)

(assert (=> b!4836753 (= lt!1982150 lt!1982145)))

(declare-fun call!337088 () Bool)

(assert (=> b!4836753 call!337088))

(declare-fun lt!1982160 () Unit!144630)

(declare-fun Unit!144634 () Unit!144630)

(assert (=> b!4836753 (= lt!1982160 Unit!144634)))

(declare-fun b!4836754 () Bool)

(declare-fun e!3022723 () Bool)

(assert (=> b!4836754 (= e!3022723 (invariantList!1855 (toList!7662 lt!1982144)))))

(assert (=> b!4836755 (= e!3022724 lt!1982161)))

(declare-fun lt!1982153 () ListMap!7019)

(declare-fun +!2591 (ListMap!7019 tuple2!58662) ListMap!7019)

(assert (=> b!4836755 (= lt!1982153 (+!2591 lt!1982069 (h!61675 (_2!32626 (h!61676 (toList!7661 lm!2671))))))))

(assert (=> b!4836755 (= lt!1982161 (addToMapMapFromBucket!1869 (t!362860 (_2!32626 (h!61676 (toList!7661 lm!2671)))) (+!2591 lt!1982069 (h!61675 (_2!32626 (h!61676 (toList!7661 lm!2671)))))))))

(declare-fun lt!1982156 () Unit!144630)

(assert (=> b!4836755 (= lt!1982156 call!337089)))

(assert (=> b!4836755 call!337088))

(declare-fun lt!1982142 () Unit!144630)

(assert (=> b!4836755 (= lt!1982142 lt!1982156)))

(assert (=> b!4836755 (forall!12770 (toList!7662 lt!1982153) lambda!239727)))

(declare-fun lt!1982155 () Unit!144630)

(declare-fun Unit!144635 () Unit!144630)

(assert (=> b!4836755 (= lt!1982155 Unit!144635)))

(assert (=> b!4836755 (forall!12770 (t!362860 (_2!32626 (h!61676 (toList!7661 lm!2671)))) lambda!239727)))

(declare-fun lt!1982148 () Unit!144630)

(declare-fun Unit!144636 () Unit!144630)

(assert (=> b!4836755 (= lt!1982148 Unit!144636)))

(declare-fun lt!1982162 () Unit!144630)

(declare-fun Unit!144637 () Unit!144630)

(assert (=> b!4836755 (= lt!1982162 Unit!144637)))

(declare-fun lt!1982154 () Unit!144630)

(declare-fun forallContained!4470 (List!55364 Int tuple2!58662) Unit!144630)

(assert (=> b!4836755 (= lt!1982154 (forallContained!4470 (toList!7662 lt!1982153) lambda!239727 (h!61675 (_2!32626 (h!61676 (toList!7661 lm!2671))))))))

(declare-fun contains!19042 (ListMap!7019 K!16987) Bool)

(assert (=> b!4836755 (contains!19042 lt!1982153 (_1!32625 (h!61675 (_2!32626 (h!61676 (toList!7661 lm!2671))))))))

(declare-fun lt!1982151 () Unit!144630)

(declare-fun Unit!144638 () Unit!144630)

(assert (=> b!4836755 (= lt!1982151 Unit!144638)))

(assert (=> b!4836755 (contains!19042 lt!1982161 (_1!32625 (h!61675 (_2!32626 (h!61676 (toList!7661 lm!2671))))))))

(declare-fun lt!1982149 () Unit!144630)

(declare-fun Unit!144639 () Unit!144630)

(assert (=> b!4836755 (= lt!1982149 Unit!144639)))

(assert (=> b!4836755 (forall!12770 (_2!32626 (h!61676 (toList!7661 lm!2671))) lambda!239727)))

(declare-fun lt!1982146 () Unit!144630)

(declare-fun Unit!144640 () Unit!144630)

(assert (=> b!4836755 (= lt!1982146 Unit!144640)))

(assert (=> b!4836755 (forall!12770 (toList!7662 lt!1982153) lambda!239727)))

(declare-fun lt!1982152 () Unit!144630)

(declare-fun Unit!144641 () Unit!144630)

(assert (=> b!4836755 (= lt!1982152 Unit!144641)))

(declare-fun lt!1982147 () Unit!144630)

(declare-fun Unit!144642 () Unit!144630)

(assert (=> b!4836755 (= lt!1982147 Unit!144642)))

(declare-fun lt!1982157 () Unit!144630)

(declare-fun addForallContainsKeyThenBeforeAdding!1029 (ListMap!7019 ListMap!7019 K!16987 V!17233) Unit!144630)

(assert (=> b!4836755 (= lt!1982157 (addForallContainsKeyThenBeforeAdding!1029 lt!1982069 lt!1982161 (_1!32625 (h!61675 (_2!32626 (h!61676 (toList!7661 lm!2671))))) (_2!32625 (h!61675 (_2!32626 (h!61676 (toList!7661 lm!2671)))))))))

(assert (=> b!4836755 (forall!12770 (toList!7662 lt!1982069) lambda!239727)))

(declare-fun lt!1982143 () Unit!144630)

(assert (=> b!4836755 (= lt!1982143 lt!1982157)))

(assert (=> b!4836755 (forall!12770 (toList!7662 lt!1982069) lambda!239727)))

(declare-fun lt!1982159 () Unit!144630)

(declare-fun Unit!144643 () Unit!144630)

(assert (=> b!4836755 (= lt!1982159 Unit!144643)))

(declare-fun res!2061101 () Bool)

(assert (=> b!4836755 (= res!2061101 call!337087)))

(declare-fun e!3022725 () Bool)

(assert (=> b!4836755 (=> (not res!2061101) (not e!3022725))))

(assert (=> b!4836755 e!3022725))

(declare-fun lt!1982158 () Unit!144630)

(declare-fun Unit!144644 () Unit!144630)

(assert (=> b!4836755 (= lt!1982158 Unit!144644)))

(declare-fun bm!337084 () Bool)

(declare-fun c!823918 () Bool)

(assert (=> bm!337084 (= call!337087 (forall!12770 (ite c!823918 (toList!7662 lt!1982069) (_2!32626 (h!61676 (toList!7661 lm!2671)))) (ite c!823918 lambda!239725 lambda!239727)))))

(declare-fun b!4836756 () Bool)

(assert (=> b!4836756 (= e!3022725 (forall!12770 (toList!7662 lt!1982069) lambda!239727))))

(declare-fun b!4836757 () Bool)

(declare-fun res!2061099 () Bool)

(assert (=> b!4836757 (=> (not res!2061099) (not e!3022723))))

(assert (=> b!4836757 (= res!2061099 (forall!12770 (toList!7662 lt!1982069) lambda!239728))))

(assert (=> d!1550545 e!3022723))

(declare-fun res!2061100 () Bool)

(assert (=> d!1550545 (=> (not res!2061100) (not e!3022723))))

(assert (=> d!1550545 (= res!2061100 (forall!12770 (_2!32626 (h!61676 (toList!7661 lm!2671))) lambda!239728))))

(assert (=> d!1550545 (= lt!1982144 e!3022724)))

(assert (=> d!1550545 (= c!823918 (is-Nil!55240 (_2!32626 (h!61676 (toList!7661 lm!2671)))))))

(declare-fun noDuplicateKeys!2519 (List!55364) Bool)

(assert (=> d!1550545 (noDuplicateKeys!2519 (_2!32626 (h!61676 (toList!7661 lm!2671))))))

(assert (=> d!1550545 (= (addToMapMapFromBucket!1869 (_2!32626 (h!61676 (toList!7661 lm!2671))) lt!1982069) lt!1982144)))

(declare-fun bm!337083 () Bool)

(assert (=> bm!337083 (= call!337088 (forall!12770 (toList!7662 lt!1982069) (ite c!823918 lambda!239725 lambda!239726)))))

(assert (= (and d!1550545 c!823918) b!4836753))

(assert (= (and d!1550545 (not c!823918)) b!4836755))

(assert (= (and b!4836755 res!2061101) b!4836756))

(assert (= (or b!4836753 b!4836755) bm!337082))

(assert (= (or b!4836753 b!4836755) bm!337084))

(assert (= (or b!4836753 b!4836755) bm!337083))

(assert (= (and d!1550545 res!2061100) b!4836757))

(assert (= (and b!4836757 res!2061099) b!4836754))

(declare-fun m!5832064 () Bool)

(assert (=> b!4836756 m!5832064))

(declare-fun m!5832066 () Bool)

(assert (=> bm!337082 m!5832066))

(declare-fun m!5832068 () Bool)

(assert (=> b!4836755 m!5832068))

(declare-fun m!5832070 () Bool)

(assert (=> b!4836755 m!5832070))

(assert (=> b!4836755 m!5832064))

(declare-fun m!5832072 () Bool)

(assert (=> b!4836755 m!5832072))

(declare-fun m!5832074 () Bool)

(assert (=> b!4836755 m!5832074))

(declare-fun m!5832076 () Bool)

(assert (=> b!4836755 m!5832076))

(declare-fun m!5832078 () Bool)

(assert (=> b!4836755 m!5832078))

(assert (=> b!4836755 m!5832064))

(declare-fun m!5832080 () Bool)

(assert (=> b!4836755 m!5832080))

(assert (=> b!4836755 m!5832072))

(declare-fun m!5832082 () Bool)

(assert (=> b!4836755 m!5832082))

(declare-fun m!5832084 () Bool)

(assert (=> b!4836755 m!5832084))

(assert (=> b!4836755 m!5832070))

(declare-fun m!5832086 () Bool)

(assert (=> bm!337083 m!5832086))

(declare-fun m!5832088 () Bool)

(assert (=> b!4836757 m!5832088))

(declare-fun m!5832090 () Bool)

(assert (=> bm!337084 m!5832090))

(declare-fun m!5832092 () Bool)

(assert (=> b!4836754 m!5832092))

(declare-fun m!5832094 () Bool)

(assert (=> d!1550545 m!5832094))

(declare-fun m!5832096 () Bool)

(assert (=> d!1550545 m!5832096))

(assert (=> b!4836678 d!1550545))

(declare-fun bs!1167586 () Bool)

(declare-fun d!1550561 () Bool)

(assert (= bs!1167586 (and d!1550561 start!502984)))

(declare-fun lambda!239731 () Int)

(assert (=> bs!1167586 (= lambda!239731 lambda!239682)))

(declare-fun bs!1167587 () Bool)

(assert (= bs!1167587 (and d!1550561 d!1550543)))

(assert (=> bs!1167587 (= lambda!239731 lambda!239692)))

(assert (=> d!1550561 (contains!19040 (_2!32626 (head!10375 (toList!7661 lm!2671))) (tuple2!58663 key!6540 lt!1982071))))

(declare-fun lt!1982165 () Unit!144630)

(declare-fun choose!35331 (ListLongMap!6197 K!16987 V!17233 Hashable!7367) Unit!144630)

(assert (=> d!1550561 (= lt!1982165 (choose!35331 lm!2671 key!6540 lt!1982071 hashF!1662))))

(assert (=> d!1550561 (forall!12771 (toList!7661 lm!2671) lambda!239731)))

(assert (=> d!1550561 (= (lemmaInPairListHeadThenGetValueInTuple!11 lm!2671 key!6540 lt!1982071 hashF!1662) lt!1982165)))

(declare-fun bs!1167588 () Bool)

(assert (= bs!1167588 d!1550561))

(assert (=> bs!1167588 m!5831984))

(declare-fun m!5832098 () Bool)

(assert (=> bs!1167588 m!5832098))

(declare-fun m!5832100 () Bool)

(assert (=> bs!1167588 m!5832100))

(declare-fun m!5832102 () Bool)

(assert (=> bs!1167588 m!5832102))

(assert (=> b!4836678 d!1550561))

(declare-fun d!1550563 () Bool)

(declare-fun c!823921 () Bool)

(declare-fun e!3022731 () Bool)

(assert (=> d!1550563 (= c!823921 e!3022731)))

(declare-fun res!2061104 () Bool)

(assert (=> d!1550563 (=> (not res!2061104) (not e!3022731))))

(assert (=> d!1550563 (= res!2061104 (is-Cons!55241 (toList!7661 lm!2671)))))

(declare-fun e!3022730 () V!17233)

(assert (=> d!1550563 (= (getValue!181 (toList!7661 lm!2671) key!6540) e!3022730)))

(declare-fun b!4836766 () Bool)

(assert (=> b!4836766 (= e!3022731 (containsKey!4517 (_2!32626 (h!61676 (toList!7661 lm!2671))) key!6540))))

(declare-fun b!4836764 () Bool)

(declare-datatypes ((Option!13587 0))(
  ( (None!13586) (Some!13586 (v!49308 tuple2!58662)) )
))
(declare-fun get!18914 (Option!13587) tuple2!58662)

(declare-fun getPair!1049 (List!55364 K!16987) Option!13587)

(assert (=> b!4836764 (= e!3022730 (_2!32625 (get!18914 (getPair!1049 (_2!32626 (h!61676 (toList!7661 lm!2671))) key!6540))))))

(declare-fun b!4836765 () Bool)

(assert (=> b!4836765 (= e!3022730 (getValue!181 (t!362861 (toList!7661 lm!2671)) key!6540))))

(assert (= (and d!1550563 res!2061104) b!4836766))

(assert (= (and d!1550563 c!823921) b!4836764))

(assert (= (and d!1550563 (not c!823921)) b!4836765))

(assert (=> b!4836766 m!5831980))

(declare-fun m!5832104 () Bool)

(assert (=> b!4836764 m!5832104))

(assert (=> b!4836764 m!5832104))

(declare-fun m!5832106 () Bool)

(assert (=> b!4836764 m!5832106))

(declare-fun m!5832108 () Bool)

(assert (=> b!4836765 m!5832108))

(assert (=> b!4836678 d!1550563))

(declare-fun d!1550565 () Bool)

(declare-fun res!2061109 () Bool)

(declare-fun e!3022736 () Bool)

(assert (=> d!1550565 (=> res!2061109 e!3022736)))

(assert (=> d!1550565 (= res!2061109 (is-Nil!55240 (_2!32626 (h!61676 (toList!7661 lm!2671)))))))

(assert (=> d!1550565 (= (forall!12770 (_2!32626 (h!61676 (toList!7661 lm!2671))) lambda!239683) e!3022736)))

(declare-fun b!4836771 () Bool)

(declare-fun e!3022737 () Bool)

(assert (=> b!4836771 (= e!3022736 e!3022737)))

(declare-fun res!2061110 () Bool)

(assert (=> b!4836771 (=> (not res!2061110) (not e!3022737))))

(declare-fun dynLambda!22267 (Int tuple2!58662) Bool)

(assert (=> b!4836771 (= res!2061110 (dynLambda!22267 lambda!239683 (h!61675 (_2!32626 (h!61676 (toList!7661 lm!2671))))))))

(declare-fun b!4836772 () Bool)

(assert (=> b!4836772 (= e!3022737 (forall!12770 (t!362860 (_2!32626 (h!61676 (toList!7661 lm!2671)))) lambda!239683))))

(assert (= (and d!1550565 (not res!2061109)) b!4836771))

(assert (= (and b!4836771 res!2061110) b!4836772))

(declare-fun b_lambda!191073 () Bool)

(assert (=> (not b_lambda!191073) (not b!4836771)))

(declare-fun m!5832110 () Bool)

(assert (=> b!4836771 m!5832110))

(declare-fun m!5832112 () Bool)

(assert (=> b!4836772 m!5832112))

(assert (=> b!4836678 d!1550565))

(declare-fun bs!1167589 () Bool)

(declare-fun d!1550567 () Bool)

(assert (= bs!1167589 (and d!1550567 start!502984)))

(declare-fun lambda!239732 () Int)

(assert (=> bs!1167589 (= lambda!239732 lambda!239682)))

(declare-fun bs!1167590 () Bool)

(assert (= bs!1167590 (and d!1550567 d!1550543)))

(assert (=> bs!1167590 (= lambda!239732 lambda!239692)))

(declare-fun bs!1167591 () Bool)

(assert (= bs!1167591 (and d!1550567 d!1550561)))

(assert (=> bs!1167591 (= lambda!239732 lambda!239731)))

(declare-fun lt!1982166 () ListMap!7019)

(assert (=> d!1550567 (invariantList!1855 (toList!7662 lt!1982166))))

(declare-fun e!3022738 () ListMap!7019)

(assert (=> d!1550567 (= lt!1982166 e!3022738)))

(declare-fun c!823922 () Bool)

(assert (=> d!1550567 (= c!823922 (is-Cons!55241 (t!362861 (toList!7661 lm!2671))))))

(assert (=> d!1550567 (forall!12771 (t!362861 (toList!7661 lm!2671)) lambda!239732)))

(assert (=> d!1550567 (= (extractMap!2729 (t!362861 (toList!7661 lm!2671))) lt!1982166)))

(declare-fun b!4836773 () Bool)

(assert (=> b!4836773 (= e!3022738 (addToMapMapFromBucket!1869 (_2!32626 (h!61676 (t!362861 (toList!7661 lm!2671)))) (extractMap!2729 (t!362861 (t!362861 (toList!7661 lm!2671))))))))

(declare-fun b!4836774 () Bool)

(assert (=> b!4836774 (= e!3022738 (ListMap!7020 Nil!55240))))

(assert (= (and d!1550567 c!823922) b!4836773))

(assert (= (and d!1550567 (not c!823922)) b!4836774))

(declare-fun m!5832114 () Bool)

(assert (=> d!1550567 m!5832114))

(declare-fun m!5832116 () Bool)

(assert (=> d!1550567 m!5832116))

(declare-fun m!5832118 () Bool)

(assert (=> b!4836773 m!5832118))

(assert (=> b!4836773 m!5832118))

(declare-fun m!5832120 () Bool)

(assert (=> b!4836773 m!5832120))

(assert (=> b!4836678 d!1550567))

(declare-fun d!1550569 () Bool)

(declare-fun lt!1982169 () Bool)

(declare-fun content!9848 (List!55364) (Set tuple2!58662))

(assert (=> d!1550569 (= lt!1982169 (set.member lt!1982067 (content!9848 (_2!32626 (head!10375 (toList!7661 lm!2671))))))))

(declare-fun e!3022744 () Bool)

(assert (=> d!1550569 (= lt!1982169 e!3022744)))

(declare-fun res!2061116 () Bool)

(assert (=> d!1550569 (=> (not res!2061116) (not e!3022744))))

(assert (=> d!1550569 (= res!2061116 (is-Cons!55240 (_2!32626 (head!10375 (toList!7661 lm!2671)))))))

(assert (=> d!1550569 (= (contains!19040 (_2!32626 (head!10375 (toList!7661 lm!2671))) lt!1982067) lt!1982169)))

(declare-fun b!4836779 () Bool)

(declare-fun e!3022743 () Bool)

(assert (=> b!4836779 (= e!3022744 e!3022743)))

(declare-fun res!2061115 () Bool)

(assert (=> b!4836779 (=> res!2061115 e!3022743)))

(assert (=> b!4836779 (= res!2061115 (= (h!61675 (_2!32626 (head!10375 (toList!7661 lm!2671)))) lt!1982067))))

(declare-fun b!4836780 () Bool)

(assert (=> b!4836780 (= e!3022743 (contains!19040 (t!362860 (_2!32626 (head!10375 (toList!7661 lm!2671)))) lt!1982067))))

(assert (= (and d!1550569 res!2061116) b!4836779))

(assert (= (and b!4836779 (not res!2061115)) b!4836780))

(declare-fun m!5832122 () Bool)

(assert (=> d!1550569 m!5832122))

(declare-fun m!5832124 () Bool)

(assert (=> d!1550569 m!5832124))

(declare-fun m!5832126 () Bool)

(assert (=> b!4836780 m!5832126))

(assert (=> b!4836678 d!1550569))

(declare-fun d!1550571 () Bool)

(declare-fun lt!1982170 () Bool)

(assert (=> d!1550571 (= lt!1982170 (set.member lt!1982067 (content!9848 (_2!32626 (h!61676 (toList!7661 lm!2671))))))))

(declare-fun e!3022746 () Bool)

(assert (=> d!1550571 (= lt!1982170 e!3022746)))

(declare-fun res!2061118 () Bool)

(assert (=> d!1550571 (=> (not res!2061118) (not e!3022746))))

(assert (=> d!1550571 (= res!2061118 (is-Cons!55240 (_2!32626 (h!61676 (toList!7661 lm!2671)))))))

(assert (=> d!1550571 (= (contains!19040 (_2!32626 (h!61676 (toList!7661 lm!2671))) lt!1982067) lt!1982170)))

(declare-fun b!4836781 () Bool)

(declare-fun e!3022745 () Bool)

(assert (=> b!4836781 (= e!3022746 e!3022745)))

(declare-fun res!2061117 () Bool)

(assert (=> b!4836781 (=> res!2061117 e!3022745)))

(assert (=> b!4836781 (= res!2061117 (= (h!61675 (_2!32626 (h!61676 (toList!7661 lm!2671)))) lt!1982067))))

(declare-fun b!4836782 () Bool)

(assert (=> b!4836782 (= e!3022745 (contains!19040 (t!362860 (_2!32626 (h!61676 (toList!7661 lm!2671)))) lt!1982067))))

(assert (= (and d!1550571 res!2061118) b!4836781))

(assert (= (and b!4836781 (not res!2061117)) b!4836782))

(declare-fun m!5832128 () Bool)

(assert (=> d!1550571 m!5832128))

(declare-fun m!5832130 () Bool)

(assert (=> d!1550571 m!5832130))

(declare-fun m!5832132 () Bool)

(assert (=> b!4836782 m!5832132))

(assert (=> b!4836677 d!1550571))

(declare-fun d!1550573 () Bool)

(declare-fun res!2061123 () Bool)

(declare-fun e!3022751 () Bool)

(assert (=> d!1550573 (=> res!2061123 e!3022751)))

(assert (=> d!1550573 (= res!2061123 (and (is-Cons!55240 (_2!32626 (h!61676 (toList!7661 lm!2671)))) (= (_1!32625 (h!61675 (_2!32626 (h!61676 (toList!7661 lm!2671))))) key!6540)))))

(assert (=> d!1550573 (= (containsKey!4517 (_2!32626 (h!61676 (toList!7661 lm!2671))) key!6540) e!3022751)))

(declare-fun b!4836787 () Bool)

(declare-fun e!3022752 () Bool)

(assert (=> b!4836787 (= e!3022751 e!3022752)))

(declare-fun res!2061124 () Bool)

(assert (=> b!4836787 (=> (not res!2061124) (not e!3022752))))

(assert (=> b!4836787 (= res!2061124 (is-Cons!55240 (_2!32626 (h!61676 (toList!7661 lm!2671)))))))

(declare-fun b!4836788 () Bool)

(assert (=> b!4836788 (= e!3022752 (containsKey!4517 (t!362860 (_2!32626 (h!61676 (toList!7661 lm!2671)))) key!6540))))

(assert (= (and d!1550573 (not res!2061123)) b!4836787))

(assert (= (and b!4836787 res!2061124) b!4836788))

(declare-fun m!5832134 () Bool)

(assert (=> b!4836788 m!5832134))

(assert (=> b!4836682 d!1550573))

(declare-fun d!1550575 () Bool)

(declare-fun res!2061133 () Bool)

(declare-fun e!3022759 () Bool)

(assert (=> d!1550575 (=> res!2061133 e!3022759)))

(declare-fun e!3022760 () Bool)

(assert (=> d!1550575 (= res!2061133 e!3022760)))

(declare-fun res!2061132 () Bool)

(assert (=> d!1550575 (=> (not res!2061132) (not e!3022760))))

(assert (=> d!1550575 (= res!2061132 (is-Cons!55241 (toList!7661 lm!2671)))))

(assert (=> d!1550575 (= (containsKeyBiggerList!651 (toList!7661 lm!2671) key!6540) e!3022759)))

(declare-fun b!4836795 () Bool)

(assert (=> b!4836795 (= e!3022760 (containsKey!4517 (_2!32626 (h!61676 (toList!7661 lm!2671))) key!6540))))

(declare-fun b!4836796 () Bool)

(declare-fun e!3022761 () Bool)

(assert (=> b!4836796 (= e!3022759 e!3022761)))

(declare-fun res!2061131 () Bool)

(assert (=> b!4836796 (=> (not res!2061131) (not e!3022761))))

(assert (=> b!4836796 (= res!2061131 (is-Cons!55241 (toList!7661 lm!2671)))))

(declare-fun b!4836797 () Bool)

(assert (=> b!4836797 (= e!3022761 (containsKeyBiggerList!651 (t!362861 (toList!7661 lm!2671)) key!6540))))

(assert (= (and d!1550575 res!2061132) b!4836795))

(assert (= (and d!1550575 (not res!2061133)) b!4836796))

(assert (= (and b!4836796 res!2061131) b!4836797))

(assert (=> b!4836795 m!5831980))

(declare-fun m!5832136 () Bool)

(assert (=> b!4836797 m!5832136))

(assert (=> b!4836680 d!1550575))

(declare-fun d!1550577 () Bool)

(declare-fun res!2061138 () Bool)

(declare-fun e!3022766 () Bool)

(assert (=> d!1550577 (=> res!2061138 e!3022766)))

(assert (=> d!1550577 (= res!2061138 (is-Nil!55241 (toList!7661 lm!2671)))))

(assert (=> d!1550577 (= (forall!12771 (toList!7661 lm!2671) lambda!239682) e!3022766)))

(declare-fun b!4836802 () Bool)

(declare-fun e!3022767 () Bool)

(assert (=> b!4836802 (= e!3022766 e!3022767)))

(declare-fun res!2061139 () Bool)

(assert (=> b!4836802 (=> (not res!2061139) (not e!3022767))))

(declare-fun dynLambda!22268 (Int tuple2!58664) Bool)

(assert (=> b!4836802 (= res!2061139 (dynLambda!22268 lambda!239682 (h!61676 (toList!7661 lm!2671))))))

(declare-fun b!4836803 () Bool)

(assert (=> b!4836803 (= e!3022767 (forall!12771 (t!362861 (toList!7661 lm!2671)) lambda!239682))))

(assert (= (and d!1550577 (not res!2061138)) b!4836802))

(assert (= (and b!4836802 res!2061139) b!4836803))

(declare-fun b_lambda!191075 () Bool)

(assert (=> (not b_lambda!191075) (not b!4836802)))

(declare-fun m!5832138 () Bool)

(assert (=> b!4836802 m!5832138))

(declare-fun m!5832140 () Bool)

(assert (=> b!4836803 m!5832140))

(assert (=> start!502984 d!1550577))

(declare-fun d!1550579 () Bool)

(declare-fun isStrictlySorted!1019 (List!55365) Bool)

(assert (=> d!1550579 (= (inv!70888 lm!2671) (isStrictlySorted!1019 (toList!7661 lm!2671)))))

(declare-fun bs!1167592 () Bool)

(assert (= bs!1167592 d!1550579))

(declare-fun m!5832142 () Bool)

(assert (=> bs!1167592 m!5832142))

(assert (=> start!502984 d!1550579))

(declare-fun bs!1167593 () Bool)

(declare-fun d!1550581 () Bool)

(assert (= bs!1167593 (and d!1550581 start!502984)))

(declare-fun lambda!239735 () Int)

(assert (=> bs!1167593 (not (= lambda!239735 lambda!239682))))

(declare-fun bs!1167594 () Bool)

(assert (= bs!1167594 (and d!1550581 d!1550543)))

(assert (=> bs!1167594 (not (= lambda!239735 lambda!239692))))

(declare-fun bs!1167595 () Bool)

(assert (= bs!1167595 (and d!1550581 d!1550561)))

(assert (=> bs!1167595 (not (= lambda!239735 lambda!239731))))

(declare-fun bs!1167596 () Bool)

(assert (= bs!1167596 (and d!1550581 d!1550567)))

(assert (=> bs!1167596 (not (= lambda!239735 lambda!239732))))

(assert (=> d!1550581 true))

(assert (=> d!1550581 (= (allKeysSameHashInMap!2683 lm!2671 hashF!1662) (forall!12771 (toList!7661 lm!2671) lambda!239735))))

(declare-fun bs!1167597 () Bool)

(assert (= bs!1167597 d!1550581))

(declare-fun m!5832144 () Bool)

(assert (=> bs!1167597 m!5832144))

(assert (=> b!4836679 d!1550581))

(declare-fun b!4836810 () Bool)

(declare-fun e!3022770 () Bool)

(declare-fun tp!1363511 () Bool)

(declare-fun tp!1363512 () Bool)

(assert (=> b!4836810 (= e!3022770 (and tp!1363511 tp!1363512))))

(assert (=> b!4836676 (= tp!1363503 e!3022770)))

(assert (= (and b!4836676 (is-Cons!55241 (toList!7661 lm!2671))) b!4836810))

(declare-fun b_lambda!191077 () Bool)

(assert (= b_lambda!191075 (or start!502984 b_lambda!191077)))

(declare-fun bs!1167598 () Bool)

(declare-fun d!1550583 () Bool)

(assert (= bs!1167598 (and d!1550583 start!502984)))

(assert (=> bs!1167598 (= (dynLambda!22268 lambda!239682 (h!61676 (toList!7661 lm!2671))) (noDuplicateKeys!2519 (_2!32626 (h!61676 (toList!7661 lm!2671)))))))

(assert (=> bs!1167598 m!5832096))

(assert (=> b!4836802 d!1550583))

(declare-fun b_lambda!191079 () Bool)

(assert (= b_lambda!191073 (or b!4836678 b_lambda!191079)))

(declare-fun bs!1167599 () Bool)

(declare-fun d!1550585 () Bool)

(assert (= bs!1167599 (and d!1550585 b!4836678)))

(assert (=> bs!1167599 (= (dynLambda!22267 lambda!239683 (h!61675 (_2!32626 (h!61676 (toList!7661 lm!2671))))) (contains!19042 lt!1982066 (_1!32625 (h!61675 (_2!32626 (h!61676 (toList!7661 lm!2671)))))))))

(declare-fun m!5832146 () Bool)

(assert (=> bs!1167599 m!5832146))

(assert (=> b!4836771 d!1550585))

(push 1)

(assert (not b!4836765))

(assert (not d!1550545))

(assert (not b!4836766))

(assert (not b!4836754))

(assert (not d!1550569))

(assert (not b!4836782))

(assert (not bm!337082))

(assert (not d!1550543))

(assert (not b!4836756))

(assert (not b!4836803))

(assert (not bs!1167598))

(assert (not d!1550561))

(assert (not bs!1167599))

(assert (not bm!337083))

(assert (not b!4836773))

(assert (not b!4836764))

(assert (not b!4836712))

(assert (not d!1550571))

(assert (not b!4836757))

(assert (not b!4836755))

(assert (not b!4836810))

(assert (not bm!337084))

(assert (not d!1550567))

(assert (not d!1550579))

(assert (not b!4836797))

(assert (not b_lambda!191077))

(assert (not b!4836788))

(assert (not b!4836772))

(assert tp_is_empty!34833)

(assert (not b!4836780))

(assert (not b_lambda!191079))

(assert (not b!4836795))

(assert (not d!1550581))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

