; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!426666 () Bool)

(assert start!426666)

(declare-fun b!4394973 () Bool)

(declare-fun res!1811913 () Bool)

(declare-fun e!2736437 () Bool)

(assert (=> b!4394973 (=> res!1811913 e!2736437)))

(declare-datatypes ((K!10583 0))(
  ( (K!10584 (val!16737 Int)) )
))
(declare-datatypes ((V!10829 0))(
  ( (V!10830 (val!16738 Int)) )
))
(declare-datatypes ((tuple2!48794 0))(
  ( (tuple2!48795 (_1!27691 K!10583) (_2!27691 V!10829)) )
))
(declare-datatypes ((List!49348 0))(
  ( (Nil!49224) (Cons!49224 (h!54835 tuple2!48794) (t!356282 List!49348)) )
))
(declare-fun newBucket!200 () List!49348)

(declare-fun noDuplicateKeys!606 (List!49348) Bool)

(assert (=> b!4394973 (= res!1811913 (not (noDuplicateKeys!606 newBucket!200)))))

(declare-fun b!4394974 () Bool)

(declare-fun e!2736436 () Bool)

(declare-datatypes ((tuple2!48796 0))(
  ( (tuple2!48797 (_1!27692 (_ BitVec 64)) (_2!27692 List!49348)) )
))
(declare-datatypes ((List!49349 0))(
  ( (Nil!49225) (Cons!49225 (h!54836 tuple2!48796) (t!356283 List!49349)) )
))
(declare-datatypes ((ListLongMap!1845 0))(
  ( (ListLongMap!1846 (toList!3195 List!49349)) )
))
(declare-fun lm!1707 () ListLongMap!1845)

(declare-fun key!3918 () K!10583)

(declare-fun containsKey!888 (List!49348 K!10583) Bool)

(assert (=> b!4394974 (= e!2736436 (not (containsKey!888 (_2!27692 (h!54836 (toList!3195 lm!1707))) key!3918)))))

(declare-fun b!4394975 () Bool)

(declare-fun res!1811916 () Bool)

(declare-fun e!2736440 () Bool)

(assert (=> b!4394975 (=> (not res!1811916) (not e!2736440))))

(declare-datatypes ((Hashable!4998 0))(
  ( (HashableExt!4997 (__x!30701 Int)) )
))
(declare-fun hashF!1247 () Hashable!4998)

(declare-fun hash!377 () (_ BitVec 64))

(declare-fun hash!1811 (Hashable!4998 K!10583) (_ BitVec 64))

(assert (=> b!4394975 (= res!1811916 (= (hash!1811 hashF!1247 key!3918) hash!377))))

(declare-fun b!4394976 () Bool)

(declare-fun res!1811919 () Bool)

(assert (=> b!4394976 (=> (not res!1811919) (not e!2736440))))

(declare-fun allKeysSameHashInMap!710 (ListLongMap!1845 Hashable!4998) Bool)

(assert (=> b!4394976 (= res!1811919 (allKeysSameHashInMap!710 lm!1707 hashF!1247))))

(declare-fun tp_is_empty!25661 () Bool)

(declare-fun tp_is_empty!25663 () Bool)

(declare-fun tp!1331527 () Bool)

(declare-fun b!4394977 () Bool)

(declare-fun e!2736438 () Bool)

(assert (=> b!4394977 (= e!2736438 (and tp_is_empty!25661 tp_is_empty!25663 tp!1331527))))

(declare-fun b!4394978 () Bool)

(declare-fun res!1811922 () Bool)

(assert (=> b!4394978 (=> (not res!1811922) (not e!2736440))))

(declare-fun contains!11592 (ListLongMap!1845 (_ BitVec 64)) Bool)

(assert (=> b!4394978 (= res!1811922 (contains!11592 lm!1707 hash!377))))

(declare-fun b!4394979 () Bool)

(declare-fun res!1811912 () Bool)

(assert (=> b!4394979 (=> (not res!1811912) (not e!2736440))))

(declare-datatypes ((ListMap!2439 0))(
  ( (ListMap!2440 (toList!3196 List!49348)) )
))
(declare-fun contains!11593 (ListMap!2439 K!10583) Bool)

(declare-fun extractMap!665 (List!49349) ListMap!2439)

(assert (=> b!4394979 (= res!1811912 (contains!11593 (extractMap!665 (toList!3195 lm!1707)) key!3918))))

(declare-fun b!4394980 () Bool)

(declare-fun e!2736441 () Bool)

(assert (=> b!4394980 (= e!2736437 e!2736441)))

(declare-fun res!1811914 () Bool)

(assert (=> b!4394980 (=> res!1811914 e!2736441)))

(assert (=> b!4394980 (= res!1811914 (or (and (is-Cons!49225 (toList!3195 lm!1707)) (= (_1!27692 (h!54836 (toList!3195 lm!1707))) hash!377)) (not (is-Cons!49225 (toList!3195 lm!1707))) (= (_1!27692 (h!54836 (toList!3195 lm!1707))) hash!377)))))

(declare-fun e!2736439 () Bool)

(assert (=> b!4394980 e!2736439))

(declare-fun res!1811915 () Bool)

(assert (=> b!4394980 (=> (not res!1811915) (not e!2736439))))

(declare-fun lt!1601914 () ListLongMap!1845)

(declare-fun lambda!147680 () Int)

(declare-fun forall!9322 (List!49349 Int) Bool)

(assert (=> b!4394980 (= res!1811915 (forall!9322 (toList!3195 lt!1601914) lambda!147680))))

(declare-fun +!837 (ListLongMap!1845 tuple2!48796) ListLongMap!1845)

(assert (=> b!4394980 (= lt!1601914 (+!837 lm!1707 (tuple2!48797 hash!377 newBucket!200)))))

(declare-datatypes ((Unit!78239 0))(
  ( (Unit!78240) )
))
(declare-fun lt!1601918 () Unit!78239)

(declare-fun addValidProp!252 (ListLongMap!1845 Int (_ BitVec 64) List!49348) Unit!78239)

(assert (=> b!4394980 (= lt!1601918 (addValidProp!252 lm!1707 lambda!147680 hash!377 newBucket!200))))

(assert (=> b!4394980 (forall!9322 (toList!3195 lm!1707) lambda!147680)))

(declare-fun b!4394981 () Bool)

(assert (=> b!4394981 (= e!2736441 (noDuplicateKeys!606 (_2!27692 (h!54836 (toList!3195 lm!1707)))))))

(declare-fun lt!1601915 () ListMap!2439)

(assert (=> b!4394981 (= lt!1601915 (extractMap!665 (t!356283 (toList!3195 lm!1707))))))

(assert (=> b!4394981 e!2736436))

(declare-fun res!1811921 () Bool)

(assert (=> b!4394981 (=> (not res!1811921) (not e!2736436))))

(declare-fun apply!11458 (ListLongMap!1845 (_ BitVec 64)) List!49348)

(assert (=> b!4394981 (= res!1811921 (not (containsKey!888 (apply!11458 lm!1707 (_1!27692 (h!54836 (toList!3195 lm!1707)))) key!3918)))))

(declare-fun lt!1601913 () Unit!78239)

(declare-fun lemmaNotSameHashThenCannotContainKey!77 (ListLongMap!1845 K!10583 (_ BitVec 64) Hashable!4998) Unit!78239)

(assert (=> b!4394981 (= lt!1601913 (lemmaNotSameHashThenCannotContainKey!77 lm!1707 key!3918 (_1!27692 (h!54836 (toList!3195 lm!1707))) hashF!1247))))

(declare-fun res!1811917 () Bool)

(assert (=> start!426666 (=> (not res!1811917) (not e!2736440))))

(assert (=> start!426666 (= res!1811917 (forall!9322 (toList!3195 lm!1707) lambda!147680))))

(assert (=> start!426666 e!2736440))

(assert (=> start!426666 e!2736438))

