; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!489984 () Bool)

(assert start!489984)

(declare-fun b!4777782 () Bool)

(declare-fun res!2027996 () Bool)

(declare-fun e!2982675 () Bool)

(assert (=> b!4777782 (=> (not res!2027996) (not e!2982675))))

(declare-datatypes ((K!15492 0))(
  ( (K!15493 (val!20699 Int)) )
))
(declare-datatypes ((V!15738 0))(
  ( (V!15739 (val!20700 Int)) )
))
(declare-datatypes ((tuple2!56372 0))(
  ( (tuple2!56373 (_1!31480 K!15492) (_2!31480 V!15738)) )
))
(declare-datatypes ((List!54053 0))(
  ( (Nil!53929) (Cons!53929 (h!60343 tuple2!56372) (t!361503 List!54053)) )
))
(declare-datatypes ((tuple2!56374 0))(
  ( (tuple2!56375 (_1!31481 (_ BitVec 64)) (_2!31481 List!54053)) )
))
(declare-datatypes ((List!54054 0))(
  ( (Nil!53930) (Cons!53930 (h!60344 tuple2!56374) (t!361504 List!54054)) )
))
(declare-datatypes ((ListLongMap!5103 0))(
  ( (ListLongMap!5104 (toList!6681 List!54054)) )
))
(declare-fun lm!2709 () ListLongMap!5103)

(declare-fun key!6641 () K!15492)

(declare-fun containsKeyBiggerList!457 (List!54054 K!15492) Bool)

(assert (=> b!4777782 (= res!2027996 (containsKeyBiggerList!457 (toList!6681 lm!2709) key!6641))))

(declare-fun b!4777783 () Bool)

(declare-fun lt!1940876 () (_ BitVec 64))

(declare-datatypes ((Option!12888 0))(
  ( (None!12887) (Some!12887 (v!48064 List!54053)) )
))
(declare-fun getValueByKey!2257 (List!54054 (_ BitVec 64)) Option!12888)

(declare-fun apply!12856 (ListLongMap!5103 (_ BitVec 64)) List!54053)

(assert (=> b!4777783 (= e!2982675 (not (= (getValueByKey!2257 (toList!6681 lm!2709) lt!1940876) (Some!12887 (apply!12856 lm!2709 lt!1940876)))))))

(declare-fun contains!17425 (ListLongMap!5103 (_ BitVec 64)) Bool)

(assert (=> b!4777783 (contains!17425 lm!2709 lt!1940876)))

(declare-datatypes ((Hashable!6801 0))(
  ( (HashableExt!6800 (__x!32824 Int)) )
))
(declare-fun hashF!1687 () Hashable!6801)

(declare-fun hash!4777 (Hashable!6801 K!15492) (_ BitVec 64))

(assert (=> b!4777783 (= lt!1940876 (hash!4777 hashF!1687 key!6641))))

(declare-datatypes ((Unit!138992 0))(
  ( (Unit!138993) )
))
(declare-fun lt!1940878 () Unit!138992)

(declare-fun lemmaInGenMapThenLongMapContainsHash!997 (ListLongMap!5103 K!15492 Hashable!6801) Unit!138992)

(assert (=> b!4777783 (= lt!1940878 (lemmaInGenMapThenLongMapContainsHash!997 lm!2709 key!6641 hashF!1687))))

(declare-datatypes ((ListMap!6153 0))(
  ( (ListMap!6154 (toList!6682 List!54053)) )
))
(declare-fun contains!17426 (ListMap!6153 K!15492) Bool)

(declare-fun extractMap!2328 (List!54054) ListMap!6153)

(assert (=> b!4777783 (contains!17426 (extractMap!2328 (toList!6681 lm!2709)) key!6641)))

(declare-fun lt!1940877 () Unit!138992)

(declare-fun lemmaListContainsThenExtractedMapContains!649 (ListLongMap!5103 K!15492 Hashable!6801) Unit!138992)

(assert (=> b!4777783 (= lt!1940877 (lemmaListContainsThenExtractedMapContains!649 lm!2709 key!6641 hashF!1687))))

(declare-fun b!4777781 () Bool)

(declare-fun res!2027997 () Bool)

(assert (=> b!4777781 (=> (not res!2027997) (not e!2982675))))

(declare-fun allKeysSameHashInMap!2206 (ListLongMap!5103 Hashable!6801) Bool)

(assert (=> b!4777781 (= res!2027997 (allKeysSameHashInMap!2206 lm!2709 hashF!1687))))

(declare-fun res!2027995 () Bool)

(assert (=> start!489984 (=> (not res!2027995) (not e!2982675))))

(declare-fun lambda!227276 () Int)

(declare-fun forall!12077 (List!54054 Int) Bool)

(assert (=> start!489984 (= res!2027995 (forall!12077 (toList!6681 lm!2709) lambda!227276))))

(assert (=> start!489984 e!2982675))

(declare-fun e!2982676 () Bool)

(declare-fun inv!69519 (ListLongMap!5103) Bool)

(assert (=> start!489984 (and (inv!69519 lm!2709) e!2982676)))

(assert (=> start!489984 true))

(declare-fun tp_is_empty!33113 () Bool)

(assert (=> start!489984 tp_is_empty!33113))

(declare-fun b!4777784 () Bool)

(declare-fun tp!1357241 () Bool)

(assert (=> b!4777784 (= e!2982676 tp!1357241)))

(assert (= (and start!489984 res!2027995) b!4777781))

(assert (= (and b!4777781 res!2027997) b!4777782))

(assert (= (and b!4777782 res!2027996) b!4777783))

(assert (= start!489984 b!4777784))

(declare-fun m!5753486 () Bool)

(assert (=> b!4777782 m!5753486))

(declare-fun m!5753488 () Bool)

(assert (=> b!4777783 m!5753488))

(declare-fun m!5753490 () Bool)

(assert (=> b!4777783 m!5753490))

(declare-fun m!5753492 () Bool)

(assert (=> b!4777783 m!5753492))

(declare-fun m!5753494 () Bool)

(assert (=> b!4777783 m!5753494))

(declare-fun m!5753496 () Bool)

(assert (=> b!4777783 m!5753496))

(assert (=> b!4777783 m!5753490))

(declare-fun m!5753498 () Bool)

(assert (=> b!4777783 m!5753498))

(declare-fun m!5753500 () Bool)

(assert (=> b!4777783 m!5753500))

(declare-fun m!5753502 () Bool)

(assert (=> b!4777783 m!5753502))

(declare-fun m!5753504 () Bool)

(assert (=> b!4777781 m!5753504))

(declare-fun m!5753506 () Bool)

(assert (=> start!489984 m!5753506))

(declare-fun m!5753508 () Bool)

(assert (=> start!489984 m!5753508))

(push 1)

(assert tp_is_empty!33113)

(assert (not b!4777784))

(assert (not b!4777783))

(assert (not b!4777782))

(assert (not start!489984))

(assert (not b!4777781))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1526896 () Bool)

(declare-fun res!2028014 () Bool)

(declare-fun e!2982690 () Bool)

(assert (=> d!1526896 (=> res!2028014 e!2982690)))

(declare-fun e!2982689 () Bool)

(assert (=> d!1526896 (= res!2028014 e!2982689)))

(declare-fun res!2028015 () Bool)

(assert (=> d!1526896 (=> (not res!2028015) (not e!2982689))))

(assert (=> d!1526896 (= res!2028015 (is-Cons!53930 (toList!6681 lm!2709)))))

(assert (=> d!1526896 (= (containsKeyBiggerList!457 (toList!6681 lm!2709) key!6641) e!2982690)))

(declare-fun b!4777803 () Bool)

(declare-fun containsKey!3768 (List!54053 K!15492) Bool)

(assert (=> b!4777803 (= e!2982689 (containsKey!3768 (_2!31481 (h!60344 (toList!6681 lm!2709))) key!6641))))

(declare-fun b!4777804 () Bool)

(declare-fun e!2982691 () Bool)

(assert (=> b!4777804 (= e!2982690 e!2982691)))

(declare-fun res!2028013 () Bool)

(assert (=> b!4777804 (=> (not res!2028013) (not e!2982691))))

(assert (=> b!4777804 (= res!2028013 (is-Cons!53930 (toList!6681 lm!2709)))))

(declare-fun b!4777805 () Bool)

(assert (=> b!4777805 (= e!2982691 (containsKeyBiggerList!457 (t!361504 (toList!6681 lm!2709)) key!6641))))

(assert (= (and d!1526896 res!2028015) b!4777803))

(assert (= (and d!1526896 (not res!2028014)) b!4777804))

(assert (= (and b!4777804 res!2028013) b!4777805))

(declare-fun m!5753534 () Bool)

(assert (=> b!4777803 m!5753534))

(declare-fun m!5753536 () Bool)

(assert (=> b!4777805 m!5753536))

(assert (=> b!4777782 d!1526896))

(declare-fun d!1526898 () Bool)

(declare-fun res!2028020 () Bool)

(declare-fun e!2982696 () Bool)

(assert (=> d!1526898 (=> res!2028020 e!2982696)))

(assert (=> d!1526898 (= res!2028020 (is-Nil!53930 (toList!6681 lm!2709)))))

(assert (=> d!1526898 (= (forall!12077 (toList!6681 lm!2709) lambda!227276) e!2982696)))

(declare-fun b!4777810 () Bool)

(declare-fun e!2982697 () Bool)

(assert (=> b!4777810 (= e!2982696 e!2982697)))

(declare-fun res!2028021 () Bool)

(assert (=> b!4777810 (=> (not res!2028021) (not e!2982697))))

(declare-fun dynLambda!21996 (Int tuple2!56374) Bool)

(assert (=> b!4777810 (= res!2028021 (dynLambda!21996 lambda!227276 (h!60344 (toList!6681 lm!2709))))))

(declare-fun b!4777811 () Bool)

(assert (=> b!4777811 (= e!2982697 (forall!12077 (t!361504 (toList!6681 lm!2709)) lambda!227276))))

(assert (= (and d!1526898 (not res!2028020)) b!4777810))

(assert (= (and b!4777810 res!2028021) b!4777811))

(declare-fun b_lambda!185135 () Bool)

(assert (=> (not b_lambda!185135) (not b!4777810)))

(declare-fun m!5753538 () Bool)

(assert (=> b!4777810 m!5753538))

(declare-fun m!5753540 () Bool)

(assert (=> b!4777811 m!5753540))

(assert (=> start!489984 d!1526898))

(declare-fun d!1526900 () Bool)

(declare-fun isStrictlySorted!836 (List!54054) Bool)

(assert (=> d!1526900 (= (inv!69519 lm!2709) (isStrictlySorted!836 (toList!6681 lm!2709)))))

(declare-fun bs!1150955 () Bool)

(assert (= bs!1150955 d!1526900))

(declare-fun m!5753542 () Bool)

(assert (=> bs!1150955 m!5753542))

(assert (=> start!489984 d!1526900))

(declare-fun b!4777822 () Bool)

(declare-fun e!2982703 () Option!12888)

(assert (=> b!4777822 (= e!2982703 (getValueByKey!2257 (t!361504 (toList!6681 lm!2709)) lt!1940876))))

(declare-fun d!1526902 () Bool)

(declare-fun c!814556 () Bool)

(assert (=> d!1526902 (= c!814556 (and (is-Cons!53930 (toList!6681 lm!2709)) (= (_1!31481 (h!60344 (toList!6681 lm!2709))) lt!1940876)))))

(declare-fun e!2982702 () Option!12888)

(assert (=> d!1526902 (= (getValueByKey!2257 (toList!6681 lm!2709) lt!1940876) e!2982702)))

(declare-fun b!4777820 () Bool)

(assert (=> b!4777820 (= e!2982702 (Some!12887 (_2!31481 (h!60344 (toList!6681 lm!2709)))))))

(declare-fun b!4777821 () Bool)

(assert (=> b!4777821 (= e!2982702 e!2982703)))

(declare-fun c!814557 () Bool)

(assert (=> b!4777821 (= c!814557 (and (is-Cons!53930 (toList!6681 lm!2709)) (not (= (_1!31481 (h!60344 (toList!6681 lm!2709))) lt!1940876))))))

(declare-fun b!4777823 () Bool)

(assert (=> b!4777823 (= e!2982703 None!12887)))

(assert (= (and d!1526902 c!814556) b!4777820))

(assert (= (and d!1526902 (not c!814556)) b!4777821))

(assert (= (and b!4777821 c!814557) b!4777822))

(assert (= (and b!4777821 (not c!814557)) b!4777823))

(declare-fun m!5753544 () Bool)

(assert (=> b!4777822 m!5753544))

(assert (=> b!4777783 d!1526902))

(declare-fun bs!1150957 () Bool)

(declare-fun d!1526906 () Bool)

(assert (= bs!1150957 (and d!1526906 start!489984)))

(declare-fun lambda!227282 () Int)

(assert (=> bs!1150957 (= lambda!227282 lambda!227276)))

(assert (=> d!1526906 (contains!17426 (extractMap!2328 (toList!6681 lm!2709)) key!6641)))

(declare-fun lt!1940890 () Unit!138992)

(declare-fun choose!34178 (ListLongMap!5103 K!15492 Hashable!6801) Unit!138992)

(assert (=> d!1526906 (= lt!1940890 (choose!34178 lm!2709 key!6641 hashF!1687))))

(assert (=> d!1526906 (forall!12077 (toList!6681 lm!2709) lambda!227282)))

(assert (=> d!1526906 (= (lemmaListContainsThenExtractedMapContains!649 lm!2709 key!6641 hashF!1687) lt!1940890)))

(declare-fun bs!1150958 () Bool)

(assert (= bs!1150958 d!1526906))

(assert (=> bs!1150958 m!5753490))

(assert (=> bs!1150958 m!5753490))

(assert (=> bs!1150958 m!5753498))

(declare-fun m!5753552 () Bool)

(assert (=> bs!1150958 m!5753552))

(declare-fun m!5753554 () Bool)

(assert (=> bs!1150958 m!5753554))

(assert (=> b!4777783 d!1526906))

(declare-fun b!4777848 () Bool)

(declare-fun e!2982722 () Bool)

(declare-datatypes ((List!54057 0))(
  ( (Nil!53933) (Cons!53933 (h!60347 K!15492) (t!361507 List!54057)) )
))
(declare-fun contains!17429 (List!54057 K!15492) Bool)

(declare-fun keys!19627 (ListMap!6153) List!54057)

(assert (=> b!4777848 (= e!2982722 (contains!17429 (keys!19627 (extractMap!2328 (toList!6681 lm!2709))) key!6641))))

(declare-fun b!4777849 () Bool)

(declare-fun e!2982724 () Unit!138992)

(declare-fun lt!1940910 () Unit!138992)

(assert (=> b!4777849 (= e!2982724 lt!1940910)))

(declare-fun lt!1940908 () Unit!138992)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2051 (List!54053 K!15492) Unit!138992)

(assert (=> b!4777849 (= lt!1940908 (lemmaContainsKeyImpliesGetValueByKeyDefined!2051 (toList!6682 (extractMap!2328 (toList!6681 lm!2709))) key!6641))))

(declare-datatypes ((Option!12890 0))(
  ( (None!12889) (Some!12889 (v!48066 V!15738)) )
))
(declare-fun isDefined!10032 (Option!12890) Bool)

(declare-fun getValueByKey!2259 (List!54053 K!15492) Option!12890)

(assert (=> b!4777849 (isDefined!10032 (getValueByKey!2259 (toList!6682 (extractMap!2328 (toList!6681 lm!2709))) key!6641))))

(declare-fun lt!1940909 () Unit!138992)

(assert (=> b!4777849 (= lt!1940909 lt!1940908)))

(declare-fun lemmaInListThenGetKeysListContains!1024 (List!54053 K!15492) Unit!138992)

(assert (=> b!4777849 (= lt!1940910 (lemmaInListThenGetKeysListContains!1024 (toList!6682 (extractMap!2328 (toList!6681 lm!2709))) key!6641))))

(declare-fun call!334615 () Bool)

(assert (=> b!4777849 call!334615))

(declare-fun b!4777850 () Bool)

(assert (=> b!4777850 false))

(declare-fun lt!1940907 () Unit!138992)

(declare-fun lt!1940914 () Unit!138992)

(assert (=> b!4777850 (= lt!1940907 lt!1940914)))

(declare-fun containsKey!3769 (List!54053 K!15492) Bool)

(assert (=> b!4777850 (containsKey!3769 (toList!6682 (extractMap!2328 (toList!6681 lm!2709))) key!6641)))

(declare-fun lemmaInGetKeysListThenContainsKey!1028 (List!54053 K!15492) Unit!138992)

(assert (=> b!4777850 (= lt!1940914 (lemmaInGetKeysListThenContainsKey!1028 (toList!6682 (extractMap!2328 (toList!6681 lm!2709))) key!6641))))

(declare-fun e!2982725 () Unit!138992)

(declare-fun Unit!138996 () Unit!138992)

(assert (=> b!4777850 (= e!2982725 Unit!138996)))

(declare-fun b!4777851 () Bool)

(declare-fun e!2982727 () Bool)

(assert (=> b!4777851 (= e!2982727 e!2982722)))

(declare-fun res!2028035 () Bool)

(assert (=> b!4777851 (=> (not res!2028035) (not e!2982722))))

(assert (=> b!4777851 (= res!2028035 (isDefined!10032 (getValueByKey!2259 (toList!6682 (extractMap!2328 (toList!6681 lm!2709))) key!6641)))))

(declare-fun b!4777852 () Bool)

(declare-fun e!2982723 () Bool)

(assert (=> b!4777852 (= e!2982723 (not (contains!17429 (keys!19627 (extractMap!2328 (toList!6681 lm!2709))) key!6641)))))

(declare-fun b!4777853 () Bool)

(declare-fun e!2982726 () List!54057)

(declare-fun getKeysList!1029 (List!54053) List!54057)

(assert (=> b!4777853 (= e!2982726 (getKeysList!1029 (toList!6682 (extractMap!2328 (toList!6681 lm!2709)))))))

(declare-fun b!4777854 () Bool)

(assert (=> b!4777854 (= e!2982724 e!2982725)))

(declare-fun c!814564 () Bool)

(assert (=> b!4777854 (= c!814564 call!334615)))

(declare-fun b!4777855 () Bool)

(assert (=> b!4777855 (= e!2982726 (keys!19627 (extractMap!2328 (toList!6681 lm!2709))))))

(declare-fun bm!334610 () Bool)

(assert (=> bm!334610 (= call!334615 (contains!17429 e!2982726 key!6641))))

(declare-fun c!814566 () Bool)

(declare-fun c!814565 () Bool)

(assert (=> bm!334610 (= c!814566 c!814565)))

(declare-fun d!1526912 () Bool)

(assert (=> d!1526912 e!2982727))

(declare-fun res!2028036 () Bool)

(assert (=> d!1526912 (=> res!2028036 e!2982727)))

(assert (=> d!1526912 (= res!2028036 e!2982723)))

(declare-fun res!2028034 () Bool)

(assert (=> d!1526912 (=> (not res!2028034) (not e!2982723))))

(declare-fun lt!1940913 () Bool)

(assert (=> d!1526912 (= res!2028034 (not lt!1940913))))

(declare-fun lt!1940911 () Bool)

(assert (=> d!1526912 (= lt!1940913 lt!1940911)))

(declare-fun lt!1940912 () Unit!138992)

(assert (=> d!1526912 (= lt!1940912 e!2982724)))

(assert (=> d!1526912 (= c!814565 lt!1940911)))

(assert (=> d!1526912 (= lt!1940911 (containsKey!3769 (toList!6682 (extractMap!2328 (toList!6681 lm!2709))) key!6641))))

(assert (=> d!1526912 (= (contains!17426 (extractMap!2328 (toList!6681 lm!2709)) key!6641) lt!1940913)))

(declare-fun b!4777856 () Bool)

(declare-fun Unit!138997 () Unit!138992)

(assert (=> b!4777856 (= e!2982725 Unit!138997)))

(assert (= (and d!1526912 c!814565) b!4777849))

(assert (= (and d!1526912 (not c!814565)) b!4777854))

(assert (= (and b!4777854 c!814564) b!4777850))

(assert (= (and b!4777854 (not c!814564)) b!4777856))

(assert (= (or b!4777849 b!4777854) bm!334610))

(assert (= (and bm!334610 c!814566) b!4777853))

(assert (= (and bm!334610 (not c!814566)) b!4777855))

(assert (= (and d!1526912 res!2028034) b!4777852))

(assert (= (and d!1526912 (not res!2028036)) b!4777851))

(assert (= (and b!4777851 res!2028035) b!4777848))

(declare-fun m!5753556 () Bool)

(assert (=> d!1526912 m!5753556))

(assert (=> b!4777852 m!5753490))

(declare-fun m!5753558 () Bool)

(assert (=> b!4777852 m!5753558))

(assert (=> b!4777852 m!5753558))

(declare-fun m!5753560 () Bool)

(assert (=> b!4777852 m!5753560))

(declare-fun m!5753562 () Bool)

(assert (=> b!4777849 m!5753562))

(declare-fun m!5753564 () Bool)

(assert (=> b!4777849 m!5753564))

(assert (=> b!4777849 m!5753564))

(declare-fun m!5753566 () Bool)

(assert (=> b!4777849 m!5753566))

(declare-fun m!5753568 () Bool)

(assert (=> b!4777849 m!5753568))

(assert (=> b!4777850 m!5753556))

(declare-fun m!5753570 () Bool)

(assert (=> b!4777850 m!5753570))

(assert (=> b!4777855 m!5753490))

(assert (=> b!4777855 m!5753558))

(assert (=> b!4777851 m!5753564))

(assert (=> b!4777851 m!5753564))

(assert (=> b!4777851 m!5753566))

(declare-fun m!5753572 () Bool)

(assert (=> b!4777853 m!5753572))

(declare-fun m!5753574 () Bool)

(assert (=> bm!334610 m!5753574))

(assert (=> b!4777848 m!5753490))

(assert (=> b!4777848 m!5753558))

(assert (=> b!4777848 m!5753558))

(assert (=> b!4777848 m!5753560))

(assert (=> b!4777783 d!1526912))

(declare-fun d!1526914 () Bool)

(declare-fun hash!4779 (Hashable!6801 K!15492) (_ BitVec 64))

(assert (=> d!1526914 (= (hash!4777 hashF!1687 key!6641) (hash!4779 hashF!1687 key!6641))))

(declare-fun bs!1150959 () Bool)

(assert (= bs!1150959 d!1526914))

(declare-fun m!5753576 () Bool)

(assert (=> bs!1150959 m!5753576))

(assert (=> b!4777783 d!1526914))

(declare-fun d!1526916 () Bool)

(declare-fun get!18313 (Option!12888) List!54053)

(assert (=> d!1526916 (= (apply!12856 lm!2709 lt!1940876) (get!18313 (getValueByKey!2257 (toList!6681 lm!2709) lt!1940876)))))

(declare-fun bs!1150960 () Bool)

(assert (= bs!1150960 d!1526916))

(assert (=> bs!1150960 m!5753492))

(assert (=> bs!1150960 m!5753492))

(declare-fun m!5753578 () Bool)

(assert (=> bs!1150960 m!5753578))

(assert (=> b!4777783 d!1526916))

(declare-fun d!1526918 () Bool)

(declare-fun e!2982733 () Bool)

(assert (=> d!1526918 e!2982733))

(declare-fun res!2028039 () Bool)

(assert (=> d!1526918 (=> res!2028039 e!2982733)))

(declare-fun lt!1940925 () Bool)

(assert (=> d!1526918 (= res!2028039 (not lt!1940925))))

(declare-fun lt!1940927 () Bool)

(assert (=> d!1526918 (= lt!1940925 lt!1940927)))

(declare-fun lt!1940928 () Unit!138992)

(declare-fun e!2982732 () Unit!138992)

(assert (=> d!1526918 (= lt!1940928 e!2982732)))

(declare-fun c!814569 () Bool)

(assert (=> d!1526918 (= c!814569 lt!1940927)))

(declare-fun containsKey!3770 (List!54054 (_ BitVec 64)) Bool)

(assert (=> d!1526918 (= lt!1940927 (containsKey!3770 (toList!6681 lm!2709) lt!1940876))))

(assert (=> d!1526918 (= (contains!17425 lm!2709 lt!1940876) lt!1940925)))

(declare-fun b!4777863 () Bool)

(declare-fun lt!1940926 () Unit!138992)

(assert (=> b!4777863 (= e!2982732 lt!1940926)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2052 (List!54054 (_ BitVec 64)) Unit!138992)

(assert (=> b!4777863 (= lt!1940926 (lemmaContainsKeyImpliesGetValueByKeyDefined!2052 (toList!6681 lm!2709) lt!1940876))))

(declare-fun isDefined!10033 (Option!12888) Bool)

(assert (=> b!4777863 (isDefined!10033 (getValueByKey!2257 (toList!6681 lm!2709) lt!1940876))))

(declare-fun b!4777864 () Bool)

(declare-fun Unit!138998 () Unit!138992)

(assert (=> b!4777864 (= e!2982732 Unit!138998)))

(declare-fun b!4777865 () Bool)

(assert (=> b!4777865 (= e!2982733 (isDefined!10033 (getValueByKey!2257 (toList!6681 lm!2709) lt!1940876)))))

(assert (= (and d!1526918 c!814569) b!4777863))

(assert (= (and d!1526918 (not c!814569)) b!4777864))

(assert (= (and d!1526918 (not res!2028039)) b!4777865))

(declare-fun m!5753580 () Bool)

(assert (=> d!1526918 m!5753580))

(declare-fun m!5753582 () Bool)

(assert (=> b!4777863 m!5753582))

(assert (=> b!4777863 m!5753492))

(assert (=> b!4777863 m!5753492))

(declare-fun m!5753584 () Bool)

(assert (=> b!4777863 m!5753584))

(assert (=> b!4777865 m!5753492))

(assert (=> b!4777865 m!5753492))

(assert (=> b!4777865 m!5753584))

(assert (=> b!4777783 d!1526918))

(declare-fun bs!1150963 () Bool)

(declare-fun d!1526920 () Bool)

(assert (= bs!1150963 (and d!1526920 start!489984)))

(declare-fun lambda!227288 () Int)

(assert (=> bs!1150963 (= lambda!227288 lambda!227276)))

(declare-fun bs!1150964 () Bool)

(assert (= bs!1150964 (and d!1526920 d!1526906)))

(assert (=> bs!1150964 (= lambda!227288 lambda!227282)))

(declare-fun lt!1940932 () ListMap!6153)

(declare-fun invariantList!1685 (List!54053) Bool)

(assert (=> d!1526920 (invariantList!1685 (toList!6682 lt!1940932))))

(declare-fun e!2982742 () ListMap!6153)

(assert (=> d!1526920 (= lt!1940932 e!2982742)))

(declare-fun c!814578 () Bool)

(assert (=> d!1526920 (= c!814578 (is-Cons!53930 (toList!6681 lm!2709)))))

(assert (=> d!1526920 (forall!12077 (toList!6681 lm!2709) lambda!227288)))

(assert (=> d!1526920 (= (extractMap!2328 (toList!6681 lm!2709)) lt!1940932)))

(declare-fun b!4777882 () Bool)

(declare-fun addToMapMapFromBucket!1650 (List!54053 ListMap!6153) ListMap!6153)

(assert (=> b!4777882 (= e!2982742 (addToMapMapFromBucket!1650 (_2!31481 (h!60344 (toList!6681 lm!2709))) (extractMap!2328 (t!361504 (toList!6681 lm!2709)))))))

(declare-fun b!4777883 () Bool)

(assert (=> b!4777883 (= e!2982742 (ListMap!6154 Nil!53929))))

(assert (= (and d!1526920 c!814578) b!4777882))

(assert (= (and d!1526920 (not c!814578)) b!4777883))

(declare-fun m!5753592 () Bool)

(assert (=> d!1526920 m!5753592))

(declare-fun m!5753594 () Bool)

(assert (=> d!1526920 m!5753594))

(declare-fun m!5753596 () Bool)

(assert (=> b!4777882 m!5753596))

(assert (=> b!4777882 m!5753596))

(declare-fun m!5753598 () Bool)

(assert (=> b!4777882 m!5753598))

(assert (=> b!4777783 d!1526920))

(declare-fun bs!1150965 () Bool)

(declare-fun d!1526926 () Bool)

(assert (= bs!1150965 (and d!1526926 start!489984)))

(declare-fun lambda!227291 () Int)

(assert (=> bs!1150965 (= lambda!227291 lambda!227276)))

(declare-fun bs!1150966 () Bool)

(assert (= bs!1150966 (and d!1526926 d!1526906)))

(assert (=> bs!1150966 (= lambda!227291 lambda!227282)))

(declare-fun bs!1150967 () Bool)

(assert (= bs!1150967 (and d!1526926 d!1526920)))

(assert (=> bs!1150967 (= lambda!227291 lambda!227288)))

(assert (=> d!1526926 (contains!17425 lm!2709 (hash!4777 hashF!1687 key!6641))))

(declare-fun lt!1940935 () Unit!138992)

(declare-fun choose!34179 (ListLongMap!5103 K!15492 Hashable!6801) Unit!138992)

(assert (=> d!1526926 (= lt!1940935 (choose!34179 lm!2709 key!6641 hashF!1687))))

(assert (=> d!1526926 (forall!12077 (toList!6681 lm!2709) lambda!227291)))

(assert (=> d!1526926 (= (lemmaInGenMapThenLongMapContainsHash!997 lm!2709 key!6641 hashF!1687) lt!1940935)))

(declare-fun bs!1150968 () Bool)

(assert (= bs!1150968 d!1526926))

(assert (=> bs!1150968 m!5753494))

(assert (=> bs!1150968 m!5753494))

(declare-fun m!5753600 () Bool)

(assert (=> bs!1150968 m!5753600))

(declare-fun m!5753602 () Bool)

(assert (=> bs!1150968 m!5753602))

(declare-fun m!5753604 () Bool)

(assert (=> bs!1150968 m!5753604))

(assert (=> b!4777783 d!1526926))

(declare-fun bs!1150969 () Bool)

(declare-fun d!1526928 () Bool)

(assert (= bs!1150969 (and d!1526928 start!489984)))

(declare-fun lambda!227294 () Int)

(assert (=> bs!1150969 (not (= lambda!227294 lambda!227276))))

(declare-fun bs!1150970 () Bool)

(assert (= bs!1150970 (and d!1526928 d!1526906)))

(assert (=> bs!1150970 (not (= lambda!227294 lambda!227282))))

(declare-fun bs!1150971 () Bool)

(assert (= bs!1150971 (and d!1526928 d!1526920)))

(assert (=> bs!1150971 (not (= lambda!227294 lambda!227288))))

(declare-fun bs!1150972 () Bool)

(assert (= bs!1150972 (and d!1526928 d!1526926)))

(assert (=> bs!1150972 (not (= lambda!227294 lambda!227291))))

(assert (=> d!1526928 true))

(assert (=> d!1526928 (= (allKeysSameHashInMap!2206 lm!2709 hashF!1687) (forall!12077 (toList!6681 lm!2709) lambda!227294))))

(declare-fun bs!1150973 () Bool)

(assert (= bs!1150973 d!1526928))

(declare-fun m!5753606 () Bool)

(assert (=> bs!1150973 m!5753606))

(assert (=> b!4777781 d!1526928))

(declare-fun b!4777890 () Bool)

(declare-fun e!2982745 () Bool)

(declare-fun tp!1357249 () Bool)

(declare-fun tp!1357250 () Bool)

(assert (=> b!4777890 (= e!2982745 (and tp!1357249 tp!1357250))))

(assert (=> b!4777784 (= tp!1357241 e!2982745)))

(assert (= (and b!4777784 (is-Cons!53930 (toList!6681 lm!2709))) b!4777890))

(declare-fun b_lambda!185139 () Bool)

(assert (= b_lambda!185135 (or start!489984 b_lambda!185139)))

(declare-fun bs!1150974 () Bool)

(declare-fun d!1526930 () Bool)

(assert (= bs!1150974 (and d!1526930 start!489984)))

(declare-fun noDuplicateKeys!2282 (List!54053) Bool)

(assert (=> bs!1150974 (= (dynLambda!21996 lambda!227276 (h!60344 (toList!6681 lm!2709))) (noDuplicateKeys!2282 (_2!31481 (h!60344 (toList!6681 lm!2709)))))))

(declare-fun m!5753608 () Bool)

(assert (=> bs!1150974 m!5753608))

(assert (=> b!4777810 d!1526930))

(push 1)

(assert (not b!4777849))

(assert (not d!1526918))

(assert (not b!4777852))

(assert (not b!4777855))

(assert (not b!4777863))

(assert (not d!1526906))

(assert (not d!1526928))

(assert (not d!1526914))

(assert (not b!4777803))

(assert tp_is_empty!33113)

(assert (not bs!1150974))

(assert (not d!1526920))

(assert (not b!4777811))

(assert (not b_lambda!185139))

(assert (not b!4777850))

(assert (not b!4777890))

(assert (not d!1526916))

(assert (not d!1526912))

(assert (not bm!334610))

(assert (not d!1526900))

(assert (not b!4777882))

(assert (not b!4777865))

(assert (not b!4777822))

(assert (not d!1526926))

(assert (not b!4777848))

(assert (not b!4777851))

(assert (not b!4777853))

(assert (not b!4777805))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!4777969 () Bool)

(assert (=> b!4777969 true))

(declare-fun bs!1150989 () Bool)

(declare-fun b!4777972 () Bool)

(assert (= bs!1150989 (and b!4777972 b!4777969)))

(declare-fun lambda!227313 () Int)

(declare-fun lambda!227312 () Int)

(assert (=> bs!1150989 (= (= (Cons!53929 (h!60343 (toList!6682 (extractMap!2328 (toList!6681 lm!2709)))) (t!361503 (toList!6682 (extractMap!2328 (toList!6681 lm!2709))))) (t!361503 (toList!6682 (extractMap!2328 (toList!6681 lm!2709))))) (= lambda!227313 lambda!227312))))

(assert (=> b!4777972 true))

(declare-fun bs!1150990 () Bool)

(declare-fun b!4777971 () Bool)

(assert (= bs!1150990 (and b!4777971 b!4777969)))

(declare-fun lambda!227314 () Int)

(assert (=> bs!1150990 (= (= (toList!6682 (extractMap!2328 (toList!6681 lm!2709))) (t!361503 (toList!6682 (extractMap!2328 (toList!6681 lm!2709))))) (= lambda!227314 lambda!227312))))

(declare-fun bs!1150991 () Bool)

(assert (= bs!1150991 (and b!4777971 b!4777972)))

(assert (=> bs!1150991 (= (= (toList!6682 (extractMap!2328 (toList!6681 lm!2709))) (Cons!53929 (h!60343 (toList!6682 (extractMap!2328 (toList!6681 lm!2709)))) (t!361503 (toList!6682 (extractMap!2328 (toList!6681 lm!2709)))))) (= lambda!227314 lambda!227313))))

(assert (=> b!4777971 true))

(declare-fun d!1526948 () Bool)

(declare-fun e!2982793 () Bool)

(assert (=> d!1526948 e!2982793))

(declare-fun res!2028069 () Bool)

(assert (=> d!1526948 (=> (not res!2028069) (not e!2982793))))

(declare-fun lt!1940993 () List!54057)

(declare-fun noDuplicate!892 (List!54057) Bool)

(assert (=> d!1526948 (= res!2028069 (noDuplicate!892 lt!1940993))))

(declare-fun e!2982796 () List!54057)

(assert (=> d!1526948 (= lt!1940993 e!2982796)))

(declare-fun c!814600 () Bool)

(assert (=> d!1526948 (= c!814600 (is-Cons!53929 (toList!6682 (extractMap!2328 (toList!6681 lm!2709)))))))

(assert (=> d!1526948 (invariantList!1685 (toList!6682 (extractMap!2328 (toList!6681 lm!2709))))))

(assert (=> d!1526948 (= (getKeysList!1029 (toList!6682 (extractMap!2328 (toList!6681 lm!2709)))) lt!1940993)))

(declare-fun b!4777967 () Bool)

(declare-fun e!2982795 () Unit!138992)

(declare-fun Unit!139002 () Unit!138992)

(assert (=> b!4777967 (= e!2982795 Unit!139002)))

(declare-fun b!4777968 () Bool)

(assert (=> b!4777968 (= e!2982796 Nil!53933)))

(assert (=> b!4777969 false))

(declare-fun lt!1940994 () Unit!138992)

(declare-fun forallContained!4024 (List!54057 Int K!15492) Unit!138992)

(assert (=> b!4777969 (= lt!1940994 (forallContained!4024 (getKeysList!1029 (t!361503 (toList!6682 (extractMap!2328 (toList!6681 lm!2709))))) lambda!227312 (_1!31480 (h!60343 (toList!6682 (extractMap!2328 (toList!6681 lm!2709)))))))))

(declare-fun Unit!139003 () Unit!138992)

(assert (=> b!4777969 (= e!2982795 Unit!139003)))

(declare-fun b!4777970 () Bool)

(declare-fun e!2982794 () Unit!138992)

(declare-fun Unit!139004 () Unit!138992)

(assert (=> b!4777970 (= e!2982794 Unit!139004)))

(declare-fun res!2028068 () Bool)

(assert (=> b!4777971 (=> (not res!2028068) (not e!2982793))))

(declare-fun forall!12079 (List!54057 Int) Bool)

(assert (=> b!4777971 (= res!2028068 (forall!12079 lt!1940993 lambda!227314))))

(assert (=> b!4777972 (= e!2982796 (Cons!53933 (_1!31480 (h!60343 (toList!6682 (extractMap!2328 (toList!6681 lm!2709))))) (getKeysList!1029 (t!361503 (toList!6682 (extractMap!2328 (toList!6681 lm!2709)))))))))

(declare-fun c!814602 () Bool)

(assert (=> b!4777972 (= c!814602 (containsKey!3769 (t!361503 (toList!6682 (extractMap!2328 (toList!6681 lm!2709)))) (_1!31480 (h!60343 (toList!6682 (extractMap!2328 (toList!6681 lm!2709)))))))))

(declare-fun lt!1940995 () Unit!138992)

(assert (=> b!4777972 (= lt!1940995 e!2982794)))

(declare-fun c!814601 () Bool)

(assert (=> b!4777972 (= c!814601 (contains!17429 (getKeysList!1029 (t!361503 (toList!6682 (extractMap!2328 (toList!6681 lm!2709))))) (_1!31480 (h!60343 (toList!6682 (extractMap!2328 (toList!6681 lm!2709)))))))))

(declare-fun lt!1940998 () Unit!138992)

(assert (=> b!4777972 (= lt!1940998 e!2982795)))

(declare-fun lt!1940996 () List!54057)

(assert (=> b!4777972 (= lt!1940996 (getKeysList!1029 (t!361503 (toList!6682 (extractMap!2328 (toList!6681 lm!2709))))))))

(declare-fun lt!1940992 () Unit!138992)

(declare-fun lemmaForallContainsAddHeadPreserves!310 (List!54053 List!54057 tuple2!56372) Unit!138992)

