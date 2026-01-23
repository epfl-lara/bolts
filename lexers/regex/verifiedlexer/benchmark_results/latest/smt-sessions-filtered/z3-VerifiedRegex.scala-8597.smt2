; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!457548 () Bool)

(assert start!457548)

(declare-fun b!4591949 () Bool)

(declare-fun res!1919835 () Bool)

(declare-fun e!2863953 () Bool)

(assert (=> b!4591949 (=> (not res!1919835) (not e!2863953))))

(declare-datatypes ((K!12390 0))(
  ( (K!12391 (val!18183 Int)) )
))
(declare-datatypes ((V!12636 0))(
  ( (V!12637 (val!18184 Int)) )
))
(declare-datatypes ((tuple2!51634 0))(
  ( (tuple2!51635 (_1!29111 K!12390) (_2!29111 V!12636)) )
))
(declare-datatypes ((List!51144 0))(
  ( (Nil!51020) (Cons!51020 (h!56970 tuple2!51634) (t!358138 List!51144)) )
))
(declare-datatypes ((tuple2!51636 0))(
  ( (tuple2!51637 (_1!29112 (_ BitVec 64)) (_2!29112 List!51144)) )
))
(declare-datatypes ((List!51145 0))(
  ( (Nil!51021) (Cons!51021 (h!56971 tuple2!51636) (t!358139 List!51145)) )
))
(declare-datatypes ((ListLongMap!3239 0))(
  ( (ListLongMap!3240 (toList!4607 List!51145)) )
))
(declare-fun lm!1477 () ListLongMap!3239)

(declare-fun key!3287 () K!12390)

(declare-datatypes ((ListMap!3869 0))(
  ( (ListMap!3870 (toList!4608 List!51144)) )
))
(declare-fun contains!13941 (ListMap!3869 K!12390) Bool)

(declare-fun extractMap!1356 (List!51145) ListMap!3869)

(assert (=> b!4591949 (= res!1919835 (contains!13941 (extractMap!1356 (toList!4607 lm!1477)) key!3287))))

(declare-fun b!4591950 () Bool)

(declare-fun e!2863952 () Bool)

(declare-fun tp!1340109 () Bool)

(assert (=> b!4591950 (= e!2863952 tp!1340109)))

(declare-fun b!4591951 () Bool)

(declare-fun e!2863950 () Bool)

(assert (=> b!4591951 (= e!2863953 e!2863950)))

(declare-fun res!1919833 () Bool)

(assert (=> b!4591951 (=> (not res!1919833) (not e!2863950))))

(declare-fun lt!1753837 () (_ BitVec 64))

(declare-fun hash!344 () (_ BitVec 64))

(assert (=> b!4591951 (= res!1919833 (= lt!1753837 hash!344))))

(declare-datatypes ((Hashable!5695 0))(
  ( (HashableExt!5694 (__x!31398 Int)) )
))
(declare-fun hashF!1107 () Hashable!5695)

(declare-fun hash!3171 (Hashable!5695 K!12390) (_ BitVec 64))

(assert (=> b!4591951 (= lt!1753837 (hash!3171 hashF!1107 key!3287))))

(declare-fun b!4591952 () Bool)

(declare-fun res!1919839 () Bool)

(assert (=> b!4591952 (=> (not res!1919839) (not e!2863950))))

(declare-fun newBucket!178 () List!51144)

(declare-fun allKeysSameHash!1152 (List!51144 (_ BitVec 64) Hashable!5695) Bool)

