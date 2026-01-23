; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!490300 () Bool)

(assert start!490300)

(declare-fun bs!1151362 () Bool)

(declare-fun b!4778970 () Bool)

(assert (= bs!1151362 (and b!4778970 start!490300)))

(declare-fun lambda!227569 () Int)

(declare-fun lambda!227568 () Int)

(assert (=> bs!1151362 (not (= lambda!227569 lambda!227568))))

(assert (=> b!4778970 true))

(declare-fun b!4778967 () Bool)

(declare-fun res!2028693 () Bool)

(declare-fun e!2983487 () Bool)

(assert (=> b!4778967 (=> res!2028693 e!2983487)))

(declare-datatypes ((K!15517 0))(
  ( (K!15518 (val!20719 Int)) )
))
(declare-datatypes ((V!15763 0))(
  ( (V!15764 (val!20720 Int)) )
))
(declare-datatypes ((tuple2!56412 0))(
  ( (tuple2!56413 (_1!31500 K!15517) (_2!31500 V!15763)) )
))
(declare-datatypes ((List!54077 0))(
  ( (Nil!53953) (Cons!53953 (h!60369 tuple2!56412) (t!361527 List!54077)) )
))
(declare-datatypes ((tuple2!56414 0))(
  ( (tuple2!56415 (_1!31501 (_ BitVec 64)) (_2!31501 List!54077)) )
))
(declare-datatypes ((List!54078 0))(
  ( (Nil!53954) (Cons!53954 (h!60370 tuple2!56414) (t!361528 List!54078)) )
))
(declare-datatypes ((ListLongMap!5123 0))(
  ( (ListLongMap!5124 (toList!6701 List!54078)) )
))
(declare-fun lm!2709 () ListLongMap!5123)

(declare-fun lt!1941806 () (_ BitVec 64))

(assert (=> b!4778967 (= res!2028693 (or (not (is-Cons!53954 (toList!6701 lm!2709))) (not (= (_1!31501 (h!60370 (toList!6701 lm!2709))) lt!1941806))))))

(declare-fun b!4778968 () Bool)

(declare-fun res!2028691 () Bool)

(declare-fun e!2983485 () Bool)

(assert (=> b!4778968 (=> (not res!2028691) (not e!2983485))))

(declare-fun key!6641 () K!15517)

(declare-fun containsKeyBiggerList!467 (List!54078 K!15517) Bool)

(assert (=> b!4778968 (= res!2028691 (containsKeyBiggerList!467 (toList!6701 lm!2709) key!6641))))

(declare-fun b!4778969 () Bool)

(declare-fun e!2983488 () Bool)

(assert (=> b!4778969 (= e!2983488 true)))

(declare-fun res!2028694 () Bool)

(assert (=> start!490300 (=> (not res!2028694) (not e!2983485))))

(declare-fun forall!12091 (List!54078 Int) Bool)

(assert (=> start!490300 (= res!2028694 (forall!12091 (toList!6701 lm!2709) lambda!227568))))

(assert (=> start!490300 e!2983485))

(declare-fun e!2983486 () Bool)

(declare-fun inv!69544 (ListLongMap!5123) Bool)

(assert (=> start!490300 (and (inv!69544 lm!2709) e!2983486)))

(assert (=> start!490300 true))

(declare-fun tp_is_empty!33145 () Bool)

(assert (=> start!490300 tp_is_empty!33145))

(declare-fun tp_is_empty!33147 () Bool)

(assert (=> start!490300 tp_is_empty!33147))

(assert (=> b!4778970 (= e!2983487 e!2983488)))

(declare-fun res!2028692 () Bool)

(assert (=> b!4778970 (=> res!2028692 e!2983488)))

(declare-fun containsKey!3781 (List!54077 K!15517) Bool)

(assert (=> b!4778970 (= res!2028692 (containsKey!3781 (_2!31501 (h!60370 (toList!6701 lm!2709))) key!6641))))

(declare-datatypes ((Unit!139115 0))(
  ( (Unit!139116) )
))
(declare-fun lt!1941800 () Unit!139115)