(assert (=> start!426666 true))

(declare-fun e!2736435 () Bool)

(declare-fun inv!64770 (ListLongMap!1845) Bool)

(assert (=> start!426666 (and (inv!64770 lm!1707) e!2736435)))

(assert (=> start!426666 tp_is_empty!25661))

(assert (=> start!426666 tp_is_empty!25663))

(declare-fun b!4394982 () Bool)

(declare-fun res!1811918 () Bool)

(assert (=> b!4394982 (=> (not res!1811918) (not e!2736440))))

(declare-fun allKeysSameHash!564 (List!49348 (_ BitVec 64) Hashable!4998) Bool)

(assert (=> b!4394982 (= res!1811918 (allKeysSameHash!564 newBucket!200 hash!377 hashF!1247))))

(declare-fun b!4394983 () Bool)

(declare-fun tp!1331528 () Bool)

(assert (=> b!4394983 (= e!2736435 tp!1331528)))

(declare-fun b!4394984 () Bool)

(assert (=> b!4394984 (= e!2736440 (not e!2736437))))

(declare-fun res!1811920 () Bool)

(assert (=> b!4394984 (=> res!1811920 e!2736437)))

(declare-fun lt!1601916 () List!49348)

(declare-fun newValue!99 () V!10829)

(declare-fun removePairForKey!574 (List!49348 K!10583) List!49348)

(assert (=> b!4394984 (= res!1811920 (not (= newBucket!200 (Cons!49224 (tuple2!48795 key!3918 newValue!99) (removePairForKey!574 lt!1601916 key!3918)))))))

(declare-fun lt!1601912 () Unit!78239)

(declare-fun lt!1601917 () tuple2!48796)

(declare-fun forallContained!1960 (List!49349 Int tuple2!48796) Unit!78239)

(assert (=> b!4394984 (= lt!1601912 (forallContained!1960 (toList!3195 lm!1707) lambda!147680 lt!1601917))))

(declare-fun contains!11594 (List!49349 tuple2!48796) Bool)

(assert (=> b!4394984 (contains!11594 (toList!3195 lm!1707) lt!1601917)))

(assert (=> b!4394984 (= lt!1601917 (tuple2!48797 hash!377 lt!1601916))))

(declare-fun lt!1601911 () Unit!78239)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!451 (List!49349 (_ BitVec 64) List!49348) Unit!78239)

(assert (=> b!4394984 (= lt!1601911 (lemmaGetValueByKeyImpliesContainsTuple!451 (toList!3195 lm!1707) hash!377 lt!1601916))))

(assert (=> b!4394984 (= lt!1601916 (apply!11458 lm!1707 hash!377))))

(declare-fun b!4394985 () Bool)

(assert (=> b!4394985 (= e!2736439 (forall!9322 (toList!3195 lt!1601914) lambda!147680))))

(assert (= (and start!426666 res!1811917) b!4394976))

(assert (= (and b!4394976 res!1811919) b!4394975))

(assert (= (and b!4394975 res!1811916) b!4394982))

(assert (= (and b!4394982 res!1811918) b!4394979))

(assert (= (and b!4394979 res!1811912) b!4394978))

(assert (= (and b!4394978 res!1811922) b!4394984))

(assert (= (and b!4394984 (not res!1811920)) b!4394973))

(assert (= (and b!4394973 (not res!1811913)) b!4394980))

(assert (= (and b!4394980 res!1811915) b!4394985))

(assert (= (and b!4394980 (not res!1811914)) b!4394981))

(assert (= (and b!4394981 res!1811921) b!4394974))

(assert (= (and start!426666 (is-Cons!49224 newBucket!200)) b!4394977))

(assert (= start!426666 b!4394983))

(declare-fun m!5055127 () Bool)

(assert (=> b!4394981 m!5055127))

(declare-fun m!5055129 () Bool)

(assert (=> b!4394981 m!5055129))

(declare-fun m!5055131 () Bool)

(assert (=> b!4394981 m!5055131))

(declare-fun m!5055133 () Bool)

(assert (=> b!4394981 m!5055133))

(assert (=> b!4394981 m!5055133))

(declare-fun m!5055135 () Bool)

(assert (=> b!4394981 m!5055135))

(declare-fun m!5055137 () Bool)

(assert (=> b!4394975 m!5055137))

(declare-fun m!5055139 () Bool)

(assert (=> b!4394980 m!5055139))

(declare-fun m!5055141 () Bool)

(assert (=> b!4394980 m!5055141))

(declare-fun m!5055143 () Bool)

(assert (=> b!4394980 m!5055143))

(declare-fun m!5055145 () Bool)

(assert (=> b!4394980 m!5055145))

(declare-fun m!5055147 () Bool)

(assert (=> b!4394974 m!5055147))

(assert (=> start!426666 m!5055145))

(declare-fun m!5055149 () Bool)

(assert (=> start!426666 m!5055149))

(declare-fun m!5055151 () Bool)

(assert (=> b!4394979 m!5055151))

(assert (=> b!4394979 m!5055151))

(declare-fun m!5055153 () Bool)

(assert (=> b!4394979 m!5055153))

(assert (=> b!4394985 m!5055139))

(declare-fun m!5055155 () Bool)

(assert (=> b!4394982 m!5055155))

(declare-fun m!5055157 () Bool)

(assert (=> b!4394984 m!5055157))

(declare-fun m!5055159 () Bool)

(assert (=> b!4394984 m!5055159))

(declare-fun m!5055161 () Bool)

(assert (=> b!4394984 m!5055161))

(declare-fun m!5055163 () Bool)

(assert (=> b!4394984 m!5055163))

(declare-fun m!5055165 () Bool)

(assert (=> b!4394984 m!5055165))

(declare-fun m!5055167 () Bool)

(assert (=> b!4394978 m!5055167))

(declare-fun m!5055169 () Bool)

(assert (=> b!4394973 m!5055169))

(declare-fun m!5055171 () Bool)

(assert (=> b!4394976 m!5055171))

(push 1)

(assert (not b!4394978))

(assert (not b!4394974))

(assert tp_is_empty!25661)

(assert tp_is_empty!25663)

(assert (not b!4394985))

(assert (not b!4394983))

(assert (not b!4394982))

(assert (not b!4394977))

(assert (not b!4394980))

(assert (not b!4394981))

(assert (not b!4394973))

(assert (not b!4394979))

(assert (not start!426666))

(assert (not b!4394975))

(assert (not b!4394976))

(assert (not b!4394984))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1324119 () Bool)

(declare-fun hash!1815 (Hashable!4998 K!10583) (_ BitVec 64))

(assert (=> d!1324119 (= (hash!1811 hashF!1247 key!3918) (hash!1815 hashF!1247 key!3918))))

(declare-fun bs!726345 () Bool)

(assert (= bs!726345 d!1324119))

(declare-fun m!5055219 () Bool)

(assert (=> bs!726345 m!5055219))

(assert (=> b!4394975 d!1324119))

(declare-fun bs!726346 () Bool)

(declare-fun d!1324121 () Bool)

(assert (= bs!726346 (and d!1324121 start!426666)))

(declare-fun lambda!147694 () Int)

(assert (=> bs!726346 (not (= lambda!147694 lambda!147680))))

(assert (=> d!1324121 true))

(assert (=> d!1324121 (= (allKeysSameHashInMap!710 lm!1707 hashF!1247) (forall!9322 (toList!3195 lm!1707) lambda!147694))))

(declare-fun bs!726347 () Bool)

(assert (= bs!726347 d!1324121))

(declare-fun m!5055221 () Bool)

(assert (=> bs!726347 m!5055221))

(assert (=> b!4394976 d!1324121))

(declare-fun d!1324123 () Bool)

(declare-fun e!2736467 () Bool)

(assert (=> d!1324123 e!2736467))

(declare-fun res!1811958 () Bool)

(assert (=> d!1324123 (=> res!1811958 e!2736467)))

