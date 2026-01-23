; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!488574 () Bool)

(assert start!488574)

(declare-fun b!4771855 () Bool)

(declare-fun e!2978855 () Bool)

(assert (=> b!4771855 (= e!2978855 true)))

(declare-datatypes ((K!15164 0))(
  ( (K!15165 (val!20437 Int)) )
))
(declare-datatypes ((V!15410 0))(
  ( (V!15411 (val!20438 Int)) )
))
(declare-datatypes ((tuple2!55848 0))(
  ( (tuple2!55849 (_1!31218 K!15164) (_2!31218 V!15410)) )
))
(declare-datatypes ((List!53773 0))(
  ( (Nil!53649) (Cons!53649 (h!60061 tuple2!55848) (t!361223 List!53773)) )
))
(declare-datatypes ((ListMap!5907 0))(
  ( (ListMap!5908 (toList!6427 List!53773)) )
))
(declare-fun lt!1934550 () ListMap!5907)

(declare-fun key!2872 () K!15164)

(declare-fun v!9615 () V!15410)

(declare-fun apply!12720 (ListMap!5907 K!15164) V!15410)

(assert (=> b!4771855 (= (apply!12720 lt!1934550 key!2872) v!9615)))

(declare-datatypes ((Hashable!6670 0))(
  ( (HashableExt!6669 (__x!32693 Int)) )
))
(declare-fun hashF!980 () Hashable!6670)

(declare-datatypes ((tuple2!55850 0))(
  ( (tuple2!55851 (_1!31219 (_ BitVec 64)) (_2!31219 List!53773)) )
))
(declare-datatypes ((List!53774 0))(
  ( (Nil!53650) (Cons!53650 (h!60062 tuple2!55850) (t!361224 List!53774)) )
))
(declare-datatypes ((ListLongMap!4841 0))(
  ( (ListLongMap!4842 (toList!6428 List!53774)) )
))
(declare-fun lm!1309 () ListLongMap!4841)

(declare-datatypes ((Unit!138544 0))(
  ( (Unit!138545) )
))
(declare-fun lt!1934551 () Unit!138544)

(declare-fun lemmaExtractMapPreservesMapping!6 (ListLongMap!4841 K!15164 V!15410 Hashable!6670) Unit!138544)

(assert (=> b!4771855 (= lt!1934551 (lemmaExtractMapPreservesMapping!6 lm!1309 key!2872 v!9615 hashF!980))))

(declare-fun lt!1934556 () Unit!138544)

(declare-fun lemmaInGenericMapThenInLongMap!222 (ListLongMap!4841 K!15164 Hashable!6670) Unit!138544)

(assert (=> b!4771855 (= lt!1934556 (lemmaInGenericMapThenInLongMap!222 lm!1309 key!2872 hashF!980))))

(declare-fun b!4771856 () Bool)

(declare-fun e!2978856 () Bool)

(declare-fun e!2978857 () Bool)

(assert (=> b!4771856 (= e!2978856 (not e!2978857))))

(declare-fun res!2024108 () Bool)

(assert (=> b!4771856 (=> res!2024108 e!2978857)))

(declare-datatypes ((Option!12765 0))(
  ( (None!12764) (Some!12764 (v!47891 tuple2!55848)) )
))
(declare-fun lt!1934553 () Option!12765)

(declare-fun get!18140 (Option!12765) tuple2!55848)

(assert (=> b!4771856 (= res!2024108 (not (= (_2!31218 (get!18140 lt!1934553)) v!9615)))))

(declare-fun isDefined!9911 (Option!12765) Bool)

(assert (=> b!4771856 (isDefined!9911 lt!1934553)))

(declare-fun lt!1934549 () List!53773)

(declare-fun getPair!690 (List!53773 K!15164) Option!12765)

(assert (=> b!4771856 (= lt!1934553 (getPair!690 lt!1934549 key!2872))))

(declare-fun lt!1934558 () Unit!138544)

(declare-fun lt!1934555 () tuple2!55850)

(declare-fun lambda!225357 () Int)

(declare-fun forallContained!3915 (List!53774 Int tuple2!55850) Unit!138544)

(assert (=> b!4771856 (= lt!1934558 (forallContained!3915 (toList!6428 lm!1309) lambda!225357 lt!1934555))))