(assert (=> b!4777972 (= lt!1940992 (lemmaForallContainsAddHeadPreserves!310 (t!361503 (toList!6682 (extractMap!2328 (toList!6681 lm!2709)))) lt!1940996 (h!60343 (toList!6682 (extractMap!2328 (toList!6681 lm!2709))))))))

(assert (=> b!4777972 (forall!12079 lt!1940996 lambda!227313)))

(declare-fun lt!1940997 () Unit!138992)

(assert (=> b!4777972 (= lt!1940997 lt!1940992)))

(declare-fun b!4777973 () Bool)

(declare-fun res!2028067 () Bool)

(assert (=> b!4777973 (=> (not res!2028067) (not e!2982793))))

(declare-fun length!640 (List!54057) Int)

(declare-fun length!641 (List!54053) Int)

(assert (=> b!4777973 (= res!2028067 (= (length!640 lt!1940993) (length!641 (toList!6682 (extractMap!2328 (toList!6681 lm!2709))))))))

(declare-fun b!4777974 () Bool)

(declare-fun lambda!227315 () Int)

(declare-fun content!9626 (List!54057) (Set K!15492))

(declare-fun map!12154 (List!54053 Int) List!54057)

(assert (=> b!4777974 (= e!2982793 (= (content!9626 lt!1940993) (content!9626 (map!12154 (toList!6682 (extractMap!2328 (toList!6681 lm!2709))) lambda!227315))))))

(declare-fun b!4777975 () Bool)

(assert (=> b!4777975 false))

(declare-fun Unit!139005 () Unit!138992)

(assert (=> b!4777975 (= e!2982794 Unit!139005)))

(assert (= (and d!1526948 c!814600) b!4777972))

(assert (= (and d!1526948 (not c!814600)) b!4777968))

(assert (= (and b!4777972 c!814602) b!4777975))

(assert (= (and b!4777972 (not c!814602)) b!4777970))

(assert (= (and b!4777972 c!814601) b!4777969))

(assert (= (and b!4777972 (not c!814601)) b!4777967))

(assert (= (and d!1526948 res!2028069) b!4777973))

(assert (= (and b!4777973 res!2028067) b!4777971))

(assert (= (and b!4777971 res!2028068) b!4777974))

(declare-fun m!5753662 () Bool)

(assert (=> b!4777974 m!5753662))

(declare-fun m!5753664 () Bool)

(assert (=> b!4777974 m!5753664))

(assert (=> b!4777974 m!5753664))

(declare-fun m!5753666 () Bool)

(assert (=> b!4777974 m!5753666))

(declare-fun m!5753668 () Bool)

(assert (=> b!4777973 m!5753668))

(declare-fun m!5753670 () Bool)

(assert (=> b!4777973 m!5753670))

(declare-fun m!5753672 () Bool)

(assert (=> b!4777969 m!5753672))

(assert (=> b!4777969 m!5753672))

(declare-fun m!5753674 () Bool)

(assert (=> b!4777969 m!5753674))

(declare-fun m!5753676 () Bool)

(assert (=> b!4777971 m!5753676))

(declare-fun m!5753678 () Bool)

(assert (=> b!4777972 m!5753678))

(assert (=> b!4777972 m!5753672))

(declare-fun m!5753680 () Bool)

(assert (=> b!4777972 m!5753680))

(declare-fun m!5753682 () Bool)

(assert (=> b!4777972 m!5753682))

(assert (=> b!4777972 m!5753672))

(declare-fun m!5753684 () Bool)

(assert (=> b!4777972 m!5753684))

(declare-fun m!5753686 () Bool)

(assert (=> d!1526948 m!5753686))

(declare-fun m!5753688 () Bool)

(assert (=> d!1526948 m!5753688))

(assert (=> b!4777853 d!1526948))

(declare-fun d!1526950 () Bool)

(declare-fun res!2028071 () Bool)

(declare-fun e!2982798 () Bool)

(assert (=> d!1526950 (=> res!2028071 e!2982798)))

(declare-fun e!2982797 () Bool)

(assert (=> d!1526950 (= res!2028071 e!2982797)))

(declare-fun res!2028072 () Bool)

(assert (=> d!1526950 (=> (not res!2028072) (not e!2982797))))

(assert (=> d!1526950 (= res!2028072 (is-Cons!53930 (t!361504 (toList!6681 lm!2709))))))

(assert (=> d!1526950 (= (containsKeyBiggerList!457 (t!361504 (toList!6681 lm!2709)) key!6641) e!2982798)))

(declare-fun b!4777978 () Bool)

(assert (=> b!4777978 (= e!2982797 (containsKey!3768 (_2!31481 (h!60344 (t!361504 (toList!6681 lm!2709)))) key!6641))))

(declare-fun b!4777979 () Bool)

(declare-fun e!2982799 () Bool)

(assert (=> b!4777979 (= e!2982798 e!2982799)))

(declare-fun res!2028070 () Bool)

(assert (=> b!4777979 (=> (not res!2028070) (not e!2982799))))

(assert (=> b!4777979 (= res!2028070 (is-Cons!53930 (t!361504 (toList!6681 lm!2709))))))

(declare-fun b!4777980 () Bool)

(assert (=> b!4777980 (= e!2982799 (containsKeyBiggerList!457 (t!361504 (t!361504 (toList!6681 lm!2709))) key!6641))))

(assert (= (and d!1526950 res!2028072) b!4777978))

(assert (= (and d!1526950 (not res!2028071)) b!4777979))

(assert (= (and b!4777979 res!2028070) b!4777980))

(declare-fun m!5753690 () Bool)

(assert (=> b!4777978 m!5753690))

(declare-fun m!5753692 () Bool)

(assert (=> b!4777980 m!5753692))

(assert (=> b!4777805 d!1526950))

(declare-fun d!1526952 () Bool)

(declare-fun res!2028077 () Bool)

(declare-fun e!2982804 () Bool)

(assert (=> d!1526952 (=> res!2028077 e!2982804)))

(assert (=> d!1526952 (= res!2028077 (and (is-Cons!53930 (toList!6681 lm!2709)) (= (_1!31481 (h!60344 (toList!6681 lm!2709))) lt!1940876)))))

(assert (=> d!1526952 (= (containsKey!3770 (toList!6681 lm!2709) lt!1940876) e!2982804)))

(declare-fun b!4777985 () Bool)

(declare-fun e!2982805 () Bool)

(assert (=> b!4777985 (= e!2982804 e!2982805)))

(declare-fun res!2028078 () Bool)

(assert (=> b!4777985 (=> (not res!2028078) (not e!2982805))))

(assert (=> b!4777985 (= res!2028078 (and (or (not (is-Cons!53930 (toList!6681 lm!2709))) (bvsle (_1!31481 (h!60344 (toList!6681 lm!2709))) lt!1940876)) (is-Cons!53930 (toList!6681 lm!2709)) (bvslt (_1!31481 (h!60344 (toList!6681 lm!2709))) lt!1940876)))))

(declare-fun b!4777986 () Bool)

(assert (=> b!4777986 (= e!2982805 (containsKey!3770 (t!361504 (toList!6681 lm!2709)) lt!1940876))))

(assert (= (and d!1526952 (not res!2028077)) b!4777985))

(assert (= (and b!4777985 res!2028078) b!4777986))

(declare-fun m!5753694 () Bool)

(assert (=> b!4777986 m!5753694))

(assert (=> d!1526918 d!1526952))

(declare-fun bs!1150992 () Bool)

(declare-fun b!4777994 () Bool)

(assert (= bs!1150992 (and b!4777994 b!4777969)))

(declare-fun lambda!227320 () Int)

(assert (=> bs!1150992 (= (= (toList!6682 (extractMap!2328 (toList!6681 lm!2709))) (t!361503 (toList!6682 (extractMap!2328 (toList!6681 lm!2709))))) (= lambda!227320 lambda!227312))))

(declare-fun bs!1150993 () Bool)

(assert (= bs!1150993 (and b!4777994 b!4777972)))

(assert (=> bs!1150993 (= (= (toList!6682 (extractMap!2328 (toList!6681 lm!2709))) (Cons!53929 (h!60343 (toList!6682 (extractMap!2328 (toList!6681 lm!2709)))) (t!361503 (toList!6682 (extractMap!2328 (toList!6681 lm!2709)))))) (= lambda!227320 lambda!227313))))

(declare-fun bs!1150994 () Bool)

(assert (= bs!1150994 (and b!4777994 b!4777971)))

(assert (=> bs!1150994 (= lambda!227320 lambda!227314)))

(assert (=> b!4777994 true))

(declare-fun bs!1150995 () Bool)

(declare-fun b!4777995 () Bool)

(assert (= bs!1150995 (and b!4777995 b!4777974)))

(declare-fun lambda!227321 () Int)

(assert (=> bs!1150995 (= lambda!227321 lambda!227315)))

(declare-fun d!1526954 () Bool)

(declare-fun e!2982808 () Bool)

(assert (=> d!1526954 e!2982808))

(declare-fun res!2028087 () Bool)

(assert (=> d!1526954 (=> (not res!2028087) (not e!2982808))))

(declare-fun lt!1941001 () List!54057)

(assert (=> d!1526954 (= res!2028087 (noDuplicate!892 lt!1941001))))

(assert (=> d!1526954 (= lt!1941001 (getKeysList!1029 (toList!6682 (extractMap!2328 (toList!6681 lm!2709)))))))

(assert (=> d!1526954 (= (keys!19627 (extractMap!2328 (toList!6681 lm!2709))) lt!1941001)))

(declare-fun b!4777993 () Bool)

(declare-fun res!2028086 () Bool)

(assert (=> b!4777993 (=> (not res!2028086) (not e!2982808))))

(assert (=> b!4777993 (= res!2028086 (= (length!640 lt!1941001) (length!641 (toList!6682 (extractMap!2328 (toList!6681 lm!2709))))))))

(declare-fun res!2028085 () Bool)

(assert (=> b!4777994 (=> (not res!2028085) (not e!2982808))))

(assert (=> b!4777994 (= res!2028085 (forall!12079 lt!1941001 lambda!227320))))

(assert (=> b!4777995 (= e!2982808 (= (content!9626 lt!1941001) (content!9626 (map!12154 (toList!6682 (extractMap!2328 (toList!6681 lm!2709))) lambda!227321))))))

(assert (= (and d!1526954 res!2028087) b!4777993))

(assert (= (and b!4777993 res!2028086) b!4777994))

(assert (= (and b!4777994 res!2028085) b!4777995))

(declare-fun m!5753696 () Bool)

(assert (=> d!1526954 m!5753696))

(assert (=> d!1526954 m!5753572))

(declare-fun m!5753698 () Bool)

(assert (=> b!4777993 m!5753698))

(assert (=> b!4777993 m!5753670))

(declare-fun m!5753700 () Bool)

(assert (=> b!4777994 m!5753700))

(declare-fun m!5753702 () Bool)

(assert (=> b!4777995 m!5753702))

(declare-fun m!5753704 () Bool)

(assert (=> b!4777995 m!5753704))

(assert (=> b!4777995 m!5753704))

(declare-fun m!5753706 () Bool)

(assert (=> b!4777995 m!5753706))

(assert (=> b!4777855 d!1526954))

(declare-fun d!1526956 () Bool)

(declare-fun lt!1941004 () Bool)

(assert (=> d!1526956 (= lt!1941004 (set.member key!6641 (content!9626 e!2982726)))))

(declare-fun e!2982814 () Bool)

(assert (=> d!1526956 (= lt!1941004 e!2982814)))

(declare-fun res!2028092 () Bool)

(assert (=> d!1526956 (=> (not res!2028092) (not e!2982814))))

(assert (=> d!1526956 (= res!2028092 (is-Cons!53933 e!2982726))))

(assert (=> d!1526956 (= (contains!17429 e!2982726 key!6641) lt!1941004)))

(declare-fun b!4778002 () Bool)

(declare-fun e!2982813 () Bool)

(assert (=> b!4778002 (= e!2982814 e!2982813)))

(declare-fun res!2028093 () Bool)

(assert (=> b!4778002 (=> res!2028093 e!2982813)))

(assert (=> b!4778002 (= res!2028093 (= (h!60347 e!2982726) key!6641))))

(declare-fun b!4778003 () Bool)

(assert (=> b!4778003 (= e!2982813 (contains!17429 (t!361507 e!2982726) key!6641))))

(assert (= (and d!1526956 res!2028092) b!4778002))

(assert (= (and b!4778002 (not res!2028093)) b!4778003))

(declare-fun m!5753708 () Bool)

(assert (=> d!1526956 m!5753708))

(declare-fun m!5753710 () Bool)

(assert (=> d!1526956 m!5753710))

(declare-fun m!5753712 () Bool)

(assert (=> b!4778003 m!5753712))

(assert (=> bm!334610 d!1526956))

(declare-fun d!1526958 () Bool)

(declare-fun res!2028098 () Bool)

(declare-fun e!2982819 () Bool)

(assert (=> d!1526958 (=> res!2028098 e!2982819)))

(assert (=> d!1526958 (= res!2028098 (or (is-Nil!53930 (toList!6681 lm!2709)) (is-Nil!53930 (t!361504 (toList!6681 lm!2709)))))))

(assert (=> d!1526958 (= (isStrictlySorted!836 (toList!6681 lm!2709)) e!2982819)))

(declare-fun b!4778008 () Bool)

(declare-fun e!2982820 () Bool)

(assert (=> b!4778008 (= e!2982819 e!2982820)))

(declare-fun res!2028099 () Bool)

(assert (=> b!4778008 (=> (not res!2028099) (not e!2982820))))

(assert (=> b!4778008 (= res!2028099 (bvslt (_1!31481 (h!60344 (toList!6681 lm!2709))) (_1!31481 (h!60344 (t!361504 (toList!6681 lm!2709))))))))

(declare-fun b!4778009 () Bool)

(assert (=> b!4778009 (= e!2982820 (isStrictlySorted!836 (t!361504 (toList!6681 lm!2709))))))

(assert (= (and d!1526958 (not res!2028098)) b!4778008))

(assert (= (and b!4778008 res!2028099) b!4778009))

(declare-fun m!5753714 () Bool)

(assert (=> b!4778009 m!5753714))

(assert (=> d!1526900 d!1526958))

(declare-fun d!1526960 () Bool)

(declare-fun lt!1941005 () Bool)

(assert (=> d!1526960 (= lt!1941005 (set.member key!6641 (content!9626 (keys!19627 (extractMap!2328 (toList!6681 lm!2709))))))))

(declare-fun e!2982822 () Bool)

(assert (=> d!1526960 (= lt!1941005 e!2982822)))

(declare-fun res!2028100 () Bool)

(assert (=> d!1526960 (=> (not res!2028100) (not e!2982822))))

(assert (=> d!1526960 (= res!2028100 (is-Cons!53933 (keys!19627 (extractMap!2328 (toList!6681 lm!2709)))))))

(assert (=> d!1526960 (= (contains!17429 (keys!19627 (extractMap!2328 (toList!6681 lm!2709))) key!6641) lt!1941005)))

(declare-fun b!4778010 () Bool)

(declare-fun e!2982821 () Bool)

(assert (=> b!4778010 (= e!2982822 e!2982821)))

(declare-fun res!2028101 () Bool)

(assert (=> b!4778010 (=> res!2028101 e!2982821)))

(assert (=> b!4778010 (= res!2028101 (= (h!60347 (keys!19627 (extractMap!2328 (toList!6681 lm!2709)))) key!6641))))

(declare-fun b!4778011 () Bool)

(assert (=> b!4778011 (= e!2982821 (contains!17429 (t!361507 (keys!19627 (extractMap!2328 (toList!6681 lm!2709)))) key!6641))))

(assert (= (and d!1526960 res!2028100) b!4778010))

(assert (= (and b!4778010 (not res!2028101)) b!4778011))

(assert (=> d!1526960 m!5753558))

(declare-fun m!5753716 () Bool)

(assert (=> d!1526960 m!5753716))

(declare-fun m!5753718 () Bool)

(assert (=> d!1526960 m!5753718))

(declare-fun m!5753720 () Bool)

(assert (=> b!4778011 m!5753720))

(assert (=> b!4777848 d!1526960))

(assert (=> b!4777848 d!1526954))

(declare-fun d!1526962 () Bool)

(assert (=> d!1526962 (isDefined!10032 (getValueByKey!2259 (toList!6682 (extractMap!2328 (toList!6681 lm!2709))) key!6641))))

(declare-fun lt!1941008 () Unit!138992)

(declare-fun choose!34182 (List!54053 K!15492) Unit!138992)

(assert (=> d!1526962 (= lt!1941008 (choose!34182 (toList!6682 (extractMap!2328 (toList!6681 lm!2709))) key!6641))))

(assert (=> d!1526962 (invariantList!1685 (toList!6682 (extractMap!2328 (toList!6681 lm!2709))))))

(assert (=> d!1526962 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2051 (toList!6682 (extractMap!2328 (toList!6681 lm!2709))) key!6641) lt!1941008)))

(declare-fun bs!1150996 () Bool)

(assert (= bs!1150996 d!1526962))

(assert (=> bs!1150996 m!5753564))

(assert (=> bs!1150996 m!5753564))

(assert (=> bs!1150996 m!5753566))

(declare-fun m!5753722 () Bool)

(assert (=> bs!1150996 m!5753722))

(assert (=> bs!1150996 m!5753688))

(assert (=> b!4777849 d!1526962))

(declare-fun d!1526964 () Bool)

(declare-fun isEmpty!29333 (Option!12890) Bool)

(assert (=> d!1526964 (= (isDefined!10032 (getValueByKey!2259 (toList!6682 (extractMap!2328 (toList!6681 lm!2709))) key!6641)) (not (isEmpty!29333 (getValueByKey!2259 (toList!6682 (extractMap!2328 (toList!6681 lm!2709))) key!6641))))))

(declare-fun bs!1150997 () Bool)

(assert (= bs!1150997 d!1526964))

(assert (=> bs!1150997 m!5753564))

(declare-fun m!5753724 () Bool)

(assert (=> bs!1150997 m!5753724))

(assert (=> b!4777849 d!1526964))

(declare-fun b!4778022 () Bool)

(declare-fun e!2982828 () Option!12890)

(assert (=> b!4778022 (= e!2982828 (getValueByKey!2259 (t!361503 (toList!6682 (extractMap!2328 (toList!6681 lm!2709)))) key!6641))))

(declare-fun b!4778023 () Bool)

(assert (=> b!4778023 (= e!2982828 None!12889)))

(declare-fun b!4778020 () Bool)

(declare-fun e!2982827 () Option!12890)

(assert (=> b!4778020 (= e!2982827 (Some!12889 (_2!31480 (h!60343 (toList!6682 (extractMap!2328 (toList!6681 lm!2709)))))))))

(declare-fun d!1526966 () Bool)

(declare-fun c!814607 () Bool)

(assert (=> d!1526966 (= c!814607 (and (is-Cons!53929 (toList!6682 (extractMap!2328 (toList!6681 lm!2709)))) (= (_1!31480 (h!60343 (toList!6682 (extractMap!2328 (toList!6681 lm!2709))))) key!6641)))))

(assert (=> d!1526966 (= (getValueByKey!2259 (toList!6682 (extractMap!2328 (toList!6681 lm!2709))) key!6641) e!2982827)))

(declare-fun b!4778021 () Bool)

(assert (=> b!4778021 (= e!2982827 e!2982828)))

(declare-fun c!814608 () Bool)

(assert (=> b!4778021 (= c!814608 (and (is-Cons!53929 (toList!6682 (extractMap!2328 (toList!6681 lm!2709)))) (not (= (_1!31480 (h!60343 (toList!6682 (extractMap!2328 (toList!6681 lm!2709))))) key!6641))))))

(assert (= (and d!1526966 c!814607) b!4778020))

(assert (= (and d!1526966 (not c!814607)) b!4778021))

(assert (= (and b!4778021 c!814608) b!4778022))

(assert (= (and b!4778021 (not c!814608)) b!4778023))

(declare-fun m!5753726 () Bool)

(assert (=> b!4778022 m!5753726))

(assert (=> b!4777849 d!1526966))

(declare-fun d!1526968 () Bool)

(assert (=> d!1526968 (contains!17429 (getKeysList!1029 (toList!6682 (extractMap!2328 (toList!6681 lm!2709)))) key!6641)))

(declare-fun lt!1941011 () Unit!138992)

(declare-fun choose!34183 (List!54053 K!15492) Unit!138992)

(assert (=> d!1526968 (= lt!1941011 (choose!34183 (toList!6682 (extractMap!2328 (toList!6681 lm!2709))) key!6641))))

(assert (=> d!1526968 (invariantList!1685 (toList!6682 (extractMap!2328 (toList!6681 lm!2709))))))

(assert (=> d!1526968 (= (lemmaInListThenGetKeysListContains!1024 (toList!6682 (extractMap!2328 (toList!6681 lm!2709))) key!6641) lt!1941011)))

(declare-fun bs!1150998 () Bool)

(assert (= bs!1150998 d!1526968))

(assert (=> bs!1150998 m!5753572))

(assert (=> bs!1150998 m!5753572))

(declare-fun m!5753728 () Bool)

(assert (=> bs!1150998 m!5753728))

(declare-fun m!5753730 () Bool)

(assert (=> bs!1150998 m!5753730))

(assert (=> bs!1150998 m!5753688))

(assert (=> b!4777849 d!1526968))

(declare-fun d!1526970 () Bool)

(declare-fun res!2028106 () Bool)

(declare-fun e!2982833 () Bool)

(assert (=> d!1526970 (=> res!2028106 e!2982833)))

(assert (=> d!1526970 (= res!2028106 (and (is-Cons!53929 (toList!6682 (extractMap!2328 (toList!6681 lm!2709)))) (= (_1!31480 (h!60343 (toList!6682 (extractMap!2328 (toList!6681 lm!2709))))) key!6641)))))

(assert (=> d!1526970 (= (containsKey!3769 (toList!6682 (extractMap!2328 (toList!6681 lm!2709))) key!6641) e!2982833)))

(declare-fun b!4778028 () Bool)

(declare-fun e!2982834 () Bool)

(assert (=> b!4778028 (= e!2982833 e!2982834)))

(declare-fun res!2028107 () Bool)

(assert (=> b!4778028 (=> (not res!2028107) (not e!2982834))))

(assert (=> b!4778028 (= res!2028107 (is-Cons!53929 (toList!6682 (extractMap!2328 (toList!6681 lm!2709)))))))

(declare-fun b!4778029 () Bool)

(assert (=> b!4778029 (= e!2982834 (containsKey!3769 (t!361503 (toList!6682 (extractMap!2328 (toList!6681 lm!2709)))) key!6641))))

(assert (= (and d!1526970 (not res!2028106)) b!4778028))

(assert (= (and b!4778028 res!2028107) b!4778029))

(declare-fun m!5753732 () Bool)

(assert (=> b!4778029 m!5753732))

(assert (=> b!4777850 d!1526970))

(declare-fun d!1526972 () Bool)

(assert (=> d!1526972 (containsKey!3769 (toList!6682 (extractMap!2328 (toList!6681 lm!2709))) key!6641)))

(declare-fun lt!1941014 () Unit!138992)

(declare-fun choose!34184 (List!54053 K!15492) Unit!138992)

(assert (=> d!1526972 (= lt!1941014 (choose!34184 (toList!6682 (extractMap!2328 (toList!6681 lm!2709))) key!6641))))

(assert (=> d!1526972 (invariantList!1685 (toList!6682 (extractMap!2328 (toList!6681 lm!2709))))))

(assert (=> d!1526972 (= (lemmaInGetKeysListThenContainsKey!1028 (toList!6682 (extractMap!2328 (toList!6681 lm!2709))) key!6641) lt!1941014)))

(declare-fun bs!1150999 () Bool)

(assert (= bs!1150999 d!1526972))

(assert (=> bs!1150999 m!5753556))

(declare-fun m!5753734 () Bool)

(assert (=> bs!1150999 m!5753734))

(assert (=> bs!1150999 m!5753688))

(assert (=> b!4777850 d!1526972))

(declare-fun d!1526974 () Bool)

(declare-fun res!2028112 () Bool)

(declare-fun e!2982839 () Bool)

(assert (=> d!1526974 (=> res!2028112 e!2982839)))

(assert (=> d!1526974 (= res!2028112 (not (is-Cons!53929 (_2!31481 (h!60344 (toList!6681 lm!2709))))))))

(assert (=> d!1526974 (= (noDuplicateKeys!2282 (_2!31481 (h!60344 (toList!6681 lm!2709)))) e!2982839)))

(declare-fun b!4778034 () Bool)

(declare-fun e!2982840 () Bool)

(assert (=> b!4778034 (= e!2982839 e!2982840)))

(declare-fun res!2028113 () Bool)

(assert (=> b!4778034 (=> (not res!2028113) (not e!2982840))))

(assert (=> b!4778034 (= res!2028113 (not (containsKey!3768 (t!361503 (_2!31481 (h!60344 (toList!6681 lm!2709)))) (_1!31480 (h!60343 (_2!31481 (h!60344 (toList!6681 lm!2709))))))))))

(declare-fun b!4778035 () Bool)

(assert (=> b!4778035 (= e!2982840 (noDuplicateKeys!2282 (t!361503 (_2!31481 (h!60344 (toList!6681 lm!2709))))))))

(assert (= (and d!1526974 (not res!2028112)) b!4778034))

(assert (= (and b!4778034 res!2028113) b!4778035))

(declare-fun m!5753736 () Bool)

(assert (=> b!4778034 m!5753736))

(declare-fun m!5753738 () Bool)

(assert (=> b!4778035 m!5753738))

(assert (=> bs!1150974 d!1526974))

(assert (=> d!1526906 d!1526912))

(assert (=> d!1526906 d!1526920))

(declare-fun d!1526976 () Bool)

(assert (=> d!1526976 (contains!17426 (extractMap!2328 (toList!6681 lm!2709)) key!6641)))

(assert (=> d!1526976 true))

(declare-fun _$34!901 () Unit!138992)

(assert (=> d!1526976 (= (choose!34178 lm!2709 key!6641 hashF!1687) _$34!901)))

(declare-fun bs!1151000 () Bool)

(assert (= bs!1151000 d!1526976))

(assert (=> bs!1151000 m!5753490))

(assert (=> bs!1151000 m!5753490))

(assert (=> bs!1151000 m!5753498))

(assert (=> d!1526906 d!1526976))

(declare-fun d!1526978 () Bool)

(declare-fun res!2028114 () Bool)

(declare-fun e!2982841 () Bool)

(assert (=> d!1526978 (=> res!2028114 e!2982841)))

(assert (=> d!1526978 (= res!2028114 (is-Nil!53930 (toList!6681 lm!2709)))))

(assert (=> d!1526978 (= (forall!12077 (toList!6681 lm!2709) lambda!227282) e!2982841)))

(declare-fun b!4778036 () Bool)

(declare-fun e!2982842 () Bool)

(assert (=> b!4778036 (= e!2982841 e!2982842)))

(declare-fun res!2028115 () Bool)

(assert (=> b!4778036 (=> (not res!2028115) (not e!2982842))))

(assert (=> b!4778036 (= res!2028115 (dynLambda!21996 lambda!227282 (h!60344 (toList!6681 lm!2709))))))

(declare-fun b!4778037 () Bool)

(assert (=> b!4778037 (= e!2982842 (forall!12077 (t!361504 (toList!6681 lm!2709)) lambda!227282))))

(assert (= (and d!1526978 (not res!2028114)) b!4778036))

(assert (= (and b!4778036 res!2028115) b!4778037))

(declare-fun b_lambda!185143 () Bool)

(assert (=> (not b_lambda!185143) (not b!4778036)))

(declare-fun m!5753740 () Bool)

(assert (=> b!4778036 m!5753740))

(declare-fun m!5753742 () Bool)

(assert (=> b!4778037 m!5753742))

(assert (=> d!1526906 d!1526978))

(assert (=> b!4777851 d!1526964))

(assert (=> b!4777851 d!1526966))

(assert (=> b!4777852 d!1526960))

(assert (=> b!4777852 d!1526954))

(declare-fun d!1526980 () Bool)

(declare-fun res!2028120 () Bool)

(declare-fun e!2982847 () Bool)

(assert (=> d!1526980 (=> res!2028120 e!2982847)))

(assert (=> d!1526980 (= res!2028120 (and (is-Cons!53929 (_2!31481 (h!60344 (toList!6681 lm!2709)))) (= (_1!31480 (h!60343 (_2!31481 (h!60344 (toList!6681 lm!2709))))) key!6641)))))

(assert (=> d!1526980 (= (containsKey!3768 (_2!31481 (h!60344 (toList!6681 lm!2709))) key!6641) e!2982847)))

(declare-fun b!4778042 () Bool)

(declare-fun e!2982848 () Bool)

(assert (=> b!4778042 (= e!2982847 e!2982848)))

(declare-fun res!2028121 () Bool)

(assert (=> b!4778042 (=> (not res!2028121) (not e!2982848))))

(assert (=> b!4778042 (= res!2028121 (is-Cons!53929 (_2!31481 (h!60344 (toList!6681 lm!2709)))))))

(declare-fun b!4778043 () Bool)

(assert (=> b!4778043 (= e!2982848 (containsKey!3768 (t!361503 (_2!31481 (h!60344 (toList!6681 lm!2709)))) key!6641))))

(assert (= (and d!1526980 (not res!2028120)) b!4778042))

(assert (= (and b!4778042 res!2028121) b!4778043))

(declare-fun m!5753744 () Bool)

(assert (=> b!4778043 m!5753744))

(assert (=> b!4777803 d!1526980))

(declare-fun d!1526982 () Bool)

(declare-fun res!2028122 () Bool)

(declare-fun e!2982849 () Bool)

(assert (=> d!1526982 (=> res!2028122 e!2982849)))

(assert (=> d!1526982 (= res!2028122 (is-Nil!53930 (toList!6681 lm!2709)))))

(assert (=> d!1526982 (= (forall!12077 (toList!6681 lm!2709) lambda!227294) e!2982849)))

(declare-fun b!4778044 () Bool)

(declare-fun e!2982850 () Bool)

(assert (=> b!4778044 (= e!2982849 e!2982850)))

(declare-fun res!2028123 () Bool)

(assert (=> b!4778044 (=> (not res!2028123) (not e!2982850))))

(assert (=> b!4778044 (= res!2028123 (dynLambda!21996 lambda!227294 (h!60344 (toList!6681 lm!2709))))))

(declare-fun b!4778045 () Bool)

(assert (=> b!4778045 (= e!2982850 (forall!12077 (t!361504 (toList!6681 lm!2709)) lambda!227294))))

(assert (= (and d!1526982 (not res!2028122)) b!4778044))

(assert (= (and b!4778044 res!2028123) b!4778045))

(declare-fun b_lambda!185145 () Bool)

(assert (=> (not b_lambda!185145) (not b!4778044)))

(declare-fun m!5753746 () Bool)

(assert (=> b!4778044 m!5753746))

(declare-fun m!5753748 () Bool)

(assert (=> b!4778045 m!5753748))

(assert (=> d!1526928 d!1526982))

(declare-fun b!4778089 () Bool)

(assert (=> b!4778089 true))

(declare-fun bs!1151003 () Bool)

(declare-fun b!4778085 () Bool)

(assert (= bs!1151003 (and b!4778085 b!4778089)))

(declare-fun lambda!227357 () Int)

(declare-fun lambda!227356 () Int)

(assert (=> bs!1151003 (= lambda!227357 lambda!227356)))

(assert (=> b!4778085 true))

(declare-fun lt!1941083 () ListMap!6153)

(declare-fun lambda!227358 () Int)

(assert (=> bs!1151003 (= (= lt!1941083 (extractMap!2328 (t!361504 (toList!6681 lm!2709)))) (= lambda!227358 lambda!227356))))

(assert (=> b!4778085 (= (= lt!1941083 (extractMap!2328 (t!361504 (toList!6681 lm!2709)))) (= lambda!227358 lambda!227357))))

(assert (=> b!4778085 true))

(declare-fun bs!1151005 () Bool)

(declare-fun d!1526984 () Bool)

(assert (= bs!1151005 (and d!1526984 b!4778089)))

(declare-fun lt!1941070 () ListMap!6153)

(declare-fun lambda!227359 () Int)

(assert (=> bs!1151005 (= (= lt!1941070 (extractMap!2328 (t!361504 (toList!6681 lm!2709)))) (= lambda!227359 lambda!227356))))

(declare-fun bs!1151006 () Bool)

(assert (= bs!1151006 (and d!1526984 b!4778085)))

(assert (=> bs!1151006 (= (= lt!1941070 (extractMap!2328 (t!361504 (toList!6681 lm!2709)))) (= lambda!227359 lambda!227357))))

(assert (=> bs!1151006 (= (= lt!1941070 lt!1941083) (= lambda!227359 lambda!227358))))

(assert (=> d!1526984 true))

(declare-fun e!2982874 () ListMap!6153)

(assert (=> b!4778085 (= e!2982874 lt!1941083)))

(declare-fun lt!1941084 () ListMap!6153)

(declare-fun +!2460 (ListMap!6153 tuple2!56372) ListMap!6153)

(assert (=> b!4778085 (= lt!1941084 (+!2460 (extractMap!2328 (t!361504 (toList!6681 lm!2709))) (h!60343 (_2!31481 (h!60344 (toList!6681 lm!2709))))))))

(assert (=> b!4778085 (= lt!1941083 (addToMapMapFromBucket!1650 (t!361503 (_2!31481 (h!60344 (toList!6681 lm!2709)))) (+!2460 (extractMap!2328 (t!361504 (toList!6681 lm!2709))) (h!60343 (_2!31481 (h!60344 (toList!6681 lm!2709)))))))))

(declare-fun lt!1941078 () Unit!138992)

(declare-fun call!334625 () Unit!138992)

(assert (=> b!4778085 (= lt!1941078 call!334625)))

(declare-fun forall!12080 (List!54053 Int) Bool)

(assert (=> b!4778085 (forall!12080 (toList!6682 (extractMap!2328 (t!361504 (toList!6681 lm!2709)))) lambda!227357)))

(declare-fun lt!1941071 () Unit!138992)

(assert (=> b!4778085 (= lt!1941071 lt!1941078)))

(assert (=> b!4778085 (forall!12080 (toList!6682 lt!1941084) lambda!227358)))

(declare-fun lt!1941079 () Unit!138992)

(declare-fun Unit!139006 () Unit!138992)

(assert (=> b!4778085 (= lt!1941079 Unit!139006)))

(declare-fun call!334627 () Bool)

(assert (=> b!4778085 call!334627))

(declare-fun lt!1941076 () Unit!138992)

(declare-fun Unit!139007 () Unit!138992)

(assert (=> b!4778085 (= lt!1941076 Unit!139007)))

(declare-fun lt!1941072 () Unit!138992)

(declare-fun Unit!139008 () Unit!138992)

(assert (=> b!4778085 (= lt!1941072 Unit!139008)))

(declare-fun lt!1941067 () Unit!138992)

(declare-fun forallContained!4025 (List!54053 Int tuple2!56372) Unit!138992)

(assert (=> b!4778085 (= lt!1941067 (forallContained!4025 (toList!6682 lt!1941084) lambda!227358 (h!60343 (_2!31481 (h!60344 (toList!6681 lm!2709))))))))

(assert (=> b!4778085 (contains!17426 lt!1941084 (_1!31480 (h!60343 (_2!31481 (h!60344 (toList!6681 lm!2709))))))))

(declare-fun lt!1941069 () Unit!138992)

(declare-fun Unit!139009 () Unit!138992)

(assert (=> b!4778085 (= lt!1941069 Unit!139009)))

(assert (=> b!4778085 (contains!17426 lt!1941083 (_1!31480 (h!60343 (_2!31481 (h!60344 (toList!6681 lm!2709))))))))

(declare-fun lt!1941085 () Unit!138992)

(declare-fun Unit!139010 () Unit!138992)

(assert (=> b!4778085 (= lt!1941085 Unit!139010)))

(assert (=> b!4778085 (forall!12080 (_2!31481 (h!60344 (toList!6681 lm!2709))) lambda!227358)))

(declare-fun lt!1941081 () Unit!138992)

(declare-fun Unit!139011 () Unit!138992)

(assert (=> b!4778085 (= lt!1941081 Unit!139011)))

(declare-fun call!334626 () Bool)

(assert (=> b!4778085 call!334626))

(declare-fun lt!1941075 () Unit!138992)

(declare-fun Unit!139012 () Unit!138992)

(assert (=> b!4778085 (= lt!1941075 Unit!139012)))

(declare-fun lt!1941080 () Unit!138992)

(declare-fun Unit!139013 () Unit!138992)

(assert (=> b!4778085 (= lt!1941080 Unit!139013)))

(declare-fun lt!1941077 () Unit!138992)

(declare-fun addForallContainsKeyThenBeforeAdding!915 (ListMap!6153 ListMap!6153 K!15492 V!15738) Unit!138992)

(assert (=> b!4778085 (= lt!1941077 (addForallContainsKeyThenBeforeAdding!915 (extractMap!2328 (t!361504 (toList!6681 lm!2709))) lt!1941083 (_1!31480 (h!60343 (_2!31481 (h!60344 (toList!6681 lm!2709))))) (_2!31480 (h!60343 (_2!31481 (h!60344 (toList!6681 lm!2709)))))))))

(assert (=> b!4778085 (forall!12080 (toList!6682 (extractMap!2328 (t!361504 (toList!6681 lm!2709)))) lambda!227358)))

(declare-fun lt!1941082 () Unit!138992)

(assert (=> b!4778085 (= lt!1941082 lt!1941077)))

(assert (=> b!4778085 (forall!12080 (toList!6682 (extractMap!2328 (t!361504 (toList!6681 lm!2709)))) lambda!227358)))

(declare-fun lt!1941073 () Unit!138992)

(declare-fun Unit!139014 () Unit!138992)

(assert (=> b!4778085 (= lt!1941073 Unit!139014)))

(declare-fun res!2028146 () Bool)

(assert (=> b!4778085 (= res!2028146 (forall!12080 (_2!31481 (h!60344 (toList!6681 lm!2709))) lambda!227358))))

(declare-fun e!2982873 () Bool)

(assert (=> b!4778085 (=> (not res!2028146) (not e!2982873))))

(assert (=> b!4778085 e!2982873))

(declare-fun lt!1941086 () Unit!138992)

(declare-fun Unit!139015 () Unit!138992)

(assert (=> b!4778085 (= lt!1941086 Unit!139015)))

(declare-fun bm!334620 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!916 (ListMap!6153) Unit!138992)

(assert (=> bm!334620 (= call!334625 (lemmaContainsAllItsOwnKeys!916 (extractMap!2328 (t!361504 (toList!6681 lm!2709)))))))

(declare-fun b!4778086 () Bool)

(declare-fun res!2028147 () Bool)

(declare-fun e!2982872 () Bool)

(assert (=> b!4778086 (=> (not res!2028147) (not e!2982872))))

(assert (=> b!4778086 (= res!2028147 (forall!12080 (toList!6682 (extractMap!2328 (t!361504 (toList!6681 lm!2709)))) lambda!227359))))