(assert (=> b!4591952 (= res!1919839 (allKeysSameHash!1152 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4591953 () Bool)

(declare-fun e!2863949 () Bool)

(declare-fun e!2863956 () Bool)

(assert (=> b!4591953 (= e!2863949 e!2863956)))

(declare-fun res!1919831 () Bool)

(assert (=> b!4591953 (=> res!1919831 e!2863956)))

(declare-fun lt!1753830 () Bool)

(assert (=> b!4591953 (= res!1919831 lt!1753830)))

(declare-datatypes ((Unit!107496 0))(
  ( (Unit!107497) )
))
(declare-fun lt!1753834 () Unit!107496)

(declare-fun e!2863951 () Unit!107496)

(assert (=> b!4591953 (= lt!1753834 e!2863951)))

(declare-fun c!786386 () Bool)

(assert (=> b!4591953 (= c!786386 lt!1753830)))

(declare-fun containsKey!2104 (List!51144 K!12390) Bool)

(assert (=> b!4591953 (= lt!1753830 (not (containsKey!2104 (_2!29112 (h!56971 (toList!4607 lm!1477))) key!3287)))))

(declare-fun b!4591954 () Bool)

(declare-fun Unit!107498 () Unit!107496)

(assert (=> b!4591954 (= e!2863951 Unit!107498)))

(declare-fun b!4591955 () Bool)

(declare-fun res!1919832 () Bool)

(assert (=> b!4591955 (=> res!1919832 e!2863949)))

(declare-fun noDuplicateKeys!1296 (List!51144) Bool)

(assert (=> b!4591955 (= res!1919832 (not (noDuplicateKeys!1296 newBucket!178)))))

(declare-fun b!4591956 () Bool)

(declare-fun e!2863955 () Bool)

(declare-fun lt!1753836 () List!51145)

(declare-fun lambda!184986 () Int)

(declare-fun forall!10552 (List!51145 Int) Bool)

(assert (=> b!4591956 (= e!2863955 (forall!10552 lt!1753836 lambda!184986))))

(declare-fun b!4591958 () Bool)

(assert (=> b!4591958 (= e!2863956 e!2863955)))

(declare-fun res!1919838 () Bool)

(assert (=> b!4591958 (=> res!1919838 e!2863955)))

(declare-fun containsKeyBiggerList!252 (List!51145 K!12390) Bool)

(assert (=> b!4591958 (= res!1919838 (not (containsKeyBiggerList!252 lt!1753836 key!3287)))))

(assert (=> b!4591958 (= lt!1753836 (Cons!51021 (h!56971 (toList!4607 lm!1477)) Nil!51021))))

(declare-fun b!4591959 () Bool)

(declare-fun res!1919837 () Bool)

(assert (=> b!4591959 (=> (not res!1919837) (not e!2863953))))

(declare-fun allKeysSameHashInMap!1407 (ListLongMap!3239 Hashable!5695) Bool)

(assert (=> b!4591959 (= res!1919837 (allKeysSameHashInMap!1407 lm!1477 hashF!1107))))

(declare-fun b!4591960 () Bool)

(declare-fun e!2863954 () Bool)

(declare-fun tp_is_empty!28479 () Bool)

(declare-fun tp!1340108 () Bool)

(declare-fun tp_is_empty!28477 () Bool)

(assert (=> b!4591960 (= e!2863954 (and tp_is_empty!28477 tp_is_empty!28479 tp!1340108))))

(declare-fun b!4591961 () Bool)

(declare-fun res!1919840 () Bool)

(assert (=> b!4591961 (=> res!1919840 e!2863949)))

(get-info :version)

(assert (=> b!4591961 (= res!1919840 (or ((_ is Nil!51021) (toList!4607 lm!1477)) (not (= (_1!29112 (h!56971 (toList!4607 lm!1477))) hash!344))))))

(declare-fun b!4591962 () Bool)

(assert (=> b!4591962 (= e!2863950 (not e!2863949))))

(declare-fun res!1919836 () Bool)

(assert (=> b!4591962 (=> res!1919836 e!2863949)))

(declare-fun lt!1753833 () List!51144)

(declare-fun removePairForKey!921 (List!51144 K!12390) List!51144)

(assert (=> b!4591962 (= res!1919836 (not (= newBucket!178 (removePairForKey!921 lt!1753833 key!3287))))))

(declare-fun lt!1753838 () tuple2!51636)

(declare-fun lt!1753832 () Unit!107496)

(declare-fun forallContained!2809 (List!51145 Int tuple2!51636) Unit!107496)

(assert (=> b!4591962 (= lt!1753832 (forallContained!2809 (toList!4607 lm!1477) lambda!184986 lt!1753838))))

(declare-fun contains!13942 (List!51145 tuple2!51636) Bool)

(assert (=> b!4591962 (contains!13942 (toList!4607 lm!1477) lt!1753838)))

(assert (=> b!4591962 (= lt!1753838 (tuple2!51637 hash!344 lt!1753833))))

(declare-fun lt!1753835 () Unit!107496)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!806 (List!51145 (_ BitVec 64) List!51144) Unit!107496)

(assert (=> b!4591962 (= lt!1753835 (lemmaGetValueByKeyImpliesContainsTuple!806 (toList!4607 lm!1477) hash!344 lt!1753833))))

(declare-fun apply!12033 (ListLongMap!3239 (_ BitVec 64)) List!51144)

(assert (=> b!4591962 (= lt!1753833 (apply!12033 lm!1477 hash!344))))

(declare-fun contains!13943 (ListLongMap!3239 (_ BitVec 64)) Bool)

(assert (=> b!4591962 (contains!13943 lm!1477 lt!1753837)))

(declare-fun lt!1753831 () Unit!107496)

(declare-fun lemmaInGenMapThenLongMapContainsHash!370 (ListLongMap!3239 K!12390 Hashable!5695) Unit!107496)

(assert (=> b!4591962 (= lt!1753831 (lemmaInGenMapThenLongMapContainsHash!370 lm!1477 key!3287 hashF!1107))))

(declare-fun res!1919834 () Bool)

(assert (=> start!457548 (=> (not res!1919834) (not e!2863953))))

(assert (=> start!457548 (= res!1919834 (forall!10552 (toList!4607 lm!1477) lambda!184986))))

(assert (=> start!457548 e!2863953))

(assert (=> start!457548 true))

(declare-fun inv!66574 (ListLongMap!3239) Bool)

(assert (=> start!457548 (and (inv!66574 lm!1477) e!2863952)))

(assert (=> start!457548 tp_is_empty!28477))

(assert (=> start!457548 e!2863954))

(declare-fun b!4591957 () Bool)

(declare-fun Unit!107499 () Unit!107496)

(assert (=> b!4591957 (= e!2863951 Unit!107499)))

(declare-fun lt!1753839 () Unit!107496)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!266 (ListLongMap!3239 K!12390 Hashable!5695) Unit!107496)

(assert (=> b!4591957 (= lt!1753839 (lemmaNotInItsHashBucketThenNotInMap!266 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4591957 false))

(assert (= (and start!457548 res!1919834) b!4591959))

(assert (= (and b!4591959 res!1919837) b!4591949))

(assert (= (and b!4591949 res!1919835) b!4591951))

(assert (= (and b!4591951 res!1919833) b!4591952))

(assert (= (and b!4591952 res!1919839) b!4591962))

(assert (= (and b!4591962 (not res!1919836)) b!4591955))

(assert (= (and b!4591955 (not res!1919832)) b!4591961))

(assert (= (and b!4591961 (not res!1919840)) b!4591953))

(assert (= (and b!4591953 c!786386) b!4591957))

(assert (= (and b!4591953 (not c!786386)) b!4591954))

(assert (= (and b!4591953 (not res!1919831)) b!4591958))

(assert (= (and b!4591958 (not res!1919838)) b!4591956))

(assert (= start!457548 b!4591950))

(assert (= (and start!457548 ((_ is Cons!51020) newBucket!178)) b!4591960))

(declare-fun m!5415279 () Bool)

(assert (=> b!4591957 m!5415279))

(declare-fun m!5415281 () Bool)

(assert (=> b!4591952 m!5415281))

(declare-fun m!5415283 () Bool)

(assert (=> b!4591951 m!5415283))

(declare-fun m!5415285 () Bool)

(assert (=> start!457548 m!5415285))

(declare-fun m!5415287 () Bool)

(assert (=> start!457548 m!5415287))

(declare-fun m!5415289 () Bool)

(assert (=> b!4591956 m!5415289))

(declare-fun m!5415291 () Bool)

(assert (=> b!4591949 m!5415291))

(assert (=> b!4591949 m!5415291))

(declare-fun m!5415293 () Bool)

(assert (=> b!4591949 m!5415293))

(declare-fun m!5415295 () Bool)

(assert (=> b!4591958 m!5415295))

(declare-fun m!5415297 () Bool)

(assert (=> b!4591959 m!5415297))

(declare-fun m!5415299 () Bool)

(assert (=> b!4591962 m!5415299))

(declare-fun m!5415301 () Bool)

(assert (=> b!4591962 m!5415301))

(declare-fun m!5415303 () Bool)

(assert (=> b!4591962 m!5415303))

(declare-fun m!5415305 () Bool)

(assert (=> b!4591962 m!5415305))

(declare-fun m!5415307 () Bool)

(assert (=> b!4591962 m!5415307))

(declare-fun m!5415309 () Bool)

(assert (=> b!4591962 m!5415309))

(declare-fun m!5415311 () Bool)

(assert (=> b!4591962 m!5415311))

(declare-fun m!5415313 () Bool)

(assert (=> b!4591953 m!5415313))

(declare-fun m!5415315 () Bool)

(assert (=> b!4591955 m!5415315))

(check-sat (not b!4591957) (not b!4591951) tp_is_empty!28479 tp_is_empty!28477 (not b!4591960) (not b!4591962) (not b!4591959) (not start!457548) (not b!4591956) (not b!4591950) (not b!4591953) (not b!4591949) (not b!4591958) (not b!4591955) (not b!4591952))
(check-sat)
(get-model)

(declare-fun d!1444618 () Bool)

(declare-fun res!1919845 () Bool)

(declare-fun e!2863961 () Bool)

(assert (=> d!1444618 (=> res!1919845 e!2863961)))

(assert (=> d!1444618 (= res!1919845 (and ((_ is Cons!51020) (_2!29112 (h!56971 (toList!4607 lm!1477)))) (= (_1!29111 (h!56970 (_2!29112 (h!56971 (toList!4607 lm!1477))))) key!3287)))))

(assert (=> d!1444618 (= (containsKey!2104 (_2!29112 (h!56971 (toList!4607 lm!1477))) key!3287) e!2863961)))

(declare-fun b!4591967 () Bool)

(declare-fun e!2863962 () Bool)

(assert (=> b!4591967 (= e!2863961 e!2863962)))

(declare-fun res!1919846 () Bool)

(assert (=> b!4591967 (=> (not res!1919846) (not e!2863962))))

(assert (=> b!4591967 (= res!1919846 ((_ is Cons!51020) (_2!29112 (h!56971 (toList!4607 lm!1477)))))))

(declare-fun b!4591968 () Bool)

(assert (=> b!4591968 (= e!2863962 (containsKey!2104 (t!358138 (_2!29112 (h!56971 (toList!4607 lm!1477)))) key!3287))))

(assert (= (and d!1444618 (not res!1919845)) b!4591967))

(assert (= (and b!4591967 res!1919846) b!4591968))

(declare-fun m!5415317 () Bool)

(assert (=> b!4591968 m!5415317))

(assert (=> b!4591953 d!1444618))

(declare-fun d!1444620 () Bool)

(declare-fun res!1919853 () Bool)

(declare-fun e!2863970 () Bool)

(assert (=> d!1444620 (=> res!1919853 e!2863970)))

(declare-fun e!2863969 () Bool)

(assert (=> d!1444620 (= res!1919853 e!2863969)))

(declare-fun res!1919855 () Bool)

(assert (=> d!1444620 (=> (not res!1919855) (not e!2863969))))

(assert (=> d!1444620 (= res!1919855 ((_ is Cons!51021) lt!1753836))))

(assert (=> d!1444620 (= (containsKeyBiggerList!252 lt!1753836 key!3287) e!2863970)))

(declare-fun b!4591975 () Bool)

(assert (=> b!4591975 (= e!2863969 (containsKey!2104 (_2!29112 (h!56971 lt!1753836)) key!3287))))

(declare-fun b!4591976 () Bool)

(declare-fun e!2863971 () Bool)

(assert (=> b!4591976 (= e!2863970 e!2863971)))

(declare-fun res!1919854 () Bool)

(assert (=> b!4591976 (=> (not res!1919854) (not e!2863971))))

(assert (=> b!4591976 (= res!1919854 ((_ is Cons!51021) lt!1753836))))

(declare-fun b!4591977 () Bool)

(assert (=> b!4591977 (= e!2863971 (containsKeyBiggerList!252 (t!358139 lt!1753836) key!3287))))

(assert (= (and d!1444620 res!1919855) b!4591975))

(assert (= (and d!1444620 (not res!1919853)) b!4591976))

(assert (= (and b!4591976 res!1919854) b!4591977))

(declare-fun m!5415319 () Bool)

(assert (=> b!4591975 m!5415319))

(declare-fun m!5415321 () Bool)

(assert (=> b!4591977 m!5415321))

(assert (=> b!4591958 d!1444620))

(declare-fun bs!1008103 () Bool)

(declare-fun d!1444622 () Bool)

(assert (= bs!1008103 (and d!1444622 start!457548)))

(declare-fun lambda!184989 () Int)

(assert (=> bs!1008103 (not (= lambda!184989 lambda!184986))))

(assert (=> d!1444622 true))

(assert (=> d!1444622 (= (allKeysSameHashInMap!1407 lm!1477 hashF!1107) (forall!10552 (toList!4607 lm!1477) lambda!184989))))

(declare-fun bs!1008104 () Bool)

(assert (= bs!1008104 d!1444622))

(declare-fun m!5415323 () Bool)

(assert (=> bs!1008104 m!5415323))

(assert (=> b!4591959 d!1444622))

(declare-fun bs!1008105 () Bool)

(declare-fun d!1444626 () Bool)

(assert (= bs!1008105 (and d!1444626 start!457548)))

(declare-fun lambda!184992 () Int)

(assert (=> bs!1008105 (= lambda!184992 lambda!184986)))

(declare-fun bs!1008106 () Bool)

(assert (= bs!1008106 (and d!1444626 d!1444622)))

(assert (=> bs!1008106 (not (= lambda!184992 lambda!184989))))

(assert (=> d!1444626 (not (contains!13941 (extractMap!1356 (toList!4607 lm!1477)) key!3287))))

(declare-fun lt!1753842 () Unit!107496)

(declare-fun choose!30671 (ListLongMap!3239 K!12390 Hashable!5695) Unit!107496)

(assert (=> d!1444626 (= lt!1753842 (choose!30671 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1444626 (forall!10552 (toList!4607 lm!1477) lambda!184992)))

(assert (=> d!1444626 (= (lemmaNotInItsHashBucketThenNotInMap!266 lm!1477 key!3287 hashF!1107) lt!1753842)))

(declare-fun bs!1008107 () Bool)

(assert (= bs!1008107 d!1444626))

(assert (=> bs!1008107 m!5415291))

(assert (=> bs!1008107 m!5415291))

(assert (=> bs!1008107 m!5415293))

(declare-fun m!5415331 () Bool)

(assert (=> bs!1008107 m!5415331))

(declare-fun m!5415333 () Bool)

(assert (=> bs!1008107 m!5415333))

(assert (=> b!4591957 d!1444626))

(declare-fun bs!1008108 () Bool)

(declare-fun d!1444632 () Bool)

(assert (= bs!1008108 (and d!1444632 start!457548)))

(declare-fun lambda!184995 () Int)

(assert (=> bs!1008108 (= lambda!184995 lambda!184986)))

(declare-fun bs!1008109 () Bool)

(assert (= bs!1008109 (and d!1444632 d!1444622)))

(assert (=> bs!1008109 (not (= lambda!184995 lambda!184989))))

(declare-fun bs!1008110 () Bool)

(assert (= bs!1008110 (and d!1444632 d!1444626)))

(assert (=> bs!1008110 (= lambda!184995 lambda!184992)))

(assert (=> d!1444632 (contains!13943 lm!1477 (hash!3171 hashF!1107 key!3287))))

(declare-fun lt!1753845 () Unit!107496)

(declare-fun choose!30672 (ListLongMap!3239 K!12390 Hashable!5695) Unit!107496)

(assert (=> d!1444632 (= lt!1753845 (choose!30672 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1444632 (forall!10552 (toList!4607 lm!1477) lambda!184995)))

(assert (=> d!1444632 (= (lemmaInGenMapThenLongMapContainsHash!370 lm!1477 key!3287 hashF!1107) lt!1753845)))

(declare-fun bs!1008111 () Bool)

(assert (= bs!1008111 d!1444632))

(assert (=> bs!1008111 m!5415283))

(assert (=> bs!1008111 m!5415283))

(declare-fun m!5415335 () Bool)

(assert (=> bs!1008111 m!5415335))

(declare-fun m!5415337 () Bool)

(assert (=> bs!1008111 m!5415337))

(declare-fun m!5415339 () Bool)

(assert (=> bs!1008111 m!5415339))

(assert (=> b!4591962 d!1444632))

(declare-fun d!1444634 () Bool)

(declare-fun e!2864010 () Bool)

(assert (=> d!1444634 e!2864010))

(declare-fun res!1919882 () Bool)

(assert (=> d!1444634 (=> res!1919882 e!2864010)))

(declare-fun lt!1753878 () Bool)

(assert (=> d!1444634 (= res!1919882 (not lt!1753878))))

(declare-fun lt!1753880 () Bool)

(assert (=> d!1444634 (= lt!1753878 lt!1753880)))

(declare-fun lt!1753879 () Unit!107496)

(declare-fun e!2864009 () Unit!107496)

(assert (=> d!1444634 (= lt!1753879 e!2864009)))

(declare-fun c!786398 () Bool)

(assert (=> d!1444634 (= c!786398 lt!1753880)))

(declare-fun containsKey!2106 (List!51145 (_ BitVec 64)) Bool)

(assert (=> d!1444634 (= lt!1753880 (containsKey!2106 (toList!4607 lm!1477) lt!1753837))))

(assert (=> d!1444634 (= (contains!13943 lm!1477 lt!1753837) lt!1753878)))

(declare-fun b!4592028 () Bool)

(declare-fun lt!1753881 () Unit!107496)

(assert (=> b!4592028 (= e!2864009 lt!1753881)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1184 (List!51145 (_ BitVec 64)) Unit!107496)

(assert (=> b!4592028 (= lt!1753881 (lemmaContainsKeyImpliesGetValueByKeyDefined!1184 (toList!4607 lm!1477) lt!1753837))))

(declare-datatypes ((Option!11360 0))(
  ( (None!11359) (Some!11359 (v!45289 List!51144)) )
))
(declare-fun isDefined!8628 (Option!11360) Bool)

(declare-fun getValueByKey!1280 (List!51145 (_ BitVec 64)) Option!11360)

(assert (=> b!4592028 (isDefined!8628 (getValueByKey!1280 (toList!4607 lm!1477) lt!1753837))))

(declare-fun b!4592029 () Bool)

(declare-fun Unit!107500 () Unit!107496)

(assert (=> b!4592029 (= e!2864009 Unit!107500)))

(declare-fun b!4592030 () Bool)

(assert (=> b!4592030 (= e!2864010 (isDefined!8628 (getValueByKey!1280 (toList!4607 lm!1477) lt!1753837)))))

(assert (= (and d!1444634 c!786398) b!4592028))

(assert (= (and d!1444634 (not c!786398)) b!4592029))

(assert (= (and d!1444634 (not res!1919882)) b!4592030))

(declare-fun m!5415341 () Bool)

(assert (=> d!1444634 m!5415341))

(declare-fun m!5415343 () Bool)

(assert (=> b!4592028 m!5415343))

(declare-fun m!5415345 () Bool)

(assert (=> b!4592028 m!5415345))

(assert (=> b!4592028 m!5415345))

(declare-fun m!5415347 () Bool)

(assert (=> b!4592028 m!5415347))

(assert (=> b!4592030 m!5415345))

(assert (=> b!4592030 m!5415345))

(assert (=> b!4592030 m!5415347))

(assert (=> b!4591962 d!1444634))

(declare-fun d!1444636 () Bool)

(assert (=> d!1444636 (contains!13942 (toList!4607 lm!1477) (tuple2!51637 hash!344 lt!1753833))))

(declare-fun lt!1753884 () Unit!107496)

(declare-fun choose!30673 (List!51145 (_ BitVec 64) List!51144) Unit!107496)

(assert (=> d!1444636 (= lt!1753884 (choose!30673 (toList!4607 lm!1477) hash!344 lt!1753833))))

(declare-fun e!2864013 () Bool)

(assert (=> d!1444636 e!2864013))

(declare-fun res!1919885 () Bool)

(assert (=> d!1444636 (=> (not res!1919885) (not e!2864013))))

(declare-fun isStrictlySorted!525 (List!51145) Bool)

(assert (=> d!1444636 (= res!1919885 (isStrictlySorted!525 (toList!4607 lm!1477)))))

(assert (=> d!1444636 (= (lemmaGetValueByKeyImpliesContainsTuple!806 (toList!4607 lm!1477) hash!344 lt!1753833) lt!1753884)))

(declare-fun b!4592033 () Bool)

(assert (=> b!4592033 (= e!2864013 (= (getValueByKey!1280 (toList!4607 lm!1477) hash!344) (Some!11359 lt!1753833)))))

(assert (= (and d!1444636 res!1919885) b!4592033))

(declare-fun m!5415369 () Bool)

(assert (=> d!1444636 m!5415369))

(declare-fun m!5415371 () Bool)

(assert (=> d!1444636 m!5415371))

(declare-fun m!5415373 () Bool)

(assert (=> d!1444636 m!5415373))

(declare-fun m!5415375 () Bool)

(assert (=> b!4592033 m!5415375))

(assert (=> b!4591962 d!1444636))

(declare-fun d!1444640 () Bool)

(declare-fun get!16853 (Option!11360) List!51144)

(assert (=> d!1444640 (= (apply!12033 lm!1477 hash!344) (get!16853 (getValueByKey!1280 (toList!4607 lm!1477) hash!344)))))

(declare-fun bs!1008112 () Bool)

(assert (= bs!1008112 d!1444640))

(assert (=> bs!1008112 m!5415375))

(assert (=> bs!1008112 m!5415375))

(declare-fun m!5415377 () Bool)

(assert (=> bs!1008112 m!5415377))

(assert (=> b!4591962 d!1444640))

(declare-fun d!1444642 () Bool)

(declare-fun lt!1753887 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!8613 (List!51145) (InoxSet tuple2!51636))

(assert (=> d!1444642 (= lt!1753887 (select (content!8613 (toList!4607 lm!1477)) lt!1753838))))

(declare-fun e!2864019 () Bool)

(assert (=> d!1444642 (= lt!1753887 e!2864019)))

(declare-fun res!1919891 () Bool)

(assert (=> d!1444642 (=> (not res!1919891) (not e!2864019))))

(assert (=> d!1444642 (= res!1919891 ((_ is Cons!51021) (toList!4607 lm!1477)))))

(assert (=> d!1444642 (= (contains!13942 (toList!4607 lm!1477) lt!1753838) lt!1753887)))

(declare-fun b!4592038 () Bool)

(declare-fun e!2864018 () Bool)

(assert (=> b!4592038 (= e!2864019 e!2864018)))

(declare-fun res!1919890 () Bool)

(assert (=> b!4592038 (=> res!1919890 e!2864018)))

(assert (=> b!4592038 (= res!1919890 (= (h!56971 (toList!4607 lm!1477)) lt!1753838))))

(declare-fun b!4592039 () Bool)

(assert (=> b!4592039 (= e!2864018 (contains!13942 (t!358139 (toList!4607 lm!1477)) lt!1753838))))

(assert (= (and d!1444642 res!1919891) b!4592038))

(assert (= (and b!4592038 (not res!1919890)) b!4592039))

(declare-fun m!5415379 () Bool)

(assert (=> d!1444642 m!5415379))

(declare-fun m!5415381 () Bool)

(assert (=> d!1444642 m!5415381))

(declare-fun m!5415383 () Bool)

(assert (=> b!4592039 m!5415383))

(assert (=> b!4591962 d!1444642))

(declare-fun b!4592055 () Bool)

(declare-fun e!2864027 () List!51144)

(assert (=> b!4592055 (= e!2864027 Nil!51020)))

(declare-fun b!4592052 () Bool)

(declare-fun e!2864026 () List!51144)

(assert (=> b!4592052 (= e!2864026 (t!358138 lt!1753833))))

(declare-fun d!1444644 () Bool)

(declare-fun lt!1753892 () List!51144)

(assert (=> d!1444644 (not (containsKey!2104 lt!1753892 key!3287))))

(assert (=> d!1444644 (= lt!1753892 e!2864026)))

(declare-fun c!786406 () Bool)

(assert (=> d!1444644 (= c!786406 (and ((_ is Cons!51020) lt!1753833) (= (_1!29111 (h!56970 lt!1753833)) key!3287)))))

(assert (=> d!1444644 (noDuplicateKeys!1296 lt!1753833)))

(assert (=> d!1444644 (= (removePairForKey!921 lt!1753833 key!3287) lt!1753892)))

(declare-fun b!4592054 () Bool)

(assert (=> b!4592054 (= e!2864027 (Cons!51020 (h!56970 lt!1753833) (removePairForKey!921 (t!358138 lt!1753833) key!3287)))))

(declare-fun b!4592053 () Bool)

(assert (=> b!4592053 (= e!2864026 e!2864027)))

(declare-fun c!786405 () Bool)

(assert (=> b!4592053 (= c!786405 ((_ is Cons!51020) lt!1753833))))

(assert (= (and d!1444644 c!786406) b!4592052))

(assert (= (and d!1444644 (not c!786406)) b!4592053))

(assert (= (and b!4592053 c!786405) b!4592054))

(assert (= (and b!4592053 (not c!786405)) b!4592055))

(declare-fun m!5415385 () Bool)

(assert (=> d!1444644 m!5415385))

(declare-fun m!5415387 () Bool)

(assert (=> d!1444644 m!5415387))

(declare-fun m!5415389 () Bool)

(assert (=> b!4592054 m!5415389))

(assert (=> b!4591962 d!1444644))

(declare-fun d!1444646 () Bool)

(declare-fun dynLambda!21367 (Int tuple2!51636) Bool)

(assert (=> d!1444646 (dynLambda!21367 lambda!184986 lt!1753838)))

(declare-fun lt!1753896 () Unit!107496)

(declare-fun choose!30674 (List!51145 Int tuple2!51636) Unit!107496)

(assert (=> d!1444646 (= lt!1753896 (choose!30674 (toList!4607 lm!1477) lambda!184986 lt!1753838))))

(declare-fun e!2864031 () Bool)

(assert (=> d!1444646 e!2864031))

(declare-fun res!1919894 () Bool)

(assert (=> d!1444646 (=> (not res!1919894) (not e!2864031))))

(assert (=> d!1444646 (= res!1919894 (forall!10552 (toList!4607 lm!1477) lambda!184986))))

(assert (=> d!1444646 (= (forallContained!2809 (toList!4607 lm!1477) lambda!184986 lt!1753838) lt!1753896)))

(declare-fun b!4592060 () Bool)

(assert (=> b!4592060 (= e!2864031 (contains!13942 (toList!4607 lm!1477) lt!1753838))))

(assert (= (and d!1444646 res!1919894) b!4592060))

(declare-fun b_lambda!168569 () Bool)

(assert (=> (not b_lambda!168569) (not d!1444646)))

(declare-fun m!5415399 () Bool)

(assert (=> d!1444646 m!5415399))

(declare-fun m!5415401 () Bool)

(assert (=> d!1444646 m!5415401))

(assert (=> d!1444646 m!5415285))

(assert (=> b!4592060 m!5415307))

(assert (=> b!4591962 d!1444646))

(declare-fun d!1444650 () Bool)

(assert (=> d!1444650 true))

(assert (=> d!1444650 true))

(declare-fun lambda!185004 () Int)

(declare-fun forall!10554 (List!51144 Int) Bool)

(assert (=> d!1444650 (= (allKeysSameHash!1152 newBucket!178 hash!344 hashF!1107) (forall!10554 newBucket!178 lambda!185004))))

(declare-fun bs!1008117 () Bool)

(assert (= bs!1008117 d!1444650))

(declare-fun m!5415405 () Bool)

(assert (=> bs!1008117 m!5415405))

(assert (=> b!4591952 d!1444650))

(declare-fun d!1444654 () Bool)

(declare-fun hash!3173 (Hashable!5695 K!12390) (_ BitVec 64))

(assert (=> d!1444654 (= (hash!3171 hashF!1107 key!3287) (hash!3173 hashF!1107 key!3287))))

(declare-fun bs!1008118 () Bool)

(assert (= bs!1008118 d!1444654))

(declare-fun m!5415407 () Bool)

(assert (=> bs!1008118 m!5415407))

(assert (=> b!4591951 d!1444654))

(declare-fun d!1444656 () Bool)

(declare-fun res!1919899 () Bool)

(declare-fun e!2864036 () Bool)

(assert (=> d!1444656 (=> res!1919899 e!2864036)))

(assert (=> d!1444656 (= res!1919899 ((_ is Nil!51021) (toList!4607 lm!1477)))))

(assert (=> d!1444656 (= (forall!10552 (toList!4607 lm!1477) lambda!184986) e!2864036)))

(declare-fun b!4592075 () Bool)

(declare-fun e!2864037 () Bool)

(assert (=> b!4592075 (= e!2864036 e!2864037)))

(declare-fun res!1919900 () Bool)

(assert (=> b!4592075 (=> (not res!1919900) (not e!2864037))))

(assert (=> b!4592075 (= res!1919900 (dynLambda!21367 lambda!184986 (h!56971 (toList!4607 lm!1477))))))

(declare-fun b!4592076 () Bool)

(assert (=> b!4592076 (= e!2864037 (forall!10552 (t!358139 (toList!4607 lm!1477)) lambda!184986))))

(assert (= (and d!1444656 (not res!1919899)) b!4592075))

(assert (= (and b!4592075 res!1919900) b!4592076))

(declare-fun b_lambda!168571 () Bool)

(assert (=> (not b_lambda!168571) (not b!4592075)))

(declare-fun m!5415413 () Bool)

(assert (=> b!4592075 m!5415413))

(declare-fun m!5415415 () Bool)

(assert (=> b!4592076 m!5415415))

(assert (=> start!457548 d!1444656))

(declare-fun d!1444662 () Bool)

(assert (=> d!1444662 (= (inv!66574 lm!1477) (isStrictlySorted!525 (toList!4607 lm!1477)))))

(declare-fun bs!1008121 () Bool)

(assert (= bs!1008121 d!1444662))

(assert (=> bs!1008121 m!5415373))

(assert (=> start!457548 d!1444662))

(declare-fun d!1444664 () Bool)

(declare-fun res!1919905 () Bool)

(declare-fun e!2864042 () Bool)

(assert (=> d!1444664 (=> res!1919905 e!2864042)))

(assert (=> d!1444664 (= res!1919905 ((_ is Nil!51021) lt!1753836))))

(assert (=> d!1444664 (= (forall!10552 lt!1753836 lambda!184986) e!2864042)))

(declare-fun b!4592081 () Bool)

(declare-fun e!2864044 () Bool)

(assert (=> b!4592081 (= e!2864042 e!2864044)))

(declare-fun res!1919907 () Bool)

(assert (=> b!4592081 (=> (not res!1919907) (not e!2864044))))

(assert (=> b!4592081 (= res!1919907 (dynLambda!21367 lambda!184986 (h!56971 lt!1753836)))))

(declare-fun b!4592083 () Bool)

(assert (=> b!4592083 (= e!2864044 (forall!10552 (t!358139 lt!1753836) lambda!184986))))

(assert (= (and d!1444664 (not res!1919905)) b!4592081))

(assert (= (and b!4592081 res!1919907) b!4592083))

(declare-fun b_lambda!168573 () Bool)

(assert (=> (not b_lambda!168573) (not b!4592081)))

(declare-fun m!5415417 () Bool)

(assert (=> b!4592081 m!5415417))

(declare-fun m!5415421 () Bool)

(assert (=> b!4592083 m!5415421))

(assert (=> b!4591956 d!1444664))

(declare-fun b!4592109 () Bool)

(declare-fun e!2864068 () Unit!107496)

(declare-fun lt!1753921 () Unit!107496)

(assert (=> b!4592109 (= e!2864068 lt!1753921)))

(declare-fun lt!1753918 () Unit!107496)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1186 (List!51144 K!12390) Unit!107496)

(assert (=> b!4592109 (= lt!1753918 (lemmaContainsKeyImpliesGetValueByKeyDefined!1186 (toList!4608 (extractMap!1356 (toList!4607 lm!1477))) key!3287))))

(declare-datatypes ((Option!11362 0))(
  ( (None!11361) (Some!11361 (v!45291 V!12636)) )
))
(declare-fun isDefined!8630 (Option!11362) Bool)

(declare-fun getValueByKey!1282 (List!51144 K!12390) Option!11362)

(assert (=> b!4592109 (isDefined!8630 (getValueByKey!1282 (toList!4608 (extractMap!1356 (toList!4607 lm!1477))) key!3287))))

(declare-fun lt!1753917 () Unit!107496)

(assert (=> b!4592109 (= lt!1753917 lt!1753918)))

(declare-fun lemmaInListThenGetKeysListContains!555 (List!51144 K!12390) Unit!107496)

(assert (=> b!4592109 (= lt!1753921 (lemmaInListThenGetKeysListContains!555 (toList!4608 (extractMap!1356 (toList!4607 lm!1477))) key!3287))))

(declare-fun call!320585 () Bool)

(assert (=> b!4592109 call!320585))

(declare-fun b!4592111 () Bool)

(assert (=> b!4592111 false))

(declare-fun lt!1753916 () Unit!107496)

(declare-fun lt!1753922 () Unit!107496)

(assert (=> b!4592111 (= lt!1753916 lt!1753922)))

(declare-fun containsKey!2107 (List!51144 K!12390) Bool)

(assert (=> b!4592111 (containsKey!2107 (toList!4608 (extractMap!1356 (toList!4607 lm!1477))) key!3287)))

(declare-fun lemmaInGetKeysListThenContainsKey!558 (List!51144 K!12390) Unit!107496)

(assert (=> b!4592111 (= lt!1753922 (lemmaInGetKeysListThenContainsKey!558 (toList!4608 (extractMap!1356 (toList!4607 lm!1477))) key!3287))))

(declare-fun e!2864064 () Unit!107496)

(declare-fun Unit!107503 () Unit!107496)

(assert (=> b!4592111 (= e!2864064 Unit!107503)))

(declare-fun b!4592112 () Bool)

(assert (=> b!4592112 (= e!2864068 e!2864064)))

(declare-fun c!786414 () Bool)

(assert (=> b!4592112 (= c!786414 call!320585)))

(declare-fun b!4592113 () Bool)

(declare-fun e!2864065 () Bool)

(declare-datatypes ((List!51147 0))(
  ( (Nil!51023) (Cons!51023 (h!56975 K!12390) (t!358141 List!51147)) )
))
(declare-fun contains!13945 (List!51147 K!12390) Bool)

(declare-fun keys!17846 (ListMap!3869) List!51147)

(assert (=> b!4592113 (= e!2864065 (not (contains!13945 (keys!17846 (extractMap!1356 (toList!4607 lm!1477))) key!3287)))))

(declare-fun b!4592114 () Bool)

(declare-fun e!2864067 () List!51147)

(declare-fun getKeysList!559 (List!51144) List!51147)

(assert (=> b!4592114 (= e!2864067 (getKeysList!559 (toList!4608 (extractMap!1356 (toList!4607 lm!1477)))))))

(declare-fun b!4592115 () Bool)

(declare-fun e!2864066 () Bool)

(assert (=> b!4592115 (= e!2864066 (contains!13945 (keys!17846 (extractMap!1356 (toList!4607 lm!1477))) key!3287))))

(declare-fun bm!320580 () Bool)

(assert (=> bm!320580 (= call!320585 (contains!13945 e!2864067 key!3287))))

(declare-fun c!786415 () Bool)

(declare-fun c!786416 () Bool)

(assert (=> bm!320580 (= c!786415 c!786416)))

(declare-fun b!4592116 () Bool)

(declare-fun Unit!107504 () Unit!107496)

(assert (=> b!4592116 (= e!2864064 Unit!107504)))

(declare-fun b!4592117 () Bool)

(assert (=> b!4592117 (= e!2864067 (keys!17846 (extractMap!1356 (toList!4607 lm!1477))))))

(declare-fun b!4592110 () Bool)

(declare-fun e!2864069 () Bool)

(assert (=> b!4592110 (= e!2864069 e!2864066)))

(declare-fun res!1919922 () Bool)

(assert (=> b!4592110 (=> (not res!1919922) (not e!2864066))))

(assert (=> b!4592110 (= res!1919922 (isDefined!8630 (getValueByKey!1282 (toList!4608 (extractMap!1356 (toList!4607 lm!1477))) key!3287)))))

(declare-fun d!1444666 () Bool)

(assert (=> d!1444666 e!2864069))

(declare-fun res!1919923 () Bool)

(assert (=> d!1444666 (=> res!1919923 e!2864069)))

(assert (=> d!1444666 (= res!1919923 e!2864065)))

(declare-fun res!1919921 () Bool)

(assert (=> d!1444666 (=> (not res!1919921) (not e!2864065))))

(declare-fun lt!1753919 () Bool)

(assert (=> d!1444666 (= res!1919921 (not lt!1753919))))

(declare-fun lt!1753923 () Bool)

(assert (=> d!1444666 (= lt!1753919 lt!1753923)))

(declare-fun lt!1753920 () Unit!107496)

(assert (=> d!1444666 (= lt!1753920 e!2864068)))

(assert (=> d!1444666 (= c!786416 lt!1753923)))

(assert (=> d!1444666 (= lt!1753923 (containsKey!2107 (toList!4608 (extractMap!1356 (toList!4607 lm!1477))) key!3287))))

(assert (=> d!1444666 (= (contains!13941 (extractMap!1356 (toList!4607 lm!1477)) key!3287) lt!1753919)))

(assert (= (and d!1444666 c!786416) b!4592109))

(assert (= (and d!1444666 (not c!786416)) b!4592112))

(assert (= (and b!4592112 c!786414) b!4592111))

(assert (= (and b!4592112 (not c!786414)) b!4592116))

(assert (= (or b!4592109 b!4592112) bm!320580))

(assert (= (and bm!320580 c!786415) b!4592114))

(assert (= (and bm!320580 (not c!786415)) b!4592117))

(assert (= (and d!1444666 res!1919921) b!4592113))

(assert (= (and d!1444666 (not res!1919923)) b!4592110))

(assert (= (and b!4592110 res!1919922) b!4592115))

(declare-fun m!5415435 () Bool)

(assert (=> d!1444666 m!5415435))

(declare-fun m!5415437 () Bool)

(assert (=> b!4592109 m!5415437))

(declare-fun m!5415439 () Bool)

(assert (=> b!4592109 m!5415439))

(assert (=> b!4592109 m!5415439))

(declare-fun m!5415441 () Bool)

(assert (=> b!4592109 m!5415441))

(declare-fun m!5415443 () Bool)

(assert (=> b!4592109 m!5415443))

(assert (=> b!4592111 m!5415435))

(declare-fun m!5415445 () Bool)

(assert (=> b!4592111 m!5415445))

(assert (=> b!4592115 m!5415291))

(declare-fun m!5415447 () Bool)

(assert (=> b!4592115 m!5415447))

(assert (=> b!4592115 m!5415447))

(declare-fun m!5415449 () Bool)

(assert (=> b!4592115 m!5415449))

(assert (=> b!4592110 m!5415439))

(assert (=> b!4592110 m!5415439))

(assert (=> b!4592110 m!5415441))

(declare-fun m!5415451 () Bool)

(assert (=> b!4592114 m!5415451))

(assert (=> b!4592113 m!5415291))

(assert (=> b!4592113 m!5415447))

(assert (=> b!4592113 m!5415447))

(assert (=> b!4592113 m!5415449))

(declare-fun m!5415453 () Bool)

(assert (=> bm!320580 m!5415453))

(assert (=> b!4592117 m!5415291))

(assert (=> b!4592117 m!5415447))

(assert (=> b!4591949 d!1444666))

(declare-fun bs!1008133 () Bool)

(declare-fun d!1444676 () Bool)

(assert (= bs!1008133 (and d!1444676 start!457548)))

(declare-fun lambda!185016 () Int)

(assert (=> bs!1008133 (= lambda!185016 lambda!184986)))

(declare-fun bs!1008134 () Bool)

(assert (= bs!1008134 (and d!1444676 d!1444622)))

(assert (=> bs!1008134 (not (= lambda!185016 lambda!184989))))

(declare-fun bs!1008135 () Bool)

(assert (= bs!1008135 (and d!1444676 d!1444626)))

(assert (=> bs!1008135 (= lambda!185016 lambda!184992)))

(declare-fun bs!1008136 () Bool)

(assert (= bs!1008136 (and d!1444676 d!1444632)))

(assert (=> bs!1008136 (= lambda!185016 lambda!184995)))

(declare-fun lt!1753938 () ListMap!3869)

(declare-fun invariantList!1111 (List!51144) Bool)

(assert (=> d!1444676 (invariantList!1111 (toList!4608 lt!1753938))))

(declare-fun e!2864087 () ListMap!3869)

(assert (=> d!1444676 (= lt!1753938 e!2864087)))

(declare-fun c!786425 () Bool)

(assert (=> d!1444676 (= c!786425 ((_ is Cons!51021) (toList!4607 lm!1477)))))

(assert (=> d!1444676 (forall!10552 (toList!4607 lm!1477) lambda!185016)))

(assert (=> d!1444676 (= (extractMap!1356 (toList!4607 lm!1477)) lt!1753938)))

(declare-fun b!4592143 () Bool)

(declare-fun addToMapMapFromBucket!801 (List!51144 ListMap!3869) ListMap!3869)

(assert (=> b!4592143 (= e!2864087 (addToMapMapFromBucket!801 (_2!29112 (h!56971 (toList!4607 lm!1477))) (extractMap!1356 (t!358139 (toList!4607 lm!1477)))))))

(declare-fun b!4592144 () Bool)

(assert (=> b!4592144 (= e!2864087 (ListMap!3870 Nil!51020))))

(assert (= (and d!1444676 c!786425) b!4592143))

(assert (= (and d!1444676 (not c!786425)) b!4592144))

(declare-fun m!5415481 () Bool)

(assert (=> d!1444676 m!5415481))

(declare-fun m!5415483 () Bool)

(assert (=> d!1444676 m!5415483))

(declare-fun m!5415485 () Bool)

(assert (=> b!4592143 m!5415485))

(assert (=> b!4592143 m!5415485))

(declare-fun m!5415487 () Bool)

(assert (=> b!4592143 m!5415487))

(assert (=> b!4591949 d!1444676))

(declare-fun d!1444688 () Bool)

(declare-fun res!1919937 () Bool)

(declare-fun e!2864092 () Bool)

(assert (=> d!1444688 (=> res!1919937 e!2864092)))

(assert (=> d!1444688 (= res!1919937 (not ((_ is Cons!51020) newBucket!178)))))

(assert (=> d!1444688 (= (noDuplicateKeys!1296 newBucket!178) e!2864092)))

(declare-fun b!4592149 () Bool)

(declare-fun e!2864093 () Bool)

(assert (=> b!4592149 (= e!2864092 e!2864093)))

(declare-fun res!1919938 () Bool)

(assert (=> b!4592149 (=> (not res!1919938) (not e!2864093))))

(assert (=> b!4592149 (= res!1919938 (not (containsKey!2104 (t!358138 newBucket!178) (_1!29111 (h!56970 newBucket!178)))))))

(declare-fun b!4592150 () Bool)

(assert (=> b!4592150 (= e!2864093 (noDuplicateKeys!1296 (t!358138 newBucket!178)))))

(assert (= (and d!1444688 (not res!1919937)) b!4592149))

(assert (= (and b!4592149 res!1919938) b!4592150))

(declare-fun m!5415489 () Bool)

(assert (=> b!4592149 m!5415489))

(declare-fun m!5415491 () Bool)

(assert (=> b!4592150 m!5415491))

(assert (=> b!4591955 d!1444688))

(declare-fun b!4592155 () Bool)

(declare-fun e!2864096 () Bool)

(declare-fun tp!1340114 () Bool)

(declare-fun tp!1340115 () Bool)

(assert (=> b!4592155 (= e!2864096 (and tp!1340114 tp!1340115))))

(assert (=> b!4591950 (= tp!1340109 e!2864096)))

(assert (= (and b!4591950 ((_ is Cons!51021) (toList!4607 lm!1477))) b!4592155))

(declare-fun e!2864103 () Bool)

(declare-fun tp!1340118 () Bool)

(declare-fun b!4592166 () Bool)

(assert (=> b!4592166 (= e!2864103 (and tp_is_empty!28477 tp_is_empty!28479 tp!1340118))))

(assert (=> b!4591960 (= tp!1340108 e!2864103)))

(assert (= (and b!4591960 ((_ is Cons!51020) (t!358138 newBucket!178))) b!4592166))

(declare-fun b_lambda!168579 () Bool)

(assert (= b_lambda!168569 (or start!457548 b_lambda!168579)))

(declare-fun bs!1008137 () Bool)

(declare-fun d!1444690 () Bool)

(assert (= bs!1008137 (and d!1444690 start!457548)))

(assert (=> bs!1008137 (= (dynLambda!21367 lambda!184986 lt!1753838) (noDuplicateKeys!1296 (_2!29112 lt!1753838)))))

(declare-fun m!5415493 () Bool)

(assert (=> bs!1008137 m!5415493))

(assert (=> d!1444646 d!1444690))

(declare-fun b_lambda!168581 () Bool)

(assert (= b_lambda!168573 (or start!457548 b_lambda!168581)))

(declare-fun bs!1008138 () Bool)

(declare-fun d!1444692 () Bool)

(assert (= bs!1008138 (and d!1444692 start!457548)))

(assert (=> bs!1008138 (= (dynLambda!21367 lambda!184986 (h!56971 lt!1753836)) (noDuplicateKeys!1296 (_2!29112 (h!56971 lt!1753836))))))

(declare-fun m!5415495 () Bool)

(assert (=> bs!1008138 m!5415495))

(assert (=> b!4592081 d!1444692))

(declare-fun b_lambda!168583 () Bool)

(assert (= b_lambda!168571 (or start!457548 b_lambda!168583)))

(declare-fun bs!1008139 () Bool)

(declare-fun d!1444694 () Bool)

(assert (= bs!1008139 (and d!1444694 start!457548)))

(assert (=> bs!1008139 (= (dynLambda!21367 lambda!184986 (h!56971 (toList!4607 lm!1477))) (noDuplicateKeys!1296 (_2!29112 (h!56971 (toList!4607 lm!1477)))))))

(declare-fun m!5415497 () Bool)

(assert (=> bs!1008139 m!5415497))

(assert (=> b!4592075 d!1444694))

(check-sat (not b!4592054) (not b!4592110) (not b!4592060) (not b!4592039) (not d!1444634) (not b!4592113) (not b_lambda!168581) (not b!4592114) (not bs!1008137) (not b!4592076) (not d!1444632) (not d!1444622) (not d!1444666) (not bs!1008139) (not d!1444644) (not b!4592149) (not b_lambda!168579) (not d!1444640) (not b!4591968) tp_is_empty!28479 (not b!4592143) (not b!4592155) (not b!4592166) (not b!4591975) (not b_lambda!168583) (not b!4592030) tp_is_empty!28477 (not d!1444642) (not b!4592115) (not b!4592117) (not d!1444662) (not bm!320580) (not b!4592111) (not b!4592109) (not b!4591977) (not b!4592150) (not d!1444676) (not d!1444626) (not d!1444654) (not d!1444650) (not b!4592033) (not d!1444646) (not bs!1008138) (not b!4592083) (not b!4592028) (not d!1444636))
(check-sat)
(get-model)

(declare-fun d!1444706 () Bool)

(declare-fun e!2864118 () Bool)

(assert (=> d!1444706 e!2864118))

(declare-fun res!1919947 () Bool)

(assert (=> d!1444706 (=> res!1919947 e!2864118)))

(declare-fun lt!1753954 () Bool)

(assert (=> d!1444706 (= res!1919947 (not lt!1753954))))

(declare-fun lt!1753956 () Bool)

(assert (=> d!1444706 (= lt!1753954 lt!1753956)))

(declare-fun lt!1753955 () Unit!107496)

(declare-fun e!2864117 () Unit!107496)

(assert (=> d!1444706 (= lt!1753955 e!2864117)))

(declare-fun c!786429 () Bool)

(assert (=> d!1444706 (= c!786429 lt!1753956)))

(assert (=> d!1444706 (= lt!1753956 (containsKey!2106 (toList!4607 lm!1477) (hash!3171 hashF!1107 key!3287)))))

(assert (=> d!1444706 (= (contains!13943 lm!1477 (hash!3171 hashF!1107 key!3287)) lt!1753954)))

(declare-fun b!4592185 () Bool)

(declare-fun lt!1753957 () Unit!107496)

(assert (=> b!4592185 (= e!2864117 lt!1753957)))

(assert (=> b!4592185 (= lt!1753957 (lemmaContainsKeyImpliesGetValueByKeyDefined!1184 (toList!4607 lm!1477) (hash!3171 hashF!1107 key!3287)))))

(assert (=> b!4592185 (isDefined!8628 (getValueByKey!1280 (toList!4607 lm!1477) (hash!3171 hashF!1107 key!3287)))))

(declare-fun b!4592186 () Bool)

(declare-fun Unit!107506 () Unit!107496)

(assert (=> b!4592186 (= e!2864117 Unit!107506)))

(declare-fun b!4592187 () Bool)

(assert (=> b!4592187 (= e!2864118 (isDefined!8628 (getValueByKey!1280 (toList!4607 lm!1477) (hash!3171 hashF!1107 key!3287))))))

(assert (= (and d!1444706 c!786429) b!4592185))

(assert (= (and d!1444706 (not c!786429)) b!4592186))

(assert (= (and d!1444706 (not res!1919947)) b!4592187))

(assert (=> d!1444706 m!5415283))

(declare-fun m!5415521 () Bool)

(assert (=> d!1444706 m!5415521))

(assert (=> b!4592185 m!5415283))

(declare-fun m!5415523 () Bool)

(assert (=> b!4592185 m!5415523))

(assert (=> b!4592185 m!5415283))

(declare-fun m!5415525 () Bool)

(assert (=> b!4592185 m!5415525))

(assert (=> b!4592185 m!5415525))

(declare-fun m!5415527 () Bool)

(assert (=> b!4592185 m!5415527))

(assert (=> b!4592187 m!5415283))

(assert (=> b!4592187 m!5415525))

(assert (=> b!4592187 m!5415525))

(assert (=> b!4592187 m!5415527))

(assert (=> d!1444632 d!1444706))

(assert (=> d!1444632 d!1444654))

(declare-fun d!1444708 () Bool)

(assert (=> d!1444708 (contains!13943 lm!1477 (hash!3171 hashF!1107 key!3287))))

(assert (=> d!1444708 true))

(declare-fun _$27!1399 () Unit!107496)

(assert (=> d!1444708 (= (choose!30672 lm!1477 key!3287 hashF!1107) _$27!1399)))

(declare-fun bs!1008143 () Bool)

(assert (= bs!1008143 d!1444708))

(assert (=> bs!1008143 m!5415283))

(assert (=> bs!1008143 m!5415283))

(assert (=> bs!1008143 m!5415335))

(assert (=> d!1444632 d!1444708))

(declare-fun d!1444710 () Bool)

(declare-fun res!1919948 () Bool)

(declare-fun e!2864119 () Bool)

(assert (=> d!1444710 (=> res!1919948 e!2864119)))

(assert (=> d!1444710 (= res!1919948 ((_ is Nil!51021) (toList!4607 lm!1477)))))

(assert (=> d!1444710 (= (forall!10552 (toList!4607 lm!1477) lambda!184995) e!2864119)))

(declare-fun b!4592188 () Bool)

(declare-fun e!2864120 () Bool)

(assert (=> b!4592188 (= e!2864119 e!2864120)))

(declare-fun res!1919949 () Bool)

(assert (=> b!4592188 (=> (not res!1919949) (not e!2864120))))

(assert (=> b!4592188 (= res!1919949 (dynLambda!21367 lambda!184995 (h!56971 (toList!4607 lm!1477))))))

(declare-fun b!4592189 () Bool)

(assert (=> b!4592189 (= e!2864120 (forall!10552 (t!358139 (toList!4607 lm!1477)) lambda!184995))))

(assert (= (and d!1444710 (not res!1919948)) b!4592188))

(assert (= (and b!4592188 res!1919949) b!4592189))

(declare-fun b_lambda!168593 () Bool)

(assert (=> (not b_lambda!168593) (not b!4592188)))

(declare-fun m!5415529 () Bool)

(assert (=> b!4592188 m!5415529))

(declare-fun m!5415531 () Bool)

(assert (=> b!4592189 m!5415531))

(assert (=> d!1444632 d!1444710))

(assert (=> d!1444626 d!1444666))

(assert (=> d!1444626 d!1444676))

(declare-fun d!1444712 () Bool)

(assert (=> d!1444712 (not (contains!13941 (extractMap!1356 (toList!4607 lm!1477)) key!3287))))

(assert (=> d!1444712 true))

(declare-fun _$26!512 () Unit!107496)

(assert (=> d!1444712 (= (choose!30671 lm!1477 key!3287 hashF!1107) _$26!512)))

(declare-fun bs!1008144 () Bool)

(assert (= bs!1008144 d!1444712))

(assert (=> bs!1008144 m!5415291))

(assert (=> bs!1008144 m!5415291))

(assert (=> bs!1008144 m!5415293))

(assert (=> d!1444626 d!1444712))

(declare-fun d!1444714 () Bool)

(declare-fun res!1919950 () Bool)

(declare-fun e!2864121 () Bool)

(assert (=> d!1444714 (=> res!1919950 e!2864121)))

(assert (=> d!1444714 (= res!1919950 ((_ is Nil!51021) (toList!4607 lm!1477)))))

(assert (=> d!1444714 (= (forall!10552 (toList!4607 lm!1477) lambda!184992) e!2864121)))

(declare-fun b!4592190 () Bool)

(declare-fun e!2864122 () Bool)

(assert (=> b!4592190 (= e!2864121 e!2864122)))

(declare-fun res!1919951 () Bool)

(assert (=> b!4592190 (=> (not res!1919951) (not e!2864122))))

(assert (=> b!4592190 (= res!1919951 (dynLambda!21367 lambda!184992 (h!56971 (toList!4607 lm!1477))))))

(declare-fun b!4592191 () Bool)

(assert (=> b!4592191 (= e!2864122 (forall!10552 (t!358139 (toList!4607 lm!1477)) lambda!184992))))

(assert (= (and d!1444714 (not res!1919950)) b!4592190))

(assert (= (and b!4592190 res!1919951) b!4592191))

(declare-fun b_lambda!168595 () Bool)

(assert (=> (not b_lambda!168595) (not b!4592190)))

(declare-fun m!5415533 () Bool)

(assert (=> b!4592190 m!5415533))

(declare-fun m!5415535 () Bool)

(assert (=> b!4592191 m!5415535))

(assert (=> d!1444626 d!1444714))

(declare-fun bs!1008145 () Bool)

(declare-fun b!4592212 () Bool)

(assert (= bs!1008145 (and b!4592212 d!1444650)))

(declare-fun lambda!185061 () Int)

(assert (=> bs!1008145 (not (= lambda!185061 lambda!185004))))

(assert (=> b!4592212 true))

(declare-fun bs!1008146 () Bool)

(declare-fun b!4592209 () Bool)

(assert (= bs!1008146 (and b!4592209 d!1444650)))

(declare-fun lambda!185062 () Int)

(assert (=> bs!1008146 (not (= lambda!185062 lambda!185004))))

(declare-fun bs!1008147 () Bool)

(assert (= bs!1008147 (and b!4592209 b!4592212)))

(assert (=> bs!1008147 (= lambda!185062 lambda!185061)))

(assert (=> b!4592209 true))

(declare-fun lambda!185065 () Int)

(assert (=> bs!1008146 (not (= lambda!185065 lambda!185004))))

(declare-fun lt!1754052 () ListMap!3869)

(assert (=> bs!1008147 (= (= lt!1754052 (extractMap!1356 (t!358139 (toList!4607 lm!1477)))) (= lambda!185065 lambda!185061))))

(assert (=> b!4592209 (= (= lt!1754052 (extractMap!1356 (t!358139 (toList!4607 lm!1477)))) (= lambda!185065 lambda!185062))))

(assert (=> b!4592209 true))

(declare-fun bs!1008148 () Bool)

(declare-fun d!1444716 () Bool)

(assert (= bs!1008148 (and d!1444716 d!1444650)))

(declare-fun lambda!185069 () Int)

(assert (=> bs!1008148 (not (= lambda!185069 lambda!185004))))

(declare-fun bs!1008149 () Bool)

(assert (= bs!1008149 (and d!1444716 b!4592212)))

(declare-fun lt!1754046 () ListMap!3869)

(assert (=> bs!1008149 (= (= lt!1754046 (extractMap!1356 (t!358139 (toList!4607 lm!1477)))) (= lambda!185069 lambda!185061))))

(declare-fun bs!1008150 () Bool)

(assert (= bs!1008150 (and d!1444716 b!4592209)))

(assert (=> bs!1008150 (= (= lt!1754046 (extractMap!1356 (t!358139 (toList!4607 lm!1477)))) (= lambda!185069 lambda!185062))))

(assert (=> bs!1008150 (= (= lt!1754046 lt!1754052) (= lambda!185069 lambda!185065))))

(assert (=> d!1444716 true))

(declare-fun b!4592208 () Bool)

(declare-fun res!1919962 () Bool)

(declare-fun e!2864133 () Bool)

(assert (=> b!4592208 (=> (not res!1919962) (not e!2864133))))

(assert (=> b!4592208 (= res!1919962 (forall!10554 (toList!4608 (extractMap!1356 (t!358139 (toList!4607 lm!1477)))) lambda!185069))))

(declare-fun c!786434 () Bool)

(declare-fun call!320594 () Bool)

(declare-fun bm!320587 () Bool)

(assert (=> bm!320587 (= call!320594 (forall!10554 (toList!4608 (extractMap!1356 (t!358139 (toList!4607 lm!1477)))) (ite c!786434 lambda!185061 lambda!185065)))))

(declare-fun e!2864135 () ListMap!3869)

(assert (=> b!4592209 (= e!2864135 lt!1754052)))

(declare-fun lt!1754045 () ListMap!3869)

(declare-fun +!1727 (ListMap!3869 tuple2!51634) ListMap!3869)

(assert (=> b!4592209 (= lt!1754045 (+!1727 (extractMap!1356 (t!358139 (toList!4607 lm!1477))) (h!56970 (_2!29112 (h!56971 (toList!4607 lm!1477))))))))

(assert (=> b!4592209 (= lt!1754052 (addToMapMapFromBucket!801 (t!358138 (_2!29112 (h!56971 (toList!4607 lm!1477)))) (+!1727 (extractMap!1356 (t!358139 (toList!4607 lm!1477))) (h!56970 (_2!29112 (h!56971 (toList!4607 lm!1477)))))))))

(declare-fun lt!1754048 () Unit!107496)

(declare-fun call!320592 () Unit!107496)

(assert (=> b!4592209 (= lt!1754048 call!320592)))

(assert (=> b!4592209 (forall!10554 (toList!4608 (extractMap!1356 (t!358139 (toList!4607 lm!1477)))) lambda!185062)))

(declare-fun lt!1754041 () Unit!107496)

(assert (=> b!4592209 (= lt!1754041 lt!1754048)))

(assert (=> b!4592209 (forall!10554 (toList!4608 lt!1754045) lambda!185065)))

(declare-fun lt!1754050 () Unit!107496)

(declare-fun Unit!107507 () Unit!107496)

(assert (=> b!4592209 (= lt!1754050 Unit!107507)))

(assert (=> b!4592209 (forall!10554 (t!358138 (_2!29112 (h!56971 (toList!4607 lm!1477)))) lambda!185065)))

(declare-fun lt!1754042 () Unit!107496)

(declare-fun Unit!107508 () Unit!107496)

(assert (=> b!4592209 (= lt!1754042 Unit!107508)))

(declare-fun lt!1754039 () Unit!107496)

(declare-fun Unit!107509 () Unit!107496)

(assert (=> b!4592209 (= lt!1754039 Unit!107509)))

(declare-fun lt!1754044 () Unit!107496)

(declare-fun forallContained!2810 (List!51144 Int tuple2!51634) Unit!107496)

(assert (=> b!4592209 (= lt!1754044 (forallContained!2810 (toList!4608 lt!1754045) lambda!185065 (h!56970 (_2!29112 (h!56971 (toList!4607 lm!1477))))))))

(assert (=> b!4592209 (contains!13941 lt!1754045 (_1!29111 (h!56970 (_2!29112 (h!56971 (toList!4607 lm!1477))))))))

(declare-fun lt!1754036 () Unit!107496)

(declare-fun Unit!107510 () Unit!107496)

(assert (=> b!4592209 (= lt!1754036 Unit!107510)))

(assert (=> b!4592209 (contains!13941 lt!1754052 (_1!29111 (h!56970 (_2!29112 (h!56971 (toList!4607 lm!1477))))))))

(declare-fun lt!1754035 () Unit!107496)

(declare-fun Unit!107511 () Unit!107496)

(assert (=> b!4592209 (= lt!1754035 Unit!107511)))

(assert (=> b!4592209 (forall!10554 (_2!29112 (h!56971 (toList!4607 lm!1477))) lambda!185065)))

(declare-fun lt!1754038 () Unit!107496)

(declare-fun Unit!107512 () Unit!107496)

(assert (=> b!4592209 (= lt!1754038 Unit!107512)))

(assert (=> b!4592209 (forall!10554 (toList!4608 lt!1754045) lambda!185065)))

(declare-fun lt!1754034 () Unit!107496)

(declare-fun Unit!107513 () Unit!107496)

(assert (=> b!4592209 (= lt!1754034 Unit!107513)))

(declare-fun lt!1754049 () Unit!107496)

(declare-fun Unit!107514 () Unit!107496)

(assert (=> b!4592209 (= lt!1754049 Unit!107514)))

(declare-fun lt!1754047 () Unit!107496)

(declare-fun addForallContainsKeyThenBeforeAdding!425 (ListMap!3869 ListMap!3869 K!12390 V!12636) Unit!107496)

(assert (=> b!4592209 (= lt!1754047 (addForallContainsKeyThenBeforeAdding!425 (extractMap!1356 (t!358139 (toList!4607 lm!1477))) lt!1754052 (_1!29111 (h!56970 (_2!29112 (h!56971 (toList!4607 lm!1477))))) (_2!29111 (h!56970 (_2!29112 (h!56971 (toList!4607 lm!1477)))))))))

(assert (=> b!4592209 call!320594))

(declare-fun lt!1754043 () Unit!107496)

(assert (=> b!4592209 (= lt!1754043 lt!1754047)))

(declare-fun call!320593 () Bool)

(assert (=> b!4592209 call!320593))

(declare-fun lt!1754032 () Unit!107496)

(declare-fun Unit!107515 () Unit!107496)

(assert (=> b!4592209 (= lt!1754032 Unit!107515)))

(declare-fun res!1919961 () Bool)

(assert (=> b!4592209 (= res!1919961 (forall!10554 (_2!29112 (h!56971 (toList!4607 lm!1477))) lambda!185065))))

(declare-fun e!2864134 () Bool)

(assert (=> b!4592209 (=> (not res!1919961) (not e!2864134))))

(assert (=> b!4592209 e!2864134))

(declare-fun lt!1754037 () Unit!107496)

(declare-fun Unit!107516 () Unit!107496)

(assert (=> b!4592209 (= lt!1754037 Unit!107516)))

(declare-fun b!4592210 () Bool)

(assert (=> b!4592210 (= e!2864134 (forall!10554 (toList!4608 (extractMap!1356 (t!358139 (toList!4607 lm!1477)))) lambda!185065))))

(declare-fun bm!320588 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!425 (ListMap!3869) Unit!107496)

(assert (=> bm!320588 (= call!320592 (lemmaContainsAllItsOwnKeys!425 (extractMap!1356 (t!358139 (toList!4607 lm!1477)))))))

(declare-fun bm!320589 () Bool)

(assert (=> bm!320589 (= call!320593 (forall!10554 (toList!4608 (extractMap!1356 (t!358139 (toList!4607 lm!1477)))) (ite c!786434 lambda!185061 lambda!185065)))))

(declare-fun b!4592211 () Bool)

(assert (=> b!4592211 (= e!2864133 (invariantList!1111 (toList!4608 lt!1754046)))))

(assert (=> b!4592212 (= e!2864135 (extractMap!1356 (t!358139 (toList!4607 lm!1477))))))

(declare-fun lt!1754033 () Unit!107496)

(assert (=> b!4592212 (= lt!1754033 call!320592)))

(assert (=> b!4592212 call!320594))

(declare-fun lt!1754051 () Unit!107496)

(assert (=> b!4592212 (= lt!1754051 lt!1754033)))

(assert (=> b!4592212 call!320593))

(declare-fun lt!1754040 () Unit!107496)

(declare-fun Unit!107517 () Unit!107496)

(assert (=> b!4592212 (= lt!1754040 Unit!107517)))

(assert (=> d!1444716 e!2864133))

(declare-fun res!1919960 () Bool)

(assert (=> d!1444716 (=> (not res!1919960) (not e!2864133))))

(assert (=> d!1444716 (= res!1919960 (forall!10554 (_2!29112 (h!56971 (toList!4607 lm!1477))) lambda!185069))))

(assert (=> d!1444716 (= lt!1754046 e!2864135)))

(assert (=> d!1444716 (= c!786434 ((_ is Nil!51020) (_2!29112 (h!56971 (toList!4607 lm!1477)))))))

(assert (=> d!1444716 (noDuplicateKeys!1296 (_2!29112 (h!56971 (toList!4607 lm!1477))))))

(assert (=> d!1444716 (= (addToMapMapFromBucket!801 (_2!29112 (h!56971 (toList!4607 lm!1477))) (extractMap!1356 (t!358139 (toList!4607 lm!1477)))) lt!1754046)))

(assert (= (and d!1444716 c!786434) b!4592212))

(assert (= (and d!1444716 (not c!786434)) b!4592209))

(assert (= (and b!4592209 res!1919961) b!4592210))

(assert (= (or b!4592212 b!4592209) bm!320587))

(assert (= (or b!4592212 b!4592209) bm!320589))

(assert (= (or b!4592212 b!4592209) bm!320588))

(assert (= (and d!1444716 res!1919960) b!4592208))

(assert (= (and b!4592208 res!1919962) b!4592211))

(declare-fun m!5415541 () Bool)

(assert (=> bm!320587 m!5415541))

(declare-fun m!5415543 () Bool)

(assert (=> b!4592209 m!5415543))

(declare-fun m!5415545 () Bool)

(assert (=> b!4592209 m!5415545))

(declare-fun m!5415547 () Bool)

(assert (=> b!4592209 m!5415547))

(declare-fun m!5415549 () Bool)

(assert (=> b!4592209 m!5415549))

(assert (=> b!4592209 m!5415485))

(declare-fun m!5415551 () Bool)

(assert (=> b!4592209 m!5415551))

(assert (=> b!4592209 m!5415547))

(assert (=> b!4592209 m!5415485))

(declare-fun m!5415553 () Bool)

(assert (=> b!4592209 m!5415553))

(declare-fun m!5415555 () Bool)

(assert (=> b!4592209 m!5415555))

(declare-fun m!5415557 () Bool)

(assert (=> b!4592209 m!5415557))

(declare-fun m!5415559 () Bool)

(assert (=> b!4592209 m!5415559))

(assert (=> b!4592209 m!5415555))

(assert (=> b!4592209 m!5415553))

(declare-fun m!5415561 () Bool)

(assert (=> b!4592209 m!5415561))

(declare-fun m!5415563 () Bool)

(assert (=> d!1444716 m!5415563))

(assert (=> d!1444716 m!5415497))

(declare-fun m!5415565 () Bool)

(assert (=> b!4592210 m!5415565))

(assert (=> bm!320589 m!5415541))

(declare-fun m!5415567 () Bool)

(assert (=> b!4592208 m!5415567))

(assert (=> bm!320588 m!5415485))

(declare-fun m!5415569 () Bool)

(assert (=> bm!320588 m!5415569))

(declare-fun m!5415571 () Bool)

(assert (=> b!4592211 m!5415571))

(assert (=> b!4592143 d!1444716))

(declare-fun bs!1008151 () Bool)

(declare-fun d!1444722 () Bool)

(assert (= bs!1008151 (and d!1444722 d!1444626)))

(declare-fun lambda!185073 () Int)

(assert (=> bs!1008151 (= lambda!185073 lambda!184992)))

(declare-fun bs!1008152 () Bool)

(assert (= bs!1008152 (and d!1444722 start!457548)))

(assert (=> bs!1008152 (= lambda!185073 lambda!184986)))

(declare-fun bs!1008153 () Bool)

(assert (= bs!1008153 (and d!1444722 d!1444632)))

(assert (=> bs!1008153 (= lambda!185073 lambda!184995)))

(declare-fun bs!1008154 () Bool)

(assert (= bs!1008154 (and d!1444722 d!1444676)))

(assert (=> bs!1008154 (= lambda!185073 lambda!185016)))

(declare-fun bs!1008155 () Bool)

(assert (= bs!1008155 (and d!1444722 d!1444622)))

(assert (=> bs!1008155 (not (= lambda!185073 lambda!184989))))

(declare-fun lt!1754063 () ListMap!3869)

(assert (=> d!1444722 (invariantList!1111 (toList!4608 lt!1754063))))

(declare-fun e!2864138 () ListMap!3869)

(assert (=> d!1444722 (= lt!1754063 e!2864138)))

(declare-fun c!786435 () Bool)

(assert (=> d!1444722 (= c!786435 ((_ is Cons!51021) (t!358139 (toList!4607 lm!1477))))))

(assert (=> d!1444722 (forall!10552 (t!358139 (toList!4607 lm!1477)) lambda!185073)))

(assert (=> d!1444722 (= (extractMap!1356 (t!358139 (toList!4607 lm!1477))) lt!1754063)))

(declare-fun b!4592217 () Bool)

(assert (=> b!4592217 (= e!2864138 (addToMapMapFromBucket!801 (_2!29112 (h!56971 (t!358139 (toList!4607 lm!1477)))) (extractMap!1356 (t!358139 (t!358139 (toList!4607 lm!1477))))))))

(declare-fun b!4592218 () Bool)

(assert (=> b!4592218 (= e!2864138 (ListMap!3870 Nil!51020))))

(assert (= (and d!1444722 c!786435) b!4592217))

(assert (= (and d!1444722 (not c!786435)) b!4592218))

(declare-fun m!5415573 () Bool)

(assert (=> d!1444722 m!5415573))

(declare-fun m!5415575 () Bool)

(assert (=> d!1444722 m!5415575))

(declare-fun m!5415577 () Bool)

(assert (=> b!4592217 m!5415577))

(assert (=> b!4592217 m!5415577))

(declare-fun m!5415579 () Bool)

(assert (=> b!4592217 m!5415579))

(assert (=> b!4592143 d!1444722))

(declare-fun d!1444724 () Bool)

(declare-fun res!1919967 () Bool)

(declare-fun e!2864141 () Bool)

(assert (=> d!1444724 (=> res!1919967 e!2864141)))

(assert (=> d!1444724 (= res!1919967 (not ((_ is Cons!51020) (_2!29112 (h!56971 (toList!4607 lm!1477))))))))

(assert (=> d!1444724 (= (noDuplicateKeys!1296 (_2!29112 (h!56971 (toList!4607 lm!1477)))) e!2864141)))

(declare-fun b!4592219 () Bool)

(declare-fun e!2864142 () Bool)

(assert (=> b!4592219 (= e!2864141 e!2864142)))

(declare-fun res!1919968 () Bool)

(assert (=> b!4592219 (=> (not res!1919968) (not e!2864142))))

(assert (=> b!4592219 (= res!1919968 (not (containsKey!2104 (t!358138 (_2!29112 (h!56971 (toList!4607 lm!1477)))) (_1!29111 (h!56970 (_2!29112 (h!56971 (toList!4607 lm!1477))))))))))

(declare-fun b!4592220 () Bool)

(assert (=> b!4592220 (= e!2864142 (noDuplicateKeys!1296 (t!358138 (_2!29112 (h!56971 (toList!4607 lm!1477))))))))

(assert (= (and d!1444724 (not res!1919967)) b!4592219))

(assert (= (and b!4592219 res!1919968) b!4592220))

(declare-fun m!5415581 () Bool)

(assert (=> b!4592219 m!5415581))

(declare-fun m!5415583 () Bool)

(assert (=> b!4592220 m!5415583))

(assert (=> bs!1008139 d!1444724))

(declare-fun d!1444726 () Bool)

(assert (=> d!1444726 (isDefined!8630 (getValueByKey!1282 (toList!4608 (extractMap!1356 (toList!4607 lm!1477))) key!3287))))

(declare-fun lt!1754066 () Unit!107496)

(declare-fun choose!30679 (List!51144 K!12390) Unit!107496)

(assert (=> d!1444726 (= lt!1754066 (choose!30679 (toList!4608 (extractMap!1356 (toList!4607 lm!1477))) key!3287))))

(assert (=> d!1444726 (invariantList!1111 (toList!4608 (extractMap!1356 (toList!4607 lm!1477))))))

(assert (=> d!1444726 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1186 (toList!4608 (extractMap!1356 (toList!4607 lm!1477))) key!3287) lt!1754066)))

(declare-fun bs!1008156 () Bool)

(assert (= bs!1008156 d!1444726))

(assert (=> bs!1008156 m!5415439))

(assert (=> bs!1008156 m!5415439))

(assert (=> bs!1008156 m!5415441))

(declare-fun m!5415585 () Bool)

(assert (=> bs!1008156 m!5415585))

(declare-fun m!5415587 () Bool)

(assert (=> bs!1008156 m!5415587))

(assert (=> b!4592109 d!1444726))

(declare-fun d!1444728 () Bool)

(declare-fun isEmpty!28844 (Option!11362) Bool)

(assert (=> d!1444728 (= (isDefined!8630 (getValueByKey!1282 (toList!4608 (extractMap!1356 (toList!4607 lm!1477))) key!3287)) (not (isEmpty!28844 (getValueByKey!1282 (toList!4608 (extractMap!1356 (toList!4607 lm!1477))) key!3287))))))

(declare-fun bs!1008157 () Bool)

(assert (= bs!1008157 d!1444728))

(assert (=> bs!1008157 m!5415439))

(declare-fun m!5415589 () Bool)

(assert (=> bs!1008157 m!5415589))

(assert (=> b!4592109 d!1444728))

(declare-fun b!4592234 () Bool)

(declare-fun e!2864147 () Option!11362)

(declare-fun e!2864148 () Option!11362)

(assert (=> b!4592234 (= e!2864147 e!2864148)))

(declare-fun c!786441 () Bool)

(assert (=> b!4592234 (= c!786441 (and ((_ is Cons!51020) (toList!4608 (extractMap!1356 (toList!4607 lm!1477)))) (not (= (_1!29111 (h!56970 (toList!4608 (extractMap!1356 (toList!4607 lm!1477))))) key!3287))))))

(declare-fun b!4592235 () Bool)

(assert (=> b!4592235 (= e!2864148 (getValueByKey!1282 (t!358138 (toList!4608 (extractMap!1356 (toList!4607 lm!1477)))) key!3287))))

(declare-fun b!4592236 () Bool)

(assert (=> b!4592236 (= e!2864148 None!11361)))

(declare-fun d!1444730 () Bool)

(declare-fun c!786440 () Bool)

(assert (=> d!1444730 (= c!786440 (and ((_ is Cons!51020) (toList!4608 (extractMap!1356 (toList!4607 lm!1477)))) (= (_1!29111 (h!56970 (toList!4608 (extractMap!1356 (toList!4607 lm!1477))))) key!3287)))))

(assert (=> d!1444730 (= (getValueByKey!1282 (toList!4608 (extractMap!1356 (toList!4607 lm!1477))) key!3287) e!2864147)))

(declare-fun b!4592233 () Bool)

(assert (=> b!4592233 (= e!2864147 (Some!11361 (_2!29111 (h!56970 (toList!4608 (extractMap!1356 (toList!4607 lm!1477)))))))))

(assert (= (and d!1444730 c!786440) b!4592233))

(assert (= (and d!1444730 (not c!786440)) b!4592234))

(assert (= (and b!4592234 c!786441) b!4592235))

(assert (= (and b!4592234 (not c!786441)) b!4592236))

(declare-fun m!5415591 () Bool)

(assert (=> b!4592235 m!5415591))

(assert (=> b!4592109 d!1444730))

(declare-fun d!1444732 () Bool)

(assert (=> d!1444732 (contains!13945 (getKeysList!559 (toList!4608 (extractMap!1356 (toList!4607 lm!1477)))) key!3287)))

(declare-fun lt!1754090 () Unit!107496)

(declare-fun choose!30680 (List!51144 K!12390) Unit!107496)

(assert (=> d!1444732 (= lt!1754090 (choose!30680 (toList!4608 (extractMap!1356 (toList!4607 lm!1477))) key!3287))))

(assert (=> d!1444732 (invariantList!1111 (toList!4608 (extractMap!1356 (toList!4607 lm!1477))))))

(assert (=> d!1444732 (= (lemmaInListThenGetKeysListContains!555 (toList!4608 (extractMap!1356 (toList!4607 lm!1477))) key!3287) lt!1754090)))

(declare-fun bs!1008164 () Bool)

(assert (= bs!1008164 d!1444732))

(assert (=> bs!1008164 m!5415451))

(assert (=> bs!1008164 m!5415451))

(declare-fun m!5415593 () Bool)

(assert (=> bs!1008164 m!5415593))

(declare-fun m!5415595 () Bool)

(assert (=> bs!1008164 m!5415595))

(assert (=> bs!1008164 m!5415587))

(assert (=> b!4592109 d!1444732))

(declare-fun d!1444734 () Bool)

(declare-fun res!1919974 () Bool)

(declare-fun e!2864152 () Bool)

(assert (=> d!1444734 (=> res!1919974 e!2864152)))

(assert (=> d!1444734 (= res!1919974 ((_ is Nil!51021) (t!358139 lt!1753836)))))

(assert (=> d!1444734 (= (forall!10552 (t!358139 lt!1753836) lambda!184986) e!2864152)))

(declare-fun b!4592244 () Bool)

(declare-fun e!2864153 () Bool)

(assert (=> b!4592244 (= e!2864152 e!2864153)))

(declare-fun res!1919975 () Bool)

(assert (=> b!4592244 (=> (not res!1919975) (not e!2864153))))

(assert (=> b!4592244 (= res!1919975 (dynLambda!21367 lambda!184986 (h!56971 (t!358139 lt!1753836))))))

(declare-fun b!4592245 () Bool)

(assert (=> b!4592245 (= e!2864153 (forall!10552 (t!358139 (t!358139 lt!1753836)) lambda!184986))))

(assert (= (and d!1444734 (not res!1919974)) b!4592244))

(assert (= (and b!4592244 res!1919975) b!4592245))

(declare-fun b_lambda!168599 () Bool)

(assert (=> (not b_lambda!168599) (not b!4592244)))

(declare-fun m!5415597 () Bool)

(assert (=> b!4592244 m!5415597))

(declare-fun m!5415599 () Bool)

(assert (=> b!4592245 m!5415599))

(assert (=> b!4592083 d!1444734))

(declare-fun d!1444736 () Bool)

(declare-fun noDuplicatedKeys!316 (List!51144) Bool)

(assert (=> d!1444736 (= (invariantList!1111 (toList!4608 lt!1753938)) (noDuplicatedKeys!316 (toList!4608 lt!1753938)))))

(declare-fun bs!1008165 () Bool)

(assert (= bs!1008165 d!1444736))

(declare-fun m!5415601 () Bool)

(assert (=> bs!1008165 m!5415601))

(assert (=> d!1444676 d!1444736))

(declare-fun d!1444738 () Bool)

(declare-fun res!1919976 () Bool)

(declare-fun e!2864154 () Bool)

(assert (=> d!1444738 (=> res!1919976 e!2864154)))

(assert (=> d!1444738 (= res!1919976 ((_ is Nil!51021) (toList!4607 lm!1477)))))

(assert (=> d!1444738 (= (forall!10552 (toList!4607 lm!1477) lambda!185016) e!2864154)))

(declare-fun b!4592246 () Bool)

(declare-fun e!2864155 () Bool)

(assert (=> b!4592246 (= e!2864154 e!2864155)))

(declare-fun res!1919977 () Bool)

(assert (=> b!4592246 (=> (not res!1919977) (not e!2864155))))

(assert (=> b!4592246 (= res!1919977 (dynLambda!21367 lambda!185016 (h!56971 (toList!4607 lm!1477))))))

(declare-fun b!4592247 () Bool)

(assert (=> b!4592247 (= e!2864155 (forall!10552 (t!358139 (toList!4607 lm!1477)) lambda!185016))))

(assert (= (and d!1444738 (not res!1919976)) b!4592246))

(assert (= (and b!4592246 res!1919977) b!4592247))

(declare-fun b_lambda!168601 () Bool)

(assert (=> (not b_lambda!168601) (not b!4592246)))

(declare-fun m!5415611 () Bool)

(assert (=> b!4592246 m!5415611))

(declare-fun m!5415615 () Bool)

(assert (=> b!4592247 m!5415615))

(assert (=> d!1444676 d!1444738))

(declare-fun lt!1754091 () Bool)

(declare-fun d!1444740 () Bool)

(assert (=> d!1444740 (= lt!1754091 (select (content!8613 (toList!4607 lm!1477)) (tuple2!51637 hash!344 lt!1753833)))))

(declare-fun e!2864157 () Bool)

(assert (=> d!1444740 (= lt!1754091 e!2864157)))

(declare-fun res!1919979 () Bool)

(assert (=> d!1444740 (=> (not res!1919979) (not e!2864157))))

(assert (=> d!1444740 (= res!1919979 ((_ is Cons!51021) (toList!4607 lm!1477)))))

(assert (=> d!1444740 (= (contains!13942 (toList!4607 lm!1477) (tuple2!51637 hash!344 lt!1753833)) lt!1754091)))

(declare-fun b!4592248 () Bool)

(declare-fun e!2864156 () Bool)

(assert (=> b!4592248 (= e!2864157 e!2864156)))

(declare-fun res!1919978 () Bool)

(assert (=> b!4592248 (=> res!1919978 e!2864156)))

(assert (=> b!4592248 (= res!1919978 (= (h!56971 (toList!4607 lm!1477)) (tuple2!51637 hash!344 lt!1753833)))))

(declare-fun b!4592249 () Bool)

(assert (=> b!4592249 (= e!2864156 (contains!13942 (t!358139 (toList!4607 lm!1477)) (tuple2!51637 hash!344 lt!1753833)))))

(assert (= (and d!1444740 res!1919979) b!4592248))

(assert (= (and b!4592248 (not res!1919978)) b!4592249))

(assert (=> d!1444740 m!5415379))

(declare-fun m!5415631 () Bool)

(assert (=> d!1444740 m!5415631))

(declare-fun m!5415633 () Bool)

(assert (=> b!4592249 m!5415633))

(assert (=> d!1444636 d!1444740))

(declare-fun d!1444742 () Bool)

(assert (=> d!1444742 (contains!13942 (toList!4607 lm!1477) (tuple2!51637 hash!344 lt!1753833))))

(assert (=> d!1444742 true))

(declare-fun _$14!1437 () Unit!107496)

(assert (=> d!1444742 (= (choose!30673 (toList!4607 lm!1477) hash!344 lt!1753833) _$14!1437)))

(declare-fun bs!1008171 () Bool)

(assert (= bs!1008171 d!1444742))

(assert (=> bs!1008171 m!5415369))

(assert (=> d!1444636 d!1444742))

(declare-fun d!1444746 () Bool)

(declare-fun res!1919990 () Bool)

(declare-fun e!2864169 () Bool)

(assert (=> d!1444746 (=> res!1919990 e!2864169)))

(assert (=> d!1444746 (= res!1919990 (or ((_ is Nil!51021) (toList!4607 lm!1477)) ((_ is Nil!51021) (t!358139 (toList!4607 lm!1477)))))))

(assert (=> d!1444746 (= (isStrictlySorted!525 (toList!4607 lm!1477)) e!2864169)))

(declare-fun b!4592262 () Bool)

(declare-fun e!2864170 () Bool)

(assert (=> b!4592262 (= e!2864169 e!2864170)))

(declare-fun res!1919991 () Bool)

(assert (=> b!4592262 (=> (not res!1919991) (not e!2864170))))

(assert (=> b!4592262 (= res!1919991 (bvslt (_1!29112 (h!56971 (toList!4607 lm!1477))) (_1!29112 (h!56971 (t!358139 (toList!4607 lm!1477))))))))

(declare-fun b!4592263 () Bool)

(assert (=> b!4592263 (= e!2864170 (isStrictlySorted!525 (t!358139 (toList!4607 lm!1477))))))

(assert (= (and d!1444746 (not res!1919990)) b!4592262))

(assert (= (and b!4592262 res!1919991) b!4592263))

(declare-fun m!5415651 () Bool)

(assert (=> b!4592263 m!5415651))

(assert (=> d!1444636 d!1444746))

(declare-fun d!1444752 () Bool)

(declare-fun lt!1754095 () Bool)

(assert (=> d!1444752 (= lt!1754095 (select (content!8613 (t!358139 (toList!4607 lm!1477))) lt!1753838))))

(declare-fun e!2864172 () Bool)

(assert (=> d!1444752 (= lt!1754095 e!2864172)))

(declare-fun res!1919993 () Bool)

(assert (=> d!1444752 (=> (not res!1919993) (not e!2864172))))

(assert (=> d!1444752 (= res!1919993 ((_ is Cons!51021) (t!358139 (toList!4607 lm!1477))))))

(assert (=> d!1444752 (= (contains!13942 (t!358139 (toList!4607 lm!1477)) lt!1753838) lt!1754095)))

(declare-fun b!4592264 () Bool)

(declare-fun e!2864171 () Bool)

(assert (=> b!4592264 (= e!2864172 e!2864171)))

(declare-fun res!1919992 () Bool)

(assert (=> b!4592264 (=> res!1919992 e!2864171)))

(assert (=> b!4592264 (= res!1919992 (= (h!56971 (t!358139 (toList!4607 lm!1477))) lt!1753838))))

(declare-fun b!4592265 () Bool)

(assert (=> b!4592265 (= e!2864171 (contains!13942 (t!358139 (t!358139 (toList!4607 lm!1477))) lt!1753838))))

(assert (= (and d!1444752 res!1919993) b!4592264))

(assert (= (and b!4592264 (not res!1919992)) b!4592265))

(declare-fun m!5415653 () Bool)

(assert (=> d!1444752 m!5415653))

(declare-fun m!5415655 () Bool)

(assert (=> d!1444752 m!5415655))

(declare-fun m!5415657 () Bool)

(assert (=> b!4592265 m!5415657))

(assert (=> b!4592039 d!1444752))

(declare-fun d!1444754 () Bool)

(assert (=> d!1444754 (dynLambda!21367 lambda!184986 lt!1753838)))

(assert (=> d!1444754 true))

(declare-fun _$7!2102 () Unit!107496)

(assert (=> d!1444754 (= (choose!30674 (toList!4607 lm!1477) lambda!184986 lt!1753838) _$7!2102)))

(declare-fun b_lambda!168603 () Bool)

(assert (=> (not b_lambda!168603) (not d!1444754)))

(declare-fun bs!1008172 () Bool)

(assert (= bs!1008172 d!1444754))

(assert (=> bs!1008172 m!5415399))

(assert (=> d!1444646 d!1444754))

(assert (=> d!1444646 d!1444656))

(declare-fun b!4592277 () Bool)

(declare-fun e!2864179 () Option!11360)

(declare-fun e!2864180 () Option!11360)

(assert (=> b!4592277 (= e!2864179 e!2864180)))

(declare-fun c!786449 () Bool)

(assert (=> b!4592277 (= c!786449 (and ((_ is Cons!51021) (toList!4607 lm!1477)) (not (= (_1!29112 (h!56971 (toList!4607 lm!1477))) hash!344))))))

(declare-fun d!1444758 () Bool)

(declare-fun c!786448 () Bool)

(assert (=> d!1444758 (= c!786448 (and ((_ is Cons!51021) (toList!4607 lm!1477)) (= (_1!29112 (h!56971 (toList!4607 lm!1477))) hash!344)))))

(assert (=> d!1444758 (= (getValueByKey!1280 (toList!4607 lm!1477) hash!344) e!2864179)))

(declare-fun b!4592276 () Bool)

(assert (=> b!4592276 (= e!2864179 (Some!11359 (_2!29112 (h!56971 (toList!4607 lm!1477)))))))

(declare-fun b!4592278 () Bool)

(assert (=> b!4592278 (= e!2864180 (getValueByKey!1280 (t!358139 (toList!4607 lm!1477)) hash!344))))

(declare-fun b!4592279 () Bool)

(assert (=> b!4592279 (= e!2864180 None!11359)))

(assert (= (and d!1444758 c!786448) b!4592276))

(assert (= (and d!1444758 (not c!786448)) b!4592277))

(assert (= (and b!4592277 c!786449) b!4592278))

(assert (= (and b!4592277 (not c!786449)) b!4592279))

(declare-fun m!5415665 () Bool)

(assert (=> b!4592278 m!5415665))

(assert (=> b!4592033 d!1444758))

(declare-fun d!1444760 () Bool)

(declare-fun res!1919996 () Bool)

(declare-fun e!2864181 () Bool)

(assert (=> d!1444760 (=> res!1919996 e!2864181)))

(assert (=> d!1444760 (= res!1919996 (not ((_ is Cons!51020) (_2!29112 (h!56971 lt!1753836)))))))

(assert (=> d!1444760 (= (noDuplicateKeys!1296 (_2!29112 (h!56971 lt!1753836))) e!2864181)))

(declare-fun b!4592280 () Bool)

(declare-fun e!2864182 () Bool)

(assert (=> b!4592280 (= e!2864181 e!2864182)))

(declare-fun res!1919997 () Bool)

(assert (=> b!4592280 (=> (not res!1919997) (not e!2864182))))

(assert (=> b!4592280 (= res!1919997 (not (containsKey!2104 (t!358138 (_2!29112 (h!56971 lt!1753836))) (_1!29111 (h!56970 (_2!29112 (h!56971 lt!1753836)))))))))

(declare-fun b!4592281 () Bool)

(assert (=> b!4592281 (= e!2864182 (noDuplicateKeys!1296 (t!358138 (_2!29112 (h!56971 lt!1753836)))))))

(assert (= (and d!1444760 (not res!1919996)) b!4592280))

(assert (= (and b!4592280 res!1919997) b!4592281))

(declare-fun m!5415667 () Bool)

(assert (=> b!4592280 m!5415667))

(declare-fun m!5415669 () Bool)

(assert (=> b!4592281 m!5415669))

(assert (=> bs!1008138 d!1444760))

(declare-fun d!1444762 () Bool)

(declare-fun res!1920004 () Bool)

(declare-fun e!2864185 () Bool)

(assert (=> d!1444762 (=> res!1920004 e!2864185)))

(assert (=> d!1444762 (= res!1920004 ((_ is Nil!51021) (toList!4607 lm!1477)))))

(assert (=> d!1444762 (= (forall!10552 (toList!4607 lm!1477) lambda!184989) e!2864185)))

(declare-fun b!4592286 () Bool)

(declare-fun e!2864186 () Bool)

(assert (=> b!4592286 (= e!2864185 e!2864186)))

(declare-fun res!1920005 () Bool)

(assert (=> b!4592286 (=> (not res!1920005) (not e!2864186))))

(assert (=> b!4592286 (= res!1920005 (dynLambda!21367 lambda!184989 (h!56971 (toList!4607 lm!1477))))))

(declare-fun b!4592287 () Bool)

(assert (=> b!4592287 (= e!2864186 (forall!10552 (t!358139 (toList!4607 lm!1477)) lambda!184989))))

(assert (= (and d!1444762 (not res!1920004)) b!4592286))

(assert (= (and b!4592286 res!1920005) b!4592287))

(declare-fun b_lambda!168605 () Bool)

(assert (=> (not b_lambda!168605) (not b!4592286)))

(declare-fun m!5415671 () Bool)

(assert (=> b!4592286 m!5415671))

(declare-fun m!5415673 () Bool)

(assert (=> b!4592287 m!5415673))

(assert (=> d!1444622 d!1444762))

(declare-fun d!1444764 () Bool)

(declare-fun res!1920010 () Bool)

(declare-fun e!2864191 () Bool)

(assert (=> d!1444764 (=> res!1920010 e!2864191)))

(assert (=> d!1444764 (= res!1920010 (and ((_ is Cons!51020) (toList!4608 (extractMap!1356 (toList!4607 lm!1477)))) (= (_1!29111 (h!56970 (toList!4608 (extractMap!1356 (toList!4607 lm!1477))))) key!3287)))))

(assert (=> d!1444764 (= (containsKey!2107 (toList!4608 (extractMap!1356 (toList!4607 lm!1477))) key!3287) e!2864191)))

(declare-fun b!4592294 () Bool)

(declare-fun e!2864192 () Bool)

(assert (=> b!4592294 (= e!2864191 e!2864192)))

(declare-fun res!1920011 () Bool)

(assert (=> b!4592294 (=> (not res!1920011) (not e!2864192))))

(assert (=> b!4592294 (= res!1920011 ((_ is Cons!51020) (toList!4608 (extractMap!1356 (toList!4607 lm!1477)))))))

(declare-fun b!4592295 () Bool)

(assert (=> b!4592295 (= e!2864192 (containsKey!2107 (t!358138 (toList!4608 (extractMap!1356 (toList!4607 lm!1477)))) key!3287))))

(assert (= (and d!1444764 (not res!1920010)) b!4592294))

(assert (= (and b!4592294 res!1920011) b!4592295))

(declare-fun m!5415675 () Bool)

(assert (=> b!4592295 m!5415675))

(assert (=> d!1444666 d!1444764))

(assert (=> b!4592060 d!1444642))

(declare-fun d!1444766 () Bool)

(declare-fun c!786452 () Bool)

(assert (=> d!1444766 (= c!786452 ((_ is Nil!51021) (toList!4607 lm!1477)))))

(declare-fun e!2864198 () (InoxSet tuple2!51636))

(assert (=> d!1444766 (= (content!8613 (toList!4607 lm!1477)) e!2864198)))

(declare-fun b!4592307 () Bool)

(assert (=> b!4592307 (= e!2864198 ((as const (Array tuple2!51636 Bool)) false))))

(declare-fun b!4592308 () Bool)

(assert (=> b!4592308 (= e!2864198 ((_ map or) (store ((as const (Array tuple2!51636 Bool)) false) (h!56971 (toList!4607 lm!1477)) true) (content!8613 (t!358139 (toList!4607 lm!1477)))))))

(assert (= (and d!1444766 c!786452) b!4592307))

(assert (= (and d!1444766 (not c!786452)) b!4592308))

(declare-fun m!5415695 () Bool)

(assert (=> b!4592308 m!5415695))

(assert (=> b!4592308 m!5415653))

(assert (=> d!1444642 d!1444766))

(declare-fun d!1444772 () Bool)

(declare-fun res!1920017 () Bool)

(declare-fun e!2864199 () Bool)

(assert (=> d!1444772 (=> res!1920017 e!2864199)))

(assert (=> d!1444772 (= res!1920017 (and ((_ is Cons!51020) (t!358138 (_2!29112 (h!56971 (toList!4607 lm!1477))))) (= (_1!29111 (h!56970 (t!358138 (_2!29112 (h!56971 (toList!4607 lm!1477)))))) key!3287)))))

(assert (=> d!1444772 (= (containsKey!2104 (t!358138 (_2!29112 (h!56971 (toList!4607 lm!1477)))) key!3287) e!2864199)))

(declare-fun b!4592309 () Bool)

(declare-fun e!2864200 () Bool)

(assert (=> b!4592309 (= e!2864199 e!2864200)))

(declare-fun res!1920018 () Bool)

(assert (=> b!4592309 (=> (not res!1920018) (not e!2864200))))

(assert (=> b!4592309 (= res!1920018 ((_ is Cons!51020) (t!358138 (_2!29112 (h!56971 (toList!4607 lm!1477))))))))

(declare-fun b!4592310 () Bool)

(assert (=> b!4592310 (= e!2864200 (containsKey!2104 (t!358138 (t!358138 (_2!29112 (h!56971 (toList!4607 lm!1477))))) key!3287))))

(assert (= (and d!1444772 (not res!1920017)) b!4592309))

(assert (= (and b!4592309 res!1920018) b!4592310))

(declare-fun m!5415697 () Bool)

(assert (=> b!4592310 m!5415697))

(assert (=> b!4591968 d!1444772))

(declare-fun b!4592314 () Bool)

(declare-fun e!2864202 () List!51144)

(assert (=> b!4592314 (= e!2864202 Nil!51020)))

(declare-fun b!4592311 () Bool)

(declare-fun e!2864201 () List!51144)

(assert (=> b!4592311 (= e!2864201 (t!358138 (t!358138 lt!1753833)))))

(declare-fun d!1444774 () Bool)

(declare-fun lt!1754101 () List!51144)

(assert (=> d!1444774 (not (containsKey!2104 lt!1754101 key!3287))))

(assert (=> d!1444774 (= lt!1754101 e!2864201)))

(declare-fun c!786454 () Bool)

(assert (=> d!1444774 (= c!786454 (and ((_ is Cons!51020) (t!358138 lt!1753833)) (= (_1!29111 (h!56970 (t!358138 lt!1753833))) key!3287)))))

(assert (=> d!1444774 (noDuplicateKeys!1296 (t!358138 lt!1753833))))

(assert (=> d!1444774 (= (removePairForKey!921 (t!358138 lt!1753833) key!3287) lt!1754101)))

(declare-fun b!4592313 () Bool)

(assert (=> b!4592313 (= e!2864202 (Cons!51020 (h!56970 (t!358138 lt!1753833)) (removePairForKey!921 (t!358138 (t!358138 lt!1753833)) key!3287)))))

(declare-fun b!4592312 () Bool)

(assert (=> b!4592312 (= e!2864201 e!2864202)))

(declare-fun c!786453 () Bool)

(assert (=> b!4592312 (= c!786453 ((_ is Cons!51020) (t!358138 lt!1753833)))))

(assert (= (and d!1444774 c!786454) b!4592311))

(assert (= (and d!1444774 (not c!786454)) b!4592312))

(assert (= (and b!4592312 c!786453) b!4592313))

(assert (= (and b!4592312 (not c!786453)) b!4592314))

(declare-fun m!5415699 () Bool)

(assert (=> d!1444774 m!5415699))

(declare-fun m!5415701 () Bool)

(assert (=> d!1444774 m!5415701))

(declare-fun m!5415703 () Bool)

(assert (=> b!4592313 m!5415703))

(assert (=> b!4592054 d!1444774))

(declare-fun d!1444776 () Bool)

(declare-fun isEmpty!28845 (Option!11360) Bool)

(assert (=> d!1444776 (= (isDefined!8628 (getValueByKey!1280 (toList!4607 lm!1477) lt!1753837)) (not (isEmpty!28845 (getValueByKey!1280 (toList!4607 lm!1477) lt!1753837))))))

(declare-fun bs!1008174 () Bool)

(assert (= bs!1008174 d!1444776))

(assert (=> bs!1008174 m!5415345))

(declare-fun m!5415705 () Bool)

(assert (=> bs!1008174 m!5415705))

(assert (=> b!4592030 d!1444776))

(declare-fun b!4592316 () Bool)

(declare-fun e!2864203 () Option!11360)

(declare-fun e!2864204 () Option!11360)

(assert (=> b!4592316 (= e!2864203 e!2864204)))

(declare-fun c!786456 () Bool)

(assert (=> b!4592316 (= c!786456 (and ((_ is Cons!51021) (toList!4607 lm!1477)) (not (= (_1!29112 (h!56971 (toList!4607 lm!1477))) lt!1753837))))))

(declare-fun d!1444780 () Bool)

(declare-fun c!786455 () Bool)

(assert (=> d!1444780 (= c!786455 (and ((_ is Cons!51021) (toList!4607 lm!1477)) (= (_1!29112 (h!56971 (toList!4607 lm!1477))) lt!1753837)))))

(assert (=> d!1444780 (= (getValueByKey!1280 (toList!4607 lm!1477) lt!1753837) e!2864203)))

(declare-fun b!4592315 () Bool)

(assert (=> b!4592315 (= e!2864203 (Some!11359 (_2!29112 (h!56971 (toList!4607 lm!1477)))))))

(declare-fun b!4592317 () Bool)

(assert (=> b!4592317 (= e!2864204 (getValueByKey!1280 (t!358139 (toList!4607 lm!1477)) lt!1753837))))

(declare-fun b!4592318 () Bool)

(assert (=> b!4592318 (= e!2864204 None!11359)))

(assert (= (and d!1444780 c!786455) b!4592315))

(assert (= (and d!1444780 (not c!786455)) b!4592316))

(assert (= (and b!4592316 c!786456) b!4592317))

(assert (= (and b!4592316 (not c!786456)) b!4592318))

(declare-fun m!5415707 () Bool)

(assert (=> b!4592317 m!5415707))

(assert (=> b!4592030 d!1444780))

(declare-fun b!4592348 () Bool)

(assert (=> b!4592348 true))

(declare-fun d!1444782 () Bool)

(declare-fun e!2864225 () Bool)

(assert (=> d!1444782 e!2864225))

(declare-fun res!1920039 () Bool)

(assert (=> d!1444782 (=> (not res!1920039) (not e!2864225))))

(declare-fun lt!1754104 () List!51147)

(declare-fun noDuplicate!802 (List!51147) Bool)

(assert (=> d!1444782 (= res!1920039 (noDuplicate!802 lt!1754104))))

(assert (=> d!1444782 (= lt!1754104 (getKeysList!559 (toList!4608 (extractMap!1356 (toList!4607 lm!1477)))))))

(assert (=> d!1444782 (= (keys!17846 (extractMap!1356 (toList!4607 lm!1477))) lt!1754104)))

(declare-fun b!4592347 () Bool)

(declare-fun res!1920040 () Bool)

(assert (=> b!4592347 (=> (not res!1920040) (not e!2864225))))

(declare-fun length!460 (List!51147) Int)

(declare-fun length!461 (List!51144) Int)

(assert (=> b!4592347 (= res!1920040 (= (length!460 lt!1754104) (length!461 (toList!4608 (extractMap!1356 (toList!4607 lm!1477))))))))

(declare-fun res!1920041 () Bool)

(assert (=> b!4592348 (=> (not res!1920041) (not e!2864225))))

(declare-fun lambda!185093 () Int)

(declare-fun forall!10556 (List!51147 Int) Bool)

(assert (=> b!4592348 (= res!1920041 (forall!10556 lt!1754104 lambda!185093))))

(declare-fun b!4592349 () Bool)

(declare-fun lambda!185094 () Int)

(declare-fun content!8616 (List!51147) (InoxSet K!12390))

(declare-fun map!11263 (List!51144 Int) List!51147)

(assert (=> b!4592349 (= e!2864225 (= (content!8616 lt!1754104) (content!8616 (map!11263 (toList!4608 (extractMap!1356 (toList!4607 lm!1477))) lambda!185094))))))

(assert (= (and d!1444782 res!1920039) b!4592347))

(assert (= (and b!4592347 res!1920040) b!4592348))

(assert (= (and b!4592348 res!1920041) b!4592349))

(declare-fun m!5415719 () Bool)

(assert (=> d!1444782 m!5415719))

(assert (=> d!1444782 m!5415451))

(declare-fun m!5415721 () Bool)

(assert (=> b!4592347 m!5415721))

(declare-fun m!5415723 () Bool)

(assert (=> b!4592347 m!5415723))

(declare-fun m!5415725 () Bool)

(assert (=> b!4592348 m!5415725))

(declare-fun m!5415727 () Bool)

(assert (=> b!4592349 m!5415727))

(declare-fun m!5415729 () Bool)

(assert (=> b!4592349 m!5415729))

(assert (=> b!4592349 m!5415729))

(declare-fun m!5415731 () Bool)

(assert (=> b!4592349 m!5415731))

(assert (=> b!4592117 d!1444782))

(declare-fun d!1444792 () Bool)

(declare-fun res!1920042 () Bool)

(declare-fun e!2864226 () Bool)

(assert (=> d!1444792 (=> res!1920042 e!2864226)))

(assert (=> d!1444792 (= res!1920042 (not ((_ is Cons!51020) (_2!29112 lt!1753838))))))

(assert (=> d!1444792 (= (noDuplicateKeys!1296 (_2!29112 lt!1753838)) e!2864226)))

(declare-fun b!4592352 () Bool)

(declare-fun e!2864227 () Bool)

(assert (=> b!4592352 (= e!2864226 e!2864227)))

(declare-fun res!1920043 () Bool)

(assert (=> b!4592352 (=> (not res!1920043) (not e!2864227))))

(assert (=> b!4592352 (= res!1920043 (not (containsKey!2104 (t!358138 (_2!29112 lt!1753838)) (_1!29111 (h!56970 (_2!29112 lt!1753838))))))))

(declare-fun b!4592353 () Bool)

(assert (=> b!4592353 (= e!2864227 (noDuplicateKeys!1296 (t!358138 (_2!29112 lt!1753838))))))

(assert (= (and d!1444792 (not res!1920042)) b!4592352))

(assert (= (and b!4592352 res!1920043) b!4592353))

(declare-fun m!5415733 () Bool)

(assert (=> b!4592352 m!5415733))

(declare-fun m!5415735 () Bool)

(assert (=> b!4592353 m!5415735))

(assert (=> bs!1008137 d!1444792))

(declare-fun d!1444794 () Bool)

(declare-fun lt!1754109 () Bool)

(assert (=> d!1444794 (= lt!1754109 (select (content!8616 e!2864067) key!3287))))

(declare-fun e!2864242 () Bool)

(assert (=> d!1444794 (= lt!1754109 e!2864242)))

(declare-fun res!1920054 () Bool)

(assert (=> d!1444794 (=> (not res!1920054) (not e!2864242))))

(assert (=> d!1444794 (= res!1920054 ((_ is Cons!51023) e!2864067))))

(assert (=> d!1444794 (= (contains!13945 e!2864067 key!3287) lt!1754109)))

(declare-fun b!4592372 () Bool)

(declare-fun e!2864243 () Bool)

(assert (=> b!4592372 (= e!2864242 e!2864243)))

(declare-fun res!1920055 () Bool)

(assert (=> b!4592372 (=> res!1920055 e!2864243)))

(assert (=> b!4592372 (= res!1920055 (= (h!56975 e!2864067) key!3287))))

(declare-fun b!4592373 () Bool)

(assert (=> b!4592373 (= e!2864243 (contains!13945 (t!358141 e!2864067) key!3287))))

(assert (= (and d!1444794 res!1920054) b!4592372))

(assert (= (and b!4592372 (not res!1920055)) b!4592373))

(declare-fun m!5415755 () Bool)

(assert (=> d!1444794 m!5415755))

(declare-fun m!5415757 () Bool)

(assert (=> d!1444794 m!5415757))

(declare-fun m!5415759 () Bool)

(assert (=> b!4592373 m!5415759))

(assert (=> bm!320580 d!1444794))

(declare-fun d!1444804 () Bool)

(declare-fun res!1920056 () Bool)

(declare-fun e!2864245 () Bool)

(assert (=> d!1444804 (=> res!1920056 e!2864245)))

(declare-fun e!2864244 () Bool)

(assert (=> d!1444804 (= res!1920056 e!2864244)))

(declare-fun res!1920058 () Bool)

(assert (=> d!1444804 (=> (not res!1920058) (not e!2864244))))

(assert (=> d!1444804 (= res!1920058 ((_ is Cons!51021) (t!358139 lt!1753836)))))

(assert (=> d!1444804 (= (containsKeyBiggerList!252 (t!358139 lt!1753836) key!3287) e!2864245)))

(declare-fun b!4592374 () Bool)

(assert (=> b!4592374 (= e!2864244 (containsKey!2104 (_2!29112 (h!56971 (t!358139 lt!1753836))) key!3287))))

(declare-fun b!4592375 () Bool)

(declare-fun e!2864246 () Bool)

(assert (=> b!4592375 (= e!2864245 e!2864246)))

(declare-fun res!1920057 () Bool)

(assert (=> b!4592375 (=> (not res!1920057) (not e!2864246))))

(assert (=> b!4592375 (= res!1920057 ((_ is Cons!51021) (t!358139 lt!1753836)))))

(declare-fun b!4592376 () Bool)

(assert (=> b!4592376 (= e!2864246 (containsKeyBiggerList!252 (t!358139 (t!358139 lt!1753836)) key!3287))))

(assert (= (and d!1444804 res!1920058) b!4592374))

(assert (= (and d!1444804 (not res!1920056)) b!4592375))

(assert (= (and b!4592375 res!1920057) b!4592376))

(declare-fun m!5415761 () Bool)

(assert (=> b!4592374 m!5415761))

(declare-fun m!5415763 () Bool)

(assert (=> b!4592376 m!5415763))

(assert (=> b!4591977 d!1444804))

(declare-fun d!1444806 () Bool)

(declare-fun res!1920059 () Bool)

(declare-fun e!2864248 () Bool)

(assert (=> d!1444806 (=> res!1920059 e!2864248)))

(assert (=> d!1444806 (= res!1920059 (and ((_ is Cons!51020) (_2!29112 (h!56971 lt!1753836))) (= (_1!29111 (h!56970 (_2!29112 (h!56971 lt!1753836)))) key!3287)))))

(assert (=> d!1444806 (= (containsKey!2104 (_2!29112 (h!56971 lt!1753836)) key!3287) e!2864248)))

(declare-fun b!4592379 () Bool)

(declare-fun e!2864249 () Bool)

(assert (=> b!4592379 (= e!2864248 e!2864249)))

(declare-fun res!1920060 () Bool)

(assert (=> b!4592379 (=> (not res!1920060) (not e!2864249))))

(assert (=> b!4592379 (= res!1920060 ((_ is Cons!51020) (_2!29112 (h!56971 lt!1753836))))))

(declare-fun b!4592380 () Bool)

(assert (=> b!4592380 (= e!2864249 (containsKey!2104 (t!358138 (_2!29112 (h!56971 lt!1753836))) key!3287))))

(assert (= (and d!1444806 (not res!1920059)) b!4592379))

(assert (= (and b!4592379 res!1920060) b!4592380))

(declare-fun m!5415767 () Bool)

(assert (=> b!4592380 m!5415767))

(assert (=> b!4591975 d!1444806))

(declare-fun d!1444810 () Bool)

(declare-fun lt!1754110 () Bool)

(assert (=> d!1444810 (= lt!1754110 (select (content!8616 (keys!17846 (extractMap!1356 (toList!4607 lm!1477)))) key!3287))))

(declare-fun e!2864250 () Bool)

(assert (=> d!1444810 (= lt!1754110 e!2864250)))

(declare-fun res!1920061 () Bool)

(assert (=> d!1444810 (=> (not res!1920061) (not e!2864250))))

(assert (=> d!1444810 (= res!1920061 ((_ is Cons!51023) (keys!17846 (extractMap!1356 (toList!4607 lm!1477)))))))

(assert (=> d!1444810 (= (contains!13945 (keys!17846 (extractMap!1356 (toList!4607 lm!1477))) key!3287) lt!1754110)))

(declare-fun b!4592381 () Bool)

(declare-fun e!2864251 () Bool)

(assert (=> b!4592381 (= e!2864250 e!2864251)))

(declare-fun res!1920062 () Bool)

(assert (=> b!4592381 (=> res!1920062 e!2864251)))

(assert (=> b!4592381 (= res!1920062 (= (h!56975 (keys!17846 (extractMap!1356 (toList!4607 lm!1477)))) key!3287))))

(declare-fun b!4592382 () Bool)

(assert (=> b!4592382 (= e!2864251 (contains!13945 (t!358141 (keys!17846 (extractMap!1356 (toList!4607 lm!1477)))) key!3287))))

(assert (= (and d!1444810 res!1920061) b!4592381))

(assert (= (and b!4592381 (not res!1920062)) b!4592382))

(assert (=> d!1444810 m!5415447))

(declare-fun m!5415769 () Bool)

(assert (=> d!1444810 m!5415769))

(declare-fun m!5415771 () Bool)

(assert (=> d!1444810 m!5415771))

(declare-fun m!5415773 () Bool)

(assert (=> b!4592382 m!5415773))

(assert (=> b!4592115 d!1444810))

(assert (=> b!4592115 d!1444782))

(declare-fun d!1444812 () Bool)

(assert (=> d!1444812 (isDefined!8628 (getValueByKey!1280 (toList!4607 lm!1477) lt!1753837))))

(declare-fun lt!1754113 () Unit!107496)

(declare-fun choose!30681 (List!51145 (_ BitVec 64)) Unit!107496)

(assert (=> d!1444812 (= lt!1754113 (choose!30681 (toList!4607 lm!1477) lt!1753837))))

(declare-fun e!2864260 () Bool)

(assert (=> d!1444812 e!2864260))

(declare-fun res!1920071 () Bool)

(assert (=> d!1444812 (=> (not res!1920071) (not e!2864260))))

(assert (=> d!1444812 (= res!1920071 (isStrictlySorted!525 (toList!4607 lm!1477)))))

(assert (=> d!1444812 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1184 (toList!4607 lm!1477) lt!1753837) lt!1754113)))

(declare-fun b!4592391 () Bool)

(assert (=> b!4592391 (= e!2864260 (containsKey!2106 (toList!4607 lm!1477) lt!1753837))))

(assert (= (and d!1444812 res!1920071) b!4592391))

(assert (=> d!1444812 m!5415345))

(assert (=> d!1444812 m!5415345))

(assert (=> d!1444812 m!5415347))

(declare-fun m!5415779 () Bool)

(assert (=> d!1444812 m!5415779))

(assert (=> d!1444812 m!5415373))

(assert (=> b!4592391 m!5415341))

(assert (=> b!4592028 d!1444812))

(assert (=> b!4592028 d!1444776))

(assert (=> b!4592028 d!1444780))

(declare-fun d!1444816 () Bool)

(declare-fun res!1920076 () Bool)

(declare-fun e!2864265 () Bool)

(assert (=> d!1444816 (=> res!1920076 e!2864265)))

(assert (=> d!1444816 (= res!1920076 ((_ is Nil!51020) newBucket!178))))

(assert (=> d!1444816 (= (forall!10554 newBucket!178 lambda!185004) e!2864265)))

(declare-fun b!4592396 () Bool)

(declare-fun e!2864266 () Bool)

(assert (=> b!4592396 (= e!2864265 e!2864266)))

(declare-fun res!1920077 () Bool)

(assert (=> b!4592396 (=> (not res!1920077) (not e!2864266))))

(declare-fun dynLambda!21370 (Int tuple2!51634) Bool)

(assert (=> b!4592396 (= res!1920077 (dynLambda!21370 lambda!185004 (h!56970 newBucket!178)))))

(declare-fun b!4592397 () Bool)

(assert (=> b!4592397 (= e!2864266 (forall!10554 (t!358138 newBucket!178) lambda!185004))))

(assert (= (and d!1444816 (not res!1920076)) b!4592396))

(assert (= (and b!4592396 res!1920077) b!4592397))

(declare-fun b_lambda!168611 () Bool)

(assert (=> (not b_lambda!168611) (not b!4592396)))

(declare-fun m!5415781 () Bool)

(assert (=> b!4592396 m!5415781))

(declare-fun m!5415783 () Bool)

(assert (=> b!4592397 m!5415783))

(assert (=> d!1444650 d!1444816))

(declare-fun bs!1008183 () Bool)

(declare-fun b!4592454 () Bool)

(assert (= bs!1008183 (and b!4592454 b!4592348)))

(declare-fun lambda!185115 () Int)

(assert (=> bs!1008183 (= (= (t!358138 (toList!4608 (extractMap!1356 (toList!4607 lm!1477)))) (toList!4608 (extractMap!1356 (toList!4607 lm!1477)))) (= lambda!185115 lambda!185093))))

(assert (=> b!4592454 true))

(declare-fun bs!1008185 () Bool)

(declare-fun b!4592453 () Bool)

(assert (= bs!1008185 (and b!4592453 b!4592348)))

(declare-fun lambda!185116 () Int)

(assert (=> bs!1008185 (= (= (Cons!51020 (h!56970 (toList!4608 (extractMap!1356 (toList!4607 lm!1477)))) (t!358138 (toList!4608 (extractMap!1356 (toList!4607 lm!1477))))) (toList!4608 (extractMap!1356 (toList!4607 lm!1477)))) (= lambda!185116 lambda!185093))))

(declare-fun bs!1008186 () Bool)

(assert (= bs!1008186 (and b!4592453 b!4592454)))

(assert (=> bs!1008186 (= (= (Cons!51020 (h!56970 (toList!4608 (extractMap!1356 (toList!4607 lm!1477)))) (t!358138 (toList!4608 (extractMap!1356 (toList!4607 lm!1477))))) (t!358138 (toList!4608 (extractMap!1356 (toList!4607 lm!1477))))) (= lambda!185116 lambda!185115))))

(assert (=> b!4592453 true))

(declare-fun bs!1008187 () Bool)

(declare-fun b!4592448 () Bool)

(assert (= bs!1008187 (and b!4592448 b!4592348)))

(declare-fun lambda!185117 () Int)

(assert (=> bs!1008187 (= lambda!185117 lambda!185093)))

(declare-fun bs!1008188 () Bool)

(assert (= bs!1008188 (and b!4592448 b!4592454)))

(assert (=> bs!1008188 (= (= (toList!4608 (extractMap!1356 (toList!4607 lm!1477))) (t!358138 (toList!4608 (extractMap!1356 (toList!4607 lm!1477))))) (= lambda!185117 lambda!185115))))

(declare-fun bs!1008189 () Bool)

(assert (= bs!1008189 (and b!4592448 b!4592453)))

(assert (=> bs!1008189 (= (= (toList!4608 (extractMap!1356 (toList!4607 lm!1477))) (Cons!51020 (h!56970 (toList!4608 (extractMap!1356 (toList!4607 lm!1477)))) (t!358138 (toList!4608 (extractMap!1356 (toList!4607 lm!1477)))))) (= lambda!185117 lambda!185116))))

(assert (=> b!4592448 true))

(declare-fun bs!1008190 () Bool)

(declare-fun b!4592455 () Bool)

(assert (= bs!1008190 (and b!4592455 b!4592349)))

(declare-fun lambda!185118 () Int)

(assert (=> bs!1008190 (= lambda!185118 lambda!185094)))

(declare-fun res!1920096 () Bool)

(declare-fun e!2864291 () Bool)

(assert (=> b!4592448 (=> (not res!1920096) (not e!2864291))))

(declare-fun lt!1754150 () List!51147)

(assert (=> b!4592448 (= res!1920096 (forall!10556 lt!1754150 lambda!185117))))

(declare-fun b!4592450 () Bool)

(declare-fun e!2864293 () Unit!107496)

(declare-fun Unit!107533 () Unit!107496)

(assert (=> b!4592450 (= e!2864293 Unit!107533)))

(declare-fun b!4592451 () Bool)

(declare-fun e!2864292 () Unit!107496)

(declare-fun Unit!107534 () Unit!107496)

(assert (=> b!4592451 (= e!2864292 Unit!107534)))

(declare-fun b!4592449 () Bool)

(declare-fun e!2864290 () List!51147)

(assert (=> b!4592449 (= e!2864290 Nil!51023)))

(declare-fun d!1444818 () Bool)

(assert (=> d!1444818 e!2864291))

(declare-fun res!1920097 () Bool)

(assert (=> d!1444818 (=> (not res!1920097) (not e!2864291))))

(assert (=> d!1444818 (= res!1920097 (noDuplicate!802 lt!1754150))))

(assert (=> d!1444818 (= lt!1754150 e!2864290)))

(declare-fun c!786482 () Bool)

(assert (=> d!1444818 (= c!786482 ((_ is Cons!51020) (toList!4608 (extractMap!1356 (toList!4607 lm!1477)))))))

(assert (=> d!1444818 (invariantList!1111 (toList!4608 (extractMap!1356 (toList!4607 lm!1477))))))

(assert (=> d!1444818 (= (getKeysList!559 (toList!4608 (extractMap!1356 (toList!4607 lm!1477)))) lt!1754150)))

(declare-fun b!4592452 () Bool)

(assert (=> b!4592452 false))

(declare-fun Unit!107535 () Unit!107496)

(assert (=> b!4592452 (= e!2864293 Unit!107535)))

(assert (=> b!4592453 (= e!2864290 (Cons!51023 (_1!29111 (h!56970 (toList!4608 (extractMap!1356 (toList!4607 lm!1477))))) (getKeysList!559 (t!358138 (toList!4608 (extractMap!1356 (toList!4607 lm!1477)))))))))

(declare-fun c!786481 () Bool)

(assert (=> b!4592453 (= c!786481 (containsKey!2107 (t!358138 (toList!4608 (extractMap!1356 (toList!4607 lm!1477)))) (_1!29111 (h!56970 (toList!4608 (extractMap!1356 (toList!4607 lm!1477)))))))))

(declare-fun lt!1754149 () Unit!107496)

(assert (=> b!4592453 (= lt!1754149 e!2864293)))

(declare-fun c!786483 () Bool)

(assert (=> b!4592453 (= c!786483 (contains!13945 (getKeysList!559 (t!358138 (toList!4608 (extractMap!1356 (toList!4607 lm!1477))))) (_1!29111 (h!56970 (toList!4608 (extractMap!1356 (toList!4607 lm!1477)))))))))

(declare-fun lt!1754151 () Unit!107496)

(assert (=> b!4592453 (= lt!1754151 e!2864292)))

(declare-fun lt!1754155 () List!51147)

(assert (=> b!4592453 (= lt!1754155 (getKeysList!559 (t!358138 (toList!4608 (extractMap!1356 (toList!4607 lm!1477))))))))

(declare-fun lt!1754154 () Unit!107496)

(declare-fun lemmaForallContainsAddHeadPreserves!222 (List!51144 List!51147 tuple2!51634) Unit!107496)

(assert (=> b!4592453 (= lt!1754154 (lemmaForallContainsAddHeadPreserves!222 (t!358138 (toList!4608 (extractMap!1356 (toList!4607 lm!1477)))) lt!1754155 (h!56970 (toList!4608 (extractMap!1356 (toList!4607 lm!1477))))))))

(assert (=> b!4592453 (forall!10556 lt!1754155 lambda!185116)))

(declare-fun lt!1754152 () Unit!107496)

(assert (=> b!4592453 (= lt!1754152 lt!1754154)))

(assert (=> b!4592454 false))

(declare-fun lt!1754153 () Unit!107496)

(declare-fun forallContained!2813 (List!51147 Int K!12390) Unit!107496)

(assert (=> b!4592454 (= lt!1754153 (forallContained!2813 (getKeysList!559 (t!358138 (toList!4608 (extractMap!1356 (toList!4607 lm!1477))))) lambda!185115 (_1!29111 (h!56970 (toList!4608 (extractMap!1356 (toList!4607 lm!1477)))))))))

(declare-fun Unit!107536 () Unit!107496)

(assert (=> b!4592454 (= e!2864292 Unit!107536)))

(assert (=> b!4592455 (= e!2864291 (= (content!8616 lt!1754150) (content!8616 (map!11263 (toList!4608 (extractMap!1356 (toList!4607 lm!1477))) lambda!185118))))))

(declare-fun b!4592456 () Bool)

(declare-fun res!1920098 () Bool)

(assert (=> b!4592456 (=> (not res!1920098) (not e!2864291))))

(assert (=> b!4592456 (= res!1920098 (= (length!460 lt!1754150) (length!461 (toList!4608 (extractMap!1356 (toList!4607 lm!1477))))))))

(assert (= (and d!1444818 c!786482) b!4592453))

(assert (= (and d!1444818 (not c!786482)) b!4592449))

(assert (= (and b!4592453 c!786481) b!4592452))

(assert (= (and b!4592453 (not c!786481)) b!4592450))

(assert (= (and b!4592453 c!786483) b!4592454))

(assert (= (and b!4592453 (not c!786483)) b!4592451))

(assert (= (and d!1444818 res!1920097) b!4592456))

(assert (= (and b!4592456 res!1920098) b!4592448))

(assert (= (and b!4592448 res!1920096) b!4592455))

(declare-fun m!5415817 () Bool)

(assert (=> d!1444818 m!5415817))

(assert (=> d!1444818 m!5415587))

(declare-fun m!5415819 () Bool)

(assert (=> b!4592454 m!5415819))

(assert (=> b!4592454 m!5415819))

(declare-fun m!5415821 () Bool)

(assert (=> b!4592454 m!5415821))

(declare-fun m!5415823 () Bool)

(assert (=> b!4592456 m!5415823))

(assert (=> b!4592456 m!5415723))

(declare-fun m!5415825 () Bool)

(assert (=> b!4592448 m!5415825))

(declare-fun m!5415827 () Bool)

(assert (=> b!4592455 m!5415827))

(declare-fun m!5415829 () Bool)

(assert (=> b!4592455 m!5415829))

(assert (=> b!4592455 m!5415829))

(declare-fun m!5415831 () Bool)

(assert (=> b!4592455 m!5415831))

(declare-fun m!5415833 () Bool)

(assert (=> b!4592453 m!5415833))

(declare-fun m!5415835 () Bool)

(assert (=> b!4592453 m!5415835))

(assert (=> b!4592453 m!5415819))

(declare-fun m!5415837 () Bool)

(assert (=> b!4592453 m!5415837))

(assert (=> b!4592453 m!5415819))

(declare-fun m!5415839 () Bool)

(assert (=> b!4592453 m!5415839))

(assert (=> b!4592114 d!1444818))

(declare-fun d!1444826 () Bool)

(declare-fun res!1920099 () Bool)

(declare-fun e!2864298 () Bool)

(assert (=> d!1444826 (=> res!1920099 e!2864298)))

(assert (=> d!1444826 (= res!1920099 (and ((_ is Cons!51020) lt!1753892) (= (_1!29111 (h!56970 lt!1753892)) key!3287)))))

(assert (=> d!1444826 (= (containsKey!2104 lt!1753892 key!3287) e!2864298)))

(declare-fun b!4592467 () Bool)

(declare-fun e!2864299 () Bool)

(assert (=> b!4592467 (= e!2864298 e!2864299)))

(declare-fun res!1920100 () Bool)

(assert (=> b!4592467 (=> (not res!1920100) (not e!2864299))))

(assert (=> b!4592467 (= res!1920100 ((_ is Cons!51020) lt!1753892))))

(declare-fun b!4592468 () Bool)

(assert (=> b!4592468 (= e!2864299 (containsKey!2104 (t!358138 lt!1753892) key!3287))))

(assert (= (and d!1444826 (not res!1920099)) b!4592467))

(assert (= (and b!4592467 res!1920100) b!4592468))

(declare-fun m!5415841 () Bool)

(assert (=> b!4592468 m!5415841))

(assert (=> d!1444644 d!1444826))

(declare-fun d!1444828 () Bool)

(declare-fun res!1920101 () Bool)

(declare-fun e!2864300 () Bool)

(assert (=> d!1444828 (=> res!1920101 e!2864300)))

(assert (=> d!1444828 (= res!1920101 (not ((_ is Cons!51020) lt!1753833)))))

(assert (=> d!1444828 (= (noDuplicateKeys!1296 lt!1753833) e!2864300)))

(declare-fun b!4592469 () Bool)

(declare-fun e!2864301 () Bool)

(assert (=> b!4592469 (= e!2864300 e!2864301)))

(declare-fun res!1920102 () Bool)

(assert (=> b!4592469 (=> (not res!1920102) (not e!2864301))))

(assert (=> b!4592469 (= res!1920102 (not (containsKey!2104 (t!358138 lt!1753833) (_1!29111 (h!56970 lt!1753833)))))))

(declare-fun b!4592470 () Bool)

(assert (=> b!4592470 (= e!2864301 (noDuplicateKeys!1296 (t!358138 lt!1753833)))))

(assert (= (and d!1444828 (not res!1920101)) b!4592469))

(assert (= (and b!4592469 res!1920102) b!4592470))

(declare-fun m!5415843 () Bool)

(assert (=> b!4592469 m!5415843))

(assert (=> b!4592470 m!5415701))

(assert (=> d!1444644 d!1444828))

(assert (=> d!1444662 d!1444746))

(declare-fun d!1444830 () Bool)

(assert (=> d!1444830 (= (get!16853 (getValueByKey!1280 (toList!4607 lm!1477) hash!344)) (v!45289 (getValueByKey!1280 (toList!4607 lm!1477) hash!344)))))

(assert (=> d!1444640 d!1444830))

(assert (=> d!1444640 d!1444758))

(assert (=> b!4592113 d!1444810))

(assert (=> b!4592113 d!1444782))

(declare-fun d!1444834 () Bool)

(declare-fun res!1920103 () Bool)

(declare-fun e!2864306 () Bool)

(assert (=> d!1444834 (=> res!1920103 e!2864306)))

(assert (=> d!1444834 (= res!1920103 (not ((_ is Cons!51020) (t!358138 newBucket!178))))))

(assert (=> d!1444834 (= (noDuplicateKeys!1296 (t!358138 newBucket!178)) e!2864306)))

(declare-fun b!4592479 () Bool)

(declare-fun e!2864307 () Bool)

(assert (=> b!4592479 (= e!2864306 e!2864307)))

(declare-fun res!1920104 () Bool)

(assert (=> b!4592479 (=> (not res!1920104) (not e!2864307))))

(assert (=> b!4592479 (= res!1920104 (not (containsKey!2104 (t!358138 (t!358138 newBucket!178)) (_1!29111 (h!56970 (t!358138 newBucket!178))))))))

(declare-fun b!4592480 () Bool)

(assert (=> b!4592480 (= e!2864307 (noDuplicateKeys!1296 (t!358138 (t!358138 newBucket!178))))))

(assert (= (and d!1444834 (not res!1920103)) b!4592479))

(assert (= (and b!4592479 res!1920104) b!4592480))

(declare-fun m!5415853 () Bool)

(assert (=> b!4592479 m!5415853))

(declare-fun m!5415855 () Bool)

(assert (=> b!4592480 m!5415855))

(assert (=> b!4592150 d!1444834))

(assert (=> b!4592111 d!1444764))

(declare-fun d!1444838 () Bool)

(assert (=> d!1444838 (containsKey!2107 (toList!4608 (extractMap!1356 (toList!4607 lm!1477))) key!3287)))

(declare-fun lt!1754159 () Unit!107496)

(declare-fun choose!30684 (List!51144 K!12390) Unit!107496)

(assert (=> d!1444838 (= lt!1754159 (choose!30684 (toList!4608 (extractMap!1356 (toList!4607 lm!1477))) key!3287))))

(assert (=> d!1444838 (invariantList!1111 (toList!4608 (extractMap!1356 (toList!4607 lm!1477))))))

(assert (=> d!1444838 (= (lemmaInGetKeysListThenContainsKey!558 (toList!4608 (extractMap!1356 (toList!4607 lm!1477))) key!3287) lt!1754159)))

(declare-fun bs!1008192 () Bool)

(assert (= bs!1008192 d!1444838))

(assert (=> bs!1008192 m!5415435))

(declare-fun m!5415863 () Bool)

(assert (=> bs!1008192 m!5415863))

(assert (=> bs!1008192 m!5415587))

(assert (=> b!4592111 d!1444838))

(declare-fun d!1444846 () Bool)

(declare-fun res!1920116 () Bool)

(declare-fun e!2864322 () Bool)

(assert (=> d!1444846 (=> res!1920116 e!2864322)))

(assert (=> d!1444846 (= res!1920116 (and ((_ is Cons!51021) (toList!4607 lm!1477)) (= (_1!29112 (h!56971 (toList!4607 lm!1477))) lt!1753837)))))

(assert (=> d!1444846 (= (containsKey!2106 (toList!4607 lm!1477) lt!1753837) e!2864322)))

(declare-fun b!4592498 () Bool)

(declare-fun e!2864323 () Bool)

(assert (=> b!4592498 (= e!2864322 e!2864323)))

(declare-fun res!1920117 () Bool)

(assert (=> b!4592498 (=> (not res!1920117) (not e!2864323))))

(assert (=> b!4592498 (= res!1920117 (and (or (not ((_ is Cons!51021) (toList!4607 lm!1477))) (bvsle (_1!29112 (h!56971 (toList!4607 lm!1477))) lt!1753837)) ((_ is Cons!51021) (toList!4607 lm!1477)) (bvslt (_1!29112 (h!56971 (toList!4607 lm!1477))) lt!1753837)))))

(declare-fun b!4592499 () Bool)

(assert (=> b!4592499 (= e!2864323 (containsKey!2106 (t!358139 (toList!4607 lm!1477)) lt!1753837))))

(assert (= (and d!1444846 (not res!1920116)) b!4592498))

(assert (= (and b!4592498 res!1920117) b!4592499))

(declare-fun m!5415881 () Bool)

(assert (=> b!4592499 m!5415881))

(assert (=> d!1444634 d!1444846))

(declare-fun d!1444856 () Bool)

(declare-fun choose!30687 (Hashable!5695 K!12390) (_ BitVec 64))

(assert (=> d!1444856 (= (hash!3173 hashF!1107 key!3287) (choose!30687 hashF!1107 key!3287))))

(declare-fun bs!1008195 () Bool)

(assert (= bs!1008195 d!1444856))

(declare-fun m!5415883 () Bool)

(assert (=> bs!1008195 m!5415883))

(assert (=> d!1444654 d!1444856))

(declare-fun d!1444860 () Bool)

(declare-fun res!1920120 () Bool)

(declare-fun e!2864326 () Bool)

(assert (=> d!1444860 (=> res!1920120 e!2864326)))

(assert (=> d!1444860 (= res!1920120 ((_ is Nil!51021) (t!358139 (toList!4607 lm!1477))))))

(assert (=> d!1444860 (= (forall!10552 (t!358139 (toList!4607 lm!1477)) lambda!184986) e!2864326)))

(declare-fun b!4592502 () Bool)

(declare-fun e!2864327 () Bool)

(assert (=> b!4592502 (= e!2864326 e!2864327)))

(declare-fun res!1920121 () Bool)

(assert (=> b!4592502 (=> (not res!1920121) (not e!2864327))))

(assert (=> b!4592502 (= res!1920121 (dynLambda!21367 lambda!184986 (h!56971 (t!358139 (toList!4607 lm!1477)))))))

(declare-fun b!4592503 () Bool)

(assert (=> b!4592503 (= e!2864327 (forall!10552 (t!358139 (t!358139 (toList!4607 lm!1477))) lambda!184986))))

(assert (= (and d!1444860 (not res!1920120)) b!4592502))

(assert (= (and b!4592502 res!1920121) b!4592503))

(declare-fun b_lambda!168619 () Bool)

(assert (=> (not b_lambda!168619) (not b!4592502)))

(declare-fun m!5415889 () Bool)

(assert (=> b!4592502 m!5415889))

(declare-fun m!5415891 () Bool)

(assert (=> b!4592503 m!5415891))

(assert (=> b!4592076 d!1444860))

(declare-fun d!1444864 () Bool)

(declare-fun res!1920122 () Bool)

(declare-fun e!2864328 () Bool)

(assert (=> d!1444864 (=> res!1920122 e!2864328)))

(assert (=> d!1444864 (= res!1920122 (and ((_ is Cons!51020) (t!358138 newBucket!178)) (= (_1!29111 (h!56970 (t!358138 newBucket!178))) (_1!29111 (h!56970 newBucket!178)))))))

(assert (=> d!1444864 (= (containsKey!2104 (t!358138 newBucket!178) (_1!29111 (h!56970 newBucket!178))) e!2864328)))

(declare-fun b!4592504 () Bool)

(declare-fun e!2864329 () Bool)

(assert (=> b!4592504 (= e!2864328 e!2864329)))

(declare-fun res!1920123 () Bool)

(assert (=> b!4592504 (=> (not res!1920123) (not e!2864329))))

(assert (=> b!4592504 (= res!1920123 ((_ is Cons!51020) (t!358138 newBucket!178)))))

(declare-fun b!4592505 () Bool)

(assert (=> b!4592505 (= e!2864329 (containsKey!2104 (t!358138 (t!358138 newBucket!178)) (_1!29111 (h!56970 newBucket!178))))))

(assert (= (and d!1444864 (not res!1920122)) b!4592504))

(assert (= (and b!4592504 res!1920123) b!4592505))

(declare-fun m!5415893 () Bool)

(assert (=> b!4592505 m!5415893))

(assert (=> b!4592149 d!1444864))

(assert (=> b!4592110 d!1444728))

(assert (=> b!4592110 d!1444730))

(declare-fun tp!1340128 () Bool)

(declare-fun e!2864330 () Bool)

(declare-fun b!4592506 () Bool)

(assert (=> b!4592506 (= e!2864330 (and tp_is_empty!28477 tp_is_empty!28479 tp!1340128))))

(assert (=> b!4592155 (= tp!1340114 e!2864330)))

(assert (= (and b!4592155 ((_ is Cons!51020) (_2!29112 (h!56971 (toList!4607 lm!1477))))) b!4592506))

(declare-fun b!4592507 () Bool)

(declare-fun e!2864331 () Bool)

(declare-fun tp!1340129 () Bool)

(declare-fun tp!1340130 () Bool)

(assert (=> b!4592507 (= e!2864331 (and tp!1340129 tp!1340130))))

(assert (=> b!4592155 (= tp!1340115 e!2864331)))

(assert (= (and b!4592155 ((_ is Cons!51021) (t!358139 (toList!4607 lm!1477)))) b!4592507))

(declare-fun e!2864332 () Bool)

(declare-fun tp!1340131 () Bool)

(declare-fun b!4592508 () Bool)

(assert (=> b!4592508 (= e!2864332 (and tp_is_empty!28477 tp_is_empty!28479 tp!1340131))))

(assert (=> b!4592166 (= tp!1340118 e!2864332)))

(assert (= (and b!4592166 ((_ is Cons!51020) (t!358138 (t!358138 newBucket!178)))) b!4592508))

(declare-fun b_lambda!168621 () Bool)

(assert (= b_lambda!168593 (or d!1444632 b_lambda!168621)))

(declare-fun bs!1008196 () Bool)

(declare-fun d!1444866 () Bool)

(assert (= bs!1008196 (and d!1444866 d!1444632)))

(assert (=> bs!1008196 (= (dynLambda!21367 lambda!184995 (h!56971 (toList!4607 lm!1477))) (noDuplicateKeys!1296 (_2!29112 (h!56971 (toList!4607 lm!1477)))))))

(assert (=> bs!1008196 m!5415497))

(assert (=> b!4592188 d!1444866))

(declare-fun b_lambda!168623 () Bool)

(assert (= b_lambda!168601 (or d!1444676 b_lambda!168623)))

(declare-fun bs!1008197 () Bool)

(declare-fun d!1444868 () Bool)

(assert (= bs!1008197 (and d!1444868 d!1444676)))

(assert (=> bs!1008197 (= (dynLambda!21367 lambda!185016 (h!56971 (toList!4607 lm!1477))) (noDuplicateKeys!1296 (_2!29112 (h!56971 (toList!4607 lm!1477)))))))

(assert (=> bs!1008197 m!5415497))

(assert (=> b!4592246 d!1444868))

(declare-fun b_lambda!168625 () Bool)

(assert (= b_lambda!168595 (or d!1444626 b_lambda!168625)))

(declare-fun bs!1008199 () Bool)

(declare-fun d!1444870 () Bool)

(assert (= bs!1008199 (and d!1444870 d!1444626)))

(assert (=> bs!1008199 (= (dynLambda!21367 lambda!184992 (h!56971 (toList!4607 lm!1477))) (noDuplicateKeys!1296 (_2!29112 (h!56971 (toList!4607 lm!1477)))))))

(assert (=> bs!1008199 m!5415497))

(assert (=> b!4592190 d!1444870))

(declare-fun b_lambda!168627 () Bool)

(assert (= b_lambda!168605 (or d!1444622 b_lambda!168627)))

(declare-fun bs!1008200 () Bool)

(declare-fun d!1444874 () Bool)

(assert (= bs!1008200 (and d!1444874 d!1444622)))

(assert (=> bs!1008200 (= (dynLambda!21367 lambda!184989 (h!56971 (toList!4607 lm!1477))) (allKeysSameHash!1152 (_2!29112 (h!56971 (toList!4607 lm!1477))) (_1!29112 (h!56971 (toList!4607 lm!1477))) hashF!1107))))

(declare-fun m!5415897 () Bool)

(assert (=> bs!1008200 m!5415897))

(assert (=> b!4592286 d!1444874))

(declare-fun b_lambda!168629 () Bool)

(assert (= b_lambda!168599 (or start!457548 b_lambda!168629)))

(declare-fun bs!1008201 () Bool)

(declare-fun d!1444876 () Bool)

(assert (= bs!1008201 (and d!1444876 start!457548)))

(assert (=> bs!1008201 (= (dynLambda!21367 lambda!184986 (h!56971 (t!358139 lt!1753836))) (noDuplicateKeys!1296 (_2!29112 (h!56971 (t!358139 lt!1753836)))))))

(declare-fun m!5415899 () Bool)

(assert (=> bs!1008201 m!5415899))

(assert (=> b!4592244 d!1444876))

(declare-fun b_lambda!168631 () Bool)

(assert (= b_lambda!168603 (or start!457548 b_lambda!168631)))

(assert (=> d!1444754 d!1444690))

(declare-fun b_lambda!168633 () Bool)

(assert (= b_lambda!168611 (or d!1444650 b_lambda!168633)))

(declare-fun bs!1008202 () Bool)

(declare-fun d!1444878 () Bool)

(assert (= bs!1008202 (and d!1444878 d!1444650)))

(assert (=> bs!1008202 (= (dynLambda!21370 lambda!185004 (h!56970 newBucket!178)) (= (hash!3171 hashF!1107 (_1!29111 (h!56970 newBucket!178))) hash!344))))

(declare-fun m!5415901 () Bool)

(assert (=> bs!1008202 m!5415901))

(assert (=> b!4592396 d!1444878))

(declare-fun b_lambda!168635 () Bool)

(assert (= b_lambda!168619 (or start!457548 b_lambda!168635)))

(declare-fun bs!1008203 () Bool)

(declare-fun d!1444880 () Bool)

(assert (= bs!1008203 (and d!1444880 start!457548)))

(assert (=> bs!1008203 (= (dynLambda!21367 lambda!184986 (h!56971 (t!358139 (toList!4607 lm!1477)))) (noDuplicateKeys!1296 (_2!29112 (h!56971 (t!358139 (toList!4607 lm!1477))))))))

(declare-fun m!5415903 () Bool)

(assert (=> bs!1008203 m!5415903))

(assert (=> b!4592502 d!1444880))

(check-sat (not b!4592209) (not d!1444740) (not b!4592287) (not b!4592185) (not b!4592352) (not b!4592480) (not b!4592295) (not b!4592479) (not b_lambda!168623) (not bs!1008203) (not b!4592503) (not b_lambda!168631) (not b!4592281) (not b!4592265) (not b!4592189) (not b!4592247) (not b!4592469) (not b_lambda!168579) (not bm!320588) (not b!4592308) (not d!1444716) (not b_lambda!168621) (not b!4592456) (not b!4592280) (not b!4592455) (not b!4592347) (not b!4592220) (not b_lambda!168627) (not d!1444708) (not b!4592468) (not b!4592249) (not b!4592374) tp_is_empty!28479 (not d!1444742) (not d!1444736) (not b!4592499) (not b!4592454) (not b!4592505) (not b!4592391) (not b_lambda!168583) (not b!4592317) (not b!4592313) (not b!4592208) (not b!4592245) (not b!4592380) (not b!4592382) (not b!4592448) (not bm!320587) (not bm!320589) (not b!4592219) (not b!4592507) tp_is_empty!28477 (not b_lambda!168625) (not bs!1008202) (not d!1444810) (not b_lambda!168635) (not d!1444812) (not d!1444732) (not b!4592373) (not d!1444776) (not d!1444706) (not d!1444752) (not b!4592263) (not b_lambda!168629) (not b!4592453) (not d!1444712) (not d!1444818) (not bs!1008200) (not d!1444726) (not b!4592191) (not d!1444794) (not bs!1008197) (not bs!1008201) (not b_lambda!168581) (not b!4592217) (not b!4592210) (not b!4592353) (not b!4592508) (not b_lambda!168633) (not d!1444722) (not b!4592278) (not d!1444728) (not b!4592506) (not d!1444782) (not b!4592235) (not d!1444774) (not d!1444838) (not b!4592349) (not b!4592310) (not b!4592397) (not bs!1008199) (not b!4592187) (not d!1444856) (not b!4592376) (not b!4592348) (not b!4592211) (not bs!1008196) (not b!4592470))
(check-sat)