(declare-fun lt!1934548 () Unit!138544)

(declare-fun lemmaInGenMapThenGetPairDefined!464 (ListLongMap!4841 K!15164 Hashable!6670) Unit!138544)

(assert (=> b!4771856 (= lt!1934548 (lemmaInGenMapThenGetPairDefined!464 lm!1309 key!2872 hashF!980))))

(declare-fun lt!1934559 () Unit!138544)

(assert (=> b!4771856 (= lt!1934559 (forallContained!3915 (toList!6428 lm!1309) lambda!225357 lt!1934555))))

(declare-fun contains!17058 (List!53774 tuple2!55850) Bool)

(assert (=> b!4771856 (contains!17058 (toList!6428 lm!1309) lt!1934555)))

(declare-fun lt!1934557 () (_ BitVec 64))

(assert (=> b!4771856 (= lt!1934555 (tuple2!55851 lt!1934557 lt!1934549))))

(declare-fun lt!1934554 () Unit!138544)

(declare-fun lemmaGetValueImpliesTupleContained!481 (ListLongMap!4841 (_ BitVec 64) List!53773) Unit!138544)

(assert (=> b!4771856 (= lt!1934554 (lemmaGetValueImpliesTupleContained!481 lm!1309 lt!1934557 lt!1934549))))

(declare-fun apply!12721 (ListLongMap!4841 (_ BitVec 64)) List!53773)

(assert (=> b!4771856 (= lt!1934549 (apply!12721 lm!1309 lt!1934557))))

(declare-fun contains!17059 (ListLongMap!4841 (_ BitVec 64)) Bool)

(assert (=> b!4771856 (contains!17059 lm!1309 lt!1934557)))

(declare-fun hash!4645 (Hashable!6670 K!15164) (_ BitVec 64))

(assert (=> b!4771856 (= lt!1934557 (hash!4645 hashF!980 key!2872))))

(declare-fun lt!1934552 () Unit!138544)

(declare-fun lemmaInGenMapThenLongMapContainsHash!886 (ListLongMap!4841 K!15164 Hashable!6670) Unit!138544)

(assert (=> b!4771856 (= lt!1934552 (lemmaInGenMapThenLongMapContainsHash!886 lm!1309 key!2872 hashF!980))))

(declare-fun b!4771857 () Bool)

(declare-fun e!2978854 () Bool)

(declare-fun tp!1356702 () Bool)

(assert (=> b!4771857 (= e!2978854 tp!1356702)))

(declare-fun res!2024109 () Bool)

(declare-fun e!2978858 () Bool)

(assert (=> start!488574 (=> (not res!2024109) (not e!2978858))))

(declare-fun forall!11934 (List!53774 Int) Bool)

(assert (=> start!488574 (= res!2024109 (forall!11934 (toList!6428 lm!1309) lambda!225357))))

(assert (=> start!488574 e!2978858))

(declare-fun inv!69190 (ListLongMap!4841) Bool)

(assert (=> start!488574 (and (inv!69190 lm!1309) e!2978854)))

(assert (=> start!488574 true))

(declare-fun tp_is_empty!32677 () Bool)

(assert (=> start!488574 tp_is_empty!32677))

(declare-fun tp_is_empty!32679 () Bool)

(assert (=> start!488574 tp_is_empty!32679))

(declare-fun b!4771858 () Bool)

(assert (=> b!4771858 (= e!2978857 e!2978855)))

(declare-fun res!2024107 () Bool)

(assert (=> b!4771858 (=> res!2024107 e!2978855)))

(assert (=> b!4771858 (= res!2024107 (not (forall!11934 (toList!6428 lm!1309) lambda!225357)))))

(declare-fun getValue!10 (List!53774 K!15164) V!15410)

(assert (=> b!4771858 (= (getValue!10 (toList!6428 lm!1309) key!2872) v!9615)))

(declare-fun lt!1934546 () Unit!138544)

(declare-fun lemmaGetValueEquivToGetPair!10 (ListLongMap!4841 K!15164 V!15410 Hashable!6670) Unit!138544)

(assert (=> b!4771858 (= lt!1934546 (lemmaGetValueEquivToGetPair!10 lm!1309 key!2872 v!9615 hashF!980))))

(declare-fun containsKeyBiggerList!344 (List!53774 K!15164) Bool)