(declare-fun b!4778087 () Bool)

(assert (=> b!4778087 (= e!2982873 (forall!12080 (toList!6682 (extractMap!2328 (t!361504 (toList!6681 lm!2709)))) lambda!227358))))

(declare-fun b!4778088 () Bool)

(assert (=> b!4778088 (= e!2982872 (invariantList!1685 (toList!6682 lt!1941070)))))

(declare-fun bm!334621 () Bool)

(declare-fun c!814617 () Bool)

(assert (=> bm!334621 (= call!334626 (forall!12080 (ite c!814617 (toList!6682 (extractMap!2328 (t!361504 (toList!6681 lm!2709)))) (toList!6682 lt!1941084)) (ite c!814617 lambda!227356 lambda!227358)))))

(assert (=> d!1526984 e!2982872))

(declare-fun res!2028145 () Bool)

(assert (=> d!1526984 (=> (not res!2028145) (not e!2982872))))

(assert (=> d!1526984 (= res!2028145 (forall!12080 (_2!31481 (h!60344 (toList!6681 lm!2709))) lambda!227359))))

(assert (=> d!1526984 (= lt!1941070 e!2982874)))

(assert (=> d!1526984 (= c!814617 (is-Nil!53929 (_2!31481 (h!60344 (toList!6681 lm!2709)))))))

(assert (=> d!1526984 (noDuplicateKeys!2282 (_2!31481 (h!60344 (toList!6681 lm!2709))))))

(assert (=> d!1526984 (= (addToMapMapFromBucket!1650 (_2!31481 (h!60344 (toList!6681 lm!2709))) (extractMap!2328 (t!361504 (toList!6681 lm!2709)))) lt!1941070)))

(assert (=> b!4778089 (= e!2982874 (extractMap!2328 (t!361504 (toList!6681 lm!2709))))))

(declare-fun lt!1941066 () Unit!138992)

(assert (=> b!4778089 (= lt!1941066 call!334625)))

(assert (=> b!4778089 call!334627))

(declare-fun lt!1941074 () Unit!138992)

(assert (=> b!4778089 (= lt!1941074 lt!1941066)))

(assert (=> b!4778089 call!334626))

(declare-fun lt!1941068 () Unit!138992)

(declare-fun Unit!139016 () Unit!138992)

(assert (=> b!4778089 (= lt!1941068 Unit!139016)))

(declare-fun bm!334622 () Bool)

(assert (=> bm!334622 (= call!334627 (forall!12080 (ite c!814617 (toList!6682 (extractMap!2328 (t!361504 (toList!6681 lm!2709)))) (t!361503 (_2!31481 (h!60344 (toList!6681 lm!2709))))) (ite c!814617 lambda!227356 lambda!227358)))))

(assert (= (and d!1526984 c!814617) b!4778089))

(assert (= (and d!1526984 (not c!814617)) b!4778085))

(assert (= (and b!4778085 res!2028146) b!4778087))

(assert (= (or b!4778089 b!4778085) bm!334620))

(assert (= (or b!4778089 b!4778085) bm!334622))

(assert (= (or b!4778089 b!4778085) bm!334621))

(assert (= (and d!1526984 res!2028145) b!4778086))

(assert (= (and b!4778086 res!2028147) b!4778088))

(assert (=> bm!334620 m!5753596))

(declare-fun m!5753782 () Bool)

(assert (=> bm!334620 m!5753782))

(declare-fun m!5753784 () Bool)

(assert (=> b!4778085 m!5753784))

(declare-fun m!5753786 () Bool)

(assert (=> b!4778085 m!5753786))

(declare-fun m!5753788 () Bool)

(assert (=> b!4778085 m!5753788))

(assert (=> b!4778085 m!5753596))

(assert (=> b!4778085 m!5753786))

(declare-fun m!5753790 () Bool)

(assert (=> b!4778085 m!5753790))

(assert (=> b!4778085 m!5753784))

(declare-fun m!5753792 () Bool)

(assert (=> b!4778085 m!5753792))

(declare-fun m!5753794 () Bool)

(assert (=> b!4778085 m!5753794))

(declare-fun m!5753796 () Bool)

(assert (=> b!4778085 m!5753796))

(assert (=> b!4778085 m!5753596))

(declare-fun m!5753798 () Bool)

(assert (=> b!4778085 m!5753798))

(declare-fun m!5753800 () Bool)

(assert (=> b!4778085 m!5753800))

(declare-fun m!5753802 () Bool)

(assert (=> b!4778085 m!5753802))

(assert (=> b!4778085 m!5753790))

(assert (=> b!4778087 m!5753790))

(declare-fun m!5753804 () Bool)

(assert (=> b!4778088 m!5753804))

(declare-fun m!5753806 () Bool)

(assert (=> b!4778086 m!5753806))

(declare-fun m!5753808 () Bool)

(assert (=> bm!334621 m!5753808))

(declare-fun m!5753810 () Bool)

(assert (=> d!1526984 m!5753810))

(assert (=> d!1526984 m!5753608))

(declare-fun m!5753812 () Bool)

(assert (=> bm!334622 m!5753812))

(assert (=> b!4777882 d!1526984))

(declare-fun bs!1151007 () Bool)

(declare-fun d!1527000 () Bool)

(assert (= bs!1151007 (and d!1527000 start!489984)))

(declare-fun lambda!227360 () Int)

(assert (=> bs!1151007 (= lambda!227360 lambda!227276)))

(declare-fun bs!1151008 () Bool)

(assert (= bs!1151008 (and d!1527000 d!1526926)))

(assert (=> bs!1151008 (= lambda!227360 lambda!227291)))

(declare-fun bs!1151009 () Bool)

(assert (= bs!1151009 (and d!1527000 d!1526920)))

(assert (=> bs!1151009 (= lambda!227360 lambda!227288)))

(declare-fun bs!1151010 () Bool)

(assert (= bs!1151010 (and d!1527000 d!1526928)))

(assert (=> bs!1151010 (not (= lambda!227360 lambda!227294))))

(declare-fun bs!1151011 () Bool)

(assert (= bs!1151011 (and d!1527000 d!1526906)))

(assert (=> bs!1151011 (= lambda!227360 lambda!227282)))

(declare-fun lt!1941090 () ListMap!6153)

(assert (=> d!1527000 (invariantList!1685 (toList!6682 lt!1941090))))

(declare-fun e!2982879 () ListMap!6153)

(assert (=> d!1527000 (= lt!1941090 e!2982879)))

(declare-fun c!814618 () Bool)

(assert (=> d!1527000 (= c!814618 (is-Cons!53930 (t!361504 (toList!6681 lm!2709))))))

(assert (=> d!1527000 (forall!12077 (t!361504 (toList!6681 lm!2709)) lambda!227360)))

(assert (=> d!1527000 (= (extractMap!2328 (t!361504 (toList!6681 lm!2709))) lt!1941090)))

(declare-fun b!4778096 () Bool)

(assert (=> b!4778096 (= e!2982879 (addToMapMapFromBucket!1650 (_2!31481 (h!60344 (t!361504 (toList!6681 lm!2709)))) (extractMap!2328 (t!361504 (t!361504 (toList!6681 lm!2709))))))))

(declare-fun b!4778097 () Bool)

(assert (=> b!4778097 (= e!2982879 (ListMap!6154 Nil!53929))))

(assert (= (and d!1527000 c!814618) b!4778096))

(assert (= (and d!1527000 (not c!814618)) b!4778097))

(declare-fun m!5753818 () Bool)

(assert (=> d!1527000 m!5753818))

(declare-fun m!5753820 () Bool)

(assert (=> d!1527000 m!5753820))

(declare-fun m!5753822 () Bool)

(assert (=> b!4778096 m!5753822))

(assert (=> b!4778096 m!5753822))

(declare-fun m!5753824 () Bool)

(assert (=> b!4778096 m!5753824))

(assert (=> b!4777882 d!1527000))

(assert (=> d!1526912 d!1526970))

(declare-fun d!1527004 () Bool)

(assert (=> d!1527004 (= (get!18313 (getValueByKey!2257 (toList!6681 lm!2709) lt!1940876)) (v!48064 (getValueByKey!2257 (toList!6681 lm!2709) lt!1940876)))))

(assert (=> d!1526916 d!1527004))

(assert (=> d!1526916 d!1526902))

(declare-fun b!4778102 () Bool)

(declare-fun e!2982883 () Option!12888)

(assert (=> b!4778102 (= e!2982883 (getValueByKey!2257 (t!361504 (t!361504 (toList!6681 lm!2709))) lt!1940876))))

(declare-fun d!1527006 () Bool)

(declare-fun c!814619 () Bool)

(assert (=> d!1527006 (= c!814619 (and (is-Cons!53930 (t!361504 (toList!6681 lm!2709))) (= (_1!31481 (h!60344 (t!361504 (toList!6681 lm!2709)))) lt!1940876)))))

(declare-fun e!2982882 () Option!12888)

(assert (=> d!1527006 (= (getValueByKey!2257 (t!361504 (toList!6681 lm!2709)) lt!1940876) e!2982882)))

(declare-fun b!4778100 () Bool)

(assert (=> b!4778100 (= e!2982882 (Some!12887 (_2!31481 (h!60344 (t!361504 (toList!6681 lm!2709))))))))

(declare-fun b!4778101 () Bool)

(assert (=> b!4778101 (= e!2982882 e!2982883)))

(declare-fun c!814620 () Bool)

(assert (=> b!4778101 (= c!814620 (and (is-Cons!53930 (t!361504 (toList!6681 lm!2709))) (not (= (_1!31481 (h!60344 (t!361504 (toList!6681 lm!2709)))) lt!1940876))))))

(declare-fun b!4778103 () Bool)

(assert (=> b!4778103 (= e!2982883 None!12887)))

(assert (= (and d!1527006 c!814619) b!4778100))

(assert (= (and d!1527006 (not c!814619)) b!4778101))

(assert (= (and b!4778101 c!814620) b!4778102))

(assert (= (and b!4778101 (not c!814620)) b!4778103))

(declare-fun m!5753826 () Bool)

(assert (=> b!4778102 m!5753826))

(assert (=> b!4777822 d!1527006))

(declare-fun d!1527008 () Bool)

(declare-fun noDuplicatedKeys!415 (List!54053) Bool)

(assert (=> d!1527008 (= (invariantList!1685 (toList!6682 lt!1940932)) (noDuplicatedKeys!415 (toList!6682 lt!1940932)))))

(declare-fun bs!1151012 () Bool)

(assert (= bs!1151012 d!1527008))

(declare-fun m!5753828 () Bool)

(assert (=> bs!1151012 m!5753828))

(assert (=> d!1526920 d!1527008))

(declare-fun d!1527010 () Bool)

(declare-fun res!2028154 () Bool)

(declare-fun e!2982884 () Bool)

(assert (=> d!1527010 (=> res!2028154 e!2982884)))

(assert (=> d!1527010 (= res!2028154 (is-Nil!53930 (toList!6681 lm!2709)))))

(assert (=> d!1527010 (= (forall!12077 (toList!6681 lm!2709) lambda!227288) e!2982884)))

(declare-fun b!4778104 () Bool)

(declare-fun e!2982885 () Bool)

(assert (=> b!4778104 (= e!2982884 e!2982885)))

(declare-fun res!2028155 () Bool)

(assert (=> b!4778104 (=> (not res!2028155) (not e!2982885))))

(assert (=> b!4778104 (= res!2028155 (dynLambda!21996 lambda!227288 (h!60344 (toList!6681 lm!2709))))))

(declare-fun b!4778105 () Bool)

(assert (=> b!4778105 (= e!2982885 (forall!12077 (t!361504 (toList!6681 lm!2709)) lambda!227288))))

(assert (= (and d!1527010 (not res!2028154)) b!4778104))

(assert (= (and b!4778104 res!2028155) b!4778105))

(declare-fun b_lambda!185147 () Bool)

(assert (=> (not b_lambda!185147) (not b!4778104)))

(declare-fun m!5753830 () Bool)

(assert (=> b!4778104 m!5753830))

(declare-fun m!5753832 () Bool)

(assert (=> b!4778105 m!5753832))

(assert (=> d!1526920 d!1527010))

(declare-fun d!1527012 () Bool)

(assert (=> d!1527012 (isDefined!10033 (getValueByKey!2257 (toList!6681 lm!2709) lt!1940876))))

(declare-fun lt!1941093 () Unit!138992)

(declare-fun choose!34185 (List!54054 (_ BitVec 64)) Unit!138992)

(assert (=> d!1527012 (= lt!1941093 (choose!34185 (toList!6681 lm!2709) lt!1940876))))

(declare-fun e!2982888 () Bool)

(assert (=> d!1527012 e!2982888))

(declare-fun res!2028158 () Bool)

(assert (=> d!1527012 (=> (not res!2028158) (not e!2982888))))

(assert (=> d!1527012 (= res!2028158 (isStrictlySorted!836 (toList!6681 lm!2709)))))

(assert (=> d!1527012 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2052 (toList!6681 lm!2709) lt!1940876) lt!1941093)))

(declare-fun b!4778108 () Bool)

(assert (=> b!4778108 (= e!2982888 (containsKey!3770 (toList!6681 lm!2709) lt!1940876))))

(assert (= (and d!1527012 res!2028158) b!4778108))

(assert (=> d!1527012 m!5753492))

(assert (=> d!1527012 m!5753492))

(assert (=> d!1527012 m!5753584))

(declare-fun m!5753834 () Bool)

(assert (=> d!1527012 m!5753834))

(assert (=> d!1527012 m!5753542))

(assert (=> b!4778108 m!5753580))

(assert (=> b!4777863 d!1527012))

(declare-fun d!1527014 () Bool)

(declare-fun isEmpty!29334 (Option!12888) Bool)

(assert (=> d!1527014 (= (isDefined!10033 (getValueByKey!2257 (toList!6681 lm!2709) lt!1940876)) (not (isEmpty!29334 (getValueByKey!2257 (toList!6681 lm!2709) lt!1940876))))))

(declare-fun bs!1151013 () Bool)

(assert (= bs!1151013 d!1527014))

(assert (=> bs!1151013 m!5753492))

(declare-fun m!5753836 () Bool)

(assert (=> bs!1151013 m!5753836))

(assert (=> b!4777863 d!1527014))

(assert (=> b!4777863 d!1526902))

(declare-fun d!1527016 () Bool)

(declare-fun choose!34186 (Hashable!6801 K!15492) (_ BitVec 64))

(assert (=> d!1527016 (= (hash!4779 hashF!1687 key!6641) (choose!34186 hashF!1687 key!6641))))

(declare-fun bs!1151014 () Bool)

(assert (= bs!1151014 d!1527016))

(declare-fun m!5753838 () Bool)

(assert (=> bs!1151014 m!5753838))

(assert (=> d!1526914 d!1527016))

(assert (=> b!4777865 d!1527014))

(assert (=> b!4777865 d!1526902))

(declare-fun d!1527018 () Bool)

(declare-fun res!2028159 () Bool)

(declare-fun e!2982889 () Bool)

(assert (=> d!1527018 (=> res!2028159 e!2982889)))

(assert (=> d!1527018 (= res!2028159 (is-Nil!53930 (t!361504 (toList!6681 lm!2709))))))

(assert (=> d!1527018 (= (forall!12077 (t!361504 (toList!6681 lm!2709)) lambda!227276) e!2982889)))

(declare-fun b!4778109 () Bool)

(declare-fun e!2982890 () Bool)

(assert (=> b!4778109 (= e!2982889 e!2982890)))

(declare-fun res!2028160 () Bool)

(assert (=> b!4778109 (=> (not res!2028160) (not e!2982890))))

(assert (=> b!4778109 (= res!2028160 (dynLambda!21996 lambda!227276 (h!60344 (t!361504 (toList!6681 lm!2709)))))))

(declare-fun b!4778110 () Bool)

(assert (=> b!4778110 (= e!2982890 (forall!12077 (t!361504 (t!361504 (toList!6681 lm!2709))) lambda!227276))))

(assert (= (and d!1527018 (not res!2028159)) b!4778109))

(assert (= (and b!4778109 res!2028160) b!4778110))

(declare-fun b_lambda!185149 () Bool)

(assert (=> (not b_lambda!185149) (not b!4778109)))

(declare-fun m!5753840 () Bool)

(assert (=> b!4778109 m!5753840))

(declare-fun m!5753842 () Bool)

(assert (=> b!4778110 m!5753842))

(assert (=> b!4777811 d!1527018))

(declare-fun d!1527020 () Bool)

(declare-fun e!2982892 () Bool)

(assert (=> d!1527020 e!2982892))

(declare-fun res!2028161 () Bool)

(assert (=> d!1527020 (=> res!2028161 e!2982892)))

(declare-fun lt!1941094 () Bool)

(assert (=> d!1527020 (= res!2028161 (not lt!1941094))))

(declare-fun lt!1941096 () Bool)

(assert (=> d!1527020 (= lt!1941094 lt!1941096)))

(declare-fun lt!1941097 () Unit!138992)

(declare-fun e!2982891 () Unit!138992)

(assert (=> d!1527020 (= lt!1941097 e!2982891)))

(declare-fun c!814621 () Bool)

(assert (=> d!1527020 (= c!814621 lt!1941096)))

(assert (=> d!1527020 (= lt!1941096 (containsKey!3770 (toList!6681 lm!2709) (hash!4777 hashF!1687 key!6641)))))

(assert (=> d!1527020 (= (contains!17425 lm!2709 (hash!4777 hashF!1687 key!6641)) lt!1941094)))

(declare-fun b!4778111 () Bool)

(declare-fun lt!1941095 () Unit!138992)

(assert (=> b!4778111 (= e!2982891 lt!1941095)))

(assert (=> b!4778111 (= lt!1941095 (lemmaContainsKeyImpliesGetValueByKeyDefined!2052 (toList!6681 lm!2709) (hash!4777 hashF!1687 key!6641)))))

(assert (=> b!4778111 (isDefined!10033 (getValueByKey!2257 (toList!6681 lm!2709) (hash!4777 hashF!1687 key!6641)))))

(declare-fun b!4778112 () Bool)

(declare-fun Unit!139017 () Unit!138992)

(assert (=> b!4778112 (= e!2982891 Unit!139017)))

(declare-fun b!4778113 () Bool)

(assert (=> b!4778113 (= e!2982892 (isDefined!10033 (getValueByKey!2257 (toList!6681 lm!2709) (hash!4777 hashF!1687 key!6641))))))

(assert (= (and d!1527020 c!814621) b!4778111))

(assert (= (and d!1527020 (not c!814621)) b!4778112))

(assert (= (and d!1527020 (not res!2028161)) b!4778113))

(assert (=> d!1527020 m!5753494))

(declare-fun m!5753844 () Bool)

(assert (=> d!1527020 m!5753844))

(assert (=> b!4778111 m!5753494))

(declare-fun m!5753846 () Bool)

(assert (=> b!4778111 m!5753846))

(assert (=> b!4778111 m!5753494))

(declare-fun m!5753848 () Bool)

(assert (=> b!4778111 m!5753848))

(assert (=> b!4778111 m!5753848))

(declare-fun m!5753850 () Bool)

(assert (=> b!4778111 m!5753850))

(assert (=> b!4778113 m!5753494))

(assert (=> b!4778113 m!5753848))

(assert (=> b!4778113 m!5753848))

(assert (=> b!4778113 m!5753850))

(assert (=> d!1526926 d!1527020))

(assert (=> d!1526926 d!1526914))

(declare-fun d!1527022 () Bool)

(assert (=> d!1527022 (contains!17425 lm!2709 (hash!4777 hashF!1687 key!6641))))

(assert (=> d!1527022 true))

(declare-fun _$27!1584 () Unit!138992)

(assert (=> d!1527022 (= (choose!34179 lm!2709 key!6641 hashF!1687) _$27!1584)))

(declare-fun bs!1151015 () Bool)

(assert (= bs!1151015 d!1527022))

(assert (=> bs!1151015 m!5753494))

(assert (=> bs!1151015 m!5753494))

(assert (=> bs!1151015 m!5753600))

(assert (=> d!1526926 d!1527022))

(declare-fun d!1527024 () Bool)

(declare-fun res!2028162 () Bool)

(declare-fun e!2982893 () Bool)

(assert (=> d!1527024 (=> res!2028162 e!2982893)))

(assert (=> d!1527024 (= res!2028162 (is-Nil!53930 (toList!6681 lm!2709)))))

(assert (=> d!1527024 (= (forall!12077 (toList!6681 lm!2709) lambda!227291) e!2982893)))

(declare-fun b!4778114 () Bool)

(declare-fun e!2982894 () Bool)

(assert (=> b!4778114 (= e!2982893 e!2982894)))

(declare-fun res!2028163 () Bool)

(assert (=> b!4778114 (=> (not res!2028163) (not e!2982894))))

(assert (=> b!4778114 (= res!2028163 (dynLambda!21996 lambda!227291 (h!60344 (toList!6681 lm!2709))))))

(declare-fun b!4778115 () Bool)

(assert (=> b!4778115 (= e!2982894 (forall!12077 (t!361504 (toList!6681 lm!2709)) lambda!227291))))

(assert (= (and d!1527024 (not res!2028162)) b!4778114))

(assert (= (and b!4778114 res!2028163) b!4778115))

(declare-fun b_lambda!185151 () Bool)

(assert (=> (not b_lambda!185151) (not b!4778114)))

(declare-fun m!5753852 () Bool)

(assert (=> b!4778114 m!5753852))

(declare-fun m!5753854 () Bool)

(assert (=> b!4778115 m!5753854))

(assert (=> d!1526926 d!1527024))

(declare-fun b!4778120 () Bool)

(declare-fun tp_is_empty!33117 () Bool)

(declare-fun e!2982897 () Bool)

(declare-fun tp!1357259 () Bool)

(assert (=> b!4778120 (= e!2982897 (and tp_is_empty!33113 tp_is_empty!33117 tp!1357259))))

(assert (=> b!4777890 (= tp!1357249 e!2982897)))

(assert (= (and b!4777890 (is-Cons!53929 (_2!31481 (h!60344 (toList!6681 lm!2709))))) b!4778120))

(declare-fun b!4778121 () Bool)

(declare-fun e!2982898 () Bool)

(declare-fun tp!1357260 () Bool)

(declare-fun tp!1357261 () Bool)

(assert (=> b!4778121 (= e!2982898 (and tp!1357260 tp!1357261))))

(assert (=> b!4777890 (= tp!1357250 e!2982898)))

(assert (= (and b!4777890 (is-Cons!53930 (t!361504 (toList!6681 lm!2709)))) b!4778121))

(declare-fun b_lambda!185153 () Bool)

(assert (= b_lambda!185151 (or d!1526926 b_lambda!185153)))

(declare-fun bs!1151016 () Bool)

(declare-fun d!1527026 () Bool)

(assert (= bs!1151016 (and d!1527026 d!1526926)))

(assert (=> bs!1151016 (= (dynLambda!21996 lambda!227291 (h!60344 (toList!6681 lm!2709))) (noDuplicateKeys!2282 (_2!31481 (h!60344 (toList!6681 lm!2709)))))))

(assert (=> bs!1151016 m!5753608))

(assert (=> b!4778114 d!1527026))

(declare-fun b_lambda!185155 () Bool)

(assert (= b_lambda!185149 (or start!489984 b_lambda!185155)))

(declare-fun bs!1151017 () Bool)

(declare-fun d!1527028 () Bool)

(assert (= bs!1151017 (and d!1527028 start!489984)))

(assert (=> bs!1151017 (= (dynLambda!21996 lambda!227276 (h!60344 (t!361504 (toList!6681 lm!2709)))) (noDuplicateKeys!2282 (_2!31481 (h!60344 (t!361504 (toList!6681 lm!2709))))))))

(declare-fun m!5753856 () Bool)

(assert (=> bs!1151017 m!5753856))

(assert (=> b!4778109 d!1527028))

(declare-fun b_lambda!185157 () Bool)

(assert (= b_lambda!185143 (or d!1526906 b_lambda!185157)))

(declare-fun bs!1151018 () Bool)

(declare-fun d!1527030 () Bool)

(assert (= bs!1151018 (and d!1527030 d!1526906)))

(assert (=> bs!1151018 (= (dynLambda!21996 lambda!227282 (h!60344 (toList!6681 lm!2709))) (noDuplicateKeys!2282 (_2!31481 (h!60344 (toList!6681 lm!2709)))))))

(assert (=> bs!1151018 m!5753608))

(assert (=> b!4778036 d!1527030))

(declare-fun b_lambda!185159 () Bool)

(assert (= b_lambda!185145 (or d!1526928 b_lambda!185159)))

(declare-fun bs!1151019 () Bool)

(declare-fun d!1527032 () Bool)

(assert (= bs!1151019 (and d!1527032 d!1526928)))

(declare-fun allKeysSameHash!1933 (List!54053 (_ BitVec 64) Hashable!6801) Bool)

(assert (=> bs!1151019 (= (dynLambda!21996 lambda!227294 (h!60344 (toList!6681 lm!2709))) (allKeysSameHash!1933 (_2!31481 (h!60344 (toList!6681 lm!2709))) (_1!31481 (h!60344 (toList!6681 lm!2709))) hashF!1687))))

(declare-fun m!5753858 () Bool)

(assert (=> bs!1151019 m!5753858))

(assert (=> b!4778044 d!1527032))

(declare-fun b_lambda!185161 () Bool)

(assert (= b_lambda!185147 (or d!1526920 b_lambda!185161)))

(declare-fun bs!1151020 () Bool)

(declare-fun d!1527034 () Bool)

(assert (= bs!1151020 (and d!1527034 d!1526920)))

(assert (=> bs!1151020 (= (dynLambda!21996 lambda!227288 (h!60344 (toList!6681 lm!2709))) (noDuplicateKeys!2282 (_2!31481 (h!60344 (toList!6681 lm!2709)))))))

(assert (=> bs!1151020 m!5753608))

(assert (=> b!4778104 d!1527034))

(push 1)

(assert (not b!4778088))

(assert (not b!4778102))

(assert (not b!4777995))

(assert (not b!4778110))

(assert (not d!1527012))

(assert (not d!1526954))

(assert (not b!4777971))

(assert (not d!1527014))

(assert (not b_lambda!185157))

(assert (not b!4777974))

(assert (not bs!1151016))

(assert tp_is_empty!33113)

(assert (not b_lambda!185155))

(assert (not b!4778011))

(assert (not b!4777973))

(assert (not b!4777972))

(assert (not b!4778121))

(assert (not b!4777980))

(assert (not bs!1151020))

(assert (not bs!1151018))

(assert (not b!4778003))

(assert (not d!1526968))

(assert (not b!4778043))

(assert (not b!4777986))

(assert (not b!4778085))

(assert (not d!1526984))

(assert (not b!4778009))

(assert tp_is_empty!33117)

(assert (not b!4778113))

(assert (not bm!334621))

(assert (not d!1527016))

(assert (not bs!1151019))

(assert (not b!4778035))

(assert (not bs!1151017))

(assert (not b!4778111))

(assert (not d!1527020))

(assert (not b!4778096))

(assert (not bm!334620))

(assert (not d!1526972))

(assert (not b!4777969))

(assert (not d!1526960))

(assert (not b_lambda!185159))

(assert (not bm!334622))

(assert (not b_lambda!185139))

(assert (not b_lambda!185161))

(assert (not b!4777994))

(assert (not b!4777993))

(assert (not b_lambda!185153))

(assert (not d!1526964))

(assert (not b!4778108))

(assert (not d!1526962))

(assert (not b!4778115))

(assert (not b!4778045))

(assert (not b!4778086))

(assert (not b!4778120))

(assert (not d!1527008))

(assert (not d!1526976))

(assert (not b!4778034))

(assert (not b!4778105))

(assert (not b!4778022))

(assert (not d!1526956))

(assert (not d!1527022))

(assert (not b!4778029))

(assert (not d!1526948))

(assert (not b!4777978))

(assert (not b!4778037))

(assert (not b!4778087))

(assert (not d!1527000))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1527092 () Bool)

(assert (=> d!1527092 (= (isEmpty!29333 (getValueByKey!2259 (toList!6682 (extractMap!2328 (toList!6681 lm!2709))) key!6641)) (not (is-Some!12889 (getValueByKey!2259 (toList!6682 (extractMap!2328 (toList!6681 lm!2709))) key!6641))))))

(assert (=> d!1526964 d!1527092))

(declare-fun d!1527094 () Bool)

(declare-fun lt!1941194 () Bool)

(assert (=> d!1527094 (= lt!1941194 (set.member key!6641 (content!9626 (t!361507 (keys!19627 (extractMap!2328 (toList!6681 lm!2709)))))))))

(declare-fun e!2982972 () Bool)

(assert (=> d!1527094 (= lt!1941194 e!2982972)))

(declare-fun res!2028225 () Bool)

(assert (=> d!1527094 (=> (not res!2028225) (not e!2982972))))

(assert (=> d!1527094 (= res!2028225 (is-Cons!53933 (t!361507 (keys!19627 (extractMap!2328 (toList!6681 lm!2709))))))))

(assert (=> d!1527094 (= (contains!17429 (t!361507 (keys!19627 (extractMap!2328 (toList!6681 lm!2709)))) key!6641) lt!1941194)))

(declare-fun b!4778225 () Bool)

(declare-fun e!2982971 () Bool)

(assert (=> b!4778225 (= e!2982972 e!2982971)))

(declare-fun res!2028226 () Bool)

(assert (=> b!4778225 (=> res!2028226 e!2982971)))

(assert (=> b!4778225 (= res!2028226 (= (h!60347 (t!361507 (keys!19627 (extractMap!2328 (toList!6681 lm!2709))))) key!6641))))

(declare-fun b!4778226 () Bool)

(assert (=> b!4778226 (= e!2982971 (contains!17429 (t!361507 (t!361507 (keys!19627 (extractMap!2328 (toList!6681 lm!2709))))) key!6641))))

(assert (= (and d!1527094 res!2028225) b!4778225))

(assert (= (and b!4778225 (not res!2028226)) b!4778226))

(declare-fun m!5753988 () Bool)

(assert (=> d!1527094 m!5753988))

(declare-fun m!5753990 () Bool)

(assert (=> d!1527094 m!5753990))

(declare-fun m!5753992 () Bool)

(assert (=> b!4778226 m!5753992))

(assert (=> b!4778011 d!1527094))

(declare-fun d!1527096 () Bool)

(declare-fun res!2028227 () Bool)

(declare-fun e!2982973 () Bool)

(assert (=> d!1527096 (=> res!2028227 e!2982973)))

(assert (=> d!1527096 (= res!2028227 (not (is-Cons!53929 (_2!31481 (h!60344 (t!361504 (toList!6681 lm!2709)))))))))

(assert (=> d!1527096 (= (noDuplicateKeys!2282 (_2!31481 (h!60344 (t!361504 (toList!6681 lm!2709))))) e!2982973)))

(declare-fun b!4778227 () Bool)

(declare-fun e!2982974 () Bool)

(assert (=> b!4778227 (= e!2982973 e!2982974)))

(declare-fun res!2028228 () Bool)

(assert (=> b!4778227 (=> (not res!2028228) (not e!2982974))))

(assert (=> b!4778227 (= res!2028228 (not (containsKey!3768 (t!361503 (_2!31481 (h!60344 (t!361504 (toList!6681 lm!2709))))) (_1!31480 (h!60343 (_2!31481 (h!60344 (t!361504 (toList!6681 lm!2709)))))))))))

(declare-fun b!4778228 () Bool)

(assert (=> b!4778228 (= e!2982974 (noDuplicateKeys!2282 (t!361503 (_2!31481 (h!60344 (t!361504 (toList!6681 lm!2709)))))))))

(assert (= (and d!1527096 (not res!2028227)) b!4778227))

(assert (= (and b!4778227 res!2028228) b!4778228))

(declare-fun m!5753994 () Bool)

(assert (=> b!4778227 m!5753994))

(declare-fun m!5753996 () Bool)

(assert (=> b!4778228 m!5753996))

(assert (=> bs!1151017 d!1527096))

(declare-fun d!1527098 () Bool)

(declare-fun lt!1941195 () Bool)

(assert (=> d!1527098 (= lt!1941195 (set.member key!6641 (content!9626 (t!361507 e!2982726))))))

(declare-fun e!2982976 () Bool)

(assert (=> d!1527098 (= lt!1941195 e!2982976)))

(declare-fun res!2028229 () Bool)

(assert (=> d!1527098 (=> (not res!2028229) (not e!2982976))))

(assert (=> d!1527098 (= res!2028229 (is-Cons!53933 (t!361507 e!2982726)))))

(assert (=> d!1527098 (= (contains!17429 (t!361507 e!2982726) key!6641) lt!1941195)))

(declare-fun b!4778229 () Bool)

(declare-fun e!2982975 () Bool)

(assert (=> b!4778229 (= e!2982976 e!2982975)))

(declare-fun res!2028230 () Bool)

(assert (=> b!4778229 (=> res!2028230 e!2982975)))

(assert (=> b!4778229 (= res!2028230 (= (h!60347 (t!361507 e!2982726)) key!6641))))

(declare-fun b!4778230 () Bool)

(assert (=> b!4778230 (= e!2982975 (contains!17429 (t!361507 (t!361507 e!2982726)) key!6641))))

(assert (= (and d!1527098 res!2028229) b!4778229))

(assert (= (and b!4778229 (not res!2028230)) b!4778230))

(declare-fun m!5753998 () Bool)

(assert (=> d!1527098 m!5753998))

(declare-fun m!5754000 () Bool)

(assert (=> d!1527098 m!5754000))

(declare-fun m!5754002 () Bool)

(assert (=> b!4778230 m!5754002))

(assert (=> b!4778003 d!1527098))

(declare-fun bs!1151047 () Bool)

(declare-fun d!1527100 () Bool)

(assert (= bs!1151047 (and d!1527100 b!4778089)))

(declare-fun lambda!227408 () Int)

(assert (=> bs!1151047 (not (= lambda!227408 lambda!227356))))

(declare-fun bs!1151048 () Bool)

(assert (= bs!1151048 (and d!1527100 b!4778085)))

(assert (=> bs!1151048 (not (= lambda!227408 lambda!227357))))

(assert (=> bs!1151048 (not (= lambda!227408 lambda!227358))))

(declare-fun bs!1151049 () Bool)

(assert (= bs!1151049 (and d!1527100 d!1526984)))

(assert (=> bs!1151049 (not (= lambda!227408 lambda!227359))))

(assert (=> d!1527100 true))

(assert (=> d!1527100 true))

(assert (=> d!1527100 (= (allKeysSameHash!1933 (_2!31481 (h!60344 (toList!6681 lm!2709))) (_1!31481 (h!60344 (toList!6681 lm!2709))) hashF!1687) (forall!12080 (_2!31481 (h!60344 (toList!6681 lm!2709))) lambda!227408))))

(declare-fun bs!1151050 () Bool)

(assert (= bs!1151050 d!1527100))

(declare-fun m!5754004 () Bool)

(assert (=> bs!1151050 m!5754004))

(assert (=> bs!1151019 d!1527100))

(declare-fun d!1527102 () Bool)

(declare-fun res!2028235 () Bool)

(declare-fun e!2982981 () Bool)

(assert (=> d!1527102 (=> res!2028235 e!2982981)))

(assert (=> d!1527102 (= res!2028235 (is-Nil!53933 lt!1940993))))

(assert (=> d!1527102 (= (forall!12079 lt!1940993 lambda!227314) e!2982981)))

(declare-fun b!4778239 () Bool)

(declare-fun e!2982982 () Bool)

(assert (=> b!4778239 (= e!2982981 e!2982982)))

(declare-fun res!2028236 () Bool)

(assert (=> b!4778239 (=> (not res!2028236) (not e!2982982))))

(declare-fun dynLambda!21998 (Int K!15492) Bool)

(assert (=> b!4778239 (= res!2028236 (dynLambda!21998 lambda!227314 (h!60347 lt!1940993)))))

(declare-fun b!4778240 () Bool)

(assert (=> b!4778240 (= e!2982982 (forall!12079 (t!361507 lt!1940993) lambda!227314))))

(assert (= (and d!1527102 (not res!2028235)) b!4778239))

(assert (= (and b!4778239 res!2028236) b!4778240))

(declare-fun b_lambda!185183 () Bool)

(assert (=> (not b_lambda!185183) (not b!4778239)))

(declare-fun m!5754006 () Bool)

(assert (=> b!4778239 m!5754006))

(declare-fun m!5754008 () Bool)

(assert (=> b!4778240 m!5754008))

(assert (=> b!4777971 d!1527102))

(declare-fun d!1527104 () Bool)

(declare-fun size!36355 (List!54057) Int)

(assert (=> d!1527104 (= (length!640 lt!1940993) (size!36355 lt!1940993))))

(declare-fun bs!1151051 () Bool)

(assert (= bs!1151051 d!1527104))

(declare-fun m!5754010 () Bool)

(assert (=> bs!1151051 m!5754010))

(assert (=> b!4777973 d!1527104))

(declare-fun d!1527106 () Bool)

(declare-fun size!36356 (List!54053) Int)

(assert (=> d!1527106 (= (length!641 (toList!6682 (extractMap!2328 (toList!6681 lm!2709)))) (size!36356 (toList!6682 (extractMap!2328 (toList!6681 lm!2709)))))))

(declare-fun bs!1151052 () Bool)

(assert (= bs!1151052 d!1527106))

(declare-fun m!5754012 () Bool)

(assert (=> bs!1151052 m!5754012))

(assert (=> b!4777973 d!1527106))

(declare-fun d!1527108 () Bool)

(declare-fun lt!1941196 () Bool)

(assert (=> d!1527108 (= lt!1941196 (set.member key!6641 (content!9626 (getKeysList!1029 (toList!6682 (extractMap!2328 (toList!6681 lm!2709)))))))))

(declare-fun e!2982984 () Bool)

(assert (=> d!1527108 (= lt!1941196 e!2982984)))

(declare-fun res!2028237 () Bool)

(assert (=> d!1527108 (=> (not res!2028237) (not e!2982984))))

(assert (=> d!1527108 (= res!2028237 (is-Cons!53933 (getKeysList!1029 (toList!6682 (extractMap!2328 (toList!6681 lm!2709))))))))

(assert (=> d!1527108 (= (contains!17429 (getKeysList!1029 (toList!6682 (extractMap!2328 (toList!6681 lm!2709)))) key!6641) lt!1941196)))

(declare-fun b!4778241 () Bool)

(declare-fun e!2982983 () Bool)

(assert (=> b!4778241 (= e!2982984 e!2982983)))

(declare-fun res!2028238 () Bool)

(assert (=> b!4778241 (=> res!2028238 e!2982983)))

(assert (=> b!4778241 (= res!2028238 (= (h!60347 (getKeysList!1029 (toList!6682 (extractMap!2328 (toList!6681 lm!2709))))) key!6641))))

(declare-fun b!4778242 () Bool)

(assert (=> b!4778242 (= e!2982983 (contains!17429 (t!361507 (getKeysList!1029 (toList!6682 (extractMap!2328 (toList!6681 lm!2709))))) key!6641))))

