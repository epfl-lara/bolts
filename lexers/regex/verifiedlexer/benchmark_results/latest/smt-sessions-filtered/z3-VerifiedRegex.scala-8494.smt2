; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!441840 () Bool)

(assert start!441840)

(declare-fun b!4486125 () Bool)

(declare-fun e!2794034 () Bool)

(declare-fun e!2794040 () Bool)

(assert (=> b!4486125 (= e!2794034 e!2794040)))

(declare-fun res!1863530 () Bool)

(assert (=> b!4486125 (=> res!1863530 e!2794040)))

(declare-datatypes ((K!11875 0))(
  ( (K!11876 (val!17771 Int)) )
))
(declare-datatypes ((V!12121 0))(
  ( (V!12122 (val!17772 Int)) )
))
(declare-datatypes ((tuple2!50810 0))(
  ( (tuple2!50811 (_1!28699 K!11875) (_2!28699 V!12121)) )
))
(declare-datatypes ((List!50584 0))(
  ( (Nil!50460) (Cons!50460 (h!56259 tuple2!50810) (t!357538 List!50584)) )
))
(declare-datatypes ((tuple2!50812 0))(
  ( (tuple2!50813 (_1!28700 (_ BitVec 64)) (_2!28700 List!50584)) )
))
(declare-datatypes ((List!50585 0))(
  ( (Nil!50461) (Cons!50461 (h!56260 tuple2!50812) (t!357539 List!50585)) )
))
(declare-datatypes ((ListLongMap!2827 0))(
  ( (ListLongMap!2828 (toList!4195 List!50585)) )
))
(declare-fun lt!1671372 () ListLongMap!2827)

(declare-fun hash!344 () (_ BitVec 64))

(declare-fun contains!13087 (ListLongMap!2827 (_ BitVec 64)) Bool)

(assert (=> b!4486125 (= res!1863530 (not (contains!13087 lt!1671372 hash!344)))))

(declare-fun lm!1477 () ListLongMap!2827)

(declare-fun tail!7615 (ListLongMap!2827) ListLongMap!2827)

(assert (=> b!4486125 (= lt!1671372 (tail!7615 lm!1477))))

(declare-fun res!1863524 () Bool)

(declare-fun e!2794043 () Bool)

(assert (=> start!441840 (=> (not res!1863524) (not e!2794043))))

(declare-fun lambda!166433 () Int)

(declare-fun forall!10110 (List!50585 Int) Bool)

(assert (=> start!441840 (= res!1863524 (forall!10110 (toList!4195 lm!1477) lambda!166433))))

(assert (=> start!441840 e!2794043))

(assert (=> start!441840 true))

(declare-fun e!2794039 () Bool)

(declare-fun inv!66059 (ListLongMap!2827) Bool)

(assert (=> start!441840 (and (inv!66059 lm!1477) e!2794039)))

(declare-fun tp_is_empty!27653 () Bool)

(assert (=> start!441840 tp_is_empty!27653))

(declare-fun e!2794036 () Bool)

(assert (=> start!441840 e!2794036))

(declare-fun b!4486126 () Bool)

(declare-fun tp!1337043 () Bool)

(assert (=> b!4486126 (= e!2794039 tp!1337043)))

(declare-fun b!4486127 () Bool)

(declare-fun res!1863528 () Bool)

(assert (=> b!4486127 (=> (not res!1863528) (not e!2794043))))

(declare-datatypes ((Hashable!5489 0))(
  ( (HashableExt!5488 (__x!31192 Int)) )
))
(declare-fun hashF!1107 () Hashable!5489)

(declare-fun allKeysSameHashInMap!1201 (ListLongMap!2827 Hashable!5489) Bool)

(assert (=> b!4486127 (= res!1863528 (allKeysSameHashInMap!1201 lm!1477 hashF!1107))))

(declare-fun b!4486128 () Bool)

(declare-fun tp_is_empty!27655 () Bool)

(declare-fun tp!1337042 () Bool)

(assert (=> b!4486128 (= e!2794036 (and tp_is_empty!27653 tp_is_empty!27655 tp!1337042))))

(declare-fun b!4486129 () Bool)

(declare-fun res!1863532 () Bool)

(assert (=> b!4486129 (=> (not res!1863532) (not e!2794043))))

(declare-fun key!3287 () K!11875)

(declare-datatypes ((ListMap!3457 0))(
  ( (ListMap!3458 (toList!4196 List!50584)) )
))
(declare-fun contains!13088 (ListMap!3457 K!11875) Bool)

(declare-fun extractMap!1150 (List!50585) ListMap!3457)

(assert (=> b!4486129 (= res!1863532 (contains!13088 (extractMap!1150 (toList!4195 lm!1477)) key!3287))))

(declare-fun b!4486130 () Bool)

(declare-fun e!2794038 () Bool)

(declare-fun e!2794042 () Bool)

(assert (=> b!4486130 (= e!2794038 e!2794042)))

(declare-fun res!1863525 () Bool)

(assert (=> b!4486130 (=> res!1863525 e!2794042)))

(declare-fun containsKeyBiggerList!74 (List!50585 K!11875) Bool)

(assert (=> b!4486130 (= res!1863525 (not (containsKeyBiggerList!74 (t!357539 (toList!4195 lm!1477)) key!3287)))))

(assert (=> b!4486130 (containsKeyBiggerList!74 (toList!4195 lt!1671372) key!3287)))

(declare-datatypes ((Unit!90134 0))(
  ( (Unit!90135) )
))
(declare-fun lt!1671374 () Unit!90134)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!10 (ListLongMap!2827 K!11875 Hashable!5489) Unit!90134)

(assert (=> b!4486130 (= lt!1671374 (lemmaInLongMapThenContainsKeyBiggerList!10 lt!1671372 key!3287 hashF!1107))))

(declare-fun b!4486131 () Bool)

(declare-fun e!2794041 () Bool)

(assert (=> b!4486131 (= e!2794042 e!2794041)))

(declare-fun res!1863520 () Bool)

(assert (=> b!4486131 (=> res!1863520 e!2794041)))

(assert (=> b!4486131 (= res!1863520 (not (contains!13088 (extractMap!1150 (t!357539 (toList!4195 lm!1477))) key!3287)))))

(assert (=> b!4486131 (contains!13088 (extractMap!1150 (toList!4195 lt!1671372)) key!3287)))

(declare-fun lt!1671375 () Unit!90134)

(declare-fun lemmaListContainsThenExtractedMapContains!64 (ListLongMap!2827 K!11875 Hashable!5489) Unit!90134)

(assert (=> b!4486131 (= lt!1671375 (lemmaListContainsThenExtractedMapContains!64 lt!1671372 key!3287 hashF!1107))))

(declare-fun b!4486132 () Bool)

(declare-fun res!1863529 () Bool)

(declare-fun e!2794037 () Bool)

(assert (=> b!4486132 (=> (not res!1863529) (not e!2794037))))

(declare-fun newBucket!178 () List!50584)

(declare-fun allKeysSameHash!948 (List!50584 (_ BitVec 64) Hashable!5489) Bool)

(assert (=> b!4486132 (= res!1863529 (allKeysSameHash!948 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4486133 () Bool)

(assert (=> b!4486133 (= e!2794040 e!2794038)))

(declare-fun res!1863519 () Bool)

(assert (=> b!4486133 (=> res!1863519 e!2794038)))

(declare-fun lt!1671382 () Bool)

(assert (=> b!4486133 (= res!1863519 lt!1671382)))

(declare-fun lt!1671381 () Unit!90134)

(declare-fun e!2794035 () Unit!90134)

(assert (=> b!4486133 (= lt!1671381 e!2794035)))

(declare-fun c!764057 () Bool)

(assert (=> b!4486133 (= c!764057 lt!1671382)))

(declare-fun lt!1671373 () List!50584)

(declare-fun containsKey!1606 (List!50584 K!11875) Bool)

(assert (=> b!4486133 (= lt!1671382 (not (containsKey!1606 lt!1671373 key!3287)))))

(declare-fun b!4486134 () Bool)

(declare-fun res!1863527 () Bool)

(assert (=> b!4486134 (=> res!1863527 e!2794040)))

(declare-fun lt!1671380 () tuple2!50812)

(declare-fun contains!13089 (List!50585 tuple2!50812) Bool)

(assert (=> b!4486134 (= res!1863527 (not (contains!13089 (t!357539 (toList!4195 lm!1477)) lt!1671380)))))

(declare-fun b!4486135 () Bool)

(declare-fun res!1863522 () Bool)

(assert (=> b!4486135 (=> res!1863522 e!2794040)))

(declare-fun apply!11831 (ListLongMap!2827 (_ BitVec 64)) List!50584)

(assert (=> b!4486135 (= res!1863522 (not (= (apply!11831 lt!1671372 hash!344) lt!1671373)))))

(declare-fun b!4486136 () Bool)

(declare-fun res!1863521 () Bool)

(assert (=> b!4486136 (=> res!1863521 e!2794034)))

(declare-fun noDuplicateKeys!1094 (List!50584) Bool)

(assert (=> b!4486136 (= res!1863521 (not (noDuplicateKeys!1094 newBucket!178)))))

(declare-fun b!4486137 () Bool)

(declare-fun isEmpty!28543 (ListLongMap!2827) Bool)

(assert (=> b!4486137 (= e!2794041 (not (isEmpty!28543 lm!1477)))))

(declare-fun b!4486138 () Bool)

(assert (=> b!4486138 (= e!2794037 (not e!2794034))))

(declare-fun res!1863526 () Bool)

(assert (=> b!4486138 (=> res!1863526 e!2794034)))

(declare-fun removePairForKey!721 (List!50584 K!11875) List!50584)

(assert (=> b!4486138 (= res!1863526 (not (= newBucket!178 (removePairForKey!721 lt!1671373 key!3287))))))

(declare-fun lt!1671379 () Unit!90134)

(declare-fun forallContained!2369 (List!50585 Int tuple2!50812) Unit!90134)

(assert (=> b!4486138 (= lt!1671379 (forallContained!2369 (toList!4195 lm!1477) lambda!166433 lt!1671380))))

(assert (=> b!4486138 (contains!13089 (toList!4195 lm!1477) lt!1671380)))

(assert (=> b!4486138 (= lt!1671380 (tuple2!50813 hash!344 lt!1671373))))

(declare-fun lt!1671378 () Unit!90134)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!606 (List!50585 (_ BitVec 64) List!50584) Unit!90134)

(assert (=> b!4486138 (= lt!1671378 (lemmaGetValueByKeyImpliesContainsTuple!606 (toList!4195 lm!1477) hash!344 lt!1671373))))

(assert (=> b!4486138 (= lt!1671373 (apply!11831 lm!1477 hash!344))))

(declare-fun lt!1671376 () (_ BitVec 64))

(assert (=> b!4486138 (contains!13087 lm!1477 lt!1671376)))

(declare-fun lt!1671371 () Unit!90134)

(declare-fun lemmaInGenMapThenLongMapContainsHash!168 (ListLongMap!2827 K!11875 Hashable!5489) Unit!90134)

(assert (=> b!4486138 (= lt!1671371 (lemmaInGenMapThenLongMapContainsHash!168 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4486139 () Bool)

(declare-fun Unit!90136 () Unit!90134)

(assert (=> b!4486139 (= e!2794035 Unit!90136)))

(declare-fun b!4486140 () Bool)

(declare-fun res!1863523 () Bool)

(assert (=> b!4486140 (=> res!1863523 e!2794034)))

(get-info :version)

(assert (=> b!4486140 (= res!1863523 (or ((_ is Nil!50461) (toList!4195 lm!1477)) (= (_1!28700 (h!56260 (toList!4195 lm!1477))) hash!344)))))

(declare-fun b!4486141 () Bool)

(declare-fun Unit!90137 () Unit!90134)

(assert (=> b!4486141 (= e!2794035 Unit!90137)))

(declare-fun lt!1671377 () Unit!90134)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!82 (ListLongMap!2827 K!11875 Hashable!5489) Unit!90134)

(assert (=> b!4486141 (= lt!1671377 (lemmaNotInItsHashBucketThenNotInMap!82 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4486141 false))

(declare-fun b!4486142 () Bool)

(assert (=> b!4486142 (= e!2794043 e!2794037)))

(declare-fun res!1863531 () Bool)

(assert (=> b!4486142 (=> (not res!1863531) (not e!2794037))))

(assert (=> b!4486142 (= res!1863531 (= lt!1671376 hash!344))))

(declare-fun hash!2603 (Hashable!5489 K!11875) (_ BitVec 64))

(assert (=> b!4486142 (= lt!1671376 (hash!2603 hashF!1107 key!3287))))

(assert (= (and start!441840 res!1863524) b!4486127))

(assert (= (and b!4486127 res!1863528) b!4486129))

(assert (= (and b!4486129 res!1863532) b!4486142))

(assert (= (and b!4486142 res!1863531) b!4486132))

(assert (= (and b!4486132 res!1863529) b!4486138))

(assert (= (and b!4486138 (not res!1863526)) b!4486136))

(assert (= (and b!4486136 (not res!1863521)) b!4486140))

(assert (= (and b!4486140 (not res!1863523)) b!4486125))

(assert (= (and b!4486125 (not res!1863530)) b!4486135))

(assert (= (and b!4486135 (not res!1863522)) b!4486134))

(assert (= (and b!4486134 (not res!1863527)) b!4486133))

(assert (= (and b!4486133 c!764057) b!4486141))

(assert (= (and b!4486133 (not c!764057)) b!4486139))

(assert (= (and b!4486133 (not res!1863519)) b!4486130))

(assert (= (and b!4486130 (not res!1863525)) b!4486131))

(assert (= (and b!4486131 (not res!1863520)) b!4486137))

(assert (= start!441840 b!4486126))

(assert (= (and start!441840 ((_ is Cons!50460) newBucket!178)) b!4486128))

(declare-fun m!5206857 () Bool)

(assert (=> b!4486134 m!5206857))

(declare-fun m!5206859 () Bool)

(assert (=> b!4486142 m!5206859))

(declare-fun m!5206861 () Bool)

(assert (=> start!441840 m!5206861))

(declare-fun m!5206863 () Bool)

(assert (=> start!441840 m!5206863))

(declare-fun m!5206865 () Bool)

(assert (=> b!4486136 m!5206865))

(declare-fun m!5206867 () Bool)

(assert (=> b!4486133 m!5206867))

(declare-fun m!5206869 () Bool)

(assert (=> b!4486131 m!5206869))

(declare-fun m!5206871 () Bool)

(assert (=> b!4486131 m!5206871))

(declare-fun m!5206873 () Bool)

(assert (=> b!4486131 m!5206873))

(declare-fun m!5206875 () Bool)

(assert (=> b!4486131 m!5206875))

(assert (=> b!4486131 m!5206873))

(assert (=> b!4486131 m!5206869))

(declare-fun m!5206877 () Bool)

(assert (=> b!4486131 m!5206877))

(declare-fun m!5206879 () Bool)

(assert (=> b!4486135 m!5206879))

(declare-fun m!5206881 () Bool)

(assert (=> b!4486127 m!5206881))

(declare-fun m!5206883 () Bool)

(assert (=> b!4486129 m!5206883))

(assert (=> b!4486129 m!5206883))

(declare-fun m!5206885 () Bool)

(assert (=> b!4486129 m!5206885))

(declare-fun m!5206887 () Bool)

(assert (=> b!4486141 m!5206887))

(declare-fun m!5206889 () Bool)

(assert (=> b!4486132 m!5206889))

(declare-fun m!5206891 () Bool)

(assert (=> b!4486138 m!5206891))

(declare-fun m!5206893 () Bool)

(assert (=> b!4486138 m!5206893))

(declare-fun m!5206895 () Bool)

(assert (=> b!4486138 m!5206895))

(declare-fun m!5206897 () Bool)

(assert (=> b!4486138 m!5206897))

(declare-fun m!5206899 () Bool)

(assert (=> b!4486138 m!5206899))

(declare-fun m!5206901 () Bool)

(assert (=> b!4486138 m!5206901))

(declare-fun m!5206903 () Bool)

(assert (=> b!4486138 m!5206903))

(declare-fun m!5206905 () Bool)

(assert (=> b!4486130 m!5206905))

(declare-fun m!5206907 () Bool)

(assert (=> b!4486130 m!5206907))

(declare-fun m!5206909 () Bool)

(assert (=> b!4486130 m!5206909))

(declare-fun m!5206911 () Bool)

(assert (=> b!4486137 m!5206911))

(declare-fun m!5206913 () Bool)

(assert (=> b!4486125 m!5206913))

(declare-fun m!5206915 () Bool)

(assert (=> b!4486125 m!5206915))

(check-sat (not b!4486141) tp_is_empty!27655 tp_is_empty!27653 (not b!4486133) (not b!4486127) (not b!4486132) (not start!441840) (not b!4486129) (not b!4486136) (not b!4486130) (not b!4486128) (not b!4486138) (not b!4486134) (not b!4486126) (not b!4486142) (not b!4486125) (not b!4486137) (not b!4486131) (not b!4486135))
(check-sat)
(get-model)

(declare-fun d!1373307 () Bool)

(declare-fun res!1863543 () Bool)

(declare-fun e!2794054 () Bool)

(assert (=> d!1373307 (=> res!1863543 e!2794054)))

(assert (=> d!1373307 (= res!1863543 (and ((_ is Cons!50460) lt!1671373) (= (_1!28699 (h!56259 lt!1671373)) key!3287)))))

(assert (=> d!1373307 (= (containsKey!1606 lt!1671373 key!3287) e!2794054)))

(declare-fun b!4486153 () Bool)

(declare-fun e!2794055 () Bool)

(assert (=> b!4486153 (= e!2794054 e!2794055)))

(declare-fun res!1863544 () Bool)

(assert (=> b!4486153 (=> (not res!1863544) (not e!2794055))))

(assert (=> b!4486153 (= res!1863544 ((_ is Cons!50460) lt!1671373))))

(declare-fun b!4486154 () Bool)

(assert (=> b!4486154 (= e!2794055 (containsKey!1606 (t!357538 lt!1671373) key!3287))))

(assert (= (and d!1373307 (not res!1863543)) b!4486153))

(assert (= (and b!4486153 res!1863544) b!4486154))

(declare-fun m!5206925 () Bool)

(assert (=> b!4486154 m!5206925))

(assert (=> b!4486133 d!1373307))

(declare-fun d!1373313 () Bool)

(declare-datatypes ((Option!11004 0))(
  ( (None!11003) (Some!11003 (v!44423 List!50584)) )
))
(declare-fun get!16469 (Option!11004) List!50584)

(declare-fun getValueByKey!984 (List!50585 (_ BitVec 64)) Option!11004)

(assert (=> d!1373313 (= (apply!11831 lt!1671372 hash!344) (get!16469 (getValueByKey!984 (toList!4195 lt!1671372) hash!344)))))

(declare-fun bs!825999 () Bool)

(assert (= bs!825999 d!1373313))

(declare-fun m!5206927 () Bool)

(assert (=> bs!825999 m!5206927))

(assert (=> bs!825999 m!5206927))

(declare-fun m!5206929 () Bool)

(assert (=> bs!825999 m!5206929))

(assert (=> b!4486135 d!1373313))

(declare-fun d!1373315 () Bool)

(declare-fun lt!1671401 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!8195 (List!50585) (InoxSet tuple2!50812))

(assert (=> d!1373315 (= lt!1671401 (select (content!8195 (t!357539 (toList!4195 lm!1477))) lt!1671380))))

(declare-fun e!2794073 () Bool)

(assert (=> d!1373315 (= lt!1671401 e!2794073)))

(declare-fun res!1863556 () Bool)

(assert (=> d!1373315 (=> (not res!1863556) (not e!2794073))))

(assert (=> d!1373315 (= res!1863556 ((_ is Cons!50461) (t!357539 (toList!4195 lm!1477))))))

(assert (=> d!1373315 (= (contains!13089 (t!357539 (toList!4195 lm!1477)) lt!1671380) lt!1671401)))

(declare-fun b!4486177 () Bool)

(declare-fun e!2794072 () Bool)

(assert (=> b!4486177 (= e!2794073 e!2794072)))

(declare-fun res!1863555 () Bool)

(assert (=> b!4486177 (=> res!1863555 e!2794072)))

(assert (=> b!4486177 (= res!1863555 (= (h!56260 (t!357539 (toList!4195 lm!1477))) lt!1671380))))

(declare-fun b!4486178 () Bool)

(assert (=> b!4486178 (= e!2794072 (contains!13089 (t!357539 (t!357539 (toList!4195 lm!1477))) lt!1671380))))

(assert (= (and d!1373315 res!1863556) b!4486177))

(assert (= (and b!4486177 (not res!1863555)) b!4486178))

(declare-fun m!5206931 () Bool)

(assert (=> d!1373315 m!5206931))

(declare-fun m!5206933 () Bool)

(assert (=> d!1373315 m!5206933))

(declare-fun m!5206935 () Bool)

(assert (=> b!4486178 m!5206935))

(assert (=> b!4486134 d!1373315))

(declare-fun d!1373317 () Bool)

(declare-fun res!1863564 () Bool)

(declare-fun e!2794084 () Bool)

(assert (=> d!1373317 (=> res!1863564 e!2794084)))

(assert (=> d!1373317 (= res!1863564 ((_ is Nil!50461) (toList!4195 lm!1477)))))

(assert (=> d!1373317 (= (forall!10110 (toList!4195 lm!1477) lambda!166433) e!2794084)))

(declare-fun b!4486192 () Bool)

(declare-fun e!2794085 () Bool)

(assert (=> b!4486192 (= e!2794084 e!2794085)))

(declare-fun res!1863565 () Bool)

(assert (=> b!4486192 (=> (not res!1863565) (not e!2794085))))

(declare-fun dynLambda!21067 (Int tuple2!50812) Bool)

(assert (=> b!4486192 (= res!1863565 (dynLambda!21067 lambda!166433 (h!56260 (toList!4195 lm!1477))))))

(declare-fun b!4486193 () Bool)

(assert (=> b!4486193 (= e!2794085 (forall!10110 (t!357539 (toList!4195 lm!1477)) lambda!166433))))

(assert (= (and d!1373317 (not res!1863564)) b!4486192))

(assert (= (and b!4486192 res!1863565) b!4486193))

(declare-fun b_lambda!150659 () Bool)

(assert (=> (not b_lambda!150659) (not b!4486192)))

(declare-fun m!5206957 () Bool)

(assert (=> b!4486192 m!5206957))

(declare-fun m!5206959 () Bool)

(assert (=> b!4486193 m!5206959))

(assert (=> start!441840 d!1373317))

(declare-fun d!1373321 () Bool)

(declare-fun isStrictlySorted!377 (List!50585) Bool)

(assert (=> d!1373321 (= (inv!66059 lm!1477) (isStrictlySorted!377 (toList!4195 lm!1477)))))

(declare-fun bs!826000 () Bool)

(assert (= bs!826000 d!1373321))

(declare-fun m!5206961 () Bool)

(assert (=> bs!826000 m!5206961))

(assert (=> start!441840 d!1373321))

(declare-fun d!1373323 () Bool)

(declare-fun res!1863570 () Bool)

(declare-fun e!2794092 () Bool)

(assert (=> d!1373323 (=> res!1863570 e!2794092)))

(assert (=> d!1373323 (= res!1863570 (not ((_ is Cons!50460) newBucket!178)))))

(assert (=> d!1373323 (= (noDuplicateKeys!1094 newBucket!178) e!2794092)))

(declare-fun b!4486202 () Bool)

(declare-fun e!2794093 () Bool)

(assert (=> b!4486202 (= e!2794092 e!2794093)))

(declare-fun res!1863571 () Bool)

(assert (=> b!4486202 (=> (not res!1863571) (not e!2794093))))

(assert (=> b!4486202 (= res!1863571 (not (containsKey!1606 (t!357538 newBucket!178) (_1!28699 (h!56259 newBucket!178)))))))

(declare-fun b!4486203 () Bool)

(assert (=> b!4486203 (= e!2794093 (noDuplicateKeys!1094 (t!357538 newBucket!178)))))

(assert (= (and d!1373323 (not res!1863570)) b!4486202))

(assert (= (and b!4486202 res!1863571) b!4486203))

(declare-fun m!5206963 () Bool)

(assert (=> b!4486202 m!5206963))

(declare-fun m!5206965 () Bool)

(assert (=> b!4486203 m!5206965))

(assert (=> b!4486136 d!1373323))

(declare-fun d!1373325 () Bool)

(declare-fun e!2794113 () Bool)

(assert (=> d!1373325 e!2794113))

(declare-fun res!1863580 () Bool)

(assert (=> d!1373325 (=> res!1863580 e!2794113)))

(declare-fun lt!1671438 () Bool)

(assert (=> d!1373325 (= res!1863580 (not lt!1671438))))

(declare-fun lt!1671439 () Bool)

(assert (=> d!1373325 (= lt!1671438 lt!1671439)))

(declare-fun lt!1671440 () Unit!90134)

(declare-fun e!2794112 () Unit!90134)

(assert (=> d!1373325 (= lt!1671440 e!2794112)))

(declare-fun c!764079 () Bool)

(assert (=> d!1373325 (= c!764079 lt!1671439)))

(declare-fun containsKey!1609 (List!50585 (_ BitVec 64)) Bool)

(assert (=> d!1373325 (= lt!1671439 (containsKey!1609 (toList!4195 lt!1671372) hash!344))))

(assert (=> d!1373325 (= (contains!13087 lt!1671372 hash!344) lt!1671438)))

(declare-fun b!4486234 () Bool)

(declare-fun lt!1671441 () Unit!90134)

(assert (=> b!4486234 (= e!2794112 lt!1671441)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!888 (List!50585 (_ BitVec 64)) Unit!90134)

(assert (=> b!4486234 (= lt!1671441 (lemmaContainsKeyImpliesGetValueByKeyDefined!888 (toList!4195 lt!1671372) hash!344))))

(declare-fun isDefined!8291 (Option!11004) Bool)

(assert (=> b!4486234 (isDefined!8291 (getValueByKey!984 (toList!4195 lt!1671372) hash!344))))

(declare-fun b!4486235 () Bool)

(declare-fun Unit!90146 () Unit!90134)

(assert (=> b!4486235 (= e!2794112 Unit!90146)))

(declare-fun b!4486236 () Bool)

(assert (=> b!4486236 (= e!2794113 (isDefined!8291 (getValueByKey!984 (toList!4195 lt!1671372) hash!344)))))

(assert (= (and d!1373325 c!764079) b!4486234))

(assert (= (and d!1373325 (not c!764079)) b!4486235))

(assert (= (and d!1373325 (not res!1863580)) b!4486236))

(declare-fun m!5207023 () Bool)

(assert (=> d!1373325 m!5207023))

(declare-fun m!5207025 () Bool)

(assert (=> b!4486234 m!5207025))

(assert (=> b!4486234 m!5206927))

(assert (=> b!4486234 m!5206927))

(declare-fun m!5207027 () Bool)

(assert (=> b!4486234 m!5207027))

(assert (=> b!4486236 m!5206927))

(assert (=> b!4486236 m!5206927))

(assert (=> b!4486236 m!5207027))

(assert (=> b!4486125 d!1373325))

(declare-fun d!1373337 () Bool)

(declare-fun tail!7617 (List!50585) List!50585)

(assert (=> d!1373337 (= (tail!7615 lm!1477) (ListLongMap!2828 (tail!7617 (toList!4195 lm!1477))))))

(declare-fun bs!826008 () Bool)

(assert (= bs!826008 d!1373337))

(declare-fun m!5207029 () Bool)

(assert (=> bs!826008 m!5207029))

(assert (=> b!4486125 d!1373337))

(declare-fun bs!826019 () Bool)

(declare-fun d!1373339 () Bool)

(assert (= bs!826019 (and d!1373339 start!441840)))

(declare-fun lambda!166447 () Int)

(assert (=> bs!826019 (not (= lambda!166447 lambda!166433))))

(assert (=> d!1373339 true))

(assert (=> d!1373339 (= (allKeysSameHashInMap!1201 lm!1477 hashF!1107) (forall!10110 (toList!4195 lm!1477) lambda!166447))))

(declare-fun bs!826020 () Bool)

(assert (= bs!826020 d!1373339))

(declare-fun m!5207043 () Bool)

(assert (=> bs!826020 m!5207043))

(assert (=> b!4486127 d!1373339))

(declare-fun d!1373345 () Bool)

(declare-fun isEmpty!28545 (List!50585) Bool)

(assert (=> d!1373345 (= (isEmpty!28543 lm!1477) (isEmpty!28545 (toList!4195 lm!1477)))))

(declare-fun bs!826021 () Bool)

(assert (= bs!826021 d!1373345))

(declare-fun m!5207045 () Bool)

(assert (=> bs!826021 m!5207045))

(assert (=> b!4486137 d!1373345))

(declare-fun bs!826023 () Bool)

(declare-fun d!1373347 () Bool)

(assert (= bs!826023 (and d!1373347 start!441840)))

(declare-fun lambda!166450 () Int)

(assert (=> bs!826023 (= lambda!166450 lambda!166433)))

(declare-fun bs!826024 () Bool)

(assert (= bs!826024 (and d!1373347 d!1373339)))

(assert (=> bs!826024 (not (= lambda!166450 lambda!166447))))

(assert (=> d!1373347 (contains!13087 lm!1477 (hash!2603 hashF!1107 key!3287))))

(declare-fun lt!1671463 () Unit!90134)

(declare-fun choose!28870 (ListLongMap!2827 K!11875 Hashable!5489) Unit!90134)

(assert (=> d!1373347 (= lt!1671463 (choose!28870 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1373347 (forall!10110 (toList!4195 lm!1477) lambda!166450)))

(assert (=> d!1373347 (= (lemmaInGenMapThenLongMapContainsHash!168 lm!1477 key!3287 hashF!1107) lt!1671463)))

(declare-fun bs!826025 () Bool)

(assert (= bs!826025 d!1373347))

(assert (=> bs!826025 m!5206859))

(assert (=> bs!826025 m!5206859))

(declare-fun m!5207063 () Bool)

(assert (=> bs!826025 m!5207063))

(declare-fun m!5207065 () Bool)

(assert (=> bs!826025 m!5207065))

(declare-fun m!5207067 () Bool)

(assert (=> bs!826025 m!5207067))

(assert (=> b!4486138 d!1373347))

(declare-fun d!1373357 () Bool)

(assert (=> d!1373357 (= (apply!11831 lm!1477 hash!344) (get!16469 (getValueByKey!984 (toList!4195 lm!1477) hash!344)))))

(declare-fun bs!826026 () Bool)

(assert (= bs!826026 d!1373357))

(declare-fun m!5207069 () Bool)

(assert (=> bs!826026 m!5207069))

(assert (=> bs!826026 m!5207069))

(declare-fun m!5207071 () Bool)

(assert (=> bs!826026 m!5207071))

(assert (=> b!4486138 d!1373357))

(declare-fun d!1373359 () Bool)

(assert (=> d!1373359 (contains!13089 (toList!4195 lm!1477) (tuple2!50813 hash!344 lt!1671373))))

(declare-fun lt!1671472 () Unit!90134)

(declare-fun choose!28871 (List!50585 (_ BitVec 64) List!50584) Unit!90134)

(assert (=> d!1373359 (= lt!1671472 (choose!28871 (toList!4195 lm!1477) hash!344 lt!1671373))))

(declare-fun e!2794138 () Bool)

(assert (=> d!1373359 e!2794138))

(declare-fun res!1863601 () Bool)

(assert (=> d!1373359 (=> (not res!1863601) (not e!2794138))))

(assert (=> d!1373359 (= res!1863601 (isStrictlySorted!377 (toList!4195 lm!1477)))))

(assert (=> d!1373359 (= (lemmaGetValueByKeyImpliesContainsTuple!606 (toList!4195 lm!1477) hash!344 lt!1671373) lt!1671472)))

(declare-fun b!4486267 () Bool)

(assert (=> b!4486267 (= e!2794138 (= (getValueByKey!984 (toList!4195 lm!1477) hash!344) (Some!11003 lt!1671373)))))

(assert (= (and d!1373359 res!1863601) b!4486267))

(declare-fun m!5207087 () Bool)

(assert (=> d!1373359 m!5207087))

(declare-fun m!5207089 () Bool)

(assert (=> d!1373359 m!5207089))

(assert (=> d!1373359 m!5206961))

(assert (=> b!4486267 m!5207069))

(assert (=> b!4486138 d!1373359))

(declare-fun d!1373367 () Bool)

(assert (=> d!1373367 (dynLambda!21067 lambda!166433 lt!1671380)))

(declare-fun lt!1671481 () Unit!90134)

(declare-fun choose!28873 (List!50585 Int tuple2!50812) Unit!90134)

(assert (=> d!1373367 (= lt!1671481 (choose!28873 (toList!4195 lm!1477) lambda!166433 lt!1671380))))

(declare-fun e!2794150 () Bool)

(assert (=> d!1373367 e!2794150))

(declare-fun res!1863607 () Bool)

(assert (=> d!1373367 (=> (not res!1863607) (not e!2794150))))

(assert (=> d!1373367 (= res!1863607 (forall!10110 (toList!4195 lm!1477) lambda!166433))))

(assert (=> d!1373367 (= (forallContained!2369 (toList!4195 lm!1477) lambda!166433 lt!1671380) lt!1671481)))

(declare-fun b!4486285 () Bool)

(assert (=> b!4486285 (= e!2794150 (contains!13089 (toList!4195 lm!1477) lt!1671380))))

(assert (= (and d!1373367 res!1863607) b!4486285))

(declare-fun b_lambda!150663 () Bool)

(assert (=> (not b_lambda!150663) (not d!1373367)))

(declare-fun m!5207109 () Bool)

(assert (=> d!1373367 m!5207109))

(declare-fun m!5207111 () Bool)

(assert (=> d!1373367 m!5207111))

(assert (=> d!1373367 m!5206861))

(assert (=> b!4486285 m!5206895))

(assert (=> b!4486138 d!1373367))

(declare-fun d!1373375 () Bool)

(declare-fun e!2794154 () Bool)

(assert (=> d!1373375 e!2794154))

(declare-fun res!1863609 () Bool)

(assert (=> d!1373375 (=> res!1863609 e!2794154)))

(declare-fun lt!1671486 () Bool)

(assert (=> d!1373375 (= res!1863609 (not lt!1671486))))

(declare-fun lt!1671487 () Bool)

(assert (=> d!1373375 (= lt!1671486 lt!1671487)))

(declare-fun lt!1671488 () Unit!90134)

(declare-fun e!2794153 () Unit!90134)

(assert (=> d!1373375 (= lt!1671488 e!2794153)))

(declare-fun c!764091 () Bool)

(assert (=> d!1373375 (= c!764091 lt!1671487)))

(assert (=> d!1373375 (= lt!1671487 (containsKey!1609 (toList!4195 lm!1477) lt!1671376))))

(assert (=> d!1373375 (= (contains!13087 lm!1477 lt!1671376) lt!1671486)))

(declare-fun b!4486289 () Bool)

(declare-fun lt!1671489 () Unit!90134)

(assert (=> b!4486289 (= e!2794153 lt!1671489)))

(assert (=> b!4486289 (= lt!1671489 (lemmaContainsKeyImpliesGetValueByKeyDefined!888 (toList!4195 lm!1477) lt!1671376))))

(assert (=> b!4486289 (isDefined!8291 (getValueByKey!984 (toList!4195 lm!1477) lt!1671376))))

(declare-fun b!4486290 () Bool)

(declare-fun Unit!90147 () Unit!90134)

(assert (=> b!4486290 (= e!2794153 Unit!90147)))

(declare-fun b!4486291 () Bool)

(assert (=> b!4486291 (= e!2794154 (isDefined!8291 (getValueByKey!984 (toList!4195 lm!1477) lt!1671376)))))

(assert (= (and d!1373375 c!764091) b!4486289))

(assert (= (and d!1373375 (not c!764091)) b!4486290))

(assert (= (and d!1373375 (not res!1863609)) b!4486291))

(declare-fun m!5207113 () Bool)

(assert (=> d!1373375 m!5207113))

(declare-fun m!5207115 () Bool)

(assert (=> b!4486289 m!5207115))

(declare-fun m!5207117 () Bool)

(assert (=> b!4486289 m!5207117))

(assert (=> b!4486289 m!5207117))

(declare-fun m!5207119 () Bool)

(assert (=> b!4486289 m!5207119))

(assert (=> b!4486291 m!5207117))

(assert (=> b!4486291 m!5207117))

(assert (=> b!4486291 m!5207119))

(assert (=> b!4486138 d!1373375))

(declare-fun b!4486309 () Bool)

(declare-fun e!2794161 () List!50584)

(assert (=> b!4486309 (= e!2794161 Nil!50460)))

(declare-fun b!4486306 () Bool)

(declare-fun e!2794162 () List!50584)

(assert (=> b!4486306 (= e!2794162 (t!357538 lt!1671373))))

(declare-fun b!4486307 () Bool)

(assert (=> b!4486307 (= e!2794162 e!2794161)))

(declare-fun c!764097 () Bool)

(assert (=> b!4486307 (= c!764097 ((_ is Cons!50460) lt!1671373))))

(declare-fun d!1373377 () Bool)

(declare-fun lt!1671493 () List!50584)

(assert (=> d!1373377 (not (containsKey!1606 lt!1671493 key!3287))))

(assert (=> d!1373377 (= lt!1671493 e!2794162)))

(declare-fun c!764096 () Bool)

(assert (=> d!1373377 (= c!764096 (and ((_ is Cons!50460) lt!1671373) (= (_1!28699 (h!56259 lt!1671373)) key!3287)))))

(assert (=> d!1373377 (noDuplicateKeys!1094 lt!1671373)))

(assert (=> d!1373377 (= (removePairForKey!721 lt!1671373 key!3287) lt!1671493)))

(declare-fun b!4486308 () Bool)

(assert (=> b!4486308 (= e!2794161 (Cons!50460 (h!56259 lt!1671373) (removePairForKey!721 (t!357538 lt!1671373) key!3287)))))

(assert (= (and d!1373377 c!764096) b!4486306))

(assert (= (and d!1373377 (not c!764096)) b!4486307))

(assert (= (and b!4486307 c!764097) b!4486308))

(assert (= (and b!4486307 (not c!764097)) b!4486309))

(declare-fun m!5207133 () Bool)

(assert (=> d!1373377 m!5207133))

(declare-fun m!5207135 () Bool)

(assert (=> d!1373377 m!5207135))

(declare-fun m!5207137 () Bool)

(assert (=> b!4486308 m!5207137))

(assert (=> b!4486138 d!1373377))

(declare-fun d!1373387 () Bool)

(declare-fun lt!1671494 () Bool)

(assert (=> d!1373387 (= lt!1671494 (select (content!8195 (toList!4195 lm!1477)) lt!1671380))))

(declare-fun e!2794164 () Bool)

(assert (=> d!1373387 (= lt!1671494 e!2794164)))

(declare-fun res!1863613 () Bool)

(assert (=> d!1373387 (=> (not res!1863613) (not e!2794164))))

(assert (=> d!1373387 (= res!1863613 ((_ is Cons!50461) (toList!4195 lm!1477)))))

(assert (=> d!1373387 (= (contains!13089 (toList!4195 lm!1477) lt!1671380) lt!1671494)))

(declare-fun b!4486310 () Bool)

(declare-fun e!2794163 () Bool)

(assert (=> b!4486310 (= e!2794164 e!2794163)))

(declare-fun res!1863612 () Bool)

(assert (=> b!4486310 (=> res!1863612 e!2794163)))

(assert (=> b!4486310 (= res!1863612 (= (h!56260 (toList!4195 lm!1477)) lt!1671380))))

(declare-fun b!4486311 () Bool)

(assert (=> b!4486311 (= e!2794163 (contains!13089 (t!357539 (toList!4195 lm!1477)) lt!1671380))))

(assert (= (and d!1373387 res!1863613) b!4486310))

(assert (= (and b!4486310 (not res!1863612)) b!4486311))

(declare-fun m!5207139 () Bool)

(assert (=> d!1373387 m!5207139))

(declare-fun m!5207141 () Bool)

(assert (=> d!1373387 m!5207141))

(assert (=> b!4486311 m!5206857))

(assert (=> b!4486138 d!1373387))

(declare-fun b!4486358 () Bool)

(declare-datatypes ((List!50587 0))(
  ( (Nil!50463) (Cons!50463 (h!56264 K!11875) (t!357541 List!50587)) )
))
(declare-fun e!2794201 () List!50587)

(declare-fun keys!17470 (ListMap!3457) List!50587)

(assert (=> b!4486358 (= e!2794201 (keys!17470 (extractMap!1150 (toList!4195 lm!1477))))))

(declare-fun b!4486359 () Bool)

(assert (=> b!4486359 false))

(declare-fun lt!1671522 () Unit!90134)

(declare-fun lt!1671520 () Unit!90134)

(assert (=> b!4486359 (= lt!1671522 lt!1671520)))

(declare-fun containsKey!1610 (List!50584 K!11875) Bool)

(assert (=> b!4486359 (containsKey!1610 (toList!4196 (extractMap!1150 (toList!4195 lm!1477))) key!3287)))

(declare-fun lemmaInGetKeysListThenContainsKey!410 (List!50584 K!11875) Unit!90134)

(assert (=> b!4486359 (= lt!1671520 (lemmaInGetKeysListThenContainsKey!410 (toList!4196 (extractMap!1150 (toList!4195 lm!1477))) key!3287))))

(declare-fun e!2794206 () Unit!90134)

(declare-fun Unit!90148 () Unit!90134)

(assert (=> b!4486359 (= e!2794206 Unit!90148)))

(declare-fun b!4486360 () Bool)

(declare-fun e!2794205 () Unit!90134)

(assert (=> b!4486360 (= e!2794205 e!2794206)))

(declare-fun c!764105 () Bool)

(declare-fun call!312219 () Bool)

(assert (=> b!4486360 (= c!764105 call!312219)))

(declare-fun b!4486361 () Bool)

(declare-fun e!2794204 () Bool)

(declare-fun e!2794203 () Bool)

(assert (=> b!4486361 (= e!2794204 e!2794203)))

(declare-fun res!1863640 () Bool)

(assert (=> b!4486361 (=> (not res!1863640) (not e!2794203))))

(declare-datatypes ((Option!11005 0))(
  ( (None!11004) (Some!11004 (v!44424 V!12121)) )
))
(declare-fun isDefined!8292 (Option!11005) Bool)

(declare-fun getValueByKey!985 (List!50584 K!11875) Option!11005)

(assert (=> b!4486361 (= res!1863640 (isDefined!8292 (getValueByKey!985 (toList!4196 (extractMap!1150 (toList!4195 lm!1477))) key!3287)))))

(declare-fun b!4486362 () Bool)

(declare-fun Unit!90149 () Unit!90134)

(assert (=> b!4486362 (= e!2794206 Unit!90149)))

(declare-fun bm!312214 () Bool)

(declare-fun contains!13091 (List!50587 K!11875) Bool)

(assert (=> bm!312214 (= call!312219 (contains!13091 e!2794201 key!3287))))

(declare-fun c!764104 () Bool)

(declare-fun c!764106 () Bool)

(assert (=> bm!312214 (= c!764104 c!764106)))

(declare-fun b!4486363 () Bool)

(declare-fun e!2794202 () Bool)

(assert (=> b!4486363 (= e!2794202 (not (contains!13091 (keys!17470 (extractMap!1150 (toList!4195 lm!1477))) key!3287)))))

(declare-fun b!4486365 () Bool)

(assert (=> b!4486365 (= e!2794203 (contains!13091 (keys!17470 (extractMap!1150 (toList!4195 lm!1477))) key!3287))))

(declare-fun b!4486366 () Bool)

(declare-fun getKeysList!411 (List!50584) List!50587)

(assert (=> b!4486366 (= e!2794201 (getKeysList!411 (toList!4196 (extractMap!1150 (toList!4195 lm!1477)))))))

(declare-fun d!1373389 () Bool)

(assert (=> d!1373389 e!2794204))

(declare-fun res!1863638 () Bool)

(assert (=> d!1373389 (=> res!1863638 e!2794204)))

(assert (=> d!1373389 (= res!1863638 e!2794202)))

(declare-fun res!1863639 () Bool)

(assert (=> d!1373389 (=> (not res!1863639) (not e!2794202))))

(declare-fun lt!1671521 () Bool)

(assert (=> d!1373389 (= res!1863639 (not lt!1671521))))

(declare-fun lt!1671519 () Bool)

(assert (=> d!1373389 (= lt!1671521 lt!1671519)))

(declare-fun lt!1671523 () Unit!90134)

(assert (=> d!1373389 (= lt!1671523 e!2794205)))

(assert (=> d!1373389 (= c!764106 lt!1671519)))

(assert (=> d!1373389 (= lt!1671519 (containsKey!1610 (toList!4196 (extractMap!1150 (toList!4195 lm!1477))) key!3287))))

(assert (=> d!1373389 (= (contains!13088 (extractMap!1150 (toList!4195 lm!1477)) key!3287) lt!1671521)))

(declare-fun b!4486364 () Bool)

(declare-fun lt!1671524 () Unit!90134)

(assert (=> b!4486364 (= e!2794205 lt!1671524)))

(declare-fun lt!1671518 () Unit!90134)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!889 (List!50584 K!11875) Unit!90134)

(assert (=> b!4486364 (= lt!1671518 (lemmaContainsKeyImpliesGetValueByKeyDefined!889 (toList!4196 (extractMap!1150 (toList!4195 lm!1477))) key!3287))))

(assert (=> b!4486364 (isDefined!8292 (getValueByKey!985 (toList!4196 (extractMap!1150 (toList!4195 lm!1477))) key!3287))))

(declare-fun lt!1671517 () Unit!90134)

(assert (=> b!4486364 (= lt!1671517 lt!1671518)))

(declare-fun lemmaInListThenGetKeysListContains!407 (List!50584 K!11875) Unit!90134)

(assert (=> b!4486364 (= lt!1671524 (lemmaInListThenGetKeysListContains!407 (toList!4196 (extractMap!1150 (toList!4195 lm!1477))) key!3287))))

(assert (=> b!4486364 call!312219))

(assert (= (and d!1373389 c!764106) b!4486364))

(assert (= (and d!1373389 (not c!764106)) b!4486360))

(assert (= (and b!4486360 c!764105) b!4486359))

(assert (= (and b!4486360 (not c!764105)) b!4486362))

(assert (= (or b!4486364 b!4486360) bm!312214))

(assert (= (and bm!312214 c!764104) b!4486366))

(assert (= (and bm!312214 (not c!764104)) b!4486358))

(assert (= (and d!1373389 res!1863639) b!4486363))

(assert (= (and d!1373389 (not res!1863638)) b!4486361))

(assert (= (and b!4486361 res!1863640) b!4486365))

(assert (=> b!4486365 m!5206883))

(declare-fun m!5207167 () Bool)

(assert (=> b!4486365 m!5207167))

(assert (=> b!4486365 m!5207167))

(declare-fun m!5207169 () Bool)

(assert (=> b!4486365 m!5207169))

(declare-fun m!5207171 () Bool)

(assert (=> b!4486364 m!5207171))

(declare-fun m!5207173 () Bool)

(assert (=> b!4486364 m!5207173))

(assert (=> b!4486364 m!5207173))

(declare-fun m!5207175 () Bool)

(assert (=> b!4486364 m!5207175))

(declare-fun m!5207177 () Bool)

(assert (=> b!4486364 m!5207177))

(declare-fun m!5207179 () Bool)

(assert (=> b!4486366 m!5207179))

(assert (=> b!4486363 m!5206883))

(assert (=> b!4486363 m!5207167))

(assert (=> b!4486363 m!5207167))

(assert (=> b!4486363 m!5207169))

(assert (=> b!4486361 m!5207173))

(assert (=> b!4486361 m!5207173))

(assert (=> b!4486361 m!5207175))

(declare-fun m!5207181 () Bool)

(assert (=> d!1373389 m!5207181))

(declare-fun m!5207183 () Bool)

(assert (=> bm!312214 m!5207183))

(assert (=> b!4486358 m!5206883))

(assert (=> b!4486358 m!5207167))

(assert (=> b!4486359 m!5207181))

(declare-fun m!5207185 () Bool)

(assert (=> b!4486359 m!5207185))

(assert (=> b!4486129 d!1373389))

(declare-fun bs!826057 () Bool)

(declare-fun d!1373403 () Bool)

(assert (= bs!826057 (and d!1373403 start!441840)))

(declare-fun lambda!166465 () Int)

(assert (=> bs!826057 (= lambda!166465 lambda!166433)))

(declare-fun bs!826058 () Bool)

(assert (= bs!826058 (and d!1373403 d!1373339)))

(assert (=> bs!826058 (not (= lambda!166465 lambda!166447))))

(declare-fun bs!826059 () Bool)

(assert (= bs!826059 (and d!1373403 d!1373347)))

(assert (=> bs!826059 (= lambda!166465 lambda!166450)))

(declare-fun lt!1671527 () ListMap!3457)

(declare-fun invariantList!963 (List!50584) Bool)

(assert (=> d!1373403 (invariantList!963 (toList!4196 lt!1671527))))

(declare-fun e!2794209 () ListMap!3457)

(assert (=> d!1373403 (= lt!1671527 e!2794209)))

(declare-fun c!764109 () Bool)

(assert (=> d!1373403 (= c!764109 ((_ is Cons!50461) (toList!4195 lm!1477)))))

(assert (=> d!1373403 (forall!10110 (toList!4195 lm!1477) lambda!166465)))

(assert (=> d!1373403 (= (extractMap!1150 (toList!4195 lm!1477)) lt!1671527)))

(declare-fun b!4486371 () Bool)

(declare-fun addToMapMapFromBucket!631 (List!50584 ListMap!3457) ListMap!3457)

(assert (=> b!4486371 (= e!2794209 (addToMapMapFromBucket!631 (_2!28700 (h!56260 (toList!4195 lm!1477))) (extractMap!1150 (t!357539 (toList!4195 lm!1477)))))))

(declare-fun b!4486372 () Bool)

(assert (=> b!4486372 (= e!2794209 (ListMap!3458 Nil!50460))))

(assert (= (and d!1373403 c!764109) b!4486371))

(assert (= (and d!1373403 (not c!764109)) b!4486372))

(declare-fun m!5207187 () Bool)

(assert (=> d!1373403 m!5207187))

(declare-fun m!5207189 () Bool)

(assert (=> d!1373403 m!5207189))

(assert (=> b!4486371 m!5206873))

(assert (=> b!4486371 m!5206873))

(declare-fun m!5207191 () Bool)

(assert (=> b!4486371 m!5207191))

(assert (=> b!4486129 d!1373403))

(declare-fun b!4486373 () Bool)

(declare-fun e!2794210 () List!50587)

(assert (=> b!4486373 (= e!2794210 (keys!17470 (extractMap!1150 (t!357539 (toList!4195 lm!1477)))))))

(declare-fun b!4486374 () Bool)

(assert (=> b!4486374 false))

(declare-fun lt!1671533 () Unit!90134)

(declare-fun lt!1671531 () Unit!90134)

(assert (=> b!4486374 (= lt!1671533 lt!1671531)))

(assert (=> b!4486374 (containsKey!1610 (toList!4196 (extractMap!1150 (t!357539 (toList!4195 lm!1477)))) key!3287)))

(assert (=> b!4486374 (= lt!1671531 (lemmaInGetKeysListThenContainsKey!410 (toList!4196 (extractMap!1150 (t!357539 (toList!4195 lm!1477)))) key!3287))))

(declare-fun e!2794215 () Unit!90134)

(declare-fun Unit!90150 () Unit!90134)

(assert (=> b!4486374 (= e!2794215 Unit!90150)))

(declare-fun b!4486375 () Bool)

(declare-fun e!2794214 () Unit!90134)

(assert (=> b!4486375 (= e!2794214 e!2794215)))

(declare-fun c!764111 () Bool)

(declare-fun call!312220 () Bool)

(assert (=> b!4486375 (= c!764111 call!312220)))

(declare-fun b!4486376 () Bool)

(declare-fun e!2794213 () Bool)

(declare-fun e!2794212 () Bool)

(assert (=> b!4486376 (= e!2794213 e!2794212)))

(declare-fun res!1863643 () Bool)

(assert (=> b!4486376 (=> (not res!1863643) (not e!2794212))))

(assert (=> b!4486376 (= res!1863643 (isDefined!8292 (getValueByKey!985 (toList!4196 (extractMap!1150 (t!357539 (toList!4195 lm!1477)))) key!3287)))))

(declare-fun b!4486377 () Bool)

(declare-fun Unit!90151 () Unit!90134)

(assert (=> b!4486377 (= e!2794215 Unit!90151)))

(declare-fun bm!312215 () Bool)

(assert (=> bm!312215 (= call!312220 (contains!13091 e!2794210 key!3287))))

(declare-fun c!764110 () Bool)

(declare-fun c!764112 () Bool)

(assert (=> bm!312215 (= c!764110 c!764112)))

(declare-fun b!4486378 () Bool)

(declare-fun e!2794211 () Bool)

(assert (=> b!4486378 (= e!2794211 (not (contains!13091 (keys!17470 (extractMap!1150 (t!357539 (toList!4195 lm!1477)))) key!3287)))))

(declare-fun b!4486380 () Bool)

(assert (=> b!4486380 (= e!2794212 (contains!13091 (keys!17470 (extractMap!1150 (t!357539 (toList!4195 lm!1477)))) key!3287))))

(declare-fun b!4486381 () Bool)

(assert (=> b!4486381 (= e!2794210 (getKeysList!411 (toList!4196 (extractMap!1150 (t!357539 (toList!4195 lm!1477))))))))

(declare-fun d!1373405 () Bool)

(assert (=> d!1373405 e!2794213))

(declare-fun res!1863641 () Bool)

(assert (=> d!1373405 (=> res!1863641 e!2794213)))

(assert (=> d!1373405 (= res!1863641 e!2794211)))

(declare-fun res!1863642 () Bool)

(assert (=> d!1373405 (=> (not res!1863642) (not e!2794211))))

(declare-fun lt!1671532 () Bool)

(assert (=> d!1373405 (= res!1863642 (not lt!1671532))))

(declare-fun lt!1671530 () Bool)

(assert (=> d!1373405 (= lt!1671532 lt!1671530)))

(declare-fun lt!1671534 () Unit!90134)

(assert (=> d!1373405 (= lt!1671534 e!2794214)))

(assert (=> d!1373405 (= c!764112 lt!1671530)))

(assert (=> d!1373405 (= lt!1671530 (containsKey!1610 (toList!4196 (extractMap!1150 (t!357539 (toList!4195 lm!1477)))) key!3287))))

(assert (=> d!1373405 (= (contains!13088 (extractMap!1150 (t!357539 (toList!4195 lm!1477))) key!3287) lt!1671532)))

(declare-fun b!4486379 () Bool)

(declare-fun lt!1671535 () Unit!90134)

(assert (=> b!4486379 (= e!2794214 lt!1671535)))

(declare-fun lt!1671529 () Unit!90134)

(assert (=> b!4486379 (= lt!1671529 (lemmaContainsKeyImpliesGetValueByKeyDefined!889 (toList!4196 (extractMap!1150 (t!357539 (toList!4195 lm!1477)))) key!3287))))

(assert (=> b!4486379 (isDefined!8292 (getValueByKey!985 (toList!4196 (extractMap!1150 (t!357539 (toList!4195 lm!1477)))) key!3287))))

(declare-fun lt!1671528 () Unit!90134)

(assert (=> b!4486379 (= lt!1671528 lt!1671529)))

(assert (=> b!4486379 (= lt!1671535 (lemmaInListThenGetKeysListContains!407 (toList!4196 (extractMap!1150 (t!357539 (toList!4195 lm!1477)))) key!3287))))

(assert (=> b!4486379 call!312220))

(assert (= (and d!1373405 c!764112) b!4486379))

(assert (= (and d!1373405 (not c!764112)) b!4486375))

(assert (= (and b!4486375 c!764111) b!4486374))

(assert (= (and b!4486375 (not c!764111)) b!4486377))

(assert (= (or b!4486379 b!4486375) bm!312215))

(assert (= (and bm!312215 c!764110) b!4486381))

(assert (= (and bm!312215 (not c!764110)) b!4486373))

(assert (= (and d!1373405 res!1863642) b!4486378))

(assert (= (and d!1373405 (not res!1863641)) b!4486376))

(assert (= (and b!4486376 res!1863643) b!4486380))

(assert (=> b!4486380 m!5206873))

(declare-fun m!5207193 () Bool)

(assert (=> b!4486380 m!5207193))

(assert (=> b!4486380 m!5207193))

(declare-fun m!5207195 () Bool)

(assert (=> b!4486380 m!5207195))

(declare-fun m!5207197 () Bool)

(assert (=> b!4486379 m!5207197))

(declare-fun m!5207199 () Bool)

(assert (=> b!4486379 m!5207199))

(assert (=> b!4486379 m!5207199))

(declare-fun m!5207201 () Bool)

(assert (=> b!4486379 m!5207201))

(declare-fun m!5207203 () Bool)

(assert (=> b!4486379 m!5207203))

(declare-fun m!5207205 () Bool)

(assert (=> b!4486381 m!5207205))

(assert (=> b!4486378 m!5206873))

(assert (=> b!4486378 m!5207193))

(assert (=> b!4486378 m!5207193))

(assert (=> b!4486378 m!5207195))

(assert (=> b!4486376 m!5207199))

(assert (=> b!4486376 m!5207199))

(assert (=> b!4486376 m!5207201))

(declare-fun m!5207207 () Bool)

(assert (=> d!1373405 m!5207207))

(declare-fun m!5207209 () Bool)

(assert (=> bm!312215 m!5207209))

(assert (=> b!4486373 m!5206873))

(assert (=> b!4486373 m!5207193))

(assert (=> b!4486374 m!5207207))

(declare-fun m!5207211 () Bool)

(assert (=> b!4486374 m!5207211))

(assert (=> b!4486131 d!1373405))

(declare-fun bs!826060 () Bool)

(declare-fun d!1373407 () Bool)

(assert (= bs!826060 (and d!1373407 start!441840)))

(declare-fun lambda!166466 () Int)

(assert (=> bs!826060 (= lambda!166466 lambda!166433)))

(declare-fun bs!826061 () Bool)

(assert (= bs!826061 (and d!1373407 d!1373339)))

(assert (=> bs!826061 (not (= lambda!166466 lambda!166447))))

(declare-fun bs!826062 () Bool)

(assert (= bs!826062 (and d!1373407 d!1373347)))

(assert (=> bs!826062 (= lambda!166466 lambda!166450)))

(declare-fun bs!826063 () Bool)

(assert (= bs!826063 (and d!1373407 d!1373403)))

(assert (=> bs!826063 (= lambda!166466 lambda!166465)))

(declare-fun lt!1671536 () ListMap!3457)

(assert (=> d!1373407 (invariantList!963 (toList!4196 lt!1671536))))

(declare-fun e!2794216 () ListMap!3457)

(assert (=> d!1373407 (= lt!1671536 e!2794216)))

(declare-fun c!764113 () Bool)

(assert (=> d!1373407 (= c!764113 ((_ is Cons!50461) (t!357539 (toList!4195 lm!1477))))))

(assert (=> d!1373407 (forall!10110 (t!357539 (toList!4195 lm!1477)) lambda!166466)))

(assert (=> d!1373407 (= (extractMap!1150 (t!357539 (toList!4195 lm!1477))) lt!1671536)))

(declare-fun b!4486382 () Bool)

(assert (=> b!4486382 (= e!2794216 (addToMapMapFromBucket!631 (_2!28700 (h!56260 (t!357539 (toList!4195 lm!1477)))) (extractMap!1150 (t!357539 (t!357539 (toList!4195 lm!1477))))))))

(declare-fun b!4486383 () Bool)

(assert (=> b!4486383 (= e!2794216 (ListMap!3458 Nil!50460))))

(assert (= (and d!1373407 c!764113) b!4486382))

(assert (= (and d!1373407 (not c!764113)) b!4486383))

(declare-fun m!5207213 () Bool)

(assert (=> d!1373407 m!5207213))

(declare-fun m!5207215 () Bool)

(assert (=> d!1373407 m!5207215))

(declare-fun m!5207217 () Bool)

(assert (=> b!4486382 m!5207217))

(assert (=> b!4486382 m!5207217))

(declare-fun m!5207219 () Bool)

(assert (=> b!4486382 m!5207219))

(assert (=> b!4486131 d!1373407))

(declare-fun b!4486384 () Bool)

(declare-fun e!2794217 () List!50587)

(assert (=> b!4486384 (= e!2794217 (keys!17470 (extractMap!1150 (toList!4195 lt!1671372))))))

(declare-fun b!4486385 () Bool)

(assert (=> b!4486385 false))

(declare-fun lt!1671542 () Unit!90134)

(declare-fun lt!1671540 () Unit!90134)

(assert (=> b!4486385 (= lt!1671542 lt!1671540)))

(assert (=> b!4486385 (containsKey!1610 (toList!4196 (extractMap!1150 (toList!4195 lt!1671372))) key!3287)))

(assert (=> b!4486385 (= lt!1671540 (lemmaInGetKeysListThenContainsKey!410 (toList!4196 (extractMap!1150 (toList!4195 lt!1671372))) key!3287))))

(declare-fun e!2794222 () Unit!90134)

(declare-fun Unit!90152 () Unit!90134)

(assert (=> b!4486385 (= e!2794222 Unit!90152)))

(declare-fun b!4486386 () Bool)

(declare-fun e!2794221 () Unit!90134)

(assert (=> b!4486386 (= e!2794221 e!2794222)))

(declare-fun c!764115 () Bool)

(declare-fun call!312221 () Bool)

(assert (=> b!4486386 (= c!764115 call!312221)))

(declare-fun b!4486387 () Bool)

(declare-fun e!2794220 () Bool)

(declare-fun e!2794219 () Bool)

(assert (=> b!4486387 (= e!2794220 e!2794219)))

(declare-fun res!1863646 () Bool)

(assert (=> b!4486387 (=> (not res!1863646) (not e!2794219))))

(assert (=> b!4486387 (= res!1863646 (isDefined!8292 (getValueByKey!985 (toList!4196 (extractMap!1150 (toList!4195 lt!1671372))) key!3287)))))

(declare-fun b!4486388 () Bool)

(declare-fun Unit!90153 () Unit!90134)

(assert (=> b!4486388 (= e!2794222 Unit!90153)))

(declare-fun bm!312216 () Bool)

(assert (=> bm!312216 (= call!312221 (contains!13091 e!2794217 key!3287))))

(declare-fun c!764114 () Bool)

(declare-fun c!764116 () Bool)

(assert (=> bm!312216 (= c!764114 c!764116)))

(declare-fun b!4486389 () Bool)

(declare-fun e!2794218 () Bool)

(assert (=> b!4486389 (= e!2794218 (not (contains!13091 (keys!17470 (extractMap!1150 (toList!4195 lt!1671372))) key!3287)))))

(declare-fun b!4486391 () Bool)

(assert (=> b!4486391 (= e!2794219 (contains!13091 (keys!17470 (extractMap!1150 (toList!4195 lt!1671372))) key!3287))))

(declare-fun b!4486392 () Bool)

(assert (=> b!4486392 (= e!2794217 (getKeysList!411 (toList!4196 (extractMap!1150 (toList!4195 lt!1671372)))))))

(declare-fun d!1373409 () Bool)

(assert (=> d!1373409 e!2794220))

(declare-fun res!1863644 () Bool)

(assert (=> d!1373409 (=> res!1863644 e!2794220)))

(assert (=> d!1373409 (= res!1863644 e!2794218)))

(declare-fun res!1863645 () Bool)

(assert (=> d!1373409 (=> (not res!1863645) (not e!2794218))))

(declare-fun lt!1671541 () Bool)

(assert (=> d!1373409 (= res!1863645 (not lt!1671541))))

(declare-fun lt!1671539 () Bool)

(assert (=> d!1373409 (= lt!1671541 lt!1671539)))

(declare-fun lt!1671543 () Unit!90134)

(assert (=> d!1373409 (= lt!1671543 e!2794221)))

(assert (=> d!1373409 (= c!764116 lt!1671539)))

(assert (=> d!1373409 (= lt!1671539 (containsKey!1610 (toList!4196 (extractMap!1150 (toList!4195 lt!1671372))) key!3287))))

(assert (=> d!1373409 (= (contains!13088 (extractMap!1150 (toList!4195 lt!1671372)) key!3287) lt!1671541)))

(declare-fun b!4486390 () Bool)

(declare-fun lt!1671544 () Unit!90134)

(assert (=> b!4486390 (= e!2794221 lt!1671544)))

(declare-fun lt!1671538 () Unit!90134)

(assert (=> b!4486390 (= lt!1671538 (lemmaContainsKeyImpliesGetValueByKeyDefined!889 (toList!4196 (extractMap!1150 (toList!4195 lt!1671372))) key!3287))))

(assert (=> b!4486390 (isDefined!8292 (getValueByKey!985 (toList!4196 (extractMap!1150 (toList!4195 lt!1671372))) key!3287))))

(declare-fun lt!1671537 () Unit!90134)

(assert (=> b!4486390 (= lt!1671537 lt!1671538)))

(assert (=> b!4486390 (= lt!1671544 (lemmaInListThenGetKeysListContains!407 (toList!4196 (extractMap!1150 (toList!4195 lt!1671372))) key!3287))))

(assert (=> b!4486390 call!312221))

(assert (= (and d!1373409 c!764116) b!4486390))

(assert (= (and d!1373409 (not c!764116)) b!4486386))

(assert (= (and b!4486386 c!764115) b!4486385))

(assert (= (and b!4486386 (not c!764115)) b!4486388))

(assert (= (or b!4486390 b!4486386) bm!312216))

(assert (= (and bm!312216 c!764114) b!4486392))

(assert (= (and bm!312216 (not c!764114)) b!4486384))

(assert (= (and d!1373409 res!1863645) b!4486389))

(assert (= (and d!1373409 (not res!1863644)) b!4486387))

(assert (= (and b!4486387 res!1863646) b!4486391))

(assert (=> b!4486391 m!5206869))

(declare-fun m!5207221 () Bool)

(assert (=> b!4486391 m!5207221))

(assert (=> b!4486391 m!5207221))

(declare-fun m!5207223 () Bool)

(assert (=> b!4486391 m!5207223))

(declare-fun m!5207225 () Bool)

(assert (=> b!4486390 m!5207225))

(declare-fun m!5207227 () Bool)

(assert (=> b!4486390 m!5207227))

(assert (=> b!4486390 m!5207227))

(declare-fun m!5207229 () Bool)

(assert (=> b!4486390 m!5207229))

(declare-fun m!5207231 () Bool)

(assert (=> b!4486390 m!5207231))

(declare-fun m!5207233 () Bool)

(assert (=> b!4486392 m!5207233))

(assert (=> b!4486389 m!5206869))

(assert (=> b!4486389 m!5207221))

(assert (=> b!4486389 m!5207221))

(assert (=> b!4486389 m!5207223))

(assert (=> b!4486387 m!5207227))

(assert (=> b!4486387 m!5207227))

(assert (=> b!4486387 m!5207229))

(declare-fun m!5207235 () Bool)

(assert (=> d!1373409 m!5207235))

(declare-fun m!5207237 () Bool)

(assert (=> bm!312216 m!5207237))

(assert (=> b!4486384 m!5206869))

(assert (=> b!4486384 m!5207221))

(assert (=> b!4486385 m!5207235))

(declare-fun m!5207239 () Bool)

(assert (=> b!4486385 m!5207239))

(assert (=> b!4486131 d!1373409))

(declare-fun bs!826064 () Bool)

(declare-fun d!1373411 () Bool)

(assert (= bs!826064 (and d!1373411 start!441840)))

(declare-fun lambda!166469 () Int)

(assert (=> bs!826064 (= lambda!166469 lambda!166433)))

(declare-fun bs!826065 () Bool)

(assert (= bs!826065 (and d!1373411 d!1373407)))

(assert (=> bs!826065 (= lambda!166469 lambda!166466)))

(declare-fun bs!826066 () Bool)

(assert (= bs!826066 (and d!1373411 d!1373339)))

(assert (=> bs!826066 (not (= lambda!166469 lambda!166447))))

(declare-fun bs!826067 () Bool)

(assert (= bs!826067 (and d!1373411 d!1373347)))

(assert (=> bs!826067 (= lambda!166469 lambda!166450)))

(declare-fun bs!826068 () Bool)

(assert (= bs!826068 (and d!1373411 d!1373403)))

(assert (=> bs!826068 (= lambda!166469 lambda!166465)))

(assert (=> d!1373411 (contains!13088 (extractMap!1150 (toList!4195 lt!1671372)) key!3287)))

(declare-fun lt!1671547 () Unit!90134)

(declare-fun choose!28874 (ListLongMap!2827 K!11875 Hashable!5489) Unit!90134)

(assert (=> d!1373411 (= lt!1671547 (choose!28874 lt!1671372 key!3287 hashF!1107))))

(assert (=> d!1373411 (forall!10110 (toList!4195 lt!1671372) lambda!166469)))

(assert (=> d!1373411 (= (lemmaListContainsThenExtractedMapContains!64 lt!1671372 key!3287 hashF!1107) lt!1671547)))

(declare-fun bs!826069 () Bool)

(assert (= bs!826069 d!1373411))

(assert (=> bs!826069 m!5206869))

(assert (=> bs!826069 m!5206869))

(assert (=> bs!826069 m!5206877))

(declare-fun m!5207241 () Bool)

(assert (=> bs!826069 m!5207241))

(declare-fun m!5207243 () Bool)

(assert (=> bs!826069 m!5207243))

(assert (=> b!4486131 d!1373411))

(declare-fun bs!826070 () Bool)

(declare-fun d!1373413 () Bool)

(assert (= bs!826070 (and d!1373413 start!441840)))

(declare-fun lambda!166470 () Int)

(assert (=> bs!826070 (= lambda!166470 lambda!166433)))

(declare-fun bs!826071 () Bool)

(assert (= bs!826071 (and d!1373413 d!1373407)))

(assert (=> bs!826071 (= lambda!166470 lambda!166466)))

(declare-fun bs!826072 () Bool)

(assert (= bs!826072 (and d!1373413 d!1373339)))

(assert (=> bs!826072 (not (= lambda!166470 lambda!166447))))

(declare-fun bs!826073 () Bool)

(assert (= bs!826073 (and d!1373413 d!1373347)))

(assert (=> bs!826073 (= lambda!166470 lambda!166450)))

(declare-fun bs!826074 () Bool)

(assert (= bs!826074 (and d!1373413 d!1373403)))

(assert (=> bs!826074 (= lambda!166470 lambda!166465)))

(declare-fun bs!826075 () Bool)

(assert (= bs!826075 (and d!1373413 d!1373411)))

(assert (=> bs!826075 (= lambda!166470 lambda!166469)))

(declare-fun lt!1671548 () ListMap!3457)

(assert (=> d!1373413 (invariantList!963 (toList!4196 lt!1671548))))

(declare-fun e!2794223 () ListMap!3457)

(assert (=> d!1373413 (= lt!1671548 e!2794223)))

(declare-fun c!764117 () Bool)

(assert (=> d!1373413 (= c!764117 ((_ is Cons!50461) (toList!4195 lt!1671372)))))

(assert (=> d!1373413 (forall!10110 (toList!4195 lt!1671372) lambda!166470)))

(assert (=> d!1373413 (= (extractMap!1150 (toList!4195 lt!1671372)) lt!1671548)))

(declare-fun b!4486393 () Bool)

(assert (=> b!4486393 (= e!2794223 (addToMapMapFromBucket!631 (_2!28700 (h!56260 (toList!4195 lt!1671372))) (extractMap!1150 (t!357539 (toList!4195 lt!1671372)))))))

(declare-fun b!4486394 () Bool)

(assert (=> b!4486394 (= e!2794223 (ListMap!3458 Nil!50460))))

(assert (= (and d!1373413 c!764117) b!4486393))

(assert (= (and d!1373413 (not c!764117)) b!4486394))

(declare-fun m!5207245 () Bool)

(assert (=> d!1373413 m!5207245))

(declare-fun m!5207247 () Bool)

(assert (=> d!1373413 m!5207247))

(declare-fun m!5207249 () Bool)

(assert (=> b!4486393 m!5207249))

(assert (=> b!4486393 m!5207249))

(declare-fun m!5207251 () Bool)

(assert (=> b!4486393 m!5207251))

(assert (=> b!4486131 d!1373413))

(declare-fun bs!826076 () Bool)

(declare-fun d!1373415 () Bool)

(assert (= bs!826076 (and d!1373415 d!1373413)))

(declare-fun lambda!166473 () Int)

(assert (=> bs!826076 (= lambda!166473 lambda!166470)))

(declare-fun bs!826077 () Bool)

(assert (= bs!826077 (and d!1373415 start!441840)))

(assert (=> bs!826077 (= lambda!166473 lambda!166433)))

(declare-fun bs!826078 () Bool)

(assert (= bs!826078 (and d!1373415 d!1373407)))

(assert (=> bs!826078 (= lambda!166473 lambda!166466)))

(declare-fun bs!826079 () Bool)

(assert (= bs!826079 (and d!1373415 d!1373339)))

(assert (=> bs!826079 (not (= lambda!166473 lambda!166447))))

(declare-fun bs!826080 () Bool)

(assert (= bs!826080 (and d!1373415 d!1373347)))

(assert (=> bs!826080 (= lambda!166473 lambda!166450)))

(declare-fun bs!826081 () Bool)

(assert (= bs!826081 (and d!1373415 d!1373403)))

(assert (=> bs!826081 (= lambda!166473 lambda!166465)))

(declare-fun bs!826082 () Bool)

(assert (= bs!826082 (and d!1373415 d!1373411)))

(assert (=> bs!826082 (= lambda!166473 lambda!166469)))

(assert (=> d!1373415 (not (contains!13088 (extractMap!1150 (toList!4195 lm!1477)) key!3287))))

(declare-fun lt!1671551 () Unit!90134)

(declare-fun choose!28875 (ListLongMap!2827 K!11875 Hashable!5489) Unit!90134)

(assert (=> d!1373415 (= lt!1671551 (choose!28875 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1373415 (forall!10110 (toList!4195 lm!1477) lambda!166473)))

(assert (=> d!1373415 (= (lemmaNotInItsHashBucketThenNotInMap!82 lm!1477 key!3287 hashF!1107) lt!1671551)))

(declare-fun bs!826083 () Bool)

(assert (= bs!826083 d!1373415))

(assert (=> bs!826083 m!5206883))

(assert (=> bs!826083 m!5206883))

(assert (=> bs!826083 m!5206885))

(declare-fun m!5207253 () Bool)

(assert (=> bs!826083 m!5207253))

(declare-fun m!5207255 () Bool)

(assert (=> bs!826083 m!5207255))

(assert (=> b!4486141 d!1373415))

(declare-fun d!1373417 () Bool)

(declare-fun res!1863655 () Bool)

(declare-fun e!2794230 () Bool)

(assert (=> d!1373417 (=> res!1863655 e!2794230)))

(declare-fun e!2794232 () Bool)

(assert (=> d!1373417 (= res!1863655 e!2794232)))

(declare-fun res!1863653 () Bool)

(assert (=> d!1373417 (=> (not res!1863653) (not e!2794232))))

(assert (=> d!1373417 (= res!1863653 ((_ is Cons!50461) (t!357539 (toList!4195 lm!1477))))))

(assert (=> d!1373417 (= (containsKeyBiggerList!74 (t!357539 (toList!4195 lm!1477)) key!3287) e!2794230)))

(declare-fun b!4486401 () Bool)

(assert (=> b!4486401 (= e!2794232 (containsKey!1606 (_2!28700 (h!56260 (t!357539 (toList!4195 lm!1477)))) key!3287))))

(declare-fun b!4486402 () Bool)

(declare-fun e!2794231 () Bool)

(assert (=> b!4486402 (= e!2794230 e!2794231)))

(declare-fun res!1863654 () Bool)

(assert (=> b!4486402 (=> (not res!1863654) (not e!2794231))))

(assert (=> b!4486402 (= res!1863654 ((_ is Cons!50461) (t!357539 (toList!4195 lm!1477))))))

(declare-fun b!4486403 () Bool)

(assert (=> b!4486403 (= e!2794231 (containsKeyBiggerList!74 (t!357539 (t!357539 (toList!4195 lm!1477))) key!3287))))

(assert (= (and d!1373417 res!1863653) b!4486401))

(assert (= (and d!1373417 (not res!1863655)) b!4486402))

(assert (= (and b!4486402 res!1863654) b!4486403))

(declare-fun m!5207257 () Bool)

(assert (=> b!4486401 m!5207257))

(declare-fun m!5207259 () Bool)

(assert (=> b!4486403 m!5207259))

(assert (=> b!4486130 d!1373417))

(declare-fun d!1373419 () Bool)

(declare-fun res!1863658 () Bool)

(declare-fun e!2794233 () Bool)

(assert (=> d!1373419 (=> res!1863658 e!2794233)))

(declare-fun e!2794235 () Bool)

(assert (=> d!1373419 (= res!1863658 e!2794235)))

(declare-fun res!1863656 () Bool)

(assert (=> d!1373419 (=> (not res!1863656) (not e!2794235))))

(assert (=> d!1373419 (= res!1863656 ((_ is Cons!50461) (toList!4195 lt!1671372)))))

(assert (=> d!1373419 (= (containsKeyBiggerList!74 (toList!4195 lt!1671372) key!3287) e!2794233)))

(declare-fun b!4486404 () Bool)

(assert (=> b!4486404 (= e!2794235 (containsKey!1606 (_2!28700 (h!56260 (toList!4195 lt!1671372))) key!3287))))

(declare-fun b!4486405 () Bool)

(declare-fun e!2794234 () Bool)

(assert (=> b!4486405 (= e!2794233 e!2794234)))

(declare-fun res!1863657 () Bool)

(assert (=> b!4486405 (=> (not res!1863657) (not e!2794234))))

(assert (=> b!4486405 (= res!1863657 ((_ is Cons!50461) (toList!4195 lt!1671372)))))

(declare-fun b!4486406 () Bool)

(assert (=> b!4486406 (= e!2794234 (containsKeyBiggerList!74 (t!357539 (toList!4195 lt!1671372)) key!3287))))

(assert (= (and d!1373419 res!1863656) b!4486404))

(assert (= (and d!1373419 (not res!1863658)) b!4486405))

(assert (= (and b!4486405 res!1863657) b!4486406))

(declare-fun m!5207261 () Bool)

(assert (=> b!4486404 m!5207261))

(declare-fun m!5207263 () Bool)

(assert (=> b!4486406 m!5207263))

(assert (=> b!4486130 d!1373419))

(declare-fun bs!826084 () Bool)

(declare-fun d!1373421 () Bool)

(assert (= bs!826084 (and d!1373421 d!1373413)))

(declare-fun lambda!166476 () Int)

(assert (=> bs!826084 (= lambda!166476 lambda!166470)))

(declare-fun bs!826085 () Bool)

(assert (= bs!826085 (and d!1373421 start!441840)))

(assert (=> bs!826085 (= lambda!166476 lambda!166433)))

(declare-fun bs!826086 () Bool)

(assert (= bs!826086 (and d!1373421 d!1373407)))

(assert (=> bs!826086 (= lambda!166476 lambda!166466)))

(declare-fun bs!826087 () Bool)

(assert (= bs!826087 (and d!1373421 d!1373339)))

(assert (=> bs!826087 (not (= lambda!166476 lambda!166447))))

(declare-fun bs!826088 () Bool)

(assert (= bs!826088 (and d!1373421 d!1373347)))

(assert (=> bs!826088 (= lambda!166476 lambda!166450)))

(declare-fun bs!826089 () Bool)

(assert (= bs!826089 (and d!1373421 d!1373403)))

(assert (=> bs!826089 (= lambda!166476 lambda!166465)))

(declare-fun bs!826090 () Bool)

(assert (= bs!826090 (and d!1373421 d!1373411)))

(assert (=> bs!826090 (= lambda!166476 lambda!166469)))

(declare-fun bs!826091 () Bool)

(assert (= bs!826091 (and d!1373421 d!1373415)))

(assert (=> bs!826091 (= lambda!166476 lambda!166473)))

(assert (=> d!1373421 (containsKeyBiggerList!74 (toList!4195 lt!1671372) key!3287)))

(declare-fun lt!1671554 () Unit!90134)

(declare-fun choose!28876 (ListLongMap!2827 K!11875 Hashable!5489) Unit!90134)

(assert (=> d!1373421 (= lt!1671554 (choose!28876 lt!1671372 key!3287 hashF!1107))))

(assert (=> d!1373421 (forall!10110 (toList!4195 lt!1671372) lambda!166476)))

(assert (=> d!1373421 (= (lemmaInLongMapThenContainsKeyBiggerList!10 lt!1671372 key!3287 hashF!1107) lt!1671554)))

(declare-fun bs!826092 () Bool)

(assert (= bs!826092 d!1373421))

(assert (=> bs!826092 m!5206907))

(declare-fun m!5207265 () Bool)

(assert (=> bs!826092 m!5207265))

(declare-fun m!5207267 () Bool)

(assert (=> bs!826092 m!5207267))

(assert (=> b!4486130 d!1373421))

(declare-fun d!1373423 () Bool)

(assert (=> d!1373423 true))

(assert (=> d!1373423 true))

(declare-fun lambda!166479 () Int)

(declare-fun forall!10112 (List!50584 Int) Bool)

(assert (=> d!1373423 (= (allKeysSameHash!948 newBucket!178 hash!344 hashF!1107) (forall!10112 newBucket!178 lambda!166479))))

(declare-fun bs!826093 () Bool)

(assert (= bs!826093 d!1373423))

(declare-fun m!5207269 () Bool)

(assert (=> bs!826093 m!5207269))

(assert (=> b!4486132 d!1373423))

(declare-fun d!1373425 () Bool)

(declare-fun hash!2605 (Hashable!5489 K!11875) (_ BitVec 64))

(assert (=> d!1373425 (= (hash!2603 hashF!1107 key!3287) (hash!2605 hashF!1107 key!3287))))

(declare-fun bs!826094 () Bool)

(assert (= bs!826094 d!1373425))

(declare-fun m!5207271 () Bool)

(assert (=> bs!826094 m!5207271))

(assert (=> b!4486142 d!1373425))

(declare-fun b!4486415 () Bool)

(declare-fun tp!1337055 () Bool)

(declare-fun e!2794238 () Bool)

(assert (=> b!4486415 (= e!2794238 (and tp_is_empty!27653 tp_is_empty!27655 tp!1337055))))

(assert (=> b!4486128 (= tp!1337042 e!2794238)))

(assert (= (and b!4486128 ((_ is Cons!50460) (t!357538 newBucket!178))) b!4486415))

(declare-fun b!4486420 () Bool)

(declare-fun e!2794241 () Bool)

(declare-fun tp!1337060 () Bool)

(declare-fun tp!1337061 () Bool)

(assert (=> b!4486420 (= e!2794241 (and tp!1337060 tp!1337061))))

(assert (=> b!4486126 (= tp!1337043 e!2794241)))

(assert (= (and b!4486126 ((_ is Cons!50461) (toList!4195 lm!1477))) b!4486420))

(declare-fun b_lambda!150669 () Bool)

(assert (= b_lambda!150663 (or start!441840 b_lambda!150669)))

(declare-fun bs!826095 () Bool)

(declare-fun d!1373427 () Bool)

(assert (= bs!826095 (and d!1373427 start!441840)))

(assert (=> bs!826095 (= (dynLambda!21067 lambda!166433 lt!1671380) (noDuplicateKeys!1094 (_2!28700 lt!1671380)))))

(declare-fun m!5207273 () Bool)

(assert (=> bs!826095 m!5207273))

(assert (=> d!1373367 d!1373427))

(declare-fun b_lambda!150671 () Bool)

(assert (= b_lambda!150659 (or start!441840 b_lambda!150671)))

(declare-fun bs!826096 () Bool)

(declare-fun d!1373429 () Bool)

(assert (= bs!826096 (and d!1373429 start!441840)))

(assert (=> bs!826096 (= (dynLambda!21067 lambda!166433 (h!56260 (toList!4195 lm!1477))) (noDuplicateKeys!1094 (_2!28700 (h!56260 (toList!4195 lm!1477)))))))

(declare-fun m!5207275 () Bool)

(assert (=> bs!826096 m!5207275))

(assert (=> b!4486192 d!1373429))

(check-sat (not d!1373339) (not d!1373315) (not b!4486365) (not b!4486374) (not b!4486358) (not b!4486311) (not b!4486361) (not d!1373337) (not d!1373409) (not b!4486371) (not b!4486382) (not d!1373421) (not b!4486390) (not b!4486178) (not d!1373387) (not b!4486373) (not b_lambda!150669) (not d!1373413) (not d!1373321) (not b!4486387) (not d!1373313) (not d!1373357) (not b!4486193) tp_is_empty!27655 (not b!4486154) (not bm!312214) tp_is_empty!27653 (not b!4486289) (not b!4486389) (not b!4486202) (not d!1373377) (not b!4486203) (not b!4486392) (not b!4486391) (not b!4486359) (not d!1373403) (not b!4486366) (not bs!826096) (not d!1373405) (not b!4486380) (not d!1373425) (not b!4486376) (not d!1373345) (not b!4486404) (not b!4486291) (not b!4486406) (not d!1373375) (not b!4486378) (not d!1373359) (not d!1373415) (not b!4486415) (not d!1373407) (not bm!312216) (not b!4486381) (not b_lambda!150671) (not b!4486401) (not bm!312215) (not b!4486364) (not b!4486403) (not b!4486308) (not b!4486385) (not b!4486267) (not b!4486379) (not b!4486234) (not b!4486393) (not b!4486384) (not b!4486285) (not d!1373423) (not d!1373367) (not b!4486363) (not d!1373411) (not d!1373347) (not bs!826095) (not d!1373325) (not d!1373389) (not b!4486420) (not b!4486236))
(check-sat)
(get-model)

(declare-fun d!1373519 () Bool)

(declare-fun res!1863743 () Bool)

(declare-fun e!2794335 () Bool)

(assert (=> d!1373519 (=> res!1863743 e!2794335)))

(assert (=> d!1373519 (= res!1863743 (and ((_ is Cons!50460) (t!357538 lt!1671373)) (= (_1!28699 (h!56259 (t!357538 lt!1671373))) key!3287)))))

(assert (=> d!1373519 (= (containsKey!1606 (t!357538 lt!1671373) key!3287) e!2794335)))

(declare-fun b!4486563 () Bool)

(declare-fun e!2794336 () Bool)

(assert (=> b!4486563 (= e!2794335 e!2794336)))

(declare-fun res!1863744 () Bool)

(assert (=> b!4486563 (=> (not res!1863744) (not e!2794336))))

(assert (=> b!4486563 (= res!1863744 ((_ is Cons!50460) (t!357538 lt!1671373)))))

(declare-fun b!4486564 () Bool)

(assert (=> b!4486564 (= e!2794336 (containsKey!1606 (t!357538 (t!357538 lt!1671373)) key!3287))))

(assert (= (and d!1373519 (not res!1863743)) b!4486563))

(assert (= (and b!4486563 res!1863744) b!4486564))

(declare-fun m!5207453 () Bool)

(assert (=> b!4486564 m!5207453))

(assert (=> b!4486154 d!1373519))

(assert (=> d!1373415 d!1373389))

(assert (=> d!1373415 d!1373403))

(declare-fun d!1373521 () Bool)

(assert (=> d!1373521 (not (contains!13088 (extractMap!1150 (toList!4195 lm!1477)) key!3287))))

(assert (=> d!1373521 true))

(declare-fun _$26!275 () Unit!90134)

(assert (=> d!1373521 (= (choose!28875 lm!1477 key!3287 hashF!1107) _$26!275)))

(declare-fun bs!826151 () Bool)

(assert (= bs!826151 d!1373521))

(assert (=> bs!826151 m!5206883))

(assert (=> bs!826151 m!5206883))

(assert (=> bs!826151 m!5206885))

(assert (=> d!1373415 d!1373521))

(declare-fun d!1373547 () Bool)

(declare-fun res!1863761 () Bool)

(declare-fun e!2794360 () Bool)

(assert (=> d!1373547 (=> res!1863761 e!2794360)))

(assert (=> d!1373547 (= res!1863761 ((_ is Nil!50461) (toList!4195 lm!1477)))))

(assert (=> d!1373547 (= (forall!10110 (toList!4195 lm!1477) lambda!166473) e!2794360)))

(declare-fun b!4486599 () Bool)

(declare-fun e!2794361 () Bool)

(assert (=> b!4486599 (= e!2794360 e!2794361)))

(declare-fun res!1863762 () Bool)

(assert (=> b!4486599 (=> (not res!1863762) (not e!2794361))))

(assert (=> b!4486599 (= res!1863762 (dynLambda!21067 lambda!166473 (h!56260 (toList!4195 lm!1477))))))

(declare-fun b!4486600 () Bool)

(assert (=> b!4486600 (= e!2794361 (forall!10110 (t!357539 (toList!4195 lm!1477)) lambda!166473))))

(assert (= (and d!1373547 (not res!1863761)) b!4486599))

(assert (= (and b!4486599 res!1863762) b!4486600))

(declare-fun b_lambda!150687 () Bool)

(assert (=> (not b_lambda!150687) (not b!4486599)))

(declare-fun m!5207537 () Bool)

(assert (=> b!4486599 m!5207537))

(declare-fun m!5207539 () Bool)

(assert (=> b!4486600 m!5207539))

(assert (=> d!1373415 d!1373547))

(declare-fun d!1373551 () Bool)

(assert (=> d!1373551 (isDefined!8291 (getValueByKey!984 (toList!4195 lm!1477) lt!1671376))))

(declare-fun lt!1671674 () Unit!90134)

(declare-fun choose!28880 (List!50585 (_ BitVec 64)) Unit!90134)

(assert (=> d!1373551 (= lt!1671674 (choose!28880 (toList!4195 lm!1477) lt!1671376))))

(declare-fun e!2794366 () Bool)

(assert (=> d!1373551 e!2794366))

(declare-fun res!1863767 () Bool)

(assert (=> d!1373551 (=> (not res!1863767) (not e!2794366))))

(assert (=> d!1373551 (= res!1863767 (isStrictlySorted!377 (toList!4195 lm!1477)))))

(assert (=> d!1373551 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!888 (toList!4195 lm!1477) lt!1671376) lt!1671674)))

(declare-fun b!4486605 () Bool)

(assert (=> b!4486605 (= e!2794366 (containsKey!1609 (toList!4195 lm!1477) lt!1671376))))

(assert (= (and d!1373551 res!1863767) b!4486605))

(assert (=> d!1373551 m!5207117))

(assert (=> d!1373551 m!5207117))

(assert (=> d!1373551 m!5207119))

(declare-fun m!5207545 () Bool)

(assert (=> d!1373551 m!5207545))

(assert (=> d!1373551 m!5206961))

(assert (=> b!4486605 m!5207113))

(assert (=> b!4486289 d!1373551))

(declare-fun d!1373557 () Bool)

(declare-fun isEmpty!28547 (Option!11004) Bool)

(assert (=> d!1373557 (= (isDefined!8291 (getValueByKey!984 (toList!4195 lm!1477) lt!1671376)) (not (isEmpty!28547 (getValueByKey!984 (toList!4195 lm!1477) lt!1671376))))))

(declare-fun bs!826153 () Bool)

(assert (= bs!826153 d!1373557))

(assert (=> bs!826153 m!5207117))

(declare-fun m!5207547 () Bool)

(assert (=> bs!826153 m!5207547))

(assert (=> b!4486289 d!1373557))

(declare-fun b!4486628 () Bool)

(declare-fun e!2794382 () Option!11004)

(assert (=> b!4486628 (= e!2794382 (getValueByKey!984 (t!357539 (toList!4195 lm!1477)) lt!1671376))))

(declare-fun b!4486629 () Bool)

(assert (=> b!4486629 (= e!2794382 None!11003)))

(declare-fun d!1373559 () Bool)

(declare-fun c!764158 () Bool)

(assert (=> d!1373559 (= c!764158 (and ((_ is Cons!50461) (toList!4195 lm!1477)) (= (_1!28700 (h!56260 (toList!4195 lm!1477))) lt!1671376)))))

(declare-fun e!2794381 () Option!11004)

(assert (=> d!1373559 (= (getValueByKey!984 (toList!4195 lm!1477) lt!1671376) e!2794381)))

(declare-fun b!4486626 () Bool)

(assert (=> b!4486626 (= e!2794381 (Some!11003 (_2!28700 (h!56260 (toList!4195 lm!1477)))))))

(declare-fun b!4486627 () Bool)

(assert (=> b!4486627 (= e!2794381 e!2794382)))

(declare-fun c!764159 () Bool)

(assert (=> b!4486627 (= c!764159 (and ((_ is Cons!50461) (toList!4195 lm!1477)) (not (= (_1!28700 (h!56260 (toList!4195 lm!1477))) lt!1671376))))))

(assert (= (and d!1373559 c!764158) b!4486626))

(assert (= (and d!1373559 (not c!764158)) b!4486627))

(assert (= (and b!4486627 c!764159) b!4486628))

(assert (= (and b!4486627 (not c!764159)) b!4486629))

(declare-fun m!5207563 () Bool)

(assert (=> b!4486628 m!5207563))

(assert (=> b!4486289 d!1373559))

(declare-fun d!1373569 () Bool)

(declare-fun e!2794384 () Bool)

(assert (=> d!1373569 e!2794384))

(declare-fun res!1863778 () Bool)

(assert (=> d!1373569 (=> res!1863778 e!2794384)))

(declare-fun lt!1671700 () Bool)

(assert (=> d!1373569 (= res!1863778 (not lt!1671700))))

(declare-fun lt!1671701 () Bool)

(assert (=> d!1373569 (= lt!1671700 lt!1671701)))

(declare-fun lt!1671702 () Unit!90134)

(declare-fun e!2794383 () Unit!90134)

(assert (=> d!1373569 (= lt!1671702 e!2794383)))

(declare-fun c!764160 () Bool)

(assert (=> d!1373569 (= c!764160 lt!1671701)))

(assert (=> d!1373569 (= lt!1671701 (containsKey!1609 (toList!4195 lm!1477) (hash!2603 hashF!1107 key!3287)))))

(assert (=> d!1373569 (= (contains!13087 lm!1477 (hash!2603 hashF!1107 key!3287)) lt!1671700)))

(declare-fun b!4486630 () Bool)

(declare-fun lt!1671703 () Unit!90134)

(assert (=> b!4486630 (= e!2794383 lt!1671703)))

(assert (=> b!4486630 (= lt!1671703 (lemmaContainsKeyImpliesGetValueByKeyDefined!888 (toList!4195 lm!1477) (hash!2603 hashF!1107 key!3287)))))

(assert (=> b!4486630 (isDefined!8291 (getValueByKey!984 (toList!4195 lm!1477) (hash!2603 hashF!1107 key!3287)))))

(declare-fun b!4486631 () Bool)

(declare-fun Unit!90169 () Unit!90134)

(assert (=> b!4486631 (= e!2794383 Unit!90169)))

(declare-fun b!4486632 () Bool)

(assert (=> b!4486632 (= e!2794384 (isDefined!8291 (getValueByKey!984 (toList!4195 lm!1477) (hash!2603 hashF!1107 key!3287))))))

(assert (= (and d!1373569 c!764160) b!4486630))

(assert (= (and d!1373569 (not c!764160)) b!4486631))

(assert (= (and d!1373569 (not res!1863778)) b!4486632))

(assert (=> d!1373569 m!5206859))

(declare-fun m!5207565 () Bool)

(assert (=> d!1373569 m!5207565))

(assert (=> b!4486630 m!5206859))

(declare-fun m!5207567 () Bool)

(assert (=> b!4486630 m!5207567))

(assert (=> b!4486630 m!5206859))

(declare-fun m!5207569 () Bool)

(assert (=> b!4486630 m!5207569))

(assert (=> b!4486630 m!5207569))

(declare-fun m!5207571 () Bool)

(assert (=> b!4486630 m!5207571))

(assert (=> b!4486632 m!5206859))

(assert (=> b!4486632 m!5207569))

(assert (=> b!4486632 m!5207569))

(assert (=> b!4486632 m!5207571))

(assert (=> d!1373347 d!1373569))

(assert (=> d!1373347 d!1373425))

(declare-fun d!1373571 () Bool)

(assert (=> d!1373571 (contains!13087 lm!1477 (hash!2603 hashF!1107 key!3287))))

(assert (=> d!1373571 true))

(declare-fun _$27!1134 () Unit!90134)

(assert (=> d!1373571 (= (choose!28870 lm!1477 key!3287 hashF!1107) _$27!1134)))

(declare-fun bs!826165 () Bool)

(assert (= bs!826165 d!1373571))

(assert (=> bs!826165 m!5206859))

(assert (=> bs!826165 m!5206859))

(assert (=> bs!826165 m!5207063))

(assert (=> d!1373347 d!1373571))

(declare-fun d!1373573 () Bool)

(declare-fun res!1863779 () Bool)

(declare-fun e!2794385 () Bool)

(assert (=> d!1373573 (=> res!1863779 e!2794385)))

(assert (=> d!1373573 (= res!1863779 ((_ is Nil!50461) (toList!4195 lm!1477)))))

(assert (=> d!1373573 (= (forall!10110 (toList!4195 lm!1477) lambda!166450) e!2794385)))

(declare-fun b!4486633 () Bool)

(declare-fun e!2794386 () Bool)

(assert (=> b!4486633 (= e!2794385 e!2794386)))

(declare-fun res!1863780 () Bool)

(assert (=> b!4486633 (=> (not res!1863780) (not e!2794386))))

(assert (=> b!4486633 (= res!1863780 (dynLambda!21067 lambda!166450 (h!56260 (toList!4195 lm!1477))))))

(declare-fun b!4486634 () Bool)

(assert (=> b!4486634 (= e!2794386 (forall!10110 (t!357539 (toList!4195 lm!1477)) lambda!166450))))

(assert (= (and d!1373573 (not res!1863779)) b!4486633))

(assert (= (and b!4486633 res!1863780) b!4486634))

(declare-fun b_lambda!150691 () Bool)

(assert (=> (not b_lambda!150691) (not b!4486633)))

(declare-fun m!5207573 () Bool)

(assert (=> b!4486633 m!5207573))

(declare-fun m!5207575 () Bool)

(assert (=> b!4486634 m!5207575))

(assert (=> d!1373347 d!1373573))

(declare-fun d!1373575 () Bool)

(assert (=> d!1373575 (= (get!16469 (getValueByKey!984 (toList!4195 lm!1477) hash!344)) (v!44423 (getValueByKey!984 (toList!4195 lm!1477) hash!344)))))

(assert (=> d!1373357 d!1373575))

(declare-fun b!4486637 () Bool)

(declare-fun e!2794388 () Option!11004)

(assert (=> b!4486637 (= e!2794388 (getValueByKey!984 (t!357539 (toList!4195 lm!1477)) hash!344))))

(declare-fun b!4486638 () Bool)

(assert (=> b!4486638 (= e!2794388 None!11003)))

(declare-fun d!1373577 () Bool)

(declare-fun c!764161 () Bool)

(assert (=> d!1373577 (= c!764161 (and ((_ is Cons!50461) (toList!4195 lm!1477)) (= (_1!28700 (h!56260 (toList!4195 lm!1477))) hash!344)))))

(declare-fun e!2794387 () Option!11004)

(assert (=> d!1373577 (= (getValueByKey!984 (toList!4195 lm!1477) hash!344) e!2794387)))

(declare-fun b!4486635 () Bool)

(assert (=> b!4486635 (= e!2794387 (Some!11003 (_2!28700 (h!56260 (toList!4195 lm!1477)))))))

(declare-fun b!4486636 () Bool)

(assert (=> b!4486636 (= e!2794387 e!2794388)))

(declare-fun c!764162 () Bool)

(assert (=> b!4486636 (= c!764162 (and ((_ is Cons!50461) (toList!4195 lm!1477)) (not (= (_1!28700 (h!56260 (toList!4195 lm!1477))) hash!344))))))

(assert (= (and d!1373577 c!764161) b!4486635))

(assert (= (and d!1373577 (not c!764161)) b!4486636))

(assert (= (and b!4486636 c!764162) b!4486637))

(assert (= (and b!4486636 (not c!764162)) b!4486638))

(declare-fun m!5207577 () Bool)

(assert (=> b!4486637 m!5207577))

(assert (=> d!1373357 d!1373577))

(declare-fun d!1373579 () Bool)

(declare-fun res!1863781 () Bool)

(declare-fun e!2794389 () Bool)

(assert (=> d!1373579 (=> res!1863781 e!2794389)))

(assert (=> d!1373579 (= res!1863781 (and ((_ is Cons!50460) (_2!28700 (h!56260 (t!357539 (toList!4195 lm!1477))))) (= (_1!28699 (h!56259 (_2!28700 (h!56260 (t!357539 (toList!4195 lm!1477)))))) key!3287)))))

(assert (=> d!1373579 (= (containsKey!1606 (_2!28700 (h!56260 (t!357539 (toList!4195 lm!1477)))) key!3287) e!2794389)))

(declare-fun b!4486639 () Bool)

(declare-fun e!2794390 () Bool)

(assert (=> b!4486639 (= e!2794389 e!2794390)))

(declare-fun res!1863782 () Bool)

(assert (=> b!4486639 (=> (not res!1863782) (not e!2794390))))

(assert (=> b!4486639 (= res!1863782 ((_ is Cons!50460) (_2!28700 (h!56260 (t!357539 (toList!4195 lm!1477))))))))

(declare-fun b!4486640 () Bool)

(assert (=> b!4486640 (= e!2794390 (containsKey!1606 (t!357538 (_2!28700 (h!56260 (t!357539 (toList!4195 lm!1477))))) key!3287))))

(assert (= (and d!1373579 (not res!1863781)) b!4486639))

(assert (= (and b!4486639 res!1863782) b!4486640))

(declare-fun m!5207579 () Bool)

(assert (=> b!4486640 m!5207579))

(assert (=> b!4486401 d!1373579))

(declare-fun bs!826279 () Bool)

(declare-fun b!4486712 () Bool)

(assert (= bs!826279 (and b!4486712 d!1373423)))

(declare-fun lambda!166580 () Int)

(assert (=> bs!826279 (not (= lambda!166580 lambda!166479))))

(assert (=> b!4486712 true))

(declare-fun bs!826280 () Bool)

(declare-fun b!4486713 () Bool)

(assert (= bs!826280 (and b!4486713 d!1373423)))

(declare-fun lambda!166581 () Int)

(assert (=> bs!826280 (not (= lambda!166581 lambda!166479))))

(declare-fun bs!826281 () Bool)

(assert (= bs!826281 (and b!4486713 b!4486712)))

(assert (=> bs!826281 (= lambda!166581 lambda!166580)))

(assert (=> b!4486713 true))

(declare-fun lambda!166582 () Int)

(assert (=> bs!826280 (not (= lambda!166582 lambda!166479))))

(declare-fun lt!1671791 () ListMap!3457)

(assert (=> bs!826281 (= (= lt!1671791 (extractMap!1150 (t!357539 (toList!4195 lm!1477)))) (= lambda!166582 lambda!166580))))

(assert (=> b!4486713 (= (= lt!1671791 (extractMap!1150 (t!357539 (toList!4195 lm!1477)))) (= lambda!166582 lambda!166581))))

(assert (=> b!4486713 true))

(declare-fun bs!826282 () Bool)

(declare-fun d!1373581 () Bool)

(assert (= bs!826282 (and d!1373581 d!1373423)))

(declare-fun lambda!166583 () Int)

(assert (=> bs!826282 (not (= lambda!166583 lambda!166479))))

(declare-fun bs!826283 () Bool)

(assert (= bs!826283 (and d!1373581 b!4486712)))

(declare-fun lt!1671800 () ListMap!3457)

(assert (=> bs!826283 (= (= lt!1671800 (extractMap!1150 (t!357539 (toList!4195 lm!1477)))) (= lambda!166583 lambda!166580))))

(declare-fun bs!826284 () Bool)

(assert (= bs!826284 (and d!1373581 b!4486713)))

(assert (=> bs!826284 (= (= lt!1671800 (extractMap!1150 (t!357539 (toList!4195 lm!1477)))) (= lambda!166583 lambda!166581))))

(assert (=> bs!826284 (= (= lt!1671800 lt!1671791) (= lambda!166583 lambda!166582))))

(assert (=> d!1373581 true))

(declare-fun c!764178 () Bool)

(declare-fun bm!312238 () Bool)

(declare-fun call!312243 () Bool)

(assert (=> bm!312238 (= call!312243 (forall!10112 (ite c!764178 (toList!4196 (extractMap!1150 (t!357539 (toList!4195 lm!1477)))) (_2!28700 (h!56260 (toList!4195 lm!1477)))) (ite c!764178 lambda!166580 lambda!166582)))))

(declare-fun b!4486710 () Bool)

(declare-fun e!2794439 () Bool)

(assert (=> b!4486710 (= e!2794439 (forall!10112 (toList!4196 (extractMap!1150 (t!357539 (toList!4195 lm!1477)))) lambda!166582))))

(declare-fun b!4486711 () Bool)

(declare-fun res!1863821 () Bool)

(declare-fun e!2794438 () Bool)

(assert (=> b!4486711 (=> (not res!1863821) (not e!2794438))))

(assert (=> b!4486711 (= res!1863821 (forall!10112 (toList!4196 (extractMap!1150 (t!357539 (toList!4195 lm!1477)))) lambda!166583))))

(declare-fun e!2794440 () ListMap!3457)

(assert (=> b!4486712 (= e!2794440 (extractMap!1150 (t!357539 (toList!4195 lm!1477))))))

(declare-fun lt!1671794 () Unit!90134)

(declare-fun call!312245 () Unit!90134)

(assert (=> b!4486712 (= lt!1671794 call!312245)))

(declare-fun call!312244 () Bool)

(assert (=> b!4486712 call!312244))

(declare-fun lt!1671785 () Unit!90134)

(assert (=> b!4486712 (= lt!1671785 lt!1671794)))

(assert (=> b!4486712 call!312243))

(declare-fun lt!1671786 () Unit!90134)

(declare-fun Unit!90171 () Unit!90134)

(assert (=> b!4486712 (= lt!1671786 Unit!90171)))

(assert (=> b!4486713 (= e!2794440 lt!1671791)))

(declare-fun lt!1671805 () ListMap!3457)

(declare-fun +!1434 (ListMap!3457 tuple2!50810) ListMap!3457)

(assert (=> b!4486713 (= lt!1671805 (+!1434 (extractMap!1150 (t!357539 (toList!4195 lm!1477))) (h!56259 (_2!28700 (h!56260 (toList!4195 lm!1477))))))))

(assert (=> b!4486713 (= lt!1671791 (addToMapMapFromBucket!631 (t!357538 (_2!28700 (h!56260 (toList!4195 lm!1477)))) (+!1434 (extractMap!1150 (t!357539 (toList!4195 lm!1477))) (h!56259 (_2!28700 (h!56260 (toList!4195 lm!1477)))))))))

(declare-fun lt!1671796 () Unit!90134)

(assert (=> b!4486713 (= lt!1671796 call!312245)))

(assert (=> b!4486713 (forall!10112 (toList!4196 (extractMap!1150 (t!357539 (toList!4195 lm!1477)))) lambda!166581)))

(declare-fun lt!1671793 () Unit!90134)

(assert (=> b!4486713 (= lt!1671793 lt!1671796)))

(assert (=> b!4486713 (forall!10112 (toList!4196 lt!1671805) lambda!166582)))

(declare-fun lt!1671804 () Unit!90134)

(declare-fun Unit!90172 () Unit!90134)

(assert (=> b!4486713 (= lt!1671804 Unit!90172)))

(assert (=> b!4486713 (forall!10112 (t!357538 (_2!28700 (h!56260 (toList!4195 lm!1477)))) lambda!166582)))

(declare-fun lt!1671799 () Unit!90134)

(declare-fun Unit!90173 () Unit!90134)

(assert (=> b!4486713 (= lt!1671799 Unit!90173)))

(declare-fun lt!1671797 () Unit!90134)

(declare-fun Unit!90174 () Unit!90134)

(assert (=> b!4486713 (= lt!1671797 Unit!90174)))

(declare-fun lt!1671798 () Unit!90134)

(declare-fun forallContained!2372 (List!50584 Int tuple2!50810) Unit!90134)

(assert (=> b!4486713 (= lt!1671798 (forallContained!2372 (toList!4196 lt!1671805) lambda!166582 (h!56259 (_2!28700 (h!56260 (toList!4195 lm!1477))))))))

(assert (=> b!4486713 (contains!13088 lt!1671805 (_1!28699 (h!56259 (_2!28700 (h!56260 (toList!4195 lm!1477))))))))

(declare-fun lt!1671788 () Unit!90134)

(declare-fun Unit!90175 () Unit!90134)

(assert (=> b!4486713 (= lt!1671788 Unit!90175)))

(assert (=> b!4486713 (contains!13088 lt!1671791 (_1!28699 (h!56259 (_2!28700 (h!56260 (toList!4195 lm!1477))))))))

(declare-fun lt!1671789 () Unit!90134)

(declare-fun Unit!90176 () Unit!90134)

(assert (=> b!4486713 (= lt!1671789 Unit!90176)))

(assert (=> b!4486713 (forall!10112 (_2!28700 (h!56260 (toList!4195 lm!1477))) lambda!166582)))

(declare-fun lt!1671795 () Unit!90134)

(declare-fun Unit!90177 () Unit!90134)

(assert (=> b!4486713 (= lt!1671795 Unit!90177)))

(assert (=> b!4486713 call!312244))

(declare-fun lt!1671801 () Unit!90134)

(declare-fun Unit!90178 () Unit!90134)

(assert (=> b!4486713 (= lt!1671801 Unit!90178)))

(declare-fun lt!1671787 () Unit!90134)

(declare-fun Unit!90179 () Unit!90134)

(assert (=> b!4486713 (= lt!1671787 Unit!90179)))

(declare-fun lt!1671803 () Unit!90134)

(declare-fun addForallContainsKeyThenBeforeAdding!292 (ListMap!3457 ListMap!3457 K!11875 V!12121) Unit!90134)

(assert (=> b!4486713 (= lt!1671803 (addForallContainsKeyThenBeforeAdding!292 (extractMap!1150 (t!357539 (toList!4195 lm!1477))) lt!1671791 (_1!28699 (h!56259 (_2!28700 (h!56260 (toList!4195 lm!1477))))) (_2!28699 (h!56259 (_2!28700 (h!56260 (toList!4195 lm!1477)))))))))

(assert (=> b!4486713 (forall!10112 (toList!4196 (extractMap!1150 (t!357539 (toList!4195 lm!1477)))) lambda!166582)))

(declare-fun lt!1671790 () Unit!90134)

(assert (=> b!4486713 (= lt!1671790 lt!1671803)))

(assert (=> b!4486713 (forall!10112 (toList!4196 (extractMap!1150 (t!357539 (toList!4195 lm!1477)))) lambda!166582)))

(declare-fun lt!1671802 () Unit!90134)

(declare-fun Unit!90180 () Unit!90134)

(assert (=> b!4486713 (= lt!1671802 Unit!90180)))

(declare-fun res!1863819 () Bool)

(assert (=> b!4486713 (= res!1863819 call!312243)))

(assert (=> b!4486713 (=> (not res!1863819) (not e!2794439))))

(assert (=> b!4486713 e!2794439))

(declare-fun lt!1671792 () Unit!90134)

(declare-fun Unit!90181 () Unit!90134)

(assert (=> b!4486713 (= lt!1671792 Unit!90181)))

(declare-fun bm!312239 () Bool)

(assert (=> bm!312239 (= call!312244 (forall!10112 (ite c!764178 (toList!4196 (extractMap!1150 (t!357539 (toList!4195 lm!1477)))) (toList!4196 lt!1671805)) (ite c!764178 lambda!166580 lambda!166582)))))

(declare-fun b!4486714 () Bool)

(assert (=> b!4486714 (= e!2794438 (invariantList!963 (toList!4196 lt!1671800)))))

(assert (=> d!1373581 e!2794438))

(declare-fun res!1863820 () Bool)

(assert (=> d!1373581 (=> (not res!1863820) (not e!2794438))))

(assert (=> d!1373581 (= res!1863820 (forall!10112 (_2!28700 (h!56260 (toList!4195 lm!1477))) lambda!166583))))

(assert (=> d!1373581 (= lt!1671800 e!2794440)))

(assert (=> d!1373581 (= c!764178 ((_ is Nil!50460) (_2!28700 (h!56260 (toList!4195 lm!1477)))))))

(assert (=> d!1373581 (noDuplicateKeys!1094 (_2!28700 (h!56260 (toList!4195 lm!1477))))))

(assert (=> d!1373581 (= (addToMapMapFromBucket!631 (_2!28700 (h!56260 (toList!4195 lm!1477))) (extractMap!1150 (t!357539 (toList!4195 lm!1477)))) lt!1671800)))

(declare-fun bm!312240 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!292 (ListMap!3457) Unit!90134)

(assert (=> bm!312240 (= call!312245 (lemmaContainsAllItsOwnKeys!292 (extractMap!1150 (t!357539 (toList!4195 lm!1477)))))))

(assert (= (and d!1373581 c!764178) b!4486712))

(assert (= (and d!1373581 (not c!764178)) b!4486713))

(assert (= (and b!4486713 res!1863819) b!4486710))

(assert (= (or b!4486712 b!4486713) bm!312238))

(assert (= (or b!4486712 b!4486713) bm!312239))

(assert (= (or b!4486712 b!4486713) bm!312240))

(assert (= (and d!1373581 res!1863820) b!4486711))

(assert (= (and b!4486711 res!1863821) b!4486714))

(declare-fun m!5207753 () Bool)

(assert (=> b!4486710 m!5207753))

(declare-fun m!5207755 () Bool)

(assert (=> bm!312239 m!5207755))

(assert (=> bm!312240 m!5206873))

(declare-fun m!5207757 () Bool)

(assert (=> bm!312240 m!5207757))

(declare-fun m!5207759 () Bool)

(assert (=> b!4486711 m!5207759))

(declare-fun m!5207761 () Bool)

(assert (=> bm!312238 m!5207761))

(declare-fun m!5207763 () Bool)

(assert (=> d!1373581 m!5207763))

(assert (=> d!1373581 m!5207275))

(assert (=> b!4486713 m!5206873))

(declare-fun m!5207765 () Bool)

(assert (=> b!4486713 m!5207765))

(assert (=> b!4486713 m!5207753))

(declare-fun m!5207767 () Bool)

(assert (=> b!4486713 m!5207767))

(declare-fun m!5207769 () Bool)

(assert (=> b!4486713 m!5207769))

(assert (=> b!4486713 m!5207765))

(declare-fun m!5207771 () Bool)

(assert (=> b!4486713 m!5207771))

(assert (=> b!4486713 m!5207753))

(assert (=> b!4486713 m!5206873))

(declare-fun m!5207773 () Bool)

(assert (=> b!4486713 m!5207773))

(declare-fun m!5207775 () Bool)

(assert (=> b!4486713 m!5207775))

(declare-fun m!5207777 () Bool)

(assert (=> b!4486713 m!5207777))

(declare-fun m!5207779 () Bool)

(assert (=> b!4486713 m!5207779))

(declare-fun m!5207781 () Bool)

(assert (=> b!4486713 m!5207781))

(declare-fun m!5207783 () Bool)

(assert (=> b!4486713 m!5207783))

(declare-fun m!5207785 () Bool)

(assert (=> b!4486714 m!5207785))

(assert (=> b!4486371 d!1373581))

(assert (=> b!4486371 d!1373407))

(assert (=> b!4486291 d!1373557))

(assert (=> b!4486291 d!1373559))

(declare-fun d!1373649 () Bool)

(declare-fun lt!1671808 () Bool)

(declare-fun content!8197 (List!50587) (InoxSet K!11875))

(assert (=> d!1373649 (= lt!1671808 (select (content!8197 (keys!17470 (extractMap!1150 (t!357539 (toList!4195 lm!1477))))) key!3287))))

(declare-fun e!2794445 () Bool)

(assert (=> d!1373649 (= lt!1671808 e!2794445)))

(declare-fun res!1863827 () Bool)

(assert (=> d!1373649 (=> (not res!1863827) (not e!2794445))))

(assert (=> d!1373649 (= res!1863827 ((_ is Cons!50463) (keys!17470 (extractMap!1150 (t!357539 (toList!4195 lm!1477))))))))

(assert (=> d!1373649 (= (contains!13091 (keys!17470 (extractMap!1150 (t!357539 (toList!4195 lm!1477)))) key!3287) lt!1671808)))

(declare-fun b!4486721 () Bool)

(declare-fun e!2794446 () Bool)

(assert (=> b!4486721 (= e!2794445 e!2794446)))

(declare-fun res!1863826 () Bool)

(assert (=> b!4486721 (=> res!1863826 e!2794446)))

(assert (=> b!4486721 (= res!1863826 (= (h!56264 (keys!17470 (extractMap!1150 (t!357539 (toList!4195 lm!1477))))) key!3287))))

(declare-fun b!4486722 () Bool)

(assert (=> b!4486722 (= e!2794446 (contains!13091 (t!357541 (keys!17470 (extractMap!1150 (t!357539 (toList!4195 lm!1477))))) key!3287))))

(assert (= (and d!1373649 res!1863827) b!4486721))

(assert (= (and b!4486721 (not res!1863826)) b!4486722))

(assert (=> d!1373649 m!5207193))

(declare-fun m!5207787 () Bool)

(assert (=> d!1373649 m!5207787))

(declare-fun m!5207789 () Bool)

(assert (=> d!1373649 m!5207789))

(declare-fun m!5207791 () Bool)

(assert (=> b!4486722 m!5207791))

(assert (=> b!4486378 d!1373649))

(declare-fun b!4486730 () Bool)

(assert (=> b!4486730 true))

(declare-fun d!1373651 () Bool)

(declare-fun e!2794449 () Bool)

(assert (=> d!1373651 e!2794449))

(declare-fun res!1863836 () Bool)

(assert (=> d!1373651 (=> (not res!1863836) (not e!2794449))))

(declare-fun lt!1671811 () List!50587)

(declare-fun noDuplicate!714 (List!50587) Bool)

(assert (=> d!1373651 (= res!1863836 (noDuplicate!714 lt!1671811))))

(assert (=> d!1373651 (= lt!1671811 (getKeysList!411 (toList!4196 (extractMap!1150 (t!357539 (toList!4195 lm!1477))))))))

(assert (=> d!1373651 (= (keys!17470 (extractMap!1150 (t!357539 (toList!4195 lm!1477)))) lt!1671811)))

(declare-fun b!4486729 () Bool)

(declare-fun res!1863835 () Bool)

(assert (=> b!4486729 (=> (not res!1863835) (not e!2794449))))

(declare-fun length!284 (List!50587) Int)

(declare-fun length!285 (List!50584) Int)

(assert (=> b!4486729 (= res!1863835 (= (length!284 lt!1671811) (length!285 (toList!4196 (extractMap!1150 (t!357539 (toList!4195 lm!1477)))))))))

(declare-fun res!1863834 () Bool)

(assert (=> b!4486730 (=> (not res!1863834) (not e!2794449))))

(declare-fun lambda!166588 () Int)

(declare-fun forall!10114 (List!50587 Int) Bool)

(assert (=> b!4486730 (= res!1863834 (forall!10114 lt!1671811 lambda!166588))))

(declare-fun lambda!166589 () Int)

(declare-fun b!4486731 () Bool)

(declare-fun map!11072 (List!50584 Int) List!50587)

(assert (=> b!4486731 (= e!2794449 (= (content!8197 lt!1671811) (content!8197 (map!11072 (toList!4196 (extractMap!1150 (t!357539 (toList!4195 lm!1477)))) lambda!166589))))))

(assert (= (and d!1373651 res!1863836) b!4486729))

(assert (= (and b!4486729 res!1863835) b!4486730))

(assert (= (and b!4486730 res!1863834) b!4486731))

(declare-fun m!5207793 () Bool)

(assert (=> d!1373651 m!5207793))

(assert (=> d!1373651 m!5207205))

(declare-fun m!5207795 () Bool)

(assert (=> b!4486729 m!5207795))

(declare-fun m!5207797 () Bool)

(assert (=> b!4486729 m!5207797))

(declare-fun m!5207799 () Bool)

(assert (=> b!4486730 m!5207799))

(declare-fun m!5207801 () Bool)

(assert (=> b!4486731 m!5207801))

(declare-fun m!5207803 () Bool)

(assert (=> b!4486731 m!5207803))

(assert (=> b!4486731 m!5207803))

(declare-fun m!5207805 () Bool)

(assert (=> b!4486731 m!5207805))

(assert (=> b!4486378 d!1373651))

(declare-fun d!1373653 () Bool)

(assert (=> d!1373653 (= (get!16469 (getValueByKey!984 (toList!4195 lt!1671372) hash!344)) (v!44423 (getValueByKey!984 (toList!4195 lt!1671372) hash!344)))))

(assert (=> d!1373313 d!1373653))

(declare-fun b!4486736 () Bool)

(declare-fun e!2794451 () Option!11004)

(assert (=> b!4486736 (= e!2794451 (getValueByKey!984 (t!357539 (toList!4195 lt!1671372)) hash!344))))

(declare-fun b!4486737 () Bool)

(assert (=> b!4486737 (= e!2794451 None!11003)))

(declare-fun d!1373655 () Bool)

(declare-fun c!764179 () Bool)

(assert (=> d!1373655 (= c!764179 (and ((_ is Cons!50461) (toList!4195 lt!1671372)) (= (_1!28700 (h!56260 (toList!4195 lt!1671372))) hash!344)))))

(declare-fun e!2794450 () Option!11004)

(assert (=> d!1373655 (= (getValueByKey!984 (toList!4195 lt!1671372) hash!344) e!2794450)))

(declare-fun b!4486734 () Bool)

(assert (=> b!4486734 (= e!2794450 (Some!11003 (_2!28700 (h!56260 (toList!4195 lt!1671372)))))))

(declare-fun b!4486735 () Bool)

(assert (=> b!4486735 (= e!2794450 e!2794451)))

(declare-fun c!764180 () Bool)

(assert (=> b!4486735 (= c!764180 (and ((_ is Cons!50461) (toList!4195 lt!1671372)) (not (= (_1!28700 (h!56260 (toList!4195 lt!1671372))) hash!344))))))

(assert (= (and d!1373655 c!764179) b!4486734))

(assert (= (and d!1373655 (not c!764179)) b!4486735))

(assert (= (and b!4486735 c!764180) b!4486736))

(assert (= (and b!4486735 (not c!764180)) b!4486737))

(declare-fun m!5207807 () Bool)

(assert (=> b!4486736 m!5207807))

(assert (=> d!1373313 d!1373655))

(assert (=> b!4486380 d!1373649))

(assert (=> b!4486380 d!1373651))

(declare-fun d!1373657 () Bool)

(declare-fun choose!28882 (Hashable!5489 K!11875) (_ BitVec 64))

(assert (=> d!1373657 (= (hash!2605 hashF!1107 key!3287) (choose!28882 hashF!1107 key!3287))))

(declare-fun bs!826285 () Bool)

(assert (= bs!826285 d!1373657))

(declare-fun m!5207809 () Bool)

(assert (=> bs!826285 m!5207809))

(assert (=> d!1373425 d!1373657))

(declare-fun d!1373659 () Bool)

(declare-fun res!1863841 () Bool)

(declare-fun e!2794456 () Bool)

(assert (=> d!1373659 (=> res!1863841 e!2794456)))

(assert (=> d!1373659 (= res!1863841 (or ((_ is Nil!50461) (toList!4195 lm!1477)) ((_ is Nil!50461) (t!357539 (toList!4195 lm!1477)))))))

(assert (=> d!1373659 (= (isStrictlySorted!377 (toList!4195 lm!1477)) e!2794456)))

(declare-fun b!4486742 () Bool)

(declare-fun e!2794457 () Bool)

(assert (=> b!4486742 (= e!2794456 e!2794457)))

(declare-fun res!1863842 () Bool)

(assert (=> b!4486742 (=> (not res!1863842) (not e!2794457))))

(assert (=> b!4486742 (= res!1863842 (bvslt (_1!28700 (h!56260 (toList!4195 lm!1477))) (_1!28700 (h!56260 (t!357539 (toList!4195 lm!1477))))))))

(declare-fun b!4486743 () Bool)

(assert (=> b!4486743 (= e!2794457 (isStrictlySorted!377 (t!357539 (toList!4195 lm!1477))))))

(assert (= (and d!1373659 (not res!1863841)) b!4486742))

(assert (= (and b!4486742 res!1863842) b!4486743))

(declare-fun m!5207811 () Bool)

(assert (=> b!4486743 m!5207811))

(assert (=> d!1373321 d!1373659))

(declare-fun d!1373661 () Bool)

(declare-fun res!1863847 () Bool)

(declare-fun e!2794462 () Bool)

(assert (=> d!1373661 (=> res!1863847 e!2794462)))

(assert (=> d!1373661 (= res!1863847 (and ((_ is Cons!50460) (toList!4196 (extractMap!1150 (toList!4195 lt!1671372)))) (= (_1!28699 (h!56259 (toList!4196 (extractMap!1150 (toList!4195 lt!1671372))))) key!3287)))))

(assert (=> d!1373661 (= (containsKey!1610 (toList!4196 (extractMap!1150 (toList!4195 lt!1671372))) key!3287) e!2794462)))

(declare-fun b!4486748 () Bool)

(declare-fun e!2794463 () Bool)

(assert (=> b!4486748 (= e!2794462 e!2794463)))

(declare-fun res!1863848 () Bool)

(assert (=> b!4486748 (=> (not res!1863848) (not e!2794463))))

(assert (=> b!4486748 (= res!1863848 ((_ is Cons!50460) (toList!4196 (extractMap!1150 (toList!4195 lt!1671372)))))))

(declare-fun b!4486749 () Bool)

(assert (=> b!4486749 (= e!2794463 (containsKey!1610 (t!357538 (toList!4196 (extractMap!1150 (toList!4195 lt!1671372)))) key!3287))))

(assert (= (and d!1373661 (not res!1863847)) b!4486748))

(assert (= (and b!4486748 res!1863848) b!4486749))

(declare-fun m!5207813 () Bool)

(assert (=> b!4486749 m!5207813))

(assert (=> d!1373409 d!1373661))

(assert (=> d!1373421 d!1373419))

(declare-fun d!1373663 () Bool)

(assert (=> d!1373663 (containsKeyBiggerList!74 (toList!4195 lt!1671372) key!3287)))

(assert (=> d!1373663 true))

(declare-fun _$33!568 () Unit!90134)

(assert (=> d!1373663 (= (choose!28876 lt!1671372 key!3287 hashF!1107) _$33!568)))

(declare-fun bs!826286 () Bool)

(assert (= bs!826286 d!1373663))

(assert (=> bs!826286 m!5206907))

(assert (=> d!1373421 d!1373663))

(declare-fun d!1373665 () Bool)

(declare-fun res!1863849 () Bool)

(declare-fun e!2794464 () Bool)

(assert (=> d!1373665 (=> res!1863849 e!2794464)))

(assert (=> d!1373665 (= res!1863849 ((_ is Nil!50461) (toList!4195 lt!1671372)))))

(assert (=> d!1373665 (= (forall!10110 (toList!4195 lt!1671372) lambda!166476) e!2794464)))

(declare-fun b!4486750 () Bool)

(declare-fun e!2794465 () Bool)

(assert (=> b!4486750 (= e!2794464 e!2794465)))

(declare-fun res!1863850 () Bool)

(assert (=> b!4486750 (=> (not res!1863850) (not e!2794465))))

(assert (=> b!4486750 (= res!1863850 (dynLambda!21067 lambda!166476 (h!56260 (toList!4195 lt!1671372))))))

(declare-fun b!4486751 () Bool)

(assert (=> b!4486751 (= e!2794465 (forall!10110 (t!357539 (toList!4195 lt!1671372)) lambda!166476))))

(assert (= (and d!1373665 (not res!1863849)) b!4486750))

(assert (= (and b!4486750 res!1863850) b!4486751))

(declare-fun b_lambda!150721 () Bool)

(assert (=> (not b_lambda!150721) (not b!4486750)))

(declare-fun m!5207815 () Bool)

(assert (=> b!4486750 m!5207815))

(declare-fun m!5207817 () Bool)

(assert (=> b!4486751 m!5207817))

(assert (=> d!1373421 d!1373665))

(declare-fun d!1373667 () Bool)

(declare-fun res!1863853 () Bool)

(declare-fun e!2794466 () Bool)

(assert (=> d!1373667 (=> res!1863853 e!2794466)))

(declare-fun e!2794468 () Bool)

(assert (=> d!1373667 (= res!1863853 e!2794468)))

(declare-fun res!1863851 () Bool)

(assert (=> d!1373667 (=> (not res!1863851) (not e!2794468))))

(assert (=> d!1373667 (= res!1863851 ((_ is Cons!50461) (t!357539 (t!357539 (toList!4195 lm!1477)))))))

(assert (=> d!1373667 (= (containsKeyBiggerList!74 (t!357539 (t!357539 (toList!4195 lm!1477))) key!3287) e!2794466)))

(declare-fun b!4486752 () Bool)

(assert (=> b!4486752 (= e!2794468 (containsKey!1606 (_2!28700 (h!56260 (t!357539 (t!357539 (toList!4195 lm!1477))))) key!3287))))

(declare-fun b!4486753 () Bool)

(declare-fun e!2794467 () Bool)

(assert (=> b!4486753 (= e!2794466 e!2794467)))

(declare-fun res!1863852 () Bool)

(assert (=> b!4486753 (=> (not res!1863852) (not e!2794467))))

(assert (=> b!4486753 (= res!1863852 ((_ is Cons!50461) (t!357539 (t!357539 (toList!4195 lm!1477)))))))

(declare-fun b!4486754 () Bool)

(assert (=> b!4486754 (= e!2794467 (containsKeyBiggerList!74 (t!357539 (t!357539 (t!357539 (toList!4195 lm!1477)))) key!3287))))

(assert (= (and d!1373667 res!1863851) b!4486752))

(assert (= (and d!1373667 (not res!1863853)) b!4486753))

(assert (= (and b!4486753 res!1863852) b!4486754))

(declare-fun m!5207819 () Bool)

(assert (=> b!4486752 m!5207819))

(declare-fun m!5207821 () Bool)

(assert (=> b!4486754 m!5207821))

(assert (=> b!4486403 d!1373667))

(declare-fun d!1373669 () Bool)

(declare-fun res!1863854 () Bool)

(declare-fun e!2794469 () Bool)

(assert (=> d!1373669 (=> res!1863854 e!2794469)))

(assert (=> d!1373669 (= res!1863854 (and ((_ is Cons!50460) lt!1671493) (= (_1!28699 (h!56259 lt!1671493)) key!3287)))))

(assert (=> d!1373669 (= (containsKey!1606 lt!1671493 key!3287) e!2794469)))

(declare-fun b!4486755 () Bool)

(declare-fun e!2794470 () Bool)

(assert (=> b!4486755 (= e!2794469 e!2794470)))

(declare-fun res!1863855 () Bool)

(assert (=> b!4486755 (=> (not res!1863855) (not e!2794470))))

(assert (=> b!4486755 (= res!1863855 ((_ is Cons!50460) lt!1671493))))

(declare-fun b!4486756 () Bool)

(assert (=> b!4486756 (= e!2794470 (containsKey!1606 (t!357538 lt!1671493) key!3287))))

(assert (= (and d!1373669 (not res!1863854)) b!4486755))

(assert (= (and b!4486755 res!1863855) b!4486756))

(declare-fun m!5207823 () Bool)

(assert (=> b!4486756 m!5207823))

(assert (=> d!1373377 d!1373669))

(declare-fun d!1373671 () Bool)

(declare-fun res!1863856 () Bool)

(declare-fun e!2794471 () Bool)

(assert (=> d!1373671 (=> res!1863856 e!2794471)))

(assert (=> d!1373671 (= res!1863856 (not ((_ is Cons!50460) lt!1671373)))))

(assert (=> d!1373671 (= (noDuplicateKeys!1094 lt!1671373) e!2794471)))

(declare-fun b!4486757 () Bool)

(declare-fun e!2794472 () Bool)

(assert (=> b!4486757 (= e!2794471 e!2794472)))

(declare-fun res!1863857 () Bool)

(assert (=> b!4486757 (=> (not res!1863857) (not e!2794472))))

(assert (=> b!4486757 (= res!1863857 (not (containsKey!1606 (t!357538 lt!1671373) (_1!28699 (h!56259 lt!1671373)))))))

(declare-fun b!4486758 () Bool)

(assert (=> b!4486758 (= e!2794472 (noDuplicateKeys!1094 (t!357538 lt!1671373)))))

(assert (= (and d!1373671 (not res!1863856)) b!4486757))

(assert (= (and b!4486757 res!1863857) b!4486758))

(declare-fun m!5207825 () Bool)

(assert (=> b!4486757 m!5207825))

(declare-fun m!5207827 () Bool)

(assert (=> b!4486758 m!5207827))

(assert (=> d!1373377 d!1373671))

(declare-fun d!1373673 () Bool)

(declare-fun noDuplicatedKeys!229 (List!50584) Bool)

(assert (=> d!1373673 (= (invariantList!963 (toList!4196 lt!1671536)) (noDuplicatedKeys!229 (toList!4196 lt!1671536)))))

(declare-fun bs!826287 () Bool)

(assert (= bs!826287 d!1373673))

(declare-fun m!5207829 () Bool)

(assert (=> bs!826287 m!5207829))

(assert (=> d!1373407 d!1373673))

(declare-fun d!1373675 () Bool)

(declare-fun res!1863858 () Bool)

(declare-fun e!2794473 () Bool)

(assert (=> d!1373675 (=> res!1863858 e!2794473)))

(assert (=> d!1373675 (= res!1863858 ((_ is Nil!50461) (t!357539 (toList!4195 lm!1477))))))

(assert (=> d!1373675 (= (forall!10110 (t!357539 (toList!4195 lm!1477)) lambda!166466) e!2794473)))

(declare-fun b!4486759 () Bool)

(declare-fun e!2794474 () Bool)

(assert (=> b!4486759 (= e!2794473 e!2794474)))

(declare-fun res!1863859 () Bool)

(assert (=> b!4486759 (=> (not res!1863859) (not e!2794474))))

(assert (=> b!4486759 (= res!1863859 (dynLambda!21067 lambda!166466 (h!56260 (t!357539 (toList!4195 lm!1477)))))))

(declare-fun b!4486760 () Bool)

(assert (=> b!4486760 (= e!2794474 (forall!10110 (t!357539 (t!357539 (toList!4195 lm!1477))) lambda!166466))))

(assert (= (and d!1373675 (not res!1863858)) b!4486759))

(assert (= (and b!4486759 res!1863859) b!4486760))

(declare-fun b_lambda!150723 () Bool)

(assert (=> (not b_lambda!150723) (not b!4486759)))

(declare-fun m!5207831 () Bool)

(assert (=> b!4486759 m!5207831))

(declare-fun m!5207833 () Bool)

(assert (=> b!4486760 m!5207833))

(assert (=> d!1373407 d!1373675))

(declare-fun d!1373677 () Bool)

(assert (=> d!1373677 (= (isEmpty!28545 (toList!4195 lm!1477)) ((_ is Nil!50461) (toList!4195 lm!1477)))))

(assert (=> d!1373345 d!1373677))

(assert (=> b!4486385 d!1373661))

(declare-fun d!1373679 () Bool)

(assert (=> d!1373679 (containsKey!1610 (toList!4196 (extractMap!1150 (toList!4195 lt!1671372))) key!3287)))

(declare-fun lt!1671814 () Unit!90134)

(declare-fun choose!28883 (List!50584 K!11875) Unit!90134)

(assert (=> d!1373679 (= lt!1671814 (choose!28883 (toList!4196 (extractMap!1150 (toList!4195 lt!1671372))) key!3287))))

(assert (=> d!1373679 (invariantList!963 (toList!4196 (extractMap!1150 (toList!4195 lt!1671372))))))

(assert (=> d!1373679 (= (lemmaInGetKeysListThenContainsKey!410 (toList!4196 (extractMap!1150 (toList!4195 lt!1671372))) key!3287) lt!1671814)))

(declare-fun bs!826288 () Bool)

(assert (= bs!826288 d!1373679))

(assert (=> bs!826288 m!5207235))

(declare-fun m!5207835 () Bool)

(assert (=> bs!826288 m!5207835))

(declare-fun m!5207837 () Bool)

(assert (=> bs!826288 m!5207837))

(assert (=> b!4486385 d!1373679))

(declare-fun d!1373681 () Bool)

(declare-fun isEmpty!28549 (Option!11005) Bool)

(assert (=> d!1373681 (= (isDefined!8292 (getValueByKey!985 (toList!4196 (extractMap!1150 (toList!4195 lt!1671372))) key!3287)) (not (isEmpty!28549 (getValueByKey!985 (toList!4196 (extractMap!1150 (toList!4195 lt!1671372))) key!3287))))))

(declare-fun bs!826289 () Bool)

(assert (= bs!826289 d!1373681))

(assert (=> bs!826289 m!5207227))

(declare-fun m!5207839 () Bool)

(assert (=> bs!826289 m!5207839))

(assert (=> b!4486387 d!1373681))

(declare-fun b!4486772 () Bool)

(declare-fun e!2794480 () Option!11005)

(assert (=> b!4486772 (= e!2794480 None!11004)))

(declare-fun b!4486769 () Bool)

(declare-fun e!2794479 () Option!11005)

(assert (=> b!4486769 (= e!2794479 (Some!11004 (_2!28699 (h!56259 (toList!4196 (extractMap!1150 (toList!4195 lt!1671372)))))))))

(declare-fun b!4486771 () Bool)

(assert (=> b!4486771 (= e!2794480 (getValueByKey!985 (t!357538 (toList!4196 (extractMap!1150 (toList!4195 lt!1671372)))) key!3287))))

(declare-fun b!4486770 () Bool)

(assert (=> b!4486770 (= e!2794479 e!2794480)))

(declare-fun c!764186 () Bool)

(assert (=> b!4486770 (= c!764186 (and ((_ is Cons!50460) (toList!4196 (extractMap!1150 (toList!4195 lt!1671372)))) (not (= (_1!28699 (h!56259 (toList!4196 (extractMap!1150 (toList!4195 lt!1671372))))) key!3287))))))

(declare-fun d!1373683 () Bool)

(declare-fun c!764185 () Bool)

(assert (=> d!1373683 (= c!764185 (and ((_ is Cons!50460) (toList!4196 (extractMap!1150 (toList!4195 lt!1671372)))) (= (_1!28699 (h!56259 (toList!4196 (extractMap!1150 (toList!4195 lt!1671372))))) key!3287)))))

(assert (=> d!1373683 (= (getValueByKey!985 (toList!4196 (extractMap!1150 (toList!4195 lt!1671372))) key!3287) e!2794479)))

(assert (= (and d!1373683 c!764185) b!4486769))

(assert (= (and d!1373683 (not c!764185)) b!4486770))

(assert (= (and b!4486770 c!764186) b!4486771))

(assert (= (and b!4486770 (not c!764186)) b!4486772))

(declare-fun m!5207841 () Bool)

(assert (=> b!4486771 m!5207841))

(assert (=> b!4486387 d!1373683))

(declare-fun d!1373685 () Bool)

(declare-fun res!1863860 () Bool)

(declare-fun e!2794481 () Bool)

(assert (=> d!1373685 (=> res!1863860 e!2794481)))

(assert (=> d!1373685 (= res!1863860 (not ((_ is Cons!50460) (_2!28700 lt!1671380))))))

(assert (=> d!1373685 (= (noDuplicateKeys!1094 (_2!28700 lt!1671380)) e!2794481)))

(declare-fun b!4486773 () Bool)

(declare-fun e!2794482 () Bool)

(assert (=> b!4486773 (= e!2794481 e!2794482)))

(declare-fun res!1863861 () Bool)

(assert (=> b!4486773 (=> (not res!1863861) (not e!2794482))))

(assert (=> b!4486773 (= res!1863861 (not (containsKey!1606 (t!357538 (_2!28700 lt!1671380)) (_1!28699 (h!56259 (_2!28700 lt!1671380))))))))

(declare-fun b!4486774 () Bool)

(assert (=> b!4486774 (= e!2794482 (noDuplicateKeys!1094 (t!357538 (_2!28700 lt!1671380))))))

(assert (= (and d!1373685 (not res!1863860)) b!4486773))

(assert (= (and b!4486773 res!1863861) b!4486774))

(declare-fun m!5207843 () Bool)

(assert (=> b!4486773 m!5207843))

(declare-fun m!5207845 () Bool)

(assert (=> b!4486774 m!5207845))

(assert (=> bs!826095 d!1373685))

(declare-fun d!1373687 () Bool)

(declare-fun res!1863862 () Bool)

(declare-fun e!2794483 () Bool)

(assert (=> d!1373687 (=> res!1863862 e!2794483)))

(assert (=> d!1373687 (= res!1863862 (and ((_ is Cons!50460) (t!357538 newBucket!178)) (= (_1!28699 (h!56259 (t!357538 newBucket!178))) (_1!28699 (h!56259 newBucket!178)))))))

(assert (=> d!1373687 (= (containsKey!1606 (t!357538 newBucket!178) (_1!28699 (h!56259 newBucket!178))) e!2794483)))

(declare-fun b!4486775 () Bool)

(declare-fun e!2794484 () Bool)

(assert (=> b!4486775 (= e!2794483 e!2794484)))

(declare-fun res!1863863 () Bool)

(assert (=> b!4486775 (=> (not res!1863863) (not e!2794484))))

(assert (=> b!4486775 (= res!1863863 ((_ is Cons!50460) (t!357538 newBucket!178)))))

(declare-fun b!4486776 () Bool)

(assert (=> b!4486776 (= e!2794484 (containsKey!1606 (t!357538 (t!357538 newBucket!178)) (_1!28699 (h!56259 newBucket!178))))))

(assert (= (and d!1373687 (not res!1863862)) b!4486775))

(assert (= (and b!4486775 res!1863863) b!4486776))

(declare-fun m!5207847 () Bool)

(assert (=> b!4486776 m!5207847))

(assert (=> b!4486202 d!1373687))

(declare-fun bs!826290 () Bool)

(declare-fun b!4486778 () Bool)

(assert (= bs!826290 (and b!4486778 b!4486730)))

(declare-fun lambda!166590 () Int)

(assert (=> bs!826290 (= (= (toList!4196 (extractMap!1150 (toList!4195 lm!1477))) (toList!4196 (extractMap!1150 (t!357539 (toList!4195 lm!1477))))) (= lambda!166590 lambda!166588))))

(assert (=> b!4486778 true))

(declare-fun bs!826291 () Bool)

(declare-fun b!4486779 () Bool)

(assert (= bs!826291 (and b!4486779 b!4486731)))

(declare-fun lambda!166591 () Int)

(assert (=> bs!826291 (= lambda!166591 lambda!166589)))

(declare-fun d!1373689 () Bool)

(declare-fun e!2794485 () Bool)

(assert (=> d!1373689 e!2794485))

(declare-fun res!1863866 () Bool)

(assert (=> d!1373689 (=> (not res!1863866) (not e!2794485))))

(declare-fun lt!1671815 () List!50587)

(assert (=> d!1373689 (= res!1863866 (noDuplicate!714 lt!1671815))))

(assert (=> d!1373689 (= lt!1671815 (getKeysList!411 (toList!4196 (extractMap!1150 (toList!4195 lm!1477)))))))

(assert (=> d!1373689 (= (keys!17470 (extractMap!1150 (toList!4195 lm!1477))) lt!1671815)))

(declare-fun b!4486777 () Bool)

(declare-fun res!1863865 () Bool)

(assert (=> b!4486777 (=> (not res!1863865) (not e!2794485))))

(assert (=> b!4486777 (= res!1863865 (= (length!284 lt!1671815) (length!285 (toList!4196 (extractMap!1150 (toList!4195 lm!1477))))))))

(declare-fun res!1863864 () Bool)

(assert (=> b!4486778 (=> (not res!1863864) (not e!2794485))))

(assert (=> b!4486778 (= res!1863864 (forall!10114 lt!1671815 lambda!166590))))

(assert (=> b!4486779 (= e!2794485 (= (content!8197 lt!1671815) (content!8197 (map!11072 (toList!4196 (extractMap!1150 (toList!4195 lm!1477))) lambda!166591))))))

(assert (= (and d!1373689 res!1863866) b!4486777))

(assert (= (and b!4486777 res!1863865) b!4486778))

(assert (= (and b!4486778 res!1863864) b!4486779))

(declare-fun m!5207849 () Bool)

(assert (=> d!1373689 m!5207849))

(assert (=> d!1373689 m!5207179))

(declare-fun m!5207851 () Bool)

(assert (=> b!4486777 m!5207851))

(declare-fun m!5207853 () Bool)

(assert (=> b!4486777 m!5207853))

(declare-fun m!5207855 () Bool)

(assert (=> b!4486778 m!5207855))

(declare-fun m!5207857 () Bool)

(assert (=> b!4486779 m!5207857))

(declare-fun m!5207859 () Bool)

(assert (=> b!4486779 m!5207859))

(assert (=> b!4486779 m!5207859))

(declare-fun m!5207861 () Bool)

(assert (=> b!4486779 m!5207861))

(assert (=> b!4486358 d!1373689))

(declare-fun bs!826292 () Bool)

(declare-fun b!4486782 () Bool)

(assert (= bs!826292 (and b!4486782 b!4486713)))

(declare-fun lambda!166592 () Int)

(assert (=> bs!826292 (= (= (extractMap!1150 (t!357539 (t!357539 (toList!4195 lm!1477)))) (extractMap!1150 (t!357539 (toList!4195 lm!1477)))) (= lambda!166592 lambda!166581))))

(assert (=> bs!826292 (= (= (extractMap!1150 (t!357539 (t!357539 (toList!4195 lm!1477)))) lt!1671791) (= lambda!166592 lambda!166582))))

(declare-fun bs!826293 () Bool)

(assert (= bs!826293 (and b!4486782 d!1373581)))

(assert (=> bs!826293 (= (= (extractMap!1150 (t!357539 (t!357539 (toList!4195 lm!1477)))) lt!1671800) (= lambda!166592 lambda!166583))))

(declare-fun bs!826294 () Bool)

(assert (= bs!826294 (and b!4486782 d!1373423)))

(assert (=> bs!826294 (not (= lambda!166592 lambda!166479))))

(declare-fun bs!826295 () Bool)

(assert (= bs!826295 (and b!4486782 b!4486712)))

(assert (=> bs!826295 (= (= (extractMap!1150 (t!357539 (t!357539 (toList!4195 lm!1477)))) (extractMap!1150 (t!357539 (toList!4195 lm!1477)))) (= lambda!166592 lambda!166580))))

(assert (=> b!4486782 true))

(declare-fun bs!826296 () Bool)

(declare-fun b!4486783 () Bool)

(assert (= bs!826296 (and b!4486783 b!4486713)))

(declare-fun lambda!166593 () Int)

(assert (=> bs!826296 (= (= (extractMap!1150 (t!357539 (t!357539 (toList!4195 lm!1477)))) (extractMap!1150 (t!357539 (toList!4195 lm!1477)))) (= lambda!166593 lambda!166581))))

(assert (=> bs!826296 (= (= (extractMap!1150 (t!357539 (t!357539 (toList!4195 lm!1477)))) lt!1671791) (= lambda!166593 lambda!166582))))

(declare-fun bs!826297 () Bool)

(assert (= bs!826297 (and b!4486783 d!1373581)))

(assert (=> bs!826297 (= (= (extractMap!1150 (t!357539 (t!357539 (toList!4195 lm!1477)))) lt!1671800) (= lambda!166593 lambda!166583))))

(declare-fun bs!826298 () Bool)

(assert (= bs!826298 (and b!4486783 d!1373423)))

(assert (=> bs!826298 (not (= lambda!166593 lambda!166479))))

(declare-fun bs!826299 () Bool)

(assert (= bs!826299 (and b!4486783 b!4486782)))

(assert (=> bs!826299 (= lambda!166593 lambda!166592)))

(declare-fun bs!826300 () Bool)

(assert (= bs!826300 (and b!4486783 b!4486712)))

(assert (=> bs!826300 (= (= (extractMap!1150 (t!357539 (t!357539 (toList!4195 lm!1477)))) (extractMap!1150 (t!357539 (toList!4195 lm!1477)))) (= lambda!166593 lambda!166580))))

(assert (=> b!4486783 true))

(declare-fun lt!1671822 () ListMap!3457)

(declare-fun lambda!166594 () Int)

(assert (=> bs!826296 (= (= lt!1671822 (extractMap!1150 (t!357539 (toList!4195 lm!1477)))) (= lambda!166594 lambda!166581))))

(assert (=> bs!826296 (= (= lt!1671822 lt!1671791) (= lambda!166594 lambda!166582))))

(assert (=> b!4486783 (= (= lt!1671822 (extractMap!1150 (t!357539 (t!357539 (toList!4195 lm!1477))))) (= lambda!166594 lambda!166593))))

(assert (=> bs!826297 (= (= lt!1671822 lt!1671800) (= lambda!166594 lambda!166583))))

(assert (=> bs!826298 (not (= lambda!166594 lambda!166479))))

(assert (=> bs!826299 (= (= lt!1671822 (extractMap!1150 (t!357539 (t!357539 (toList!4195 lm!1477))))) (= lambda!166594 lambda!166592))))

(assert (=> bs!826300 (= (= lt!1671822 (extractMap!1150 (t!357539 (toList!4195 lm!1477)))) (= lambda!166594 lambda!166580))))

(assert (=> b!4486783 true))

(declare-fun bs!826301 () Bool)

(declare-fun d!1373691 () Bool)

(assert (= bs!826301 (and d!1373691 b!4486713)))

(declare-fun lambda!166595 () Int)

(declare-fun lt!1671831 () ListMap!3457)

(assert (=> bs!826301 (= (= lt!1671831 (extractMap!1150 (t!357539 (toList!4195 lm!1477)))) (= lambda!166595 lambda!166581))))

(assert (=> bs!826301 (= (= lt!1671831 lt!1671791) (= lambda!166595 lambda!166582))))

(declare-fun bs!826302 () Bool)

(assert (= bs!826302 (and d!1373691 b!4486783)))

(assert (=> bs!826302 (= (= lt!1671831 (extractMap!1150 (t!357539 (t!357539 (toList!4195 lm!1477))))) (= lambda!166595 lambda!166593))))

(assert (=> bs!826302 (= (= lt!1671831 lt!1671822) (= lambda!166595 lambda!166594))))

(declare-fun bs!826303 () Bool)

(assert (= bs!826303 (and d!1373691 d!1373581)))

(assert (=> bs!826303 (= (= lt!1671831 lt!1671800) (= lambda!166595 lambda!166583))))

(declare-fun bs!826304 () Bool)

(assert (= bs!826304 (and d!1373691 d!1373423)))

(assert (=> bs!826304 (not (= lambda!166595 lambda!166479))))

(declare-fun bs!826305 () Bool)

(assert (= bs!826305 (and d!1373691 b!4486782)))

(assert (=> bs!826305 (= (= lt!1671831 (extractMap!1150 (t!357539 (t!357539 (toList!4195 lm!1477))))) (= lambda!166595 lambda!166592))))

(declare-fun bs!826306 () Bool)

(assert (= bs!826306 (and d!1373691 b!4486712)))

(assert (=> bs!826306 (= (= lt!1671831 (extractMap!1150 (t!357539 (toList!4195 lm!1477)))) (= lambda!166595 lambda!166580))))

(assert (=> d!1373691 true))

(declare-fun c!764187 () Bool)

(declare-fun bm!312241 () Bool)

(declare-fun call!312246 () Bool)

(assert (=> bm!312241 (= call!312246 (forall!10112 (ite c!764187 (toList!4196 (extractMap!1150 (t!357539 (t!357539 (toList!4195 lm!1477))))) (_2!28700 (h!56260 (t!357539 (toList!4195 lm!1477))))) (ite c!764187 lambda!166592 lambda!166594)))))

(declare-fun b!4486780 () Bool)

(declare-fun e!2794487 () Bool)

(assert (=> b!4486780 (= e!2794487 (forall!10112 (toList!4196 (extractMap!1150 (t!357539 (t!357539 (toList!4195 lm!1477))))) lambda!166594))))

(declare-fun b!4486781 () Bool)

(declare-fun res!1863869 () Bool)

(declare-fun e!2794486 () Bool)

(assert (=> b!4486781 (=> (not res!1863869) (not e!2794486))))

(assert (=> b!4486781 (= res!1863869 (forall!10112 (toList!4196 (extractMap!1150 (t!357539 (t!357539 (toList!4195 lm!1477))))) lambda!166595))))

(declare-fun e!2794488 () ListMap!3457)

(assert (=> b!4486782 (= e!2794488 (extractMap!1150 (t!357539 (t!357539 (toList!4195 lm!1477)))))))

(declare-fun lt!1671825 () Unit!90134)

(declare-fun call!312248 () Unit!90134)

(assert (=> b!4486782 (= lt!1671825 call!312248)))

(declare-fun call!312247 () Bool)

(assert (=> b!4486782 call!312247))

(declare-fun lt!1671816 () Unit!90134)

(assert (=> b!4486782 (= lt!1671816 lt!1671825)))

(assert (=> b!4486782 call!312246))

(declare-fun lt!1671817 () Unit!90134)

(declare-fun Unit!90197 () Unit!90134)

(assert (=> b!4486782 (= lt!1671817 Unit!90197)))

(assert (=> b!4486783 (= e!2794488 lt!1671822)))

(declare-fun lt!1671836 () ListMap!3457)

(assert (=> b!4486783 (= lt!1671836 (+!1434 (extractMap!1150 (t!357539 (t!357539 (toList!4195 lm!1477)))) (h!56259 (_2!28700 (h!56260 (t!357539 (toList!4195 lm!1477)))))))))

(assert (=> b!4486783 (= lt!1671822 (addToMapMapFromBucket!631 (t!357538 (_2!28700 (h!56260 (t!357539 (toList!4195 lm!1477))))) (+!1434 (extractMap!1150 (t!357539 (t!357539 (toList!4195 lm!1477)))) (h!56259 (_2!28700 (h!56260 (t!357539 (toList!4195 lm!1477))))))))))

(declare-fun lt!1671827 () Unit!90134)

(assert (=> b!4486783 (= lt!1671827 call!312248)))

(assert (=> b!4486783 (forall!10112 (toList!4196 (extractMap!1150 (t!357539 (t!357539 (toList!4195 lm!1477))))) lambda!166593)))

(declare-fun lt!1671824 () Unit!90134)

(assert (=> b!4486783 (= lt!1671824 lt!1671827)))

(assert (=> b!4486783 (forall!10112 (toList!4196 lt!1671836) lambda!166594)))

(declare-fun lt!1671835 () Unit!90134)

(declare-fun Unit!90198 () Unit!90134)

(assert (=> b!4486783 (= lt!1671835 Unit!90198)))

(assert (=> b!4486783 (forall!10112 (t!357538 (_2!28700 (h!56260 (t!357539 (toList!4195 lm!1477))))) lambda!166594)))

(declare-fun lt!1671830 () Unit!90134)

(declare-fun Unit!90199 () Unit!90134)

(assert (=> b!4486783 (= lt!1671830 Unit!90199)))

(declare-fun lt!1671828 () Unit!90134)

(declare-fun Unit!90200 () Unit!90134)

(assert (=> b!4486783 (= lt!1671828 Unit!90200)))

(declare-fun lt!1671829 () Unit!90134)

(assert (=> b!4486783 (= lt!1671829 (forallContained!2372 (toList!4196 lt!1671836) lambda!166594 (h!56259 (_2!28700 (h!56260 (t!357539 (toList!4195 lm!1477)))))))))

(assert (=> b!4486783 (contains!13088 lt!1671836 (_1!28699 (h!56259 (_2!28700 (h!56260 (t!357539 (toList!4195 lm!1477)))))))))

(declare-fun lt!1671819 () Unit!90134)

(declare-fun Unit!90201 () Unit!90134)

(assert (=> b!4486783 (= lt!1671819 Unit!90201)))

(assert (=> b!4486783 (contains!13088 lt!1671822 (_1!28699 (h!56259 (_2!28700 (h!56260 (t!357539 (toList!4195 lm!1477)))))))))

(declare-fun lt!1671820 () Unit!90134)

(declare-fun Unit!90202 () Unit!90134)

(assert (=> b!4486783 (= lt!1671820 Unit!90202)))

(assert (=> b!4486783 (forall!10112 (_2!28700 (h!56260 (t!357539 (toList!4195 lm!1477)))) lambda!166594)))

(declare-fun lt!1671826 () Unit!90134)

(declare-fun Unit!90203 () Unit!90134)

(assert (=> b!4486783 (= lt!1671826 Unit!90203)))

(assert (=> b!4486783 call!312247))

(declare-fun lt!1671832 () Unit!90134)

(declare-fun Unit!90204 () Unit!90134)

(assert (=> b!4486783 (= lt!1671832 Unit!90204)))

(declare-fun lt!1671818 () Unit!90134)

(declare-fun Unit!90205 () Unit!90134)

(assert (=> b!4486783 (= lt!1671818 Unit!90205)))

(declare-fun lt!1671834 () Unit!90134)

(assert (=> b!4486783 (= lt!1671834 (addForallContainsKeyThenBeforeAdding!292 (extractMap!1150 (t!357539 (t!357539 (toList!4195 lm!1477)))) lt!1671822 (_1!28699 (h!56259 (_2!28700 (h!56260 (t!357539 (toList!4195 lm!1477)))))) (_2!28699 (h!56259 (_2!28700 (h!56260 (t!357539 (toList!4195 lm!1477))))))))))

(assert (=> b!4486783 (forall!10112 (toList!4196 (extractMap!1150 (t!357539 (t!357539 (toList!4195 lm!1477))))) lambda!166594)))

(declare-fun lt!1671821 () Unit!90134)

(assert (=> b!4486783 (= lt!1671821 lt!1671834)))

(assert (=> b!4486783 (forall!10112 (toList!4196 (extractMap!1150 (t!357539 (t!357539 (toList!4195 lm!1477))))) lambda!166594)))

(declare-fun lt!1671833 () Unit!90134)

(declare-fun Unit!90206 () Unit!90134)

(assert (=> b!4486783 (= lt!1671833 Unit!90206)))

(declare-fun res!1863867 () Bool)

(assert (=> b!4486783 (= res!1863867 call!312246)))

(assert (=> b!4486783 (=> (not res!1863867) (not e!2794487))))

(assert (=> b!4486783 e!2794487))

(declare-fun lt!1671823 () Unit!90134)

(declare-fun Unit!90207 () Unit!90134)

(assert (=> b!4486783 (= lt!1671823 Unit!90207)))

(declare-fun bm!312242 () Bool)

(assert (=> bm!312242 (= call!312247 (forall!10112 (ite c!764187 (toList!4196 (extractMap!1150 (t!357539 (t!357539 (toList!4195 lm!1477))))) (toList!4196 lt!1671836)) (ite c!764187 lambda!166592 lambda!166594)))))

(declare-fun b!4486784 () Bool)

(assert (=> b!4486784 (= e!2794486 (invariantList!963 (toList!4196 lt!1671831)))))

(assert (=> d!1373691 e!2794486))

(declare-fun res!1863868 () Bool)

(assert (=> d!1373691 (=> (not res!1863868) (not e!2794486))))

(assert (=> d!1373691 (= res!1863868 (forall!10112 (_2!28700 (h!56260 (t!357539 (toList!4195 lm!1477)))) lambda!166595))))

(assert (=> d!1373691 (= lt!1671831 e!2794488)))

(assert (=> d!1373691 (= c!764187 ((_ is Nil!50460) (_2!28700 (h!56260 (t!357539 (toList!4195 lm!1477))))))))

(assert (=> d!1373691 (noDuplicateKeys!1094 (_2!28700 (h!56260 (t!357539 (toList!4195 lm!1477)))))))

(assert (=> d!1373691 (= (addToMapMapFromBucket!631 (_2!28700 (h!56260 (t!357539 (toList!4195 lm!1477)))) (extractMap!1150 (t!357539 (t!357539 (toList!4195 lm!1477))))) lt!1671831)))

(declare-fun bm!312243 () Bool)

(assert (=> bm!312243 (= call!312248 (lemmaContainsAllItsOwnKeys!292 (extractMap!1150 (t!357539 (t!357539 (toList!4195 lm!1477))))))))

(assert (= (and d!1373691 c!764187) b!4486782))

(assert (= (and d!1373691 (not c!764187)) b!4486783))

(assert (= (and b!4486783 res!1863867) b!4486780))

(assert (= (or b!4486782 b!4486783) bm!312241))

(assert (= (or b!4486782 b!4486783) bm!312242))

(assert (= (or b!4486782 b!4486783) bm!312243))

(assert (= (and d!1373691 res!1863868) b!4486781))

(assert (= (and b!4486781 res!1863869) b!4486784))

(declare-fun m!5207863 () Bool)

(assert (=> b!4486780 m!5207863))

(declare-fun m!5207865 () Bool)

(assert (=> bm!312242 m!5207865))

(assert (=> bm!312243 m!5207217))

(declare-fun m!5207867 () Bool)

(assert (=> bm!312243 m!5207867))

(declare-fun m!5207869 () Bool)

(assert (=> b!4486781 m!5207869))

(declare-fun m!5207871 () Bool)

(assert (=> bm!312241 m!5207871))

(declare-fun m!5207873 () Bool)

(assert (=> d!1373691 m!5207873))

(declare-fun m!5207875 () Bool)

(assert (=> d!1373691 m!5207875))

(assert (=> b!4486783 m!5207217))

(declare-fun m!5207877 () Bool)

(assert (=> b!4486783 m!5207877))

(assert (=> b!4486783 m!5207863))

(declare-fun m!5207879 () Bool)

(assert (=> b!4486783 m!5207879))

(declare-fun m!5207881 () Bool)

(assert (=> b!4486783 m!5207881))

(assert (=> b!4486783 m!5207877))

(declare-fun m!5207883 () Bool)

(assert (=> b!4486783 m!5207883))

(assert (=> b!4486783 m!5207863))

(assert (=> b!4486783 m!5207217))

(declare-fun m!5207885 () Bool)

(assert (=> b!4486783 m!5207885))

(declare-fun m!5207887 () Bool)

(assert (=> b!4486783 m!5207887))

(declare-fun m!5207889 () Bool)

(assert (=> b!4486783 m!5207889))

(declare-fun m!5207891 () Bool)

(assert (=> b!4486783 m!5207891))

(declare-fun m!5207893 () Bool)

(assert (=> b!4486783 m!5207893))

(declare-fun m!5207895 () Bool)

(assert (=> b!4486783 m!5207895))

(declare-fun m!5207897 () Bool)

(assert (=> b!4486784 m!5207897))

(assert (=> b!4486382 d!1373691))

(declare-fun bs!826307 () Bool)

(declare-fun d!1373693 () Bool)

(assert (= bs!826307 (and d!1373693 d!1373413)))

(declare-fun lambda!166596 () Int)

(assert (=> bs!826307 (= lambda!166596 lambda!166470)))

(declare-fun bs!826308 () Bool)

(assert (= bs!826308 (and d!1373693 start!441840)))

(assert (=> bs!826308 (= lambda!166596 lambda!166433)))

(declare-fun bs!826309 () Bool)

(assert (= bs!826309 (and d!1373693 d!1373407)))

(assert (=> bs!826309 (= lambda!166596 lambda!166466)))

(declare-fun bs!826310 () Bool)

(assert (= bs!826310 (and d!1373693 d!1373339)))

(assert (=> bs!826310 (not (= lambda!166596 lambda!166447))))

(declare-fun bs!826311 () Bool)

(assert (= bs!826311 (and d!1373693 d!1373347)))

(assert (=> bs!826311 (= lambda!166596 lambda!166450)))

(declare-fun bs!826312 () Bool)

(assert (= bs!826312 (and d!1373693 d!1373403)))

(assert (=> bs!826312 (= lambda!166596 lambda!166465)))

(declare-fun bs!826313 () Bool)

(assert (= bs!826313 (and d!1373693 d!1373411)))

(assert (=> bs!826313 (= lambda!166596 lambda!166469)))

(declare-fun bs!826314 () Bool)

(assert (= bs!826314 (and d!1373693 d!1373415)))

(assert (=> bs!826314 (= lambda!166596 lambda!166473)))

(declare-fun bs!826315 () Bool)

(assert (= bs!826315 (and d!1373693 d!1373421)))

(assert (=> bs!826315 (= lambda!166596 lambda!166476)))

(declare-fun lt!1671837 () ListMap!3457)

(assert (=> d!1373693 (invariantList!963 (toList!4196 lt!1671837))))

(declare-fun e!2794489 () ListMap!3457)

(assert (=> d!1373693 (= lt!1671837 e!2794489)))

(declare-fun c!764188 () Bool)

(assert (=> d!1373693 (= c!764188 ((_ is Cons!50461) (t!357539 (t!357539 (toList!4195 lm!1477)))))))

(assert (=> d!1373693 (forall!10110 (t!357539 (t!357539 (toList!4195 lm!1477))) lambda!166596)))

(assert (=> d!1373693 (= (extractMap!1150 (t!357539 (t!357539 (toList!4195 lm!1477)))) lt!1671837)))

(declare-fun b!4486785 () Bool)

(assert (=> b!4486785 (= e!2794489 (addToMapMapFromBucket!631 (_2!28700 (h!56260 (t!357539 (t!357539 (toList!4195 lm!1477))))) (extractMap!1150 (t!357539 (t!357539 (t!357539 (toList!4195 lm!1477)))))))))

(declare-fun b!4486786 () Bool)

(assert (=> b!4486786 (= e!2794489 (ListMap!3458 Nil!50460))))

(assert (= (and d!1373693 c!764188) b!4486785))

(assert (= (and d!1373693 (not c!764188)) b!4486786))

(declare-fun m!5207899 () Bool)

(assert (=> d!1373693 m!5207899))

(declare-fun m!5207901 () Bool)

(assert (=> d!1373693 m!5207901))

(declare-fun m!5207903 () Bool)

(assert (=> b!4486785 m!5207903))

(assert (=> b!4486785 m!5207903))

(declare-fun m!5207905 () Bool)

(assert (=> b!4486785 m!5207905))

(assert (=> b!4486382 d!1373693))

(declare-fun d!1373695 () Bool)

(declare-fun res!1863874 () Bool)

(declare-fun e!2794494 () Bool)

(assert (=> d!1373695 (=> res!1863874 e!2794494)))

(assert (=> d!1373695 (= res!1863874 ((_ is Nil!50460) newBucket!178))))

(assert (=> d!1373695 (= (forall!10112 newBucket!178 lambda!166479) e!2794494)))

(declare-fun b!4486791 () Bool)

(declare-fun e!2794495 () Bool)

(assert (=> b!4486791 (= e!2794494 e!2794495)))

(declare-fun res!1863875 () Bool)

(assert (=> b!4486791 (=> (not res!1863875) (not e!2794495))))

(declare-fun dynLambda!21069 (Int tuple2!50810) Bool)

(assert (=> b!4486791 (= res!1863875 (dynLambda!21069 lambda!166479 (h!56259 newBucket!178)))))

(declare-fun b!4486792 () Bool)

(assert (=> b!4486792 (= e!2794495 (forall!10112 (t!357538 newBucket!178) lambda!166479))))

(assert (= (and d!1373695 (not res!1863874)) b!4486791))

(assert (= (and b!4486791 res!1863875) b!4486792))

(declare-fun b_lambda!150725 () Bool)

(assert (=> (not b_lambda!150725) (not b!4486791)))

(declare-fun m!5207907 () Bool)

(assert (=> b!4486791 m!5207907))

(declare-fun m!5207909 () Bool)

(assert (=> b!4486792 m!5207909))

(assert (=> d!1373423 d!1373695))

(declare-fun d!1373697 () Bool)

(declare-fun lt!1671838 () Bool)

(assert (=> d!1373697 (= lt!1671838 (select (content!8197 e!2794217) key!3287))))

(declare-fun e!2794496 () Bool)

(assert (=> d!1373697 (= lt!1671838 e!2794496)))

(declare-fun res!1863877 () Bool)

(assert (=> d!1373697 (=> (not res!1863877) (not e!2794496))))

(assert (=> d!1373697 (= res!1863877 ((_ is Cons!50463) e!2794217))))

(assert (=> d!1373697 (= (contains!13091 e!2794217 key!3287) lt!1671838)))

(declare-fun b!4486793 () Bool)

(declare-fun e!2794497 () Bool)

(assert (=> b!4486793 (= e!2794496 e!2794497)))

(declare-fun res!1863876 () Bool)

(assert (=> b!4486793 (=> res!1863876 e!2794497)))

(assert (=> b!4486793 (= res!1863876 (= (h!56264 e!2794217) key!3287))))

(declare-fun b!4486794 () Bool)

(assert (=> b!4486794 (= e!2794497 (contains!13091 (t!357541 e!2794217) key!3287))))

(assert (= (and d!1373697 res!1863877) b!4486793))

(assert (= (and b!4486793 (not res!1863876)) b!4486794))

(declare-fun m!5207911 () Bool)

(assert (=> d!1373697 m!5207911))

(declare-fun m!5207913 () Bool)

(assert (=> d!1373697 m!5207913))

(declare-fun m!5207915 () Bool)

(assert (=> b!4486794 m!5207915))

(assert (=> bm!312216 d!1373697))

(declare-fun d!1373699 () Bool)

(assert (=> d!1373699 (isDefined!8292 (getValueByKey!985 (toList!4196 (extractMap!1150 (toList!4195 lt!1671372))) key!3287))))

(declare-fun lt!1671841 () Unit!90134)

(declare-fun choose!28885 (List!50584 K!11875) Unit!90134)

(assert (=> d!1373699 (= lt!1671841 (choose!28885 (toList!4196 (extractMap!1150 (toList!4195 lt!1671372))) key!3287))))

(assert (=> d!1373699 (invariantList!963 (toList!4196 (extractMap!1150 (toList!4195 lt!1671372))))))

(assert (=> d!1373699 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!889 (toList!4196 (extractMap!1150 (toList!4195 lt!1671372))) key!3287) lt!1671841)))

(declare-fun bs!826316 () Bool)

(assert (= bs!826316 d!1373699))

(assert (=> bs!826316 m!5207227))

(assert (=> bs!826316 m!5207227))

(assert (=> bs!826316 m!5207229))

(declare-fun m!5207917 () Bool)

(assert (=> bs!826316 m!5207917))

(assert (=> bs!826316 m!5207837))

(assert (=> b!4486390 d!1373699))

(assert (=> b!4486390 d!1373681))

(assert (=> b!4486390 d!1373683))

(declare-fun d!1373701 () Bool)

(assert (=> d!1373701 (contains!13091 (getKeysList!411 (toList!4196 (extractMap!1150 (toList!4195 lt!1671372)))) key!3287)))

(declare-fun lt!1671844 () Unit!90134)

(declare-fun choose!28886 (List!50584 K!11875) Unit!90134)

(assert (=> d!1373701 (= lt!1671844 (choose!28886 (toList!4196 (extractMap!1150 (toList!4195 lt!1671372))) key!3287))))

(assert (=> d!1373701 (invariantList!963 (toList!4196 (extractMap!1150 (toList!4195 lt!1671372))))))

(assert (=> d!1373701 (= (lemmaInListThenGetKeysListContains!407 (toList!4196 (extractMap!1150 (toList!4195 lt!1671372))) key!3287) lt!1671844)))

(declare-fun bs!826317 () Bool)

(assert (= bs!826317 d!1373701))

(assert (=> bs!826317 m!5207233))

(assert (=> bs!826317 m!5207233))

(declare-fun m!5207919 () Bool)

(assert (=> bs!826317 m!5207919))

(declare-fun m!5207921 () Bool)

(assert (=> bs!826317 m!5207921))

(assert (=> bs!826317 m!5207837))

(assert (=> b!4486390 d!1373701))

(assert (=> b!4486311 d!1373315))

(declare-fun d!1373703 () Bool)

(declare-fun res!1863882 () Bool)

(declare-fun e!2794502 () Bool)

(assert (=> d!1373703 (=> res!1863882 e!2794502)))

(assert (=> d!1373703 (= res!1863882 (and ((_ is Cons!50461) (toList!4195 lm!1477)) (= (_1!28700 (h!56260 (toList!4195 lm!1477))) lt!1671376)))))

(assert (=> d!1373703 (= (containsKey!1609 (toList!4195 lm!1477) lt!1671376) e!2794502)))

(declare-fun b!4486799 () Bool)

(declare-fun e!2794503 () Bool)

(assert (=> b!4486799 (= e!2794502 e!2794503)))

(declare-fun res!1863883 () Bool)

(assert (=> b!4486799 (=> (not res!1863883) (not e!2794503))))

(assert (=> b!4486799 (= res!1863883 (and (or (not ((_ is Cons!50461) (toList!4195 lm!1477))) (bvsle (_1!28700 (h!56260 (toList!4195 lm!1477))) lt!1671376)) ((_ is Cons!50461) (toList!4195 lm!1477)) (bvslt (_1!28700 (h!56260 (toList!4195 lm!1477))) lt!1671376)))))

(declare-fun b!4486800 () Bool)

(assert (=> b!4486800 (= e!2794503 (containsKey!1609 (t!357539 (toList!4195 lm!1477)) lt!1671376))))

(assert (= (and d!1373703 (not res!1863882)) b!4486799))

(assert (= (and b!4486799 res!1863883) b!4486800))

(declare-fun m!5207923 () Bool)

(assert (=> b!4486800 m!5207923))

(assert (=> d!1373375 d!1373703))

(declare-fun d!1373705 () Bool)

(declare-fun lt!1671845 () Bool)

(assert (=> d!1373705 (= lt!1671845 (select (content!8197 (keys!17470 (extractMap!1150 (toList!4195 lm!1477)))) key!3287))))

(declare-fun e!2794504 () Bool)

(assert (=> d!1373705 (= lt!1671845 e!2794504)))

(declare-fun res!1863885 () Bool)

(assert (=> d!1373705 (=> (not res!1863885) (not e!2794504))))

(assert (=> d!1373705 (= res!1863885 ((_ is Cons!50463) (keys!17470 (extractMap!1150 (toList!4195 lm!1477)))))))

(assert (=> d!1373705 (= (contains!13091 (keys!17470 (extractMap!1150 (toList!4195 lm!1477))) key!3287) lt!1671845)))

(declare-fun b!4486801 () Bool)

(declare-fun e!2794505 () Bool)

(assert (=> b!4486801 (= e!2794504 e!2794505)))

(declare-fun res!1863884 () Bool)

(assert (=> b!4486801 (=> res!1863884 e!2794505)))

(assert (=> b!4486801 (= res!1863884 (= (h!56264 (keys!17470 (extractMap!1150 (toList!4195 lm!1477)))) key!3287))))

(declare-fun b!4486802 () Bool)

(assert (=> b!4486802 (= e!2794505 (contains!13091 (t!357541 (keys!17470 (extractMap!1150 (toList!4195 lm!1477)))) key!3287))))

(assert (= (and d!1373705 res!1863885) b!4486801))

(assert (= (and b!4486801 (not res!1863884)) b!4486802))

(assert (=> d!1373705 m!5207167))

(declare-fun m!5207925 () Bool)

(assert (=> d!1373705 m!5207925))

(declare-fun m!5207927 () Bool)

(assert (=> d!1373705 m!5207927))

(declare-fun m!5207929 () Bool)

(assert (=> b!4486802 m!5207929))

(assert (=> b!4486363 d!1373705))

(assert (=> b!4486363 d!1373689))

(declare-fun bs!826318 () Bool)

(declare-fun b!4486828 () Bool)

(assert (= bs!826318 (and b!4486828 b!4486730)))

(declare-fun lambda!166605 () Int)

(assert (=> bs!826318 (= (= (t!357538 (toList!4196 (extractMap!1150 (toList!4195 lt!1671372)))) (toList!4196 (extractMap!1150 (t!357539 (toList!4195 lm!1477))))) (= lambda!166605 lambda!166588))))

(declare-fun bs!826319 () Bool)

(assert (= bs!826319 (and b!4486828 b!4486778)))

(assert (=> bs!826319 (= (= (t!357538 (toList!4196 (extractMap!1150 (toList!4195 lt!1671372)))) (toList!4196 (extractMap!1150 (toList!4195 lm!1477)))) (= lambda!166605 lambda!166590))))

(assert (=> b!4486828 true))

(declare-fun bs!826320 () Bool)

(declare-fun b!4486829 () Bool)

(assert (= bs!826320 (and b!4486829 b!4486730)))

(declare-fun lambda!166606 () Int)

(assert (=> bs!826320 (= (= (Cons!50460 (h!56259 (toList!4196 (extractMap!1150 (toList!4195 lt!1671372)))) (t!357538 (toList!4196 (extractMap!1150 (toList!4195 lt!1671372))))) (toList!4196 (extractMap!1150 (t!357539 (toList!4195 lm!1477))))) (= lambda!166606 lambda!166588))))

(declare-fun bs!826321 () Bool)

(assert (= bs!826321 (and b!4486829 b!4486778)))

(assert (=> bs!826321 (= (= (Cons!50460 (h!56259 (toList!4196 (extractMap!1150 (toList!4195 lt!1671372)))) (t!357538 (toList!4196 (extractMap!1150 (toList!4195 lt!1671372))))) (toList!4196 (extractMap!1150 (toList!4195 lm!1477)))) (= lambda!166606 lambda!166590))))

(declare-fun bs!826322 () Bool)

(assert (= bs!826322 (and b!4486829 b!4486828)))

(assert (=> bs!826322 (= (= (Cons!50460 (h!56259 (toList!4196 (extractMap!1150 (toList!4195 lt!1671372)))) (t!357538 (toList!4196 (extractMap!1150 (toList!4195 lt!1671372))))) (t!357538 (toList!4196 (extractMap!1150 (toList!4195 lt!1671372))))) (= lambda!166606 lambda!166605))))

(assert (=> b!4486829 true))

(declare-fun bs!826323 () Bool)

(declare-fun b!4486827 () Bool)

(assert (= bs!826323 (and b!4486827 b!4486730)))

(declare-fun lambda!166607 () Int)

(assert (=> bs!826323 (= (= (toList!4196 (extractMap!1150 (toList!4195 lt!1671372))) (toList!4196 (extractMap!1150 (t!357539 (toList!4195 lm!1477))))) (= lambda!166607 lambda!166588))))

(declare-fun bs!826324 () Bool)

(assert (= bs!826324 (and b!4486827 b!4486778)))

(assert (=> bs!826324 (= (= (toList!4196 (extractMap!1150 (toList!4195 lt!1671372))) (toList!4196 (extractMap!1150 (toList!4195 lm!1477)))) (= lambda!166607 lambda!166590))))

(declare-fun bs!826325 () Bool)

(assert (= bs!826325 (and b!4486827 b!4486828)))

(assert (=> bs!826325 (= (= (toList!4196 (extractMap!1150 (toList!4195 lt!1671372))) (t!357538 (toList!4196 (extractMap!1150 (toList!4195 lt!1671372))))) (= lambda!166607 lambda!166605))))

(declare-fun bs!826326 () Bool)

(assert (= bs!826326 (and b!4486827 b!4486829)))

(assert (=> bs!826326 (= (= (toList!4196 (extractMap!1150 (toList!4195 lt!1671372))) (Cons!50460 (h!56259 (toList!4196 (extractMap!1150 (toList!4195 lt!1671372)))) (t!357538 (toList!4196 (extractMap!1150 (toList!4195 lt!1671372)))))) (= lambda!166607 lambda!166606))))

(assert (=> b!4486827 true))

(declare-fun bs!826327 () Bool)

(declare-fun b!4486825 () Bool)

(assert (= bs!826327 (and b!4486825 b!4486731)))

(declare-fun lambda!166608 () Int)

(assert (=> bs!826327 (= lambda!166608 lambda!166589)))

(declare-fun bs!826328 () Bool)

(assert (= bs!826328 (and b!4486825 b!4486779)))

(assert (=> bs!826328 (= lambda!166608 lambda!166591)))

(declare-fun b!4486821 () Bool)

(declare-fun res!1863893 () Bool)

(declare-fun e!2794517 () Bool)

(assert (=> b!4486821 (=> (not res!1863893) (not e!2794517))))

(declare-fun lt!1671864 () List!50587)

(assert (=> b!4486821 (= res!1863893 (= (length!284 lt!1671864) (length!285 (toList!4196 (extractMap!1150 (toList!4195 lt!1671372))))))))

(declare-fun d!1373707 () Bool)

(assert (=> d!1373707 e!2794517))

(declare-fun res!1863892 () Bool)

(assert (=> d!1373707 (=> (not res!1863892) (not e!2794517))))

(assert (=> d!1373707 (= res!1863892 (noDuplicate!714 lt!1671864))))

(declare-fun e!2794514 () List!50587)

(assert (=> d!1373707 (= lt!1671864 e!2794514)))

(declare-fun c!764196 () Bool)

(assert (=> d!1373707 (= c!764196 ((_ is Cons!50460) (toList!4196 (extractMap!1150 (toList!4195 lt!1671372)))))))

(assert (=> d!1373707 (invariantList!963 (toList!4196 (extractMap!1150 (toList!4195 lt!1671372))))))

(assert (=> d!1373707 (= (getKeysList!411 (toList!4196 (extractMap!1150 (toList!4195 lt!1671372)))) lt!1671864)))

(declare-fun b!4486822 () Bool)

(assert (=> b!4486822 (= e!2794514 Nil!50463)))

(declare-fun b!4486823 () Bool)

(declare-fun e!2794516 () Unit!90134)

(declare-fun Unit!90210 () Unit!90134)

(assert (=> b!4486823 (= e!2794516 Unit!90210)))

(declare-fun b!4486824 () Bool)

(declare-fun e!2794515 () Unit!90134)

(declare-fun Unit!90213 () Unit!90134)

(assert (=> b!4486824 (= e!2794515 Unit!90213)))

(assert (=> b!4486825 (= e!2794517 (= (content!8197 lt!1671864) (content!8197 (map!11072 (toList!4196 (extractMap!1150 (toList!4195 lt!1671372))) lambda!166608))))))

(declare-fun b!4486826 () Bool)

(assert (=> b!4486826 false))

(declare-fun Unit!90214 () Unit!90134)

(assert (=> b!4486826 (= e!2794515 Unit!90214)))

(declare-fun res!1863894 () Bool)

(assert (=> b!4486827 (=> (not res!1863894) (not e!2794517))))

(assert (=> b!4486827 (= res!1863894 (forall!10114 lt!1671864 lambda!166607))))

(assert (=> b!4486828 false))

(declare-fun lt!1671866 () Unit!90134)

(declare-fun forallContained!2373 (List!50587 Int K!11875) Unit!90134)

(assert (=> b!4486828 (= lt!1671866 (forallContained!2373 (getKeysList!411 (t!357538 (toList!4196 (extractMap!1150 (toList!4195 lt!1671372))))) lambda!166605 (_1!28699 (h!56259 (toList!4196 (extractMap!1150 (toList!4195 lt!1671372)))))))))

(declare-fun Unit!90215 () Unit!90134)

(assert (=> b!4486828 (= e!2794516 Unit!90215)))

(assert (=> b!4486829 (= e!2794514 (Cons!50463 (_1!28699 (h!56259 (toList!4196 (extractMap!1150 (toList!4195 lt!1671372))))) (getKeysList!411 (t!357538 (toList!4196 (extractMap!1150 (toList!4195 lt!1671372)))))))))

(declare-fun c!764197 () Bool)

(assert (=> b!4486829 (= c!764197 (containsKey!1610 (t!357538 (toList!4196 (extractMap!1150 (toList!4195 lt!1671372)))) (_1!28699 (h!56259 (toList!4196 (extractMap!1150 (toList!4195 lt!1671372)))))))))

(declare-fun lt!1671862 () Unit!90134)

(assert (=> b!4486829 (= lt!1671862 e!2794515)))

(declare-fun c!764195 () Bool)

(assert (=> b!4486829 (= c!764195 (contains!13091 (getKeysList!411 (t!357538 (toList!4196 (extractMap!1150 (toList!4195 lt!1671372))))) (_1!28699 (h!56259 (toList!4196 (extractMap!1150 (toList!4195 lt!1671372)))))))))

(declare-fun lt!1671865 () Unit!90134)

(assert (=> b!4486829 (= lt!1671865 e!2794516)))

(declare-fun lt!1671861 () List!50587)

(assert (=> b!4486829 (= lt!1671861 (getKeysList!411 (t!357538 (toList!4196 (extractMap!1150 (toList!4195 lt!1671372))))))))

(declare-fun lt!1671860 () Unit!90134)

(declare-fun lemmaForallContainsAddHeadPreserves!135 (List!50584 List!50587 tuple2!50810) Unit!90134)

(assert (=> b!4486829 (= lt!1671860 (lemmaForallContainsAddHeadPreserves!135 (t!357538 (toList!4196 (extractMap!1150 (toList!4195 lt!1671372)))) lt!1671861 (h!56259 (toList!4196 (extractMap!1150 (toList!4195 lt!1671372))))))))

(assert (=> b!4486829 (forall!10114 lt!1671861 lambda!166606)))

(declare-fun lt!1671863 () Unit!90134)

(assert (=> b!4486829 (= lt!1671863 lt!1671860)))

(assert (= (and d!1373707 c!764196) b!4486829))

(assert (= (and d!1373707 (not c!764196)) b!4486822))

(assert (= (and b!4486829 c!764197) b!4486826))

(assert (= (and b!4486829 (not c!764197)) b!4486824))

(assert (= (and b!4486829 c!764195) b!4486828))

(assert (= (and b!4486829 (not c!764195)) b!4486823))

(assert (= (and d!1373707 res!1863892) b!4486821))

(assert (= (and b!4486821 res!1863893) b!4486827))

(assert (= (and b!4486827 res!1863894) b!4486825))

(declare-fun m!5207931 () Bool)

(assert (=> b!4486825 m!5207931))

(declare-fun m!5207933 () Bool)

(assert (=> b!4486825 m!5207933))

(assert (=> b!4486825 m!5207933))

(declare-fun m!5207935 () Bool)

(assert (=> b!4486825 m!5207935))

(declare-fun m!5207937 () Bool)

(assert (=> b!4486827 m!5207937))

(declare-fun m!5207939 () Bool)

(assert (=> b!4486821 m!5207939))

(declare-fun m!5207941 () Bool)

(assert (=> b!4486821 m!5207941))

(declare-fun m!5207943 () Bool)

(assert (=> d!1373707 m!5207943))

(assert (=> d!1373707 m!5207837))

(declare-fun m!5207945 () Bool)

(assert (=> b!4486829 m!5207945))

(declare-fun m!5207947 () Bool)

(assert (=> b!4486829 m!5207947))

(declare-fun m!5207949 () Bool)

(assert (=> b!4486829 m!5207949))

(assert (=> b!4486829 m!5207945))

(declare-fun m!5207951 () Bool)

(assert (=> b!4486829 m!5207951))

(declare-fun m!5207953 () Bool)

(assert (=> b!4486829 m!5207953))

(assert (=> b!4486828 m!5207945))

(assert (=> b!4486828 m!5207945))

(declare-fun m!5207955 () Bool)

(assert (=> b!4486828 m!5207955))

(assert (=> b!4486392 d!1373707))

(declare-fun d!1373709 () Bool)

(declare-fun res!1863895 () Bool)

(declare-fun e!2794518 () Bool)

(assert (=> d!1373709 (=> res!1863895 e!2794518)))

(assert (=> d!1373709 (= res!1863895 (and ((_ is Cons!50460) (toList!4196 (extractMap!1150 (t!357539 (toList!4195 lm!1477))))) (= (_1!28699 (h!56259 (toList!4196 (extractMap!1150 (t!357539 (toList!4195 lm!1477)))))) key!3287)))))

(assert (=> d!1373709 (= (containsKey!1610 (toList!4196 (extractMap!1150 (t!357539 (toList!4195 lm!1477)))) key!3287) e!2794518)))

(declare-fun b!4486832 () Bool)

(declare-fun e!2794519 () Bool)

(assert (=> b!4486832 (= e!2794518 e!2794519)))

(declare-fun res!1863896 () Bool)

(assert (=> b!4486832 (=> (not res!1863896) (not e!2794519))))

(assert (=> b!4486832 (= res!1863896 ((_ is Cons!50460) (toList!4196 (extractMap!1150 (t!357539 (toList!4195 lm!1477))))))))

(declare-fun b!4486833 () Bool)

(assert (=> b!4486833 (= e!2794519 (containsKey!1610 (t!357538 (toList!4196 (extractMap!1150 (t!357539 (toList!4195 lm!1477))))) key!3287))))

(assert (= (and d!1373709 (not res!1863895)) b!4486832))

(assert (= (and b!4486832 res!1863896) b!4486833))

(declare-fun m!5207957 () Bool)

(assert (=> b!4486833 m!5207957))

(assert (=> d!1373405 d!1373709))

(declare-fun d!1373711 () Bool)

(declare-fun res!1863897 () Bool)

(declare-fun e!2794520 () Bool)

(assert (=> d!1373711 (=> res!1863897 e!2794520)))

(assert (=> d!1373711 (= res!1863897 (and ((_ is Cons!50460) (toList!4196 (extractMap!1150 (toList!4195 lm!1477)))) (= (_1!28699 (h!56259 (toList!4196 (extractMap!1150 (toList!4195 lm!1477))))) key!3287)))))

(assert (=> d!1373711 (= (containsKey!1610 (toList!4196 (extractMap!1150 (toList!4195 lm!1477))) key!3287) e!2794520)))

(declare-fun b!4486834 () Bool)

(declare-fun e!2794521 () Bool)

(assert (=> b!4486834 (= e!2794520 e!2794521)))

(declare-fun res!1863898 () Bool)

(assert (=> b!4486834 (=> (not res!1863898) (not e!2794521))))

(assert (=> b!4486834 (= res!1863898 ((_ is Cons!50460) (toList!4196 (extractMap!1150 (toList!4195 lm!1477)))))))

(declare-fun b!4486835 () Bool)

(assert (=> b!4486835 (= e!2794521 (containsKey!1610 (t!357538 (toList!4196 (extractMap!1150 (toList!4195 lm!1477)))) key!3287))))

(assert (= (and d!1373711 (not res!1863897)) b!4486834))

(assert (= (and b!4486834 res!1863898) b!4486835))

(declare-fun m!5207959 () Bool)

(assert (=> b!4486835 m!5207959))

(assert (=> d!1373389 d!1373711))

(assert (=> b!4486374 d!1373709))

(declare-fun d!1373713 () Bool)

(assert (=> d!1373713 (containsKey!1610 (toList!4196 (extractMap!1150 (t!357539 (toList!4195 lm!1477)))) key!3287)))

(declare-fun lt!1671867 () Unit!90134)

(assert (=> d!1373713 (= lt!1671867 (choose!28883 (toList!4196 (extractMap!1150 (t!357539 (toList!4195 lm!1477)))) key!3287))))

(assert (=> d!1373713 (invariantList!963 (toList!4196 (extractMap!1150 (t!357539 (toList!4195 lm!1477)))))))

(assert (=> d!1373713 (= (lemmaInGetKeysListThenContainsKey!410 (toList!4196 (extractMap!1150 (t!357539 (toList!4195 lm!1477)))) key!3287) lt!1671867)))

(declare-fun bs!826329 () Bool)

(assert (= bs!826329 d!1373713))

(assert (=> bs!826329 m!5207207))

(declare-fun m!5207961 () Bool)

(assert (=> bs!826329 m!5207961))

(declare-fun m!5207963 () Bool)

(assert (=> bs!826329 m!5207963))

(assert (=> b!4486374 d!1373713))

(assert (=> b!4486365 d!1373705))

(assert (=> b!4486365 d!1373689))

(declare-fun d!1373715 () Bool)

(assert (=> d!1373715 (= (invariantList!963 (toList!4196 lt!1671527)) (noDuplicatedKeys!229 (toList!4196 lt!1671527)))))

(declare-fun bs!826330 () Bool)

(assert (= bs!826330 d!1373715))

(declare-fun m!5207965 () Bool)

(assert (=> bs!826330 m!5207965))

(assert (=> d!1373403 d!1373715))

(declare-fun d!1373717 () Bool)

(declare-fun res!1863899 () Bool)

(declare-fun e!2794522 () Bool)

(assert (=> d!1373717 (=> res!1863899 e!2794522)))

(assert (=> d!1373717 (= res!1863899 ((_ is Nil!50461) (toList!4195 lm!1477)))))

(assert (=> d!1373717 (= (forall!10110 (toList!4195 lm!1477) lambda!166465) e!2794522)))

(declare-fun b!4486836 () Bool)

(declare-fun e!2794523 () Bool)

(assert (=> b!4486836 (= e!2794522 e!2794523)))

(declare-fun res!1863900 () Bool)

(assert (=> b!4486836 (=> (not res!1863900) (not e!2794523))))

(assert (=> b!4486836 (= res!1863900 (dynLambda!21067 lambda!166465 (h!56260 (toList!4195 lm!1477))))))

(declare-fun b!4486837 () Bool)

(assert (=> b!4486837 (= e!2794523 (forall!10110 (t!357539 (toList!4195 lm!1477)) lambda!166465))))

(assert (= (and d!1373717 (not res!1863899)) b!4486836))

(assert (= (and b!4486836 res!1863900) b!4486837))

(declare-fun b_lambda!150727 () Bool)

(assert (=> (not b_lambda!150727) (not b!4486836)))

(declare-fun m!5207967 () Bool)

(assert (=> b!4486836 m!5207967))

(declare-fun m!5207969 () Bool)

(assert (=> b!4486837 m!5207969))

(assert (=> d!1373403 d!1373717))

(declare-fun d!1373719 () Bool)

(declare-fun lt!1671868 () Bool)

(assert (=> d!1373719 (= lt!1671868 (select (content!8195 (t!357539 (t!357539 (toList!4195 lm!1477)))) lt!1671380))))

(declare-fun e!2794525 () Bool)

(assert (=> d!1373719 (= lt!1671868 e!2794525)))

(declare-fun res!1863902 () Bool)

(assert (=> d!1373719 (=> (not res!1863902) (not e!2794525))))

(assert (=> d!1373719 (= res!1863902 ((_ is Cons!50461) (t!357539 (t!357539 (toList!4195 lm!1477)))))))

(assert (=> d!1373719 (= (contains!13089 (t!357539 (t!357539 (toList!4195 lm!1477))) lt!1671380) lt!1671868)))

(declare-fun b!4486838 () Bool)

(declare-fun e!2794524 () Bool)

(assert (=> b!4486838 (= e!2794525 e!2794524)))

(declare-fun res!1863901 () Bool)

(assert (=> b!4486838 (=> res!1863901 e!2794524)))

(assert (=> b!4486838 (= res!1863901 (= (h!56260 (t!357539 (t!357539 (toList!4195 lm!1477)))) lt!1671380))))

(declare-fun b!4486839 () Bool)

(assert (=> b!4486839 (= e!2794524 (contains!13089 (t!357539 (t!357539 (t!357539 (toList!4195 lm!1477)))) lt!1671380))))

(assert (= (and d!1373719 res!1863902) b!4486838))

(assert (= (and b!4486838 (not res!1863901)) b!4486839))

(declare-fun m!5207971 () Bool)

(assert (=> d!1373719 m!5207971))

(declare-fun m!5207973 () Bool)

(assert (=> d!1373719 m!5207973))

(declare-fun m!5207975 () Bool)

(assert (=> b!4486839 m!5207975))

(assert (=> b!4486178 d!1373719))

(declare-fun d!1373721 () Bool)

(assert (=> d!1373721 (= (invariantList!963 (toList!4196 lt!1671548)) (noDuplicatedKeys!229 (toList!4196 lt!1671548)))))

(declare-fun bs!826331 () Bool)

(assert (= bs!826331 d!1373721))

(declare-fun m!5207977 () Bool)

(assert (=> bs!826331 m!5207977))

(assert (=> d!1373413 d!1373721))

(declare-fun d!1373723 () Bool)

(declare-fun res!1863903 () Bool)

(declare-fun e!2794526 () Bool)

(assert (=> d!1373723 (=> res!1863903 e!2794526)))

(assert (=> d!1373723 (= res!1863903 ((_ is Nil!50461) (toList!4195 lt!1671372)))))

(assert (=> d!1373723 (= (forall!10110 (toList!4195 lt!1671372) lambda!166470) e!2794526)))

(declare-fun b!4486840 () Bool)

(declare-fun e!2794527 () Bool)

(assert (=> b!4486840 (= e!2794526 e!2794527)))

(declare-fun res!1863904 () Bool)

(assert (=> b!4486840 (=> (not res!1863904) (not e!2794527))))

(assert (=> b!4486840 (= res!1863904 (dynLambda!21067 lambda!166470 (h!56260 (toList!4195 lt!1671372))))))

(declare-fun b!4486841 () Bool)

(assert (=> b!4486841 (= e!2794527 (forall!10110 (t!357539 (toList!4195 lt!1671372)) lambda!166470))))

(assert (= (and d!1373723 (not res!1863903)) b!4486840))

(assert (= (and b!4486840 res!1863904) b!4486841))

(declare-fun b_lambda!150729 () Bool)

(assert (=> (not b_lambda!150729) (not b!4486840)))

(declare-fun m!5207979 () Bool)

(assert (=> b!4486840 m!5207979))

(declare-fun m!5207981 () Bool)

(assert (=> b!4486841 m!5207981))

(assert (=> d!1373413 d!1373723))

(declare-fun d!1373725 () Bool)

(assert (=> d!1373725 (= (isDefined!8292 (getValueByKey!985 (toList!4196 (extractMap!1150 (t!357539 (toList!4195 lm!1477)))) key!3287)) (not (isEmpty!28549 (getValueByKey!985 (toList!4196 (extractMap!1150 (t!357539 (toList!4195 lm!1477)))) key!3287))))))

(declare-fun bs!826332 () Bool)

(assert (= bs!826332 d!1373725))

(assert (=> bs!826332 m!5207199))

(declare-fun m!5207983 () Bool)

(assert (=> bs!826332 m!5207983))

(assert (=> b!4486376 d!1373725))

(declare-fun b!4486845 () Bool)

(declare-fun e!2794529 () Option!11005)

(assert (=> b!4486845 (= e!2794529 None!11004)))

(declare-fun b!4486842 () Bool)

(declare-fun e!2794528 () Option!11005)

(assert (=> b!4486842 (= e!2794528 (Some!11004 (_2!28699 (h!56259 (toList!4196 (extractMap!1150 (t!357539 (toList!4195 lm!1477))))))))))

(declare-fun b!4486844 () Bool)

(assert (=> b!4486844 (= e!2794529 (getValueByKey!985 (t!357538 (toList!4196 (extractMap!1150 (t!357539 (toList!4195 lm!1477))))) key!3287))))

(declare-fun b!4486843 () Bool)

(assert (=> b!4486843 (= e!2794528 e!2794529)))

(declare-fun c!764199 () Bool)

(assert (=> b!4486843 (= c!764199 (and ((_ is Cons!50460) (toList!4196 (extractMap!1150 (t!357539 (toList!4195 lm!1477))))) (not (= (_1!28699 (h!56259 (toList!4196 (extractMap!1150 (t!357539 (toList!4195 lm!1477)))))) key!3287))))))

(declare-fun d!1373727 () Bool)

(declare-fun c!764198 () Bool)

(assert (=> d!1373727 (= c!764198 (and ((_ is Cons!50460) (toList!4196 (extractMap!1150 (t!357539 (toList!4195 lm!1477))))) (= (_1!28699 (h!56259 (toList!4196 (extractMap!1150 (t!357539 (toList!4195 lm!1477)))))) key!3287)))))

(assert (=> d!1373727 (= (getValueByKey!985 (toList!4196 (extractMap!1150 (t!357539 (toList!4195 lm!1477)))) key!3287) e!2794528)))

(assert (= (and d!1373727 c!764198) b!4486842))

(assert (= (and d!1373727 (not c!764198)) b!4486843))

(assert (= (and b!4486843 c!764199) b!4486844))

(assert (= (and b!4486843 (not c!764199)) b!4486845))

(declare-fun m!5207985 () Bool)

(assert (=> b!4486844 m!5207985))

(assert (=> b!4486376 d!1373727))

(declare-fun d!1373729 () Bool)

(declare-fun lt!1671869 () Bool)

(assert (=> d!1373729 (= lt!1671869 (select (content!8197 e!2794210) key!3287))))

(declare-fun e!2794530 () Bool)

(assert (=> d!1373729 (= lt!1671869 e!2794530)))

(declare-fun res!1863906 () Bool)

(assert (=> d!1373729 (=> (not res!1863906) (not e!2794530))))

(assert (=> d!1373729 (= res!1863906 ((_ is Cons!50463) e!2794210))))

(assert (=> d!1373729 (= (contains!13091 e!2794210 key!3287) lt!1671869)))

(declare-fun b!4486846 () Bool)

(declare-fun e!2794531 () Bool)

(assert (=> b!4486846 (= e!2794530 e!2794531)))

(declare-fun res!1863905 () Bool)

(assert (=> b!4486846 (=> res!1863905 e!2794531)))

(assert (=> b!4486846 (= res!1863905 (= (h!56264 e!2794210) key!3287))))

(declare-fun b!4486847 () Bool)

(assert (=> b!4486847 (= e!2794531 (contains!13091 (t!357541 e!2794210) key!3287))))

(assert (= (and d!1373729 res!1863906) b!4486846))

(assert (= (and b!4486846 (not res!1863905)) b!4486847))

(declare-fun m!5207987 () Bool)

(assert (=> d!1373729 m!5207987))

(declare-fun m!5207989 () Bool)

(assert (=> d!1373729 m!5207989))

(declare-fun m!5207991 () Bool)

(assert (=> b!4486847 m!5207991))

(assert (=> bm!312215 d!1373729))

(declare-fun d!1373731 () Bool)

(assert (=> d!1373731 (isDefined!8291 (getValueByKey!984 (toList!4195 lt!1671372) hash!344))))

(declare-fun lt!1671870 () Unit!90134)

(assert (=> d!1373731 (= lt!1671870 (choose!28880 (toList!4195 lt!1671372) hash!344))))

(declare-fun e!2794532 () Bool)

(assert (=> d!1373731 e!2794532))

(declare-fun res!1863907 () Bool)

(assert (=> d!1373731 (=> (not res!1863907) (not e!2794532))))

(assert (=> d!1373731 (= res!1863907 (isStrictlySorted!377 (toList!4195 lt!1671372)))))

(assert (=> d!1373731 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!888 (toList!4195 lt!1671372) hash!344) lt!1671870)))

(declare-fun b!4486848 () Bool)

(assert (=> b!4486848 (= e!2794532 (containsKey!1609 (toList!4195 lt!1671372) hash!344))))

(assert (= (and d!1373731 res!1863907) b!4486848))

(assert (=> d!1373731 m!5206927))

(assert (=> d!1373731 m!5206927))

(assert (=> d!1373731 m!5207027))

(declare-fun m!5207993 () Bool)

(assert (=> d!1373731 m!5207993))

(declare-fun m!5207995 () Bool)

(assert (=> d!1373731 m!5207995))

(assert (=> b!4486848 m!5207023))

(assert (=> b!4486234 d!1373731))

(declare-fun d!1373733 () Bool)

(assert (=> d!1373733 (= (isDefined!8291 (getValueByKey!984 (toList!4195 lt!1671372) hash!344)) (not (isEmpty!28547 (getValueByKey!984 (toList!4195 lt!1671372) hash!344))))))

(declare-fun bs!826333 () Bool)

(assert (= bs!826333 d!1373733))

(assert (=> bs!826333 m!5206927))

(declare-fun m!5207997 () Bool)

(assert (=> bs!826333 m!5207997))

(assert (=> b!4486234 d!1373733))

(assert (=> b!4486234 d!1373655))

(declare-fun bs!826334 () Bool)

(declare-fun b!4486851 () Bool)

(assert (= bs!826334 (and b!4486851 b!4486713)))

(declare-fun lambda!166609 () Int)

(assert (=> bs!826334 (= (= (extractMap!1150 (t!357539 (toList!4195 lt!1671372))) (extractMap!1150 (t!357539 (toList!4195 lm!1477)))) (= lambda!166609 lambda!166581))))

(assert (=> bs!826334 (= (= (extractMap!1150 (t!357539 (toList!4195 lt!1671372))) lt!1671791) (= lambda!166609 lambda!166582))))

(declare-fun bs!826335 () Bool)

(assert (= bs!826335 (and b!4486851 b!4486783)))

(assert (=> bs!826335 (= (= (extractMap!1150 (t!357539 (toList!4195 lt!1671372))) (extractMap!1150 (t!357539 (t!357539 (toList!4195 lm!1477))))) (= lambda!166609 lambda!166593))))

(assert (=> bs!826335 (= (= (extractMap!1150 (t!357539 (toList!4195 lt!1671372))) lt!1671822) (= lambda!166609 lambda!166594))))

(declare-fun bs!826336 () Bool)

(assert (= bs!826336 (and b!4486851 d!1373581)))

(assert (=> bs!826336 (= (= (extractMap!1150 (t!357539 (toList!4195 lt!1671372))) lt!1671800) (= lambda!166609 lambda!166583))))

(declare-fun bs!826337 () Bool)

(assert (= bs!826337 (and b!4486851 d!1373691)))

(assert (=> bs!826337 (= (= (extractMap!1150 (t!357539 (toList!4195 lt!1671372))) lt!1671831) (= lambda!166609 lambda!166595))))

(declare-fun bs!826338 () Bool)

(assert (= bs!826338 (and b!4486851 d!1373423)))

(assert (=> bs!826338 (not (= lambda!166609 lambda!166479))))

(declare-fun bs!826339 () Bool)

(assert (= bs!826339 (and b!4486851 b!4486782)))

(assert (=> bs!826339 (= (= (extractMap!1150 (t!357539 (toList!4195 lt!1671372))) (extractMap!1150 (t!357539 (t!357539 (toList!4195 lm!1477))))) (= lambda!166609 lambda!166592))))

(declare-fun bs!826340 () Bool)

(assert (= bs!826340 (and b!4486851 b!4486712)))

(assert (=> bs!826340 (= (= (extractMap!1150 (t!357539 (toList!4195 lt!1671372))) (extractMap!1150 (t!357539 (toList!4195 lm!1477)))) (= lambda!166609 lambda!166580))))

(assert (=> b!4486851 true))

(declare-fun bs!826341 () Bool)

(declare-fun b!4486852 () Bool)

(assert (= bs!826341 (and b!4486852 b!4486713)))

(declare-fun lambda!166610 () Int)

(assert (=> bs!826341 (= (= (extractMap!1150 (t!357539 (toList!4195 lt!1671372))) (extractMap!1150 (t!357539 (toList!4195 lm!1477)))) (= lambda!166610 lambda!166581))))

(assert (=> bs!826341 (= (= (extractMap!1150 (t!357539 (toList!4195 lt!1671372))) lt!1671791) (= lambda!166610 lambda!166582))))

(declare-fun bs!826342 () Bool)

(assert (= bs!826342 (and b!4486852 b!4486783)))

(assert (=> bs!826342 (= (= (extractMap!1150 (t!357539 (toList!4195 lt!1671372))) (extractMap!1150 (t!357539 (t!357539 (toList!4195 lm!1477))))) (= lambda!166610 lambda!166593))))

(assert (=> bs!826342 (= (= (extractMap!1150 (t!357539 (toList!4195 lt!1671372))) lt!1671822) (= lambda!166610 lambda!166594))))

(declare-fun bs!826343 () Bool)

(assert (= bs!826343 (and b!4486852 d!1373581)))

(assert (=> bs!826343 (= (= (extractMap!1150 (t!357539 (toList!4195 lt!1671372))) lt!1671800) (= lambda!166610 lambda!166583))))

(declare-fun bs!826344 () Bool)

(assert (= bs!826344 (and b!4486852 b!4486851)))

(assert (=> bs!826344 (= lambda!166610 lambda!166609)))

(declare-fun bs!826345 () Bool)

(assert (= bs!826345 (and b!4486852 d!1373691)))

(assert (=> bs!826345 (= (= (extractMap!1150 (t!357539 (toList!4195 lt!1671372))) lt!1671831) (= lambda!166610 lambda!166595))))

(declare-fun bs!826346 () Bool)

(assert (= bs!826346 (and b!4486852 d!1373423)))

(assert (=> bs!826346 (not (= lambda!166610 lambda!166479))))

(declare-fun bs!826347 () Bool)

(assert (= bs!826347 (and b!4486852 b!4486782)))

(assert (=> bs!826347 (= (= (extractMap!1150 (t!357539 (toList!4195 lt!1671372))) (extractMap!1150 (t!357539 (t!357539 (toList!4195 lm!1477))))) (= lambda!166610 lambda!166592))))

(declare-fun bs!826348 () Bool)

(assert (= bs!826348 (and b!4486852 b!4486712)))

(assert (=> bs!826348 (= (= (extractMap!1150 (t!357539 (toList!4195 lt!1671372))) (extractMap!1150 (t!357539 (toList!4195 lm!1477)))) (= lambda!166610 lambda!166580))))

(assert (=> b!4486852 true))

(declare-fun lambda!166611 () Int)

(declare-fun lt!1671877 () ListMap!3457)

(assert (=> bs!826341 (= (= lt!1671877 (extractMap!1150 (t!357539 (toList!4195 lm!1477)))) (= lambda!166611 lambda!166581))))

(assert (=> bs!826342 (= (= lt!1671877 (extractMap!1150 (t!357539 (t!357539 (toList!4195 lm!1477))))) (= lambda!166611 lambda!166593))))

(assert (=> bs!826342 (= (= lt!1671877 lt!1671822) (= lambda!166611 lambda!166594))))

(assert (=> bs!826343 (= (= lt!1671877 lt!1671800) (= lambda!166611 lambda!166583))))

(assert (=> bs!826344 (= (= lt!1671877 (extractMap!1150 (t!357539 (toList!4195 lt!1671372)))) (= lambda!166611 lambda!166609))))

(assert (=> bs!826345 (= (= lt!1671877 lt!1671831) (= lambda!166611 lambda!166595))))

(assert (=> bs!826346 (not (= lambda!166611 lambda!166479))))

(assert (=> bs!826347 (= (= lt!1671877 (extractMap!1150 (t!357539 (t!357539 (toList!4195 lm!1477))))) (= lambda!166611 lambda!166592))))

(assert (=> bs!826348 (= (= lt!1671877 (extractMap!1150 (t!357539 (toList!4195 lm!1477)))) (= lambda!166611 lambda!166580))))

(assert (=> bs!826341 (= (= lt!1671877 lt!1671791) (= lambda!166611 lambda!166582))))

(assert (=> b!4486852 (= (= lt!1671877 (extractMap!1150 (t!357539 (toList!4195 lt!1671372)))) (= lambda!166611 lambda!166610))))

(assert (=> b!4486852 true))

(declare-fun bs!826349 () Bool)

(declare-fun d!1373735 () Bool)

(assert (= bs!826349 (and d!1373735 b!4486713)))

(declare-fun lt!1671886 () ListMap!3457)

(declare-fun lambda!166612 () Int)

(assert (=> bs!826349 (= (= lt!1671886 (extractMap!1150 (t!357539 (toList!4195 lm!1477)))) (= lambda!166612 lambda!166581))))

(declare-fun bs!826350 () Bool)

(assert (= bs!826350 (and d!1373735 b!4486783)))

(assert (=> bs!826350 (= (= lt!1671886 (extractMap!1150 (t!357539 (t!357539 (toList!4195 lm!1477))))) (= lambda!166612 lambda!166593))))

(declare-fun bs!826351 () Bool)

(assert (= bs!826351 (and d!1373735 b!4486852)))

(assert (=> bs!826351 (= (= lt!1671886 lt!1671877) (= lambda!166612 lambda!166611))))

(assert (=> bs!826350 (= (= lt!1671886 lt!1671822) (= lambda!166612 lambda!166594))))

(declare-fun bs!826352 () Bool)

(assert (= bs!826352 (and d!1373735 d!1373581)))

(assert (=> bs!826352 (= (= lt!1671886 lt!1671800) (= lambda!166612 lambda!166583))))

(declare-fun bs!826353 () Bool)

(assert (= bs!826353 (and d!1373735 b!4486851)))

(assert (=> bs!826353 (= (= lt!1671886 (extractMap!1150 (t!357539 (toList!4195 lt!1671372)))) (= lambda!166612 lambda!166609))))

(declare-fun bs!826354 () Bool)

(assert (= bs!826354 (and d!1373735 d!1373691)))

(assert (=> bs!826354 (= (= lt!1671886 lt!1671831) (= lambda!166612 lambda!166595))))

(declare-fun bs!826355 () Bool)

(assert (= bs!826355 (and d!1373735 d!1373423)))

(assert (=> bs!826355 (not (= lambda!166612 lambda!166479))))

(declare-fun bs!826356 () Bool)

(assert (= bs!826356 (and d!1373735 b!4486782)))

(assert (=> bs!826356 (= (= lt!1671886 (extractMap!1150 (t!357539 (t!357539 (toList!4195 lm!1477))))) (= lambda!166612 lambda!166592))))

(declare-fun bs!826357 () Bool)

(assert (= bs!826357 (and d!1373735 b!4486712)))

(assert (=> bs!826357 (= (= lt!1671886 (extractMap!1150 (t!357539 (toList!4195 lm!1477)))) (= lambda!166612 lambda!166580))))

(assert (=> bs!826349 (= (= lt!1671886 lt!1671791) (= lambda!166612 lambda!166582))))

(assert (=> bs!826351 (= (= lt!1671886 (extractMap!1150 (t!357539 (toList!4195 lt!1671372)))) (= lambda!166612 lambda!166610))))

(assert (=> d!1373735 true))

(declare-fun bm!312244 () Bool)

(declare-fun call!312249 () Bool)

(declare-fun c!764200 () Bool)

(assert (=> bm!312244 (= call!312249 (forall!10112 (ite c!764200 (toList!4196 (extractMap!1150 (t!357539 (toList!4195 lt!1671372)))) (_2!28700 (h!56260 (toList!4195 lt!1671372)))) (ite c!764200 lambda!166609 lambda!166611)))))

(declare-fun b!4486849 () Bool)

(declare-fun e!2794534 () Bool)

(assert (=> b!4486849 (= e!2794534 (forall!10112 (toList!4196 (extractMap!1150 (t!357539 (toList!4195 lt!1671372)))) lambda!166611))))

(declare-fun b!4486850 () Bool)

(declare-fun res!1863910 () Bool)

(declare-fun e!2794533 () Bool)

(assert (=> b!4486850 (=> (not res!1863910) (not e!2794533))))

(assert (=> b!4486850 (= res!1863910 (forall!10112 (toList!4196 (extractMap!1150 (t!357539 (toList!4195 lt!1671372)))) lambda!166612))))

(declare-fun e!2794535 () ListMap!3457)

(assert (=> b!4486851 (= e!2794535 (extractMap!1150 (t!357539 (toList!4195 lt!1671372))))))

(declare-fun lt!1671880 () Unit!90134)

(declare-fun call!312251 () Unit!90134)

(assert (=> b!4486851 (= lt!1671880 call!312251)))

(declare-fun call!312250 () Bool)

(assert (=> b!4486851 call!312250))

(declare-fun lt!1671871 () Unit!90134)

(assert (=> b!4486851 (= lt!1671871 lt!1671880)))

(assert (=> b!4486851 call!312249))

(declare-fun lt!1671872 () Unit!90134)

(declare-fun Unit!90227 () Unit!90134)

(assert (=> b!4486851 (= lt!1671872 Unit!90227)))

(assert (=> b!4486852 (= e!2794535 lt!1671877)))

(declare-fun lt!1671891 () ListMap!3457)

(assert (=> b!4486852 (= lt!1671891 (+!1434 (extractMap!1150 (t!357539 (toList!4195 lt!1671372))) (h!56259 (_2!28700 (h!56260 (toList!4195 lt!1671372))))))))

(assert (=> b!4486852 (= lt!1671877 (addToMapMapFromBucket!631 (t!357538 (_2!28700 (h!56260 (toList!4195 lt!1671372)))) (+!1434 (extractMap!1150 (t!357539 (toList!4195 lt!1671372))) (h!56259 (_2!28700 (h!56260 (toList!4195 lt!1671372)))))))))

(declare-fun lt!1671882 () Unit!90134)

(assert (=> b!4486852 (= lt!1671882 call!312251)))

(assert (=> b!4486852 (forall!10112 (toList!4196 (extractMap!1150 (t!357539 (toList!4195 lt!1671372)))) lambda!166610)))

(declare-fun lt!1671879 () Unit!90134)

(assert (=> b!4486852 (= lt!1671879 lt!1671882)))

(assert (=> b!4486852 (forall!10112 (toList!4196 lt!1671891) lambda!166611)))

(declare-fun lt!1671890 () Unit!90134)

(declare-fun Unit!90228 () Unit!90134)

(assert (=> b!4486852 (= lt!1671890 Unit!90228)))

(assert (=> b!4486852 (forall!10112 (t!357538 (_2!28700 (h!56260 (toList!4195 lt!1671372)))) lambda!166611)))

(declare-fun lt!1671885 () Unit!90134)

(declare-fun Unit!90229 () Unit!90134)

(assert (=> b!4486852 (= lt!1671885 Unit!90229)))

(declare-fun lt!1671883 () Unit!90134)

(declare-fun Unit!90230 () Unit!90134)

(assert (=> b!4486852 (= lt!1671883 Unit!90230)))

(declare-fun lt!1671884 () Unit!90134)

(assert (=> b!4486852 (= lt!1671884 (forallContained!2372 (toList!4196 lt!1671891) lambda!166611 (h!56259 (_2!28700 (h!56260 (toList!4195 lt!1671372))))))))

(assert (=> b!4486852 (contains!13088 lt!1671891 (_1!28699 (h!56259 (_2!28700 (h!56260 (toList!4195 lt!1671372))))))))

(declare-fun lt!1671874 () Unit!90134)

(declare-fun Unit!90231 () Unit!90134)

(assert (=> b!4486852 (= lt!1671874 Unit!90231)))

(assert (=> b!4486852 (contains!13088 lt!1671877 (_1!28699 (h!56259 (_2!28700 (h!56260 (toList!4195 lt!1671372))))))))

(declare-fun lt!1671875 () Unit!90134)

(declare-fun Unit!90232 () Unit!90134)

(assert (=> b!4486852 (= lt!1671875 Unit!90232)))

(assert (=> b!4486852 (forall!10112 (_2!28700 (h!56260 (toList!4195 lt!1671372))) lambda!166611)))

(declare-fun lt!1671881 () Unit!90134)

(declare-fun Unit!90233 () Unit!90134)

(assert (=> b!4486852 (= lt!1671881 Unit!90233)))

(assert (=> b!4486852 call!312250))

(declare-fun lt!1671887 () Unit!90134)

(declare-fun Unit!90234 () Unit!90134)

(assert (=> b!4486852 (= lt!1671887 Unit!90234)))

(declare-fun lt!1671873 () Unit!90134)

(declare-fun Unit!90235 () Unit!90134)

(assert (=> b!4486852 (= lt!1671873 Unit!90235)))

(declare-fun lt!1671889 () Unit!90134)

(assert (=> b!4486852 (= lt!1671889 (addForallContainsKeyThenBeforeAdding!292 (extractMap!1150 (t!357539 (toList!4195 lt!1671372))) lt!1671877 (_1!28699 (h!56259 (_2!28700 (h!56260 (toList!4195 lt!1671372))))) (_2!28699 (h!56259 (_2!28700 (h!56260 (toList!4195 lt!1671372)))))))))

(assert (=> b!4486852 (forall!10112 (toList!4196 (extractMap!1150 (t!357539 (toList!4195 lt!1671372)))) lambda!166611)))

(declare-fun lt!1671876 () Unit!90134)

(assert (=> b!4486852 (= lt!1671876 lt!1671889)))

(assert (=> b!4486852 (forall!10112 (toList!4196 (extractMap!1150 (t!357539 (toList!4195 lt!1671372)))) lambda!166611)))

(declare-fun lt!1671888 () Unit!90134)

(declare-fun Unit!90236 () Unit!90134)

(assert (=> b!4486852 (= lt!1671888 Unit!90236)))

(declare-fun res!1863908 () Bool)

(assert (=> b!4486852 (= res!1863908 call!312249)))

(assert (=> b!4486852 (=> (not res!1863908) (not e!2794534))))

(assert (=> b!4486852 e!2794534))

(declare-fun lt!1671878 () Unit!90134)

(declare-fun Unit!90237 () Unit!90134)

(assert (=> b!4486852 (= lt!1671878 Unit!90237)))

(declare-fun bm!312245 () Bool)

(assert (=> bm!312245 (= call!312250 (forall!10112 (ite c!764200 (toList!4196 (extractMap!1150 (t!357539 (toList!4195 lt!1671372)))) (toList!4196 lt!1671891)) (ite c!764200 lambda!166609 lambda!166611)))))

(declare-fun b!4486853 () Bool)

(assert (=> b!4486853 (= e!2794533 (invariantList!963 (toList!4196 lt!1671886)))))

(assert (=> d!1373735 e!2794533))

(declare-fun res!1863909 () Bool)

(assert (=> d!1373735 (=> (not res!1863909) (not e!2794533))))

(assert (=> d!1373735 (= res!1863909 (forall!10112 (_2!28700 (h!56260 (toList!4195 lt!1671372))) lambda!166612))))

(assert (=> d!1373735 (= lt!1671886 e!2794535)))

(assert (=> d!1373735 (= c!764200 ((_ is Nil!50460) (_2!28700 (h!56260 (toList!4195 lt!1671372)))))))

(assert (=> d!1373735 (noDuplicateKeys!1094 (_2!28700 (h!56260 (toList!4195 lt!1671372))))))

(assert (=> d!1373735 (= (addToMapMapFromBucket!631 (_2!28700 (h!56260 (toList!4195 lt!1671372))) (extractMap!1150 (t!357539 (toList!4195 lt!1671372)))) lt!1671886)))

(declare-fun bm!312246 () Bool)

(assert (=> bm!312246 (= call!312251 (lemmaContainsAllItsOwnKeys!292 (extractMap!1150 (t!357539 (toList!4195 lt!1671372)))))))

(assert (= (and d!1373735 c!764200) b!4486851))

(assert (= (and d!1373735 (not c!764200)) b!4486852))

(assert (= (and b!4486852 res!1863908) b!4486849))

(assert (= (or b!4486851 b!4486852) bm!312244))

(assert (= (or b!4486851 b!4486852) bm!312245))

(assert (= (or b!4486851 b!4486852) bm!312246))

(assert (= (and d!1373735 res!1863909) b!4486850))

(assert (= (and b!4486850 res!1863910) b!4486853))

(declare-fun m!5207999 () Bool)

(assert (=> b!4486849 m!5207999))

(declare-fun m!5208001 () Bool)

(assert (=> bm!312245 m!5208001))

(assert (=> bm!312246 m!5207249))

(declare-fun m!5208003 () Bool)

(assert (=> bm!312246 m!5208003))

(declare-fun m!5208005 () Bool)

(assert (=> b!4486850 m!5208005))

(declare-fun m!5208007 () Bool)

(assert (=> bm!312244 m!5208007))

(declare-fun m!5208009 () Bool)

(assert (=> d!1373735 m!5208009))

(declare-fun m!5208011 () Bool)

(assert (=> d!1373735 m!5208011))

(assert (=> b!4486852 m!5207249))

(declare-fun m!5208013 () Bool)

(assert (=> b!4486852 m!5208013))

(assert (=> b!4486852 m!5207999))

(declare-fun m!5208015 () Bool)

(assert (=> b!4486852 m!5208015))

(declare-fun m!5208017 () Bool)

(assert (=> b!4486852 m!5208017))

(assert (=> b!4486852 m!5208013))

(declare-fun m!5208019 () Bool)

(assert (=> b!4486852 m!5208019))

(assert (=> b!4486852 m!5207999))

(assert (=> b!4486852 m!5207249))

(declare-fun m!5208021 () Bool)

(assert (=> b!4486852 m!5208021))

(declare-fun m!5208023 () Bool)

(assert (=> b!4486852 m!5208023))

(declare-fun m!5208025 () Bool)

(assert (=> b!4486852 m!5208025))

(declare-fun m!5208027 () Bool)

(assert (=> b!4486852 m!5208027))

(declare-fun m!5208029 () Bool)

(assert (=> b!4486852 m!5208029))

(declare-fun m!5208031 () Bool)

(assert (=> b!4486852 m!5208031))

(declare-fun m!5208033 () Bool)

(assert (=> b!4486853 m!5208033))

(assert (=> b!4486393 d!1373735))

(declare-fun bs!826358 () Bool)

(declare-fun d!1373737 () Bool)

(assert (= bs!826358 (and d!1373737 d!1373413)))

(declare-fun lambda!166613 () Int)

(assert (=> bs!826358 (= lambda!166613 lambda!166470)))

(declare-fun bs!826359 () Bool)

(assert (= bs!826359 (and d!1373737 d!1373693)))

(assert (=> bs!826359 (= lambda!166613 lambda!166596)))

(declare-fun bs!826360 () Bool)

(assert (= bs!826360 (and d!1373737 start!441840)))

(assert (=> bs!826360 (= lambda!166613 lambda!166433)))

(declare-fun bs!826361 () Bool)

(assert (= bs!826361 (and d!1373737 d!1373407)))

(assert (=> bs!826361 (= lambda!166613 lambda!166466)))

(declare-fun bs!826362 () Bool)

(assert (= bs!826362 (and d!1373737 d!1373339)))

(assert (=> bs!826362 (not (= lambda!166613 lambda!166447))))

(declare-fun bs!826363 () Bool)

(assert (= bs!826363 (and d!1373737 d!1373347)))

(assert (=> bs!826363 (= lambda!166613 lambda!166450)))

(declare-fun bs!826364 () Bool)

(assert (= bs!826364 (and d!1373737 d!1373403)))

(assert (=> bs!826364 (= lambda!166613 lambda!166465)))

(declare-fun bs!826365 () Bool)

(assert (= bs!826365 (and d!1373737 d!1373411)))

(assert (=> bs!826365 (= lambda!166613 lambda!166469)))

(declare-fun bs!826366 () Bool)

(assert (= bs!826366 (and d!1373737 d!1373415)))

(assert (=> bs!826366 (= lambda!166613 lambda!166473)))

(declare-fun bs!826367 () Bool)

(assert (= bs!826367 (and d!1373737 d!1373421)))

(assert (=> bs!826367 (= lambda!166613 lambda!166476)))

(declare-fun lt!1671892 () ListMap!3457)

(assert (=> d!1373737 (invariantList!963 (toList!4196 lt!1671892))))

(declare-fun e!2794536 () ListMap!3457)

(assert (=> d!1373737 (= lt!1671892 e!2794536)))

(declare-fun c!764201 () Bool)

(assert (=> d!1373737 (= c!764201 ((_ is Cons!50461) (t!357539 (toList!4195 lt!1671372))))))

(assert (=> d!1373737 (forall!10110 (t!357539 (toList!4195 lt!1671372)) lambda!166613)))

(assert (=> d!1373737 (= (extractMap!1150 (t!357539 (toList!4195 lt!1671372))) lt!1671892)))

(declare-fun b!4486854 () Bool)

(assert (=> b!4486854 (= e!2794536 (addToMapMapFromBucket!631 (_2!28700 (h!56260 (t!357539 (toList!4195 lt!1671372)))) (extractMap!1150 (t!357539 (t!357539 (toList!4195 lt!1671372))))))))

(declare-fun b!4486855 () Bool)

(assert (=> b!4486855 (= e!2794536 (ListMap!3458 Nil!50460))))

(assert (= (and d!1373737 c!764201) b!4486854))

(assert (= (and d!1373737 (not c!764201)) b!4486855))

(declare-fun m!5208035 () Bool)

(assert (=> d!1373737 m!5208035))

(declare-fun m!5208037 () Bool)

(assert (=> d!1373737 m!5208037))

(declare-fun m!5208039 () Bool)

(assert (=> b!4486854 m!5208039))

(assert (=> b!4486854 m!5208039))

(declare-fun m!5208041 () Bool)

(assert (=> b!4486854 m!5208041))

(assert (=> b!4486393 d!1373737))

(declare-fun d!1373739 () Bool)

(assert (=> d!1373739 (isDefined!8292 (getValueByKey!985 (toList!4196 (extractMap!1150 (t!357539 (toList!4195 lm!1477)))) key!3287))))

(declare-fun lt!1671893 () Unit!90134)

(assert (=> d!1373739 (= lt!1671893 (choose!28885 (toList!4196 (extractMap!1150 (t!357539 (toList!4195 lm!1477)))) key!3287))))

(assert (=> d!1373739 (invariantList!963 (toList!4196 (extractMap!1150 (t!357539 (toList!4195 lm!1477)))))))

(assert (=> d!1373739 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!889 (toList!4196 (extractMap!1150 (t!357539 (toList!4195 lm!1477)))) key!3287) lt!1671893)))

(declare-fun bs!826368 () Bool)

(assert (= bs!826368 d!1373739))

(assert (=> bs!826368 m!5207199))

(assert (=> bs!826368 m!5207199))

(assert (=> bs!826368 m!5207201))

(declare-fun m!5208043 () Bool)

(assert (=> bs!826368 m!5208043))

(assert (=> bs!826368 m!5207963))

(assert (=> b!4486379 d!1373739))

(assert (=> b!4486379 d!1373725))

(assert (=> b!4486379 d!1373727))

(declare-fun d!1373741 () Bool)

(assert (=> d!1373741 (contains!13091 (getKeysList!411 (toList!4196 (extractMap!1150 (t!357539 (toList!4195 lm!1477))))) key!3287)))

(declare-fun lt!1671894 () Unit!90134)

(assert (=> d!1373741 (= lt!1671894 (choose!28886 (toList!4196 (extractMap!1150 (t!357539 (toList!4195 lm!1477)))) key!3287))))

(assert (=> d!1373741 (invariantList!963 (toList!4196 (extractMap!1150 (t!357539 (toList!4195 lm!1477)))))))

(assert (=> d!1373741 (= (lemmaInListThenGetKeysListContains!407 (toList!4196 (extractMap!1150 (t!357539 (toList!4195 lm!1477)))) key!3287) lt!1671894)))

(declare-fun bs!826369 () Bool)

(assert (= bs!826369 d!1373741))

(assert (=> bs!826369 m!5207205))

(assert (=> bs!826369 m!5207205))

(declare-fun m!5208045 () Bool)

(assert (=> bs!826369 m!5208045))

(declare-fun m!5208047 () Bool)

(assert (=> bs!826369 m!5208047))

(assert (=> bs!826369 m!5207963))

(assert (=> b!4486379 d!1373741))

(assert (=> b!4486267 d!1373577))

(declare-fun bs!826370 () Bool)

(declare-fun b!4486863 () Bool)

(assert (= bs!826370 (and b!4486863 b!4486828)))

(declare-fun lambda!166614 () Int)

(assert (=> bs!826370 (= (= (t!357538 (toList!4196 (extractMap!1150 (t!357539 (toList!4195 lm!1477))))) (t!357538 (toList!4196 (extractMap!1150 (toList!4195 lt!1671372))))) (= lambda!166614 lambda!166605))))

(declare-fun bs!826371 () Bool)

(assert (= bs!826371 (and b!4486863 b!4486827)))

(assert (=> bs!826371 (= (= (t!357538 (toList!4196 (extractMap!1150 (t!357539 (toList!4195 lm!1477))))) (toList!4196 (extractMap!1150 (toList!4195 lt!1671372)))) (= lambda!166614 lambda!166607))))

(declare-fun bs!826372 () Bool)

(assert (= bs!826372 (and b!4486863 b!4486730)))

(assert (=> bs!826372 (= (= (t!357538 (toList!4196 (extractMap!1150 (t!357539 (toList!4195 lm!1477))))) (toList!4196 (extractMap!1150 (t!357539 (toList!4195 lm!1477))))) (= lambda!166614 lambda!166588))))

(declare-fun bs!826373 () Bool)

(assert (= bs!826373 (and b!4486863 b!4486778)))

(assert (=> bs!826373 (= (= (t!357538 (toList!4196 (extractMap!1150 (t!357539 (toList!4195 lm!1477))))) (toList!4196 (extractMap!1150 (toList!4195 lm!1477)))) (= lambda!166614 lambda!166590))))

(declare-fun bs!826374 () Bool)

(assert (= bs!826374 (and b!4486863 b!4486829)))

(assert (=> bs!826374 (= (= (t!357538 (toList!4196 (extractMap!1150 (t!357539 (toList!4195 lm!1477))))) (Cons!50460 (h!56259 (toList!4196 (extractMap!1150 (toList!4195 lt!1671372)))) (t!357538 (toList!4196 (extractMap!1150 (toList!4195 lt!1671372)))))) (= lambda!166614 lambda!166606))))

(assert (=> b!4486863 true))

(declare-fun bs!826375 () Bool)

(declare-fun b!4486864 () Bool)

(assert (= bs!826375 (and b!4486864 b!4486863)))

(declare-fun lambda!166615 () Int)

(assert (=> bs!826375 (= (= (Cons!50460 (h!56259 (toList!4196 (extractMap!1150 (t!357539 (toList!4195 lm!1477))))) (t!357538 (toList!4196 (extractMap!1150 (t!357539 (toList!4195 lm!1477)))))) (t!357538 (toList!4196 (extractMap!1150 (t!357539 (toList!4195 lm!1477)))))) (= lambda!166615 lambda!166614))))

(declare-fun bs!826376 () Bool)

(assert (= bs!826376 (and b!4486864 b!4486828)))

(assert (=> bs!826376 (= (= (Cons!50460 (h!56259 (toList!4196 (extractMap!1150 (t!357539 (toList!4195 lm!1477))))) (t!357538 (toList!4196 (extractMap!1150 (t!357539 (toList!4195 lm!1477)))))) (t!357538 (toList!4196 (extractMap!1150 (toList!4195 lt!1671372))))) (= lambda!166615 lambda!166605))))

(declare-fun bs!826377 () Bool)

(assert (= bs!826377 (and b!4486864 b!4486827)))

(assert (=> bs!826377 (= (= (Cons!50460 (h!56259 (toList!4196 (extractMap!1150 (t!357539 (toList!4195 lm!1477))))) (t!357538 (toList!4196 (extractMap!1150 (t!357539 (toList!4195 lm!1477)))))) (toList!4196 (extractMap!1150 (toList!4195 lt!1671372)))) (= lambda!166615 lambda!166607))))

(declare-fun bs!826378 () Bool)

(assert (= bs!826378 (and b!4486864 b!4486730)))

(assert (=> bs!826378 (= (= (Cons!50460 (h!56259 (toList!4196 (extractMap!1150 (t!357539 (toList!4195 lm!1477))))) (t!357538 (toList!4196 (extractMap!1150 (t!357539 (toList!4195 lm!1477)))))) (toList!4196 (extractMap!1150 (t!357539 (toList!4195 lm!1477))))) (= lambda!166615 lambda!166588))))

(declare-fun bs!826379 () Bool)

(assert (= bs!826379 (and b!4486864 b!4486778)))

(assert (=> bs!826379 (= (= (Cons!50460 (h!56259 (toList!4196 (extractMap!1150 (t!357539 (toList!4195 lm!1477))))) (t!357538 (toList!4196 (extractMap!1150 (t!357539 (toList!4195 lm!1477)))))) (toList!4196 (extractMap!1150 (toList!4195 lm!1477)))) (= lambda!166615 lambda!166590))))

(declare-fun bs!826380 () Bool)

(assert (= bs!826380 (and b!4486864 b!4486829)))

(assert (=> bs!826380 (= (= (Cons!50460 (h!56259 (toList!4196 (extractMap!1150 (t!357539 (toList!4195 lm!1477))))) (t!357538 (toList!4196 (extractMap!1150 (t!357539 (toList!4195 lm!1477)))))) (Cons!50460 (h!56259 (toList!4196 (extractMap!1150 (toList!4195 lt!1671372)))) (t!357538 (toList!4196 (extractMap!1150 (toList!4195 lt!1671372)))))) (= lambda!166615 lambda!166606))))

(assert (=> b!4486864 true))

(declare-fun bs!826381 () Bool)

(declare-fun b!4486862 () Bool)

(assert (= bs!826381 (and b!4486862 b!4486863)))

(declare-fun lambda!166616 () Int)

(assert (=> bs!826381 (= (= (toList!4196 (extractMap!1150 (t!357539 (toList!4195 lm!1477)))) (t!357538 (toList!4196 (extractMap!1150 (t!357539 (toList!4195 lm!1477)))))) (= lambda!166616 lambda!166614))))

(declare-fun bs!826382 () Bool)

(assert (= bs!826382 (and b!4486862 b!4486864)))

(assert (=> bs!826382 (= (= (toList!4196 (extractMap!1150 (t!357539 (toList!4195 lm!1477)))) (Cons!50460 (h!56259 (toList!4196 (extractMap!1150 (t!357539 (toList!4195 lm!1477))))) (t!357538 (toList!4196 (extractMap!1150 (t!357539 (toList!4195 lm!1477))))))) (= lambda!166616 lambda!166615))))

(declare-fun bs!826383 () Bool)

(assert (= bs!826383 (and b!4486862 b!4486828)))

(assert (=> bs!826383 (= (= (toList!4196 (extractMap!1150 (t!357539 (toList!4195 lm!1477)))) (t!357538 (toList!4196 (extractMap!1150 (toList!4195 lt!1671372))))) (= lambda!166616 lambda!166605))))

(declare-fun bs!826384 () Bool)

(assert (= bs!826384 (and b!4486862 b!4486827)))

(assert (=> bs!826384 (= (= (toList!4196 (extractMap!1150 (t!357539 (toList!4195 lm!1477)))) (toList!4196 (extractMap!1150 (toList!4195 lt!1671372)))) (= lambda!166616 lambda!166607))))

(declare-fun bs!826385 () Bool)

(assert (= bs!826385 (and b!4486862 b!4486730)))

(assert (=> bs!826385 (= lambda!166616 lambda!166588)))

(declare-fun bs!826386 () Bool)

(assert (= bs!826386 (and b!4486862 b!4486778)))

(assert (=> bs!826386 (= (= (toList!4196 (extractMap!1150 (t!357539 (toList!4195 lm!1477)))) (toList!4196 (extractMap!1150 (toList!4195 lm!1477)))) (= lambda!166616 lambda!166590))))

(declare-fun bs!826387 () Bool)

(assert (= bs!826387 (and b!4486862 b!4486829)))

(assert (=> bs!826387 (= (= (toList!4196 (extractMap!1150 (t!357539 (toList!4195 lm!1477)))) (Cons!50460 (h!56259 (toList!4196 (extractMap!1150 (toList!4195 lt!1671372)))) (t!357538 (toList!4196 (extractMap!1150 (toList!4195 lt!1671372)))))) (= lambda!166616 lambda!166606))))

(assert (=> b!4486862 true))

(declare-fun bs!826388 () Bool)

(declare-fun b!4486860 () Bool)

(assert (= bs!826388 (and b!4486860 b!4486731)))

(declare-fun lambda!166617 () Int)

(assert (=> bs!826388 (= lambda!166617 lambda!166589)))

(declare-fun bs!826389 () Bool)

(assert (= bs!826389 (and b!4486860 b!4486779)))

(assert (=> bs!826389 (= lambda!166617 lambda!166591)))

(declare-fun bs!826390 () Bool)

(assert (= bs!826390 (and b!4486860 b!4486825)))

(assert (=> bs!826390 (= lambda!166617 lambda!166608)))

(declare-fun b!4486856 () Bool)

(declare-fun res!1863912 () Bool)

(declare-fun e!2794540 () Bool)

(assert (=> b!4486856 (=> (not res!1863912) (not e!2794540))))

(declare-fun lt!1671899 () List!50587)

(assert (=> b!4486856 (= res!1863912 (= (length!284 lt!1671899) (length!285 (toList!4196 (extractMap!1150 (t!357539 (toList!4195 lm!1477)))))))))

(declare-fun d!1373743 () Bool)

(assert (=> d!1373743 e!2794540))

(declare-fun res!1863911 () Bool)

(assert (=> d!1373743 (=> (not res!1863911) (not e!2794540))))

(assert (=> d!1373743 (= res!1863911 (noDuplicate!714 lt!1671899))))

(declare-fun e!2794537 () List!50587)

(assert (=> d!1373743 (= lt!1671899 e!2794537)))

(declare-fun c!764203 () Bool)

(assert (=> d!1373743 (= c!764203 ((_ is Cons!50460) (toList!4196 (extractMap!1150 (t!357539 (toList!4195 lm!1477))))))))

(assert (=> d!1373743 (invariantList!963 (toList!4196 (extractMap!1150 (t!357539 (toList!4195 lm!1477)))))))

(assert (=> d!1373743 (= (getKeysList!411 (toList!4196 (extractMap!1150 (t!357539 (toList!4195 lm!1477))))) lt!1671899)))

(declare-fun b!4486857 () Bool)

(assert (=> b!4486857 (= e!2794537 Nil!50463)))

(declare-fun b!4486858 () Bool)

(declare-fun e!2794539 () Unit!90134)

(declare-fun Unit!90238 () Unit!90134)

(assert (=> b!4486858 (= e!2794539 Unit!90238)))

(declare-fun b!4486859 () Bool)

(declare-fun e!2794538 () Unit!90134)

(declare-fun Unit!90239 () Unit!90134)

(assert (=> b!4486859 (= e!2794538 Unit!90239)))

(assert (=> b!4486860 (= e!2794540 (= (content!8197 lt!1671899) (content!8197 (map!11072 (toList!4196 (extractMap!1150 (t!357539 (toList!4195 lm!1477)))) lambda!166617))))))

(declare-fun b!4486861 () Bool)

(assert (=> b!4486861 false))

(declare-fun Unit!90240 () Unit!90134)

(assert (=> b!4486861 (= e!2794538 Unit!90240)))

(declare-fun res!1863913 () Bool)

(assert (=> b!4486862 (=> (not res!1863913) (not e!2794540))))

(assert (=> b!4486862 (= res!1863913 (forall!10114 lt!1671899 lambda!166616))))

(assert (=> b!4486863 false))

(declare-fun lt!1671901 () Unit!90134)

(assert (=> b!4486863 (= lt!1671901 (forallContained!2373 (getKeysList!411 (t!357538 (toList!4196 (extractMap!1150 (t!357539 (toList!4195 lm!1477)))))) lambda!166614 (_1!28699 (h!56259 (toList!4196 (extractMap!1150 (t!357539 (toList!4195 lm!1477))))))))))

(declare-fun Unit!90241 () Unit!90134)

(assert (=> b!4486863 (= e!2794539 Unit!90241)))

(assert (=> b!4486864 (= e!2794537 (Cons!50463 (_1!28699 (h!56259 (toList!4196 (extractMap!1150 (t!357539 (toList!4195 lm!1477)))))) (getKeysList!411 (t!357538 (toList!4196 (extractMap!1150 (t!357539 (toList!4195 lm!1477))))))))))

(declare-fun c!764204 () Bool)

(assert (=> b!4486864 (= c!764204 (containsKey!1610 (t!357538 (toList!4196 (extractMap!1150 (t!357539 (toList!4195 lm!1477))))) (_1!28699 (h!56259 (toList!4196 (extractMap!1150 (t!357539 (toList!4195 lm!1477))))))))))

(declare-fun lt!1671897 () Unit!90134)

(assert (=> b!4486864 (= lt!1671897 e!2794538)))

(declare-fun c!764202 () Bool)

(assert (=> b!4486864 (= c!764202 (contains!13091 (getKeysList!411 (t!357538 (toList!4196 (extractMap!1150 (t!357539 (toList!4195 lm!1477)))))) (_1!28699 (h!56259 (toList!4196 (extractMap!1150 (t!357539 (toList!4195 lm!1477))))))))))

(declare-fun lt!1671900 () Unit!90134)

(assert (=> b!4486864 (= lt!1671900 e!2794539)))

(declare-fun lt!1671896 () List!50587)

(assert (=> b!4486864 (= lt!1671896 (getKeysList!411 (t!357538 (toList!4196 (extractMap!1150 (t!357539 (toList!4195 lm!1477)))))))))

(declare-fun lt!1671895 () Unit!90134)

(assert (=> b!4486864 (= lt!1671895 (lemmaForallContainsAddHeadPreserves!135 (t!357538 (toList!4196 (extractMap!1150 (t!357539 (toList!4195 lm!1477))))) lt!1671896 (h!56259 (toList!4196 (extractMap!1150 (t!357539 (toList!4195 lm!1477)))))))))

(assert (=> b!4486864 (forall!10114 lt!1671896 lambda!166615)))

(declare-fun lt!1671898 () Unit!90134)

(assert (=> b!4486864 (= lt!1671898 lt!1671895)))

(assert (= (and d!1373743 c!764203) b!4486864))

(assert (= (and d!1373743 (not c!764203)) b!4486857))

(assert (= (and b!4486864 c!764204) b!4486861))

(assert (= (and b!4486864 (not c!764204)) b!4486859))

(assert (= (and b!4486864 c!764202) b!4486863))

(assert (= (and b!4486864 (not c!764202)) b!4486858))

(assert (= (and d!1373743 res!1863911) b!4486856))

(assert (= (and b!4486856 res!1863912) b!4486862))

(assert (= (and b!4486862 res!1863913) b!4486860))

(declare-fun m!5208049 () Bool)

(assert (=> b!4486860 m!5208049))

(declare-fun m!5208051 () Bool)

(assert (=> b!4486860 m!5208051))

(assert (=> b!4486860 m!5208051))

(declare-fun m!5208053 () Bool)

(assert (=> b!4486860 m!5208053))

(declare-fun m!5208055 () Bool)

(assert (=> b!4486862 m!5208055))

(declare-fun m!5208057 () Bool)

(assert (=> b!4486856 m!5208057))

(assert (=> b!4486856 m!5207797))

(declare-fun m!5208059 () Bool)

(assert (=> d!1373743 m!5208059))

(assert (=> d!1373743 m!5207963))

(declare-fun m!5208061 () Bool)

(assert (=> b!4486864 m!5208061))

(declare-fun m!5208063 () Bool)

(assert (=> b!4486864 m!5208063))

(declare-fun m!5208065 () Bool)

(assert (=> b!4486864 m!5208065))

(assert (=> b!4486864 m!5208061))

(declare-fun m!5208067 () Bool)

(assert (=> b!4486864 m!5208067))

(declare-fun m!5208069 () Bool)

(assert (=> b!4486864 m!5208069))

(assert (=> b!4486863 m!5208061))

(assert (=> b!4486863 m!5208061))

(declare-fun m!5208071 () Bool)

(assert (=> b!4486863 m!5208071))

(assert (=> b!4486381 d!1373743))

(declare-fun d!1373745 () Bool)

(declare-fun c!764207 () Bool)

(assert (=> d!1373745 (= c!764207 ((_ is Nil!50461) (toList!4195 lm!1477)))))

(declare-fun e!2794543 () (InoxSet tuple2!50812))

(assert (=> d!1373745 (= (content!8195 (toList!4195 lm!1477)) e!2794543)))

(declare-fun b!4486869 () Bool)

(assert (=> b!4486869 (= e!2794543 ((as const (Array tuple2!50812 Bool)) false))))

(declare-fun b!4486870 () Bool)

(assert (=> b!4486870 (= e!2794543 ((_ map or) (store ((as const (Array tuple2!50812 Bool)) false) (h!56260 (toList!4195 lm!1477)) true) (content!8195 (t!357539 (toList!4195 lm!1477)))))))

(assert (= (and d!1373745 c!764207) b!4486869))

(assert (= (and d!1373745 (not c!764207)) b!4486870))

(declare-fun m!5208073 () Bool)

(assert (=> b!4486870 m!5208073))

(assert (=> b!4486870 m!5206931))

(assert (=> d!1373387 d!1373745))

(assert (=> b!4486236 d!1373733))

(assert (=> b!4486236 d!1373655))

(declare-fun bs!826391 () Bool)

(declare-fun b!4486872 () Bool)

(assert (= bs!826391 (and b!4486872 b!4486863)))

(declare-fun lambda!166618 () Int)

(assert (=> bs!826391 (= (= (toList!4196 (extractMap!1150 (toList!4195 lt!1671372))) (t!357538 (toList!4196 (extractMap!1150 (t!357539 (toList!4195 lm!1477)))))) (= lambda!166618 lambda!166614))))

(declare-fun bs!826392 () Bool)

(assert (= bs!826392 (and b!4486872 b!4486864)))

(assert (=> bs!826392 (= (= (toList!4196 (extractMap!1150 (toList!4195 lt!1671372))) (Cons!50460 (h!56259 (toList!4196 (extractMap!1150 (t!357539 (toList!4195 lm!1477))))) (t!357538 (toList!4196 (extractMap!1150 (t!357539 (toList!4195 lm!1477))))))) (= lambda!166618 lambda!166615))))

(declare-fun bs!826393 () Bool)

(assert (= bs!826393 (and b!4486872 b!4486828)))

(assert (=> bs!826393 (= (= (toList!4196 (extractMap!1150 (toList!4195 lt!1671372))) (t!357538 (toList!4196 (extractMap!1150 (toList!4195 lt!1671372))))) (= lambda!166618 lambda!166605))))

(declare-fun bs!826394 () Bool)

(assert (= bs!826394 (and b!4486872 b!4486730)))

(assert (=> bs!826394 (= (= (toList!4196 (extractMap!1150 (toList!4195 lt!1671372))) (toList!4196 (extractMap!1150 (t!357539 (toList!4195 lm!1477))))) (= lambda!166618 lambda!166588))))

(declare-fun bs!826395 () Bool)

(assert (= bs!826395 (and b!4486872 b!4486778)))

(assert (=> bs!826395 (= (= (toList!4196 (extractMap!1150 (toList!4195 lt!1671372))) (toList!4196 (extractMap!1150 (toList!4195 lm!1477)))) (= lambda!166618 lambda!166590))))

(declare-fun bs!826396 () Bool)

(assert (= bs!826396 (and b!4486872 b!4486829)))

(assert (=> bs!826396 (= (= (toList!4196 (extractMap!1150 (toList!4195 lt!1671372))) (Cons!50460 (h!56259 (toList!4196 (extractMap!1150 (toList!4195 lt!1671372)))) (t!357538 (toList!4196 (extractMap!1150 (toList!4195 lt!1671372)))))) (= lambda!166618 lambda!166606))))

(declare-fun bs!826397 () Bool)

(assert (= bs!826397 (and b!4486872 b!4486862)))

(assert (=> bs!826397 (= (= (toList!4196 (extractMap!1150 (toList!4195 lt!1671372))) (toList!4196 (extractMap!1150 (t!357539 (toList!4195 lm!1477))))) (= lambda!166618 lambda!166616))))

(declare-fun bs!826398 () Bool)

(assert (= bs!826398 (and b!4486872 b!4486827)))

(assert (=> bs!826398 (= lambda!166618 lambda!166607)))

(assert (=> b!4486872 true))

(declare-fun bs!826399 () Bool)

(declare-fun b!4486873 () Bool)

(assert (= bs!826399 (and b!4486873 b!4486731)))

(declare-fun lambda!166619 () Int)

(assert (=> bs!826399 (= lambda!166619 lambda!166589)))

(declare-fun bs!826400 () Bool)

(assert (= bs!826400 (and b!4486873 b!4486779)))

(assert (=> bs!826400 (= lambda!166619 lambda!166591)))

(declare-fun bs!826401 () Bool)

(assert (= bs!826401 (and b!4486873 b!4486825)))

(assert (=> bs!826401 (= lambda!166619 lambda!166608)))

(declare-fun bs!826402 () Bool)

(assert (= bs!826402 (and b!4486873 b!4486860)))

(assert (=> bs!826402 (= lambda!166619 lambda!166617)))

(declare-fun d!1373747 () Bool)

(declare-fun e!2794544 () Bool)

(assert (=> d!1373747 e!2794544))

(declare-fun res!1863916 () Bool)

(assert (=> d!1373747 (=> (not res!1863916) (not e!2794544))))

(declare-fun lt!1671902 () List!50587)

(assert (=> d!1373747 (= res!1863916 (noDuplicate!714 lt!1671902))))

(assert (=> d!1373747 (= lt!1671902 (getKeysList!411 (toList!4196 (extractMap!1150 (toList!4195 lt!1671372)))))))

(assert (=> d!1373747 (= (keys!17470 (extractMap!1150 (toList!4195 lt!1671372))) lt!1671902)))

(declare-fun b!4486871 () Bool)

(declare-fun res!1863915 () Bool)

(assert (=> b!4486871 (=> (not res!1863915) (not e!2794544))))

(assert (=> b!4486871 (= res!1863915 (= (length!284 lt!1671902) (length!285 (toList!4196 (extractMap!1150 (toList!4195 lt!1671372))))))))

(declare-fun res!1863914 () Bool)

(assert (=> b!4486872 (=> (not res!1863914) (not e!2794544))))

(assert (=> b!4486872 (= res!1863914 (forall!10114 lt!1671902 lambda!166618))))

(assert (=> b!4486873 (= e!2794544 (= (content!8197 lt!1671902) (content!8197 (map!11072 (toList!4196 (extractMap!1150 (toList!4195 lt!1671372))) lambda!166619))))))

(assert (= (and d!1373747 res!1863916) b!4486871))

(assert (= (and b!4486871 res!1863915) b!4486872))

(assert (= (and b!4486872 res!1863914) b!4486873))

(declare-fun m!5208075 () Bool)

(assert (=> d!1373747 m!5208075))

(assert (=> d!1373747 m!5207233))

(declare-fun m!5208077 () Bool)

(assert (=> b!4486871 m!5208077))

(assert (=> b!4486871 m!5207941))

(declare-fun m!5208079 () Bool)

(assert (=> b!4486872 m!5208079))

(declare-fun m!5208081 () Bool)

(assert (=> b!4486873 m!5208081))

(declare-fun m!5208083 () Bool)

(assert (=> b!4486873 m!5208083))

(assert (=> b!4486873 m!5208083))

(declare-fun m!5208085 () Bool)

(assert (=> b!4486873 m!5208085))

(assert (=> b!4486384 d!1373747))

(declare-fun d!1373749 () Bool)

(declare-fun res!1863917 () Bool)

(declare-fun e!2794545 () Bool)

(assert (=> d!1373749 (=> res!1863917 e!2794545)))

(assert (=> d!1373749 (= res!1863917 (not ((_ is Cons!50460) (t!357538 newBucket!178))))))

(assert (=> d!1373749 (= (noDuplicateKeys!1094 (t!357538 newBucket!178)) e!2794545)))

(declare-fun b!4486874 () Bool)

(declare-fun e!2794546 () Bool)

(assert (=> b!4486874 (= e!2794545 e!2794546)))

(declare-fun res!1863918 () Bool)

(assert (=> b!4486874 (=> (not res!1863918) (not e!2794546))))

(assert (=> b!4486874 (= res!1863918 (not (containsKey!1606 (t!357538 (t!357538 newBucket!178)) (_1!28699 (h!56259 (t!357538 newBucket!178))))))))

(declare-fun b!4486875 () Bool)

(assert (=> b!4486875 (= e!2794546 (noDuplicateKeys!1094 (t!357538 (t!357538 newBucket!178))))))

(assert (= (and d!1373749 (not res!1863917)) b!4486874))

(assert (= (and b!4486874 res!1863918) b!4486875))

(declare-fun m!5208087 () Bool)

(assert (=> b!4486874 m!5208087))

(declare-fun m!5208089 () Bool)

(assert (=> b!4486875 m!5208089))

(assert (=> b!4486203 d!1373749))

(assert (=> b!4486359 d!1373711))

(declare-fun d!1373751 () Bool)

(assert (=> d!1373751 (containsKey!1610 (toList!4196 (extractMap!1150 (toList!4195 lm!1477))) key!3287)))

(declare-fun lt!1671903 () Unit!90134)

(assert (=> d!1373751 (= lt!1671903 (choose!28883 (toList!4196 (extractMap!1150 (toList!4195 lm!1477))) key!3287))))

(assert (=> d!1373751 (invariantList!963 (toList!4196 (extractMap!1150 (toList!4195 lm!1477))))))

(assert (=> d!1373751 (= (lemmaInGetKeysListThenContainsKey!410 (toList!4196 (extractMap!1150 (toList!4195 lm!1477))) key!3287) lt!1671903)))

(declare-fun bs!826403 () Bool)

(assert (= bs!826403 d!1373751))

(assert (=> bs!826403 m!5207181))

(declare-fun m!5208091 () Bool)

(assert (=> bs!826403 m!5208091))

(declare-fun m!5208093 () Bool)

(assert (=> bs!826403 m!5208093))

(assert (=> b!4486359 d!1373751))

(declare-fun d!1373753 () Bool)

(declare-fun res!1863919 () Bool)

(declare-fun e!2794547 () Bool)

(assert (=> d!1373753 (=> res!1863919 e!2794547)))

(assert (=> d!1373753 (= res!1863919 ((_ is Nil!50461) (toList!4195 lm!1477)))))

(assert (=> d!1373753 (= (forall!10110 (toList!4195 lm!1477) lambda!166447) e!2794547)))

(declare-fun b!4486876 () Bool)

(declare-fun e!2794548 () Bool)

(assert (=> b!4486876 (= e!2794547 e!2794548)))

(declare-fun res!1863920 () Bool)

(assert (=> b!4486876 (=> (not res!1863920) (not e!2794548))))

(assert (=> b!4486876 (= res!1863920 (dynLambda!21067 lambda!166447 (h!56260 (toList!4195 lm!1477))))))

(declare-fun b!4486877 () Bool)

(assert (=> b!4486877 (= e!2794548 (forall!10110 (t!357539 (toList!4195 lm!1477)) lambda!166447))))

(assert (= (and d!1373753 (not res!1863919)) b!4486876))

(assert (= (and b!4486876 res!1863920) b!4486877))

(declare-fun b_lambda!150731 () Bool)

(assert (=> (not b_lambda!150731) (not b!4486876)))

(declare-fun m!5208095 () Bool)

(assert (=> b!4486876 m!5208095))

(declare-fun m!5208097 () Bool)

(assert (=> b!4486877 m!5208097))

(assert (=> d!1373339 d!1373753))

(declare-fun d!1373755 () Bool)

(declare-fun lt!1671904 () Bool)

(assert (=> d!1373755 (= lt!1671904 (select (content!8197 (keys!17470 (extractMap!1150 (toList!4195 lt!1671372)))) key!3287))))

(declare-fun e!2794549 () Bool)

(assert (=> d!1373755 (= lt!1671904 e!2794549)))

(declare-fun res!1863922 () Bool)

(assert (=> d!1373755 (=> (not res!1863922) (not e!2794549))))

(assert (=> d!1373755 (= res!1863922 ((_ is Cons!50463) (keys!17470 (extractMap!1150 (toList!4195 lt!1671372)))))))

(assert (=> d!1373755 (= (contains!13091 (keys!17470 (extractMap!1150 (toList!4195 lt!1671372))) key!3287) lt!1671904)))

(declare-fun b!4486878 () Bool)

(declare-fun e!2794550 () Bool)

(assert (=> b!4486878 (= e!2794549 e!2794550)))

(declare-fun res!1863921 () Bool)

(assert (=> b!4486878 (=> res!1863921 e!2794550)))

(assert (=> b!4486878 (= res!1863921 (= (h!56264 (keys!17470 (extractMap!1150 (toList!4195 lt!1671372)))) key!3287))))

(declare-fun b!4486879 () Bool)

(assert (=> b!4486879 (= e!2794550 (contains!13091 (t!357541 (keys!17470 (extractMap!1150 (toList!4195 lt!1671372)))) key!3287))))

(assert (= (and d!1373755 res!1863922) b!4486878))

(assert (= (and b!4486878 (not res!1863921)) b!4486879))

(assert (=> d!1373755 m!5207221))

(declare-fun m!5208099 () Bool)

(assert (=> d!1373755 m!5208099))

(declare-fun m!5208101 () Bool)

(assert (=> d!1373755 m!5208101))

(declare-fun m!5208103 () Bool)

(assert (=> b!4486879 m!5208103))

(assert (=> b!4486389 d!1373755))

(assert (=> b!4486389 d!1373747))

(declare-fun d!1373757 () Bool)

(assert (=> d!1373757 (dynLambda!21067 lambda!166433 lt!1671380)))

(assert (=> d!1373757 true))

(declare-fun _$7!1735 () Unit!90134)

(assert (=> d!1373757 (= (choose!28873 (toList!4195 lm!1477) lambda!166433 lt!1671380) _$7!1735)))

(declare-fun b_lambda!150733 () Bool)

(assert (=> (not b_lambda!150733) (not d!1373757)))

(declare-fun bs!826404 () Bool)

(assert (= bs!826404 d!1373757))

(assert (=> bs!826404 m!5207109))

(assert (=> d!1373367 d!1373757))

(assert (=> d!1373367 d!1373317))

(declare-fun lt!1671905 () Bool)

(declare-fun d!1373759 () Bool)

(assert (=> d!1373759 (= lt!1671905 (select (content!8195 (toList!4195 lm!1477)) (tuple2!50813 hash!344 lt!1671373)))))

(declare-fun e!2794552 () Bool)

(assert (=> d!1373759 (= lt!1671905 e!2794552)))

(declare-fun res!1863924 () Bool)

(assert (=> d!1373759 (=> (not res!1863924) (not e!2794552))))

(assert (=> d!1373759 (= res!1863924 ((_ is Cons!50461) (toList!4195 lm!1477)))))

(assert (=> d!1373759 (= (contains!13089 (toList!4195 lm!1477) (tuple2!50813 hash!344 lt!1671373)) lt!1671905)))

(declare-fun b!4486880 () Bool)

(declare-fun e!2794551 () Bool)

(assert (=> b!4486880 (= e!2794552 e!2794551)))

(declare-fun res!1863923 () Bool)

(assert (=> b!4486880 (=> res!1863923 e!2794551)))

(assert (=> b!4486880 (= res!1863923 (= (h!56260 (toList!4195 lm!1477)) (tuple2!50813 hash!344 lt!1671373)))))

(declare-fun b!4486881 () Bool)

(assert (=> b!4486881 (= e!2794551 (contains!13089 (t!357539 (toList!4195 lm!1477)) (tuple2!50813 hash!344 lt!1671373)))))

(assert (= (and d!1373759 res!1863924) b!4486880))

(assert (= (and b!4486880 (not res!1863923)) b!4486881))

(assert (=> d!1373759 m!5207139))

(declare-fun m!5208105 () Bool)

(assert (=> d!1373759 m!5208105))

(declare-fun m!5208107 () Bool)

(assert (=> b!4486881 m!5208107))

(assert (=> d!1373359 d!1373759))

(declare-fun d!1373761 () Bool)

(assert (=> d!1373761 (contains!13089 (toList!4195 lm!1477) (tuple2!50813 hash!344 lt!1671373))))

(assert (=> d!1373761 true))

(declare-fun _$14!1042 () Unit!90134)

(assert (=> d!1373761 (= (choose!28871 (toList!4195 lm!1477) hash!344 lt!1671373) _$14!1042)))

(declare-fun bs!826405 () Bool)

(assert (= bs!826405 d!1373761))

(assert (=> bs!826405 m!5207087))

(assert (=> d!1373359 d!1373761))

(assert (=> d!1373359 d!1373659))

(declare-fun d!1373763 () Bool)

(assert (=> d!1373763 (= (isDefined!8292 (getValueByKey!985 (toList!4196 (extractMap!1150 (toList!4195 lm!1477))) key!3287)) (not (isEmpty!28549 (getValueByKey!985 (toList!4196 (extractMap!1150 (toList!4195 lm!1477))) key!3287))))))

(declare-fun bs!826406 () Bool)

(assert (= bs!826406 d!1373763))

(assert (=> bs!826406 m!5207173))

(declare-fun m!5208109 () Bool)

(assert (=> bs!826406 m!5208109))

(assert (=> b!4486361 d!1373763))

(declare-fun b!4486885 () Bool)

(declare-fun e!2794554 () Option!11005)

(assert (=> b!4486885 (= e!2794554 None!11004)))

(declare-fun b!4486882 () Bool)

(declare-fun e!2794553 () Option!11005)

(assert (=> b!4486882 (= e!2794553 (Some!11004 (_2!28699 (h!56259 (toList!4196 (extractMap!1150 (toList!4195 lm!1477)))))))))

(declare-fun b!4486884 () Bool)

(assert (=> b!4486884 (= e!2794554 (getValueByKey!985 (t!357538 (toList!4196 (extractMap!1150 (toList!4195 lm!1477)))) key!3287))))

(declare-fun b!4486883 () Bool)

(assert (=> b!4486883 (= e!2794553 e!2794554)))

(declare-fun c!764209 () Bool)

(assert (=> b!4486883 (= c!764209 (and ((_ is Cons!50460) (toList!4196 (extractMap!1150 (toList!4195 lm!1477)))) (not (= (_1!28699 (h!56259 (toList!4196 (extractMap!1150 (toList!4195 lm!1477))))) key!3287))))))

(declare-fun d!1373765 () Bool)

(declare-fun c!764208 () Bool)

(assert (=> d!1373765 (= c!764208 (and ((_ is Cons!50460) (toList!4196 (extractMap!1150 (toList!4195 lm!1477)))) (= (_1!28699 (h!56259 (toList!4196 (extractMap!1150 (toList!4195 lm!1477))))) key!3287)))))

(assert (=> d!1373765 (= (getValueByKey!985 (toList!4196 (extractMap!1150 (toList!4195 lm!1477))) key!3287) e!2794553)))

(assert (= (and d!1373765 c!764208) b!4486882))

(assert (= (and d!1373765 (not c!764208)) b!4486883))

(assert (= (and b!4486883 c!764209) b!4486884))

(assert (= (and b!4486883 (not c!764209)) b!4486885))

(declare-fun m!5208111 () Bool)

(assert (=> b!4486884 m!5208111))

(assert (=> b!4486361 d!1373765))

(declare-fun d!1373767 () Bool)

(declare-fun lt!1671906 () Bool)

(assert (=> d!1373767 (= lt!1671906 (select (content!8197 e!2794201) key!3287))))

(declare-fun e!2794555 () Bool)

(assert (=> d!1373767 (= lt!1671906 e!2794555)))

(declare-fun res!1863926 () Bool)

(assert (=> d!1373767 (=> (not res!1863926) (not e!2794555))))

(assert (=> d!1373767 (= res!1863926 ((_ is Cons!50463) e!2794201))))

(assert (=> d!1373767 (= (contains!13091 e!2794201 key!3287) lt!1671906)))

(declare-fun b!4486886 () Bool)

(declare-fun e!2794556 () Bool)

(assert (=> b!4486886 (= e!2794555 e!2794556)))

(declare-fun res!1863925 () Bool)

(assert (=> b!4486886 (=> res!1863925 e!2794556)))

(assert (=> b!4486886 (= res!1863925 (= (h!56264 e!2794201) key!3287))))

(declare-fun b!4486887 () Bool)

(assert (=> b!4486887 (= e!2794556 (contains!13091 (t!357541 e!2794201) key!3287))))

(assert (= (and d!1373767 res!1863926) b!4486886))

(assert (= (and b!4486886 (not res!1863925)) b!4486887))

(declare-fun m!5208113 () Bool)

(assert (=> d!1373767 m!5208113))

(declare-fun m!5208115 () Bool)

(assert (=> d!1373767 m!5208115))

(declare-fun m!5208117 () Bool)

(assert (=> b!4486887 m!5208117))

(assert (=> bm!312214 d!1373767))

(declare-fun d!1373769 () Bool)

(declare-fun res!1863927 () Bool)

(declare-fun e!2794557 () Bool)

(assert (=> d!1373769 (=> res!1863927 e!2794557)))

(assert (=> d!1373769 (= res!1863927 (not ((_ is Cons!50460) (_2!28700 (h!56260 (toList!4195 lm!1477))))))))

(assert (=> d!1373769 (= (noDuplicateKeys!1094 (_2!28700 (h!56260 (toList!4195 lm!1477)))) e!2794557)))

(declare-fun b!4486888 () Bool)

(declare-fun e!2794558 () Bool)

(assert (=> b!4486888 (= e!2794557 e!2794558)))

(declare-fun res!1863928 () Bool)

(assert (=> b!4486888 (=> (not res!1863928) (not e!2794558))))

(assert (=> b!4486888 (= res!1863928 (not (containsKey!1606 (t!357538 (_2!28700 (h!56260 (toList!4195 lm!1477)))) (_1!28699 (h!56259 (_2!28700 (h!56260 (toList!4195 lm!1477))))))))))

(declare-fun b!4486889 () Bool)

(assert (=> b!4486889 (= e!2794558 (noDuplicateKeys!1094 (t!357538 (_2!28700 (h!56260 (toList!4195 lm!1477))))))))

(assert (= (and d!1373769 (not res!1863927)) b!4486888))

(assert (= (and b!4486888 res!1863928) b!4486889))

(declare-fun m!5208119 () Bool)

(assert (=> b!4486888 m!5208119))

(declare-fun m!5208121 () Bool)

(assert (=> b!4486889 m!5208121))

(assert (=> bs!826096 d!1373769))

(declare-fun d!1373771 () Bool)

(assert (=> d!1373771 (= (tail!7617 (toList!4195 lm!1477)) (t!357539 (toList!4195 lm!1477)))))

(assert (=> d!1373337 d!1373771))

(assert (=> b!4486391 d!1373755))

(assert (=> b!4486391 d!1373747))

(assert (=> d!1373411 d!1373409))

(assert (=> d!1373411 d!1373413))

(declare-fun d!1373773 () Bool)

(assert (=> d!1373773 (contains!13088 (extractMap!1150 (toList!4195 lt!1671372)) key!3287)))

(assert (=> d!1373773 true))

(declare-fun _$34!580 () Unit!90134)

(assert (=> d!1373773 (= (choose!28874 lt!1671372 key!3287 hashF!1107) _$34!580)))

(declare-fun bs!826407 () Bool)

(assert (= bs!826407 d!1373773))

(assert (=> bs!826407 m!5206869))

(assert (=> bs!826407 m!5206869))

(assert (=> bs!826407 m!5206877))

(assert (=> d!1373411 d!1373773))

(declare-fun d!1373775 () Bool)

(declare-fun res!1863929 () Bool)

(declare-fun e!2794559 () Bool)

(assert (=> d!1373775 (=> res!1863929 e!2794559)))

(assert (=> d!1373775 (= res!1863929 ((_ is Nil!50461) (toList!4195 lt!1671372)))))

(assert (=> d!1373775 (= (forall!10110 (toList!4195 lt!1671372) lambda!166469) e!2794559)))

(declare-fun b!4486890 () Bool)

(declare-fun e!2794560 () Bool)

(assert (=> b!4486890 (= e!2794559 e!2794560)))

(declare-fun res!1863930 () Bool)

(assert (=> b!4486890 (=> (not res!1863930) (not e!2794560))))

(assert (=> b!4486890 (= res!1863930 (dynLambda!21067 lambda!166469 (h!56260 (toList!4195 lt!1671372))))))

(declare-fun b!4486891 () Bool)

(assert (=> b!4486891 (= e!2794560 (forall!10110 (t!357539 (toList!4195 lt!1671372)) lambda!166469))))

(assert (= (and d!1373775 (not res!1863929)) b!4486890))

(assert (= (and b!4486890 res!1863930) b!4486891))

(declare-fun b_lambda!150735 () Bool)

(assert (=> (not b_lambda!150735) (not b!4486890)))

(declare-fun m!5208123 () Bool)

(assert (=> b!4486890 m!5208123))

(declare-fun m!5208125 () Bool)

(assert (=> b!4486891 m!5208125))

(assert (=> d!1373411 d!1373775))

(declare-fun d!1373777 () Bool)

(declare-fun res!1863931 () Bool)

(declare-fun e!2794561 () Bool)

(assert (=> d!1373777 (=> res!1863931 e!2794561)))

(assert (=> d!1373777 (= res!1863931 (and ((_ is Cons!50461) (toList!4195 lt!1671372)) (= (_1!28700 (h!56260 (toList!4195 lt!1671372))) hash!344)))))

(assert (=> d!1373777 (= (containsKey!1609 (toList!4195 lt!1671372) hash!344) e!2794561)))

(declare-fun b!4486892 () Bool)

(declare-fun e!2794562 () Bool)

(assert (=> b!4486892 (= e!2794561 e!2794562)))

(declare-fun res!1863932 () Bool)

(assert (=> b!4486892 (=> (not res!1863932) (not e!2794562))))

(assert (=> b!4486892 (= res!1863932 (and (or (not ((_ is Cons!50461) (toList!4195 lt!1671372))) (bvsle (_1!28700 (h!56260 (toList!4195 lt!1671372))) hash!344)) ((_ is Cons!50461) (toList!4195 lt!1671372)) (bvslt (_1!28700 (h!56260 (toList!4195 lt!1671372))) hash!344)))))

(declare-fun b!4486893 () Bool)

(assert (=> b!4486893 (= e!2794562 (containsKey!1609 (t!357539 (toList!4195 lt!1671372)) hash!344))))

(assert (= (and d!1373777 (not res!1863931)) b!4486892))

(assert (= (and b!4486892 res!1863932) b!4486893))

(declare-fun m!5208127 () Bool)

(assert (=> b!4486893 m!5208127))

(assert (=> d!1373325 d!1373777))

(declare-fun d!1373779 () Bool)

(declare-fun c!764210 () Bool)

(assert (=> d!1373779 (= c!764210 ((_ is Nil!50461) (t!357539 (toList!4195 lm!1477))))))

(declare-fun e!2794563 () (InoxSet tuple2!50812))

(assert (=> d!1373779 (= (content!8195 (t!357539 (toList!4195 lm!1477))) e!2794563)))

(declare-fun b!4486894 () Bool)

(assert (=> b!4486894 (= e!2794563 ((as const (Array tuple2!50812 Bool)) false))))

(declare-fun b!4486895 () Bool)

(assert (=> b!4486895 (= e!2794563 ((_ map or) (store ((as const (Array tuple2!50812 Bool)) false) (h!56260 (t!357539 (toList!4195 lm!1477))) true) (content!8195 (t!357539 (t!357539 (toList!4195 lm!1477))))))))

(assert (= (and d!1373779 c!764210) b!4486894))

(assert (= (and d!1373779 (not c!764210)) b!4486895))

(declare-fun m!5208129 () Bool)

(assert (=> b!4486895 m!5208129))

(assert (=> b!4486895 m!5207971))

(assert (=> d!1373315 d!1373779))

(assert (=> b!4486373 d!1373651))

(declare-fun d!1373781 () Bool)

(assert (=> d!1373781 (isDefined!8292 (getValueByKey!985 (toList!4196 (extractMap!1150 (toList!4195 lm!1477))) key!3287))))

(declare-fun lt!1671907 () Unit!90134)

(assert (=> d!1373781 (= lt!1671907 (choose!28885 (toList!4196 (extractMap!1150 (toList!4195 lm!1477))) key!3287))))

(assert (=> d!1373781 (invariantList!963 (toList!4196 (extractMap!1150 (toList!4195 lm!1477))))))

(assert (=> d!1373781 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!889 (toList!4196 (extractMap!1150 (toList!4195 lm!1477))) key!3287) lt!1671907)))

(declare-fun bs!826408 () Bool)

(assert (= bs!826408 d!1373781))

(assert (=> bs!826408 m!5207173))

(assert (=> bs!826408 m!5207173))

(assert (=> bs!826408 m!5207175))

(declare-fun m!5208131 () Bool)

(assert (=> bs!826408 m!5208131))

(assert (=> bs!826408 m!5208093))

(assert (=> b!4486364 d!1373781))

(assert (=> b!4486364 d!1373763))

(assert (=> b!4486364 d!1373765))

(declare-fun d!1373783 () Bool)

(assert (=> d!1373783 (contains!13091 (getKeysList!411 (toList!4196 (extractMap!1150 (toList!4195 lm!1477)))) key!3287)))

(declare-fun lt!1671908 () Unit!90134)

(assert (=> d!1373783 (= lt!1671908 (choose!28886 (toList!4196 (extractMap!1150 (toList!4195 lm!1477))) key!3287))))

(assert (=> d!1373783 (invariantList!963 (toList!4196 (extractMap!1150 (toList!4195 lm!1477))))))

(assert (=> d!1373783 (= (lemmaInListThenGetKeysListContains!407 (toList!4196 (extractMap!1150 (toList!4195 lm!1477))) key!3287) lt!1671908)))

(declare-fun bs!826409 () Bool)

(assert (= bs!826409 d!1373783))

(assert (=> bs!826409 m!5207179))

(assert (=> bs!826409 m!5207179))

(declare-fun m!5208133 () Bool)

(assert (=> bs!826409 m!5208133))

(declare-fun m!5208135 () Bool)

(assert (=> bs!826409 m!5208135))

(assert (=> bs!826409 m!5208093))

(assert (=> b!4486364 d!1373783))

(declare-fun d!1373785 () Bool)

(declare-fun res!1863933 () Bool)

(declare-fun e!2794564 () Bool)

(assert (=> d!1373785 (=> res!1863933 e!2794564)))

(assert (=> d!1373785 (= res!1863933 ((_ is Nil!50461) (t!357539 (toList!4195 lm!1477))))))

(assert (=> d!1373785 (= (forall!10110 (t!357539 (toList!4195 lm!1477)) lambda!166433) e!2794564)))

(declare-fun b!4486896 () Bool)

(declare-fun e!2794565 () Bool)

(assert (=> b!4486896 (= e!2794564 e!2794565)))

(declare-fun res!1863934 () Bool)

(assert (=> b!4486896 (=> (not res!1863934) (not e!2794565))))

(assert (=> b!4486896 (= res!1863934 (dynLambda!21067 lambda!166433 (h!56260 (t!357539 (toList!4195 lm!1477)))))))

(declare-fun b!4486897 () Bool)

(assert (=> b!4486897 (= e!2794565 (forall!10110 (t!357539 (t!357539 (toList!4195 lm!1477))) lambda!166433))))

(assert (= (and d!1373785 (not res!1863933)) b!4486896))

(assert (= (and b!4486896 res!1863934) b!4486897))

(declare-fun b_lambda!150737 () Bool)

(assert (=> (not b_lambda!150737) (not b!4486896)))

(declare-fun m!5208137 () Bool)

(assert (=> b!4486896 m!5208137))

(declare-fun m!5208139 () Bool)

(assert (=> b!4486897 m!5208139))

(assert (=> b!4486193 d!1373785))

(declare-fun bs!826410 () Bool)

(declare-fun b!4486905 () Bool)

(assert (= bs!826410 (and b!4486905 b!4486863)))

(declare-fun lambda!166620 () Int)

(assert (=> bs!826410 (= (= (t!357538 (toList!4196 (extractMap!1150 (toList!4195 lm!1477)))) (t!357538 (toList!4196 (extractMap!1150 (t!357539 (toList!4195 lm!1477)))))) (= lambda!166620 lambda!166614))))

(declare-fun bs!826411 () Bool)

(assert (= bs!826411 (and b!4486905 b!4486864)))

(assert (=> bs!826411 (= (= (t!357538 (toList!4196 (extractMap!1150 (toList!4195 lm!1477)))) (Cons!50460 (h!56259 (toList!4196 (extractMap!1150 (t!357539 (toList!4195 lm!1477))))) (t!357538 (toList!4196 (extractMap!1150 (t!357539 (toList!4195 lm!1477))))))) (= lambda!166620 lambda!166615))))

(declare-fun bs!826412 () Bool)

(assert (= bs!826412 (and b!4486905 b!4486828)))

(assert (=> bs!826412 (= (= (t!357538 (toList!4196 (extractMap!1150 (toList!4195 lm!1477)))) (t!357538 (toList!4196 (extractMap!1150 (toList!4195 lt!1671372))))) (= lambda!166620 lambda!166605))))

(declare-fun bs!826413 () Bool)

(assert (= bs!826413 (and b!4486905 b!4486872)))

(assert (=> bs!826413 (= (= (t!357538 (toList!4196 (extractMap!1150 (toList!4195 lm!1477)))) (toList!4196 (extractMap!1150 (toList!4195 lt!1671372)))) (= lambda!166620 lambda!166618))))

(declare-fun bs!826414 () Bool)

(assert (= bs!826414 (and b!4486905 b!4486730)))

(assert (=> bs!826414 (= (= (t!357538 (toList!4196 (extractMap!1150 (toList!4195 lm!1477)))) (toList!4196 (extractMap!1150 (t!357539 (toList!4195 lm!1477))))) (= lambda!166620 lambda!166588))))

(declare-fun bs!826415 () Bool)

(assert (= bs!826415 (and b!4486905 b!4486778)))

(assert (=> bs!826415 (= (= (t!357538 (toList!4196 (extractMap!1150 (toList!4195 lm!1477)))) (toList!4196 (extractMap!1150 (toList!4195 lm!1477)))) (= lambda!166620 lambda!166590))))

(declare-fun bs!826416 () Bool)

(assert (= bs!826416 (and b!4486905 b!4486829)))

(assert (=> bs!826416 (= (= (t!357538 (toList!4196 (extractMap!1150 (toList!4195 lm!1477)))) (Cons!50460 (h!56259 (toList!4196 (extractMap!1150 (toList!4195 lt!1671372)))) (t!357538 (toList!4196 (extractMap!1150 (toList!4195 lt!1671372)))))) (= lambda!166620 lambda!166606))))

(declare-fun bs!826417 () Bool)

(assert (= bs!826417 (and b!4486905 b!4486862)))

(assert (=> bs!826417 (= (= (t!357538 (toList!4196 (extractMap!1150 (toList!4195 lm!1477)))) (toList!4196 (extractMap!1150 (t!357539 (toList!4195 lm!1477))))) (= lambda!166620 lambda!166616))))

(declare-fun bs!826418 () Bool)

(assert (= bs!826418 (and b!4486905 b!4486827)))

(assert (=> bs!826418 (= (= (t!357538 (toList!4196 (extractMap!1150 (toList!4195 lm!1477)))) (toList!4196 (extractMap!1150 (toList!4195 lt!1671372)))) (= lambda!166620 lambda!166607))))

(assert (=> b!4486905 true))

(declare-fun bs!826419 () Bool)

(declare-fun b!4486906 () Bool)

(assert (= bs!826419 (and b!4486906 b!4486863)))

(declare-fun lambda!166621 () Int)

(assert (=> bs!826419 (= (= (Cons!50460 (h!56259 (toList!4196 (extractMap!1150 (toList!4195 lm!1477)))) (t!357538 (toList!4196 (extractMap!1150 (toList!4195 lm!1477))))) (t!357538 (toList!4196 (extractMap!1150 (t!357539 (toList!4195 lm!1477)))))) (= lambda!166621 lambda!166614))))

(declare-fun bs!826420 () Bool)

(assert (= bs!826420 (and b!4486906 b!4486864)))

(assert (=> bs!826420 (= (= (Cons!50460 (h!56259 (toList!4196 (extractMap!1150 (toList!4195 lm!1477)))) (t!357538 (toList!4196 (extractMap!1150 (toList!4195 lm!1477))))) (Cons!50460 (h!56259 (toList!4196 (extractMap!1150 (t!357539 (toList!4195 lm!1477))))) (t!357538 (toList!4196 (extractMap!1150 (t!357539 (toList!4195 lm!1477))))))) (= lambda!166621 lambda!166615))))

(declare-fun bs!826421 () Bool)

(assert (= bs!826421 (and b!4486906 b!4486828)))

(assert (=> bs!826421 (= (= (Cons!50460 (h!56259 (toList!4196 (extractMap!1150 (toList!4195 lm!1477)))) (t!357538 (toList!4196 (extractMap!1150 (toList!4195 lm!1477))))) (t!357538 (toList!4196 (extractMap!1150 (toList!4195 lt!1671372))))) (= lambda!166621 lambda!166605))))

(declare-fun bs!826422 () Bool)

(assert (= bs!826422 (and b!4486906 b!4486730)))

(assert (=> bs!826422 (= (= (Cons!50460 (h!56259 (toList!4196 (extractMap!1150 (toList!4195 lm!1477)))) (t!357538 (toList!4196 (extractMap!1150 (toList!4195 lm!1477))))) (toList!4196 (extractMap!1150 (t!357539 (toList!4195 lm!1477))))) (= lambda!166621 lambda!166588))))

(declare-fun bs!826423 () Bool)

(assert (= bs!826423 (and b!4486906 b!4486778)))

(assert (=> bs!826423 (= (= (Cons!50460 (h!56259 (toList!4196 (extractMap!1150 (toList!4195 lm!1477)))) (t!357538 (toList!4196 (extractMap!1150 (toList!4195 lm!1477))))) (toList!4196 (extractMap!1150 (toList!4195 lm!1477)))) (= lambda!166621 lambda!166590))))

(declare-fun bs!826424 () Bool)

(assert (= bs!826424 (and b!4486906 b!4486829)))

(assert (=> bs!826424 (= (= (Cons!50460 (h!56259 (toList!4196 (extractMap!1150 (toList!4195 lm!1477)))) (t!357538 (toList!4196 (extractMap!1150 (toList!4195 lm!1477))))) (Cons!50460 (h!56259 (toList!4196 (extractMap!1150 (toList!4195 lt!1671372)))) (t!357538 (toList!4196 (extractMap!1150 (toList!4195 lt!1671372)))))) (= lambda!166621 lambda!166606))))

(declare-fun bs!826425 () Bool)

(assert (= bs!826425 (and b!4486906 b!4486905)))

(assert (=> bs!826425 (= (= (Cons!50460 (h!56259 (toList!4196 (extractMap!1150 (toList!4195 lm!1477)))) (t!357538 (toList!4196 (extractMap!1150 (toList!4195 lm!1477))))) (t!357538 (toList!4196 (extractMap!1150 (toList!4195 lm!1477))))) (= lambda!166621 lambda!166620))))

(declare-fun bs!826426 () Bool)

(assert (= bs!826426 (and b!4486906 b!4486872)))

(assert (=> bs!826426 (= (= (Cons!50460 (h!56259 (toList!4196 (extractMap!1150 (toList!4195 lm!1477)))) (t!357538 (toList!4196 (extractMap!1150 (toList!4195 lm!1477))))) (toList!4196 (extractMap!1150 (toList!4195 lt!1671372)))) (= lambda!166621 lambda!166618))))

(declare-fun bs!826427 () Bool)

(assert (= bs!826427 (and b!4486906 b!4486862)))

(assert (=> bs!826427 (= (= (Cons!50460 (h!56259 (toList!4196 (extractMap!1150 (toList!4195 lm!1477)))) (t!357538 (toList!4196 (extractMap!1150 (toList!4195 lm!1477))))) (toList!4196 (extractMap!1150 (t!357539 (toList!4195 lm!1477))))) (= lambda!166621 lambda!166616))))

(declare-fun bs!826428 () Bool)

(assert (= bs!826428 (and b!4486906 b!4486827)))

(assert (=> bs!826428 (= (= (Cons!50460 (h!56259 (toList!4196 (extractMap!1150 (toList!4195 lm!1477)))) (t!357538 (toList!4196 (extractMap!1150 (toList!4195 lm!1477))))) (toList!4196 (extractMap!1150 (toList!4195 lt!1671372)))) (= lambda!166621 lambda!166607))))

(assert (=> b!4486906 true))

(declare-fun bs!826429 () Bool)

(declare-fun b!4486904 () Bool)

(assert (= bs!826429 (and b!4486904 b!4486863)))

(declare-fun lambda!166622 () Int)

(assert (=> bs!826429 (= (= (toList!4196 (extractMap!1150 (toList!4195 lm!1477))) (t!357538 (toList!4196 (extractMap!1150 (t!357539 (toList!4195 lm!1477)))))) (= lambda!166622 lambda!166614))))

(declare-fun bs!826430 () Bool)

(assert (= bs!826430 (and b!4486904 b!4486864)))

(assert (=> bs!826430 (= (= (toList!4196 (extractMap!1150 (toList!4195 lm!1477))) (Cons!50460 (h!56259 (toList!4196 (extractMap!1150 (t!357539 (toList!4195 lm!1477))))) (t!357538 (toList!4196 (extractMap!1150 (t!357539 (toList!4195 lm!1477))))))) (= lambda!166622 lambda!166615))))

(declare-fun bs!826431 () Bool)

(assert (= bs!826431 (and b!4486904 b!4486828)))

(assert (=> bs!826431 (= (= (toList!4196 (extractMap!1150 (toList!4195 lm!1477))) (t!357538 (toList!4196 (extractMap!1150 (toList!4195 lt!1671372))))) (= lambda!166622 lambda!166605))))

(declare-fun bs!826432 () Bool)

(assert (= bs!826432 (and b!4486904 b!4486730)))

(assert (=> bs!826432 (= (= (toList!4196 (extractMap!1150 (toList!4195 lm!1477))) (toList!4196 (extractMap!1150 (t!357539 (toList!4195 lm!1477))))) (= lambda!166622 lambda!166588))))

(declare-fun bs!826433 () Bool)

(assert (= bs!826433 (and b!4486904 b!4486778)))

(assert (=> bs!826433 (= lambda!166622 lambda!166590)))

(declare-fun bs!826434 () Bool)

(assert (= bs!826434 (and b!4486904 b!4486829)))

(assert (=> bs!826434 (= (= (toList!4196 (extractMap!1150 (toList!4195 lm!1477))) (Cons!50460 (h!56259 (toList!4196 (extractMap!1150 (toList!4195 lt!1671372)))) (t!357538 (toList!4196 (extractMap!1150 (toList!4195 lt!1671372)))))) (= lambda!166622 lambda!166606))))

(declare-fun bs!826435 () Bool)

(assert (= bs!826435 (and b!4486904 b!4486905)))

(assert (=> bs!826435 (= (= (toList!4196 (extractMap!1150 (toList!4195 lm!1477))) (t!357538 (toList!4196 (extractMap!1150 (toList!4195 lm!1477))))) (= lambda!166622 lambda!166620))))

(declare-fun bs!826436 () Bool)

(assert (= bs!826436 (and b!4486904 b!4486872)))

(assert (=> bs!826436 (= (= (toList!4196 (extractMap!1150 (toList!4195 lm!1477))) (toList!4196 (extractMap!1150 (toList!4195 lt!1671372)))) (= lambda!166622 lambda!166618))))

(declare-fun bs!826437 () Bool)

(assert (= bs!826437 (and b!4486904 b!4486906)))

(assert (=> bs!826437 (= (= (toList!4196 (extractMap!1150 (toList!4195 lm!1477))) (Cons!50460 (h!56259 (toList!4196 (extractMap!1150 (toList!4195 lm!1477)))) (t!357538 (toList!4196 (extractMap!1150 (toList!4195 lm!1477)))))) (= lambda!166622 lambda!166621))))

(declare-fun bs!826438 () Bool)

(assert (= bs!826438 (and b!4486904 b!4486862)))

(assert (=> bs!826438 (= (= (toList!4196 (extractMap!1150 (toList!4195 lm!1477))) (toList!4196 (extractMap!1150 (t!357539 (toList!4195 lm!1477))))) (= lambda!166622 lambda!166616))))

(declare-fun bs!826439 () Bool)

(assert (= bs!826439 (and b!4486904 b!4486827)))

(assert (=> bs!826439 (= (= (toList!4196 (extractMap!1150 (toList!4195 lm!1477))) (toList!4196 (extractMap!1150 (toList!4195 lt!1671372)))) (= lambda!166622 lambda!166607))))

(assert (=> b!4486904 true))

(declare-fun bs!826440 () Bool)

(declare-fun b!4486902 () Bool)

(assert (= bs!826440 (and b!4486902 b!4486731)))

(declare-fun lambda!166623 () Int)

(assert (=> bs!826440 (= lambda!166623 lambda!166589)))

(declare-fun bs!826441 () Bool)

(assert (= bs!826441 (and b!4486902 b!4486779)))

(assert (=> bs!826441 (= lambda!166623 lambda!166591)))

(declare-fun bs!826442 () Bool)

(assert (= bs!826442 (and b!4486902 b!4486825)))

(assert (=> bs!826442 (= lambda!166623 lambda!166608)))

(declare-fun bs!826443 () Bool)

(assert (= bs!826443 (and b!4486902 b!4486860)))

(assert (=> bs!826443 (= lambda!166623 lambda!166617)))

(declare-fun bs!826444 () Bool)

(assert (= bs!826444 (and b!4486902 b!4486873)))

(assert (=> bs!826444 (= lambda!166623 lambda!166619)))

(declare-fun b!4486898 () Bool)

(declare-fun res!1863936 () Bool)

(declare-fun e!2794569 () Bool)

(assert (=> b!4486898 (=> (not res!1863936) (not e!2794569))))

(declare-fun lt!1671913 () List!50587)

(assert (=> b!4486898 (= res!1863936 (= (length!284 lt!1671913) (length!285 (toList!4196 (extractMap!1150 (toList!4195 lm!1477))))))))

(declare-fun d!1373787 () Bool)

(assert (=> d!1373787 e!2794569))

(declare-fun res!1863935 () Bool)

(assert (=> d!1373787 (=> (not res!1863935) (not e!2794569))))

(assert (=> d!1373787 (= res!1863935 (noDuplicate!714 lt!1671913))))

(declare-fun e!2794566 () List!50587)

(assert (=> d!1373787 (= lt!1671913 e!2794566)))

(declare-fun c!764212 () Bool)

(assert (=> d!1373787 (= c!764212 ((_ is Cons!50460) (toList!4196 (extractMap!1150 (toList!4195 lm!1477)))))))

(assert (=> d!1373787 (invariantList!963 (toList!4196 (extractMap!1150 (toList!4195 lm!1477))))))

(assert (=> d!1373787 (= (getKeysList!411 (toList!4196 (extractMap!1150 (toList!4195 lm!1477)))) lt!1671913)))

(declare-fun b!4486899 () Bool)

(assert (=> b!4486899 (= e!2794566 Nil!50463)))

(declare-fun b!4486900 () Bool)

(declare-fun e!2794568 () Unit!90134)

(declare-fun Unit!90242 () Unit!90134)

(assert (=> b!4486900 (= e!2794568 Unit!90242)))

(declare-fun b!4486901 () Bool)

(declare-fun e!2794567 () Unit!90134)

(declare-fun Unit!90243 () Unit!90134)

(assert (=> b!4486901 (= e!2794567 Unit!90243)))

(assert (=> b!4486902 (= e!2794569 (= (content!8197 lt!1671913) (content!8197 (map!11072 (toList!4196 (extractMap!1150 (toList!4195 lm!1477))) lambda!166623))))))

(declare-fun b!4486903 () Bool)

(assert (=> b!4486903 false))

(declare-fun Unit!90244 () Unit!90134)

(assert (=> b!4486903 (= e!2794567 Unit!90244)))

(declare-fun res!1863937 () Bool)

(assert (=> b!4486904 (=> (not res!1863937) (not e!2794569))))

(assert (=> b!4486904 (= res!1863937 (forall!10114 lt!1671913 lambda!166622))))

(assert (=> b!4486905 false))

(declare-fun lt!1671915 () Unit!90134)

(assert (=> b!4486905 (= lt!1671915 (forallContained!2373 (getKeysList!411 (t!357538 (toList!4196 (extractMap!1150 (toList!4195 lm!1477))))) lambda!166620 (_1!28699 (h!56259 (toList!4196 (extractMap!1150 (toList!4195 lm!1477)))))))))

(declare-fun Unit!90245 () Unit!90134)

(assert (=> b!4486905 (= e!2794568 Unit!90245)))

(assert (=> b!4486906 (= e!2794566 (Cons!50463 (_1!28699 (h!56259 (toList!4196 (extractMap!1150 (toList!4195 lm!1477))))) (getKeysList!411 (t!357538 (toList!4196 (extractMap!1150 (toList!4195 lm!1477)))))))))

(declare-fun c!764213 () Bool)

(assert (=> b!4486906 (= c!764213 (containsKey!1610 (t!357538 (toList!4196 (extractMap!1150 (toList!4195 lm!1477)))) (_1!28699 (h!56259 (toList!4196 (extractMap!1150 (toList!4195 lm!1477)))))))))

(declare-fun lt!1671911 () Unit!90134)

(assert (=> b!4486906 (= lt!1671911 e!2794567)))

(declare-fun c!764211 () Bool)

(assert (=> b!4486906 (= c!764211 (contains!13091 (getKeysList!411 (t!357538 (toList!4196 (extractMap!1150 (toList!4195 lm!1477))))) (_1!28699 (h!56259 (toList!4196 (extractMap!1150 (toList!4195 lm!1477)))))))))

(declare-fun lt!1671914 () Unit!90134)

(assert (=> b!4486906 (= lt!1671914 e!2794568)))

(declare-fun lt!1671910 () List!50587)

(assert (=> b!4486906 (= lt!1671910 (getKeysList!411 (t!357538 (toList!4196 (extractMap!1150 (toList!4195 lm!1477))))))))

(declare-fun lt!1671909 () Unit!90134)

(assert (=> b!4486906 (= lt!1671909 (lemmaForallContainsAddHeadPreserves!135 (t!357538 (toList!4196 (extractMap!1150 (toList!4195 lm!1477)))) lt!1671910 (h!56259 (toList!4196 (extractMap!1150 (toList!4195 lm!1477))))))))

(assert (=> b!4486906 (forall!10114 lt!1671910 lambda!166621)))

(declare-fun lt!1671912 () Unit!90134)

(assert (=> b!4486906 (= lt!1671912 lt!1671909)))

(assert (= (and d!1373787 c!764212) b!4486906))

(assert (= (and d!1373787 (not c!764212)) b!4486899))

(assert (= (and b!4486906 c!764213) b!4486903))

(assert (= (and b!4486906 (not c!764213)) b!4486901))

(assert (= (and b!4486906 c!764211) b!4486905))

(assert (= (and b!4486906 (not c!764211)) b!4486900))

(assert (= (and d!1373787 res!1863935) b!4486898))

(assert (= (and b!4486898 res!1863936) b!4486904))

(assert (= (and b!4486904 res!1863937) b!4486902))

(declare-fun m!5208141 () Bool)

(assert (=> b!4486902 m!5208141))

(declare-fun m!5208143 () Bool)

(assert (=> b!4486902 m!5208143))

(assert (=> b!4486902 m!5208143))

(declare-fun m!5208145 () Bool)

(assert (=> b!4486902 m!5208145))

(declare-fun m!5208147 () Bool)

(assert (=> b!4486904 m!5208147))

(declare-fun m!5208149 () Bool)

(assert (=> b!4486898 m!5208149))

(assert (=> b!4486898 m!5207853))

(declare-fun m!5208151 () Bool)

(assert (=> d!1373787 m!5208151))

(assert (=> d!1373787 m!5208093))

(declare-fun m!5208153 () Bool)

(assert (=> b!4486906 m!5208153))

(declare-fun m!5208155 () Bool)

(assert (=> b!4486906 m!5208155))

(declare-fun m!5208157 () Bool)

(assert (=> b!4486906 m!5208157))

(assert (=> b!4486906 m!5208153))

(declare-fun m!5208159 () Bool)

(assert (=> b!4486906 m!5208159))

(declare-fun m!5208161 () Bool)

(assert (=> b!4486906 m!5208161))

(assert (=> b!4486905 m!5208153))

(assert (=> b!4486905 m!5208153))

(declare-fun m!5208163 () Bool)

(assert (=> b!4486905 m!5208163))

(assert (=> b!4486366 d!1373787))

(declare-fun b!4486910 () Bool)

(declare-fun e!2794570 () List!50584)

(assert (=> b!4486910 (= e!2794570 Nil!50460)))

(declare-fun b!4486907 () Bool)

(declare-fun e!2794571 () List!50584)

(assert (=> b!4486907 (= e!2794571 (t!357538 (t!357538 lt!1671373)))))

(declare-fun b!4486908 () Bool)

(assert (=> b!4486908 (= e!2794571 e!2794570)))

(declare-fun c!764215 () Bool)

(assert (=> b!4486908 (= c!764215 ((_ is Cons!50460) (t!357538 lt!1671373)))))

(declare-fun d!1373789 () Bool)

(declare-fun lt!1671916 () List!50584)

(assert (=> d!1373789 (not (containsKey!1606 lt!1671916 key!3287))))

(assert (=> d!1373789 (= lt!1671916 e!2794571)))

(declare-fun c!764214 () Bool)

(assert (=> d!1373789 (= c!764214 (and ((_ is Cons!50460) (t!357538 lt!1671373)) (= (_1!28699 (h!56259 (t!357538 lt!1671373))) key!3287)))))

(assert (=> d!1373789 (noDuplicateKeys!1094 (t!357538 lt!1671373))))

(assert (=> d!1373789 (= (removePairForKey!721 (t!357538 lt!1671373) key!3287) lt!1671916)))

(declare-fun b!4486909 () Bool)

(assert (=> b!4486909 (= e!2794570 (Cons!50460 (h!56259 (t!357538 lt!1671373)) (removePairForKey!721 (t!357538 (t!357538 lt!1671373)) key!3287)))))

(assert (= (and d!1373789 c!764214) b!4486907))

(assert (= (and d!1373789 (not c!764214)) b!4486908))

(assert (= (and b!4486908 c!764215) b!4486909))

(assert (= (and b!4486908 (not c!764215)) b!4486910))

(declare-fun m!5208165 () Bool)

(assert (=> d!1373789 m!5208165))

(assert (=> d!1373789 m!5207827))

(declare-fun m!5208167 () Bool)

(assert (=> b!4486909 m!5208167))

(assert (=> b!4486308 d!1373789))

(declare-fun d!1373791 () Bool)

(declare-fun res!1863938 () Bool)

(declare-fun e!2794572 () Bool)

(assert (=> d!1373791 (=> res!1863938 e!2794572)))

(assert (=> d!1373791 (= res!1863938 (and ((_ is Cons!50460) (_2!28700 (h!56260 (toList!4195 lt!1671372)))) (= (_1!28699 (h!56259 (_2!28700 (h!56260 (toList!4195 lt!1671372))))) key!3287)))))

(assert (=> d!1373791 (= (containsKey!1606 (_2!28700 (h!56260 (toList!4195 lt!1671372))) key!3287) e!2794572)))

(declare-fun b!4486911 () Bool)

(declare-fun e!2794573 () Bool)

(assert (=> b!4486911 (= e!2794572 e!2794573)))

(declare-fun res!1863939 () Bool)

(assert (=> b!4486911 (=> (not res!1863939) (not e!2794573))))

(assert (=> b!4486911 (= res!1863939 ((_ is Cons!50460) (_2!28700 (h!56260 (toList!4195 lt!1671372)))))))

(declare-fun b!4486912 () Bool)

(assert (=> b!4486912 (= e!2794573 (containsKey!1606 (t!357538 (_2!28700 (h!56260 (toList!4195 lt!1671372)))) key!3287))))

(assert (= (and d!1373791 (not res!1863938)) b!4486911))

(assert (= (and b!4486911 res!1863939) b!4486912))

(declare-fun m!5208169 () Bool)

(assert (=> b!4486912 m!5208169))

(assert (=> b!4486404 d!1373791))

(declare-fun d!1373793 () Bool)

(declare-fun res!1863942 () Bool)

(declare-fun e!2794574 () Bool)

(assert (=> d!1373793 (=> res!1863942 e!2794574)))

(declare-fun e!2794576 () Bool)

(assert (=> d!1373793 (= res!1863942 e!2794576)))

(declare-fun res!1863940 () Bool)

(assert (=> d!1373793 (=> (not res!1863940) (not e!2794576))))

(assert (=> d!1373793 (= res!1863940 ((_ is Cons!50461) (t!357539 (toList!4195 lt!1671372))))))

(assert (=> d!1373793 (= (containsKeyBiggerList!74 (t!357539 (toList!4195 lt!1671372)) key!3287) e!2794574)))

(declare-fun b!4486913 () Bool)

(assert (=> b!4486913 (= e!2794576 (containsKey!1606 (_2!28700 (h!56260 (t!357539 (toList!4195 lt!1671372)))) key!3287))))

(declare-fun b!4486914 () Bool)

(declare-fun e!2794575 () Bool)

(assert (=> b!4486914 (= e!2794574 e!2794575)))

(declare-fun res!1863941 () Bool)

(assert (=> b!4486914 (=> (not res!1863941) (not e!2794575))))

(assert (=> b!4486914 (= res!1863941 ((_ is Cons!50461) (t!357539 (toList!4195 lt!1671372))))))

(declare-fun b!4486915 () Bool)

(assert (=> b!4486915 (= e!2794575 (containsKeyBiggerList!74 (t!357539 (t!357539 (toList!4195 lt!1671372))) key!3287))))

(assert (= (and d!1373793 res!1863940) b!4486913))

(assert (= (and d!1373793 (not res!1863942)) b!4486914))

(assert (= (and b!4486914 res!1863941) b!4486915))

(declare-fun m!5208171 () Bool)

(assert (=> b!4486913 m!5208171))

(declare-fun m!5208173 () Bool)

(assert (=> b!4486915 m!5208173))

(assert (=> b!4486406 d!1373793))

(assert (=> b!4486285 d!1373387))

(declare-fun tp!1337066 () Bool)

(declare-fun b!4486916 () Bool)

(declare-fun e!2794577 () Bool)

(assert (=> b!4486916 (= e!2794577 (and tp_is_empty!27653 tp_is_empty!27655 tp!1337066))))

(assert (=> b!4486420 (= tp!1337060 e!2794577)))

(assert (= (and b!4486420 ((_ is Cons!50460) (_2!28700 (h!56260 (toList!4195 lm!1477))))) b!4486916))

(declare-fun b!4486917 () Bool)

(declare-fun e!2794578 () Bool)

(declare-fun tp!1337067 () Bool)

(declare-fun tp!1337068 () Bool)

(assert (=> b!4486917 (= e!2794578 (and tp!1337067 tp!1337068))))

(assert (=> b!4486420 (= tp!1337061 e!2794578)))

(assert (= (and b!4486420 ((_ is Cons!50461) (t!357539 (toList!4195 lm!1477)))) b!4486917))

(declare-fun e!2794579 () Bool)

(declare-fun b!4486918 () Bool)

(declare-fun tp!1337069 () Bool)

(assert (=> b!4486918 (= e!2794579 (and tp_is_empty!27653 tp_is_empty!27655 tp!1337069))))

(assert (=> b!4486415 (= tp!1337055 e!2794579)))

(assert (= (and b!4486415 ((_ is Cons!50460) (t!357538 (t!357538 newBucket!178)))) b!4486918))

(declare-fun b_lambda!150739 () Bool)

(assert (= b_lambda!150725 (or d!1373423 b_lambda!150739)))

(declare-fun bs!826445 () Bool)

(declare-fun d!1373795 () Bool)

(assert (= bs!826445 (and d!1373795 d!1373423)))

(assert (=> bs!826445 (= (dynLambda!21069 lambda!166479 (h!56259 newBucket!178)) (= (hash!2603 hashF!1107 (_1!28699 (h!56259 newBucket!178))) hash!344))))

(declare-fun m!5208175 () Bool)

(assert (=> bs!826445 m!5208175))

(assert (=> b!4486791 d!1373795))

(declare-fun b_lambda!150741 () Bool)

(assert (= b_lambda!150733 (or start!441840 b_lambda!150741)))

(assert (=> d!1373757 d!1373427))

(declare-fun b_lambda!150743 () Bool)

(assert (= b_lambda!150687 (or d!1373415 b_lambda!150743)))

(declare-fun bs!826446 () Bool)

(declare-fun d!1373797 () Bool)

(assert (= bs!826446 (and d!1373797 d!1373415)))

(assert (=> bs!826446 (= (dynLambda!21067 lambda!166473 (h!56260 (toList!4195 lm!1477))) (noDuplicateKeys!1094 (_2!28700 (h!56260 (toList!4195 lm!1477)))))))

(assert (=> bs!826446 m!5207275))

(assert (=> b!4486599 d!1373797))

(declare-fun b_lambda!150745 () Bool)

(assert (= b_lambda!150735 (or d!1373411 b_lambda!150745)))

(declare-fun bs!826447 () Bool)

(declare-fun d!1373799 () Bool)

(assert (= bs!826447 (and d!1373799 d!1373411)))

(assert (=> bs!826447 (= (dynLambda!21067 lambda!166469 (h!56260 (toList!4195 lt!1671372))) (noDuplicateKeys!1094 (_2!28700 (h!56260 (toList!4195 lt!1671372)))))))

(assert (=> bs!826447 m!5208011))

(assert (=> b!4486890 d!1373799))

(declare-fun b_lambda!150747 () Bool)

(assert (= b_lambda!150731 (or d!1373339 b_lambda!150747)))

(declare-fun bs!826448 () Bool)

(declare-fun d!1373801 () Bool)

(assert (= bs!826448 (and d!1373801 d!1373339)))

(assert (=> bs!826448 (= (dynLambda!21067 lambda!166447 (h!56260 (toList!4195 lm!1477))) (allKeysSameHash!948 (_2!28700 (h!56260 (toList!4195 lm!1477))) (_1!28700 (h!56260 (toList!4195 lm!1477))) hashF!1107))))

(declare-fun m!5208177 () Bool)

(assert (=> bs!826448 m!5208177))

(assert (=> b!4486876 d!1373801))

(declare-fun b_lambda!150749 () Bool)

(assert (= b_lambda!150729 (or d!1373413 b_lambda!150749)))

(declare-fun bs!826449 () Bool)

(declare-fun d!1373803 () Bool)

(assert (= bs!826449 (and d!1373803 d!1373413)))

(assert (=> bs!826449 (= (dynLambda!21067 lambda!166470 (h!56260 (toList!4195 lt!1671372))) (noDuplicateKeys!1094 (_2!28700 (h!56260 (toList!4195 lt!1671372)))))))

(assert (=> bs!826449 m!5208011))

(assert (=> b!4486840 d!1373803))

(declare-fun b_lambda!150751 () Bool)

(assert (= b_lambda!150737 (or start!441840 b_lambda!150751)))

(declare-fun bs!826450 () Bool)

(declare-fun d!1373805 () Bool)

(assert (= bs!826450 (and d!1373805 start!441840)))

(assert (=> bs!826450 (= (dynLambda!21067 lambda!166433 (h!56260 (t!357539 (toList!4195 lm!1477)))) (noDuplicateKeys!1094 (_2!28700 (h!56260 (t!357539 (toList!4195 lm!1477))))))))

(assert (=> bs!826450 m!5207875))

(assert (=> b!4486896 d!1373805))

(declare-fun b_lambda!150753 () Bool)

(assert (= b_lambda!150723 (or d!1373407 b_lambda!150753)))

(declare-fun bs!826451 () Bool)

(declare-fun d!1373807 () Bool)

(assert (= bs!826451 (and d!1373807 d!1373407)))

(assert (=> bs!826451 (= (dynLambda!21067 lambda!166466 (h!56260 (t!357539 (toList!4195 lm!1477)))) (noDuplicateKeys!1094 (_2!28700 (h!56260 (t!357539 (toList!4195 lm!1477))))))))

(assert (=> bs!826451 m!5207875))

(assert (=> b!4486759 d!1373807))

(declare-fun b_lambda!150755 () Bool)

(assert (= b_lambda!150691 (or d!1373347 b_lambda!150755)))

(declare-fun bs!826452 () Bool)

(declare-fun d!1373809 () Bool)

(assert (= bs!826452 (and d!1373809 d!1373347)))

(assert (=> bs!826452 (= (dynLambda!21067 lambda!166450 (h!56260 (toList!4195 lm!1477))) (noDuplicateKeys!1094 (_2!28700 (h!56260 (toList!4195 lm!1477)))))))

(assert (=> bs!826452 m!5207275))

(assert (=> b!4486633 d!1373809))

(declare-fun b_lambda!150757 () Bool)

(assert (= b_lambda!150721 (or d!1373421 b_lambda!150757)))

(declare-fun bs!826453 () Bool)

(declare-fun d!1373811 () Bool)

(assert (= bs!826453 (and d!1373811 d!1373421)))

(assert (=> bs!826453 (= (dynLambda!21067 lambda!166476 (h!56260 (toList!4195 lt!1671372))) (noDuplicateKeys!1094 (_2!28700 (h!56260 (toList!4195 lt!1671372)))))))

(assert (=> bs!826453 m!5208011))

(assert (=> b!4486750 d!1373811))

(declare-fun b_lambda!150759 () Bool)

(assert (= b_lambda!150727 (or d!1373403 b_lambda!150759)))

(declare-fun bs!826454 () Bool)

(declare-fun d!1373813 () Bool)

(assert (= bs!826454 (and d!1373813 d!1373403)))

(assert (=> bs!826454 (= (dynLambda!21067 lambda!166465 (h!56260 (toList!4195 lm!1477))) (noDuplicateKeys!1094 (_2!28700 (h!56260 (toList!4195 lm!1477)))))))

(assert (=> bs!826454 m!5207275))

(assert (=> b!4486836 d!1373813))

(check-sat (not b!4486749) (not bs!826452) (not b!4486856) (not b!4486751) (not b!4486904) (not b!4486758) (not b_lambda!150753) (not b!4486872) (not b!4486800) (not b!4486711) (not b!4486839) (not bm!312243) (not b!4486902) (not d!1373759) (not b!4486835) (not b!4486754) (not b_lambda!150669) (not d!1373725) (not b!4486802) (not b!4486600) (not b!4486905) (not b!4486848) (not d!1373721) (not bm!312239) (not b!4486853) (not bs!826451) (not bs!826446) (not b!4486889) (not b!4486844) (not d!1373783) (not d!1373741) (not b!4486875) (not b!4486632) (not d!1373733) (not b!4486630) (not b!4486852) (not d!1373719) (not d!1373737) tp_is_empty!27655 (not d!1373693) (not b!4486891) (not b!4486640) (not b!4486913) (not b_lambda!150751) (not b!4486829) (not b_lambda!150745) (not b!4486821) (not b!4486828) (not b!4486722) (not b!4486731) (not bs!826449) tp_is_empty!27653 (not b!4486756) (not b!4486794) (not bs!826454) (not b!4486873) (not d!1373789) (not d!1373521) (not b!4486730) (not b!4486714) (not d!1373735) (not b!4486864) (not bm!312238) (not d!1373663) (not d!1373781) (not b_lambda!150747) (not bs!826447) (not b!4486917) (not d!1373713) (not b!4486752) (not d!1373731) (not bm!312242) (not b!4486918) (not b!4486874) (not b!4486862) (not b!4486863) (not b!4486760) (not b!4486877) (not b!4486884) (not b!4486779) (not b_lambda!150743) (not b!4486837) (not b_lambda!150749) (not bm!312246) (not b!4486898) (not b_lambda!150759) (not bm!312244) (not b!4486628) (not d!1373747) (not b!4486778) (not d!1373767) (not b!4486825) (not d!1373691) (not d!1373729) (not d!1373697) (not d!1373701) (not b!4486860) (not d!1373761) (not b!4486713) (not d!1373773) (not b!4486888) (not b!4486841) (not b!4486743) (not d!1373651) (not b!4486854) (not b!4486912) (not d!1373751) (not bs!826448) (not b_lambda!150755) (not d!1373679) (not b!4486780) (not b!4486916) (not d!1373681) (not b_lambda!150671) (not d!1373557) (not b!4486909) (not b!4486605) (not bs!826445) (not b!4486774) (not bs!826450) (not d!1373699) (not b_lambda!150739) (not b!4486564) (not b_lambda!150741) (not d!1373689) (not b!4486870) (not d!1373649) (not d!1373673) (not b!4486634) (not b!4486785) (not d!1373657) (not bs!826453) (not b!4486776) (not b!4486871) (not b!4486736) (not d!1373581) (not b!4486906) (not b_lambda!150757) (not b!4486792) (not b!4486850) (not b!4486773) (not b!4486781) (not b!4486637) (not d!1373755) (not d!1373763) (not b!4486895) (not b!4486887) (not b!4486710) (not b!4486881) (not b!4486729) (not d!1373705) (not b!4486849) (not bm!312245) (not b!4486833) (not b!4486783) (not b!4486879) (not b!4486777) (not b!4486771) (not b!4486897) (not b!4486784) (not d!1373743) (not bm!312241) (not b!4486827) (not d!1373569) (not d!1373715) (not b!4486893) (not d!1373787) (not b!4486847) (not d!1373551) (not d!1373739) (not bm!312240) (not b!4486915) (not d!1373707) (not d!1373571) (not b!4486757))
(check-sat)