(declare-fun lt!1601952 () Bool)

(assert (=> d!1324123 (= res!1811958 (not lt!1601952))))

(declare-fun lt!1601954 () Bool)

(assert (=> d!1324123 (= lt!1601952 lt!1601954)))

(declare-fun lt!1601953 () Unit!78239)

(declare-fun e!2736468 () Unit!78239)

(assert (=> d!1324123 (= lt!1601953 e!2736468)))

(declare-fun c!748183 () Bool)

(assert (=> d!1324123 (= c!748183 lt!1601954)))

(declare-fun containsKey!890 (List!49349 (_ BitVec 64)) Bool)

(assert (=> d!1324123 (= lt!1601954 (containsKey!890 (toList!3195 lm!1707) hash!377))))

(assert (=> d!1324123 (= (contains!11592 lm!1707 hash!377) lt!1601952)))

(declare-fun b!4395033 () Bool)

(declare-fun lt!1601951 () Unit!78239)

(assert (=> b!4395033 (= e!2736468 lt!1601951)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!482 (List!49349 (_ BitVec 64)) Unit!78239)

(assert (=> b!4395033 (= lt!1601951 (lemmaContainsKeyImpliesGetValueByKeyDefined!482 (toList!3195 lm!1707) hash!377))))

(declare-datatypes ((Option!10585 0))(
  ( (None!10584) (Some!10584 (v!43640 List!49348)) )
))
(declare-fun isDefined!7879 (Option!10585) Bool)

(declare-fun getValueByKey!571 (List!49349 (_ BitVec 64)) Option!10585)

(assert (=> b!4395033 (isDefined!7879 (getValueByKey!571 (toList!3195 lm!1707) hash!377))))

(declare-fun b!4395034 () Bool)

(declare-fun Unit!78243 () Unit!78239)

(assert (=> b!4395034 (= e!2736468 Unit!78243)))

(declare-fun b!4395035 () Bool)

(assert (=> b!4395035 (= e!2736467 (isDefined!7879 (getValueByKey!571 (toList!3195 lm!1707) hash!377)))))

(assert (= (and d!1324123 c!748183) b!4395033))

(assert (= (and d!1324123 (not c!748183)) b!4395034))

(assert (= (and d!1324123 (not res!1811958)) b!4395035))

(declare-fun m!5055223 () Bool)

(assert (=> d!1324123 m!5055223))

(declare-fun m!5055225 () Bool)

(assert (=> b!4395033 m!5055225))

(declare-fun m!5055227 () Bool)

(assert (=> b!4395033 m!5055227))

(assert (=> b!4395033 m!5055227))

(declare-fun m!5055229 () Bool)

(assert (=> b!4395033 m!5055229))

(assert (=> b!4395035 m!5055227))

(assert (=> b!4395035 m!5055227))

(assert (=> b!4395035 m!5055229))

(assert (=> b!4394978 d!1324123))

(declare-fun b!4395060 () Bool)

(declare-fun e!2736487 () Bool)

(declare-datatypes ((List!49352 0))(
  ( (Nil!49228) (Cons!49228 (h!54840 K!10583) (t!356286 List!49352)) )
))
(declare-fun contains!11598 (List!49352 K!10583) Bool)

(declare-fun keys!16714 (ListMap!2439) List!49352)

(assert (=> b!4395060 (= e!2736487 (contains!11598 (keys!16714 (extractMap!665 (toList!3195 lm!1707))) key!3918))))

(declare-fun b!4395061 () Bool)

(declare-fun e!2736491 () List!49352)

(declare-fun getKeysList!184 (List!49348) List!49352)

(assert (=> b!4395061 (= e!2736491 (getKeysList!184 (toList!3196 (extractMap!665 (toList!3195 lm!1707)))))))

(declare-fun b!4395062 () Bool)

(assert (=> b!4395062 (= e!2736491 (keys!16714 (extractMap!665 (toList!3195 lm!1707))))))

(declare-fun b!4395063 () Bool)

(declare-fun e!2736489 () Unit!78239)

(declare-fun lt!1601971 () Unit!78239)

(assert (=> b!4395063 (= e!2736489 lt!1601971)))

(declare-fun lt!1601975 () Unit!78239)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!483 (List!49348 K!10583) Unit!78239)

(assert (=> b!4395063 (= lt!1601975 (lemmaContainsKeyImpliesGetValueByKeyDefined!483 (toList!3196 (extractMap!665 (toList!3195 lm!1707))) key!3918))))

(declare-datatypes ((Option!10586 0))(
  ( (None!10585) (Some!10585 (v!43641 V!10829)) )
))
(declare-fun isDefined!7880 (Option!10586) Bool)

(declare-fun getValueByKey!572 (List!49348 K!10583) Option!10586)

(assert (=> b!4395063 (isDefined!7880 (getValueByKey!572 (toList!3196 (extractMap!665 (toList!3195 lm!1707))) key!3918))))

(declare-fun lt!1601974 () Unit!78239)

(assert (=> b!4395063 (= lt!1601974 lt!1601975)))

(declare-fun lemmaInListThenGetKeysListContains!181 (List!49348 K!10583) Unit!78239)

(assert (=> b!4395063 (= lt!1601971 (lemmaInListThenGetKeysListContains!181 (toList!3196 (extractMap!665 (toList!3195 lm!1707))) key!3918))))

(declare-fun call!305940 () Bool)

(assert (=> b!4395063 call!305940))

(declare-fun b!4395064 () Bool)

(declare-fun e!2736490 () Unit!78239)

(assert (=> b!4395064 (= e!2736489 e!2736490)))

(declare-fun c!748190 () Bool)

(assert (=> b!4395064 (= c!748190 call!305940)))

(declare-fun d!1324125 () Bool)

(declare-fun e!2736488 () Bool)

(assert (=> d!1324125 e!2736488))

(declare-fun res!1811972 () Bool)

(assert (=> d!1324125 (=> res!1811972 e!2736488)))

(declare-fun e!2736492 () Bool)

(assert (=> d!1324125 (= res!1811972 e!2736492)))

(declare-fun res!1811973 () Bool)

(assert (=> d!1324125 (=> (not res!1811973) (not e!2736492))))

(declare-fun lt!1601978 () Bool)

(assert (=> d!1324125 (= res!1811973 (not lt!1601978))))

(declare-fun lt!1601976 () Bool)

(assert (=> d!1324125 (= lt!1601978 lt!1601976)))

(declare-fun lt!1601972 () Unit!78239)

(assert (=> d!1324125 (= lt!1601972 e!2736489)))

(declare-fun c!748192 () Bool)

(assert (=> d!1324125 (= c!748192 lt!1601976)))

(declare-fun containsKey!891 (List!49348 K!10583) Bool)

(assert (=> d!1324125 (= lt!1601976 (containsKey!891 (toList!3196 (extractMap!665 (toList!3195 lm!1707))) key!3918))))

(assert (=> d!1324125 (= (contains!11593 (extractMap!665 (toList!3195 lm!1707)) key!3918) lt!1601978)))

(declare-fun b!4395065 () Bool)

(assert (=> b!4395065 (= e!2736492 (not (contains!11598 (keys!16714 (extractMap!665 (toList!3195 lm!1707))) key!3918)))))

(declare-fun b!4395066 () Bool)

(assert (=> b!4395066 (= e!2736488 e!2736487)))

(declare-fun res!1811971 () Bool)

(assert (=> b!4395066 (=> (not res!1811971) (not e!2736487))))

(assert (=> b!4395066 (= res!1811971 (isDefined!7880 (getValueByKey!572 (toList!3196 (extractMap!665 (toList!3195 lm!1707))) key!3918)))))

(declare-fun bm!305935 () Bool)

(assert (=> bm!305935 (= call!305940 (contains!11598 e!2736491 key!3918))))

(declare-fun c!748191 () Bool)

(assert (=> bm!305935 (= c!748191 c!748192)))