(assert (= (and d!1527108 res!2028237) b!4778241))

(assert (= (and b!4778241 (not res!2028238)) b!4778242))

(assert (=> d!1527108 m!5753572))

(declare-fun m!5754014 () Bool)

(assert (=> d!1527108 m!5754014))

(declare-fun m!5754016 () Bool)

(assert (=> d!1527108 m!5754016))

(declare-fun m!5754018 () Bool)

(assert (=> b!4778242 m!5754018))

(assert (=> d!1526968 d!1527108))

(assert (=> d!1526968 d!1526948))

(declare-fun d!1527110 () Bool)

(assert (=> d!1527110 (contains!17429 (getKeysList!1029 (toList!6682 (extractMap!2328 (toList!6681 lm!2709)))) key!6641)))

(assert (=> d!1527110 true))

(declare-fun _$14!1571 () Unit!138992)

(assert (=> d!1527110 (= (choose!34183 (toList!6682 (extractMap!2328 (toList!6681 lm!2709))) key!6641) _$14!1571)))

(declare-fun bs!1151053 () Bool)

(assert (= bs!1151053 d!1527110))

(assert (=> bs!1151053 m!5753572))

(assert (=> bs!1151053 m!5753572))

(assert (=> bs!1151053 m!5753728))

(assert (=> d!1526968 d!1527110))

(declare-fun d!1527112 () Bool)

(assert (=> d!1527112 (= (invariantList!1685 (toList!6682 (extractMap!2328 (toList!6681 lm!2709)))) (noDuplicatedKeys!415 (toList!6682 (extractMap!2328 (toList!6681 lm!2709)))))))

(declare-fun bs!1151054 () Bool)

(assert (= bs!1151054 d!1527112))

(declare-fun m!5754020 () Bool)

(assert (=> bs!1151054 m!5754020))

(assert (=> d!1526968 d!1527112))

(declare-fun d!1527114 () Bool)

(declare-fun res!2028239 () Bool)

(declare-fun e!2982985 () Bool)

(assert (=> d!1527114 (=> res!2028239 e!2982985)))

(assert (=> d!1527114 (= res!2028239 (and (is-Cons!53929 (t!361503 (_2!31481 (h!60344 (toList!6681 lm!2709))))) (= (_1!31480 (h!60343 (t!361503 (_2!31481 (h!60344 (toList!6681 lm!2709)))))) key!6641)))))

(assert (=> d!1527114 (= (containsKey!3768 (t!361503 (_2!31481 (h!60344 (toList!6681 lm!2709)))) key!6641) e!2982985)))

(declare-fun b!4778243 () Bool)

(declare-fun e!2982986 () Bool)

(assert (=> b!4778243 (= e!2982985 e!2982986)))

(declare-fun res!2028240 () Bool)

(assert (=> b!4778243 (=> (not res!2028240) (not e!2982986))))

(assert (=> b!4778243 (= res!2028240 (is-Cons!53929 (t!361503 (_2!31481 (h!60344 (toList!6681 lm!2709))))))))

(declare-fun b!4778244 () Bool)

(assert (=> b!4778244 (= e!2982986 (containsKey!3768 (t!361503 (t!361503 (_2!31481 (h!60344 (toList!6681 lm!2709))))) key!6641))))

(assert (= (and d!1527114 (not res!2028239)) b!4778243))

(assert (= (and b!4778243 res!2028240) b!4778244))

(declare-fun m!5754022 () Bool)

(assert (=> b!4778244 m!5754022))

(assert (=> b!4778043 d!1527114))

(declare-fun d!1527116 () Bool)

(assert (=> d!1527116 (isDefined!10033 (getValueByKey!2257 (toList!6681 lm!2709) (hash!4777 hashF!1687 key!6641)))))

(declare-fun lt!1941197 () Unit!138992)

(assert (=> d!1527116 (= lt!1941197 (choose!34185 (toList!6681 lm!2709) (hash!4777 hashF!1687 key!6641)))))

(declare-fun e!2982987 () Bool)

(assert (=> d!1527116 e!2982987))

(declare-fun res!2028241 () Bool)

(assert (=> d!1527116 (=> (not res!2028241) (not e!2982987))))

(assert (=> d!1527116 (= res!2028241 (isStrictlySorted!836 (toList!6681 lm!2709)))))

(assert (=> d!1527116 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2052 (toList!6681 lm!2709) (hash!4777 hashF!1687 key!6641)) lt!1941197)))

(declare-fun b!4778245 () Bool)

(assert (=> b!4778245 (= e!2982987 (containsKey!3770 (toList!6681 lm!2709) (hash!4777 hashF!1687 key!6641)))))

(assert (= (and d!1527116 res!2028241) b!4778245))

(assert (=> d!1527116 m!5753494))

(assert (=> d!1527116 m!5753848))

(assert (=> d!1527116 m!5753848))

(assert (=> d!1527116 m!5753850))

(assert (=> d!1527116 m!5753494))

(declare-fun m!5754024 () Bool)

(assert (=> d!1527116 m!5754024))

(assert (=> d!1527116 m!5753542))

(assert (=> b!4778245 m!5753494))

(assert (=> b!4778245 m!5753844))

(assert (=> b!4778111 d!1527116))

(declare-fun d!1527118 () Bool)

(assert (=> d!1527118 (= (isDefined!10033 (getValueByKey!2257 (toList!6681 lm!2709) (hash!4777 hashF!1687 key!6641))) (not (isEmpty!29334 (getValueByKey!2257 (toList!6681 lm!2709) (hash!4777 hashF!1687 key!6641)))))))

(declare-fun bs!1151055 () Bool)

(assert (= bs!1151055 d!1527118))

(assert (=> bs!1151055 m!5753848))

(declare-fun m!5754026 () Bool)

(assert (=> bs!1151055 m!5754026))

(assert (=> b!4778111 d!1527118))

(declare-fun b!4778248 () Bool)

(declare-fun e!2982989 () Option!12888)

(assert (=> b!4778248 (= e!2982989 (getValueByKey!2257 (t!361504 (toList!6681 lm!2709)) (hash!4777 hashF!1687 key!6641)))))

(declare-fun c!814638 () Bool)

(declare-fun d!1527120 () Bool)

(assert (=> d!1527120 (= c!814638 (and (is-Cons!53930 (toList!6681 lm!2709)) (= (_1!31481 (h!60344 (toList!6681 lm!2709))) (hash!4777 hashF!1687 key!6641))))))

(declare-fun e!2982988 () Option!12888)

(assert (=> d!1527120 (= (getValueByKey!2257 (toList!6681 lm!2709) (hash!4777 hashF!1687 key!6641)) e!2982988)))

(declare-fun b!4778246 () Bool)

(assert (=> b!4778246 (= e!2982988 (Some!12887 (_2!31481 (h!60344 (toList!6681 lm!2709)))))))

(declare-fun b!4778247 () Bool)

(assert (=> b!4778247 (= e!2982988 e!2982989)))

(declare-fun c!814639 () Bool)

(assert (=> b!4778247 (= c!814639 (and (is-Cons!53930 (toList!6681 lm!2709)) (not (= (_1!31481 (h!60344 (toList!6681 lm!2709))) (hash!4777 hashF!1687 key!6641)))))))

(declare-fun b!4778249 () Bool)

(assert (=> b!4778249 (= e!2982989 None!12887)))

(assert (= (and d!1527120 c!814638) b!4778246))

(assert (= (and d!1527120 (not c!814638)) b!4778247))

(assert (= (and b!4778247 c!814639) b!4778248))

(assert (= (and b!4778247 (not c!814639)) b!4778249))

(assert (=> b!4778248 m!5753494))

(declare-fun m!5754028 () Bool)

(assert (=> b!4778248 m!5754028))

(assert (=> b!4778111 d!1527120))

(declare-fun d!1527122 () Bool)

(declare-fun res!2028246 () Bool)

(declare-fun e!2982994 () Bool)

(assert (=> d!1527122 (=> res!2028246 e!2982994)))

(assert (=> d!1527122 (= res!2028246 (is-Nil!53929 (toList!6682 (extractMap!2328 (t!361504 (toList!6681 lm!2709))))))))

(assert (=> d!1527122 (= (forall!12080 (toList!6682 (extractMap!2328 (t!361504 (toList!6681 lm!2709)))) lambda!227358) e!2982994)))

(declare-fun b!4778254 () Bool)

(declare-fun e!2982995 () Bool)

(assert (=> b!4778254 (= e!2982994 e!2982995)))

(declare-fun res!2028247 () Bool)

(assert (=> b!4778254 (=> (not res!2028247) (not e!2982995))))

(declare-fun dynLambda!21999 (Int tuple2!56372) Bool)

(assert (=> b!4778254 (= res!2028247 (dynLambda!21999 lambda!227358 (h!60343 (toList!6682 (extractMap!2328 (t!361504 (toList!6681 lm!2709)))))))))

(declare-fun b!4778255 () Bool)

(assert (=> b!4778255 (= e!2982995 (forall!12080 (t!361503 (toList!6682 (extractMap!2328 (t!361504 (toList!6681 lm!2709))))) lambda!227358))))

(assert (= (and d!1527122 (not res!2028246)) b!4778254))

(assert (= (and b!4778254 res!2028247) b!4778255))

(declare-fun b_lambda!185185 () Bool)

(assert (=> (not b_lambda!185185) (not b!4778254)))

(declare-fun m!5754030 () Bool)

(assert (=> b!4778254 m!5754030))

(declare-fun m!5754032 () Bool)

(assert (=> b!4778255 m!5754032))

(assert (=> b!4778087 d!1527122))

(declare-fun d!1527124 () Bool)

(declare-fun res!2028248 () Bool)

(declare-fun e!2982996 () Bool)

(assert (=> d!1527124 (=> res!2028248 e!2982996)))

(assert (=> d!1527124 (= res!2028248 (is-Nil!53930 (t!361504 (toList!6681 lm!2709))))))

(assert (=> d!1527124 (= (forall!12077 (t!361504 (toList!6681 lm!2709)) lambda!227282) e!2982996)))

(declare-fun b!4778256 () Bool)

(declare-fun e!2982997 () Bool)

(assert (=> b!4778256 (= e!2982996 e!2982997)))

(declare-fun res!2028249 () Bool)

(assert (=> b!4778256 (=> (not res!2028249) (not e!2982997))))

(assert (=> b!4778256 (= res!2028249 (dynLambda!21996 lambda!227282 (h!60344 (t!361504 (toList!6681 lm!2709)))))))

(declare-fun b!4778257 () Bool)

(assert (=> b!4778257 (= e!2982997 (forall!12077 (t!361504 (t!361504 (toList!6681 lm!2709))) lambda!227282))))

(assert (= (and d!1527124 (not res!2028248)) b!4778256))

(assert (= (and b!4778256 res!2028249) b!4778257))

(declare-fun b_lambda!185187 () Bool)

(assert (=> (not b_lambda!185187) (not b!4778256)))

(declare-fun m!5754034 () Bool)

(assert (=> b!4778256 m!5754034))

(declare-fun m!5754036 () Bool)

(assert (=> b!4778257 m!5754036))

(assert (=> b!4778037 d!1527124))

(declare-fun d!1527126 () Bool)

(declare-fun res!2028250 () Bool)

(declare-fun e!2982998 () Bool)

(assert (=> d!1527126 (=> res!2028250 e!2982998)))

(assert (=> d!1527126 (= res!2028250 (or (is-Nil!53930 (t!361504 (toList!6681 lm!2709))) (is-Nil!53930 (t!361504 (t!361504 (toList!6681 lm!2709))))))))

(assert (=> d!1527126 (= (isStrictlySorted!836 (t!361504 (toList!6681 lm!2709))) e!2982998)))

(declare-fun b!4778258 () Bool)

(declare-fun e!2982999 () Bool)

(assert (=> b!4778258 (= e!2982998 e!2982999)))

(declare-fun res!2028251 () Bool)

(assert (=> b!4778258 (=> (not res!2028251) (not e!2982999))))

(assert (=> b!4778258 (= res!2028251 (bvslt (_1!31481 (h!60344 (t!361504 (toList!6681 lm!2709)))) (_1!31481 (h!60344 (t!361504 (t!361504 (toList!6681 lm!2709)))))))))

(declare-fun b!4778259 () Bool)

(assert (=> b!4778259 (= e!2982999 (isStrictlySorted!836 (t!361504 (t!361504 (toList!6681 lm!2709)))))))

(assert (= (and d!1527126 (not res!2028250)) b!4778258))

(assert (= (and b!4778258 res!2028251) b!4778259))

(declare-fun m!5754038 () Bool)

(assert (=> b!4778259 m!5754038))

(assert (=> b!4778009 d!1527126))

(declare-fun d!1527128 () Bool)

(assert (=> d!1527128 (= (isEmpty!29334 (getValueByKey!2257 (toList!6681 lm!2709) lt!1940876)) (not (is-Some!12887 (getValueByKey!2257 (toList!6681 lm!2709) lt!1940876))))))

(assert (=> d!1527014 d!1527128))

(declare-fun d!1527130 () Bool)

(declare-fun res!2028252 () Bool)

(declare-fun e!2983000 () Bool)

(assert (=> d!1527130 (=> res!2028252 e!2983000)))

(assert (=> d!1527130 (= res!2028252 (is-Nil!53929 (ite c!814617 (toList!6682 (extractMap!2328 (t!361504 (toList!6681 lm!2709)))) (toList!6682 lt!1941084))))))

(assert (=> d!1527130 (= (forall!12080 (ite c!814617 (toList!6682 (extractMap!2328 (t!361504 (toList!6681 lm!2709)))) (toList!6682 lt!1941084)) (ite c!814617 lambda!227356 lambda!227358)) e!2983000)))

(declare-fun b!4778260 () Bool)

(declare-fun e!2983001 () Bool)

(assert (=> b!4778260 (= e!2983000 e!2983001)))

(declare-fun res!2028253 () Bool)

(assert (=> b!4778260 (=> (not res!2028253) (not e!2983001))))

(assert (=> b!4778260 (= res!2028253 (dynLambda!21999 (ite c!814617 lambda!227356 lambda!227358) (h!60343 (ite c!814617 (toList!6682 (extractMap!2328 (t!361504 (toList!6681 lm!2709)))) (toList!6682 lt!1941084)))))))

(declare-fun b!4778261 () Bool)

(assert (=> b!4778261 (= e!2983001 (forall!12080 (t!361503 (ite c!814617 (toList!6682 (extractMap!2328 (t!361504 (toList!6681 lm!2709)))) (toList!6682 lt!1941084))) (ite c!814617 lambda!227356 lambda!227358)))))

(assert (= (and d!1527130 (not res!2028252)) b!4778260))

(assert (= (and b!4778260 res!2028253) b!4778261))

(declare-fun b_lambda!185189 () Bool)

(assert (=> (not b_lambda!185189) (not b!4778260)))

(declare-fun m!5754040 () Bool)

(assert (=> b!4778260 m!5754040))

(declare-fun m!5754042 () Bool)

(assert (=> b!4778261 m!5754042))

(assert (=> bm!334621 d!1527130))

(declare-fun d!1527132 () Bool)

(declare-fun res!2028258 () Bool)

(declare-fun e!2983006 () Bool)

(assert (=> d!1527132 (=> res!2028258 e!2983006)))

(assert (=> d!1527132 (= res!2028258 (or (is-Nil!53929 (toList!6682 lt!1940932)) (is-Nil!53929 (t!361503 (toList!6682 lt!1940932)))))))

(assert (=> d!1527132 (= (noDuplicatedKeys!415 (toList!6682 lt!1940932)) e!2983006)))

(declare-fun b!4778266 () Bool)

(declare-fun e!2983007 () Bool)

(assert (=> b!4778266 (= e!2983006 e!2983007)))

(declare-fun res!2028259 () Bool)

(assert (=> b!4778266 (=> (not res!2028259) (not e!2983007))))

(assert (=> b!4778266 (= res!2028259 (not (containsKey!3769 (t!361503 (toList!6682 lt!1940932)) (_1!31480 (h!60343 (toList!6682 lt!1940932))))))))

(declare-fun b!4778267 () Bool)

(assert (=> b!4778267 (= e!2983007 (noDuplicatedKeys!415 (t!361503 (toList!6682 lt!1940932))))))

(assert (= (and d!1527132 (not res!2028258)) b!4778266))

(assert (= (and b!4778266 res!2028259) b!4778267))

(declare-fun m!5754044 () Bool)

(assert (=> b!4778266 m!5754044))

(declare-fun m!5754046 () Bool)

(assert (=> b!4778267 m!5754046))

(assert (=> d!1527008 d!1527132))

(declare-fun d!1527134 () Bool)

(assert (=> d!1527134 (= (length!640 lt!1941001) (size!36355 lt!1941001))))

(declare-fun bs!1151056 () Bool)

(assert (= bs!1151056 d!1527134))

(declare-fun m!5754048 () Bool)

(assert (=> bs!1151056 m!5754048))

(assert (=> b!4777993 d!1527134))

(assert (=> b!4777993 d!1527106))

(declare-fun d!1527136 () Bool)

(declare-fun res!2028260 () Bool)

(declare-fun e!2983008 () Bool)

(assert (=> d!1527136 (=> res!2028260 e!2983008)))

(assert (=> d!1527136 (= res!2028260 (and (is-Cons!53929 (t!361503 (toList!6682 (extractMap!2328 (toList!6681 lm!2709))))) (= (_1!31480 (h!60343 (t!361503 (toList!6682 (extractMap!2328 (toList!6681 lm!2709)))))) key!6641)))))

(assert (=> d!1527136 (= (containsKey!3769 (t!361503 (toList!6682 (extractMap!2328 (toList!6681 lm!2709)))) key!6641) e!2983008)))

(declare-fun b!4778268 () Bool)

(declare-fun e!2983009 () Bool)

(assert (=> b!4778268 (= e!2983008 e!2983009)))

(declare-fun res!2028261 () Bool)

(assert (=> b!4778268 (=> (not res!2028261) (not e!2983009))))

(assert (=> b!4778268 (= res!2028261 (is-Cons!53929 (t!361503 (toList!6682 (extractMap!2328 (toList!6681 lm!2709))))))))

(declare-fun b!4778269 () Bool)

(assert (=> b!4778269 (= e!2983009 (containsKey!3769 (t!361503 (t!361503 (toList!6682 (extractMap!2328 (toList!6681 lm!2709))))) key!6641))))

(assert (= (and d!1527136 (not res!2028260)) b!4778268))

(assert (= (and b!4778268 res!2028261) b!4778269))

(declare-fun m!5754050 () Bool)

(assert (=> b!4778269 m!5754050))

(assert (=> b!4778029 d!1527136))

(declare-fun d!1527138 () Bool)

(declare-fun res!2028262 () Bool)

(declare-fun e!2983010 () Bool)

(assert (=> d!1527138 (=> res!2028262 e!2983010)))

(assert (=> d!1527138 (= res!2028262 (is-Nil!53929 (ite c!814617 (toList!6682 (extractMap!2328 (t!361504 (toList!6681 lm!2709)))) (t!361503 (_2!31481 (h!60344 (toList!6681 lm!2709)))))))))

(assert (=> d!1527138 (= (forall!12080 (ite c!814617 (toList!6682 (extractMap!2328 (t!361504 (toList!6681 lm!2709)))) (t!361503 (_2!31481 (h!60344 (toList!6681 lm!2709))))) (ite c!814617 lambda!227356 lambda!227358)) e!2983010)))

(declare-fun b!4778270 () Bool)

(declare-fun e!2983011 () Bool)

(assert (=> b!4778270 (= e!2983010 e!2983011)))

(declare-fun res!2028263 () Bool)

(assert (=> b!4778270 (=> (not res!2028263) (not e!2983011))))

(assert (=> b!4778270 (= res!2028263 (dynLambda!21999 (ite c!814617 lambda!227356 lambda!227358) (h!60343 (ite c!814617 (toList!6682 (extractMap!2328 (t!361504 (toList!6681 lm!2709)))) (t!361503 (_2!31481 (h!60344 (toList!6681 lm!2709))))))))))

(declare-fun b!4778271 () Bool)

(assert (=> b!4778271 (= e!2983011 (forall!12080 (t!361503 (ite c!814617 (toList!6682 (extractMap!2328 (t!361504 (toList!6681 lm!2709)))) (t!361503 (_2!31481 (h!60344 (toList!6681 lm!2709)))))) (ite c!814617 lambda!227356 lambda!227358)))))

(assert (= (and d!1527138 (not res!2028262)) b!4778270))

(assert (= (and b!4778270 res!2028263) b!4778271))

(declare-fun b_lambda!185191 () Bool)

(assert (=> (not b_lambda!185191) (not b!4778270)))

(declare-fun m!5754052 () Bool)

(assert (=> b!4778270 m!5754052))

(declare-fun m!5754054 () Bool)

(assert (=> b!4778271 m!5754054))

(assert (=> bm!334622 d!1527138))

(declare-fun b!4778274 () Bool)

(declare-fun e!2983013 () Option!12890)

(assert (=> b!4778274 (= e!2983013 (getValueByKey!2259 (t!361503 (t!361503 (toList!6682 (extractMap!2328 (toList!6681 lm!2709))))) key!6641))))

(declare-fun b!4778275 () Bool)

(assert (=> b!4778275 (= e!2983013 None!12889)))

(declare-fun b!4778272 () Bool)

(declare-fun e!2983012 () Option!12890)

(assert (=> b!4778272 (= e!2983012 (Some!12889 (_2!31480 (h!60343 (t!361503 (toList!6682 (extractMap!2328 (toList!6681 lm!2709))))))))))

(declare-fun d!1527140 () Bool)

(declare-fun c!814640 () Bool)

(assert (=> d!1527140 (= c!814640 (and (is-Cons!53929 (t!361503 (toList!6682 (extractMap!2328 (toList!6681 lm!2709))))) (= (_1!31480 (h!60343 (t!361503 (toList!6682 (extractMap!2328 (toList!6681 lm!2709)))))) key!6641)))))

(assert (=> d!1527140 (= (getValueByKey!2259 (t!361503 (toList!6682 (extractMap!2328 (toList!6681 lm!2709)))) key!6641) e!2983012)))

(declare-fun b!4778273 () Bool)

(assert (=> b!4778273 (= e!2983012 e!2983013)))

(declare-fun c!814641 () Bool)

(assert (=> b!4778273 (= c!814641 (and (is-Cons!53929 (t!361503 (toList!6682 (extractMap!2328 (toList!6681 lm!2709))))) (not (= (_1!31480 (h!60343 (t!361503 (toList!6682 (extractMap!2328 (toList!6681 lm!2709)))))) key!6641))))))

(assert (= (and d!1527140 c!814640) b!4778272))

(assert (= (and d!1527140 (not c!814640)) b!4778273))

(assert (= (and b!4778273 c!814641) b!4778274))

(assert (= (and b!4778273 (not c!814641)) b!4778275))

(declare-fun m!5754056 () Bool)

(assert (=> b!4778274 m!5754056))

(assert (=> b!4778022 d!1527140))

(declare-fun d!1527142 () Bool)

(assert (=> d!1527142 (= (invariantList!1685 (toList!6682 lt!1941090)) (noDuplicatedKeys!415 (toList!6682 lt!1941090)))))

(declare-fun bs!1151057 () Bool)

(assert (= bs!1151057 d!1527142))

(declare-fun m!5754058 () Bool)

(assert (=> bs!1151057 m!5754058))

(assert (=> d!1527000 d!1527142))

(declare-fun d!1527144 () Bool)

(declare-fun res!2028264 () Bool)

(declare-fun e!2983014 () Bool)

(assert (=> d!1527144 (=> res!2028264 e!2983014)))

(assert (=> d!1527144 (= res!2028264 (is-Nil!53930 (t!361504 (toList!6681 lm!2709))))))

(assert (=> d!1527144 (= (forall!12077 (t!361504 (toList!6681 lm!2709)) lambda!227360) e!2983014)))

(declare-fun b!4778276 () Bool)

(declare-fun e!2983015 () Bool)

(assert (=> b!4778276 (= e!2983014 e!2983015)))

(declare-fun res!2028265 () Bool)

(assert (=> b!4778276 (=> (not res!2028265) (not e!2983015))))

(assert (=> b!4778276 (= res!2028265 (dynLambda!21996 lambda!227360 (h!60344 (t!361504 (toList!6681 lm!2709)))))))

(declare-fun b!4778277 () Bool)

(assert (=> b!4778277 (= e!2983015 (forall!12077 (t!361504 (t!361504 (toList!6681 lm!2709))) lambda!227360))))

(assert (= (and d!1527144 (not res!2028264)) b!4778276))

(assert (= (and b!4778276 res!2028265) b!4778277))

(declare-fun b_lambda!185193 () Bool)

(assert (=> (not b_lambda!185193) (not b!4778276)))

(declare-fun m!5754060 () Bool)

(assert (=> b!4778276 m!5754060))

(declare-fun m!5754062 () Bool)

(assert (=> b!4778277 m!5754062))

(assert (=> d!1527000 d!1527144))

(assert (=> bs!1151016 d!1526974))

(declare-fun d!1527146 () Bool)

(declare-fun res!2028266 () Bool)

(declare-fun e!2983016 () Bool)

(assert (=> d!1527146 (=> res!2028266 e!2983016)))

(assert (=> d!1527146 (= res!2028266 (is-Nil!53930 (t!361504 (t!361504 (toList!6681 lm!2709)))))))

(assert (=> d!1527146 (= (forall!12077 (t!361504 (t!361504 (toList!6681 lm!2709))) lambda!227276) e!2983016)))

(declare-fun b!4778278 () Bool)

(declare-fun e!2983017 () Bool)

(assert (=> b!4778278 (= e!2983016 e!2983017)))

(declare-fun res!2028267 () Bool)

(assert (=> b!4778278 (=> (not res!2028267) (not e!2983017))))

(assert (=> b!4778278 (= res!2028267 (dynLambda!21996 lambda!227276 (h!60344 (t!361504 (t!361504 (toList!6681 lm!2709))))))))

(declare-fun b!4778279 () Bool)

(assert (=> b!4778279 (= e!2983017 (forall!12077 (t!361504 (t!361504 (t!361504 (toList!6681 lm!2709)))) lambda!227276))))

(assert (= (and d!1527146 (not res!2028266)) b!4778278))

(assert (= (and b!4778278 res!2028267) b!4778279))

(declare-fun b_lambda!185195 () Bool)

(assert (=> (not b_lambda!185195) (not b!4778278)))

(declare-fun m!5754064 () Bool)

(assert (=> b!4778278 m!5754064))

(declare-fun m!5754066 () Bool)

(assert (=> b!4778279 m!5754066))

(assert (=> b!4778110 d!1527146))

(declare-fun d!1527148 () Bool)

(declare-fun res!2028268 () Bool)

(declare-fun e!2983018 () Bool)

(assert (=> d!1527148 (=> res!2028268 e!2983018)))

(assert (=> d!1527148 (= res!2028268 (and (is-Cons!53929 (t!361503 (_2!31481 (h!60344 (toList!6681 lm!2709))))) (= (_1!31480 (h!60343 (t!361503 (_2!31481 (h!60344 (toList!6681 lm!2709)))))) (_1!31480 (h!60343 (_2!31481 (h!60344 (toList!6681 lm!2709))))))))))

(assert (=> d!1527148 (= (containsKey!3768 (t!361503 (_2!31481 (h!60344 (toList!6681 lm!2709)))) (_1!31480 (h!60343 (_2!31481 (h!60344 (toList!6681 lm!2709)))))) e!2983018)))

(declare-fun b!4778280 () Bool)

(declare-fun e!2983019 () Bool)

(assert (=> b!4778280 (= e!2983018 e!2983019)))

(declare-fun res!2028269 () Bool)

(assert (=> b!4778280 (=> (not res!2028269) (not e!2983019))))

(assert (=> b!4778280 (= res!2028269 (is-Cons!53929 (t!361503 (_2!31481 (h!60344 (toList!6681 lm!2709))))))))

(declare-fun b!4778281 () Bool)

(assert (=> b!4778281 (= e!2983019 (containsKey!3768 (t!361503 (t!361503 (_2!31481 (h!60344 (toList!6681 lm!2709))))) (_1!31480 (h!60343 (_2!31481 (h!60344 (toList!6681 lm!2709)))))))))

(assert (= (and d!1527148 (not res!2028268)) b!4778280))

(assert (= (and b!4778280 res!2028269) b!4778281))

(declare-fun m!5754068 () Bool)

(assert (=> b!4778281 m!5754068))

(assert (=> b!4778034 d!1527148))

(assert (=> b!4778108 d!1526952))

(assert (=> b!4778113 d!1527118))

(assert (=> b!4778113 d!1527120))

(declare-fun d!1527150 () Bool)

(declare-fun res!2028270 () Bool)

(declare-fun e!2983020 () Bool)

(assert (=> d!1527150 (=> res!2028270 e!2983020)))

(assert (=> d!1527150 (= res!2028270 (is-Nil!53930 (t!361504 (toList!6681 lm!2709))))))

(assert (=> d!1527150 (= (forall!12077 (t!361504 (toList!6681 lm!2709)) lambda!227294) e!2983020)))

(declare-fun b!4778282 () Bool)

(declare-fun e!2983021 () Bool)

(assert (=> b!4778282 (= e!2983020 e!2983021)))

(declare-fun res!2028271 () Bool)

(assert (=> b!4778282 (=> (not res!2028271) (not e!2983021))))

(assert (=> b!4778282 (= res!2028271 (dynLambda!21996 lambda!227294 (h!60344 (t!361504 (toList!6681 lm!2709)))))))

(declare-fun b!4778283 () Bool)

(assert (=> b!4778283 (= e!2983021 (forall!12077 (t!361504 (t!361504 (toList!6681 lm!2709))) lambda!227294))))

(assert (= (and d!1527150 (not res!2028270)) b!4778282))

(assert (= (and b!4778282 res!2028271) b!4778283))

(declare-fun b_lambda!185197 () Bool)

(assert (=> (not b_lambda!185197) (not b!4778282)))

(declare-fun m!5754070 () Bool)

(assert (=> b!4778282 m!5754070))

(declare-fun m!5754072 () Bool)

(assert (=> b!4778283 m!5754072))

(assert (=> b!4778045 d!1527150))

(declare-fun bs!1151058 () Bool)

(declare-fun d!1527152 () Bool)

(assert (= bs!1151058 (and d!1527152 d!1526984)))

(declare-fun lambda!227411 () Int)

(assert (=> bs!1151058 (= (= (extractMap!2328 (t!361504 (toList!6681 lm!2709))) lt!1941070) (= lambda!227411 lambda!227359))))

(declare-fun bs!1151059 () Bool)

(assert (= bs!1151059 (and d!1527152 b!4778085)))

(assert (=> bs!1151059 (= lambda!227411 lambda!227357)))

(declare-fun bs!1151060 () Bool)

(assert (= bs!1151060 (and d!1527152 d!1527100)))

(assert (=> bs!1151060 (not (= lambda!227411 lambda!227408))))

(declare-fun bs!1151061 () Bool)

(assert (= bs!1151061 (and d!1527152 b!4778089)))

(assert (=> bs!1151061 (= lambda!227411 lambda!227356)))

(assert (=> bs!1151059 (= (= (extractMap!2328 (t!361504 (toList!6681 lm!2709))) lt!1941083) (= lambda!227411 lambda!227358))))

(assert (=> d!1527152 true))

(assert (=> d!1527152 (forall!12080 (toList!6682 (extractMap!2328 (t!361504 (toList!6681 lm!2709)))) lambda!227411)))

(declare-fun lt!1941200 () Unit!138992)

(declare-fun choose!34192 (ListMap!6153) Unit!138992)

(assert (=> d!1527152 (= lt!1941200 (choose!34192 (extractMap!2328 (t!361504 (toList!6681 lm!2709)))))))

(assert (=> d!1527152 (= (lemmaContainsAllItsOwnKeys!916 (extractMap!2328 (t!361504 (toList!6681 lm!2709)))) lt!1941200)))

(declare-fun bs!1151062 () Bool)

(assert (= bs!1151062 d!1527152))

(declare-fun m!5754074 () Bool)

(assert (=> bs!1151062 m!5754074))

(assert (=> bs!1151062 m!5753596))

(declare-fun m!5754076 () Bool)

(assert (=> bs!1151062 m!5754076))

(assert (=> bm!334620 d!1527152))

(declare-fun bs!1151063 () Bool)

(declare-fun b!4778288 () Bool)

(assert (= bs!1151063 (and b!4778288 d!1526984)))

(declare-fun lambda!227412 () Int)

(assert (=> bs!1151063 (= (= (extractMap!2328 (t!361504 (t!361504 (toList!6681 lm!2709)))) lt!1941070) (= lambda!227412 lambda!227359))))

(declare-fun bs!1151064 () Bool)

(assert (= bs!1151064 (and b!4778288 b!4778085)))

(assert (=> bs!1151064 (= (= (extractMap!2328 (t!361504 (t!361504 (toList!6681 lm!2709)))) (extractMap!2328 (t!361504 (toList!6681 lm!2709)))) (= lambda!227412 lambda!227357))))

(declare-fun bs!1151065 () Bool)

(assert (= bs!1151065 (and b!4778288 d!1527152)))

(assert (=> bs!1151065 (= (= (extractMap!2328 (t!361504 (t!361504 (toList!6681 lm!2709)))) (extractMap!2328 (t!361504 (toList!6681 lm!2709)))) (= lambda!227412 lambda!227411))))

(declare-fun bs!1151066 () Bool)

(assert (= bs!1151066 (and b!4778288 d!1527100)))

(assert (=> bs!1151066 (not (= lambda!227412 lambda!227408))))

(declare-fun bs!1151067 () Bool)

(assert (= bs!1151067 (and b!4778288 b!4778089)))

(assert (=> bs!1151067 (= (= (extractMap!2328 (t!361504 (t!361504 (toList!6681 lm!2709)))) (extractMap!2328 (t!361504 (toList!6681 lm!2709)))) (= lambda!227412 lambda!227356))))

(assert (=> bs!1151064 (= (= (extractMap!2328 (t!361504 (t!361504 (toList!6681 lm!2709)))) lt!1941083) (= lambda!227412 lambda!227358))))

(assert (=> b!4778288 true))

(declare-fun bs!1151068 () Bool)

(declare-fun b!4778284 () Bool)

(assert (= bs!1151068 (and b!4778284 d!1526984)))

(declare-fun lambda!227413 () Int)

(assert (=> bs!1151068 (= (= (extractMap!2328 (t!361504 (t!361504 (toList!6681 lm!2709)))) lt!1941070) (= lambda!227413 lambda!227359))))

(declare-fun bs!1151069 () Bool)

(assert (= bs!1151069 (and b!4778284 b!4778085)))

(assert (=> bs!1151069 (= (= (extractMap!2328 (t!361504 (t!361504 (toList!6681 lm!2709)))) (extractMap!2328 (t!361504 (toList!6681 lm!2709)))) (= lambda!227413 lambda!227357))))

(declare-fun bs!1151070 () Bool)

(assert (= bs!1151070 (and b!4778284 b!4778288)))

(assert (=> bs!1151070 (= lambda!227413 lambda!227412)))

(declare-fun bs!1151071 () Bool)

(assert (= bs!1151071 (and b!4778284 d!1527152)))

(assert (=> bs!1151071 (= (= (extractMap!2328 (t!361504 (t!361504 (toList!6681 lm!2709)))) (extractMap!2328 (t!361504 (toList!6681 lm!2709)))) (= lambda!227413 lambda!227411))))

(declare-fun bs!1151072 () Bool)

(assert (= bs!1151072 (and b!4778284 d!1527100)))

(assert (=> bs!1151072 (not (= lambda!227413 lambda!227408))))

(declare-fun bs!1151073 () Bool)

(assert (= bs!1151073 (and b!4778284 b!4778089)))

(assert (=> bs!1151073 (= (= (extractMap!2328 (t!361504 (t!361504 (toList!6681 lm!2709)))) (extractMap!2328 (t!361504 (toList!6681 lm!2709)))) (= lambda!227413 lambda!227356))))

(assert (=> bs!1151069 (= (= (extractMap!2328 (t!361504 (t!361504 (toList!6681 lm!2709)))) lt!1941083) (= lambda!227413 lambda!227358))))

(assert (=> b!4778284 true))

(declare-fun lambda!227414 () Int)

(declare-fun lt!1941218 () ListMap!6153)

(assert (=> bs!1151068 (= (= lt!1941218 lt!1941070) (= lambda!227414 lambda!227359))))

(assert (=> bs!1151069 (= (= lt!1941218 (extractMap!2328 (t!361504 (toList!6681 lm!2709)))) (= lambda!227414 lambda!227357))))

(assert (=> bs!1151070 (= (= lt!1941218 (extractMap!2328 (t!361504 (t!361504 (toList!6681 lm!2709))))) (= lambda!227414 lambda!227412))))

(assert (=> bs!1151071 (= (= lt!1941218 (extractMap!2328 (t!361504 (toList!6681 lm!2709)))) (= lambda!227414 lambda!227411))))

(assert (=> b!4778284 (= (= lt!1941218 (extractMap!2328 (t!361504 (t!361504 (toList!6681 lm!2709))))) (= lambda!227414 lambda!227413))))

(assert (=> bs!1151072 (not (= lambda!227414 lambda!227408))))

(assert (=> bs!1151073 (= (= lt!1941218 (extractMap!2328 (t!361504 (toList!6681 lm!2709)))) (= lambda!227414 lambda!227356))))

(assert (=> bs!1151069 (= (= lt!1941218 lt!1941083) (= lambda!227414 lambda!227358))))

(assert (=> b!4778284 true))

(declare-fun bs!1151074 () Bool)

(declare-fun d!1527154 () Bool)

(assert (= bs!1151074 (and d!1527154 b!4778085)))

(declare-fun lt!1941205 () ListMap!6153)

(declare-fun lambda!227415 () Int)

(assert (=> bs!1151074 (= (= lt!1941205 (extractMap!2328 (t!361504 (toList!6681 lm!2709)))) (= lambda!227415 lambda!227357))))

(declare-fun bs!1151075 () Bool)

(assert (= bs!1151075 (and d!1527154 b!4778288)))

(assert (=> bs!1151075 (= (= lt!1941205 (extractMap!2328 (t!361504 (t!361504 (toList!6681 lm!2709))))) (= lambda!227415 lambda!227412))))

(declare-fun bs!1151076 () Bool)

(assert (= bs!1151076 (and d!1527154 d!1527152)))

(assert (=> bs!1151076 (= (= lt!1941205 (extractMap!2328 (t!361504 (toList!6681 lm!2709)))) (= lambda!227415 lambda!227411))))

(declare-fun bs!1151077 () Bool)

(assert (= bs!1151077 (and d!1527154 b!4778284)))

(assert (=> bs!1151077 (= (= lt!1941205 (extractMap!2328 (t!361504 (t!361504 (toList!6681 lm!2709))))) (= lambda!227415 lambda!227413))))

(declare-fun bs!1151078 () Bool)