(declare-fun forallContained!4036 (List!54078 Int tuple2!56414) Unit!139115)

(assert (=> b!4778970 (= lt!1941800 (forallContained!4036 (toList!6701 lm!2709) lambda!227569 (h!60370 (toList!6701 lm!2709))))))

(declare-fun b!4778971 () Bool)

(declare-fun tp!1357313 () Bool)

(assert (=> b!4778971 (= e!2983486 tp!1357313)))

(declare-fun b!4778972 () Bool)

(declare-fun res!2028696 () Bool)

(assert (=> b!4778972 (=> (not res!2028696) (not e!2983485))))

(declare-datatypes ((Hashable!6811 0))(
  ( (HashableExt!6810 (__x!32834 Int)) )
))
(declare-fun hashF!1687 () Hashable!6811)

(declare-fun allKeysSameHashInMap!2216 (ListLongMap!5123 Hashable!6811) Bool)

(assert (=> b!4778972 (= res!2028696 (allKeysSameHashInMap!2216 lm!2709 hashF!1687))))

(declare-fun b!4778973 () Bool)

(assert (=> b!4778973 (= e!2983485 (not e!2983487))))

(declare-fun res!2028695 () Bool)

(assert (=> b!4778973 (=> res!2028695 e!2983487)))

(declare-datatypes ((Option!12899 0))(
  ( (None!12898) (Some!12898 (v!48081 tuple2!56412)) )
))
(declare-fun lt!1941805 () Option!12899)

(declare-fun v!11584 () V!15763)

(declare-fun get!18325 (Option!12899) tuple2!56412)

(assert (=> b!4778973 (= res!2028695 (not (= (_2!31500 (get!18325 lt!1941805)) v!11584)))))

(declare-fun isDefined!10043 (Option!12899) Bool)

(assert (=> b!4778973 (isDefined!10043 lt!1941805)))

(declare-fun lt!1941798 () List!54077)

(declare-fun getPair!783 (List!54077 K!15517) Option!12899)

(assert (=> b!4778973 (= lt!1941805 (getPair!783 lt!1941798 key!6641))))

(declare-fun lt!1941807 () Unit!139115)

(declare-fun lt!1941802 () tuple2!56414)

(assert (=> b!4778973 (= lt!1941807 (forallContained!4036 (toList!6701 lm!2709) lambda!227568 lt!1941802))))

(declare-fun lt!1941808 () Unit!139115)

(declare-fun lemmaInGenMapThenGetPairDefined!557 (ListLongMap!5123 K!15517 Hashable!6811) Unit!139115)

(assert (=> b!4778973 (= lt!1941808 (lemmaInGenMapThenGetPairDefined!557 lm!2709 key!6641 hashF!1687))))

(declare-fun lt!1941799 () Unit!139115)

(assert (=> b!4778973 (= lt!1941799 (forallContained!4036 (toList!6701 lm!2709) lambda!227568 lt!1941802))))

(declare-fun contains!17461 (List!54078 tuple2!56414) Bool)

(assert (=> b!4778973 (contains!17461 (toList!6701 lm!2709) lt!1941802)))

(assert (=> b!4778973 (= lt!1941802 (tuple2!56415 lt!1941806 lt!1941798))))

(declare-fun lt!1941804 () Unit!139115)

(declare-fun lemmaGetValueImpliesTupleContained!590 (ListLongMap!5123 (_ BitVec 64) List!54077) Unit!139115)

(assert (=> b!4778973 (= lt!1941804 (lemmaGetValueImpliesTupleContained!590 lm!2709 lt!1941806 lt!1941798))))

(declare-fun apply!12866 (ListLongMap!5123 (_ BitVec 64)) List!54077)

(assert (=> b!4778973 (= lt!1941798 (apply!12866 lm!2709 lt!1941806))))

(declare-fun contains!17462 (ListLongMap!5123 (_ BitVec 64)) Bool)

(assert (=> b!4778973 (contains!17462 lm!2709 lt!1941806)))