(declare-fun b!4395067 () Bool)

(assert (=> b!4395067 false))

(declare-fun lt!1601973 () Unit!78239)

(declare-fun lt!1601977 () Unit!78239)

(assert (=> b!4395067 (= lt!1601973 lt!1601977)))

(assert (=> b!4395067 (containsKey!891 (toList!3196 (extractMap!665 (toList!3195 lm!1707))) key!3918)))

(declare-fun lemmaInGetKeysListThenContainsKey!182 (List!49348 K!10583) Unit!78239)

(assert (=> b!4395067 (= lt!1601977 (lemmaInGetKeysListThenContainsKey!182 (toList!3196 (extractMap!665 (toList!3195 lm!1707))) key!3918))))

(declare-fun Unit!78244 () Unit!78239)

(assert (=> b!4395067 (= e!2736490 Unit!78244)))

(declare-fun b!4395068 () Bool)

(declare-fun Unit!78245 () Unit!78239)

(assert (=> b!4395068 (= e!2736490 Unit!78245)))

(assert (= (and d!1324125 c!748192) b!4395063))

(assert (= (and d!1324125 (not c!748192)) b!4395064))

(assert (= (and b!4395064 c!748190) b!4395067))

(assert (= (and b!4395064 (not c!748190)) b!4395068))

(assert (= (or b!4395063 b!4395064) bm!305935))

(assert (= (and bm!305935 c!748191) b!4395061))

(assert (= (and bm!305935 (not c!748191)) b!4395062))

(assert (= (and d!1324125 res!1811973) b!4395065))

(assert (= (and d!1324125 (not res!1811972)) b!4395066))

(assert (= (and b!4395066 res!1811971) b!4395060))

(declare-fun m!5055237 () Bool)

(assert (=> b!4395067 m!5055237))

(declare-fun m!5055239 () Bool)

(assert (=> b!4395067 m!5055239))

(assert (=> d!1324125 m!5055237))

(declare-fun m!5055241 () Bool)

(assert (=> bm!305935 m!5055241))

(declare-fun m!5055243 () Bool)

(assert (=> b!4395061 m!5055243))

(assert (=> b!4395060 m!5055151))

(declare-fun m!5055245 () Bool)

(assert (=> b!4395060 m!5055245))

(assert (=> b!4395060 m!5055245))

(declare-fun m!5055247 () Bool)

(assert (=> b!4395060 m!5055247))

(assert (=> b!4395062 m!5055151))

(assert (=> b!4395062 m!5055245))

(declare-fun m!5055249 () Bool)

(assert (=> b!4395063 m!5055249))

(declare-fun m!5055251 () Bool)

(assert (=> b!4395063 m!5055251))

(assert (=> b!4395063 m!5055251))

(declare-fun m!5055253 () Bool)

(assert (=> b!4395063 m!5055253))

(declare-fun m!5055255 () Bool)

(assert (=> b!4395063 m!5055255))

(assert (=> b!4395066 m!5055251))

(assert (=> b!4395066 m!5055251))

(assert (=> b!4395066 m!5055253))

(assert (=> b!4395065 m!5055151))

(assert (=> b!4395065 m!5055245))

(assert (=> b!4395065 m!5055245))

(assert (=> b!4395065 m!5055247))

(assert (=> b!4394979 d!1324125))

(declare-fun bs!726349 () Bool)

(declare-fun d!1324133 () Bool)

(assert (= bs!726349 (and d!1324133 start!426666)))

(declare-fun lambda!147697 () Int)

(assert (=> bs!726349 (= lambda!147697 lambda!147680)))

(declare-fun bs!726350 () Bool)

(assert (= bs!726350 (and d!1324133 d!1324121)))

(assert (=> bs!726350 (not (= lambda!147697 lambda!147694))))

(declare-fun lt!1601981 () ListMap!2439)

(declare-fun invariantList!736 (List!49348) Bool)

(assert (=> d!1324133 (invariantList!736 (toList!3196 lt!1601981))))

(declare-fun e!2736495 () ListMap!2439)

(assert (=> d!1324133 (= lt!1601981 e!2736495)))

(declare-fun c!748195 () Bool)

(assert (=> d!1324133 (= c!748195 (is-Cons!49225 (toList!3195 lm!1707)))))

(assert (=> d!1324133 (forall!9322 (toList!3195 lm!1707) lambda!147697)))

(assert (=> d!1324133 (= (extractMap!665 (toList!3195 lm!1707)) lt!1601981)))

(declare-fun b!4395073 () Bool)

(declare-fun addToMapMapFromBucket!281 (List!49348 ListMap!2439) ListMap!2439)

(assert (=> b!4395073 (= e!2736495 (addToMapMapFromBucket!281 (_2!27692 (h!54836 (toList!3195 lm!1707))) (extractMap!665 (t!356283 (toList!3195 lm!1707)))))))

(declare-fun b!4395074 () Bool)

(assert (=> b!4395074 (= e!2736495 (ListMap!2440 Nil!49224))))

(assert (= (and d!1324133 c!748195) b!4395073))

(assert (= (and d!1324133 (not c!748195)) b!4395074))

(declare-fun m!5055257 () Bool)

(assert (=> d!1324133 m!5055257))

(declare-fun m!5055259 () Bool)

(assert (=> d!1324133 m!5055259))

(assert (=> b!4395073 m!5055129))

(assert (=> b!4395073 m!5055129))

(declare-fun m!5055261 () Bool)

(assert (=> b!4395073 m!5055261))

(assert (=> b!4394979 d!1324133))

(declare-fun d!1324135 () Bool)

(declare-fun res!1811978 () Bool)

(declare-fun e!2736500 () Bool)

(assert (=> d!1324135 (=> res!1811978 e!2736500)))

(assert (=> d!1324135 (= res!1811978 (is-Nil!49225 (toList!3195 lt!1601914)))))

(assert (=> d!1324135 (= (forall!9322 (toList!3195 lt!1601914) lambda!147680) e!2736500)))

(declare-fun b!4395079 () Bool)

(declare-fun e!2736501 () Bool)

(assert (=> b!4395079 (= e!2736500 e!2736501)))

(declare-fun res!1811979 () Bool)

(assert (=> b!4395079 (=> (not res!1811979) (not e!2736501))))

(declare-fun dynLambda!20740 (Int tuple2!48796) Bool)

(assert (=> b!4395079 (= res!1811979 (dynLambda!20740 lambda!147680 (h!54836 (toList!3195 lt!1601914))))))

(declare-fun b!4395080 () Bool)

(assert (=> b!4395080 (= e!2736501 (forall!9322 (t!356283 (toList!3195 lt!1601914)) lambda!147680))))

(assert (= (and d!1324135 (not res!1811978)) b!4395079))

(assert (= (and b!4395079 res!1811979) b!4395080))

(declare-fun b_lambda!139065 () Bool)

(assert (=> (not b_lambda!139065) (not b!4395079)))

(declare-fun m!5055263 () Bool)

(assert (=> b!4395079 m!5055263))

(declare-fun m!5055265 () Bool)

(assert (=> b!4395080 m!5055265))

(assert (=> b!4394980 d!1324135))

(declare-fun d!1324137 () Bool)

(declare-fun e!2736504 () Bool)

(assert (=> d!1324137 e!2736504))

(declare-fun res!1811984 () Bool)

(assert (=> d!1324137 (=> (not res!1811984) (not e!2736504))))

(declare-fun lt!1601992 () ListLongMap!1845)

(assert (=> d!1324137 (= res!1811984 (contains!11592 lt!1601992 (_1!27692 (tuple2!48797 hash!377 newBucket!200))))))

(declare-fun lt!1601990 () List!49349)

(assert (=> d!1324137 (= lt!1601992 (ListLongMap!1846 lt!1601990))))

(declare-fun lt!1601991 () Unit!78239)

(declare-fun lt!1601993 () Unit!78239)