(assert (= bs!1151078 (and d!1527154 d!1527100)))

(assert (=> bs!1151078 (not (= lambda!227415 lambda!227408))))

(declare-fun bs!1151079 () Bool)

(assert (= bs!1151079 (and d!1527154 d!1526984)))

(assert (=> bs!1151079 (= (= lt!1941205 lt!1941070) (= lambda!227415 lambda!227359))))

(assert (=> bs!1151077 (= (= lt!1941205 lt!1941218) (= lambda!227415 lambda!227414))))

(declare-fun bs!1151080 () Bool)

(assert (= bs!1151080 (and d!1527154 b!4778089)))

(assert (=> bs!1151080 (= (= lt!1941205 (extractMap!2328 (t!361504 (toList!6681 lm!2709)))) (= lambda!227415 lambda!227356))))

(assert (=> bs!1151074 (= (= lt!1941205 lt!1941083) (= lambda!227415 lambda!227358))))

(assert (=> d!1527154 true))

(declare-fun e!2983024 () ListMap!6153)

(assert (=> b!4778284 (= e!2983024 lt!1941218)))

(declare-fun lt!1941219 () ListMap!6153)

(assert (=> b!4778284 (= lt!1941219 (+!2460 (extractMap!2328 (t!361504 (t!361504 (toList!6681 lm!2709)))) (h!60343 (_2!31481 (h!60344 (t!361504 (toList!6681 lm!2709)))))))))

(assert (=> b!4778284 (= lt!1941218 (addToMapMapFromBucket!1650 (t!361503 (_2!31481 (h!60344 (t!361504 (toList!6681 lm!2709))))) (+!2460 (extractMap!2328 (t!361504 (t!361504 (toList!6681 lm!2709)))) (h!60343 (_2!31481 (h!60344 (t!361504 (toList!6681 lm!2709))))))))))

(declare-fun lt!1941213 () Unit!138992)

(declare-fun call!334637 () Unit!138992)

(assert (=> b!4778284 (= lt!1941213 call!334637)))

(assert (=> b!4778284 (forall!12080 (toList!6682 (extractMap!2328 (t!361504 (t!361504 (toList!6681 lm!2709))))) lambda!227413)))

(declare-fun lt!1941206 () Unit!138992)

(assert (=> b!4778284 (= lt!1941206 lt!1941213)))

(assert (=> b!4778284 (forall!12080 (toList!6682 lt!1941219) lambda!227414)))

(declare-fun lt!1941214 () Unit!138992)

(declare-fun Unit!139034 () Unit!138992)

(assert (=> b!4778284 (= lt!1941214 Unit!139034)))

(declare-fun call!334639 () Bool)

(assert (=> b!4778284 call!334639))

(declare-fun lt!1941211 () Unit!138992)

(declare-fun Unit!139035 () Unit!138992)

(assert (=> b!4778284 (= lt!1941211 Unit!139035)))

(declare-fun lt!1941207 () Unit!138992)

(declare-fun Unit!139036 () Unit!138992)

(assert (=> b!4778284 (= lt!1941207 Unit!139036)))

(declare-fun lt!1941202 () Unit!138992)

(assert (=> b!4778284 (= lt!1941202 (forallContained!4025 (toList!6682 lt!1941219) lambda!227414 (h!60343 (_2!31481 (h!60344 (t!361504 (toList!6681 lm!2709)))))))))

(assert (=> b!4778284 (contains!17426 lt!1941219 (_1!31480 (h!60343 (_2!31481 (h!60344 (t!361504 (toList!6681 lm!2709)))))))))

(declare-fun lt!1941204 () Unit!138992)

(declare-fun Unit!139037 () Unit!138992)

(assert (=> b!4778284 (= lt!1941204 Unit!139037)))

(assert (=> b!4778284 (contains!17426 lt!1941218 (_1!31480 (h!60343 (_2!31481 (h!60344 (t!361504 (toList!6681 lm!2709)))))))))

(declare-fun lt!1941220 () Unit!138992)

(declare-fun Unit!139038 () Unit!138992)

(assert (=> b!4778284 (= lt!1941220 Unit!139038)))

(assert (=> b!4778284 (forall!12080 (_2!31481 (h!60344 (t!361504 (toList!6681 lm!2709)))) lambda!227414)))

(declare-fun lt!1941216 () Unit!138992)

(declare-fun Unit!139039 () Unit!138992)

(assert (=> b!4778284 (= lt!1941216 Unit!139039)))

(declare-fun call!334638 () Bool)

(assert (=> b!4778284 call!334638))

(declare-fun lt!1941210 () Unit!138992)

(declare-fun Unit!139040 () Unit!138992)

(assert (=> b!4778284 (= lt!1941210 Unit!139040)))

(declare-fun lt!1941215 () Unit!138992)

(declare-fun Unit!139041 () Unit!138992)

(assert (=> b!4778284 (= lt!1941215 Unit!139041)))

(declare-fun lt!1941212 () Unit!138992)

(assert (=> b!4778284 (= lt!1941212 (addForallContainsKeyThenBeforeAdding!915 (extractMap!2328 (t!361504 (t!361504 (toList!6681 lm!2709)))) lt!1941218 (_1!31480 (h!60343 (_2!31481 (h!60344 (t!361504 (toList!6681 lm!2709)))))) (_2!31480 (h!60343 (_2!31481 (h!60344 (t!361504 (toList!6681 lm!2709))))))))))

(assert (=> b!4778284 (forall!12080 (toList!6682 (extractMap!2328 (t!361504 (t!361504 (toList!6681 lm!2709))))) lambda!227414)))

(declare-fun lt!1941217 () Unit!138992)

(assert (=> b!4778284 (= lt!1941217 lt!1941212)))

(assert (=> b!4778284 (forall!12080 (toList!6682 (extractMap!2328 (t!361504 (t!361504 (toList!6681 lm!2709))))) lambda!227414)))

(declare-fun lt!1941208 () Unit!138992)

(declare-fun Unit!139042 () Unit!138992)

(assert (=> b!4778284 (= lt!1941208 Unit!139042)))

(declare-fun res!2028273 () Bool)

(assert (=> b!4778284 (= res!2028273 (forall!12080 (_2!31481 (h!60344 (t!361504 (toList!6681 lm!2709)))) lambda!227414))))

(declare-fun e!2983023 () Bool)

(assert (=> b!4778284 (=> (not res!2028273) (not e!2983023))))

(assert (=> b!4778284 e!2983023))

(declare-fun lt!1941221 () Unit!138992)

(declare-fun Unit!139043 () Unit!138992)

(assert (=> b!4778284 (= lt!1941221 Unit!139043)))

(declare-fun bm!334632 () Bool)

(assert (=> bm!334632 (= call!334637 (lemmaContainsAllItsOwnKeys!916 (extractMap!2328 (t!361504 (t!361504 (toList!6681 lm!2709))))))))

(declare-fun b!4778285 () Bool)

(declare-fun res!2028274 () Bool)

(declare-fun e!2983022 () Bool)

(assert (=> b!4778285 (=> (not res!2028274) (not e!2983022))))

(assert (=> b!4778285 (= res!2028274 (forall!12080 (toList!6682 (extractMap!2328 (t!361504 (t!361504 (toList!6681 lm!2709))))) lambda!227415))))

(declare-fun b!4778286 () Bool)

(assert (=> b!4778286 (= e!2983023 (forall!12080 (toList!6682 (extractMap!2328 (t!361504 (t!361504 (toList!6681 lm!2709))))) lambda!227414))))

(declare-fun b!4778287 () Bool)

(assert (=> b!4778287 (= e!2983022 (invariantList!1685 (toList!6682 lt!1941205)))))

(declare-fun bm!334633 () Bool)

(declare-fun c!814642 () Bool)

(assert (=> bm!334633 (= call!334638 (forall!12080 (ite c!814642 (toList!6682 (extractMap!2328 (t!361504 (t!361504 (toList!6681 lm!2709))))) (toList!6682 lt!1941219)) (ite c!814642 lambda!227412 lambda!227414)))))

(assert (=> d!1527154 e!2983022))

(declare-fun res!2028272 () Bool)

(assert (=> d!1527154 (=> (not res!2028272) (not e!2983022))))

(assert (=> d!1527154 (= res!2028272 (forall!12080 (_2!31481 (h!60344 (t!361504 (toList!6681 lm!2709)))) lambda!227415))))

(assert (=> d!1527154 (= lt!1941205 e!2983024)))

(assert (=> d!1527154 (= c!814642 (is-Nil!53929 (_2!31481 (h!60344 (t!361504 (toList!6681 lm!2709))))))))

(assert (=> d!1527154 (noDuplicateKeys!2282 (_2!31481 (h!60344 (t!361504 (toList!6681 lm!2709)))))))

(assert (=> d!1527154 (= (addToMapMapFromBucket!1650 (_2!31481 (h!60344 (t!361504 (toList!6681 lm!2709)))) (extractMap!2328 (t!361504 (t!361504 (toList!6681 lm!2709))))) lt!1941205)))

(assert (=> b!4778288 (= e!2983024 (extractMap!2328 (t!361504 (t!361504 (toList!6681 lm!2709)))))))

(declare-fun lt!1941201 () Unit!138992)

(assert (=> b!4778288 (= lt!1941201 call!334637)))

(assert (=> b!4778288 call!334639))

(declare-fun lt!1941209 () Unit!138992)

(assert (=> b!4778288 (= lt!1941209 lt!1941201)))

(assert (=> b!4778288 call!334638))

(declare-fun lt!1941203 () Unit!138992)

(declare-fun Unit!139044 () Unit!138992)

(assert (=> b!4778288 (= lt!1941203 Unit!139044)))

(declare-fun bm!334634 () Bool)

(assert (=> bm!334634 (= call!334639 (forall!12080 (ite c!814642 (toList!6682 (extractMap!2328 (t!361504 (t!361504 (toList!6681 lm!2709))))) (t!361503 (_2!31481 (h!60344 (t!361504 (toList!6681 lm!2709)))))) (ite c!814642 lambda!227412 lambda!227414)))))

(assert (= (and d!1527154 c!814642) b!4778288))

(assert (= (and d!1527154 (not c!814642)) b!4778284))

(assert (= (and b!4778284 res!2028273) b!4778286))

(assert (= (or b!4778288 b!4778284) bm!334632))

(assert (= (or b!4778288 b!4778284) bm!334634))

(assert (= (or b!4778288 b!4778284) bm!334633))

(assert (= (and d!1527154 res!2028272) b!4778285))

(assert (= (and b!4778285 res!2028274) b!4778287))

(assert (=> bm!334632 m!5753822))

(declare-fun m!5754078 () Bool)

(assert (=> bm!334632 m!5754078))

(declare-fun m!5754080 () Bool)

(assert (=> b!4778284 m!5754080))

(declare-fun m!5754082 () Bool)

(assert (=> b!4778284 m!5754082))

(declare-fun m!5754084 () Bool)

(assert (=> b!4778284 m!5754084))

(assert (=> b!4778284 m!5753822))

(assert (=> b!4778284 m!5754082))

(declare-fun m!5754086 () Bool)

(assert (=> b!4778284 m!5754086))

(assert (=> b!4778284 m!5754080))

(declare-fun m!5754088 () Bool)

(assert (=> b!4778284 m!5754088))

(declare-fun m!5754090 () Bool)

(assert (=> b!4778284 m!5754090))

(declare-fun m!5754092 () Bool)

(assert (=> b!4778284 m!5754092))

(assert (=> b!4778284 m!5753822))

(declare-fun m!5754094 () Bool)

(assert (=> b!4778284 m!5754094))

(declare-fun m!5754096 () Bool)

(assert (=> b!4778284 m!5754096))

(declare-fun m!5754098 () Bool)

(assert (=> b!4778284 m!5754098))

(assert (=> b!4778284 m!5754086))

(assert (=> b!4778286 m!5754086))

(declare-fun m!5754100 () Bool)

(assert (=> b!4778287 m!5754100))

(declare-fun m!5754102 () Bool)

(assert (=> b!4778285 m!5754102))

(declare-fun m!5754104 () Bool)

(assert (=> bm!334633 m!5754104))

(declare-fun m!5754106 () Bool)

(assert (=> d!1527154 m!5754106))

(assert (=> d!1527154 m!5753856))

(declare-fun m!5754108 () Bool)

(assert (=> bm!334634 m!5754108))

(assert (=> b!4778096 d!1527154))

(declare-fun bs!1151081 () Bool)

(declare-fun d!1527156 () Bool)

(assert (= bs!1151081 (and d!1527156 start!489984)))

(declare-fun lambda!227416 () Int)

(assert (=> bs!1151081 (= lambda!227416 lambda!227276)))

(declare-fun bs!1151082 () Bool)

(assert (= bs!1151082 (and d!1527156 d!1526926)))

(assert (=> bs!1151082 (= lambda!227416 lambda!227291)))

(declare-fun bs!1151083 () Bool)

(assert (= bs!1151083 (and d!1527156 d!1526920)))

(assert (=> bs!1151083 (= lambda!227416 lambda!227288)))

(declare-fun bs!1151084 () Bool)

(assert (= bs!1151084 (and d!1527156 d!1527000)))

(assert (=> bs!1151084 (= lambda!227416 lambda!227360)))

(declare-fun bs!1151085 () Bool)

(assert (= bs!1151085 (and d!1527156 d!1526928)))

(assert (=> bs!1151085 (not (= lambda!227416 lambda!227294))))

(declare-fun bs!1151086 () Bool)

(assert (= bs!1151086 (and d!1527156 d!1526906)))

(assert (=> bs!1151086 (= lambda!227416 lambda!227282)))

(declare-fun lt!1941222 () ListMap!6153)

(assert (=> d!1527156 (invariantList!1685 (toList!6682 lt!1941222))))

(declare-fun e!2983025 () ListMap!6153)

(assert (=> d!1527156 (= lt!1941222 e!2983025)))

(declare-fun c!814643 () Bool)

(assert (=> d!1527156 (= c!814643 (is-Cons!53930 (t!361504 (t!361504 (toList!6681 lm!2709)))))))

(assert (=> d!1527156 (forall!12077 (t!361504 (t!361504 (toList!6681 lm!2709))) lambda!227416)))

(assert (=> d!1527156 (= (extractMap!2328 (t!361504 (t!361504 (toList!6681 lm!2709)))) lt!1941222)))

(declare-fun b!4778289 () Bool)

(assert (=> b!4778289 (= e!2983025 (addToMapMapFromBucket!1650 (_2!31481 (h!60344 (t!361504 (t!361504 (toList!6681 lm!2709))))) (extractMap!2328 (t!361504 (t!361504 (t!361504 (toList!6681 lm!2709)))))))))

(declare-fun b!4778290 () Bool)

(assert (=> b!4778290 (= e!2983025 (ListMap!6154 Nil!53929))))

(assert (= (and d!1527156 c!814643) b!4778289))

(assert (= (and d!1527156 (not c!814643)) b!4778290))

(declare-fun m!5754110 () Bool)

(assert (=> d!1527156 m!5754110))

(declare-fun m!5754112 () Bool)

(assert (=> d!1527156 m!5754112))

(declare-fun m!5754114 () Bool)

(assert (=> b!4778289 m!5754114))

(assert (=> b!4778289 m!5754114))

(declare-fun m!5754116 () Bool)

(assert (=> b!4778289 m!5754116))

(assert (=> b!4778096 d!1527156))

(assert (=> d!1526962 d!1526964))

(assert (=> d!1526962 d!1526966))

(declare-fun d!1527158 () Bool)

(assert (=> d!1527158 (isDefined!10032 (getValueByKey!2259 (toList!6682 (extractMap!2328 (toList!6681 lm!2709))) key!6641))))

(assert (=> d!1527158 true))

(declare-fun _$29!760 () Unit!138992)

(assert (=> d!1527158 (= (choose!34182 (toList!6682 (extractMap!2328 (toList!6681 lm!2709))) key!6641) _$29!760)))

(declare-fun bs!1151087 () Bool)

(assert (= bs!1151087 d!1527158))

(assert (=> bs!1151087 m!5753564))

(assert (=> bs!1151087 m!5753564))

(assert (=> bs!1151087 m!5753566))

(assert (=> d!1526962 d!1527158))

(assert (=> d!1526962 d!1527112))

(declare-fun d!1527160 () Bool)

(declare-fun c!814646 () Bool)

(assert (=> d!1527160 (= c!814646 (is-Nil!53933 e!2982726))))

(declare-fun e!2983028 () (Set K!15492))

(assert (=> d!1527160 (= (content!9626 e!2982726) e!2983028)))

(declare-fun b!4778295 () Bool)

(assert (=> b!4778295 (= e!2983028 (as set.empty (Set K!15492)))))

(declare-fun b!4778296 () Bool)

(assert (=> b!4778296 (= e!2983028 (set.union (set.insert (h!60347 e!2982726) (as set.empty (Set K!15492))) (content!9626 (t!361507 e!2982726))))))

(assert (= (and d!1527160 c!814646) b!4778295))

(assert (= (and d!1527160 (not c!814646)) b!4778296))

(declare-fun m!5754118 () Bool)

(assert (=> b!4778296 m!5754118))

(assert (=> b!4778296 m!5753998))

(assert (=> d!1526956 d!1527160))

(declare-fun d!1527162 () Bool)

(declare-fun res!2028275 () Bool)

(declare-fun e!2983029 () Bool)

(assert (=> d!1527162 (=> res!2028275 e!2983029)))

(assert (=> d!1527162 (= res!2028275 (is-Nil!53930 (t!361504 (toList!6681 lm!2709))))))

(assert (=> d!1527162 (= (forall!12077 (t!361504 (toList!6681 lm!2709)) lambda!227291) e!2983029)))

(declare-fun b!4778297 () Bool)

(declare-fun e!2983030 () Bool)

(assert (=> b!4778297 (= e!2983029 e!2983030)))

(declare-fun res!2028276 () Bool)

(assert (=> b!4778297 (=> (not res!2028276) (not e!2983030))))

(assert (=> b!4778297 (= res!2028276 (dynLambda!21996 lambda!227291 (h!60344 (t!361504 (toList!6681 lm!2709)))))))

(declare-fun b!4778298 () Bool)

(assert (=> b!4778298 (= e!2983030 (forall!12077 (t!361504 (t!361504 (toList!6681 lm!2709))) lambda!227291))))

(assert (= (and d!1527162 (not res!2028275)) b!4778297))

(assert (= (and b!4778297 res!2028276) b!4778298))

(declare-fun b_lambda!185199 () Bool)

(assert (=> (not b_lambda!185199) (not b!4778297)))

(declare-fun m!5754120 () Bool)

(assert (=> b!4778297 m!5754120))

(declare-fun m!5754122 () Bool)

(assert (=> b!4778298 m!5754122))

(assert (=> b!4778115 d!1527162))

(declare-fun d!1527164 () Bool)

(declare-fun c!814647 () Bool)

(assert (=> d!1527164 (= c!814647 (is-Nil!53933 lt!1941001))))

(declare-fun e!2983031 () (Set K!15492))

(assert (=> d!1527164 (= (content!9626 lt!1941001) e!2983031)))

(declare-fun b!4778299 () Bool)

(assert (=> b!4778299 (= e!2983031 (as set.empty (Set K!15492)))))

(declare-fun b!4778300 () Bool)

(assert (=> b!4778300 (= e!2983031 (set.union (set.insert (h!60347 lt!1941001) (as set.empty (Set K!15492))) (content!9626 (t!361507 lt!1941001))))))

(assert (= (and d!1527164 c!814647) b!4778299))

(assert (= (and d!1527164 (not c!814647)) b!4778300))

(declare-fun m!5754124 () Bool)

(assert (=> b!4778300 m!5754124))

(declare-fun m!5754126 () Bool)

(assert (=> b!4778300 m!5754126))

(assert (=> b!4777995 d!1527164))

(declare-fun d!1527166 () Bool)

(declare-fun c!814648 () Bool)

(assert (=> d!1527166 (= c!814648 (is-Nil!53933 (map!12154 (toList!6682 (extractMap!2328 (toList!6681 lm!2709))) lambda!227321)))))

(declare-fun e!2983032 () (Set K!15492))

(assert (=> d!1527166 (= (content!9626 (map!12154 (toList!6682 (extractMap!2328 (toList!6681 lm!2709))) lambda!227321)) e!2983032)))

(declare-fun b!4778301 () Bool)

(assert (=> b!4778301 (= e!2983032 (as set.empty (Set K!15492)))))

(declare-fun b!4778302 () Bool)

(assert (=> b!4778302 (= e!2983032 (set.union (set.insert (h!60347 (map!12154 (toList!6682 (extractMap!2328 (toList!6681 lm!2709))) lambda!227321)) (as set.empty (Set K!15492))) (content!9626 (t!361507 (map!12154 (toList!6682 (extractMap!2328 (toList!6681 lm!2709))) lambda!227321)))))))

(assert (= (and d!1527166 c!814648) b!4778301))

(assert (= (and d!1527166 (not c!814648)) b!4778302))

(declare-fun m!5754128 () Bool)

(assert (=> b!4778302 m!5754128))

(declare-fun m!5754130 () Bool)

(assert (=> b!4778302 m!5754130))

(assert (=> b!4777995 d!1527166))

(declare-fun d!1527168 () Bool)

(declare-fun lt!1941225 () List!54057)

(assert (=> d!1527168 (= (size!36355 lt!1941225) (size!36356 (toList!6682 (extractMap!2328 (toList!6681 lm!2709)))))))

(declare-fun e!2983035 () List!54057)

(assert (=> d!1527168 (= lt!1941225 e!2983035)))

(declare-fun c!814651 () Bool)

(assert (=> d!1527168 (= c!814651 (is-Nil!53929 (toList!6682 (extractMap!2328 (toList!6681 lm!2709)))))))

(assert (=> d!1527168 (= (map!12154 (toList!6682 (extractMap!2328 (toList!6681 lm!2709))) lambda!227321) lt!1941225)))

(declare-fun b!4778307 () Bool)

(assert (=> b!4778307 (= e!2983035 Nil!53933)))

(declare-fun b!4778308 () Bool)

(declare-fun $colon$colon!1102 (List!54057 K!15492) List!54057)

(declare-fun dynLambda!22000 (Int tuple2!56372) K!15492)

(assert (=> b!4778308 (= e!2983035 ($colon$colon!1102 (map!12154 (t!361503 (toList!6682 (extractMap!2328 (toList!6681 lm!2709)))) lambda!227321) (dynLambda!22000 lambda!227321 (h!60343 (toList!6682 (extractMap!2328 (toList!6681 lm!2709)))))))))

(assert (= (and d!1527168 c!814651) b!4778307))

(assert (= (and d!1527168 (not c!814651)) b!4778308))

(declare-fun b_lambda!185201 () Bool)

(assert (=> (not b_lambda!185201) (not b!4778308)))

(declare-fun m!5754132 () Bool)

(assert (=> d!1527168 m!5754132))

(assert (=> d!1527168 m!5754012))

(declare-fun m!5754134 () Bool)

(assert (=> b!4778308 m!5754134))

(declare-fun m!5754136 () Bool)

(assert (=> b!4778308 m!5754136))

(assert (=> b!4778308 m!5754134))

(assert (=> b!4778308 m!5754136))

(declare-fun m!5754138 () Bool)

(assert (=> b!4778308 m!5754138))

(assert (=> b!4777995 d!1527168))

(declare-fun d!1527170 () Bool)

(declare-fun c!814652 () Bool)

(assert (=> d!1527170 (= c!814652 (is-Nil!53933 (keys!19627 (extractMap!2328 (toList!6681 lm!2709)))))))

(declare-fun e!2983036 () (Set K!15492))

(assert (=> d!1527170 (= (content!9626 (keys!19627 (extractMap!2328 (toList!6681 lm!2709)))) e!2983036)))

(declare-fun b!4778309 () Bool)

(assert (=> b!4778309 (= e!2983036 (as set.empty (Set K!15492)))))

(declare-fun b!4778310 () Bool)

(assert (=> b!4778310 (= e!2983036 (set.union (set.insert (h!60347 (keys!19627 (extractMap!2328 (toList!6681 lm!2709)))) (as set.empty (Set K!15492))) (content!9626 (t!361507 (keys!19627 (extractMap!2328 (toList!6681 lm!2709)))))))))

(assert (= (and d!1527170 c!814652) b!4778309))

(assert (= (and d!1527170 (not c!814652)) b!4778310))

(declare-fun m!5754140 () Bool)

(assert (=> b!4778310 m!5754140))

(assert (=> b!4778310 m!5753988))

(assert (=> d!1526960 d!1527170))

(declare-fun d!1527172 () Bool)

(declare-fun res!2028277 () Bool)

(declare-fun e!2983037 () Bool)

(assert (=> d!1527172 (=> res!2028277 e!2983037)))

(assert (=> d!1527172 (= res!2028277 (and (is-Cons!53930 (t!361504 (toList!6681 lm!2709))) (= (_1!31481 (h!60344 (t!361504 (toList!6681 lm!2709)))) lt!1940876)))))

(assert (=> d!1527172 (= (containsKey!3770 (t!361504 (toList!6681 lm!2709)) lt!1940876) e!2983037)))

(declare-fun b!4778311 () Bool)

(declare-fun e!2983038 () Bool)

(assert (=> b!4778311 (= e!2983037 e!2983038)))

(declare-fun res!2028278 () Bool)

(assert (=> b!4778311 (=> (not res!2028278) (not e!2983038))))

(assert (=> b!4778311 (= res!2028278 (and (or (not (is-Cons!53930 (t!361504 (toList!6681 lm!2709)))) (bvsle (_1!31481 (h!60344 (t!361504 (toList!6681 lm!2709)))) lt!1940876)) (is-Cons!53930 (t!361504 (toList!6681 lm!2709))) (bvslt (_1!31481 (h!60344 (t!361504 (toList!6681 lm!2709)))) lt!1940876)))))

(declare-fun b!4778312 () Bool)

(assert (=> b!4778312 (= e!2983038 (containsKey!3770 (t!361504 (t!361504 (toList!6681 lm!2709))) lt!1940876))))

(assert (= (and d!1527172 (not res!2028277)) b!4778311))

(assert (= (and b!4778311 res!2028278) b!4778312))

(declare-fun m!5754142 () Bool)

(assert (=> b!4778312 m!5754142))

(assert (=> b!4777986 d!1527172))

(declare-fun d!1527174 () Bool)

(declare-fun res!2028279 () Bool)

(declare-fun e!2983039 () Bool)

(assert (=> d!1527174 (=> res!2028279 e!2983039)))

(assert (=> d!1527174 (= res!2028279 (is-Nil!53929 (_2!31481 (h!60344 (toList!6681 lm!2709)))))))

(assert (=> d!1527174 (= (forall!12080 (_2!31481 (h!60344 (toList!6681 lm!2709))) lambda!227359) e!2983039)))

(declare-fun b!4778313 () Bool)

(declare-fun e!2983040 () Bool)

(assert (=> b!4778313 (= e!2983039 e!2983040)))

(declare-fun res!2028280 () Bool)

(assert (=> b!4778313 (=> (not res!2028280) (not e!2983040))))

(assert (=> b!4778313 (= res!2028280 (dynLambda!21999 lambda!227359 (h!60343 (_2!31481 (h!60344 (toList!6681 lm!2709))))))))

(declare-fun b!4778314 () Bool)

(assert (=> b!4778314 (= e!2983040 (forall!12080 (t!361503 (_2!31481 (h!60344 (toList!6681 lm!2709)))) lambda!227359))))

(assert (= (and d!1527174 (not res!2028279)) b!4778313))

(assert (= (and b!4778313 res!2028280) b!4778314))

(declare-fun b_lambda!185203 () Bool)

(assert (=> (not b_lambda!185203) (not b!4778313)))

(declare-fun m!5754144 () Bool)

(assert (=> b!4778313 m!5754144))

(declare-fun m!5754146 () Bool)

(assert (=> b!4778314 m!5754146))

(assert (=> d!1526984 d!1527174))

(assert (=> d!1526984 d!1526974))

(declare-fun bs!1151088 () Bool)

(declare-fun b!4778317 () Bool)

(assert (= bs!1151088 (and b!4778317 b!4777969)))

(declare-fun lambda!227417 () Int)

(assert (=> bs!1151088 (= (= (t!361503 (t!361503 (toList!6682 (extractMap!2328 (toList!6681 lm!2709))))) (t!361503 (toList!6682 (extractMap!2328 (toList!6681 lm!2709))))) (= lambda!227417 lambda!227312))))

(declare-fun bs!1151089 () Bool)

(assert (= bs!1151089 (and b!4778317 b!4777972)))

(assert (=> bs!1151089 (= (= (t!361503 (t!361503 (toList!6682 (extractMap!2328 (toList!6681 lm!2709))))) (Cons!53929 (h!60343 (toList!6682 (extractMap!2328 (toList!6681 lm!2709)))) (t!361503 (toList!6682 (extractMap!2328 (toList!6681 lm!2709)))))) (= lambda!227417 lambda!227313))))

(declare-fun bs!1151090 () Bool)

(assert (= bs!1151090 (and b!4778317 b!4777971)))

(assert (=> bs!1151090 (= (= (t!361503 (t!361503 (toList!6682 (extractMap!2328 (toList!6681 lm!2709))))) (toList!6682 (extractMap!2328 (toList!6681 lm!2709)))) (= lambda!227417 lambda!227314))))

(declare-fun bs!1151091 () Bool)

(assert (= bs!1151091 (and b!4778317 b!4777994)))

(assert (=> bs!1151091 (= (= (t!361503 (t!361503 (toList!6682 (extractMap!2328 (toList!6681 lm!2709))))) (toList!6682 (extractMap!2328 (toList!6681 lm!2709)))) (= lambda!227417 lambda!227320))))

(assert (=> b!4778317 true))

(declare-fun bs!1151092 () Bool)

(declare-fun b!4778320 () Bool)

(assert (= bs!1151092 (and b!4778320 b!4777994)))

(declare-fun lambda!227418 () Int)

(assert (=> bs!1151092 (= (= (Cons!53929 (h!60343 (t!361503 (toList!6682 (extractMap!2328 (toList!6681 lm!2709))))) (t!361503 (t!361503 (toList!6682 (extractMap!2328 (toList!6681 lm!2709)))))) (toList!6682 (extractMap!2328 (toList!6681 lm!2709)))) (= lambda!227418 lambda!227320))))

(declare-fun bs!1151093 () Bool)

(assert (= bs!1151093 (and b!4778320 b!4777971)))

(assert (=> bs!1151093 (= (= (Cons!53929 (h!60343 (t!361503 (toList!6682 (extractMap!2328 (toList!6681 lm!2709))))) (t!361503 (t!361503 (toList!6682 (extractMap!2328 (toList!6681 lm!2709)))))) (toList!6682 (extractMap!2328 (toList!6681 lm!2709)))) (= lambda!227418 lambda!227314))))

(declare-fun bs!1151094 () Bool)

(assert (= bs!1151094 (and b!4778320 b!4777969)))

(assert (=> bs!1151094 (= (= (Cons!53929 (h!60343 (t!361503 (toList!6682 (extractMap!2328 (toList!6681 lm!2709))))) (t!361503 (t!361503 (toList!6682 (extractMap!2328 (toList!6681 lm!2709)))))) (t!361503 (toList!6682 (extractMap!2328 (toList!6681 lm!2709))))) (= lambda!227418 lambda!227312))))

(declare-fun bs!1151095 () Bool)

(assert (= bs!1151095 (and b!4778320 b!4777972)))

(assert (=> bs!1151095 (= (= (Cons!53929 (h!60343 (t!361503 (toList!6682 (extractMap!2328 (toList!6681 lm!2709))))) (t!361503 (t!361503 (toList!6682 (extractMap!2328 (toList!6681 lm!2709)))))) (Cons!53929 (h!60343 (toList!6682 (extractMap!2328 (toList!6681 lm!2709)))) (t!361503 (toList!6682 (extractMap!2328 (toList!6681 lm!2709)))))) (= lambda!227418 lambda!227313))))

(declare-fun bs!1151096 () Bool)

(assert (= bs!1151096 (and b!4778320 b!4778317)))

(assert (=> bs!1151096 (= (= (Cons!53929 (h!60343 (t!361503 (toList!6682 (extractMap!2328 (toList!6681 lm!2709))))) (t!361503 (t!361503 (toList!6682 (extractMap!2328 (toList!6681 lm!2709)))))) (t!361503 (t!361503 (toList!6682 (extractMap!2328 (toList!6681 lm!2709)))))) (= lambda!227418 lambda!227417))))

(assert (=> b!4778320 true))

(declare-fun bs!1151097 () Bool)

(declare-fun b!4778319 () Bool)

(assert (= bs!1151097 (and b!4778319 b!4777994)))

(declare-fun lambda!227419 () Int)

(assert (=> bs!1151097 (= (= (t!361503 (toList!6682 (extractMap!2328 (toList!6681 lm!2709)))) (toList!6682 (extractMap!2328 (toList!6681 lm!2709)))) (= lambda!227419 lambda!227320))))

(declare-fun bs!1151098 () Bool)

(assert (= bs!1151098 (and b!4778319 b!4777971)))

(assert (=> bs!1151098 (= (= (t!361503 (toList!6682 (extractMap!2328 (toList!6681 lm!2709)))) (toList!6682 (extractMap!2328 (toList!6681 lm!2709)))) (= lambda!227419 lambda!227314))))

(declare-fun bs!1151099 () Bool)

(assert (= bs!1151099 (and b!4778319 b!4778320)))

(assert (=> bs!1151099 (= (= (t!361503 (toList!6682 (extractMap!2328 (toList!6681 lm!2709)))) (Cons!53929 (h!60343 (t!361503 (toList!6682 (extractMap!2328 (toList!6681 lm!2709))))) (t!361503 (t!361503 (toList!6682 (extractMap!2328 (toList!6681 lm!2709))))))) (= lambda!227419 lambda!227418))))

(declare-fun bs!1151100 () Bool)

(assert (= bs!1151100 (and b!4778319 b!4777969)))

(assert (=> bs!1151100 (= lambda!227419 lambda!227312)))

(declare-fun bs!1151101 () Bool)

(assert (= bs!1151101 (and b!4778319 b!4777972)))

(assert (=> bs!1151101 (= (= (t!361503 (toList!6682 (extractMap!2328 (toList!6681 lm!2709)))) (Cons!53929 (h!60343 (toList!6682 (extractMap!2328 (toList!6681 lm!2709)))) (t!361503 (toList!6682 (extractMap!2328 (toList!6681 lm!2709)))))) (= lambda!227419 lambda!227313))))

(declare-fun bs!1151102 () Bool)

(assert (= bs!1151102 (and b!4778319 b!4778317)))

(assert (=> bs!1151102 (= (= (t!361503 (toList!6682 (extractMap!2328 (toList!6681 lm!2709)))) (t!361503 (t!361503 (toList!6682 (extractMap!2328 (toList!6681 lm!2709)))))) (= lambda!227419 lambda!227417))))

(assert (=> b!4778319 true))

(declare-fun bs!1151103 () Bool)

(declare-fun b!4778322 () Bool)

(assert (= bs!1151103 (and b!4778322 b!4777974)))

(declare-fun lambda!227420 () Int)

(assert (=> bs!1151103 (= lambda!227420 lambda!227315)))

(declare-fun bs!1151104 () Bool)

(assert (= bs!1151104 (and b!4778322 b!4777995)))

(assert (=> bs!1151104 (= lambda!227420 lambda!227321)))

(declare-fun d!1527176 () Bool)

(declare-fun e!2983041 () Bool)

(assert (=> d!1527176 e!2983041))

(declare-fun res!2028283 () Bool)

(assert (=> d!1527176 (=> (not res!2028283) (not e!2983041))))

(declare-fun lt!1941227 () List!54057)

(assert (=> d!1527176 (= res!2028283 (noDuplicate!892 lt!1941227))))

(declare-fun e!2983044 () List!54057)

(assert (=> d!1527176 (= lt!1941227 e!2983044)))

(declare-fun c!814653 () Bool)

(assert (=> d!1527176 (= c!814653 (is-Cons!53929 (t!361503 (toList!6682 (extractMap!2328 (toList!6681 lm!2709))))))))

(assert (=> d!1527176 (invariantList!1685 (t!361503 (toList!6682 (extractMap!2328 (toList!6681 lm!2709)))))))

(assert (=> d!1527176 (= (getKeysList!1029 (t!361503 (toList!6682 (extractMap!2328 (toList!6681 lm!2709))))) lt!1941227)))

(declare-fun b!4778315 () Bool)

(declare-fun e!2983043 () Unit!138992)

(declare-fun Unit!139045 () Unit!138992)

(assert (=> b!4778315 (= e!2983043 Unit!139045)))

(declare-fun b!4778316 () Bool)

(assert (=> b!4778316 (= e!2983044 Nil!53933)))

(assert (=> b!4778317 false))

(declare-fun lt!1941228 () Unit!138992)

(assert (=> b!4778317 (= lt!1941228 (forallContained!4024 (getKeysList!1029 (t!361503 (t!361503 (toList!6682 (extractMap!2328 (toList!6681 lm!2709)))))) lambda!227417 (_1!31480 (h!60343 (t!361503 (toList!6682 (extractMap!2328 (toList!6681 lm!2709))))))))))

(declare-fun Unit!139046 () Unit!138992)

(assert (=> b!4778317 (= e!2983043 Unit!139046)))

(declare-fun b!4778318 () Bool)

(declare-fun e!2983042 () Unit!138992)

(declare-fun Unit!139047 () Unit!138992)

(assert (=> b!4778318 (= e!2983042 Unit!139047)))

(declare-fun res!2028282 () Bool)

(assert (=> b!4778319 (=> (not res!2028282) (not e!2983041))))

(assert (=> b!4778319 (= res!2028282 (forall!12079 lt!1941227 lambda!227419))))

(assert (=> b!4778320 (= e!2983044 (Cons!53933 (_1!31480 (h!60343 (t!361503 (toList!6682 (extractMap!2328 (toList!6681 lm!2709)))))) (getKeysList!1029 (t!361503 (t!361503 (toList!6682 (extractMap!2328 (toList!6681 lm!2709))))))))))

(declare-fun c!814655 () Bool)

(assert (=> b!4778320 (= c!814655 (containsKey!3769 (t!361503 (t!361503 (toList!6682 (extractMap!2328 (toList!6681 lm!2709))))) (_1!31480 (h!60343 (t!361503 (toList!6682 (extractMap!2328 (toList!6681 lm!2709))))))))))

(declare-fun lt!1941229 () Unit!138992)

(assert (=> b!4778320 (= lt!1941229 e!2983042)))

(declare-fun c!814654 () Bool)

(assert (=> b!4778320 (= c!814654 (contains!17429 (getKeysList!1029 (t!361503 (t!361503 (toList!6682 (extractMap!2328 (toList!6681 lm!2709)))))) (_1!31480 (h!60343 (t!361503 (toList!6682 (extractMap!2328 (toList!6681 lm!2709))))))))))

(declare-fun lt!1941232 () Unit!138992)

(assert (=> b!4778320 (= lt!1941232 e!2983043)))