(assert (=> b!4771858 (containsKeyBiggerList!344 (toList!6428 lm!1309) key!2872)))

(declare-fun lt!1934547 () Unit!138544)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!202 (ListLongMap!4841 K!15164 Hashable!6670) Unit!138544)

(assert (=> b!4771858 (= lt!1934547 (lemmaInLongMapThenContainsKeyBiggerList!202 lm!1309 key!2872 hashF!980))))

(declare-fun b!4771859 () Bool)

(declare-fun res!2024106 () Bool)

(assert (=> b!4771859 (=> (not res!2024106) (not e!2978858))))

(declare-fun allKeysSameHashInMap!2075 (ListLongMap!4841 Hashable!6670) Bool)

(assert (=> b!4771859 (= res!2024106 (allKeysSameHashInMap!2075 lm!1309 hashF!980))))

(declare-fun b!4771860 () Bool)

(assert (=> b!4771860 (= e!2978858 e!2978856)))

(declare-fun res!2024110 () Bool)

(assert (=> b!4771860 (=> (not res!2024110) (not e!2978856))))

(declare-fun contains!17060 (ListMap!5907 K!15164) Bool)

(assert (=> b!4771860 (= res!2024110 (contains!17060 lt!1934550 key!2872))))

(declare-fun extractMap!2205 (List!53774) ListMap!5907)

(assert (=> b!4771860 (= lt!1934550 (extractMap!2205 (toList!6428 lm!1309)))))

(assert (= (and start!488574 res!2024109) b!4771859))

(assert (= (and b!4771859 res!2024106) b!4771860))

(assert (= (and b!4771860 res!2024110) b!4771856))

(assert (= (and b!4771856 (not res!2024108)) b!4771858))

(assert (= (and b!4771858 (not res!2024107)) b!4771855))

(assert (= start!488574 b!4771857))

(declare-fun m!5744226 () Bool)

(assert (=> b!4771860 m!5744226))

(declare-fun m!5744228 () Bool)

(assert (=> b!4771860 m!5744228))

(declare-fun m!5744230 () Bool)

(assert (=> b!4771859 m!5744230))

(declare-fun m!5744232 () Bool)

(assert (=> b!4771858 m!5744232))

(declare-fun m!5744234 () Bool)

(assert (=> b!4771858 m!5744234))

(declare-fun m!5744236 () Bool)

(assert (=> b!4771858 m!5744236))

(declare-fun m!5744238 () Bool)

(assert (=> b!4771858 m!5744238))

(declare-fun m!5744240 () Bool)

(assert (=> b!4771858 m!5744240))

(assert (=> start!488574 m!5744238))

(declare-fun m!5744242 () Bool)

(assert (=> start!488574 m!5744242))

(declare-fun m!5744244 () Bool)

(assert (=> b!4771856 m!5744244))

(declare-fun m!5744246 () Bool)

(assert (=> b!4771856 m!5744246))

(declare-fun m!5744248 () Bool)

(assert (=> b!4771856 m!5744248))

(declare-fun m!5744250 () Bool)

(assert (=> b!4771856 m!5744250))

(declare-fun m!5744252 () Bool)

(assert (=> b!4771856 m!5744252))

(declare-fun m!5744254 () Bool)

(assert (=> b!4771856 m!5744254))

(declare-fun m!5744256 () Bool)

(assert (=> b!4771856 m!5744256))

(declare-fun m!5744258 () Bool)

(assert (=> b!4771856 m!5744258))

(declare-fun m!5744260 () Bool)

(assert (=> b!4771856 m!5744260))

(declare-fun m!5744262 () Bool)

(assert (=> b!4771856 m!5744262))

(assert (=> b!4771856 m!5744244))

(declare-fun m!5744264 () Bool)

(assert (=> b!4771856 m!5744264))

(declare-fun m!5744266 () Bool)

(assert (=> b!4771855 m!5744266))

(declare-fun m!5744268 () Bool)

(assert (=> b!4771855 m!5744268))

(declare-fun m!5744270 () Bool)

(assert (=> b!4771855 m!5744270))

(check-sat (not b!4771856) (not b!4771855) (not b!4771860) tp_is_empty!32677 (not b!4771858) (not b!4771857) (not b!4771859) tp_is_empty!32679 (not start!488574))
(check-sat)