(assert (=> d!1324137 (= lt!1601991 lt!1601993)))

(assert (=> d!1324137 (= (getValueByKey!571 lt!1601990 (_1!27692 (tuple2!48797 hash!377 newBucket!200))) (Some!10584 (_2!27692 (tuple2!48797 hash!377 newBucket!200))))))

(declare-fun lemmaContainsTupThenGetReturnValue!331 (List!49349 (_ BitVec 64) List!49348) Unit!78239)

(assert (=> d!1324137 (= lt!1601993 (lemmaContainsTupThenGetReturnValue!331 lt!1601990 (_1!27692 (tuple2!48797 hash!377 newBucket!200)) (_2!27692 (tuple2!48797 hash!377 newBucket!200))))))

(declare-fun insertStrictlySorted!190 (List!49349 (_ BitVec 64) List!49348) List!49349)

(assert (=> d!1324137 (= lt!1601990 (insertStrictlySorted!190 (toList!3195 lm!1707) (_1!27692 (tuple2!48797 hash!377 newBucket!200)) (_2!27692 (tuple2!48797 hash!377 newBucket!200))))))

(assert (=> d!1324137 (= (+!837 lm!1707 (tuple2!48797 hash!377 newBucket!200)) lt!1601992)))

(declare-fun b!4395085 () Bool)

(declare-fun res!1811985 () Bool)

(assert (=> b!4395085 (=> (not res!1811985) (not e!2736504))))

(assert (=> b!4395085 (= res!1811985 (= (getValueByKey!571 (toList!3195 lt!1601992) (_1!27692 (tuple2!48797 hash!377 newBucket!200))) (Some!10584 (_2!27692 (tuple2!48797 hash!377 newBucket!200)))))))

(declare-fun b!4395086 () Bool)

(assert (=> b!4395086 (= e!2736504 (contains!11594 (toList!3195 lt!1601992) (tuple2!48797 hash!377 newBucket!200)))))

(assert (= (and d!1324137 res!1811984) b!4395085))

(assert (= (and b!4395085 res!1811985) b!4395086))

(declare-fun m!5055267 () Bool)

(assert (=> d!1324137 m!5055267))

(declare-fun m!5055269 () Bool)

(assert (=> d!1324137 m!5055269))

(declare-fun m!5055271 () Bool)

(assert (=> d!1324137 m!5055271))

(declare-fun m!5055273 () Bool)

(assert (=> d!1324137 m!5055273))

(declare-fun m!5055275 () Bool)

(assert (=> b!4395085 m!5055275))

(declare-fun m!5055277 () Bool)

(assert (=> b!4395086 m!5055277))

(assert (=> b!4394980 d!1324137))

(declare-fun d!1324139 () Bool)

(assert (=> d!1324139 (forall!9322 (toList!3195 (+!837 lm!1707 (tuple2!48797 hash!377 newBucket!200))) lambda!147680)))

(declare-fun lt!1601999 () Unit!78239)

(declare-fun choose!27469 (ListLongMap!1845 Int (_ BitVec 64) List!49348) Unit!78239)

(assert (=> d!1324139 (= lt!1601999 (choose!27469 lm!1707 lambda!147680 hash!377 newBucket!200))))

(declare-fun e!2736510 () Bool)

(assert (=> d!1324139 e!2736510))

(declare-fun res!1811988 () Bool)

(assert (=> d!1324139 (=> (not res!1811988) (not e!2736510))))

(assert (=> d!1324139 (= res!1811988 (forall!9322 (toList!3195 lm!1707) lambda!147680))))

(assert (=> d!1324139 (= (addValidProp!252 lm!1707 lambda!147680 hash!377 newBucket!200) lt!1601999)))

(declare-fun b!4395096 () Bool)

(assert (=> b!4395096 (= e!2736510 (dynLambda!20740 lambda!147680 (tuple2!48797 hash!377 newBucket!200)))))

(assert (= (and d!1324139 res!1811988) b!4395096))

(declare-fun b_lambda!139067 () Bool)

(assert (=> (not b_lambda!139067) (not b!4395096)))

(assert (=> d!1324139 m!5055141))

(declare-fun m!5055287 () Bool)

(assert (=> d!1324139 m!5055287))

(declare-fun m!5055289 () Bool)

(assert (=> d!1324139 m!5055289))

(assert (=> d!1324139 m!5055145))

(declare-fun m!5055291 () Bool)

(assert (=> b!4395096 m!5055291))

(assert (=> b!4394980 d!1324139))

(declare-fun d!1324143 () Bool)

(declare-fun res!1811989 () Bool)

(declare-fun e!2736511 () Bool)

(assert (=> d!1324143 (=> res!1811989 e!2736511)))

(assert (=> d!1324143 (= res!1811989 (is-Nil!49225 (toList!3195 lm!1707)))))

(assert (=> d!1324143 (= (forall!9322 (toList!3195 lm!1707) lambda!147680) e!2736511)))

(declare-fun b!4395097 () Bool)

(declare-fun e!2736512 () Bool)

(assert (=> b!4395097 (= e!2736511 e!2736512)))

(declare-fun res!1811990 () Bool)

(assert (=> b!4395097 (=> (not res!1811990) (not e!2736512))))

(assert (=> b!4395097 (= res!1811990 (dynLambda!20740 lambda!147680 (h!54836 (toList!3195 lm!1707))))))

(declare-fun b!4395098 () Bool)

(assert (=> b!4395098 (= e!2736512 (forall!9322 (t!356283 (toList!3195 lm!1707)) lambda!147680))))

(assert (= (and d!1324143 (not res!1811989)) b!4395097))

(assert (= (and b!4395097 res!1811990) b!4395098))

(declare-fun b_lambda!139069 () Bool)

(assert (=> (not b_lambda!139069) (not b!4395097)))

(declare-fun m!5055293 () Bool)

(assert (=> b!4395097 m!5055293))

(declare-fun m!5055295 () Bool)

(assert (=> b!4395098 m!5055295))

(assert (=> b!4394980 d!1324143))

(declare-fun d!1324145 () Bool)

(declare-fun get!16018 (Option!10585) List!49348)

(assert (=> d!1324145 (= (apply!11458 lm!1707 (_1!27692 (h!54836 (toList!3195 lm!1707)))) (get!16018 (getValueByKey!571 (toList!3195 lm!1707) (_1!27692 (h!54836 (toList!3195 lm!1707))))))))

(declare-fun bs!726352 () Bool)

(assert (= bs!726352 d!1324145))

(declare-fun m!5055297 () Bool)

(assert (=> bs!726352 m!5055297))

(assert (=> bs!726352 m!5055297))

(declare-fun m!5055299 () Bool)

(assert (=> bs!726352 m!5055299))

(assert (=> b!4394981 d!1324145))

(declare-fun d!1324147 () Bool)

(declare-fun res!1811995 () Bool)

(declare-fun e!2736517 () Bool)

(assert (=> d!1324147 (=> res!1811995 e!2736517)))

(assert (=> d!1324147 (= res!1811995 (and (is-Cons!49224 (apply!11458 lm!1707 (_1!27692 (h!54836 (toList!3195 lm!1707))))) (= (_1!27691 (h!54835 (apply!11458 lm!1707 (_1!27692 (h!54836 (toList!3195 lm!1707)))))) key!3918)))))

(assert (=> d!1324147 (= (containsKey!888 (apply!11458 lm!1707 (_1!27692 (h!54836 (toList!3195 lm!1707)))) key!3918) e!2736517)))

(declare-fun b!4395103 () Bool)

(declare-fun e!2736518 () Bool)

(assert (=> b!4395103 (= e!2736517 e!2736518)))

(declare-fun res!1811996 () Bool)

(assert (=> b!4395103 (=> (not res!1811996) (not e!2736518))))

(assert (=> b!4395103 (= res!1811996 (is-Cons!49224 (apply!11458 lm!1707 (_1!27692 (h!54836 (toList!3195 lm!1707))))))))