(declare-fun lt!1941230 () List!54057)

(assert (=> b!4778320 (= lt!1941230 (getKeysList!1029 (t!361503 (t!361503 (toList!6682 (extractMap!2328 (toList!6681 lm!2709)))))))))

(declare-fun lt!1941226 () Unit!138992)

(assert (=> b!4778320 (= lt!1941226 (lemmaForallContainsAddHeadPreserves!310 (t!361503 (t!361503 (toList!6682 (extractMap!2328 (toList!6681 lm!2709))))) lt!1941230 (h!60343 (t!361503 (toList!6682 (extractMap!2328 (toList!6681 lm!2709)))))))))

(assert (=> b!4778320 (forall!12079 lt!1941230 lambda!227418)))

(declare-fun lt!1941231 () Unit!138992)

(assert (=> b!4778320 (= lt!1941231 lt!1941226)))

(declare-fun b!4778321 () Bool)

(declare-fun res!2028281 () Bool)

(assert (=> b!4778321 (=> (not res!2028281) (not e!2983041))))

(assert (=> b!4778321 (= res!2028281 (= (length!640 lt!1941227) (length!641 (t!361503 (toList!6682 (extractMap!2328 (toList!6681 lm!2709)))))))))

(assert (=> b!4778322 (= e!2983041 (= (content!9626 lt!1941227) (content!9626 (map!12154 (t!361503 (toList!6682 (extractMap!2328 (toList!6681 lm!2709)))) lambda!227420))))))

(declare-fun b!4778323 () Bool)

(assert (=> b!4778323 false))

(declare-fun Unit!139048 () Unit!138992)

(assert (=> b!4778323 (= e!2983042 Unit!139048)))

(assert (= (and d!1527176 c!814653) b!4778320))

(assert (= (and d!1527176 (not c!814653)) b!4778316))

(assert (= (and b!4778320 c!814655) b!4778323))

(assert (= (and b!4778320 (not c!814655)) b!4778318))

(assert (= (and b!4778320 c!814654) b!4778317))

(assert (= (and b!4778320 (not c!814654)) b!4778315))

(assert (= (and d!1527176 res!2028283) b!4778321))

(assert (= (and b!4778321 res!2028281) b!4778319))

(assert (= (and b!4778319 res!2028282) b!4778322))

(declare-fun m!5754148 () Bool)

(assert (=> b!4778322 m!5754148))

(declare-fun m!5754150 () Bool)

(assert (=> b!4778322 m!5754150))

(assert (=> b!4778322 m!5754150))

(declare-fun m!5754152 () Bool)

(assert (=> b!4778322 m!5754152))

(declare-fun m!5754154 () Bool)

(assert (=> b!4778321 m!5754154))

(declare-fun m!5754156 () Bool)

(assert (=> b!4778321 m!5754156))

(declare-fun m!5754158 () Bool)

(assert (=> b!4778317 m!5754158))

(assert (=> b!4778317 m!5754158))

(declare-fun m!5754160 () Bool)

(assert (=> b!4778317 m!5754160))

(declare-fun m!5754162 () Bool)

(assert (=> b!4778319 m!5754162))

(declare-fun m!5754164 () Bool)

(assert (=> b!4778320 m!5754164))

(assert (=> b!4778320 m!5754158))

(declare-fun m!5754166 () Bool)

(assert (=> b!4778320 m!5754166))

(declare-fun m!5754168 () Bool)

(assert (=> b!4778320 m!5754168))

(assert (=> b!4778320 m!5754158))

(declare-fun m!5754170 () Bool)

(assert (=> b!4778320 m!5754170))

(declare-fun m!5754172 () Bool)

(assert (=> d!1527176 m!5754172))

(declare-fun m!5754174 () Bool)

(assert (=> d!1527176 m!5754174))

(assert (=> b!4777972 d!1527176))

(declare-fun d!1527178 () Bool)

(declare-fun res!2028284 () Bool)

(declare-fun e!2983045 () Bool)

(assert (=> d!1527178 (=> res!2028284 e!2983045)))

(assert (=> d!1527178 (= res!2028284 (and (is-Cons!53929 (t!361503 (toList!6682 (extractMap!2328 (toList!6681 lm!2709))))) (= (_1!31480 (h!60343 (t!361503 (toList!6682 (extractMap!2328 (toList!6681 lm!2709)))))) (_1!31480 (h!60343 (toList!6682 (extractMap!2328 (toList!6681 lm!2709))))))))))

(assert (=> d!1527178 (= (containsKey!3769 (t!361503 (toList!6682 (extractMap!2328 (toList!6681 lm!2709)))) (_1!31480 (h!60343 (toList!6682 (extractMap!2328 (toList!6681 lm!2709)))))) e!2983045)))

(declare-fun b!4778324 () Bool)

(declare-fun e!2983046 () Bool)

(assert (=> b!4778324 (= e!2983045 e!2983046)))

(declare-fun res!2028285 () Bool)

(assert (=> b!4778324 (=> (not res!2028285) (not e!2983046))))

(assert (=> b!4778324 (= res!2028285 (is-Cons!53929 (t!361503 (toList!6682 (extractMap!2328 (toList!6681 lm!2709))))))))

(declare-fun b!4778325 () Bool)

(assert (=> b!4778325 (= e!2983046 (containsKey!3769 (t!361503 (t!361503 (toList!6682 (extractMap!2328 (toList!6681 lm!2709))))) (_1!31480 (h!60343 (toList!6682 (extractMap!2328 (toList!6681 lm!2709)))))))))

(assert (= (and d!1527178 (not res!2028284)) b!4778324))

(assert (= (and b!4778324 res!2028285) b!4778325))

(declare-fun m!5754176 () Bool)

(assert (=> b!4778325 m!5754176))

(assert (=> b!4777972 d!1527178))

(declare-fun bs!1151105 () Bool)

(declare-fun d!1527180 () Bool)

(assert (= bs!1151105 (and d!1527180 b!4777994)))

(declare-fun lambda!227423 () Int)

(assert (=> bs!1151105 (= (= (Cons!53929 (h!60343 (toList!6682 (extractMap!2328 (toList!6681 lm!2709)))) (t!361503 (toList!6682 (extractMap!2328 (toList!6681 lm!2709))))) (toList!6682 (extractMap!2328 (toList!6681 lm!2709)))) (= lambda!227423 lambda!227320))))

(declare-fun bs!1151106 () Bool)

(assert (= bs!1151106 (and d!1527180 b!4777971)))

(assert (=> bs!1151106 (= (= (Cons!53929 (h!60343 (toList!6682 (extractMap!2328 (toList!6681 lm!2709)))) (t!361503 (toList!6682 (extractMap!2328 (toList!6681 lm!2709))))) (toList!6682 (extractMap!2328 (toList!6681 lm!2709)))) (= lambda!227423 lambda!227314))))

(declare-fun bs!1151107 () Bool)

(assert (= bs!1151107 (and d!1527180 b!4778319)))

(assert (=> bs!1151107 (= (= (Cons!53929 (h!60343 (toList!6682 (extractMap!2328 (toList!6681 lm!2709)))) (t!361503 (toList!6682 (extractMap!2328 (toList!6681 lm!2709))))) (t!361503 (toList!6682 (extractMap!2328 (toList!6681 lm!2709))))) (= lambda!227423 lambda!227419))))

(declare-fun bs!1151108 () Bool)

(assert (= bs!1151108 (and d!1527180 b!4778320)))

(assert (=> bs!1151108 (= (= (Cons!53929 (h!60343 (toList!6682 (extractMap!2328 (toList!6681 lm!2709)))) (t!361503 (toList!6682 (extractMap!2328 (toList!6681 lm!2709))))) (Cons!53929 (h!60343 (t!361503 (toList!6682 (extractMap!2328 (toList!6681 lm!2709))))) (t!361503 (t!361503 (toList!6682 (extractMap!2328 (toList!6681 lm!2709))))))) (= lambda!227423 lambda!227418))))

(declare-fun bs!1151109 () Bool)

(assert (= bs!1151109 (and d!1527180 b!4777969)))

(assert (=> bs!1151109 (= (= (Cons!53929 (h!60343 (toList!6682 (extractMap!2328 (toList!6681 lm!2709)))) (t!361503 (toList!6682 (extractMap!2328 (toList!6681 lm!2709))))) (t!361503 (toList!6682 (extractMap!2328 (toList!6681 lm!2709))))) (= lambda!227423 lambda!227312))))

(declare-fun bs!1151110 () Bool)

(assert (= bs!1151110 (and d!1527180 b!4777972)))

(assert (=> bs!1151110 (= lambda!227423 lambda!227313)))

(declare-fun bs!1151111 () Bool)

(assert (= bs!1151111 (and d!1527180 b!4778317)))

(assert (=> bs!1151111 (= (= (Cons!53929 (h!60343 (toList!6682 (extractMap!2328 (toList!6681 lm!2709)))) (t!361503 (toList!6682 (extractMap!2328 (toList!6681 lm!2709))))) (t!361503 (t!361503 (toList!6682 (extractMap!2328 (toList!6681 lm!2709)))))) (= lambda!227423 lambda!227417))))

(assert (=> d!1527180 true))

(assert (=> d!1527180 true))

(assert (=> d!1527180 (forall!12079 lt!1940996 lambda!227423)))

(declare-fun lt!1941235 () Unit!138992)

(declare-fun choose!34193 (List!54053 List!54057 tuple2!56372) Unit!138992)

(assert (=> d!1527180 (= lt!1941235 (choose!34193 (t!361503 (toList!6682 (extractMap!2328 (toList!6681 lm!2709)))) lt!1940996 (h!60343 (toList!6682 (extractMap!2328 (toList!6681 lm!2709))))))))

(assert (=> d!1527180 (invariantList!1685 (t!361503 (toList!6682 (extractMap!2328 (toList!6681 lm!2709)))))))

(assert (=> d!1527180 (= (lemmaForallContainsAddHeadPreserves!310 (t!361503 (toList!6682 (extractMap!2328 (toList!6681 lm!2709)))) lt!1940996 (h!60343 (toList!6682 (extractMap!2328 (toList!6681 lm!2709))))) lt!1941235)))

(declare-fun bs!1151112 () Bool)

(assert (= bs!1151112 d!1527180))

(declare-fun m!5754178 () Bool)

(assert (=> bs!1151112 m!5754178))

(declare-fun m!5754180 () Bool)

(assert (=> bs!1151112 m!5754180))

(assert (=> bs!1151112 m!5754174))

(assert (=> b!4777972 d!1527180))

(declare-fun d!1527182 () Bool)

(declare-fun res!2028286 () Bool)

(declare-fun e!2983047 () Bool)

(assert (=> d!1527182 (=> res!2028286 e!2983047)))

(assert (=> d!1527182 (= res!2028286 (is-Nil!53933 lt!1940996))))

(assert (=> d!1527182 (= (forall!12079 lt!1940996 lambda!227313) e!2983047)))

(declare-fun b!4778328 () Bool)

(declare-fun e!2983048 () Bool)

(assert (=> b!4778328 (= e!2983047 e!2983048)))

(declare-fun res!2028287 () Bool)

(assert (=> b!4778328 (=> (not res!2028287) (not e!2983048))))

(assert (=> b!4778328 (= res!2028287 (dynLambda!21998 lambda!227313 (h!60347 lt!1940996)))))

(declare-fun b!4778329 () Bool)

(assert (=> b!4778329 (= e!2983048 (forall!12079 (t!361507 lt!1940996) lambda!227313))))

(assert (= (and d!1527182 (not res!2028286)) b!4778328))

(assert (= (and b!4778328 res!2028287) b!4778329))

(declare-fun b_lambda!185205 () Bool)

(assert (=> (not b_lambda!185205) (not b!4778328)))

(declare-fun m!5754182 () Bool)

(assert (=> b!4778328 m!5754182))

(declare-fun m!5754184 () Bool)

(assert (=> b!4778329 m!5754184))

(assert (=> b!4777972 d!1527182))

(declare-fun d!1527184 () Bool)

(declare-fun lt!1941236 () Bool)

(assert (=> d!1527184 (= lt!1941236 (set.member (_1!31480 (h!60343 (toList!6682 (extractMap!2328 (toList!6681 lm!2709))))) (content!9626 (getKeysList!1029 (t!361503 (toList!6682 (extractMap!2328 (toList!6681 lm!2709))))))))))

(declare-fun e!2983050 () Bool)

(assert (=> d!1527184 (= lt!1941236 e!2983050)))

(declare-fun res!2028288 () Bool)

(assert (=> d!1527184 (=> (not res!2028288) (not e!2983050))))

(assert (=> d!1527184 (= res!2028288 (is-Cons!53933 (getKeysList!1029 (t!361503 (toList!6682 (extractMap!2328 (toList!6681 lm!2709)))))))))

(assert (=> d!1527184 (= (contains!17429 (getKeysList!1029 (t!361503 (toList!6682 (extractMap!2328 (toList!6681 lm!2709))))) (_1!31480 (h!60343 (toList!6682 (extractMap!2328 (toList!6681 lm!2709)))))) lt!1941236)))

(declare-fun b!4778330 () Bool)

(declare-fun e!2983049 () Bool)

(assert (=> b!4778330 (= e!2983050 e!2983049)))

(declare-fun res!2028289 () Bool)

(assert (=> b!4778330 (=> res!2028289 e!2983049)))

(assert (=> b!4778330 (= res!2028289 (= (h!60347 (getKeysList!1029 (t!361503 (toList!6682 (extractMap!2328 (toList!6681 lm!2709)))))) (_1!31480 (h!60343 (toList!6682 (extractMap!2328 (toList!6681 lm!2709)))))))))

(declare-fun b!4778331 () Bool)

(assert (=> b!4778331 (= e!2983049 (contains!17429 (t!361507 (getKeysList!1029 (t!361503 (toList!6682 (extractMap!2328 (toList!6681 lm!2709)))))) (_1!31480 (h!60343 (toList!6682 (extractMap!2328 (toList!6681 lm!2709)))))))))

(assert (= (and d!1527184 res!2028288) b!4778330))

(assert (= (and b!4778330 (not res!2028289)) b!4778331))

(assert (=> d!1527184 m!5753672))

(declare-fun m!5754186 () Bool)

(assert (=> d!1527184 m!5754186))

(declare-fun m!5754188 () Bool)

(assert (=> d!1527184 m!5754188))

(declare-fun m!5754190 () Bool)

(assert (=> b!4778331 m!5754190))

(assert (=> b!4777972 d!1527184))

(declare-fun d!1527186 () Bool)

(declare-fun res!2028294 () Bool)

(declare-fun e!2983055 () Bool)

(assert (=> d!1527186 (=> res!2028294 e!2983055)))

(assert (=> d!1527186 (= res!2028294 (is-Nil!53933 lt!1940993))))

(assert (=> d!1527186 (= (noDuplicate!892 lt!1940993) e!2983055)))

(declare-fun b!4778336 () Bool)

(declare-fun e!2983056 () Bool)

(assert (=> b!4778336 (= e!2983055 e!2983056)))

(declare-fun res!2028295 () Bool)

(assert (=> b!4778336 (=> (not res!2028295) (not e!2983056))))

(assert (=> b!4778336 (= res!2028295 (not (contains!17429 (t!361507 lt!1940993) (h!60347 lt!1940993))))))

(declare-fun b!4778337 () Bool)

(assert (=> b!4778337 (= e!2983056 (noDuplicate!892 (t!361507 lt!1940993)))))

(assert (= (and d!1527186 (not res!2028294)) b!4778336))

(assert (= (and b!4778336 res!2028295) b!4778337))

(declare-fun m!5754192 () Bool)

(assert (=> b!4778336 m!5754192))

(declare-fun m!5754194 () Bool)

(assert (=> b!4778337 m!5754194))

(assert (=> d!1526948 d!1527186))

(assert (=> d!1526948 d!1527112))

(assert (=> d!1526972 d!1526970))

(declare-fun d!1527188 () Bool)

(assert (=> d!1527188 (containsKey!3769 (toList!6682 (extractMap!2328 (toList!6681 lm!2709))) key!6641)))

(assert (=> d!1527188 true))

(declare-fun _$15!851 () Unit!138992)

(assert (=> d!1527188 (= (choose!34184 (toList!6682 (extractMap!2328 (toList!6681 lm!2709))) key!6641) _$15!851)))

(declare-fun bs!1151113 () Bool)

(assert (= bs!1151113 d!1527188))

(assert (=> bs!1151113 m!5753556))

(assert (=> d!1526972 d!1527188))

(assert (=> d!1526972 d!1527112))

(assert (=> bs!1151018 d!1526974))

(declare-fun d!1527190 () Bool)

(declare-fun c!814656 () Bool)

(assert (=> d!1527190 (= c!814656 (is-Nil!53933 lt!1940993))))

(declare-fun e!2983057 () (Set K!15492))

(assert (=> d!1527190 (= (content!9626 lt!1940993) e!2983057)))

(declare-fun b!4778338 () Bool)

(assert (=> b!4778338 (= e!2983057 (as set.empty (Set K!15492)))))

(declare-fun b!4778339 () Bool)

(assert (=> b!4778339 (= e!2983057 (set.union (set.insert (h!60347 lt!1940993) (as set.empty (Set K!15492))) (content!9626 (t!361507 lt!1940993))))))

(assert (= (and d!1527190 c!814656) b!4778338))

(assert (= (and d!1527190 (not c!814656)) b!4778339))

(declare-fun m!5754196 () Bool)

(assert (=> b!4778339 m!5754196))

(declare-fun m!5754198 () Bool)

(assert (=> b!4778339 m!5754198))

(assert (=> b!4777974 d!1527190))

(declare-fun d!1527192 () Bool)

(declare-fun c!814657 () Bool)

(assert (=> d!1527192 (= c!814657 (is-Nil!53933 (map!12154 (toList!6682 (extractMap!2328 (toList!6681 lm!2709))) lambda!227315)))))

(declare-fun e!2983058 () (Set K!15492))

(assert (=> d!1527192 (= (content!9626 (map!12154 (toList!6682 (extractMap!2328 (toList!6681 lm!2709))) lambda!227315)) e!2983058)))

(declare-fun b!4778340 () Bool)

(assert (=> b!4778340 (= e!2983058 (as set.empty (Set K!15492)))))

(declare-fun b!4778341 () Bool)

(assert (=> b!4778341 (= e!2983058 (set.union (set.insert (h!60347 (map!12154 (toList!6682 (extractMap!2328 (toList!6681 lm!2709))) lambda!227315)) (as set.empty (Set K!15492))) (content!9626 (t!361507 (map!12154 (toList!6682 (extractMap!2328 (toList!6681 lm!2709))) lambda!227315)))))))

(assert (= (and d!1527192 c!814657) b!4778340))

(assert (= (and d!1527192 (not c!814657)) b!4778341))

(declare-fun m!5754200 () Bool)

(assert (=> b!4778341 m!5754200))

(declare-fun m!5754202 () Bool)

(assert (=> b!4778341 m!5754202))

(assert (=> b!4777974 d!1527192))

(declare-fun d!1527194 () Bool)

(declare-fun lt!1941237 () List!54057)

(assert (=> d!1527194 (= (size!36355 lt!1941237) (size!36356 (toList!6682 (extractMap!2328 (toList!6681 lm!2709)))))))

(declare-fun e!2983059 () List!54057)

(assert (=> d!1527194 (= lt!1941237 e!2983059)))

(declare-fun c!814658 () Bool)

(assert (=> d!1527194 (= c!814658 (is-Nil!53929 (toList!6682 (extractMap!2328 (toList!6681 lm!2709)))))))

(assert (=> d!1527194 (= (map!12154 (toList!6682 (extractMap!2328 (toList!6681 lm!2709))) lambda!227315) lt!1941237)))

(declare-fun b!4778342 () Bool)

(assert (=> b!4778342 (= e!2983059 Nil!53933)))

(declare-fun b!4778343 () Bool)

(assert (=> b!4778343 (= e!2983059 ($colon$colon!1102 (map!12154 (t!361503 (toList!6682 (extractMap!2328 (toList!6681 lm!2709)))) lambda!227315) (dynLambda!22000 lambda!227315 (h!60343 (toList!6682 (extractMap!2328 (toList!6681 lm!2709)))))))))

(assert (= (and d!1527194 c!814658) b!4778342))

(assert (= (and d!1527194 (not c!814658)) b!4778343))

(declare-fun b_lambda!185207 () Bool)

(assert (=> (not b_lambda!185207) (not b!4778343)))

(declare-fun m!5754204 () Bool)

(assert (=> d!1527194 m!5754204))

(assert (=> d!1527194 m!5754012))

(declare-fun m!5754206 () Bool)

(assert (=> b!4778343 m!5754206))

(declare-fun m!5754208 () Bool)

(assert (=> b!4778343 m!5754208))

(assert (=> b!4778343 m!5754206))

(assert (=> b!4778343 m!5754208))

(declare-fun m!5754210 () Bool)

(assert (=> b!4778343 m!5754210))

(assert (=> b!4777974 d!1527194))

(declare-fun d!1527196 () Bool)

(declare-fun res!2028296 () Bool)

(declare-fun e!2983060 () Bool)

(assert (=> d!1527196 (=> res!2028296 e!2983060)))

(assert (=> d!1527196 (= res!2028296 (and (is-Cons!53930 (toList!6681 lm!2709)) (= (_1!31481 (h!60344 (toList!6681 lm!2709))) (hash!4777 hashF!1687 key!6641))))))

(assert (=> d!1527196 (= (containsKey!3770 (toList!6681 lm!2709) (hash!4777 hashF!1687 key!6641)) e!2983060)))

(declare-fun b!4778344 () Bool)

(declare-fun e!2983061 () Bool)

(assert (=> b!4778344 (= e!2983060 e!2983061)))

(declare-fun res!2028297 () Bool)

(assert (=> b!4778344 (=> (not res!2028297) (not e!2983061))))

(assert (=> b!4778344 (= res!2028297 (and (or (not (is-Cons!53930 (toList!6681 lm!2709))) (bvsle (_1!31481 (h!60344 (toList!6681 lm!2709))) (hash!4777 hashF!1687 key!6641))) (is-Cons!53930 (toList!6681 lm!2709)) (bvslt (_1!31481 (h!60344 (toList!6681 lm!2709))) (hash!4777 hashF!1687 key!6641))))))

(declare-fun b!4778345 () Bool)

(assert (=> b!4778345 (= e!2983061 (containsKey!3770 (t!361504 (toList!6681 lm!2709)) (hash!4777 hashF!1687 key!6641)))))

(assert (= (and d!1527196 (not res!2028296)) b!4778344))

(assert (= (and b!4778344 res!2028297) b!4778345))

(assert (=> b!4778345 m!5753494))

(declare-fun m!5754212 () Bool)

(assert (=> b!4778345 m!5754212))

(assert (=> d!1527020 d!1527196))

(assert (=> d!1527022 d!1527020))

(assert (=> d!1527022 d!1526914))

(declare-fun d!1527198 () Bool)

(declare-fun res!2028298 () Bool)

(declare-fun e!2983062 () Bool)

(assert (=> d!1527198 (=> res!2028298 e!2983062)))

(assert (=> d!1527198 (= res!2028298 (is-Nil!53933 lt!1941001))))

(assert (=> d!1527198 (= (noDuplicate!892 lt!1941001) e!2983062)))

(declare-fun b!4778346 () Bool)

(declare-fun e!2983063 () Bool)

(assert (=> b!4778346 (= e!2983062 e!2983063)))

(declare-fun res!2028299 () Bool)

(assert (=> b!4778346 (=> (not res!2028299) (not e!2983063))))

(assert (=> b!4778346 (= res!2028299 (not (contains!17429 (t!361507 lt!1941001) (h!60347 lt!1941001))))))

(declare-fun b!4778347 () Bool)

(assert (=> b!4778347 (= e!2983063 (noDuplicate!892 (t!361507 lt!1941001)))))

(assert (= (and d!1527198 (not res!2028298)) b!4778346))

(assert (= (and b!4778346 res!2028299) b!4778347))

(declare-fun m!5754214 () Bool)

(assert (=> b!4778346 m!5754214))

(declare-fun m!5754216 () Bool)

(assert (=> b!4778347 m!5754216))

(assert (=> d!1526954 d!1527198))

(assert (=> d!1526954 d!1526948))

(declare-fun d!1527200 () Bool)

(assert (=> d!1527200 true))

(assert (=> d!1527200 true))

(declare-fun res!2028302 () (_ BitVec 64))

(assert (=> d!1527200 (= (choose!34186 hashF!1687 key!6641) res!2028302)))

(assert (=> d!1527016 d!1527200))

(assert (=> bs!1151020 d!1526974))

(declare-fun d!1527202 () Bool)

(assert (=> d!1527202 (= (invariantList!1685 (toList!6682 lt!1941070)) (noDuplicatedKeys!415 (toList!6682 lt!1941070)))))

(declare-fun bs!1151114 () Bool)

(assert (= bs!1151114 d!1527202))

(declare-fun m!5754218 () Bool)

(assert (=> bs!1151114 m!5754218))

(assert (=> b!4778088 d!1527202))

(assert (=> d!1527012 d!1527014))

(assert (=> d!1527012 d!1526902))

(declare-fun d!1527204 () Bool)

(assert (=> d!1527204 (isDefined!10033 (getValueByKey!2257 (toList!6681 lm!2709) lt!1940876))))

(assert (=> d!1527204 true))

(declare-fun _$13!1633 () Unit!138992)

(assert (=> d!1527204 (= (choose!34185 (toList!6681 lm!2709) lt!1940876) _$13!1633)))

(declare-fun bs!1151115 () Bool)

(assert (= bs!1151115 d!1527204))

(assert (=> bs!1151115 m!5753492))

(assert (=> bs!1151115 m!5753492))

(assert (=> bs!1151115 m!5753584))

(assert (=> d!1527012 d!1527204))

(assert (=> d!1527012 d!1526958))

(declare-fun d!1527206 () Bool)

(assert (=> d!1527206 (dynLambda!21998 lambda!227312 (_1!31480 (h!60343 (toList!6682 (extractMap!2328 (toList!6681 lm!2709))))))))

(declare-fun lt!1941240 () Unit!138992)

(declare-fun choose!34194 (List!54057 Int K!15492) Unit!138992)

(assert (=> d!1527206 (= lt!1941240 (choose!34194 (getKeysList!1029 (t!361503 (toList!6682 (extractMap!2328 (toList!6681 lm!2709))))) lambda!227312 (_1!31480 (h!60343 (toList!6682 (extractMap!2328 (toList!6681 lm!2709)))))))))

(declare-fun e!2983066 () Bool)

(assert (=> d!1527206 e!2983066))

(declare-fun res!2028305 () Bool)

(assert (=> d!1527206 (=> (not res!2028305) (not e!2983066))))

(assert (=> d!1527206 (= res!2028305 (forall!12079 (getKeysList!1029 (t!361503 (toList!6682 (extractMap!2328 (toList!6681 lm!2709))))) lambda!227312))))

(assert (=> d!1527206 (= (forallContained!4024 (getKeysList!1029 (t!361503 (toList!6682 (extractMap!2328 (toList!6681 lm!2709))))) lambda!227312 (_1!31480 (h!60343 (toList!6682 (extractMap!2328 (toList!6681 lm!2709)))))) lt!1941240)))

(declare-fun b!4778350 () Bool)

(assert (=> b!4778350 (= e!2983066 (contains!17429 (getKeysList!1029 (t!361503 (toList!6682 (extractMap!2328 (toList!6681 lm!2709))))) (_1!31480 (h!60343 (toList!6682 (extractMap!2328 (toList!6681 lm!2709)))))))))

(assert (= (and d!1527206 res!2028305) b!4778350))

(declare-fun b_lambda!185209 () Bool)

(assert (=> (not b_lambda!185209) (not d!1527206)))

(declare-fun m!5754220 () Bool)

(assert (=> d!1527206 m!5754220))

(assert (=> d!1527206 m!5753672))

(declare-fun m!5754222 () Bool)

(assert (=> d!1527206 m!5754222))

(assert (=> d!1527206 m!5753672))

(declare-fun m!5754224 () Bool)

(assert (=> d!1527206 m!5754224))

(assert (=> b!4778350 m!5753672))

(assert (=> b!4778350 m!5753680))

(assert (=> b!4777969 d!1527206))

(assert (=> b!4777969 d!1527176))

(declare-fun d!1527208 () Bool)

(declare-fun res!2028306 () Bool)

(declare-fun e!2983067 () Bool)

(assert (=> d!1527208 (=> res!2028306 e!2983067)))

(assert (=> d!1527208 (= res!2028306 (is-Nil!53933 lt!1941001))))

(assert (=> d!1527208 (= (forall!12079 lt!1941001 lambda!227320) e!2983067)))

(declare-fun b!4778351 () Bool)

(declare-fun e!2983068 () Bool)

(assert (=> b!4778351 (= e!2983067 e!2983068)))

(declare-fun res!2028307 () Bool)

(assert (=> b!4778351 (=> (not res!2028307) (not e!2983068))))

(assert (=> b!4778351 (= res!2028307 (dynLambda!21998 lambda!227320 (h!60347 lt!1941001)))))

(declare-fun b!4778352 () Bool)

(assert (=> b!4778352 (= e!2983068 (forall!12079 (t!361507 lt!1941001) lambda!227320))))

(assert (= (and d!1527208 (not res!2028306)) b!4778351))

(assert (= (and b!4778351 res!2028307) b!4778352))

(declare-fun b_lambda!185211 () Bool)

(assert (=> (not b_lambda!185211) (not b!4778351)))

(declare-fun m!5754226 () Bool)

(assert (=> b!4778351 m!5754226))

(declare-fun m!5754228 () Bool)

(assert (=> b!4778352 m!5754228))

(assert (=> b!4777994 d!1527208))

(assert (=> d!1526976 d!1526912))

(assert (=> d!1526976 d!1526920))

(declare-fun d!1527210 () Bool)

(declare-fun res!2028308 () Bool)

(declare-fun e!2983069 () Bool)

(assert (=> d!1527210 (=> res!2028308 e!2983069)))

(assert (=> d!1527210 (= res!2028308 (is-Nil!53930 (t!361504 (toList!6681 lm!2709))))))

(assert (=> d!1527210 (= (forall!12077 (t!361504 (toList!6681 lm!2709)) lambda!227288) e!2983069)))

(declare-fun b!4778353 () Bool)

(declare-fun e!2983070 () Bool)

(assert (=> b!4778353 (= e!2983069 e!2983070)))

(declare-fun res!2028309 () Bool)

(assert (=> b!4778353 (=> (not res!2028309) (not e!2983070))))

(assert (=> b!4778353 (= res!2028309 (dynLambda!21996 lambda!227288 (h!60344 (t!361504 (toList!6681 lm!2709)))))))

(declare-fun b!4778354 () Bool)

(assert (=> b!4778354 (= e!2983070 (forall!12077 (t!361504 (t!361504 (toList!6681 lm!2709))) lambda!227288))))

(assert (= (and d!1527210 (not res!2028308)) b!4778353))

(assert (= (and b!4778353 res!2028309) b!4778354))

(declare-fun b_lambda!185213 () Bool)

(assert (=> (not b_lambda!185213) (not b!4778353)))

(declare-fun m!5754230 () Bool)

(assert (=> b!4778353 m!5754230))

(declare-fun m!5754232 () Bool)

(assert (=> b!4778354 m!5754232))

(assert (=> b!4778105 d!1527210))

(declare-fun d!1527212 () Bool)

(declare-fun res!2028310 () Bool)

(declare-fun e!2983071 () Bool)

(assert (=> d!1527212 (=> res!2028310 e!2983071)))

(assert (=> d!1527212 (= res!2028310 (and (is-Cons!53929 (_2!31481 (h!60344 (t!361504 (toList!6681 lm!2709))))) (= (_1!31480 (h!60343 (_2!31481 (h!60344 (t!361504 (toList!6681 lm!2709)))))) key!6641)))))

(assert (=> d!1527212 (= (containsKey!3768 (_2!31481 (h!60344 (t!361504 (toList!6681 lm!2709)))) key!6641) e!2983071)))

(declare-fun b!4778355 () Bool)

(declare-fun e!2983072 () Bool)

(assert (=> b!4778355 (= e!2983071 e!2983072)))

(declare-fun res!2028311 () Bool)

(assert (=> b!4778355 (=> (not res!2028311) (not e!2983072))))

(assert (=> b!4778355 (= res!2028311 (is-Cons!53929 (_2!31481 (h!60344 (t!361504 (toList!6681 lm!2709))))))))

(declare-fun b!4778356 () Bool)

(assert (=> b!4778356 (= e!2983072 (containsKey!3768 (t!361503 (_2!31481 (h!60344 (t!361504 (toList!6681 lm!2709))))) key!6641))))

(assert (= (and d!1527212 (not res!2028310)) b!4778355))

(assert (= (and b!4778355 res!2028311) b!4778356))

(declare-fun m!5754234 () Bool)

(assert (=> b!4778356 m!5754234))

(assert (=> b!4777978 d!1527212))

(declare-fun bs!1151116 () Bool)

(declare-fun b!4778361 () Bool)

(assert (= bs!1151116 (and b!4778361 b!4778288)))

(declare-fun lambda!227424 () Int)

(assert (=> bs!1151116 (= (= (+!2460 (extractMap!2328 (t!361504 (toList!6681 lm!2709))) (h!60343 (_2!31481 (h!60344 (toList!6681 lm!2709))))) (extractMap!2328 (t!361504 (t!361504 (toList!6681 lm!2709))))) (= lambda!227424 lambda!227412))))

(declare-fun bs!1151117 () Bool)

(assert (= bs!1151117 (and b!4778361 d!1527152)))

(assert (=> bs!1151117 (= (= (+!2460 (extractMap!2328 (t!361504 (toList!6681 lm!2709))) (h!60343 (_2!31481 (h!60344 (toList!6681 lm!2709))))) (extractMap!2328 (t!361504 (toList!6681 lm!2709)))) (= lambda!227424 lambda!227411))))

(declare-fun bs!1151118 () Bool)

(assert (= bs!1151118 (and b!4778361 b!4778284)))

(assert (=> bs!1151118 (= (= (+!2460 (extractMap!2328 (t!361504 (toList!6681 lm!2709))) (h!60343 (_2!31481 (h!60344 (toList!6681 lm!2709))))) (extractMap!2328 (t!361504 (t!361504 (toList!6681 lm!2709))))) (= lambda!227424 lambda!227413))))

(declare-fun bs!1151119 () Bool)

(assert (= bs!1151119 (and b!4778361 d!1527100)))

(assert (=> bs!1151119 (not (= lambda!227424 lambda!227408))))

(declare-fun bs!1151120 () Bool)

(assert (= bs!1151120 (and b!4778361 d!1526984)))

(assert (=> bs!1151120 (= (= (+!2460 (extractMap!2328 (t!361504 (toList!6681 lm!2709))) (h!60343 (_2!31481 (h!60344 (toList!6681 lm!2709))))) lt!1941070) (= lambda!227424 lambda!227359))))

(assert (=> bs!1151118 (= (= (+!2460 (extractMap!2328 (t!361504 (toList!6681 lm!2709))) (h!60343 (_2!31481 (h!60344 (toList!6681 lm!2709))))) lt!1941218) (= lambda!227424 lambda!227414))))

(declare-fun bs!1151121 () Bool)

(assert (= bs!1151121 (and b!4778361 b!4778085)))

(assert (=> bs!1151121 (= (= (+!2460 (extractMap!2328 (t!361504 (toList!6681 lm!2709))) (h!60343 (_2!31481 (h!60344 (toList!6681 lm!2709))))) (extractMap!2328 (t!361504 (toList!6681 lm!2709)))) (= lambda!227424 lambda!227357))))

(declare-fun bs!1151122 () Bool)

(assert (= bs!1151122 (and b!4778361 d!1527154)))

(assert (=> bs!1151122 (= (= (+!2460 (extractMap!2328 (t!361504 (toList!6681 lm!2709))) (h!60343 (_2!31481 (h!60344 (toList!6681 lm!2709))))) lt!1941205) (= lambda!227424 lambda!227415))))

(declare-fun bs!1151123 () Bool)

(assert (= bs!1151123 (and b!4778361 b!4778089)))

(assert (=> bs!1151123 (= (= (+!2460 (extractMap!2328 (t!361504 (toList!6681 lm!2709))) (h!60343 (_2!31481 (h!60344 (toList!6681 lm!2709))))) (extractMap!2328 (t!361504 (toList!6681 lm!2709)))) (= lambda!227424 lambda!227356))))

(assert (=> bs!1151121 (= (= (+!2460 (extractMap!2328 (t!361504 (toList!6681 lm!2709))) (h!60343 (_2!31481 (h!60344 (toList!6681 lm!2709))))) lt!1941083) (= lambda!227424 lambda!227358))))

(assert (=> b!4778361 true))

(declare-fun bs!1151124 () Bool)

(declare-fun b!4778357 () Bool)

(assert (= bs!1151124 (and b!4778357 b!4778361)))

(declare-fun lambda!227425 () Int)

(assert (=> bs!1151124 (= lambda!227425 lambda!227424)))

(declare-fun bs!1151125 () Bool)

(assert (= bs!1151125 (and b!4778357 b!4778288)))

(assert (=> bs!1151125 (= (= (+!2460 (extractMap!2328 (t!361504 (toList!6681 lm!2709))) (h!60343 (_2!31481 (h!60344 (toList!6681 lm!2709))))) (extractMap!2328 (t!361504 (t!361504 (toList!6681 lm!2709))))) (= lambda!227425 lambda!227412))))

(declare-fun bs!1151126 () Bool)

(assert (= bs!1151126 (and b!4778357 d!1527152)))

(assert (=> bs!1151126 (= (= (+!2460 (extractMap!2328 (t!361504 (toList!6681 lm!2709))) (h!60343 (_2!31481 (h!60344 (toList!6681 lm!2709))))) (extractMap!2328 (t!361504 (toList!6681 lm!2709)))) (= lambda!227425 lambda!227411))))

(declare-fun bs!1151127 () Bool)

(assert (= bs!1151127 (and b!4778357 b!4778284)))

(assert (=> bs!1151127 (= (= (+!2460 (extractMap!2328 (t!361504 (toList!6681 lm!2709))) (h!60343 (_2!31481 (h!60344 (toList!6681 lm!2709))))) (extractMap!2328 (t!361504 (t!361504 (toList!6681 lm!2709))))) (= lambda!227425 lambda!227413))))

(declare-fun bs!1151128 () Bool)

(assert (= bs!1151128 (and b!4778357 d!1527100)))

(assert (=> bs!1151128 (not (= lambda!227425 lambda!227408))))

(declare-fun bs!1151129 () Bool)

(assert (= bs!1151129 (and b!4778357 d!1526984)))

(assert (=> bs!1151129 (= (= (+!2460 (extractMap!2328 (t!361504 (toList!6681 lm!2709))) (h!60343 (_2!31481 (h!60344 (toList!6681 lm!2709))))) lt!1941070) (= lambda!227425 lambda!227359))))