(declare-fun hash!4790 (Hashable!6811 K!15517) (_ BitVec 64))

(assert (=> b!4778973 (= lt!1941806 (hash!4790 hashF!1687 key!6641))))

(declare-fun lt!1941803 () Unit!139115)

(declare-fun lemmaInGenMapThenLongMapContainsHash!1007 (ListLongMap!5123 K!15517 Hashable!6811) Unit!139115)

(assert (=> b!4778973 (= lt!1941803 (lemmaInGenMapThenLongMapContainsHash!1007 lm!2709 key!6641 hashF!1687))))

(declare-datatypes ((ListMap!6173 0))(
  ( (ListMap!6174 (toList!6702 List!54077)) )
))
(declare-fun contains!17463 (ListMap!6173 K!15517) Bool)

(declare-fun extractMap!2338 (List!54078) ListMap!6173)

(assert (=> b!4778973 (contains!17463 (extractMap!2338 (toList!6701 lm!2709)) key!6641)))

(declare-fun lt!1941801 () Unit!139115)

(declare-fun lemmaListContainsThenExtractedMapContains!659 (ListLongMap!5123 K!15517 Hashable!6811) Unit!139115)

(assert (=> b!4778973 (= lt!1941801 (lemmaListContainsThenExtractedMapContains!659 lm!2709 key!6641 hashF!1687))))

(assert (= (and start!490300 res!2028694) b!4778972))

(assert (= (and b!4778972 res!2028696) b!4778968))

(assert (= (and b!4778968 res!2028691) b!4778973))

(assert (= (and b!4778973 (not res!2028695)) b!4778967))

(assert (= (and b!4778967 (not res!2028693)) b!4778970))

(assert (= (and b!4778970 (not res!2028692)) b!4778969))

(assert (= start!490300 b!4778971))

(declare-fun m!5755280 () Bool)

(assert (=> b!4778973 m!5755280))

(declare-fun m!5755282 () Bool)

(assert (=> b!4778973 m!5755282))

(declare-fun m!5755284 () Bool)

(assert (=> b!4778973 m!5755284))

(declare-fun m!5755286 () Bool)

(assert (=> b!4778973 m!5755286))

(declare-fun m!5755288 () Bool)

(assert (=> b!4778973 m!5755288))

(declare-fun m!5755290 () Bool)

(assert (=> b!4778973 m!5755290))

(declare-fun m!5755292 () Bool)

(assert (=> b!4778973 m!5755292))

(declare-fun m!5755294 () Bool)

(assert (=> b!4778973 m!5755294))

(declare-fun m!5755296 () Bool)

(assert (=> b!4778973 m!5755296))

(declare-fun m!5755298 () Bool)

(assert (=> b!4778973 m!5755298))

(declare-fun m!5755300 () Bool)

(assert (=> b!4778973 m!5755300))

(assert (=> b!4778973 m!5755284))

(declare-fun m!5755302 () Bool)

(assert (=> b!4778973 m!5755302))

(declare-fun m!5755304 () Bool)

(assert (=> b!4778973 m!5755304))

(assert (=> b!4778973 m!5755294))

(declare-fun m!5755306 () Bool)

(assert (=> b!4778973 m!5755306))

(declare-fun m!5755308 () Bool)

(assert (=> b!4778970 m!5755308))

(declare-fun m!5755310 () Bool)

(assert (=> b!4778970 m!5755310))

(declare-fun m!5755312 () Bool)

(assert (=> b!4778968 m!5755312))

(declare-fun m!5755314 () Bool)

(assert (=> start!490300 m!5755314))

(declare-fun m!5755316 () Bool)

(assert (=> start!490300 m!5755316))

(declare-fun m!5755318 () Bool)

(assert (=> b!4778972 m!5755318))

(push 1)

(assert (not b!4778972))

(assert (not b!4778973))

(assert (not start!490300))

(assert (not b!4778971))

(assert tp_is_empty!33147)

(assert (not b!4778970))

(assert (not b!4778968))

(assert tp_is_empty!33145)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