(declare-fun b!4395104 () Bool)

(assert (=> b!4395104 (= e!2736518 (containsKey!888 (t!356282 (apply!11458 lm!1707 (_1!27692 (h!54836 (toList!3195 lm!1707))))) key!3918))))

(assert (= (and d!1324147 (not res!1811995)) b!4395103))

(assert (= (and b!4395103 res!1811996) b!4395104))

(declare-fun m!5055301 () Bool)

(assert (=> b!4395104 m!5055301))

(assert (=> b!4394981 d!1324147))

(declare-fun bs!726353 () Bool)

(declare-fun d!1324149 () Bool)

(assert (= bs!726353 (and d!1324149 start!426666)))

(declare-fun lambda!147701 () Int)

(assert (=> bs!726353 (= lambda!147701 lambda!147680)))

(declare-fun bs!726354 () Bool)

(assert (= bs!726354 (and d!1324149 d!1324121)))

(assert (=> bs!726354 (not (= lambda!147701 lambda!147694))))

(declare-fun bs!726355 () Bool)

(assert (= bs!726355 (and d!1324149 d!1324133)))

(assert (=> bs!726355 (= lambda!147701 lambda!147697)))

(declare-fun lt!1602000 () ListMap!2439)

(assert (=> d!1324149 (invariantList!736 (toList!3196 lt!1602000))))

(declare-fun e!2736519 () ListMap!2439)

(assert (=> d!1324149 (= lt!1602000 e!2736519)))

(declare-fun c!748199 () Bool)

(assert (=> d!1324149 (= c!748199 (is-Cons!49225 (t!356283 (toList!3195 lm!1707))))))

(assert (=> d!1324149 (forall!9322 (t!356283 (toList!3195 lm!1707)) lambda!147701)))

(assert (=> d!1324149 (= (extractMap!665 (t!356283 (toList!3195 lm!1707))) lt!1602000)))

(declare-fun b!4395105 () Bool)

(assert (=> b!4395105 (= e!2736519 (addToMapMapFromBucket!281 (_2!27692 (h!54836 (t!356283 (toList!3195 lm!1707)))) (extractMap!665 (t!356283 (t!356283 (toList!3195 lm!1707))))))))

(declare-fun b!4395106 () Bool)

(assert (=> b!4395106 (= e!2736519 (ListMap!2440 Nil!49224))))

(assert (= (and d!1324149 c!748199) b!4395105))

(assert (= (and d!1324149 (not c!748199)) b!4395106))

(declare-fun m!5055303 () Bool)

(assert (=> d!1324149 m!5055303))

(declare-fun m!5055305 () Bool)

(assert (=> d!1324149 m!5055305))

(declare-fun m!5055307 () Bool)

(assert (=> b!4395105 m!5055307))

(assert (=> b!4395105 m!5055307))

(declare-fun m!5055309 () Bool)

(assert (=> b!4395105 m!5055309))

(assert (=> b!4394981 d!1324149))

(declare-fun bs!726359 () Bool)

(declare-fun d!1324151 () Bool)

(assert (= bs!726359 (and d!1324151 start!426666)))

(declare-fun lambda!147707 () Int)

(assert (=> bs!726359 (= lambda!147707 lambda!147680)))

(declare-fun bs!726360 () Bool)

(assert (= bs!726360 (and d!1324151 d!1324121)))

(assert (=> bs!726360 (not (= lambda!147707 lambda!147694))))

(declare-fun bs!726361 () Bool)

(assert (= bs!726361 (and d!1324151 d!1324133)))

(assert (=> bs!726361 (= lambda!147707 lambda!147697)))

(declare-fun bs!726362 () Bool)

(assert (= bs!726362 (and d!1324151 d!1324149)))

(assert (=> bs!726362 (= lambda!147707 lambda!147701)))

(assert (=> d!1324151 (not (containsKey!888 (apply!11458 lm!1707 (_1!27692 (h!54836 (toList!3195 lm!1707)))) key!3918))))

(declare-fun lt!1602006 () Unit!78239)

(declare-fun choose!27470 (ListLongMap!1845 K!10583 (_ BitVec 64) Hashable!4998) Unit!78239)

(assert (=> d!1324151 (= lt!1602006 (choose!27470 lm!1707 key!3918 (_1!27692 (h!54836 (toList!3195 lm!1707))) hashF!1247))))

(assert (=> d!1324151 (forall!9322 (toList!3195 lm!1707) lambda!147707)))

(assert (=> d!1324151 (= (lemmaNotSameHashThenCannotContainKey!77 lm!1707 key!3918 (_1!27692 (h!54836 (toList!3195 lm!1707))) hashF!1247) lt!1602006)))

(declare-fun bs!726363 () Bool)

(assert (= bs!726363 d!1324151))

(assert (=> bs!726363 m!5055133))

(assert (=> bs!726363 m!5055133))

(assert (=> bs!726363 m!5055135))

(declare-fun m!5055315 () Bool)

(assert (=> bs!726363 m!5055315))

(declare-fun m!5055317 () Bool)

(assert (=> bs!726363 m!5055317))

(assert (=> b!4394981 d!1324151))

(declare-fun d!1324155 () Bool)

(declare-fun res!1812005 () Bool)

(declare-fun e!2736528 () Bool)

(assert (=> d!1324155 (=> res!1812005 e!2736528)))

(assert (=> d!1324155 (= res!1812005 (not (is-Cons!49224 (_2!27692 (h!54836 (toList!3195 lm!1707))))))))

(assert (=> d!1324155 (= (noDuplicateKeys!606 (_2!27692 (h!54836 (toList!3195 lm!1707)))) e!2736528)))

(declare-fun b!4395115 () Bool)

(declare-fun e!2736529 () Bool)

(assert (=> b!4395115 (= e!2736528 e!2736529)))

(declare-fun res!1812006 () Bool)

(assert (=> b!4395115 (=> (not res!1812006) (not e!2736529))))

(assert (=> b!4395115 (= res!1812006 (not (containsKey!888 (t!356282 (_2!27692 (h!54836 (toList!3195 lm!1707)))) (_1!27691 (h!54835 (_2!27692 (h!54836 (toList!3195 lm!1707))))))))))

(declare-fun b!4395116 () Bool)

(assert (=> b!4395116 (= e!2736529 (noDuplicateKeys!606 (t!356282 (_2!27692 (h!54836 (toList!3195 lm!1707))))))))

(assert (= (and d!1324155 (not res!1812005)) b!4395115))

(assert (= (and b!4395115 res!1812006) b!4395116))

(declare-fun m!5055319 () Bool)

(assert (=> b!4395115 m!5055319))

(declare-fun m!5055321 () Bool)

(assert (=> b!4395116 m!5055321))

(assert (=> b!4394981 d!1324155))

(declare-fun d!1324157 () Bool)

(assert (=> d!1324157 true))

(assert (=> d!1324157 true))

(declare-fun lambda!147710 () Int)

(declare-fun forall!9324 (List!49348 Int) Bool)

(assert (=> d!1324157 (= (allKeysSameHash!564 newBucket!200 hash!377 hashF!1247) (forall!9324 newBucket!200 lambda!147710))))

(declare-fun bs!726364 () Bool)

(assert (= bs!726364 d!1324157))

(declare-fun m!5055323 () Bool)

(assert (=> bs!726364 m!5055323))

(assert (=> b!4394982 d!1324157))

(assert (=> start!426666 d!1324143))

(declare-fun d!1324159 () Bool)

(declare-fun isStrictlySorted!163 (List!49349) Bool)

(assert (=> d!1324159 (= (inv!64770 lm!1707) (isStrictlySorted!163 (toList!3195 lm!1707)))))

(declare-fun bs!726365 () Bool)

(assert (= bs!726365 d!1324159))

(declare-fun m!5055329 () Bool)

(assert (=> bs!726365 m!5055329))

(assert (=> start!426666 d!1324159))