(assert (=> bs!1151127 (= (= (+!2460 (extractMap!2328 (t!361504 (toList!6681 lm!2709))) (h!60343 (_2!31481 (h!60344 (toList!6681 lm!2709))))) lt!1941218) (= lambda!227425 lambda!227414))))

(declare-fun bs!1151130 () Bool)

(assert (= bs!1151130 (and b!4778357 b!4778085)))

(assert (=> bs!1151130 (= (= (+!2460 (extractMap!2328 (t!361504 (toList!6681 lm!2709))) (h!60343 (_2!31481 (h!60344 (toList!6681 lm!2709))))) (extractMap!2328 (t!361504 (toList!6681 lm!2709)))) (= lambda!227425 lambda!227357))))

(declare-fun bs!1151131 () Bool)

(assert (= bs!1151131 (and b!4778357 d!1527154)))

(assert (=> bs!1151131 (= (= (+!2460 (extractMap!2328 (t!361504 (toList!6681 lm!2709))) (h!60343 (_2!31481 (h!60344 (toList!6681 lm!2709))))) lt!1941205) (= lambda!227425 lambda!227415))))

(declare-fun bs!1151132 () Bool)

(assert (= bs!1151132 (and b!4778357 b!4778089)))

(assert (=> bs!1151132 (= (= (+!2460 (extractMap!2328 (t!361504 (toList!6681 lm!2709))) (h!60343 (_2!31481 (h!60344 (toList!6681 lm!2709))))) (extractMap!2328 (t!361504 (toList!6681 lm!2709)))) (= lambda!227425 lambda!227356))))

(assert (=> bs!1151130 (= (= (+!2460 (extractMap!2328 (t!361504 (toList!6681 lm!2709))) (h!60343 (_2!31481 (h!60344 (toList!6681 lm!2709))))) lt!1941083) (= lambda!227425 lambda!227358))))

(assert (=> b!4778357 true))

(declare-fun lambda!227426 () Int)

(declare-fun lt!1941258 () ListMap!6153)

(assert (=> b!4778357 (= (= lt!1941258 (+!2460 (extractMap!2328 (t!361504 (toList!6681 lm!2709))) (h!60343 (_2!31481 (h!60344 (toList!6681 lm!2709)))))) (= lambda!227426 lambda!227425))))

(assert (=> bs!1151124 (= (= lt!1941258 (+!2460 (extractMap!2328 (t!361504 (toList!6681 lm!2709))) (h!60343 (_2!31481 (h!60344 (toList!6681 lm!2709)))))) (= lambda!227426 lambda!227424))))

(assert (=> bs!1151125 (= (= lt!1941258 (extractMap!2328 (t!361504 (t!361504 (toList!6681 lm!2709))))) (= lambda!227426 lambda!227412))))

(assert (=> bs!1151126 (= (= lt!1941258 (extractMap!2328 (t!361504 (toList!6681 lm!2709)))) (= lambda!227426 lambda!227411))))

(assert (=> bs!1151127 (= (= lt!1941258 (extractMap!2328 (t!361504 (t!361504 (toList!6681 lm!2709))))) (= lambda!227426 lambda!227413))))

(assert (=> bs!1151128 (not (= lambda!227426 lambda!227408))))

(assert (=> bs!1151129 (= (= lt!1941258 lt!1941070) (= lambda!227426 lambda!227359))))

(assert (=> bs!1151127 (= (= lt!1941258 lt!1941218) (= lambda!227426 lambda!227414))))

(assert (=> bs!1151130 (= (= lt!1941258 (extractMap!2328 (t!361504 (toList!6681 lm!2709)))) (= lambda!227426 lambda!227357))))

(assert (=> bs!1151131 (= (= lt!1941258 lt!1941205) (= lambda!227426 lambda!227415))))

(assert (=> bs!1151132 (= (= lt!1941258 (extractMap!2328 (t!361504 (toList!6681 lm!2709)))) (= lambda!227426 lambda!227356))))

(assert (=> bs!1151130 (= (= lt!1941258 lt!1941083) (= lambda!227426 lambda!227358))))

(assert (=> b!4778357 true))

(declare-fun bs!1151133 () Bool)

(declare-fun d!1527214 () Bool)

(assert (= bs!1151133 (and d!1527214 b!4778357)))

(declare-fun lambda!227427 () Int)

(declare-fun lt!1941245 () ListMap!6153)

(assert (=> bs!1151133 (= (= lt!1941245 (+!2460 (extractMap!2328 (t!361504 (toList!6681 lm!2709))) (h!60343 (_2!31481 (h!60344 (toList!6681 lm!2709)))))) (= lambda!227427 lambda!227425))))

(declare-fun bs!1151134 () Bool)

(assert (= bs!1151134 (and d!1527214 b!4778361)))

(assert (=> bs!1151134 (= (= lt!1941245 (+!2460 (extractMap!2328 (t!361504 (toList!6681 lm!2709))) (h!60343 (_2!31481 (h!60344 (toList!6681 lm!2709)))))) (= lambda!227427 lambda!227424))))

(declare-fun bs!1151135 () Bool)

(assert (= bs!1151135 (and d!1527214 d!1527152)))

(assert (=> bs!1151135 (= (= lt!1941245 (extractMap!2328 (t!361504 (toList!6681 lm!2709)))) (= lambda!227427 lambda!227411))))

(declare-fun bs!1151136 () Bool)

(assert (= bs!1151136 (and d!1527214 b!4778284)))

(assert (=> bs!1151136 (= (= lt!1941245 (extractMap!2328 (t!361504 (t!361504 (toList!6681 lm!2709))))) (= lambda!227427 lambda!227413))))

(declare-fun bs!1151137 () Bool)

(assert (= bs!1151137 (and d!1527214 d!1527100)))

(assert (=> bs!1151137 (not (= lambda!227427 lambda!227408))))

(declare-fun bs!1151138 () Bool)

(assert (= bs!1151138 (and d!1527214 d!1526984)))

(assert (=> bs!1151138 (= (= lt!1941245 lt!1941070) (= lambda!227427 lambda!227359))))

(assert (=> bs!1151136 (= (= lt!1941245 lt!1941218) (= lambda!227427 lambda!227414))))

(declare-fun bs!1151139 () Bool)

(assert (= bs!1151139 (and d!1527214 b!4778085)))

(assert (=> bs!1151139 (= (= lt!1941245 (extractMap!2328 (t!361504 (toList!6681 lm!2709)))) (= lambda!227427 lambda!227357))))

(declare-fun bs!1151140 () Bool)

(assert (= bs!1151140 (and d!1527214 d!1527154)))

(assert (=> bs!1151140 (= (= lt!1941245 lt!1941205) (= lambda!227427 lambda!227415))))

(assert (=> bs!1151133 (= (= lt!1941245 lt!1941258) (= lambda!227427 lambda!227426))))

(declare-fun bs!1151141 () Bool)

(assert (= bs!1151141 (and d!1527214 b!4778288)))

(assert (=> bs!1151141 (= (= lt!1941245 (extractMap!2328 (t!361504 (t!361504 (toList!6681 lm!2709))))) (= lambda!227427 lambda!227412))))

(declare-fun bs!1151142 () Bool)

(assert (= bs!1151142 (and d!1527214 b!4778089)))

(assert (=> bs!1151142 (= (= lt!1941245 (extractMap!2328 (t!361504 (toList!6681 lm!2709)))) (= lambda!227427 lambda!227356))))

(assert (=> bs!1151139 (= (= lt!1941245 lt!1941083) (= lambda!227427 lambda!227358))))

(assert (=> d!1527214 true))

(declare-fun e!2983075 () ListMap!6153)

(assert (=> b!4778357 (= e!2983075 lt!1941258)))

(declare-fun lt!1941259 () ListMap!6153)

(assert (=> b!4778357 (= lt!1941259 (+!2460 (+!2460 (extractMap!2328 (t!361504 (toList!6681 lm!2709))) (h!60343 (_2!31481 (h!60344 (toList!6681 lm!2709))))) (h!60343 (t!361503 (_2!31481 (h!60344 (toList!6681 lm!2709)))))))))

(assert (=> b!4778357 (= lt!1941258 (addToMapMapFromBucket!1650 (t!361503 (t!361503 (_2!31481 (h!60344 (toList!6681 lm!2709))))) (+!2460 (+!2460 (extractMap!2328 (t!361504 (toList!6681 lm!2709))) (h!60343 (_2!31481 (h!60344 (toList!6681 lm!2709))))) (h!60343 (t!361503 (_2!31481 (h!60344 (toList!6681 lm!2709))))))))))

(declare-fun lt!1941253 () Unit!138992)

(declare-fun call!334640 () Unit!138992)

(assert (=> b!4778357 (= lt!1941253 call!334640)))

(assert (=> b!4778357 (forall!12080 (toList!6682 (+!2460 (extractMap!2328 (t!361504 (toList!6681 lm!2709))) (h!60343 (_2!31481 (h!60344 (toList!6681 lm!2709)))))) lambda!227425)))

(declare-fun lt!1941246 () Unit!138992)

(assert (=> b!4778357 (= lt!1941246 lt!1941253)))

(assert (=> b!4778357 (forall!12080 (toList!6682 lt!1941259) lambda!227426)))

(declare-fun lt!1941254 () Unit!138992)

(declare-fun Unit!139049 () Unit!138992)

(assert (=> b!4778357 (= lt!1941254 Unit!139049)))

(declare-fun call!334642 () Bool)

(assert (=> b!4778357 call!334642))

(declare-fun lt!1941251 () Unit!138992)

(declare-fun Unit!139050 () Unit!138992)

(assert (=> b!4778357 (= lt!1941251 Unit!139050)))

(declare-fun lt!1941247 () Unit!138992)

(declare-fun Unit!139051 () Unit!138992)

(assert (=> b!4778357 (= lt!1941247 Unit!139051)))

(declare-fun lt!1941242 () Unit!138992)

(assert (=> b!4778357 (= lt!1941242 (forallContained!4025 (toList!6682 lt!1941259) lambda!227426 (h!60343 (t!361503 (_2!31481 (h!60344 (toList!6681 lm!2709)))))))))

(assert (=> b!4778357 (contains!17426 lt!1941259 (_1!31480 (h!60343 (t!361503 (_2!31481 (h!60344 (toList!6681 lm!2709)))))))))

(declare-fun lt!1941244 () Unit!138992)

(declare-fun Unit!139052 () Unit!138992)

(assert (=> b!4778357 (= lt!1941244 Unit!139052)))

(assert (=> b!4778357 (contains!17426 lt!1941258 (_1!31480 (h!60343 (t!361503 (_2!31481 (h!60344 (toList!6681 lm!2709)))))))))

(declare-fun lt!1941260 () Unit!138992)

(declare-fun Unit!139053 () Unit!138992)

(assert (=> b!4778357 (= lt!1941260 Unit!139053)))

(assert (=> b!4778357 (forall!12080 (t!361503 (_2!31481 (h!60344 (toList!6681 lm!2709)))) lambda!227426)))

(declare-fun lt!1941256 () Unit!138992)

(declare-fun Unit!139054 () Unit!138992)

(assert (=> b!4778357 (= lt!1941256 Unit!139054)))

(declare-fun call!334641 () Bool)

(assert (=> b!4778357 call!334641))

(declare-fun lt!1941250 () Unit!138992)

(declare-fun Unit!139055 () Unit!138992)

(assert (=> b!4778357 (= lt!1941250 Unit!139055)))

(declare-fun lt!1941255 () Unit!138992)

(declare-fun Unit!139056 () Unit!138992)

(assert (=> b!4778357 (= lt!1941255 Unit!139056)))

(declare-fun lt!1941252 () Unit!138992)

(assert (=> b!4778357 (= lt!1941252 (addForallContainsKeyThenBeforeAdding!915 (+!2460 (extractMap!2328 (t!361504 (toList!6681 lm!2709))) (h!60343 (_2!31481 (h!60344 (toList!6681 lm!2709))))) lt!1941258 (_1!31480 (h!60343 (t!361503 (_2!31481 (h!60344 (toList!6681 lm!2709)))))) (_2!31480 (h!60343 (t!361503 (_2!31481 (h!60344 (toList!6681 lm!2709))))))))))

(assert (=> b!4778357 (forall!12080 (toList!6682 (+!2460 (extractMap!2328 (t!361504 (toList!6681 lm!2709))) (h!60343 (_2!31481 (h!60344 (toList!6681 lm!2709)))))) lambda!227426)))

(declare-fun lt!1941257 () Unit!138992)

(assert (=> b!4778357 (= lt!1941257 lt!1941252)))

(assert (=> b!4778357 (forall!12080 (toList!6682 (+!2460 (extractMap!2328 (t!361504 (toList!6681 lm!2709))) (h!60343 (_2!31481 (h!60344 (toList!6681 lm!2709)))))) lambda!227426)))

(declare-fun lt!1941248 () Unit!138992)

(declare-fun Unit!139060 () Unit!138992)

(assert (=> b!4778357 (= lt!1941248 Unit!139060)))

(declare-fun res!2028313 () Bool)

(assert (=> b!4778357 (= res!2028313 (forall!12080 (t!361503 (_2!31481 (h!60344 (toList!6681 lm!2709)))) lambda!227426))))

(declare-fun e!2983074 () Bool)

(assert (=> b!4778357 (=> (not res!2028313) (not e!2983074))))

(assert (=> b!4778357 e!2983074))

(declare-fun lt!1941261 () Unit!138992)

(declare-fun Unit!139062 () Unit!138992)

(assert (=> b!4778357 (= lt!1941261 Unit!139062)))

(declare-fun bm!334635 () Bool)

(assert (=> bm!334635 (= call!334640 (lemmaContainsAllItsOwnKeys!916 (+!2460 (extractMap!2328 (t!361504 (toList!6681 lm!2709))) (h!60343 (_2!31481 (h!60344 (toList!6681 lm!2709)))))))))

(declare-fun b!4778358 () Bool)

(declare-fun res!2028314 () Bool)

(declare-fun e!2983073 () Bool)

(assert (=> b!4778358 (=> (not res!2028314) (not e!2983073))))

(assert (=> b!4778358 (= res!2028314 (forall!12080 (toList!6682 (+!2460 (extractMap!2328 (t!361504 (toList!6681 lm!2709))) (h!60343 (_2!31481 (h!60344 (toList!6681 lm!2709)))))) lambda!227427))))

(declare-fun b!4778359 () Bool)

(assert (=> b!4778359 (= e!2983074 (forall!12080 (toList!6682 (+!2460 (extractMap!2328 (t!361504 (toList!6681 lm!2709))) (h!60343 (_2!31481 (h!60344 (toList!6681 lm!2709)))))) lambda!227426))))

(declare-fun b!4778360 () Bool)

(assert (=> b!4778360 (= e!2983073 (invariantList!1685 (toList!6682 lt!1941245)))))

(declare-fun c!814659 () Bool)

(declare-fun bm!334636 () Bool)

(assert (=> bm!334636 (= call!334641 (forall!12080 (ite c!814659 (toList!6682 (+!2460 (extractMap!2328 (t!361504 (toList!6681 lm!2709))) (h!60343 (_2!31481 (h!60344 (toList!6681 lm!2709)))))) (toList!6682 lt!1941259)) (ite c!814659 lambda!227424 lambda!227426)))))

(assert (=> d!1527214 e!2983073))

(declare-fun res!2028312 () Bool)

(assert (=> d!1527214 (=> (not res!2028312) (not e!2983073))))

(assert (=> d!1527214 (= res!2028312 (forall!12080 (t!361503 (_2!31481 (h!60344 (toList!6681 lm!2709)))) lambda!227427))))

(assert (=> d!1527214 (= lt!1941245 e!2983075)))

(assert (=> d!1527214 (= c!814659 (is-Nil!53929 (t!361503 (_2!31481 (h!60344 (toList!6681 lm!2709))))))))

(assert (=> d!1527214 (noDuplicateKeys!2282 (t!361503 (_2!31481 (h!60344 (toList!6681 lm!2709)))))))

(assert (=> d!1527214 (= (addToMapMapFromBucket!1650 (t!361503 (_2!31481 (h!60344 (toList!6681 lm!2709)))) (+!2460 (extractMap!2328 (t!361504 (toList!6681 lm!2709))) (h!60343 (_2!31481 (h!60344 (toList!6681 lm!2709)))))) lt!1941245)))

(assert (=> b!4778361 (= e!2983075 (+!2460 (extractMap!2328 (t!361504 (toList!6681 lm!2709))) (h!60343 (_2!31481 (h!60344 (toList!6681 lm!2709))))))))

(declare-fun lt!1941241 () Unit!138992)

(assert (=> b!4778361 (= lt!1941241 call!334640)))

(assert (=> b!4778361 call!334642))

(declare-fun lt!1941249 () Unit!138992)

(assert (=> b!4778361 (= lt!1941249 lt!1941241)))

(assert (=> b!4778361 call!334641))

(declare-fun lt!1941243 () Unit!138992)

(declare-fun Unit!139068 () Unit!138992)

(assert (=> b!4778361 (= lt!1941243 Unit!139068)))

(declare-fun bm!334637 () Bool)

(assert (=> bm!334637 (= call!334642 (forall!12080 (ite c!814659 (toList!6682 (+!2460 (extractMap!2328 (t!361504 (toList!6681 lm!2709))) (h!60343 (_2!31481 (h!60344 (toList!6681 lm!2709)))))) (t!361503 (t!361503 (_2!31481 (h!60344 (toList!6681 lm!2709)))))) (ite c!814659 lambda!227424 lambda!227426)))))

(assert (= (and d!1527214 c!814659) b!4778361))

(assert (= (and d!1527214 (not c!814659)) b!4778357))

(assert (= (and b!4778357 res!2028313) b!4778359))

(assert (= (or b!4778361 b!4778357) bm!334635))

(assert (= (or b!4778361 b!4778357) bm!334637))

(assert (= (or b!4778361 b!4778357) bm!334636))

(assert (= (and d!1527214 res!2028312) b!4778358))

(assert (= (and b!4778358 res!2028314) b!4778360))

(assert (=> bm!334635 m!5753786))

(declare-fun m!5754236 () Bool)

(assert (=> bm!334635 m!5754236))

(declare-fun m!5754238 () Bool)

(assert (=> b!4778357 m!5754238))

(declare-fun m!5754240 () Bool)

(assert (=> b!4778357 m!5754240))

(declare-fun m!5754242 () Bool)

(assert (=> b!4778357 m!5754242))

(assert (=> b!4778357 m!5753786))

(assert (=> b!4778357 m!5754240))

(declare-fun m!5754244 () Bool)

(assert (=> b!4778357 m!5754244))

(assert (=> b!4778357 m!5754238))

(declare-fun m!5754246 () Bool)

(assert (=> b!4778357 m!5754246))

(declare-fun m!5754248 () Bool)

(assert (=> b!4778357 m!5754248))

(declare-fun m!5754250 () Bool)

(assert (=> b!4778357 m!5754250))

(assert (=> b!4778357 m!5753786))

(declare-fun m!5754252 () Bool)

(assert (=> b!4778357 m!5754252))

(declare-fun m!5754254 () Bool)

(assert (=> b!4778357 m!5754254))

(declare-fun m!5754256 () Bool)

(assert (=> b!4778357 m!5754256))

(assert (=> b!4778357 m!5754244))

(assert (=> b!4778359 m!5754244))

(declare-fun m!5754258 () Bool)

(assert (=> b!4778360 m!5754258))

(declare-fun m!5754260 () Bool)

(assert (=> b!4778358 m!5754260))

(declare-fun m!5754262 () Bool)

(assert (=> bm!334636 m!5754262))

(declare-fun m!5754264 () Bool)

(assert (=> d!1527214 m!5754264))

(assert (=> d!1527214 m!5753738))

(declare-fun m!5754266 () Bool)

(assert (=> bm!334637 m!5754266))

(assert (=> b!4778085 d!1527214))

(declare-fun b!4778362 () Bool)

(declare-fun e!2983076 () Bool)

(assert (=> b!4778362 (= e!2983076 (contains!17429 (keys!19627 lt!1941083) (_1!31480 (h!60343 (_2!31481 (h!60344 (toList!6681 lm!2709)))))))))

(declare-fun b!4778363 () Bool)

(declare-fun e!2983078 () Unit!138992)

(declare-fun lt!1941265 () Unit!138992)

(assert (=> b!4778363 (= e!2983078 lt!1941265)))

(declare-fun lt!1941263 () Unit!138992)

(assert (=> b!4778363 (= lt!1941263 (lemmaContainsKeyImpliesGetValueByKeyDefined!2051 (toList!6682 lt!1941083) (_1!31480 (h!60343 (_2!31481 (h!60344 (toList!6681 lm!2709)))))))))

(assert (=> b!4778363 (isDefined!10032 (getValueByKey!2259 (toList!6682 lt!1941083) (_1!31480 (h!60343 (_2!31481 (h!60344 (toList!6681 lm!2709)))))))))

(declare-fun lt!1941264 () Unit!138992)

(assert (=> b!4778363 (= lt!1941264 lt!1941263)))

(assert (=> b!4778363 (= lt!1941265 (lemmaInListThenGetKeysListContains!1024 (toList!6682 lt!1941083) (_1!31480 (h!60343 (_2!31481 (h!60344 (toList!6681 lm!2709)))))))))

(declare-fun call!334643 () Bool)

(assert (=> b!4778363 call!334643))

(declare-fun b!4778364 () Bool)

(assert (=> b!4778364 false))

(declare-fun lt!1941262 () Unit!138992)

(declare-fun lt!1941269 () Unit!138992)

(assert (=> b!4778364 (= lt!1941262 lt!1941269)))

(assert (=> b!4778364 (containsKey!3769 (toList!6682 lt!1941083) (_1!31480 (h!60343 (_2!31481 (h!60344 (toList!6681 lm!2709))))))))

(assert (=> b!4778364 (= lt!1941269 (lemmaInGetKeysListThenContainsKey!1028 (toList!6682 lt!1941083) (_1!31480 (h!60343 (_2!31481 (h!60344 (toList!6681 lm!2709)))))))))

(declare-fun e!2983079 () Unit!138992)

(declare-fun Unit!139071 () Unit!138992)

(assert (=> b!4778364 (= e!2983079 Unit!139071)))

(declare-fun b!4778365 () Bool)

(declare-fun e!2983081 () Bool)

(assert (=> b!4778365 (= e!2983081 e!2983076)))

(declare-fun res!2028316 () Bool)

(assert (=> b!4778365 (=> (not res!2028316) (not e!2983076))))

(assert (=> b!4778365 (= res!2028316 (isDefined!10032 (getValueByKey!2259 (toList!6682 lt!1941083) (_1!31480 (h!60343 (_2!31481 (h!60344 (toList!6681 lm!2709))))))))))

(declare-fun b!4778366 () Bool)

(declare-fun e!2983077 () Bool)

(assert (=> b!4778366 (= e!2983077 (not (contains!17429 (keys!19627 lt!1941083) (_1!31480 (h!60343 (_2!31481 (h!60344 (toList!6681 lm!2709))))))))))

(declare-fun b!4778367 () Bool)

(declare-fun e!2983080 () List!54057)

(assert (=> b!4778367 (= e!2983080 (getKeysList!1029 (toList!6682 lt!1941083)))))

(declare-fun b!4778368 () Bool)

(assert (=> b!4778368 (= e!2983078 e!2983079)))

(declare-fun c!814660 () Bool)

(assert (=> b!4778368 (= c!814660 call!334643)))

(declare-fun b!4778369 () Bool)

(assert (=> b!4778369 (= e!2983080 (keys!19627 lt!1941083))))

(declare-fun bm!334638 () Bool)

(assert (=> bm!334638 (= call!334643 (contains!17429 e!2983080 (_1!31480 (h!60343 (_2!31481 (h!60344 (toList!6681 lm!2709)))))))))

(declare-fun c!814662 () Bool)

(declare-fun c!814661 () Bool)

(assert (=> bm!334638 (= c!814662 c!814661)))

(declare-fun d!1527216 () Bool)

(assert (=> d!1527216 e!2983081))

(declare-fun res!2028317 () Bool)

(assert (=> d!1527216 (=> res!2028317 e!2983081)))

(assert (=> d!1527216 (= res!2028317 e!2983077)))

(declare-fun res!2028315 () Bool)

(assert (=> d!1527216 (=> (not res!2028315) (not e!2983077))))

(declare-fun lt!1941268 () Bool)

(assert (=> d!1527216 (= res!2028315 (not lt!1941268))))

(declare-fun lt!1941266 () Bool)

(assert (=> d!1527216 (= lt!1941268 lt!1941266)))

(declare-fun lt!1941267 () Unit!138992)

(assert (=> d!1527216 (= lt!1941267 e!2983078)))

(assert (=> d!1527216 (= c!814661 lt!1941266)))

(assert (=> d!1527216 (= lt!1941266 (containsKey!3769 (toList!6682 lt!1941083) (_1!31480 (h!60343 (_2!31481 (h!60344 (toList!6681 lm!2709)))))))))

(assert (=> d!1527216 (= (contains!17426 lt!1941083 (_1!31480 (h!60343 (_2!31481 (h!60344 (toList!6681 lm!2709)))))) lt!1941268)))

(declare-fun b!4778370 () Bool)

(declare-fun Unit!139072 () Unit!138992)

(assert (=> b!4778370 (= e!2983079 Unit!139072)))

(assert (= (and d!1527216 c!814661) b!4778363))

(assert (= (and d!1527216 (not c!814661)) b!4778368))

(assert (= (and b!4778368 c!814660) b!4778364))

(assert (= (and b!4778368 (not c!814660)) b!4778370))

(assert (= (or b!4778363 b!4778368) bm!334638))

(assert (= (and bm!334638 c!814662) b!4778367))

(assert (= (and bm!334638 (not c!814662)) b!4778369))

(assert (= (and d!1527216 res!2028315) b!4778366))

(assert (= (and d!1527216 (not res!2028317)) b!4778365))

(assert (= (and b!4778365 res!2028316) b!4778362))

(declare-fun m!5754268 () Bool)

(assert (=> d!1527216 m!5754268))

(declare-fun m!5754270 () Bool)

(assert (=> b!4778366 m!5754270))

(assert (=> b!4778366 m!5754270))

(declare-fun m!5754272 () Bool)

(assert (=> b!4778366 m!5754272))

(declare-fun m!5754274 () Bool)

(assert (=> b!4778363 m!5754274))

(declare-fun m!5754276 () Bool)

(assert (=> b!4778363 m!5754276))

(assert (=> b!4778363 m!5754276))

(declare-fun m!5754278 () Bool)

(assert (=> b!4778363 m!5754278))

(declare-fun m!5754280 () Bool)

(assert (=> b!4778363 m!5754280))

(assert (=> b!4778364 m!5754268))

(declare-fun m!5754282 () Bool)

(assert (=> b!4778364 m!5754282))

(assert (=> b!4778369 m!5754270))

(assert (=> b!4778365 m!5754276))

(assert (=> b!4778365 m!5754276))

(assert (=> b!4778365 m!5754278))

(declare-fun m!5754284 () Bool)

(assert (=> b!4778367 m!5754284))

(declare-fun m!5754286 () Bool)

(assert (=> bm!334638 m!5754286))

(assert (=> b!4778362 m!5754270))

(assert (=> b!4778362 m!5754270))

(assert (=> b!4778362 m!5754272))

(assert (=> b!4778085 d!1527216))

(assert (=> b!4778085 d!1527122))

(declare-fun d!1527218 () Bool)

(declare-fun res!2028318 () Bool)

(declare-fun e!2983082 () Bool)

(assert (=> d!1527218 (=> res!2028318 e!2983082)))

(assert (=> d!1527218 (= res!2028318 (is-Nil!53929 (toList!6682 (extractMap!2328 (t!361504 (toList!6681 lm!2709))))))))

(assert (=> d!1527218 (= (forall!12080 (toList!6682 (extractMap!2328 (t!361504 (toList!6681 lm!2709)))) lambda!227357) e!2983082)))

(declare-fun b!4778371 () Bool)

(declare-fun e!2983083 () Bool)

(assert (=> b!4778371 (= e!2983082 e!2983083)))

(declare-fun res!2028319 () Bool)

(assert (=> b!4778371 (=> (not res!2028319) (not e!2983083))))

(assert (=> b!4778371 (= res!2028319 (dynLambda!21999 lambda!227357 (h!60343 (toList!6682 (extractMap!2328 (t!361504 (toList!6681 lm!2709)))))))))

(declare-fun b!4778372 () Bool)

(assert (=> b!4778372 (= e!2983083 (forall!12080 (t!361503 (toList!6682 (extractMap!2328 (t!361504 (toList!6681 lm!2709))))) lambda!227357))))

(assert (= (and d!1527218 (not res!2028318)) b!4778371))

(assert (= (and b!4778371 res!2028319) b!4778372))

(declare-fun b_lambda!185215 () Bool)

(assert (=> (not b_lambda!185215) (not b!4778371)))

(declare-fun m!5754288 () Bool)

(assert (=> b!4778371 m!5754288))

(declare-fun m!5754290 () Bool)

(assert (=> b!4778372 m!5754290))

(assert (=> b!4778085 d!1527218))

(declare-fun b!4778373 () Bool)

(declare-fun e!2983084 () Bool)

(assert (=> b!4778373 (= e!2983084 (contains!17429 (keys!19627 lt!1941084) (_1!31480 (h!60343 (_2!31481 (h!60344 (toList!6681 lm!2709)))))))))

(declare-fun b!4778374 () Bool)

(declare-fun e!2983086 () Unit!138992)

(declare-fun lt!1941273 () Unit!138992)

(assert (=> b!4778374 (= e!2983086 lt!1941273)))

(declare-fun lt!1941271 () Unit!138992)

(assert (=> b!4778374 (= lt!1941271 (lemmaContainsKeyImpliesGetValueByKeyDefined!2051 (toList!6682 lt!1941084) (_1!31480 (h!60343 (_2!31481 (h!60344 (toList!6681 lm!2709)))))))))

(assert (=> b!4778374 (isDefined!10032 (getValueByKey!2259 (toList!6682 lt!1941084) (_1!31480 (h!60343 (_2!31481 (h!60344 (toList!6681 lm!2709)))))))))

(declare-fun lt!1941272 () Unit!138992)

(assert (=> b!4778374 (= lt!1941272 lt!1941271)))

(assert (=> b!4778374 (= lt!1941273 (lemmaInListThenGetKeysListContains!1024 (toList!6682 lt!1941084) (_1!31480 (h!60343 (_2!31481 (h!60344 (toList!6681 lm!2709)))))))))

(declare-fun call!334644 () Bool)

(assert (=> b!4778374 call!334644))

(declare-fun b!4778375 () Bool)

(assert (=> b!4778375 false))

(declare-fun lt!1941270 () Unit!138992)

(declare-fun lt!1941277 () Unit!138992)

(assert (=> b!4778375 (= lt!1941270 lt!1941277)))

(assert (=> b!4778375 (containsKey!3769 (toList!6682 lt!1941084) (_1!31480 (h!60343 (_2!31481 (h!60344 (toList!6681 lm!2709))))))))

(assert (=> b!4778375 (= lt!1941277 (lemmaInGetKeysListThenContainsKey!1028 (toList!6682 lt!1941084) (_1!31480 (h!60343 (_2!31481 (h!60344 (toList!6681 lm!2709)))))))))

(declare-fun e!2983087 () Unit!138992)

(declare-fun Unit!139073 () Unit!138992)

(assert (=> b!4778375 (= e!2983087 Unit!139073)))

(declare-fun b!4778376 () Bool)

(declare-fun e!2983089 () Bool)

(assert (=> b!4778376 (= e!2983089 e!2983084)))

(declare-fun res!2028321 () Bool)

(assert (=> b!4778376 (=> (not res!2028321) (not e!2983084))))

(assert (=> b!4778376 (= res!2028321 (isDefined!10032 (getValueByKey!2259 (toList!6682 lt!1941084) (_1!31480 (h!60343 (_2!31481 (h!60344 (toList!6681 lm!2709))))))))))

(declare-fun b!4778377 () Bool)

(declare-fun e!2983085 () Bool)

(assert (=> b!4778377 (= e!2983085 (not (contains!17429 (keys!19627 lt!1941084) (_1!31480 (h!60343 (_2!31481 (h!60344 (toList!6681 lm!2709))))))))))

(declare-fun b!4778378 () Bool)

(declare-fun e!2983088 () List!54057)

(assert (=> b!4778378 (= e!2983088 (getKeysList!1029 (toList!6682 lt!1941084)))))

(declare-fun b!4778379 () Bool)

(assert (=> b!4778379 (= e!2983086 e!2983087)))

(declare-fun c!814663 () Bool)

(assert (=> b!4778379 (= c!814663 call!334644)))

(declare-fun b!4778380 () Bool)

(assert (=> b!4778380 (= e!2983088 (keys!19627 lt!1941084))))

(declare-fun bm!334639 () Bool)

(assert (=> bm!334639 (= call!334644 (contains!17429 e!2983088 (_1!31480 (h!60343 (_2!31481 (h!60344 (toList!6681 lm!2709)))))))))

(declare-fun c!814665 () Bool)

(declare-fun c!814664 () Bool)

(assert (=> bm!334639 (= c!814665 c!814664)))

(declare-fun d!1527220 () Bool)

(assert (=> d!1527220 e!2983089))

(declare-fun res!2028322 () Bool)

(assert (=> d!1527220 (=> res!2028322 e!2983089)))

(assert (=> d!1527220 (= res!2028322 e!2983085)))

(declare-fun res!2028320 () Bool)

(assert (=> d!1527220 (=> (not res!2028320) (not e!2983085))))

(declare-fun lt!1941276 () Bool)

(assert (=> d!1527220 (= res!2028320 (not lt!1941276))))

(declare-fun lt!1941274 () Bool)

(assert (=> d!1527220 (= lt!1941276 lt!1941274)))

(declare-fun lt!1941275 () Unit!138992)

(assert (=> d!1527220 (= lt!1941275 e!2983086)))

(assert (=> d!1527220 (= c!814664 lt!1941274)))

(assert (=> d!1527220 (= lt!1941274 (containsKey!3769 (toList!6682 lt!1941084) (_1!31480 (h!60343 (_2!31481 (h!60344 (toList!6681 lm!2709)))))))))

(assert (=> d!1527220 (= (contains!17426 lt!1941084 (_1!31480 (h!60343 (_2!31481 (h!60344 (toList!6681 lm!2709)))))) lt!1941276)))

(declare-fun b!4778381 () Bool)

(declare-fun Unit!139074 () Unit!138992)

(assert (=> b!4778381 (= e!2983087 Unit!139074)))

(assert (= (and d!1527220 c!814664) b!4778374))

(assert (= (and d!1527220 (not c!814664)) b!4778379))

(assert (= (and b!4778379 c!814663) b!4778375))

(assert (= (and b!4778379 (not c!814663)) b!4778381))

(assert (= (or b!4778374 b!4778379) bm!334639))

(assert (= (and bm!334639 c!814665) b!4778378))

(assert (= (and bm!334639 (not c!814665)) b!4778380))

(assert (= (and d!1527220 res!2028320) b!4778377))

(assert (= (and d!1527220 (not res!2028322)) b!4778376))

(assert (= (and b!4778376 res!2028321) b!4778373))

(declare-fun m!5754292 () Bool)

(assert (=> d!1527220 m!5754292))

(declare-fun m!5754294 () Bool)

(assert (=> b!4778377 m!5754294))

(assert (=> b!4778377 m!5754294))

(declare-fun m!5754296 () Bool)

(assert (=> b!4778377 m!5754296))

(declare-fun m!5754298 () Bool)

(assert (=> b!4778374 m!5754298))

(declare-fun m!5754300 () Bool)

(assert (=> b!4778374 m!5754300))

(assert (=> b!4778374 m!5754300))

(declare-fun m!5754302 () Bool)

(assert (=> b!4778374 m!5754302))

(declare-fun m!5754304 () Bool)

(assert (=> b!4778374 m!5754304))

(assert (=> b!4778375 m!5754292))

(declare-fun m!5754306 () Bool)

(assert (=> b!4778375 m!5754306))

(assert (=> b!4778380 m!5754294))

(assert (=> b!4778376 m!5754300))

(assert (=> b!4778376 m!5754300))

(assert (=> b!4778376 m!5754302))

(declare-fun m!5754308 () Bool)

(assert (=> b!4778378 m!5754308))

(declare-fun m!5754310 () Bool)

(assert (=> bm!334639 m!5754310))

(assert (=> b!4778373 m!5754294))

(assert (=> b!4778373 m!5754294))

(assert (=> b!4778373 m!5754296))

(assert (=> b!4778085 d!1527220))

(declare-fun d!1527222 () Bool)

(declare-fun e!2983092 () Bool)

(assert (=> d!1527222 e!2983092))

(declare-fun res!2028328 () Bool)

(assert (=> d!1527222 (=> (not res!2028328) (not e!2983092))))

(declare-fun lt!1941289 () ListMap!6153)

(assert (=> d!1527222 (= res!2028328 (contains!17426 lt!1941289 (_1!31480 (h!60343 (_2!31481 (h!60344 (toList!6681 lm!2709)))))))))

(declare-fun lt!1941287 () List!54053)

(assert (=> d!1527222 (= lt!1941289 (ListMap!6154 lt!1941287))))

(declare-fun lt!1941286 () Unit!138992)

(declare-fun lt!1941288 () Unit!138992)

(assert (=> d!1527222 (= lt!1941286 lt!1941288)))

(assert (=> d!1527222 (= (getValueByKey!2259 lt!1941287 (_1!31480 (h!60343 (_2!31481 (h!60344 (toList!6681 lm!2709)))))) (Some!12889 (_2!31480 (h!60343 (_2!31481 (h!60344 (toList!6681 lm!2709)))))))))

(declare-fun lemmaContainsTupThenGetReturnValue!1198 (List!54053 K!15492 V!15738) Unit!138992)

(assert (=> d!1527222 (= lt!1941288 (lemmaContainsTupThenGetReturnValue!1198 lt!1941287 (_1!31480 (h!60343 (_2!31481 (h!60344 (toList!6681 lm!2709))))) (_2!31480 (h!60343 (_2!31481 (h!60344 (toList!6681 lm!2709)))))))))

(declare-fun insertNoDuplicatedKeys!706 (List!54053 K!15492 V!15738) List!54053)

(assert (=> d!1527222 (= lt!1941287 (insertNoDuplicatedKeys!706 (toList!6682 (extractMap!2328 (t!361504 (toList!6681 lm!2709)))) (_1!31480 (h!60343 (_2!31481 (h!60344 (toList!6681 lm!2709))))) (_2!31480 (h!60343 (_2!31481 (h!60344 (toList!6681 lm!2709)))))))))

(assert (=> d!1527222 (= (+!2460 (extractMap!2328 (t!361504 (toList!6681 lm!2709))) (h!60343 (_2!31481 (h!60344 (toList!6681 lm!2709))))) lt!1941289)))

(declare-fun b!4778386 () Bool)

(declare-fun res!2028327 () Bool)

(assert (=> b!4778386 (=> (not res!2028327) (not e!2983092))))