(declare-fun d!1324163 () Bool)

(declare-fun res!1812009 () Bool)

(declare-fun e!2736532 () Bool)

(assert (=> d!1324163 (=> res!1812009 e!2736532)))

(assert (=> d!1324163 (= res!1812009 (not (is-Cons!49224 newBucket!200)))))

(assert (=> d!1324163 (= (noDuplicateKeys!606 newBucket!200) e!2736532)))

(declare-fun b!4395123 () Bool)

(declare-fun e!2736533 () Bool)

(assert (=> b!4395123 (= e!2736532 e!2736533)))

(declare-fun res!1812010 () Bool)

(assert (=> b!4395123 (=> (not res!1812010) (not e!2736533))))

(assert (=> b!4395123 (= res!1812010 (not (containsKey!888 (t!356282 newBucket!200) (_1!27691 (h!54835 newBucket!200)))))))

(declare-fun b!4395124 () Bool)

(assert (=> b!4395124 (= e!2736533 (noDuplicateKeys!606 (t!356282 newBucket!200)))))

(assert (= (and d!1324163 (not res!1812009)) b!4395123))

(assert (= (and b!4395123 res!1812010) b!4395124))

(declare-fun m!5055331 () Bool)

(assert (=> b!4395123 m!5055331))

(declare-fun m!5055333 () Bool)

(assert (=> b!4395124 m!5055333))

(assert (=> b!4394973 d!1324163))

(declare-fun d!1324165 () Bool)

(assert (=> d!1324165 (= (apply!11458 lm!1707 hash!377) (get!16018 (getValueByKey!571 (toList!3195 lm!1707) hash!377)))))

(declare-fun bs!726366 () Bool)

(assert (= bs!726366 d!1324165))

(assert (=> bs!726366 m!5055227))

(assert (=> bs!726366 m!5055227))

(declare-fun m!5055335 () Bool)

(assert (=> bs!726366 m!5055335))

(assert (=> b!4394984 d!1324165))

(declare-fun d!1324167 () Bool)

(assert (=> d!1324167 (dynLambda!20740 lambda!147680 lt!1601917)))

(declare-fun lt!1602009 () Unit!78239)

(declare-fun choose!27471 (List!49349 Int tuple2!48796) Unit!78239)

(assert (=> d!1324167 (= lt!1602009 (choose!27471 (toList!3195 lm!1707) lambda!147680 lt!1601917))))

(declare-fun e!2736540 () Bool)

(assert (=> d!1324167 e!2736540))

(declare-fun res!1812017 () Bool)

(assert (=> d!1324167 (=> (not res!1812017) (not e!2736540))))

(assert (=> d!1324167 (= res!1812017 (forall!9322 (toList!3195 lm!1707) lambda!147680))))

(assert (=> d!1324167 (= (forallContained!1960 (toList!3195 lm!1707) lambda!147680 lt!1601917) lt!1602009)))

(declare-fun b!4395131 () Bool)

(assert (=> b!4395131 (= e!2736540 (contains!11594 (toList!3195 lm!1707) lt!1601917))))

(assert (= (and d!1324167 res!1812017) b!4395131))

(declare-fun b_lambda!139071 () Bool)

(assert (=> (not b_lambda!139071) (not d!1324167)))

(declare-fun m!5055337 () Bool)

(assert (=> d!1324167 m!5055337))

(declare-fun m!5055339 () Bool)

(assert (=> d!1324167 m!5055339))

(assert (=> d!1324167 m!5055145))

(assert (=> b!4395131 m!5055163))

(assert (=> b!4394984 d!1324167))

(declare-fun d!1324169 () Bool)

(declare-fun lt!1602012 () List!49348)

(assert (=> d!1324169 (not (containsKey!888 lt!1602012 key!3918))))

(declare-fun e!2736547 () List!49348)

(assert (=> d!1324169 (= lt!1602012 e!2736547)))

(declare-fun c!748204 () Bool)

(assert (=> d!1324169 (= c!748204 (and (is-Cons!49224 lt!1601916) (= (_1!27691 (h!54835 lt!1601916)) key!3918)))))

(assert (=> d!1324169 (noDuplicateKeys!606 lt!1601916)))

(assert (=> d!1324169 (= (removePairForKey!574 lt!1601916 key!3918) lt!1602012)))

(declare-fun b!4395144 () Bool)

(declare-fun e!2736548 () List!49348)

(assert (=> b!4395144 (= e!2736548 (Cons!49224 (h!54835 lt!1601916) (removePairForKey!574 (t!356282 lt!1601916) key!3918)))))

(declare-fun b!4395145 () Bool)

(assert (=> b!4395145 (= e!2736548 Nil!49224)))

(declare-fun b!4395143 () Bool)

(assert (=> b!4395143 (= e!2736547 e!2736548)))

(declare-fun c!748205 () Bool)

(assert (=> b!4395143 (= c!748205 (is-Cons!49224 lt!1601916))))

(declare-fun b!4395142 () Bool)

(assert (=> b!4395142 (= e!2736547 (t!356282 lt!1601916))))

(assert (= (and d!1324169 c!748204) b!4395142))

(assert (= (and d!1324169 (not c!748204)) b!4395143))

(assert (= (and b!4395143 c!748205) b!4395144))

(assert (= (and b!4395143 (not c!748205)) b!4395145))

(declare-fun m!5055345 () Bool)

(assert (=> d!1324169 m!5055345))

(declare-fun m!5055347 () Bool)

(assert (=> d!1324169 m!5055347))

(declare-fun m!5055349 () Bool)

(assert (=> b!4395144 m!5055349))

(assert (=> b!4394984 d!1324169))

(declare-fun d!1324173 () Bool)

(assert (=> d!1324173 (contains!11594 (toList!3195 lm!1707) (tuple2!48797 hash!377 lt!1601916))))

(declare-fun lt!1602015 () Unit!78239)

(declare-fun choose!27472 (List!49349 (_ BitVec 64) List!49348) Unit!78239)

(assert (=> d!1324173 (= lt!1602015 (choose!27472 (toList!3195 lm!1707) hash!377 lt!1601916))))

(declare-fun e!2736551 () Bool)

(assert (=> d!1324173 e!2736551))

(declare-fun res!1812022 () Bool)

(assert (=> d!1324173 (=> (not res!1812022) (not e!2736551))))

(assert (=> d!1324173 (= res!1812022 (isStrictlySorted!163 (toList!3195 lm!1707)))))

(assert (=> d!1324173 (= (lemmaGetValueByKeyImpliesContainsTuple!451 (toList!3195 lm!1707) hash!377 lt!1601916) lt!1602015)))

(declare-fun b!4395148 () Bool)

(assert (=> b!4395148 (= e!2736551 (= (getValueByKey!571 (toList!3195 lm!1707) hash!377) (Some!10584 lt!1601916)))))

(assert (= (and d!1324173 res!1812022) b!4395148))

(declare-fun m!5055351 () Bool)

(assert (=> d!1324173 m!5055351))

(declare-fun m!5055353 () Bool)

(assert (=> d!1324173 m!5055353))

(assert (=> d!1324173 m!5055329))

(assert (=> b!4395148 m!5055227))

(assert (=> b!4394984 d!1324173))

(declare-fun d!1324175 () Bool)

(declare-fun lt!1602018 () Bool)

(declare-fun content!7847 (List!49349) (Set tuple2!48796))

(assert (=> d!1324175 (= lt!1602018 (set.member lt!1601917 (content!7847 (toList!3195 lm!1707))))))

(declare-fun e!2736556 () Bool)

(assert (=> d!1324175 (= lt!1602018 e!2736556)))

(declare-fun res!1812027 () Bool)

(assert (=> d!1324175 (=> (not res!1812027) (not e!2736556))))

(assert (=> d!1324175 (= res!1812027 (is-Cons!49225 (toList!3195 lm!1707)))))