(assert (=> b!4778386 (= res!2028327 (= (getValueByKey!2259 (toList!6682 lt!1941289) (_1!31480 (h!60343 (_2!31481 (h!60344 (toList!6681 lm!2709)))))) (Some!12889 (_2!31480 (h!60343 (_2!31481 (h!60344 (toList!6681 lm!2709))))))))))

(declare-fun b!4778387 () Bool)

(declare-fun contains!17431 (List!54053 tuple2!56372) Bool)

(assert (=> b!4778387 (= e!2983092 (contains!17431 (toList!6682 lt!1941289) (h!60343 (_2!31481 (h!60344 (toList!6681 lm!2709))))))))

(assert (= (and d!1527222 res!2028328) b!4778386))

(assert (= (and b!4778386 res!2028327) b!4778387))

(declare-fun m!5754312 () Bool)

(assert (=> d!1527222 m!5754312))

(declare-fun m!5754314 () Bool)

(assert (=> d!1527222 m!5754314))

(declare-fun m!5754316 () Bool)

(assert (=> d!1527222 m!5754316))

(declare-fun m!5754318 () Bool)

(assert (=> d!1527222 m!5754318))

(declare-fun m!5754320 () Bool)

(assert (=> b!4778386 m!5754320))

(declare-fun m!5754322 () Bool)

(assert (=> b!4778387 m!5754322))

(assert (=> b!4778085 d!1527222))

(declare-fun d!1527224 () Bool)

(declare-fun res!2028329 () Bool)

(declare-fun e!2983093 () Bool)

(assert (=> d!1527224 (=> res!2028329 e!2983093)))

(assert (=> d!1527224 (= res!2028329 (is-Nil!53929 (toList!6682 lt!1941084)))))

(assert (=> d!1527224 (= (forall!12080 (toList!6682 lt!1941084) lambda!227358) e!2983093)))

(declare-fun b!4778388 () Bool)

(declare-fun e!2983094 () Bool)

(assert (=> b!4778388 (= e!2983093 e!2983094)))

(declare-fun res!2028330 () Bool)

(assert (=> b!4778388 (=> (not res!2028330) (not e!2983094))))

(assert (=> b!4778388 (= res!2028330 (dynLambda!21999 lambda!227358 (h!60343 (toList!6682 lt!1941084))))))

(declare-fun b!4778389 () Bool)

(assert (=> b!4778389 (= e!2983094 (forall!12080 (t!361503 (toList!6682 lt!1941084)) lambda!227358))))

(assert (= (and d!1527224 (not res!2028329)) b!4778388))

(assert (= (and b!4778388 res!2028330) b!4778389))

(declare-fun b_lambda!185217 () Bool)

(assert (=> (not b_lambda!185217) (not b!4778388)))

(declare-fun m!5754324 () Bool)

(assert (=> b!4778388 m!5754324))

(declare-fun m!5754326 () Bool)

(assert (=> b!4778389 m!5754326))

(assert (=> b!4778085 d!1527224))

(declare-fun bs!1151143 () Bool)

(declare-fun d!1527226 () Bool)

(assert (= bs!1151143 (and d!1527226 b!4778357)))

(declare-fun lambda!227432 () Int)

(assert (=> bs!1151143 (= (= lt!1941083 (+!2460 (extractMap!2328 (t!361504 (toList!6681 lm!2709))) (h!60343 (_2!31481 (h!60344 (toList!6681 lm!2709)))))) (= lambda!227432 lambda!227425))))

(declare-fun bs!1151144 () Bool)

(assert (= bs!1151144 (and d!1527226 b!4778361)))

(assert (=> bs!1151144 (= (= lt!1941083 (+!2460 (extractMap!2328 (t!361504 (toList!6681 lm!2709))) (h!60343 (_2!31481 (h!60344 (toList!6681 lm!2709)))))) (= lambda!227432 lambda!227424))))

(declare-fun bs!1151145 () Bool)

(assert (= bs!1151145 (and d!1527226 d!1527152)))

(assert (=> bs!1151145 (= (= lt!1941083 (extractMap!2328 (t!361504 (toList!6681 lm!2709)))) (= lambda!227432 lambda!227411))))

(declare-fun bs!1151146 () Bool)

(assert (= bs!1151146 (and d!1527226 b!4778284)))

(assert (=> bs!1151146 (= (= lt!1941083 (extractMap!2328 (t!361504 (t!361504 (toList!6681 lm!2709))))) (= lambda!227432 lambda!227413))))

(declare-fun bs!1151147 () Bool)

(assert (= bs!1151147 (and d!1527226 d!1527100)))

(assert (=> bs!1151147 (not (= lambda!227432 lambda!227408))))

(declare-fun bs!1151148 () Bool)

(assert (= bs!1151148 (and d!1527226 d!1527214)))

(assert (=> bs!1151148 (= (= lt!1941083 lt!1941245) (= lambda!227432 lambda!227427))))

(declare-fun bs!1151149 () Bool)

(assert (= bs!1151149 (and d!1527226 d!1526984)))

(assert (=> bs!1151149 (= (= lt!1941083 lt!1941070) (= lambda!227432 lambda!227359))))

(assert (=> bs!1151146 (= (= lt!1941083 lt!1941218) (= lambda!227432 lambda!227414))))

(declare-fun bs!1151150 () Bool)

(assert (= bs!1151150 (and d!1527226 b!4778085)))

(assert (=> bs!1151150 (= (= lt!1941083 (extractMap!2328 (t!361504 (toList!6681 lm!2709)))) (= lambda!227432 lambda!227357))))

(declare-fun bs!1151151 () Bool)

(assert (= bs!1151151 (and d!1527226 d!1527154)))

(assert (=> bs!1151151 (= (= lt!1941083 lt!1941205) (= lambda!227432 lambda!227415))))

(assert (=> bs!1151143 (= (= lt!1941083 lt!1941258) (= lambda!227432 lambda!227426))))

(declare-fun bs!1151152 () Bool)

(assert (= bs!1151152 (and d!1527226 b!4778288)))

(assert (=> bs!1151152 (= (= lt!1941083 (extractMap!2328 (t!361504 (t!361504 (toList!6681 lm!2709))))) (= lambda!227432 lambda!227412))))

(declare-fun bs!1151153 () Bool)

(assert (= bs!1151153 (and d!1527226 b!4778089)))

(assert (=> bs!1151153 (= (= lt!1941083 (extractMap!2328 (t!361504 (toList!6681 lm!2709)))) (= lambda!227432 lambda!227356))))

(assert (=> bs!1151150 (= lambda!227432 lambda!227358)))

(assert (=> d!1527226 true))

(assert (=> d!1527226 (forall!12080 (toList!6682 (extractMap!2328 (t!361504 (toList!6681 lm!2709)))) lambda!227432)))

(declare-fun lt!1941292 () Unit!138992)

(declare-fun choose!34195 (ListMap!6153 ListMap!6153 K!15492 V!15738) Unit!138992)

(assert (=> d!1527226 (= lt!1941292 (choose!34195 (extractMap!2328 (t!361504 (toList!6681 lm!2709))) lt!1941083 (_1!31480 (h!60343 (_2!31481 (h!60344 (toList!6681 lm!2709))))) (_2!31480 (h!60343 (_2!31481 (h!60344 (toList!6681 lm!2709)))))))))

(assert (=> d!1527226 (forall!12080 (toList!6682 (+!2460 (extractMap!2328 (t!361504 (toList!6681 lm!2709))) (tuple2!56373 (_1!31480 (h!60343 (_2!31481 (h!60344 (toList!6681 lm!2709))))) (_2!31480 (h!60343 (_2!31481 (h!60344 (toList!6681 lm!2709)))))))) lambda!227432)))

(assert (=> d!1527226 (= (addForallContainsKeyThenBeforeAdding!915 (extractMap!2328 (t!361504 (toList!6681 lm!2709))) lt!1941083 (_1!31480 (h!60343 (_2!31481 (h!60344 (toList!6681 lm!2709))))) (_2!31480 (h!60343 (_2!31481 (h!60344 (toList!6681 lm!2709)))))) lt!1941292)))

(declare-fun bs!1151154 () Bool)

(assert (= bs!1151154 d!1527226))

(declare-fun m!5754328 () Bool)

(assert (=> bs!1151154 m!5754328))

(assert (=> bs!1151154 m!5753596))

(declare-fun m!5754330 () Bool)

(assert (=> bs!1151154 m!5754330))

(assert (=> bs!1151154 m!5753596))

(declare-fun m!5754332 () Bool)

(assert (=> bs!1151154 m!5754332))

(declare-fun m!5754334 () Bool)

(assert (=> bs!1151154 m!5754334))

(assert (=> b!4778085 d!1527226))

(declare-fun d!1527228 () Bool)

(assert (=> d!1527228 (dynLambda!21999 lambda!227358 (h!60343 (_2!31481 (h!60344 (toList!6681 lm!2709)))))))

(declare-fun lt!1941295 () Unit!138992)

(declare-fun choose!34196 (List!54053 Int tuple2!56372) Unit!138992)

(assert (=> d!1527228 (= lt!1941295 (choose!34196 (toList!6682 lt!1941084) lambda!227358 (h!60343 (_2!31481 (h!60344 (toList!6681 lm!2709))))))))

(declare-fun e!2983097 () Bool)

(assert (=> d!1527228 e!2983097))

(declare-fun res!2028333 () Bool)

(assert (=> d!1527228 (=> (not res!2028333) (not e!2983097))))

(assert (=> d!1527228 (= res!2028333 (forall!12080 (toList!6682 lt!1941084) lambda!227358))))

(assert (=> d!1527228 (= (forallContained!4025 (toList!6682 lt!1941084) lambda!227358 (h!60343 (_2!31481 (h!60344 (toList!6681 lm!2709))))) lt!1941295)))

(declare-fun b!4778393 () Bool)

(assert (=> b!4778393 (= e!2983097 (contains!17431 (toList!6682 lt!1941084) (h!60343 (_2!31481 (h!60344 (toList!6681 lm!2709))))))))

(assert (= (and d!1527228 res!2028333) b!4778393))

(declare-fun b_lambda!185219 () Bool)

(assert (=> (not b_lambda!185219) (not d!1527228)))

(declare-fun m!5754336 () Bool)

(assert (=> d!1527228 m!5754336))

(declare-fun m!5754338 () Bool)

(assert (=> d!1527228 m!5754338))

(assert (=> d!1527228 m!5753802))

(declare-fun m!5754340 () Bool)

(assert (=> b!4778393 m!5754340))

(assert (=> b!4778085 d!1527228))

(declare-fun d!1527230 () Bool)

(declare-fun res!2028334 () Bool)

(declare-fun e!2983098 () Bool)

(assert (=> d!1527230 (=> res!2028334 e!2983098)))

(assert (=> d!1527230 (= res!2028334 (is-Nil!53929 (_2!31481 (h!60344 (toList!6681 lm!2709)))))))

(assert (=> d!1527230 (= (forall!12080 (_2!31481 (h!60344 (toList!6681 lm!2709))) lambda!227358) e!2983098)))

(declare-fun b!4778394 () Bool)

(declare-fun e!2983099 () Bool)

(assert (=> b!4778394 (= e!2983098 e!2983099)))

(declare-fun res!2028335 () Bool)

(assert (=> b!4778394 (=> (not res!2028335) (not e!2983099))))

(assert (=> b!4778394 (= res!2028335 (dynLambda!21999 lambda!227358 (h!60343 (_2!31481 (h!60344 (toList!6681 lm!2709))))))))

(declare-fun b!4778395 () Bool)

(assert (=> b!4778395 (= e!2983099 (forall!12080 (t!361503 (_2!31481 (h!60344 (toList!6681 lm!2709)))) lambda!227358))))

(assert (= (and d!1527230 (not res!2028334)) b!4778394))

(assert (= (and b!4778394 res!2028335) b!4778395))

(declare-fun b_lambda!185221 () Bool)

(assert (=> (not b_lambda!185221) (not b!4778394)))

(assert (=> b!4778394 m!5754336))

(declare-fun m!5754342 () Bool)

(assert (=> b!4778395 m!5754342))

(assert (=> b!4778085 d!1527230))

(declare-fun b!4778398 () Bool)

(declare-fun e!2983101 () Option!12888)

(assert (=> b!4778398 (= e!2983101 (getValueByKey!2257 (t!361504 (t!361504 (t!361504 (toList!6681 lm!2709)))) lt!1940876))))

(declare-fun d!1527232 () Bool)

(declare-fun c!814666 () Bool)

(assert (=> d!1527232 (= c!814666 (and (is-Cons!53930 (t!361504 (t!361504 (toList!6681 lm!2709)))) (= (_1!31481 (h!60344 (t!361504 (t!361504 (toList!6681 lm!2709))))) lt!1940876)))))

(declare-fun e!2983100 () Option!12888)

(assert (=> d!1527232 (= (getValueByKey!2257 (t!361504 (t!361504 (toList!6681 lm!2709))) lt!1940876) e!2983100)))

(declare-fun b!4778396 () Bool)

(assert (=> b!4778396 (= e!2983100 (Some!12887 (_2!31481 (h!60344 (t!361504 (t!361504 (toList!6681 lm!2709)))))))))

(declare-fun b!4778397 () Bool)

(assert (=> b!4778397 (= e!2983100 e!2983101)))

(declare-fun c!814667 () Bool)

(assert (=> b!4778397 (= c!814667 (and (is-Cons!53930 (t!361504 (t!361504 (toList!6681 lm!2709)))) (not (= (_1!31481 (h!60344 (t!361504 (t!361504 (toList!6681 lm!2709))))) lt!1940876))))))

(declare-fun b!4778399 () Bool)

(assert (=> b!4778399 (= e!2983101 None!12887)))

(assert (= (and d!1527232 c!814666) b!4778396))

(assert (= (and d!1527232 (not c!814666)) b!4778397))

(assert (= (and b!4778397 c!814667) b!4778398))

(assert (= (and b!4778397 (not c!814667)) b!4778399))

(declare-fun m!5754344 () Bool)

(assert (=> b!4778398 m!5754344))

(assert (=> b!4778102 d!1527232))

(declare-fun d!1527234 () Bool)

(declare-fun res!2028336 () Bool)

(declare-fun e!2983102 () Bool)

(assert (=> d!1527234 (=> res!2028336 e!2983102)))

(assert (=> d!1527234 (= res!2028336 (not (is-Cons!53929 (t!361503 (_2!31481 (h!60344 (toList!6681 lm!2709)))))))))

(assert (=> d!1527234 (= (noDuplicateKeys!2282 (t!361503 (_2!31481 (h!60344 (toList!6681 lm!2709))))) e!2983102)))

(declare-fun b!4778400 () Bool)

(declare-fun e!2983103 () Bool)

(assert (=> b!4778400 (= e!2983102 e!2983103)))

(declare-fun res!2028337 () Bool)

(assert (=> b!4778400 (=> (not res!2028337) (not e!2983103))))

(assert (=> b!4778400 (= res!2028337 (not (containsKey!3768 (t!361503 (t!361503 (_2!31481 (h!60344 (toList!6681 lm!2709))))) (_1!31480 (h!60343 (t!361503 (_2!31481 (h!60344 (toList!6681 lm!2709)))))))))))

(declare-fun b!4778401 () Bool)

(assert (=> b!4778401 (= e!2983103 (noDuplicateKeys!2282 (t!361503 (t!361503 (_2!31481 (h!60344 (toList!6681 lm!2709)))))))))

(assert (= (and d!1527234 (not res!2028336)) b!4778400))

(assert (= (and b!4778400 res!2028337) b!4778401))

(declare-fun m!5754346 () Bool)

(assert (=> b!4778400 m!5754346))

(declare-fun m!5754348 () Bool)

(assert (=> b!4778401 m!5754348))

(assert (=> b!4778035 d!1527234))

(declare-fun d!1527236 () Bool)

(declare-fun res!2028339 () Bool)

(declare-fun e!2983105 () Bool)

(assert (=> d!1527236 (=> res!2028339 e!2983105)))

(declare-fun e!2983104 () Bool)

(assert (=> d!1527236 (= res!2028339 e!2983104)))

(declare-fun res!2028340 () Bool)

(assert (=> d!1527236 (=> (not res!2028340) (not e!2983104))))

(assert (=> d!1527236 (= res!2028340 (is-Cons!53930 (t!361504 (t!361504 (toList!6681 lm!2709)))))))

(assert (=> d!1527236 (= (containsKeyBiggerList!457 (t!361504 (t!361504 (toList!6681 lm!2709))) key!6641) e!2983105)))

(declare-fun b!4778402 () Bool)

(assert (=> b!4778402 (= e!2983104 (containsKey!3768 (_2!31481 (h!60344 (t!361504 (t!361504 (toList!6681 lm!2709))))) key!6641))))

(declare-fun b!4778403 () Bool)

(declare-fun e!2983106 () Bool)

(assert (=> b!4778403 (= e!2983105 e!2983106)))

(declare-fun res!2028338 () Bool)

(assert (=> b!4778403 (=> (not res!2028338) (not e!2983106))))

(assert (=> b!4778403 (= res!2028338 (is-Cons!53930 (t!361504 (t!361504 (toList!6681 lm!2709)))))))

(declare-fun b!4778404 () Bool)

(assert (=> b!4778404 (= e!2983106 (containsKeyBiggerList!457 (t!361504 (t!361504 (t!361504 (toList!6681 lm!2709)))) key!6641))))

(assert (= (and d!1527236 res!2028340) b!4778402))

(assert (= (and d!1527236 (not res!2028339)) b!4778403))

(assert (= (and b!4778403 res!2028338) b!4778404))

(declare-fun m!5754350 () Bool)

(assert (=> b!4778402 m!5754350))

(declare-fun m!5754352 () Bool)

(assert (=> b!4778404 m!5754352))

(assert (=> b!4777980 d!1527236))

(declare-fun d!1527238 () Bool)

(declare-fun res!2028341 () Bool)

(declare-fun e!2983107 () Bool)

(assert (=> d!1527238 (=> res!2028341 e!2983107)))

(assert (=> d!1527238 (= res!2028341 (is-Nil!53929 (toList!6682 (extractMap!2328 (t!361504 (toList!6681 lm!2709))))))))

(assert (=> d!1527238 (= (forall!12080 (toList!6682 (extractMap!2328 (t!361504 (toList!6681 lm!2709)))) lambda!227359) e!2983107)))

(declare-fun b!4778405 () Bool)

(declare-fun e!2983108 () Bool)

(assert (=> b!4778405 (= e!2983107 e!2983108)))

(declare-fun res!2028342 () Bool)

(assert (=> b!4778405 (=> (not res!2028342) (not e!2983108))))

(assert (=> b!4778405 (= res!2028342 (dynLambda!21999 lambda!227359 (h!60343 (toList!6682 (extractMap!2328 (t!361504 (toList!6681 lm!2709)))))))))

(declare-fun b!4778406 () Bool)

(assert (=> b!4778406 (= e!2983108 (forall!12080 (t!361503 (toList!6682 (extractMap!2328 (t!361504 (toList!6681 lm!2709))))) lambda!227359))))

(assert (= (and d!1527238 (not res!2028341)) b!4778405))

(assert (= (and b!4778405 res!2028342) b!4778406))

(declare-fun b_lambda!185223 () Bool)

(assert (=> (not b_lambda!185223) (not b!4778405)))

(declare-fun m!5754354 () Bool)

(assert (=> b!4778405 m!5754354))

(declare-fun m!5754356 () Bool)

(assert (=> b!4778406 m!5754356))

(assert (=> b!4778086 d!1527238))

(declare-fun b!4778407 () Bool)

(declare-fun tp!1357267 () Bool)

(declare-fun e!2983109 () Bool)

(assert (=> b!4778407 (= e!2983109 (and tp_is_empty!33113 tp_is_empty!33117 tp!1357267))))

(assert (=> b!4778120 (= tp!1357259 e!2983109)))

(assert (= (and b!4778120 (is-Cons!53929 (t!361503 (_2!31481 (h!60344 (toList!6681 lm!2709)))))) b!4778407))

(declare-fun e!2983110 () Bool)

(declare-fun b!4778408 () Bool)

(declare-fun tp!1357268 () Bool)

(assert (=> b!4778408 (= e!2983110 (and tp_is_empty!33113 tp_is_empty!33117 tp!1357268))))

(assert (=> b!4778121 (= tp!1357260 e!2983110)))

(assert (= (and b!4778121 (is-Cons!53929 (_2!31481 (h!60344 (t!361504 (toList!6681 lm!2709)))))) b!4778408))

(declare-fun b!4778409 () Bool)

(declare-fun e!2983111 () Bool)

(declare-fun tp!1357269 () Bool)

(declare-fun tp!1357270 () Bool)

(assert (=> b!4778409 (= e!2983111 (and tp!1357269 tp!1357270))))

(assert (=> b!4778121 (= tp!1357261 e!2983111)))

(assert (= (and b!4778121 (is-Cons!53930 (t!361504 (t!361504 (toList!6681 lm!2709))))) b!4778409))

(declare-fun b_lambda!185225 () Bool)

(assert (= b_lambda!185203 (or d!1526984 b_lambda!185225)))

(declare-fun bs!1151155 () Bool)

(declare-fun d!1527240 () Bool)

(assert (= bs!1151155 (and d!1527240 d!1526984)))

(assert (=> bs!1151155 (= (dynLambda!21999 lambda!227359 (h!60343 (_2!31481 (h!60344 (toList!6681 lm!2709))))) (contains!17426 lt!1941070 (_1!31480 (h!60343 (_2!31481 (h!60344 (toList!6681 lm!2709)))))))))

(declare-fun m!5754358 () Bool)

(assert (=> bs!1151155 m!5754358))

(assert (=> b!4778313 d!1527240))

(declare-fun b_lambda!185227 () Bool)

(assert (= b_lambda!185205 (or b!4777972 b_lambda!185227)))

(declare-fun bs!1151156 () Bool)

(declare-fun d!1527242 () Bool)

(assert (= bs!1151156 (and d!1527242 b!4777972)))

(assert (=> bs!1151156 (= (dynLambda!21998 lambda!227313 (h!60347 lt!1940996)) (containsKey!3769 (Cons!53929 (h!60343 (toList!6682 (extractMap!2328 (toList!6681 lm!2709)))) (t!361503 (toList!6682 (extractMap!2328 (toList!6681 lm!2709))))) (h!60347 lt!1940996)))))

(declare-fun m!5754360 () Bool)

(assert (=> bs!1151156 m!5754360))

(assert (=> b!4778328 d!1527242))

(declare-fun b_lambda!185229 () Bool)

(assert (= b_lambda!185197 (or d!1526928 b_lambda!185229)))

(declare-fun bs!1151157 () Bool)

(declare-fun d!1527244 () Bool)

(assert (= bs!1151157 (and d!1527244 d!1526928)))

(assert (=> bs!1151157 (= (dynLambda!21996 lambda!227294 (h!60344 (t!361504 (toList!6681 lm!2709)))) (allKeysSameHash!1933 (_2!31481 (h!60344 (t!361504 (toList!6681 lm!2709)))) (_1!31481 (h!60344 (t!361504 (toList!6681 lm!2709)))) hashF!1687))))

(declare-fun m!5754362 () Bool)

(assert (=> bs!1151157 m!5754362))

(assert (=> b!4778282 d!1527244))

(declare-fun b_lambda!185231 () Bool)

(assert (= b_lambda!185193 (or d!1527000 b_lambda!185231)))

(declare-fun bs!1151158 () Bool)

(declare-fun d!1527246 () Bool)

(assert (= bs!1151158 (and d!1527246 d!1527000)))

(assert (=> bs!1151158 (= (dynLambda!21996 lambda!227360 (h!60344 (t!361504 (toList!6681 lm!2709)))) (noDuplicateKeys!2282 (_2!31481 (h!60344 (t!361504 (toList!6681 lm!2709))))))))

(assert (=> bs!1151158 m!5753856))

(assert (=> b!4778276 d!1527246))

(declare-fun b_lambda!185233 () Bool)

(assert (= b_lambda!185211 (or b!4777994 b_lambda!185233)))

(declare-fun bs!1151159 () Bool)

(declare-fun d!1527248 () Bool)

(assert (= bs!1151159 (and d!1527248 b!4777994)))

(assert (=> bs!1151159 (= (dynLambda!21998 lambda!227320 (h!60347 lt!1941001)) (containsKey!3769 (toList!6682 (extractMap!2328 (toList!6681 lm!2709))) (h!60347 lt!1941001)))))

(declare-fun m!5754364 () Bool)

(assert (=> bs!1151159 m!5754364))

(assert (=> b!4778351 d!1527248))

(declare-fun b_lambda!185235 () Bool)

(assert (= b_lambda!185199 (or d!1526926 b_lambda!185235)))

(declare-fun bs!1151160 () Bool)

(declare-fun d!1527250 () Bool)

(assert (= bs!1151160 (and d!1527250 d!1526926)))

(assert (=> bs!1151160 (= (dynLambda!21996 lambda!227291 (h!60344 (t!361504 (toList!6681 lm!2709)))) (noDuplicateKeys!2282 (_2!31481 (h!60344 (t!361504 (toList!6681 lm!2709))))))))

(assert (=> bs!1151160 m!5753856))

(assert (=> b!4778297 d!1527250))

(declare-fun b_lambda!185237 () Bool)

(assert (= b_lambda!185209 (or b!4777969 b_lambda!185237)))

(declare-fun bs!1151161 () Bool)

(declare-fun d!1527252 () Bool)

(assert (= bs!1151161 (and d!1527252 b!4777969)))

(assert (=> bs!1151161 (= (dynLambda!21998 lambda!227312 (_1!31480 (h!60343 (toList!6682 (extractMap!2328 (toList!6681 lm!2709)))))) (containsKey!3769 (t!361503 (toList!6682 (extractMap!2328 (toList!6681 lm!2709)))) (_1!31480 (h!60343 (toList!6682 (extractMap!2328 (toList!6681 lm!2709)))))))))

(assert (=> bs!1151161 m!5753682))

(assert (=> d!1527206 d!1527252))

(declare-fun b_lambda!185239 () Bool)

(assert (= b_lambda!185207 (or b!4777974 b_lambda!185239)))

(declare-fun bs!1151162 () Bool)

(declare-fun d!1527254 () Bool)

(assert (= bs!1151162 (and d!1527254 b!4777974)))

(assert (=> bs!1151162 (= (dynLambda!22000 lambda!227315 (h!60343 (toList!6682 (extractMap!2328 (toList!6681 lm!2709))))) (_1!31480 (h!60343 (toList!6682 (extractMap!2328 (toList!6681 lm!2709))))))))

(assert (=> b!4778343 d!1527254))

(declare-fun b_lambda!185241 () Bool)

(assert (= b_lambda!185223 (or d!1526984 b_lambda!185241)))

(declare-fun bs!1151163 () Bool)

(declare-fun d!1527256 () Bool)

(assert (= bs!1151163 (and d!1527256 d!1526984)))

(assert (=> bs!1151163 (= (dynLambda!21999 lambda!227359 (h!60343 (toList!6682 (extractMap!2328 (t!361504 (toList!6681 lm!2709)))))) (contains!17426 lt!1941070 (_1!31480 (h!60343 (toList!6682 (extractMap!2328 (t!361504 (toList!6681 lm!2709))))))))))

(declare-fun m!5754366 () Bool)

(assert (=> bs!1151163 m!5754366))

(assert (=> b!4778405 d!1527256))

(declare-fun b_lambda!185243 () Bool)

(assert (= b_lambda!185217 (or b!4778085 b_lambda!185243)))

(declare-fun bs!1151164 () Bool)

(declare-fun d!1527258 () Bool)

(assert (= bs!1151164 (and d!1527258 b!4778085)))

(assert (=> bs!1151164 (= (dynLambda!21999 lambda!227358 (h!60343 (toList!6682 lt!1941084))) (contains!17426 lt!1941083 (_1!31480 (h!60343 (toList!6682 lt!1941084)))))))

(declare-fun m!5754368 () Bool)

(assert (=> bs!1151164 m!5754368))

(assert (=> b!4778388 d!1527258))

(declare-fun b_lambda!185245 () Bool)

(assert (= b_lambda!185185 (or b!4778085 b_lambda!185245)))

(declare-fun bs!1151165 () Bool)

(declare-fun d!1527260 () Bool)

(assert (= bs!1151165 (and d!1527260 b!4778085)))

(assert (=> bs!1151165 (= (dynLambda!21999 lambda!227358 (h!60343 (toList!6682 (extractMap!2328 (t!361504 (toList!6681 lm!2709)))))) (contains!17426 lt!1941083 (_1!31480 (h!60343 (toList!6682 (extractMap!2328 (t!361504 (toList!6681 lm!2709))))))))))

(declare-fun m!5754370 () Bool)

(assert (=> bs!1151165 m!5754370))

(assert (=> b!4778254 d!1527260))

(declare-fun b_lambda!185247 () Bool)

(assert (= b_lambda!185201 (or b!4777995 b_lambda!185247)))

(declare-fun bs!1151166 () Bool)

(declare-fun d!1527262 () Bool)

(assert (= bs!1151166 (and d!1527262 b!4777995)))

(assert (=> bs!1151166 (= (dynLambda!22000 lambda!227321 (h!60343 (toList!6682 (extractMap!2328 (toList!6681 lm!2709))))) (_1!31480 (h!60343 (toList!6682 (extractMap!2328 (toList!6681 lm!2709))))))))

(assert (=> b!4778308 d!1527262))

(declare-fun b_lambda!185249 () Bool)

(assert (= b_lambda!185215 (or b!4778085 b_lambda!185249)))

(declare-fun bs!1151167 () Bool)

(declare-fun d!1527264 () Bool)

(assert (= bs!1151167 (and d!1527264 b!4778085)))

(assert (=> bs!1151167 (= (dynLambda!21999 lambda!227357 (h!60343 (toList!6682 (extractMap!2328 (t!361504 (toList!6681 lm!2709)))))) (contains!17426 (extractMap!2328 (t!361504 (toList!6681 lm!2709))) (_1!31480 (h!60343 (toList!6682 (extractMap!2328 (t!361504 (toList!6681 lm!2709))))))))))

(assert (=> bs!1151167 m!5753596))

(declare-fun m!5754372 () Bool)

(assert (=> bs!1151167 m!5754372))

(assert (=> b!4778371 d!1527264))

(declare-fun b_lambda!185251 () Bool)

(assert (= b_lambda!185183 (or b!4777971 b_lambda!185251)))

(declare-fun bs!1151168 () Bool)

(declare-fun d!1527266 () Bool)

(assert (= bs!1151168 (and d!1527266 b!4777971)))

(assert (=> bs!1151168 (= (dynLambda!21998 lambda!227314 (h!60347 lt!1940993)) (containsKey!3769 (toList!6682 (extractMap!2328 (toList!6681 lm!2709))) (h!60347 lt!1940993)))))

(declare-fun m!5754374 () Bool)

(assert (=> bs!1151168 m!5754374))

(assert (=> b!4778239 d!1527266))

(declare-fun b_lambda!185253 () Bool)

(assert (= b_lambda!185187 (or d!1526906 b_lambda!185253)))

(declare-fun bs!1151169 () Bool)

(declare-fun d!1527268 () Bool)

(assert (= bs!1151169 (and d!1527268 d!1526906)))

(assert (=> bs!1151169 (= (dynLambda!21996 lambda!227282 (h!60344 (t!361504 (toList!6681 lm!2709)))) (noDuplicateKeys!2282 (_2!31481 (h!60344 (t!361504 (toList!6681 lm!2709))))))))

(assert (=> bs!1151169 m!5753856))

(assert (=> b!4778256 d!1527268))

(declare-fun b_lambda!185255 () Bool)

(assert (= b_lambda!185213 (or d!1526920 b_lambda!185255)))

(declare-fun bs!1151170 () Bool)

(declare-fun d!1527270 () Bool)

(assert (= bs!1151170 (and d!1527270 d!1526920)))

(assert (=> bs!1151170 (= (dynLambda!21996 lambda!227288 (h!60344 (t!361504 (toList!6681 lm!2709)))) (noDuplicateKeys!2282 (_2!31481 (h!60344 (t!361504 (toList!6681 lm!2709))))))))

(assert (=> bs!1151170 m!5753856))

(assert (=> b!4778353 d!1527270))

(declare-fun b_lambda!185257 () Bool)

(assert (= b_lambda!185221 (or b!4778085 b_lambda!185257)))

(declare-fun bs!1151171 () Bool)

(declare-fun d!1527272 () Bool)

(assert (= bs!1151171 (and d!1527272 b!4778085)))

(assert (=> bs!1151171 (= (dynLambda!21999 lambda!227358 (h!60343 (_2!31481 (h!60344 (toList!6681 lm!2709))))) (contains!17426 lt!1941083 (_1!31480 (h!60343 (_2!31481 (h!60344 (toList!6681 lm!2709)))))))))

(assert (=> bs!1151171 m!5753794))

(assert (=> b!4778394 d!1527272))

(declare-fun b_lambda!185259 () Bool)

(assert (= b_lambda!185195 (or start!489984 b_lambda!185259)))

(declare-fun bs!1151172 () Bool)

(declare-fun d!1527274 () Bool)

(assert (= bs!1151172 (and d!1527274 start!489984)))

(assert (=> bs!1151172 (= (dynLambda!21996 lambda!227276 (h!60344 (t!361504 (t!361504 (toList!6681 lm!2709))))) (noDuplicateKeys!2282 (_2!31481 (h!60344 (t!361504 (t!361504 (toList!6681 lm!2709)))))))))

(declare-fun m!5754376 () Bool)

(assert (=> bs!1151172 m!5754376))

(assert (=> b!4778278 d!1527274))

(declare-fun b_lambda!185261 () Bool)

(assert (= b_lambda!185219 (or b!4778085 b_lambda!185261)))

(assert (=> d!1527228 d!1527272))

(push 1)

(assert (not b_lambda!185157))

(assert (not b!4778283))

(assert (not b!4778300))

(assert (not b!4778319))

(assert (not b!4778240))

(assert tp_is_empty!33113)

(assert (not b_lambda!185155))

(assert (not b!4778285))

(assert (not b!4778314))

(assert (not b!4778343))

(assert (not d!1527142))

(assert (not bs!1151165))

(assert (not bs!1151158))

(assert (not b!4778387))

(assert (not d!1527168))

(assert (not bm!334639))

(assert (not d!1527118))

(assert (not bm!334635))

(assert (not b!4778289))

(assert (not d!1527194))

(assert (not b!4778347))

(assert (not b!4778345))

(assert (not b!4778325))

(assert (not d!1527158))

(assert (not b!4778337))

(assert (not b!4778322))

(assert (not b!4778266))

(assert (not b!4778244))

(assert tp_is_empty!33117)

(assert (not b!4778255))

(assert (not b!4778350))

(assert (not b!4778386))

(assert (not d!1527112))

(assert (not b!4778257))

(assert (not b!4778373))

(assert (not b!4778284))

(assert (not b_lambda!185251))

(assert (not b!4778407))

(assert (not b!4778404))

(assert (not d!1527108))

(assert (not b!4778287))

(assert (not b_lambda!185261))

(assert (not b!4778359))

(assert (not d!1527152))

(assert (not d!1527188))

(assert (not b!4778374))

(assert (not b_lambda!185253))

(assert (not b_lambda!185233))

(assert (not bm!334636))

(assert (not d!1527106))

(assert (not b_lambda!185227))

(assert (not b_lambda!185259))

(assert (not b_lambda!185191))

(assert (not d!1527100))

(assert (not d!1527094))

(assert (not b!4778317))

(assert (not d!1527202))

(assert (not b!4778357))

(assert (not b_lambda!185239))

(assert (not d!1527116))

(assert (not b!4778398))

(assert (not b!4778248))

(assert (not bs!1151171))

(assert (not b_lambda!185159))

(assert (not b!4778356))

(assert (not b!4778329))

(assert (not b!4778261))

(assert (not b_lambda!185235))

(assert (not b!4778230))

(assert (not b!4778362))

(assert (not d!1527214))

(assert (not b_lambda!185139))

(assert (not b_lambda!185161))

(assert (not b!4778228))

(assert (not bm!334638))

(assert (not b_lambda!185153))

(assert (not b!4778331))

(assert (not bs!1151156))

(assert (not b!4778378))

(assert (not b!4778395))

(assert (not b!4778339))

(assert (not b!4778245))

(assert (not b!4778242))

(assert (not d!1527184))

(assert (not d!1527228))

(assert (not bs!1151159))

(assert (not b!4778408))

(assert (not b!4778269))

(assert (not b!4778375))

(assert (not b_lambda!185241))

(assert (not bm!334637))

(assert (not bm!334632))

(assert (not b!4778267))

(assert (not b_lambda!185243))

(assert (not b!4778312))

(assert (not b!4778369))

(assert (not b!4778320))

(assert (not d!1527176))

(assert (not bs!1151167))

(assert (not b!4778271))

(assert (not b!4778364))

(assert (not d!1527204))

(assert (not bs!1151163))

(assert (not b!4778279))

(assert (not b_lambda!185231))

(assert (not b!4778352))

(assert (not b!4778380))

(assert (not b!4778401))

(assert (not b_lambda!185257))

(assert (not d!1527104))

(assert (not b!4778296))

(assert (not bs!1151164))

(assert (not b!4778372))

(assert (not b!4778367))

(assert (not b!4778402))

(assert (not b!4778354))

(assert (not bs!1151161))

(assert (not bm!334633))

(assert (not b!4778281))

(assert (not d!1527154))

(assert (not b!4778341))

(assert (not bm!334634))

(assert (not d!1527206))

(assert (not b_lambda!185237))

(assert (not b!4778277))

(assert (not bs!1151169))

(assert (not b!4778360))

(assert (not d!1527134))

(assert (not d!1527222))

(assert (not b!4778409))

(assert (not b!4778389))

(assert (not b!4778336))

(assert (not d!1527226))

(assert (not d!1527156))

(assert (not b_lambda!185189))

(assert (not bs!1151160))

(assert (not b!4778366))

(assert (not bs!1151157))

(assert (not b!4778298))

(assert (not b_lambda!185229))

(assert (not b!4778346))

(assert (not d!1527220))

(assert (not b!4778302))

(assert (not b!4778363))

(assert (not b!4778393))

(assert (not bs!1151168))

(assert (not b!4778274))

(assert (not b!4778400))

(assert (not b!4778358))

(assert (not b_lambda!185247))

(assert (not b_lambda!185249))

(assert (not d!1527110))

(assert (not d!1527216))

(assert (not d!1527098))

(assert (not b!4778286))

(assert (not b!4778321))

(assert (not b!4778377))

(assert (not bs!1151172))

(assert (not b!4778406))

(assert (not b!4778226))

(assert (not b!4778227))

(assert (not b!4778259))

(assert (not d!1527180))

(assert (not b!4778376))

(assert (not b!4778310))

(assert (not bs!1151170))

(assert (not b!4778308))

(assert (not b_lambda!185255))

(assert (not b!4778365))

(assert (not bs!1151155))

(assert (not b_lambda!185245))

(assert (not b_lambda!185225))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