(assert (=> d!1324175 (= (contains!11594 (toList!3195 lm!1707) lt!1601917) lt!1602018)))

(declare-fun b!4395153 () Bool)

(declare-fun e!2736557 () Bool)

(assert (=> b!4395153 (= e!2736556 e!2736557)))

(declare-fun res!1812028 () Bool)

(assert (=> b!4395153 (=> res!1812028 e!2736557)))

(assert (=> b!4395153 (= res!1812028 (= (h!54836 (toList!3195 lm!1707)) lt!1601917))))

(declare-fun b!4395154 () Bool)

(assert (=> b!4395154 (= e!2736557 (contains!11594 (t!356283 (toList!3195 lm!1707)) lt!1601917))))

(assert (= (and d!1324175 res!1812027) b!4395153))

(assert (= (and b!4395153 (not res!1812028)) b!4395154))

(declare-fun m!5055355 () Bool)

(assert (=> d!1324175 m!5055355))

(declare-fun m!5055357 () Bool)

(assert (=> d!1324175 m!5055357))

(declare-fun m!5055359 () Bool)

(assert (=> b!4395154 m!5055359))

(assert (=> b!4394984 d!1324175))

(declare-fun d!1324177 () Bool)

(declare-fun res!1812029 () Bool)

(declare-fun e!2736558 () Bool)

(assert (=> d!1324177 (=> res!1812029 e!2736558)))

(assert (=> d!1324177 (= res!1812029 (and (is-Cons!49224 (_2!27692 (h!54836 (toList!3195 lm!1707)))) (= (_1!27691 (h!54835 (_2!27692 (h!54836 (toList!3195 lm!1707))))) key!3918)))))

(assert (=> d!1324177 (= (containsKey!888 (_2!27692 (h!54836 (toList!3195 lm!1707))) key!3918) e!2736558)))

(declare-fun b!4395155 () Bool)

(declare-fun e!2736559 () Bool)

(assert (=> b!4395155 (= e!2736558 e!2736559)))

(declare-fun res!1812030 () Bool)

(assert (=> b!4395155 (=> (not res!1812030) (not e!2736559))))

(assert (=> b!4395155 (= res!1812030 (is-Cons!49224 (_2!27692 (h!54836 (toList!3195 lm!1707)))))))

(declare-fun b!4395156 () Bool)

(assert (=> b!4395156 (= e!2736559 (containsKey!888 (t!356282 (_2!27692 (h!54836 (toList!3195 lm!1707)))) key!3918))))

(assert (= (and d!1324177 (not res!1812029)) b!4395155))

(assert (= (and b!4395155 res!1812030) b!4395156))

(declare-fun m!5055361 () Bool)

(assert (=> b!4395156 m!5055361))

(assert (=> b!4394974 d!1324177))

(assert (=> b!4394985 d!1324135))

(declare-fun b!4395161 () Bool)

(declare-fun tp!1331537 () Bool)

(declare-fun e!2736562 () Bool)

(assert (=> b!4395161 (= e!2736562 (and tp_is_empty!25661 tp_is_empty!25663 tp!1331537))))

(assert (=> b!4394977 (= tp!1331527 e!2736562)))

(assert (= (and b!4394977 (is-Cons!49224 (t!356282 newBucket!200))) b!4395161))

(declare-fun b!4395166 () Bool)

(declare-fun e!2736565 () Bool)

(declare-fun tp!1331542 () Bool)

(declare-fun tp!1331543 () Bool)

(assert (=> b!4395166 (= e!2736565 (and tp!1331542 tp!1331543))))

(assert (=> b!4394983 (= tp!1331528 e!2736565)))

(assert (= (and b!4394983 (is-Cons!49225 (toList!3195 lm!1707))) b!4395166))

(declare-fun b_lambda!139075 () Bool)

(assert (= b_lambda!139067 (or start!426666 b_lambda!139075)))

(declare-fun bs!726367 () Bool)

(declare-fun d!1324179 () Bool)

(assert (= bs!726367 (and d!1324179 start!426666)))

(assert (=> bs!726367 (= (dynLambda!20740 lambda!147680 (tuple2!48797 hash!377 newBucket!200)) (noDuplicateKeys!606 (_2!27692 (tuple2!48797 hash!377 newBucket!200))))))

(declare-fun m!5055363 () Bool)

(assert (=> bs!726367 m!5055363))

(assert (=> b!4395096 d!1324179))

(declare-fun b_lambda!139077 () Bool)

(assert (= b_lambda!139071 (or start!426666 b_lambda!139077)))

(declare-fun bs!726368 () Bool)

(declare-fun d!1324181 () Bool)

(assert (= bs!726368 (and d!1324181 start!426666)))

(assert (=> bs!726368 (= (dynLambda!20740 lambda!147680 lt!1601917) (noDuplicateKeys!606 (_2!27692 lt!1601917)))))

(declare-fun m!5055365 () Bool)

(assert (=> bs!726368 m!5055365))

(assert (=> d!1324167 d!1324181))

(declare-fun b_lambda!139079 () Bool)

(assert (= b_lambda!139069 (or start!426666 b_lambda!139079)))

(declare-fun bs!726369 () Bool)

(declare-fun d!1324183 () Bool)

(assert (= bs!726369 (and d!1324183 start!426666)))

(assert (=> bs!726369 (= (dynLambda!20740 lambda!147680 (h!54836 (toList!3195 lm!1707))) (noDuplicateKeys!606 (_2!27692 (h!54836 (toList!3195 lm!1707)))))))

(assert (=> bs!726369 m!5055127))

(assert (=> b!4395097 d!1324183))

(declare-fun b_lambda!139081 () Bool)

(assert (= b_lambda!139065 (or start!426666 b_lambda!139081)))

(declare-fun bs!726370 () Bool)

(declare-fun d!1324185 () Bool)

(assert (= bs!726370 (and d!1324185 start!426666)))

(assert (=> bs!726370 (= (dynLambda!20740 lambda!147680 (h!54836 (toList!3195 lt!1601914))) (noDuplicateKeys!606 (_2!27692 (h!54836 (toList!3195 lt!1601914)))))))

(declare-fun m!5055367 () Bool)

(assert (=> bs!726370 m!5055367))

(assert (=> b!4395079 d!1324185))

(push 1)

(assert tp_is_empty!25663)

(assert (not b_lambda!139075))

(assert (not bs!726369))

(assert (not b!4395033))

(assert (not b!4395080))

(assert (not b!4395073))

(assert (not b!4395161))

(assert (not b!4395154))

(assert (not d!1324157))

(assert (not b!4395156))

(assert (not d!1324119))

(assert (not b!4395116))

(assert (not d!1324149))

(assert (not d!1324137))

(assert (not b!4395124))

(assert tp_is_empty!25661)

(assert (not b_lambda!139079))

(assert (not b!4395148))

(assert (not d!1324175))

(assert (not b!4395063))

(assert (not bs!726370))

(assert (not b!4395067))

(assert (not b!4395035))

(assert (not b!4395062))

(assert (not b!4395061))

(assert (not d!1324151))

(assert (not d!1324159))

(assert (not d!1324139))

(assert (not bs!726367))

(assert (not b!4395123))

(assert (not bm!305935))

(assert (not b!4395098))

(assert (not d!1324165))

(assert (not b!4395144))

(assert (not b!4395085))

(assert (not b!4395115))

(assert (not b!4395065))

(assert (not b!4395131))

(assert (not d!1324145))

(assert (not d!1324125))

(assert (not b!4395104))

(assert (not b!4395086))

(assert (not b!4395105))

(assert (not b!4395066))

(assert (not b_lambda!139081))

(assert (not d!1324133))

(assert (not d!1324169))

(assert (not d!1324121))

(assert (not b!4395166))

(assert (not d!1324123))

(assert (not d!1324173))

(assert (not b!4395060))

(assert (not d!1324167))

(assert (not b_lambda!139077))

(assert (not bs!726368))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

