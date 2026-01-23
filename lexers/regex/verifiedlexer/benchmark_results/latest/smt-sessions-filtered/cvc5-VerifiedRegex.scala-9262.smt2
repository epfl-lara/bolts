; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!491708 () Bool)

(assert start!491708)

(declare-fun b!4784319 () Bool)

(declare-fun res!2031984 () Bool)

(declare-fun e!2987094 () Bool)

(assert (=> b!4784319 (=> (not res!2031984) (not e!2987094))))

(declare-datatypes ((K!15597 0))(
  ( (K!15598 (val!20783 Int)) )
))
(declare-datatypes ((V!15843 0))(
  ( (V!15844 (val!20784 Int)) )
))
(declare-datatypes ((tuple2!56540 0))(
  ( (tuple2!56541 (_1!31564 K!15597) (_2!31564 V!15843)) )
))
(declare-datatypes ((List!54159 0))(
  ( (Nil!54035) (Cons!54035 (h!60455 tuple2!56540) (t!361609 List!54159)) )
))
(declare-datatypes ((tuple2!56542 0))(
  ( (tuple2!56543 (_1!31565 (_ BitVec 64)) (_2!31565 List!54159)) )
))
(declare-datatypes ((List!54160 0))(
  ( (Nil!54036) (Cons!54036 (h!60456 tuple2!56542) (t!361610 List!54160)) )
))
(declare-datatypes ((ListLongMap!5187 0))(
  ( (ListLongMap!5188 (toList!6765 List!54160)) )
))
(declare-fun lm!2709 () ListLongMap!5187)

(declare-datatypes ((Hashable!6843 0))(
  ( (HashableExt!6842 (__x!32866 Int)) )
))
(declare-fun hashF!1687 () Hashable!6843)

(declare-fun allKeysSameHashInMap!2248 (ListLongMap!5187 Hashable!6843) Bool)

(assert (=> b!4784319 (= res!2031984 (allKeysSameHashInMap!2248 lm!2709 hashF!1687))))

(declare-fun e!2987093 () Bool)

(declare-fun v!11584 () V!15843)

(declare-fun b!4784320 () Bool)

(declare-fun key!6641 () K!15597)

(declare-fun getValue!49 (List!54160 K!15597) V!15843)

(assert (=> b!4784320 (= e!2987093 (= (getValue!49 (toList!6765 lm!2709) key!6641) v!11584))))

(declare-fun lt!1946242 () ListLongMap!5187)

(assert (=> b!4784320 (= (getValue!49 (toList!6765 lt!1946242) key!6641) v!11584)))

(declare-datatypes ((Unit!139424 0))(
  ( (Unit!139425) )
))
(declare-fun lt!1946236 () Unit!139424)

(declare-fun lemmaGetValueEquivToGetPair!47 (ListLongMap!5187 K!15597 V!15843 Hashable!6843) Unit!139424)

(assert (=> b!4784320 (= lt!1946236 (lemmaGetValueEquivToGetPair!47 lt!1946242 key!6641 v!11584 hashF!1687))))

(declare-fun b!4784321 () Bool)

(declare-fun res!2031979 () Bool)

(declare-fun e!2987091 () Bool)

(assert (=> b!4784321 (=> res!2031979 e!2987091)))

(declare-fun containsKeyBiggerList!499 (List!54160 K!15597) Bool)

(assert (=> b!4784321 (= res!2031979 (not (containsKeyBiggerList!499 (toList!6765 lt!1946242) key!6641)))))

(declare-fun res!2031986 () Bool)

(assert (=> start!491708 (=> (not res!2031986) (not e!2987094))))

(declare-fun lambda!228892 () Int)

(declare-fun forall!12143 (List!54160 Int) Bool)

(assert (=> start!491708 (= res!2031986 (forall!12143 (toList!6765 lm!2709) lambda!228892))))

(assert (=> start!491708 e!2987094))

(declare-fun e!2987092 () Bool)

(declare-fun inv!69624 (ListLongMap!5187) Bool)

(assert (=> start!491708 (and (inv!69624 lm!2709) e!2987092)))

(assert (=> start!491708 true))

(declare-fun tp_is_empty!33273 () Bool)

(assert (=> start!491708 tp_is_empty!33273))

(declare-fun tp_is_empty!33275 () Bool)

(assert (=> start!491708 tp_is_empty!33275))

(declare-fun b!4784322 () Bool)

(declare-fun e!2987095 () Bool)

(assert (=> b!4784322 (= e!2987094 (not e!2987095))))

(declare-fun res!2031981 () Bool)

(assert (=> b!4784322 (=> res!2031981 e!2987095)))

(declare-datatypes ((Option!12967 0))(
  ( (None!12966) (Some!12966 (v!48205 tuple2!56540)) )
))
(declare-fun lt!1946232 () Option!12967)

(declare-fun get!18389 (Option!12967) tuple2!56540)

(assert (=> b!4784322 (= res!2031981 (not (= (_2!31564 (get!18389 lt!1946232)) v!11584)))))

(declare-fun isDefined!10110 (Option!12967) Bool)

(assert (=> b!4784322 (isDefined!10110 lt!1946232)))

(declare-fun lt!1946229 () List!54159)

(declare-fun getPair!815 (List!54159 K!15597) Option!12967)

(assert (=> b!4784322 (= lt!1946232 (getPair!815 lt!1946229 key!6641))))

(declare-fun lt!1946227 () tuple2!56542)

(declare-fun lt!1946245 () Unit!139424)

(declare-fun forallContained!4087 (List!54160 Int tuple2!56542) Unit!139424)

(assert (=> b!4784322 (= lt!1946245 (forallContained!4087 (toList!6765 lm!2709) lambda!228892 lt!1946227))))

(declare-fun lt!1946238 () Unit!139424)

(declare-fun lemmaInGenMapThenGetPairDefined!589 (ListLongMap!5187 K!15597 Hashable!6843) Unit!139424)

(assert (=> b!4784322 (= lt!1946238 (lemmaInGenMapThenGetPairDefined!589 lm!2709 key!6641 hashF!1687))))

(declare-fun lt!1946224 () Unit!139424)

(assert (=> b!4784322 (= lt!1946224 (forallContained!4087 (toList!6765 lm!2709) lambda!228892 lt!1946227))))

(declare-fun contains!17591 (List!54160 tuple2!56542) Bool)

(assert (=> b!4784322 (contains!17591 (toList!6765 lm!2709) lt!1946227)))

(declare-fun lt!1946239 () (_ BitVec 64))

(assert (=> b!4784322 (= lt!1946227 (tuple2!56543 lt!1946239 lt!1946229))))

(declare-fun lt!1946225 () Unit!139424)

(declare-fun lemmaGetValueImpliesTupleContained!622 (ListLongMap!5187 (_ BitVec 64) List!54159) Unit!139424)

(assert (=> b!4784322 (= lt!1946225 (lemmaGetValueImpliesTupleContained!622 lm!2709 lt!1946239 lt!1946229))))

(declare-fun apply!12898 (ListLongMap!5187 (_ BitVec 64)) List!54159)

(assert (=> b!4784322 (= lt!1946229 (apply!12898 lm!2709 lt!1946239))))

(declare-fun contains!17592 (ListLongMap!5187 (_ BitVec 64)) Bool)

(assert (=> b!4784322 (contains!17592 lm!2709 lt!1946239)))

(declare-fun hash!4854 (Hashable!6843 K!15597) (_ BitVec 64))

(assert (=> b!4784322 (= lt!1946239 (hash!4854 hashF!1687 key!6641))))

(declare-fun lt!1946240 () Unit!139424)

(declare-fun lemmaInGenMapThenLongMapContainsHash!1039 (ListLongMap!5187 K!15597 Hashable!6843) Unit!139424)

(assert (=> b!4784322 (= lt!1946240 (lemmaInGenMapThenLongMapContainsHash!1039 lm!2709 key!6641 hashF!1687))))

(declare-datatypes ((ListMap!6237 0))(
  ( (ListMap!6238 (toList!6766 List!54159)) )
))
(declare-fun contains!17593 (ListMap!6237 K!15597) Bool)

(declare-fun extractMap!2370 (List!54160) ListMap!6237)

(assert (=> b!4784322 (contains!17593 (extractMap!2370 (toList!6765 lm!2709)) key!6641)))

(declare-fun lt!1946246 () Unit!139424)

(declare-fun lemmaListContainsThenExtractedMapContains!691 (ListLongMap!5187 K!15597 Hashable!6843) Unit!139424)

(assert (=> b!4784322 (= lt!1946246 (lemmaListContainsThenExtractedMapContains!691 lm!2709 key!6641 hashF!1687))))

(declare-fun b!4784323 () Bool)

(assert (=> b!4784323 (= e!2987091 e!2987093)))

(declare-fun res!2031977 () Bool)

(assert (=> b!4784323 (=> res!2031977 e!2987093)))

(declare-fun lt!1946234 () Option!12967)

(assert (=> b!4784323 (= res!2031977 (not (= (_2!31564 (get!18389 lt!1946234)) v!11584)))))

(assert (=> b!4784323 (isDefined!10110 lt!1946234)))

(declare-fun lt!1946233 () List!54159)

(assert (=> b!4784323 (= lt!1946234 (getPair!815 lt!1946233 key!6641))))

(declare-fun lt!1946241 () tuple2!56542)

(declare-fun lt!1946237 () Unit!139424)

(assert (=> b!4784323 (= lt!1946237 (forallContained!4087 (toList!6765 lt!1946242) lambda!228892 lt!1946241))))

(declare-fun lt!1946228 () Unit!139424)

(assert (=> b!4784323 (= lt!1946228 (lemmaInGenMapThenGetPairDefined!589 lt!1946242 key!6641 hashF!1687))))

(declare-fun lt!1946243 () Unit!139424)

(assert (=> b!4784323 (= lt!1946243 (forallContained!4087 (toList!6765 lt!1946242) lambda!228892 lt!1946241))))

(assert (=> b!4784323 (contains!17591 (toList!6765 lt!1946242) lt!1946241)))

(assert (=> b!4784323 (= lt!1946241 (tuple2!56543 lt!1946239 lt!1946233))))

(declare-fun lt!1946231 () Unit!139424)

(assert (=> b!4784323 (= lt!1946231 (lemmaGetValueImpliesTupleContained!622 lt!1946242 lt!1946239 lt!1946233))))

(assert (=> b!4784323 (= lt!1946233 (apply!12898 lt!1946242 lt!1946239))))

(assert (=> b!4784323 (contains!17592 lt!1946242 lt!1946239)))

(declare-fun lt!1946230 () Unit!139424)

(assert (=> b!4784323 (= lt!1946230 (lemmaInGenMapThenLongMapContainsHash!1039 lt!1946242 key!6641 hashF!1687))))

(assert (=> b!4784323 (contains!17593 (extractMap!2370 (toList!6765 lt!1946242)) key!6641)))

(declare-fun lt!1946226 () Unit!139424)

(assert (=> b!4784323 (= lt!1946226 (lemmaListContainsThenExtractedMapContains!691 lt!1946242 key!6641 hashF!1687))))

(declare-fun b!4784324 () Bool)

(declare-fun res!2031978 () Bool)

(assert (=> b!4784324 (=> res!2031978 e!2987091)))

(assert (=> b!4784324 (= res!2031978 (not (allKeysSameHashInMap!2248 lt!1946242 hashF!1687)))))

(declare-fun b!4784325 () Bool)

(declare-fun tp!1357567 () Bool)

(assert (=> b!4784325 (= e!2987092 tp!1357567)))

(declare-fun b!4784326 () Bool)

(declare-fun res!2031982 () Bool)

(assert (=> b!4784326 (=> (not res!2031982) (not e!2987094))))

(assert (=> b!4784326 (= res!2031982 (containsKeyBiggerList!499 (toList!6765 lm!2709) key!6641))))

(declare-fun b!4784327 () Bool)

(declare-fun e!2987096 () Bool)

(assert (=> b!4784327 (= e!2987095 e!2987096)))

(declare-fun res!2031980 () Bool)

(assert (=> b!4784327 (=> res!2031980 e!2987096)))

(declare-fun containsKey!3842 (List!54159 K!15597) Bool)

(assert (=> b!4784327 (= res!2031980 (containsKey!3842 (_2!31565 (h!60456 (toList!6765 lm!2709))) key!6641))))

(assert (=> b!4784327 (not (containsKey!3842 (apply!12898 lm!2709 (_1!31565 (h!60456 (toList!6765 lm!2709)))) key!6641))))

(declare-fun lt!1946244 () Unit!139424)

(declare-fun lemmaNotSameHashThenCannotContainKey!197 (ListLongMap!5187 K!15597 (_ BitVec 64) Hashable!6843) Unit!139424)

(assert (=> b!4784327 (= lt!1946244 (lemmaNotSameHashThenCannotContainKey!197 lm!2709 key!6641 (_1!31565 (h!60456 (toList!6765 lm!2709))) hashF!1687))))

(declare-fun b!4784328 () Bool)

(declare-fun res!2031985 () Bool)

(assert (=> b!4784328 (=> res!2031985 e!2987095)))

(assert (=> b!4784328 (= res!2031985 (or (and (is-Cons!54036 (toList!6765 lm!2709)) (= (_1!31565 (h!60456 (toList!6765 lm!2709))) lt!1946239)) (not (is-Cons!54036 (toList!6765 lm!2709)))))))

(declare-fun b!4784329 () Bool)

(assert (=> b!4784329 (= e!2987096 e!2987091)))

(declare-fun res!2031983 () Bool)

(assert (=> b!4784329 (=> res!2031983 e!2987091)))

(assert (=> b!4784329 (= res!2031983 (not (forall!12143 (toList!6765 lt!1946242) lambda!228892)))))

(declare-fun tail!9206 (ListLongMap!5187) ListLongMap!5187)

(assert (=> b!4784329 (= lt!1946242 (tail!9206 lm!2709))))

(declare-fun tail!9207 (List!54160) List!54160)

(assert (=> b!4784329 (containsKeyBiggerList!499 (tail!9207 (toList!6765 lm!2709)) key!6641)))

(declare-fun lt!1946235 () Unit!139424)

(declare-fun lemmaInBiggerListButNotHeadThenTail!23 (ListLongMap!5187 K!15597 Hashable!6843) Unit!139424)

(assert (=> b!4784329 (= lt!1946235 (lemmaInBiggerListButNotHeadThenTail!23 lm!2709 key!6641 hashF!1687))))

(assert (= (and start!491708 res!2031986) b!4784319))

(assert (= (and b!4784319 res!2031984) b!4784326))

(assert (= (and b!4784326 res!2031982) b!4784322))

(assert (= (and b!4784322 (not res!2031981)) b!4784328))

(assert (= (and b!4784328 (not res!2031985)) b!4784327))

(assert (= (and b!4784327 (not res!2031980)) b!4784329))

(assert (= (and b!4784329 (not res!2031983)) b!4784324))

(assert (= (and b!4784324 (not res!2031978)) b!4784321))

(assert (= (and b!4784321 (not res!2031979)) b!4784323))

(assert (= (and b!4784323 (not res!2031977)) b!4784320))

(assert (= start!491708 b!4784325))

(declare-fun m!5762898 () Bool)

(assert (=> b!4784319 m!5762898))

(declare-fun m!5762900 () Bool)

(assert (=> b!4784323 m!5762900))

(declare-fun m!5762902 () Bool)

(assert (=> b!4784323 m!5762902))

(declare-fun m!5762904 () Bool)

(assert (=> b!4784323 m!5762904))

(declare-fun m!5762906 () Bool)

(assert (=> b!4784323 m!5762906))

(declare-fun m!5762908 () Bool)

(assert (=> b!4784323 m!5762908))

(declare-fun m!5762910 () Bool)

(assert (=> b!4784323 m!5762910))

(declare-fun m!5762912 () Bool)

(assert (=> b!4784323 m!5762912))

(declare-fun m!5762914 () Bool)

(assert (=> b!4784323 m!5762914))

(declare-fun m!5762916 () Bool)

(assert (=> b!4784323 m!5762916))

(assert (=> b!4784323 m!5762906))

(declare-fun m!5762918 () Bool)

(assert (=> b!4784323 m!5762918))

(declare-fun m!5762920 () Bool)

(assert (=> b!4784323 m!5762920))

(declare-fun m!5762922 () Bool)

(assert (=> b!4784323 m!5762922))

(declare-fun m!5762924 () Bool)

(assert (=> b!4784323 m!5762924))

(assert (=> b!4784323 m!5762914))

(declare-fun m!5762926 () Bool)

(assert (=> b!4784320 m!5762926))

(declare-fun m!5762928 () Bool)

(assert (=> b!4784320 m!5762928))

(declare-fun m!5762930 () Bool)

(assert (=> b!4784320 m!5762930))

(declare-fun m!5762932 () Bool)

(assert (=> b!4784327 m!5762932))

(declare-fun m!5762934 () Bool)

(assert (=> b!4784327 m!5762934))

(assert (=> b!4784327 m!5762934))

(declare-fun m!5762936 () Bool)

(assert (=> b!4784327 m!5762936))

(declare-fun m!5762938 () Bool)

(assert (=> b!4784327 m!5762938))

(declare-fun m!5762940 () Bool)

(assert (=> b!4784329 m!5762940))

(declare-fun m!5762942 () Bool)

(assert (=> b!4784329 m!5762942))

(assert (=> b!4784329 m!5762942))

(declare-fun m!5762944 () Bool)

(assert (=> b!4784329 m!5762944))

(declare-fun m!5762946 () Bool)

(assert (=> b!4784329 m!5762946))

(declare-fun m!5762948 () Bool)

(assert (=> b!4784329 m!5762948))

(declare-fun m!5762950 () Bool)

(assert (=> b!4784326 m!5762950))

(declare-fun m!5762952 () Bool)

(assert (=> b!4784321 m!5762952))

(declare-fun m!5762954 () Bool)

(assert (=> b!4784322 m!5762954))

(declare-fun m!5762956 () Bool)

(assert (=> b!4784322 m!5762956))

(declare-fun m!5762958 () Bool)

(assert (=> b!4784322 m!5762958))

(declare-fun m!5762960 () Bool)

(assert (=> b!4784322 m!5762960))

(declare-fun m!5762962 () Bool)

(assert (=> b!4784322 m!5762962))

(declare-fun m!5762964 () Bool)

(assert (=> b!4784322 m!5762964))

(declare-fun m!5762966 () Bool)

(assert (=> b!4784322 m!5762966))

(declare-fun m!5762968 () Bool)

(assert (=> b!4784322 m!5762968))

(declare-fun m!5762970 () Bool)

(assert (=> b!4784322 m!5762970))

(declare-fun m!5762972 () Bool)

(assert (=> b!4784322 m!5762972))

(declare-fun m!5762974 () Bool)

(assert (=> b!4784322 m!5762974))

(declare-fun m!5762976 () Bool)

(assert (=> b!4784322 m!5762976))

(assert (=> b!4784322 m!5762968))

(declare-fun m!5762978 () Bool)

(assert (=> b!4784322 m!5762978))

(assert (=> b!4784322 m!5762966))

(declare-fun m!5762980 () Bool)

(assert (=> b!4784322 m!5762980))

(declare-fun m!5762982 () Bool)

(assert (=> start!491708 m!5762982))

(declare-fun m!5762984 () Bool)

(assert (=> start!491708 m!5762984))

(declare-fun m!5762986 () Bool)

(assert (=> b!4784324 m!5762986))

(push 1)

(assert (not b!4784320))

(assert (not b!4784323))

(assert (not b!4784324))

(assert (not b!4784326))

(assert tp_is_empty!33275)

(assert (not b!4784322))

(assert (not start!491708))

(assert (not b!4784327))

(assert (not b!4784325))

(assert tp_is_empty!33273)

(assert (not b!4784329))

(assert (not b!4784319))

(assert (not b!4784321))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!4784381 () Bool)

(declare-fun e!2987130 () Bool)

(declare-datatypes ((List!54163 0))(
  ( (Nil!54039) (Cons!54039 (h!60459 K!15597) (t!361613 List!54163)) )
))
(declare-fun contains!17597 (List!54163 K!15597) Bool)

(declare-fun keys!19693 (ListMap!6237) List!54163)

(assert (=> b!4784381 (= e!2987130 (not (contains!17597 (keys!19693 (extractMap!2370 (toList!6765 lt!1946242))) key!6641)))))

(declare-fun b!4784382 () Bool)

(assert (=> b!4784382 false))

(declare-fun lt!1946337 () Unit!139424)

(declare-fun lt!1946332 () Unit!139424)

(assert (=> b!4784382 (= lt!1946337 lt!1946332)))

(declare-fun containsKey!3844 (List!54159 K!15597) Bool)

(assert (=> b!4784382 (containsKey!3844 (toList!6766 (extractMap!2370 (toList!6765 lt!1946242))) key!6641)))

(declare-fun lemmaInGetKeysListThenContainsKey!1050 (List!54159 K!15597) Unit!139424)

(assert (=> b!4784382 (= lt!1946332 (lemmaInGetKeysListThenContainsKey!1050 (toList!6766 (extractMap!2370 (toList!6765 lt!1946242))) key!6641))))

(declare-fun e!2987128 () Unit!139424)

(declare-fun Unit!139428 () Unit!139424)

(assert (=> b!4784382 (= e!2987128 Unit!139428)))

(declare-fun b!4784383 () Bool)

(declare-fun e!2987131 () List!54163)

(declare-fun getKeysList!1050 (List!54159) List!54163)

(assert (=> b!4784383 (= e!2987131 (getKeysList!1050 (toList!6766 (extractMap!2370 (toList!6765 lt!1946242)))))))

(declare-fun b!4784384 () Bool)

(declare-fun e!2987132 () Bool)

(declare-fun e!2987127 () Bool)

(assert (=> b!4784384 (= e!2987132 e!2987127)))

(declare-fun res!2032024 () Bool)

(assert (=> b!4784384 (=> (not res!2032024) (not e!2987127))))

(declare-datatypes ((Option!12969 0))(
  ( (None!12968) (Some!12968 (v!48212 V!15843)) )
))
(declare-fun isDefined!10112 (Option!12969) Bool)

(declare-fun getValueByKey!2300 (List!54159 K!15597) Option!12969)

(assert (=> b!4784384 (= res!2032024 (isDefined!10112 (getValueByKey!2300 (toList!6766 (extractMap!2370 (toList!6765 lt!1946242))) key!6641)))))

(declare-fun b!4784385 () Bool)

(declare-fun e!2987129 () Unit!139424)

(declare-fun lt!1946333 () Unit!139424)

(assert (=> b!4784385 (= e!2987129 lt!1946333)))

(declare-fun lt!1946339 () Unit!139424)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2093 (List!54159 K!15597) Unit!139424)

(assert (=> b!4784385 (= lt!1946339 (lemmaContainsKeyImpliesGetValueByKeyDefined!2093 (toList!6766 (extractMap!2370 (toList!6765 lt!1946242))) key!6641))))

(assert (=> b!4784385 (isDefined!10112 (getValueByKey!2300 (toList!6766 (extractMap!2370 (toList!6765 lt!1946242))) key!6641))))

(declare-fun lt!1946338 () Unit!139424)

(assert (=> b!4784385 (= lt!1946338 lt!1946339)))

(declare-fun lemmaInListThenGetKeysListContains!1045 (List!54159 K!15597) Unit!139424)

(assert (=> b!4784385 (= lt!1946333 (lemmaInListThenGetKeysListContains!1045 (toList!6766 (extractMap!2370 (toList!6765 lt!1946242))) key!6641))))

(declare-fun call!334815 () Bool)

(assert (=> b!4784385 call!334815))

(declare-fun d!1530345 () Bool)

(assert (=> d!1530345 e!2987132))

(declare-fun res!2032025 () Bool)

(assert (=> d!1530345 (=> res!2032025 e!2987132)))

(assert (=> d!1530345 (= res!2032025 e!2987130)))

(declare-fun res!2032023 () Bool)

(assert (=> d!1530345 (=> (not res!2032023) (not e!2987130))))

(declare-fun lt!1946335 () Bool)

(assert (=> d!1530345 (= res!2032023 (not lt!1946335))))

(declare-fun lt!1946334 () Bool)

(assert (=> d!1530345 (= lt!1946335 lt!1946334)))

(declare-fun lt!1946336 () Unit!139424)

(assert (=> d!1530345 (= lt!1946336 e!2987129)))

(declare-fun c!815588 () Bool)

(assert (=> d!1530345 (= c!815588 lt!1946334)))

(assert (=> d!1530345 (= lt!1946334 (containsKey!3844 (toList!6766 (extractMap!2370 (toList!6765 lt!1946242))) key!6641))))

(assert (=> d!1530345 (= (contains!17593 (extractMap!2370 (toList!6765 lt!1946242)) key!6641) lt!1946335)))

(declare-fun b!4784386 () Bool)

(declare-fun Unit!139429 () Unit!139424)

(assert (=> b!4784386 (= e!2987128 Unit!139429)))

(declare-fun b!4784387 () Bool)

(assert (=> b!4784387 (= e!2987127 (contains!17597 (keys!19693 (extractMap!2370 (toList!6765 lt!1946242))) key!6641))))

(declare-fun b!4784388 () Bool)

(assert (=> b!4784388 (= e!2987131 (keys!19693 (extractMap!2370 (toList!6765 lt!1946242))))))

(declare-fun bm!334810 () Bool)

(assert (=> bm!334810 (= call!334815 (contains!17597 e!2987131 key!6641))))

(declare-fun c!815590 () Bool)

(assert (=> bm!334810 (= c!815590 c!815588)))

(declare-fun b!4784389 () Bool)

(assert (=> b!4784389 (= e!2987129 e!2987128)))

(declare-fun c!815589 () Bool)

(assert (=> b!4784389 (= c!815589 call!334815)))

(assert (= (and d!1530345 c!815588) b!4784385))

(assert (= (and d!1530345 (not c!815588)) b!4784389))

(assert (= (and b!4784389 c!815589) b!4784382))

(assert (= (and b!4784389 (not c!815589)) b!4784386))

(assert (= (or b!4784385 b!4784389) bm!334810))

(assert (= (and bm!334810 c!815590) b!4784383))

(assert (= (and bm!334810 (not c!815590)) b!4784388))

(assert (= (and d!1530345 res!2032023) b!4784381))

(assert (= (and d!1530345 (not res!2032025)) b!4784384))

(assert (= (and b!4784384 res!2032024) b!4784387))

(declare-fun m!5763078 () Bool)

(assert (=> d!1530345 m!5763078))

(assert (=> b!4784381 m!5762906))

(declare-fun m!5763080 () Bool)

(assert (=> b!4784381 m!5763080))

(assert (=> b!4784381 m!5763080))

(declare-fun m!5763082 () Bool)

(assert (=> b!4784381 m!5763082))

(assert (=> b!4784387 m!5762906))

(assert (=> b!4784387 m!5763080))

(assert (=> b!4784387 m!5763080))

(assert (=> b!4784387 m!5763082))

(declare-fun m!5763084 () Bool)

(assert (=> b!4784384 m!5763084))

(assert (=> b!4784384 m!5763084))

(declare-fun m!5763086 () Bool)

(assert (=> b!4784384 m!5763086))

(assert (=> b!4784382 m!5763078))

(declare-fun m!5763088 () Bool)

(assert (=> b!4784382 m!5763088))

(declare-fun m!5763090 () Bool)

(assert (=> b!4784385 m!5763090))

(assert (=> b!4784385 m!5763084))

(assert (=> b!4784385 m!5763084))

(assert (=> b!4784385 m!5763086))

(declare-fun m!5763092 () Bool)

(assert (=> b!4784385 m!5763092))

(assert (=> b!4784388 m!5762906))

(assert (=> b!4784388 m!5763080))

(declare-fun m!5763094 () Bool)

(assert (=> b!4784383 m!5763094))

(declare-fun m!5763096 () Bool)

(assert (=> bm!334810 m!5763096))

(assert (=> b!4784323 d!1530345))

(declare-fun d!1530347 () Bool)

(assert (=> d!1530347 (contains!17591 (toList!6765 lt!1946242) (tuple2!56543 lt!1946239 lt!1946233))))

(declare-fun lt!1946342 () Unit!139424)

(declare-fun choose!34360 (ListLongMap!5187 (_ BitVec 64) List!54159) Unit!139424)

(assert (=> d!1530347 (= lt!1946342 (choose!34360 lt!1946242 lt!1946239 lt!1946233))))

(assert (=> d!1530347 (contains!17592 lt!1946242 lt!1946239)))

(assert (=> d!1530347 (= (lemmaGetValueImpliesTupleContained!622 lt!1946242 lt!1946239 lt!1946233) lt!1946342)))

(declare-fun bs!1153070 () Bool)

(assert (= bs!1153070 d!1530347))

(declare-fun m!5763098 () Bool)

(assert (=> bs!1153070 m!5763098))

(declare-fun m!5763100 () Bool)

(assert (=> bs!1153070 m!5763100))

(assert (=> bs!1153070 m!5762910))

(assert (=> b!4784323 d!1530347))

(declare-fun bs!1153071 () Bool)

(declare-fun d!1530349 () Bool)

(assert (= bs!1153071 (and d!1530349 start!491708)))

(declare-fun lambda!228908 () Int)

(assert (=> bs!1153071 (= lambda!228908 lambda!228892)))

(assert (=> d!1530349 (contains!17592 lt!1946242 (hash!4854 hashF!1687 key!6641))))

(declare-fun lt!1946345 () Unit!139424)

(declare-fun choose!34361 (ListLongMap!5187 K!15597 Hashable!6843) Unit!139424)

(assert (=> d!1530349 (= lt!1946345 (choose!34361 lt!1946242 key!6641 hashF!1687))))

(assert (=> d!1530349 (forall!12143 (toList!6765 lt!1946242) lambda!228908)))

(assert (=> d!1530349 (= (lemmaInGenMapThenLongMapContainsHash!1039 lt!1946242 key!6641 hashF!1687) lt!1946345)))

(declare-fun bs!1153072 () Bool)

(assert (= bs!1153072 d!1530349))

(assert (=> bs!1153072 m!5762972))

(assert (=> bs!1153072 m!5762972))

(declare-fun m!5763102 () Bool)

(assert (=> bs!1153072 m!5763102))

(declare-fun m!5763104 () Bool)

(assert (=> bs!1153072 m!5763104))

(declare-fun m!5763106 () Bool)

(assert (=> bs!1153072 m!5763106))

(assert (=> b!4784323 d!1530349))

(declare-fun d!1530351 () Bool)

(declare-fun e!2987137 () Bool)

(assert (=> d!1530351 e!2987137))

(declare-fun res!2032028 () Bool)

(assert (=> d!1530351 (=> res!2032028 e!2987137)))

(declare-fun lt!1946357 () Bool)

(assert (=> d!1530351 (= res!2032028 (not lt!1946357))))

(declare-fun lt!1946354 () Bool)

(assert (=> d!1530351 (= lt!1946357 lt!1946354)))

(declare-fun lt!1946355 () Unit!139424)

(declare-fun e!2987138 () Unit!139424)

(assert (=> d!1530351 (= lt!1946355 e!2987138)))

(declare-fun c!815593 () Bool)

(assert (=> d!1530351 (= c!815593 lt!1946354)))

(declare-fun containsKey!3845 (List!54160 (_ BitVec 64)) Bool)

(assert (=> d!1530351 (= lt!1946354 (containsKey!3845 (toList!6765 lt!1946242) lt!1946239))))

(assert (=> d!1530351 (= (contains!17592 lt!1946242 lt!1946239) lt!1946357)))

(declare-fun b!4784397 () Bool)

(declare-fun lt!1946356 () Unit!139424)

(assert (=> b!4784397 (= e!2987138 lt!1946356)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2094 (List!54160 (_ BitVec 64)) Unit!139424)

(assert (=> b!4784397 (= lt!1946356 (lemmaContainsKeyImpliesGetValueByKeyDefined!2094 (toList!6765 lt!1946242) lt!1946239))))

(declare-datatypes ((Option!12970 0))(
  ( (None!12969) (Some!12969 (v!48213 List!54159)) )
))
(declare-fun isDefined!10113 (Option!12970) Bool)

(declare-fun getValueByKey!2301 (List!54160 (_ BitVec 64)) Option!12970)

(assert (=> b!4784397 (isDefined!10113 (getValueByKey!2301 (toList!6765 lt!1946242) lt!1946239))))

(declare-fun b!4784398 () Bool)

(declare-fun Unit!139430 () Unit!139424)

(assert (=> b!4784398 (= e!2987138 Unit!139430)))

(declare-fun b!4784399 () Bool)

(assert (=> b!4784399 (= e!2987137 (isDefined!10113 (getValueByKey!2301 (toList!6765 lt!1946242) lt!1946239)))))

(assert (= (and d!1530351 c!815593) b!4784397))

(assert (= (and d!1530351 (not c!815593)) b!4784398))

(assert (= (and d!1530351 (not res!2032028)) b!4784399))

(declare-fun m!5763108 () Bool)

(assert (=> d!1530351 m!5763108))

(declare-fun m!5763110 () Bool)

(assert (=> b!4784397 m!5763110))

(declare-fun m!5763112 () Bool)

(assert (=> b!4784397 m!5763112))

(assert (=> b!4784397 m!5763112))

(declare-fun m!5763114 () Bool)

(assert (=> b!4784397 m!5763114))

(assert (=> b!4784399 m!5763112))

(assert (=> b!4784399 m!5763112))

(assert (=> b!4784399 m!5763114))

(assert (=> b!4784323 d!1530351))

(declare-fun d!1530355 () Bool)

(declare-fun lt!1946360 () Bool)

(declare-fun content!9666 (List!54160) (Set tuple2!56542))

(assert (=> d!1530355 (= lt!1946360 (set.member lt!1946241 (content!9666 (toList!6765 lt!1946242))))))

(declare-fun e!2987144 () Bool)

(assert (=> d!1530355 (= lt!1946360 e!2987144)))

(declare-fun res!2032033 () Bool)

(assert (=> d!1530355 (=> (not res!2032033) (not e!2987144))))

(assert (=> d!1530355 (= res!2032033 (is-Cons!54036 (toList!6765 lt!1946242)))))

(assert (=> d!1530355 (= (contains!17591 (toList!6765 lt!1946242) lt!1946241) lt!1946360)))

(declare-fun b!4784404 () Bool)

(declare-fun e!2987143 () Bool)

(assert (=> b!4784404 (= e!2987144 e!2987143)))

(declare-fun res!2032034 () Bool)

(assert (=> b!4784404 (=> res!2032034 e!2987143)))

(assert (=> b!4784404 (= res!2032034 (= (h!60456 (toList!6765 lt!1946242)) lt!1946241))))

(declare-fun b!4784405 () Bool)

(assert (=> b!4784405 (= e!2987143 (contains!17591 (t!361610 (toList!6765 lt!1946242)) lt!1946241))))

(assert (= (and d!1530355 res!2032033) b!4784404))

(assert (= (and b!4784404 (not res!2032034)) b!4784405))

(declare-fun m!5763116 () Bool)

(assert (=> d!1530355 m!5763116))

(declare-fun m!5763118 () Bool)

(assert (=> d!1530355 m!5763118))

(declare-fun m!5763120 () Bool)

(assert (=> b!4784405 m!5763120))

(assert (=> b!4784323 d!1530355))

(declare-fun d!1530357 () Bool)

(declare-fun get!18391 (Option!12970) List!54159)

(assert (=> d!1530357 (= (apply!12898 lt!1946242 lt!1946239) (get!18391 (getValueByKey!2301 (toList!6765 lt!1946242) lt!1946239)))))

(declare-fun bs!1153073 () Bool)

(assert (= bs!1153073 d!1530357))

(assert (=> bs!1153073 m!5763112))

(assert (=> bs!1153073 m!5763112))

(declare-fun m!5763122 () Bool)

(assert (=> bs!1153073 m!5763122))

(assert (=> b!4784323 d!1530357))

(declare-fun bs!1153074 () Bool)

(declare-fun d!1530359 () Bool)

(assert (= bs!1153074 (and d!1530359 start!491708)))

(declare-fun lambda!228911 () Int)

(assert (=> bs!1153074 (= lambda!228911 lambda!228892)))

(declare-fun bs!1153075 () Bool)

(assert (= bs!1153075 (and d!1530359 d!1530349)))

(assert (=> bs!1153075 (= lambda!228911 lambda!228908)))

(assert (=> d!1530359 (contains!17593 (extractMap!2370 (toList!6765 lt!1946242)) key!6641)))

(declare-fun lt!1946366 () Unit!139424)

(declare-fun choose!34362 (ListLongMap!5187 K!15597 Hashable!6843) Unit!139424)

(assert (=> d!1530359 (= lt!1946366 (choose!34362 lt!1946242 key!6641 hashF!1687))))

(assert (=> d!1530359 (forall!12143 (toList!6765 lt!1946242) lambda!228911)))

(assert (=> d!1530359 (= (lemmaListContainsThenExtractedMapContains!691 lt!1946242 key!6641 hashF!1687) lt!1946366)))

(declare-fun bs!1153076 () Bool)

(assert (= bs!1153076 d!1530359))

(assert (=> bs!1153076 m!5762906))

(assert (=> bs!1153076 m!5762906))

(assert (=> bs!1153076 m!5762908))

(declare-fun m!5763138 () Bool)

(assert (=> bs!1153076 m!5763138))

(declare-fun m!5763140 () Bool)

(assert (=> bs!1153076 m!5763140))

(assert (=> b!4784323 d!1530359))

(declare-fun d!1530365 () Bool)

(assert (=> d!1530365 (= (get!18389 lt!1946234) (v!48205 lt!1946234))))

(assert (=> b!4784323 d!1530365))

(declare-fun d!1530367 () Bool)

(declare-fun isEmpty!29375 (Option!12967) Bool)

(assert (=> d!1530367 (= (isDefined!10110 lt!1946234) (not (isEmpty!29375 lt!1946234)))))

(declare-fun bs!1153077 () Bool)

(assert (= bs!1153077 d!1530367))

(declare-fun m!5763142 () Bool)

(assert (=> bs!1153077 m!5763142))

(assert (=> b!4784323 d!1530367))

(declare-fun d!1530369 () Bool)

(declare-fun dynLambda!22024 (Int tuple2!56542) Bool)

(assert (=> d!1530369 (dynLambda!22024 lambda!228892 lt!1946241)))

(declare-fun lt!1946369 () Unit!139424)

(declare-fun choose!34363 (List!54160 Int tuple2!56542) Unit!139424)

(assert (=> d!1530369 (= lt!1946369 (choose!34363 (toList!6765 lt!1946242) lambda!228892 lt!1946241))))

(declare-fun e!2987162 () Bool)

(assert (=> d!1530369 e!2987162))

(declare-fun res!2032049 () Bool)

(assert (=> d!1530369 (=> (not res!2032049) (not e!2987162))))

(assert (=> d!1530369 (= res!2032049 (forall!12143 (toList!6765 lt!1946242) lambda!228892))))

(assert (=> d!1530369 (= (forallContained!4087 (toList!6765 lt!1946242) lambda!228892 lt!1946241) lt!1946369)))

(declare-fun b!4784432 () Bool)

(assert (=> b!4784432 (= e!2987162 (contains!17591 (toList!6765 lt!1946242) lt!1946241))))

(assert (= (and d!1530369 res!2032049) b!4784432))

(declare-fun b_lambda!186043 () Bool)

(assert (=> (not b_lambda!186043) (not d!1530369)))

(declare-fun m!5763144 () Bool)

(assert (=> d!1530369 m!5763144))

(declare-fun m!5763146 () Bool)

(assert (=> d!1530369 m!5763146))

(assert (=> d!1530369 m!5762940))

(assert (=> b!4784432 m!5762918))

(assert (=> b!4784323 d!1530369))

(declare-fun bs!1153078 () Bool)

(declare-fun d!1530371 () Bool)

(assert (= bs!1153078 (and d!1530371 start!491708)))

(declare-fun lambda!228918 () Int)

(assert (=> bs!1153078 (= lambda!228918 lambda!228892)))

(declare-fun bs!1153079 () Bool)

(assert (= bs!1153079 (and d!1530371 d!1530349)))

(assert (=> bs!1153079 (= lambda!228918 lambda!228908)))

(declare-fun bs!1153080 () Bool)

(assert (= bs!1153080 (and d!1530371 d!1530359)))

(assert (=> bs!1153080 (= lambda!228918 lambda!228911)))

(declare-fun b!4784459 () Bool)

(declare-fun res!2032064 () Bool)

(declare-fun e!2987179 () Bool)

(assert (=> b!4784459 (=> (not res!2032064) (not e!2987179))))

(assert (=> b!4784459 (= res!2032064 (allKeysSameHashInMap!2248 lt!1946242 hashF!1687))))

(declare-fun lt!1946407 () (_ BitVec 64))

(declare-fun b!4784462 () Bool)

(declare-fun lt!1946410 () List!54159)

(declare-fun e!2987180 () Bool)

(assert (=> b!4784462 (= e!2987180 (= (getValueByKey!2301 (toList!6765 lt!1946242) lt!1946407) (Some!12969 lt!1946410)))))

(declare-fun b!4784460 () Bool)

(declare-fun res!2032067 () Bool)

(assert (=> b!4784460 (=> (not res!2032067) (not e!2987179))))

(assert (=> b!4784460 (= res!2032067 (contains!17593 (extractMap!2370 (toList!6765 lt!1946242)) key!6641))))

(assert (=> d!1530371 e!2987179))

(declare-fun res!2032065 () Bool)

(assert (=> d!1530371 (=> (not res!2032065) (not e!2987179))))

(assert (=> d!1530371 (= res!2032065 (forall!12143 (toList!6765 lt!1946242) lambda!228918))))

(declare-fun lt!1946406 () Unit!139424)

(declare-fun choose!34364 (ListLongMap!5187 K!15597 Hashable!6843) Unit!139424)

(assert (=> d!1530371 (= lt!1946406 (choose!34364 lt!1946242 key!6641 hashF!1687))))

(assert (=> d!1530371 (forall!12143 (toList!6765 lt!1946242) lambda!228918)))

(assert (=> d!1530371 (= (lemmaInGenMapThenGetPairDefined!589 lt!1946242 key!6641 hashF!1687) lt!1946406)))

(declare-fun b!4784461 () Bool)

(assert (=> b!4784461 (= e!2987179 (isDefined!10110 (getPair!815 (apply!12898 lt!1946242 (hash!4854 hashF!1687 key!6641)) key!6641)))))

(declare-fun lt!1946409 () Unit!139424)

(assert (=> b!4784461 (= lt!1946409 (forallContained!4087 (toList!6765 lt!1946242) lambda!228918 (tuple2!56543 (hash!4854 hashF!1687 key!6641) (apply!12898 lt!1946242 (hash!4854 hashF!1687 key!6641)))))))

(declare-fun lt!1946412 () Unit!139424)

(declare-fun lt!1946411 () Unit!139424)

(assert (=> b!4784461 (= lt!1946412 lt!1946411)))

(assert (=> b!4784461 (contains!17591 (toList!6765 lt!1946242) (tuple2!56543 lt!1946407 lt!1946410))))

(assert (=> b!4784461 (= lt!1946411 (lemmaGetValueImpliesTupleContained!622 lt!1946242 lt!1946407 lt!1946410))))

(assert (=> b!4784461 e!2987180))

(declare-fun res!2032066 () Bool)

(assert (=> b!4784461 (=> (not res!2032066) (not e!2987180))))

(assert (=> b!4784461 (= res!2032066 (contains!17592 lt!1946242 lt!1946407))))

(assert (=> b!4784461 (= lt!1946410 (apply!12898 lt!1946242 (hash!4854 hashF!1687 key!6641)))))

(assert (=> b!4784461 (= lt!1946407 (hash!4854 hashF!1687 key!6641))))

(declare-fun lt!1946405 () Unit!139424)

(declare-fun lt!1946408 () Unit!139424)

(assert (=> b!4784461 (= lt!1946405 lt!1946408)))

(assert (=> b!4784461 (contains!17592 lt!1946242 (hash!4854 hashF!1687 key!6641))))

(assert (=> b!4784461 (= lt!1946408 (lemmaInGenMapThenLongMapContainsHash!1039 lt!1946242 key!6641 hashF!1687))))

(assert (= (and d!1530371 res!2032065) b!4784459))

(assert (= (and b!4784459 res!2032064) b!4784460))

(assert (= (and b!4784460 res!2032067) b!4784461))

(assert (= (and b!4784461 res!2032066) b!4784462))

(assert (=> b!4784460 m!5762906))

(assert (=> b!4784460 m!5762906))

(assert (=> b!4784460 m!5762908))

(assert (=> b!4784459 m!5762986))

(declare-fun m!5763154 () Bool)

(assert (=> b!4784462 m!5763154))

(declare-fun m!5763156 () Bool)

(assert (=> b!4784461 m!5763156))

(declare-fun m!5763158 () Bool)

(assert (=> b!4784461 m!5763158))

(assert (=> b!4784461 m!5762972))

(assert (=> b!4784461 m!5763102))

(declare-fun m!5763160 () Bool)

(assert (=> b!4784461 m!5763160))

(assert (=> b!4784461 m!5762972))

(declare-fun m!5763162 () Bool)

(assert (=> b!4784461 m!5763162))

(declare-fun m!5763164 () Bool)

(assert (=> b!4784461 m!5763164))

(declare-fun m!5763166 () Bool)

(assert (=> b!4784461 m!5763166))

(assert (=> b!4784461 m!5762900))

(declare-fun m!5763168 () Bool)

(assert (=> b!4784461 m!5763168))

(assert (=> b!4784461 m!5763162))

(assert (=> b!4784461 m!5763156))

(assert (=> b!4784461 m!5762972))

(declare-fun m!5763170 () Bool)

(assert (=> d!1530371 m!5763170))

(declare-fun m!5763172 () Bool)

(assert (=> d!1530371 m!5763172))

(assert (=> d!1530371 m!5763170))

(assert (=> b!4784323 d!1530371))

(declare-fun bs!1153081 () Bool)

(declare-fun d!1530375 () Bool)

(assert (= bs!1153081 (and d!1530375 start!491708)))

(declare-fun lambda!228921 () Int)

(assert (=> bs!1153081 (= lambda!228921 lambda!228892)))

(declare-fun bs!1153082 () Bool)

(assert (= bs!1153082 (and d!1530375 d!1530349)))

(assert (=> bs!1153082 (= lambda!228921 lambda!228908)))

(declare-fun bs!1153083 () Bool)

(assert (= bs!1153083 (and d!1530375 d!1530359)))

(assert (=> bs!1153083 (= lambda!228921 lambda!228911)))

(declare-fun bs!1153084 () Bool)

(assert (= bs!1153084 (and d!1530375 d!1530371)))

(assert (=> bs!1153084 (= lambda!228921 lambda!228918)))

(declare-fun lt!1946423 () ListMap!6237)

(declare-fun invariantList!1704 (List!54159) Bool)

(assert (=> d!1530375 (invariantList!1704 (toList!6766 lt!1946423))))

(declare-fun e!2987195 () ListMap!6237)

(assert (=> d!1530375 (= lt!1946423 e!2987195)))

(declare-fun c!815611 () Bool)

(assert (=> d!1530375 (= c!815611 (is-Cons!54036 (toList!6765 lt!1946242)))))

(assert (=> d!1530375 (forall!12143 (toList!6765 lt!1946242) lambda!228921)))

(assert (=> d!1530375 (= (extractMap!2370 (toList!6765 lt!1946242)) lt!1946423)))

(declare-fun b!4784482 () Bool)

(declare-fun addToMapMapFromBucket!1669 (List!54159 ListMap!6237) ListMap!6237)

(assert (=> b!4784482 (= e!2987195 (addToMapMapFromBucket!1669 (_2!31565 (h!60456 (toList!6765 lt!1946242))) (extractMap!2370 (t!361610 (toList!6765 lt!1946242)))))))

(declare-fun b!4784483 () Bool)

(assert (=> b!4784483 (= e!2987195 (ListMap!6238 Nil!54035))))

(assert (= (and d!1530375 c!815611) b!4784482))

(assert (= (and d!1530375 (not c!815611)) b!4784483))

(declare-fun m!5763196 () Bool)

(assert (=> d!1530375 m!5763196))

(declare-fun m!5763198 () Bool)

(assert (=> d!1530375 m!5763198))

(declare-fun m!5763200 () Bool)

(assert (=> b!4784482 m!5763200))

(assert (=> b!4784482 m!5763200))

(declare-fun m!5763202 () Bool)

(assert (=> b!4784482 m!5763202))

(assert (=> b!4784323 d!1530375))

(declare-fun b!4784500 () Bool)

(declare-fun e!2987209 () Bool)

(assert (=> b!4784500 (= e!2987209 (not (containsKey!3842 lt!1946233 key!6641)))))

(declare-fun b!4784501 () Bool)

(declare-fun e!2987207 () Option!12967)

(assert (=> b!4784501 (= e!2987207 None!12966)))

(declare-fun b!4784502 () Bool)

(declare-fun e!2987208 () Option!12967)

(assert (=> b!4784502 (= e!2987208 e!2987207)))

(declare-fun c!815617 () Bool)

(assert (=> b!4784502 (= c!815617 (is-Cons!54035 lt!1946233))))

(declare-fun b!4784503 () Bool)

(declare-fun e!2987206 () Bool)

(declare-fun lt!1946426 () Option!12967)

(declare-fun contains!17598 (List!54159 tuple2!56540) Bool)

(assert (=> b!4784503 (= e!2987206 (contains!17598 lt!1946233 (get!18389 lt!1946426)))))

(declare-fun b!4784504 () Bool)

(assert (=> b!4784504 (= e!2987207 (getPair!815 (t!361609 lt!1946233) key!6641))))

(declare-fun b!4784505 () Bool)

(declare-fun e!2987210 () Bool)

(assert (=> b!4784505 (= e!2987210 e!2987206)))

(declare-fun res!2032087 () Bool)

(assert (=> b!4784505 (=> (not res!2032087) (not e!2987206))))

(assert (=> b!4784505 (= res!2032087 (isDefined!10110 lt!1946426))))

(declare-fun b!4784506 () Bool)

(declare-fun res!2032085 () Bool)

(assert (=> b!4784506 (=> (not res!2032085) (not e!2987206))))

(assert (=> b!4784506 (= res!2032085 (= (_1!31564 (get!18389 lt!1946426)) key!6641))))

(declare-fun d!1530381 () Bool)

(assert (=> d!1530381 e!2987210))

(declare-fun res!2032088 () Bool)

(assert (=> d!1530381 (=> res!2032088 e!2987210)))

(assert (=> d!1530381 (= res!2032088 e!2987209)))

(declare-fun res!2032086 () Bool)

(assert (=> d!1530381 (=> (not res!2032086) (not e!2987209))))

(assert (=> d!1530381 (= res!2032086 (isEmpty!29375 lt!1946426))))

(assert (=> d!1530381 (= lt!1946426 e!2987208)))

(declare-fun c!815616 () Bool)

(assert (=> d!1530381 (= c!815616 (and (is-Cons!54035 lt!1946233) (= (_1!31564 (h!60455 lt!1946233)) key!6641)))))

(declare-fun noDuplicateKeys!2302 (List!54159) Bool)

(assert (=> d!1530381 (noDuplicateKeys!2302 lt!1946233)))

(assert (=> d!1530381 (= (getPair!815 lt!1946233 key!6641) lt!1946426)))

(declare-fun b!4784507 () Bool)

(assert (=> b!4784507 (= e!2987208 (Some!12966 (h!60455 lt!1946233)))))

(assert (= (and d!1530381 c!815616) b!4784507))

(assert (= (and d!1530381 (not c!815616)) b!4784502))

(assert (= (and b!4784502 c!815617) b!4784504))

(assert (= (and b!4784502 (not c!815617)) b!4784501))

(assert (= (and d!1530381 res!2032086) b!4784500))

(assert (= (and d!1530381 (not res!2032088)) b!4784505))

(assert (= (and b!4784505 res!2032087) b!4784506))

(assert (= (and b!4784506 res!2032085) b!4784503))

(declare-fun m!5763204 () Bool)

(assert (=> b!4784504 m!5763204))

(declare-fun m!5763206 () Bool)

(assert (=> b!4784500 m!5763206))

(declare-fun m!5763208 () Bool)

(assert (=> b!4784506 m!5763208))

(declare-fun m!5763210 () Bool)

(assert (=> b!4784505 m!5763210))

(assert (=> b!4784503 m!5763208))

(assert (=> b!4784503 m!5763208))

(declare-fun m!5763212 () Bool)

(assert (=> b!4784503 m!5763212))

(declare-fun m!5763214 () Bool)

(assert (=> d!1530381 m!5763214))

(declare-fun m!5763216 () Bool)

(assert (=> d!1530381 m!5763216))

(assert (=> b!4784323 d!1530381))

(declare-fun d!1530383 () Bool)

(declare-fun res!2032093 () Bool)

(declare-fun e!2987215 () Bool)

(assert (=> d!1530383 (=> res!2032093 e!2987215)))

(assert (=> d!1530383 (= res!2032093 (is-Nil!54036 (toList!6765 lt!1946242)))))

(assert (=> d!1530383 (= (forall!12143 (toList!6765 lt!1946242) lambda!228892) e!2987215)))

(declare-fun b!4784512 () Bool)

(declare-fun e!2987216 () Bool)

(assert (=> b!4784512 (= e!2987215 e!2987216)))

(declare-fun res!2032094 () Bool)

(assert (=> b!4784512 (=> (not res!2032094) (not e!2987216))))

(assert (=> b!4784512 (= res!2032094 (dynLambda!22024 lambda!228892 (h!60456 (toList!6765 lt!1946242))))))

(declare-fun b!4784513 () Bool)

(assert (=> b!4784513 (= e!2987216 (forall!12143 (t!361610 (toList!6765 lt!1946242)) lambda!228892))))

(assert (= (and d!1530383 (not res!2032093)) b!4784512))

(assert (= (and b!4784512 res!2032094) b!4784513))

(declare-fun b_lambda!186045 () Bool)

(assert (=> (not b_lambda!186045) (not b!4784512)))

(declare-fun m!5763218 () Bool)

(assert (=> b!4784512 m!5763218))

(declare-fun m!5763220 () Bool)

(assert (=> b!4784513 m!5763220))

(assert (=> b!4784329 d!1530383))

(declare-fun bs!1153086 () Bool)

(declare-fun d!1530385 () Bool)

(assert (= bs!1153086 (and d!1530385 d!1530371)))

(declare-fun lambda!228924 () Int)

(assert (=> bs!1153086 (= lambda!228924 lambda!228918)))

(declare-fun bs!1153087 () Bool)

(assert (= bs!1153087 (and d!1530385 d!1530359)))

(assert (=> bs!1153087 (= lambda!228924 lambda!228911)))

(declare-fun bs!1153088 () Bool)

(assert (= bs!1153088 (and d!1530385 start!491708)))

(assert (=> bs!1153088 (= lambda!228924 lambda!228892)))

(declare-fun bs!1153089 () Bool)

(assert (= bs!1153089 (and d!1530385 d!1530375)))

(assert (=> bs!1153089 (= lambda!228924 lambda!228921)))

(declare-fun bs!1153090 () Bool)

(assert (= bs!1153090 (and d!1530385 d!1530349)))

(assert (=> bs!1153090 (= lambda!228924 lambda!228908)))

(assert (=> d!1530385 (containsKeyBiggerList!499 (tail!9207 (toList!6765 lm!2709)) key!6641)))

(declare-fun lt!1946437 () Unit!139424)

(declare-fun choose!34365 (ListLongMap!5187 K!15597 Hashable!6843) Unit!139424)

(assert (=> d!1530385 (= lt!1946437 (choose!34365 lm!2709 key!6641 hashF!1687))))

(assert (=> d!1530385 (forall!12143 (toList!6765 lm!2709) lambda!228924)))

(assert (=> d!1530385 (= (lemmaInBiggerListButNotHeadThenTail!23 lm!2709 key!6641 hashF!1687) lt!1946437)))

(declare-fun bs!1153091 () Bool)

(assert (= bs!1153091 d!1530385))

(assert (=> bs!1153091 m!5762942))

(assert (=> bs!1153091 m!5762942))

(assert (=> bs!1153091 m!5762944))

(declare-fun m!5763222 () Bool)

(assert (=> bs!1153091 m!5763222))

(declare-fun m!5763224 () Bool)

(assert (=> bs!1153091 m!5763224))

(assert (=> b!4784329 d!1530385))

(declare-fun d!1530387 () Bool)

(assert (=> d!1530387 (= (tail!9207 (toList!6765 lm!2709)) (t!361610 (toList!6765 lm!2709)))))

(assert (=> b!4784329 d!1530387))

(declare-fun d!1530389 () Bool)

(assert (=> d!1530389 (= (tail!9206 lm!2709) (ListLongMap!5188 (tail!9207 (toList!6765 lm!2709))))))

(declare-fun bs!1153092 () Bool)

(assert (= bs!1153092 d!1530389))

(assert (=> bs!1153092 m!5762942))

(assert (=> b!4784329 d!1530389))

(declare-fun d!1530391 () Bool)

(declare-fun res!2032105 () Bool)

(declare-fun e!2987231 () Bool)

(assert (=> d!1530391 (=> res!2032105 e!2987231)))

(declare-fun e!2987230 () Bool)

(assert (=> d!1530391 (= res!2032105 e!2987230)))

(declare-fun res!2032104 () Bool)

(assert (=> d!1530391 (=> (not res!2032104) (not e!2987230))))

(assert (=> d!1530391 (= res!2032104 (is-Cons!54036 (tail!9207 (toList!6765 lm!2709))))))

(assert (=> d!1530391 (= (containsKeyBiggerList!499 (tail!9207 (toList!6765 lm!2709)) key!6641) e!2987231)))

(declare-fun b!4784529 () Bool)

(assert (=> b!4784529 (= e!2987230 (containsKey!3842 (_2!31565 (h!60456 (tail!9207 (toList!6765 lm!2709)))) key!6641))))

(declare-fun b!4784530 () Bool)

(declare-fun e!2987229 () Bool)

(assert (=> b!4784530 (= e!2987231 e!2987229)))

(declare-fun res!2032106 () Bool)

(assert (=> b!4784530 (=> (not res!2032106) (not e!2987229))))

(assert (=> b!4784530 (= res!2032106 (is-Cons!54036 (tail!9207 (toList!6765 lm!2709))))))

(declare-fun b!4784531 () Bool)

(assert (=> b!4784531 (= e!2987229 (containsKeyBiggerList!499 (t!361610 (tail!9207 (toList!6765 lm!2709))) key!6641))))

(assert (= (and d!1530391 res!2032104) b!4784529))

(assert (= (and d!1530391 (not res!2032105)) b!4784530))

(assert (= (and b!4784530 res!2032106) b!4784531))

(declare-fun m!5763232 () Bool)

(assert (=> b!4784529 m!5763232))

(declare-fun m!5763234 () Bool)

(assert (=> b!4784531 m!5763234))

(assert (=> b!4784329 d!1530391))

(declare-fun bs!1153093 () Bool)

(declare-fun d!1530393 () Bool)

(assert (= bs!1153093 (and d!1530393 d!1530385)))

(declare-fun lambda!228927 () Int)

(assert (=> bs!1153093 (not (= lambda!228927 lambda!228924))))

(declare-fun bs!1153094 () Bool)

(assert (= bs!1153094 (and d!1530393 d!1530371)))

(assert (=> bs!1153094 (not (= lambda!228927 lambda!228918))))

(declare-fun bs!1153095 () Bool)

(assert (= bs!1153095 (and d!1530393 d!1530359)))

(assert (=> bs!1153095 (not (= lambda!228927 lambda!228911))))

(declare-fun bs!1153096 () Bool)

(assert (= bs!1153096 (and d!1530393 start!491708)))

(assert (=> bs!1153096 (not (= lambda!228927 lambda!228892))))

(declare-fun bs!1153097 () Bool)

(assert (= bs!1153097 (and d!1530393 d!1530375)))

(assert (=> bs!1153097 (not (= lambda!228927 lambda!228921))))

(declare-fun bs!1153098 () Bool)

(assert (= bs!1153098 (and d!1530393 d!1530349)))

(assert (=> bs!1153098 (not (= lambda!228927 lambda!228908))))

(assert (=> d!1530393 true))

(assert (=> d!1530393 (= (allKeysSameHashInMap!2248 lm!2709 hashF!1687) (forall!12143 (toList!6765 lm!2709) lambda!228927))))

(declare-fun bs!1153099 () Bool)

(assert (= bs!1153099 d!1530393))

(declare-fun m!5763238 () Bool)

(assert (=> bs!1153099 m!5763238))

(assert (=> b!4784319 d!1530393))

(declare-fun bs!1153100 () Bool)

(declare-fun d!1530397 () Bool)

(assert (= bs!1153100 (and d!1530397 d!1530393)))

(declare-fun lambda!228928 () Int)

(assert (=> bs!1153100 (= lambda!228928 lambda!228927)))

(declare-fun bs!1153101 () Bool)

(assert (= bs!1153101 (and d!1530397 d!1530385)))

(assert (=> bs!1153101 (not (= lambda!228928 lambda!228924))))

(declare-fun bs!1153102 () Bool)

(assert (= bs!1153102 (and d!1530397 d!1530371)))

(assert (=> bs!1153102 (not (= lambda!228928 lambda!228918))))

(declare-fun bs!1153103 () Bool)

(assert (= bs!1153103 (and d!1530397 d!1530359)))

(assert (=> bs!1153103 (not (= lambda!228928 lambda!228911))))

(declare-fun bs!1153104 () Bool)

(assert (= bs!1153104 (and d!1530397 start!491708)))

(assert (=> bs!1153104 (not (= lambda!228928 lambda!228892))))

(declare-fun bs!1153105 () Bool)

(assert (= bs!1153105 (and d!1530397 d!1530375)))

(assert (=> bs!1153105 (not (= lambda!228928 lambda!228921))))

(declare-fun bs!1153106 () Bool)

(assert (= bs!1153106 (and d!1530397 d!1530349)))

(assert (=> bs!1153106 (not (= lambda!228928 lambda!228908))))

(assert (=> d!1530397 true))

(assert (=> d!1530397 (= (allKeysSameHashInMap!2248 lt!1946242 hashF!1687) (forall!12143 (toList!6765 lt!1946242) lambda!228928))))

(declare-fun bs!1153107 () Bool)

(assert (= bs!1153107 d!1530397))

(declare-fun m!5763240 () Bool)

(assert (=> bs!1153107 m!5763240))

(assert (=> b!4784324 d!1530397))

(declare-fun d!1530399 () Bool)

(declare-fun res!2032107 () Bool)

(declare-fun e!2987232 () Bool)

(assert (=> d!1530399 (=> res!2032107 e!2987232)))

(assert (=> d!1530399 (= res!2032107 (is-Nil!54036 (toList!6765 lm!2709)))))

(assert (=> d!1530399 (= (forall!12143 (toList!6765 lm!2709) lambda!228892) e!2987232)))

(declare-fun b!4784534 () Bool)

(declare-fun e!2987233 () Bool)

(assert (=> b!4784534 (= e!2987232 e!2987233)))

(declare-fun res!2032108 () Bool)

(assert (=> b!4784534 (=> (not res!2032108) (not e!2987233))))

(assert (=> b!4784534 (= res!2032108 (dynLambda!22024 lambda!228892 (h!60456 (toList!6765 lm!2709))))))

(declare-fun b!4784535 () Bool)

(assert (=> b!4784535 (= e!2987233 (forall!12143 (t!361610 (toList!6765 lm!2709)) lambda!228892))))

(assert (= (and d!1530399 (not res!2032107)) b!4784534))

(assert (= (and b!4784534 res!2032108) b!4784535))

(declare-fun b_lambda!186047 () Bool)

(assert (=> (not b_lambda!186047) (not b!4784534)))

(declare-fun m!5763242 () Bool)

(assert (=> b!4784534 m!5763242))

(declare-fun m!5763244 () Bool)

(assert (=> b!4784535 m!5763244))

(assert (=> start!491708 d!1530399))

(declare-fun d!1530401 () Bool)

(declare-fun isStrictlySorted!855 (List!54160) Bool)

(assert (=> d!1530401 (= (inv!69624 lm!2709) (isStrictlySorted!855 (toList!6765 lm!2709)))))

(declare-fun bs!1153108 () Bool)

(assert (= bs!1153108 d!1530401))

(declare-fun m!5763246 () Bool)

(assert (=> bs!1153108 m!5763246))

(assert (=> start!491708 d!1530401))

(declare-fun d!1530403 () Bool)

(declare-fun c!815623 () Bool)

(declare-fun e!2987239 () Bool)

(assert (=> d!1530403 (= c!815623 e!2987239)))

(declare-fun res!2032111 () Bool)

(assert (=> d!1530403 (=> (not res!2032111) (not e!2987239))))

(assert (=> d!1530403 (= res!2032111 (is-Cons!54036 (toList!6765 lm!2709)))))

(declare-fun e!2987238 () V!15843)

(assert (=> d!1530403 (= (getValue!49 (toList!6765 lm!2709) key!6641) e!2987238)))

(declare-fun b!4784544 () Bool)

(assert (=> b!4784544 (= e!2987239 (containsKey!3842 (_2!31565 (h!60456 (toList!6765 lm!2709))) key!6641))))

(declare-fun b!4784542 () Bool)

(assert (=> b!4784542 (= e!2987238 (_2!31564 (get!18389 (getPair!815 (_2!31565 (h!60456 (toList!6765 lm!2709))) key!6641))))))

(declare-fun b!4784543 () Bool)

(assert (=> b!4784543 (= e!2987238 (getValue!49 (t!361610 (toList!6765 lm!2709)) key!6641))))

(assert (= (and d!1530403 res!2032111) b!4784544))

(assert (= (and d!1530403 c!815623) b!4784542))

(assert (= (and d!1530403 (not c!815623)) b!4784543))

(assert (=> b!4784544 m!5762932))

(declare-fun m!5763248 () Bool)

(assert (=> b!4784542 m!5763248))

(assert (=> b!4784542 m!5763248))

(declare-fun m!5763250 () Bool)

(assert (=> b!4784542 m!5763250))

(declare-fun m!5763252 () Bool)

(assert (=> b!4784543 m!5763252))

(assert (=> b!4784320 d!1530403))

(declare-fun d!1530405 () Bool)

(declare-fun c!815624 () Bool)

(declare-fun e!2987241 () Bool)

(assert (=> d!1530405 (= c!815624 e!2987241)))

(declare-fun res!2032112 () Bool)

(assert (=> d!1530405 (=> (not res!2032112) (not e!2987241))))

(assert (=> d!1530405 (= res!2032112 (is-Cons!54036 (toList!6765 lt!1946242)))))

(declare-fun e!2987240 () V!15843)

(assert (=> d!1530405 (= (getValue!49 (toList!6765 lt!1946242) key!6641) e!2987240)))

(declare-fun b!4784547 () Bool)

(assert (=> b!4784547 (= e!2987241 (containsKey!3842 (_2!31565 (h!60456 (toList!6765 lt!1946242))) key!6641))))

(declare-fun b!4784545 () Bool)

(assert (=> b!4784545 (= e!2987240 (_2!31564 (get!18389 (getPair!815 (_2!31565 (h!60456 (toList!6765 lt!1946242))) key!6641))))))

(declare-fun b!4784546 () Bool)

(assert (=> b!4784546 (= e!2987240 (getValue!49 (t!361610 (toList!6765 lt!1946242)) key!6641))))

(assert (= (and d!1530405 res!2032112) b!4784547))

(assert (= (and d!1530405 c!815624) b!4784545))

(assert (= (and d!1530405 (not c!815624)) b!4784546))

(declare-fun m!5763254 () Bool)

(assert (=> b!4784547 m!5763254))

(declare-fun m!5763256 () Bool)

(assert (=> b!4784545 m!5763256))

(assert (=> b!4784545 m!5763256))

(declare-fun m!5763258 () Bool)

(assert (=> b!4784545 m!5763258))

(declare-fun m!5763260 () Bool)

(assert (=> b!4784546 m!5763260))

(assert (=> b!4784320 d!1530405))

(declare-fun bs!1153109 () Bool)

(declare-fun d!1530407 () Bool)

(assert (= bs!1153109 (and d!1530407 d!1530393)))

(declare-fun lambda!228931 () Int)

(assert (=> bs!1153109 (not (= lambda!228931 lambda!228927))))

(declare-fun bs!1153110 () Bool)

(assert (= bs!1153110 (and d!1530407 d!1530385)))

(assert (=> bs!1153110 (= lambda!228931 lambda!228924)))

(declare-fun bs!1153111 () Bool)

(assert (= bs!1153111 (and d!1530407 d!1530371)))

(assert (=> bs!1153111 (= lambda!228931 lambda!228918)))

(declare-fun bs!1153112 () Bool)

(assert (= bs!1153112 (and d!1530407 d!1530359)))

(assert (=> bs!1153112 (= lambda!228931 lambda!228911)))

(declare-fun bs!1153113 () Bool)

(assert (= bs!1153113 (and d!1530407 start!491708)))

(assert (=> bs!1153113 (= lambda!228931 lambda!228892)))

(declare-fun bs!1153114 () Bool)

(assert (= bs!1153114 (and d!1530407 d!1530397)))

(assert (=> bs!1153114 (not (= lambda!228931 lambda!228928))))

(declare-fun bs!1153115 () Bool)

(assert (= bs!1153115 (and d!1530407 d!1530375)))

(assert (=> bs!1153115 (= lambda!228931 lambda!228921)))

(declare-fun bs!1153116 () Bool)

(assert (= bs!1153116 (and d!1530407 d!1530349)))

(assert (=> bs!1153116 (= lambda!228931 lambda!228908)))

(assert (=> d!1530407 (= (getValue!49 (toList!6765 lt!1946242) key!6641) v!11584)))

(declare-fun lt!1946444 () Unit!139424)

(declare-fun choose!34366 (ListLongMap!5187 K!15597 V!15843 Hashable!6843) Unit!139424)

(assert (=> d!1530407 (= lt!1946444 (choose!34366 lt!1946242 key!6641 v!11584 hashF!1687))))

(assert (=> d!1530407 (forall!12143 (toList!6765 lt!1946242) lambda!228931)))

(assert (=> d!1530407 (= (lemmaGetValueEquivToGetPair!47 lt!1946242 key!6641 v!11584 hashF!1687) lt!1946444)))

(declare-fun bs!1153117 () Bool)

(assert (= bs!1153117 d!1530407))

(assert (=> bs!1153117 m!5762928))

(declare-fun m!5763262 () Bool)

(assert (=> bs!1153117 m!5763262))

(declare-fun m!5763264 () Bool)

(assert (=> bs!1153117 m!5763264))

(assert (=> b!4784320 d!1530407))

(declare-fun d!1530409 () Bool)

(declare-fun res!2032114 () Bool)

(declare-fun e!2987244 () Bool)

(assert (=> d!1530409 (=> res!2032114 e!2987244)))

(declare-fun e!2987243 () Bool)

(assert (=> d!1530409 (= res!2032114 e!2987243)))

(declare-fun res!2032113 () Bool)

(assert (=> d!1530409 (=> (not res!2032113) (not e!2987243))))

(assert (=> d!1530409 (= res!2032113 (is-Cons!54036 (toList!6765 lt!1946242)))))

(assert (=> d!1530409 (= (containsKeyBiggerList!499 (toList!6765 lt!1946242) key!6641) e!2987244)))

(declare-fun b!4784548 () Bool)

(assert (=> b!4784548 (= e!2987243 (containsKey!3842 (_2!31565 (h!60456 (toList!6765 lt!1946242))) key!6641))))

(declare-fun b!4784549 () Bool)

(declare-fun e!2987242 () Bool)

(assert (=> b!4784549 (= e!2987244 e!2987242)))

(declare-fun res!2032115 () Bool)

(assert (=> b!4784549 (=> (not res!2032115) (not e!2987242))))

(assert (=> b!4784549 (= res!2032115 (is-Cons!54036 (toList!6765 lt!1946242)))))

(declare-fun b!4784550 () Bool)

(assert (=> b!4784550 (= e!2987242 (containsKeyBiggerList!499 (t!361610 (toList!6765 lt!1946242)) key!6641))))

(assert (= (and d!1530409 res!2032113) b!4784548))

(assert (= (and d!1530409 (not res!2032114)) b!4784549))

(assert (= (and b!4784549 res!2032115) b!4784550))

(assert (=> b!4784548 m!5763254))

(declare-fun m!5763266 () Bool)

(assert (=> b!4784550 m!5763266))

(assert (=> b!4784321 d!1530409))

(declare-fun d!1530411 () Bool)

(declare-fun res!2032117 () Bool)

(declare-fun e!2987247 () Bool)

(assert (=> d!1530411 (=> res!2032117 e!2987247)))

(declare-fun e!2987246 () Bool)

(assert (=> d!1530411 (= res!2032117 e!2987246)))

(declare-fun res!2032116 () Bool)

(assert (=> d!1530411 (=> (not res!2032116) (not e!2987246))))

(assert (=> d!1530411 (= res!2032116 (is-Cons!54036 (toList!6765 lm!2709)))))

(assert (=> d!1530411 (= (containsKeyBiggerList!499 (toList!6765 lm!2709) key!6641) e!2987247)))

(declare-fun b!4784551 () Bool)

(assert (=> b!4784551 (= e!2987246 (containsKey!3842 (_2!31565 (h!60456 (toList!6765 lm!2709))) key!6641))))

(declare-fun b!4784552 () Bool)

(declare-fun e!2987245 () Bool)

(assert (=> b!4784552 (= e!2987247 e!2987245)))

(declare-fun res!2032118 () Bool)

(assert (=> b!4784552 (=> (not res!2032118) (not e!2987245))))

(assert (=> b!4784552 (= res!2032118 (is-Cons!54036 (toList!6765 lm!2709)))))

(declare-fun b!4784553 () Bool)

(assert (=> b!4784553 (= e!2987245 (containsKeyBiggerList!499 (t!361610 (toList!6765 lm!2709)) key!6641))))

(assert (= (and d!1530411 res!2032116) b!4784551))

(assert (= (and d!1530411 (not res!2032117)) b!4784552))

(assert (= (and b!4784552 res!2032118) b!4784553))

(assert (=> b!4784551 m!5762932))

(declare-fun m!5763268 () Bool)

(assert (=> b!4784553 m!5763268))

(assert (=> b!4784326 d!1530411))

(declare-fun d!1530413 () Bool)

(declare-fun res!2032123 () Bool)

(declare-fun e!2987252 () Bool)

(assert (=> d!1530413 (=> res!2032123 e!2987252)))

(assert (=> d!1530413 (= res!2032123 (and (is-Cons!54035 (_2!31565 (h!60456 (toList!6765 lm!2709)))) (= (_1!31564 (h!60455 (_2!31565 (h!60456 (toList!6765 lm!2709))))) key!6641)))))

(assert (=> d!1530413 (= (containsKey!3842 (_2!31565 (h!60456 (toList!6765 lm!2709))) key!6641) e!2987252)))

(declare-fun b!4784558 () Bool)

(declare-fun e!2987253 () Bool)

(assert (=> b!4784558 (= e!2987252 e!2987253)))

(declare-fun res!2032124 () Bool)

(assert (=> b!4784558 (=> (not res!2032124) (not e!2987253))))

(assert (=> b!4784558 (= res!2032124 (is-Cons!54035 (_2!31565 (h!60456 (toList!6765 lm!2709)))))))

(declare-fun b!4784559 () Bool)

(assert (=> b!4784559 (= e!2987253 (containsKey!3842 (t!361609 (_2!31565 (h!60456 (toList!6765 lm!2709)))) key!6641))))

(assert (= (and d!1530413 (not res!2032123)) b!4784558))

(assert (= (and b!4784558 res!2032124) b!4784559))

(declare-fun m!5763270 () Bool)

(assert (=> b!4784559 m!5763270))

(assert (=> b!4784327 d!1530413))

(declare-fun d!1530415 () Bool)

(declare-fun res!2032125 () Bool)

(declare-fun e!2987254 () Bool)

(assert (=> d!1530415 (=> res!2032125 e!2987254)))

(assert (=> d!1530415 (= res!2032125 (and (is-Cons!54035 (apply!12898 lm!2709 (_1!31565 (h!60456 (toList!6765 lm!2709))))) (= (_1!31564 (h!60455 (apply!12898 lm!2709 (_1!31565 (h!60456 (toList!6765 lm!2709)))))) key!6641)))))

(assert (=> d!1530415 (= (containsKey!3842 (apply!12898 lm!2709 (_1!31565 (h!60456 (toList!6765 lm!2709)))) key!6641) e!2987254)))

(declare-fun b!4784560 () Bool)

(declare-fun e!2987255 () Bool)

(assert (=> b!4784560 (= e!2987254 e!2987255)))

(declare-fun res!2032126 () Bool)

(assert (=> b!4784560 (=> (not res!2032126) (not e!2987255))))

(assert (=> b!4784560 (= res!2032126 (is-Cons!54035 (apply!12898 lm!2709 (_1!31565 (h!60456 (toList!6765 lm!2709))))))))

(declare-fun b!4784561 () Bool)

(assert (=> b!4784561 (= e!2987255 (containsKey!3842 (t!361609 (apply!12898 lm!2709 (_1!31565 (h!60456 (toList!6765 lm!2709))))) key!6641))))

(assert (= (and d!1530415 (not res!2032125)) b!4784560))

(assert (= (and b!4784560 res!2032126) b!4784561))

(declare-fun m!5763272 () Bool)

(assert (=> b!4784561 m!5763272))

(assert (=> b!4784327 d!1530415))

(declare-fun d!1530417 () Bool)

(assert (=> d!1530417 (= (apply!12898 lm!2709 (_1!31565 (h!60456 (toList!6765 lm!2709)))) (get!18391 (getValueByKey!2301 (toList!6765 lm!2709) (_1!31565 (h!60456 (toList!6765 lm!2709))))))))

(declare-fun bs!1153118 () Bool)

(assert (= bs!1153118 d!1530417))

(declare-fun m!5763274 () Bool)

(assert (=> bs!1153118 m!5763274))

(assert (=> bs!1153118 m!5763274))

(declare-fun m!5763276 () Bool)

(assert (=> bs!1153118 m!5763276))

(assert (=> b!4784327 d!1530417))

(declare-fun bs!1153119 () Bool)

(declare-fun d!1530419 () Bool)

(assert (= bs!1153119 (and d!1530419 d!1530393)))

(declare-fun lambda!228934 () Int)

(assert (=> bs!1153119 (not (= lambda!228934 lambda!228927))))

(declare-fun bs!1153120 () Bool)

(assert (= bs!1153120 (and d!1530419 d!1530385)))

(assert (=> bs!1153120 (= lambda!228934 lambda!228924)))

(declare-fun bs!1153121 () Bool)

(assert (= bs!1153121 (and d!1530419 d!1530359)))

(assert (=> bs!1153121 (= lambda!228934 lambda!228911)))

(declare-fun bs!1153122 () Bool)

(assert (= bs!1153122 (and d!1530419 start!491708)))

(assert (=> bs!1153122 (= lambda!228934 lambda!228892)))

(declare-fun bs!1153123 () Bool)

(assert (= bs!1153123 (and d!1530419 d!1530397)))

(assert (=> bs!1153123 (not (= lambda!228934 lambda!228928))))

(declare-fun bs!1153124 () Bool)

(assert (= bs!1153124 (and d!1530419 d!1530375)))

(assert (=> bs!1153124 (= lambda!228934 lambda!228921)))

(declare-fun bs!1153125 () Bool)

(assert (= bs!1153125 (and d!1530419 d!1530349)))

(assert (=> bs!1153125 (= lambda!228934 lambda!228908)))

(declare-fun bs!1153126 () Bool)

(assert (= bs!1153126 (and d!1530419 d!1530371)))

(assert (=> bs!1153126 (= lambda!228934 lambda!228918)))

(declare-fun bs!1153127 () Bool)

(assert (= bs!1153127 (and d!1530419 d!1530407)))

(assert (=> bs!1153127 (= lambda!228934 lambda!228931)))

(assert (=> d!1530419 (not (containsKey!3842 (apply!12898 lm!2709 (_1!31565 (h!60456 (toList!6765 lm!2709)))) key!6641))))

(declare-fun lt!1946447 () Unit!139424)

(declare-fun choose!34367 (ListLongMap!5187 K!15597 (_ BitVec 64) Hashable!6843) Unit!139424)

(assert (=> d!1530419 (= lt!1946447 (choose!34367 lm!2709 key!6641 (_1!31565 (h!60456 (toList!6765 lm!2709))) hashF!1687))))

(assert (=> d!1530419 (forall!12143 (toList!6765 lm!2709) lambda!228934)))

(assert (=> d!1530419 (= (lemmaNotSameHashThenCannotContainKey!197 lm!2709 key!6641 (_1!31565 (h!60456 (toList!6765 lm!2709))) hashF!1687) lt!1946447)))

(declare-fun bs!1153128 () Bool)

(assert (= bs!1153128 d!1530419))

(assert (=> bs!1153128 m!5762934))

(assert (=> bs!1153128 m!5762934))

(assert (=> bs!1153128 m!5762936))

(declare-fun m!5763278 () Bool)

(assert (=> bs!1153128 m!5763278))

(declare-fun m!5763280 () Bool)

(assert (=> bs!1153128 m!5763280))

(assert (=> b!4784327 d!1530419))

(declare-fun d!1530421 () Bool)

(declare-fun lt!1946448 () Bool)

(assert (=> d!1530421 (= lt!1946448 (set.member lt!1946227 (content!9666 (toList!6765 lm!2709))))))

(declare-fun e!2987257 () Bool)

(assert (=> d!1530421 (= lt!1946448 e!2987257)))

(declare-fun res!2032127 () Bool)

(assert (=> d!1530421 (=> (not res!2032127) (not e!2987257))))

(assert (=> d!1530421 (= res!2032127 (is-Cons!54036 (toList!6765 lm!2709)))))

(assert (=> d!1530421 (= (contains!17591 (toList!6765 lm!2709) lt!1946227) lt!1946448)))

(declare-fun b!4784562 () Bool)

(declare-fun e!2987256 () Bool)

(assert (=> b!4784562 (= e!2987257 e!2987256)))

(declare-fun res!2032128 () Bool)

(assert (=> b!4784562 (=> res!2032128 e!2987256)))

(assert (=> b!4784562 (= res!2032128 (= (h!60456 (toList!6765 lm!2709)) lt!1946227))))

(declare-fun b!4784563 () Bool)

(assert (=> b!4784563 (= e!2987256 (contains!17591 (t!361610 (toList!6765 lm!2709)) lt!1946227))))

(assert (= (and d!1530421 res!2032127) b!4784562))

(assert (= (and b!4784562 (not res!2032128)) b!4784563))

(declare-fun m!5763282 () Bool)

(assert (=> d!1530421 m!5763282))

(declare-fun m!5763284 () Bool)

(assert (=> d!1530421 m!5763284))

(declare-fun m!5763286 () Bool)

(assert (=> b!4784563 m!5763286))

(assert (=> b!4784322 d!1530421))

(declare-fun bs!1153129 () Bool)

(declare-fun d!1530423 () Bool)

(assert (= bs!1153129 (and d!1530423 d!1530393)))

(declare-fun lambda!228935 () Int)

(assert (=> bs!1153129 (not (= lambda!228935 lambda!228927))))

(declare-fun bs!1153130 () Bool)

(assert (= bs!1153130 (and d!1530423 d!1530385)))

(assert (=> bs!1153130 (= lambda!228935 lambda!228924)))

(declare-fun bs!1153131 () Bool)

(assert (= bs!1153131 (and d!1530423 d!1530419)))

(assert (=> bs!1153131 (= lambda!228935 lambda!228934)))

(declare-fun bs!1153132 () Bool)

(assert (= bs!1153132 (and d!1530423 d!1530359)))

(assert (=> bs!1153132 (= lambda!228935 lambda!228911)))

(declare-fun bs!1153133 () Bool)

(assert (= bs!1153133 (and d!1530423 start!491708)))

(assert (=> bs!1153133 (= lambda!228935 lambda!228892)))

(declare-fun bs!1153134 () Bool)

(assert (= bs!1153134 (and d!1530423 d!1530397)))

(assert (=> bs!1153134 (not (= lambda!228935 lambda!228928))))

(declare-fun bs!1153135 () Bool)

(assert (= bs!1153135 (and d!1530423 d!1530375)))

(assert (=> bs!1153135 (= lambda!228935 lambda!228921)))

(declare-fun bs!1153136 () Bool)

(assert (= bs!1153136 (and d!1530423 d!1530349)))

(assert (=> bs!1153136 (= lambda!228935 lambda!228908)))

(declare-fun bs!1153137 () Bool)

(assert (= bs!1153137 (and d!1530423 d!1530371)))

(assert (=> bs!1153137 (= lambda!228935 lambda!228918)))

(declare-fun bs!1153138 () Bool)

(assert (= bs!1153138 (and d!1530423 d!1530407)))

(assert (=> bs!1153138 (= lambda!228935 lambda!228931)))

(assert (=> d!1530423 (contains!17593 (extractMap!2370 (toList!6765 lm!2709)) key!6641)))

(declare-fun lt!1946449 () Unit!139424)

(assert (=> d!1530423 (= lt!1946449 (choose!34362 lm!2709 key!6641 hashF!1687))))

(assert (=> d!1530423 (forall!12143 (toList!6765 lm!2709) lambda!228935)))

(assert (=> d!1530423 (= (lemmaListContainsThenExtractedMapContains!691 lm!2709 key!6641 hashF!1687) lt!1946449)))

(declare-fun bs!1153139 () Bool)

(assert (= bs!1153139 d!1530423))

(assert (=> bs!1153139 m!5762968))

(assert (=> bs!1153139 m!5762968))

(assert (=> bs!1153139 m!5762978))

(declare-fun m!5763288 () Bool)

(assert (=> bs!1153139 m!5763288))

(declare-fun m!5763290 () Bool)

(assert (=> bs!1153139 m!5763290))

(assert (=> b!4784322 d!1530423))

(declare-fun d!1530425 () Bool)

(assert (=> d!1530425 (contains!17591 (toList!6765 lm!2709) (tuple2!56543 lt!1946239 lt!1946229))))

(declare-fun lt!1946450 () Unit!139424)

(assert (=> d!1530425 (= lt!1946450 (choose!34360 lm!2709 lt!1946239 lt!1946229))))

(assert (=> d!1530425 (contains!17592 lm!2709 lt!1946239)))

(assert (=> d!1530425 (= (lemmaGetValueImpliesTupleContained!622 lm!2709 lt!1946239 lt!1946229) lt!1946450)))

(declare-fun bs!1153140 () Bool)

(assert (= bs!1153140 d!1530425))

(declare-fun m!5763292 () Bool)

(assert (=> bs!1153140 m!5763292))

(declare-fun m!5763294 () Bool)

(assert (=> bs!1153140 m!5763294))

(assert (=> bs!1153140 m!5762960))

(assert (=> b!4784322 d!1530425))

(declare-fun b!4784564 () Bool)

(declare-fun e!2987261 () Bool)

(assert (=> b!4784564 (= e!2987261 (not (containsKey!3842 lt!1946229 key!6641)))))

(declare-fun b!4784565 () Bool)

(declare-fun e!2987259 () Option!12967)

(assert (=> b!4784565 (= e!2987259 None!12966)))

(declare-fun b!4784566 () Bool)

(declare-fun e!2987260 () Option!12967)

(assert (=> b!4784566 (= e!2987260 e!2987259)))

(declare-fun c!815626 () Bool)

(assert (=> b!4784566 (= c!815626 (is-Cons!54035 lt!1946229))))

(declare-fun b!4784567 () Bool)

(declare-fun e!2987258 () Bool)

(declare-fun lt!1946451 () Option!12967)

(assert (=> b!4784567 (= e!2987258 (contains!17598 lt!1946229 (get!18389 lt!1946451)))))

(declare-fun b!4784568 () Bool)

(assert (=> b!4784568 (= e!2987259 (getPair!815 (t!361609 lt!1946229) key!6641))))

(declare-fun b!4784569 () Bool)

(declare-fun e!2987262 () Bool)

(assert (=> b!4784569 (= e!2987262 e!2987258)))

(declare-fun res!2032131 () Bool)

(assert (=> b!4784569 (=> (not res!2032131) (not e!2987258))))

(assert (=> b!4784569 (= res!2032131 (isDefined!10110 lt!1946451))))

(declare-fun b!4784570 () Bool)

(declare-fun res!2032129 () Bool)

(assert (=> b!4784570 (=> (not res!2032129) (not e!2987258))))

(assert (=> b!4784570 (= res!2032129 (= (_1!31564 (get!18389 lt!1946451)) key!6641))))

(declare-fun d!1530427 () Bool)

(assert (=> d!1530427 e!2987262))

(declare-fun res!2032132 () Bool)

(assert (=> d!1530427 (=> res!2032132 e!2987262)))

(assert (=> d!1530427 (= res!2032132 e!2987261)))

(declare-fun res!2032130 () Bool)

(assert (=> d!1530427 (=> (not res!2032130) (not e!2987261))))

(assert (=> d!1530427 (= res!2032130 (isEmpty!29375 lt!1946451))))

(assert (=> d!1530427 (= lt!1946451 e!2987260)))

(declare-fun c!815625 () Bool)

(assert (=> d!1530427 (= c!815625 (and (is-Cons!54035 lt!1946229) (= (_1!31564 (h!60455 lt!1946229)) key!6641)))))

(assert (=> d!1530427 (noDuplicateKeys!2302 lt!1946229)))

(assert (=> d!1530427 (= (getPair!815 lt!1946229 key!6641) lt!1946451)))

(declare-fun b!4784571 () Bool)

(assert (=> b!4784571 (= e!2987260 (Some!12966 (h!60455 lt!1946229)))))

(assert (= (and d!1530427 c!815625) b!4784571))

(assert (= (and d!1530427 (not c!815625)) b!4784566))

(assert (= (and b!4784566 c!815626) b!4784568))

(assert (= (and b!4784566 (not c!815626)) b!4784565))

(assert (= (and d!1530427 res!2032130) b!4784564))

(assert (= (and d!1530427 (not res!2032132)) b!4784569))

(assert (= (and b!4784569 res!2032131) b!4784570))

(assert (= (and b!4784570 res!2032129) b!4784567))

(declare-fun m!5763296 () Bool)

(assert (=> b!4784568 m!5763296))

(declare-fun m!5763298 () Bool)

(assert (=> b!4784564 m!5763298))

(declare-fun m!5763300 () Bool)

(assert (=> b!4784570 m!5763300))

(declare-fun m!5763302 () Bool)

(assert (=> b!4784569 m!5763302))

(assert (=> b!4784567 m!5763300))

(assert (=> b!4784567 m!5763300))

(declare-fun m!5763304 () Bool)

(assert (=> b!4784567 m!5763304))

(declare-fun m!5763306 () Bool)

(assert (=> d!1530427 m!5763306))

(declare-fun m!5763308 () Bool)

(assert (=> d!1530427 m!5763308))

(assert (=> b!4784322 d!1530427))

(declare-fun d!1530429 () Bool)

(assert (=> d!1530429 (= (get!18389 lt!1946232) (v!48205 lt!1946232))))

(assert (=> b!4784322 d!1530429))

(declare-fun d!1530431 () Bool)

(assert (=> d!1530431 (= (isDefined!10110 lt!1946232) (not (isEmpty!29375 lt!1946232)))))

(declare-fun bs!1153141 () Bool)

(assert (= bs!1153141 d!1530431))

(declare-fun m!5763310 () Bool)

(assert (=> bs!1153141 m!5763310))

(assert (=> b!4784322 d!1530431))

(declare-fun d!1530433 () Bool)

(assert (=> d!1530433 (dynLambda!22024 lambda!228892 lt!1946227)))

(declare-fun lt!1946452 () Unit!139424)

(assert (=> d!1530433 (= lt!1946452 (choose!34363 (toList!6765 lm!2709) lambda!228892 lt!1946227))))

(declare-fun e!2987263 () Bool)

(assert (=> d!1530433 e!2987263))

(declare-fun res!2032133 () Bool)

(assert (=> d!1530433 (=> (not res!2032133) (not e!2987263))))

(assert (=> d!1530433 (= res!2032133 (forall!12143 (toList!6765 lm!2709) lambda!228892))))

(assert (=> d!1530433 (= (forallContained!4087 (toList!6765 lm!2709) lambda!228892 lt!1946227) lt!1946452)))

(declare-fun b!4784572 () Bool)

(assert (=> b!4784572 (= e!2987263 (contains!17591 (toList!6765 lm!2709) lt!1946227))))

(assert (= (and d!1530433 res!2032133) b!4784572))

(declare-fun b_lambda!186049 () Bool)

(assert (=> (not b_lambda!186049) (not d!1530433)))

(declare-fun m!5763312 () Bool)

(assert (=> d!1530433 m!5763312))

(declare-fun m!5763314 () Bool)

(assert (=> d!1530433 m!5763314))

(assert (=> d!1530433 m!5762982))

(assert (=> b!4784572 m!5762954))

(assert (=> b!4784322 d!1530433))

(declare-fun d!1530435 () Bool)

(declare-fun hash!4858 (Hashable!6843 K!15597) (_ BitVec 64))

(assert (=> d!1530435 (= (hash!4854 hashF!1687 key!6641) (hash!4858 hashF!1687 key!6641))))

(declare-fun bs!1153142 () Bool)

(assert (= bs!1153142 d!1530435))

(declare-fun m!5763316 () Bool)

(assert (=> bs!1153142 m!5763316))

(assert (=> b!4784322 d!1530435))

(declare-fun bs!1153143 () Bool)

(declare-fun d!1530437 () Bool)

(assert (= bs!1153143 (and d!1530437 d!1530423)))

(declare-fun lambda!228936 () Int)

(assert (=> bs!1153143 (= lambda!228936 lambda!228935)))

(declare-fun bs!1153144 () Bool)

(assert (= bs!1153144 (and d!1530437 d!1530393)))

(assert (=> bs!1153144 (not (= lambda!228936 lambda!228927))))

(declare-fun bs!1153145 () Bool)

(assert (= bs!1153145 (and d!1530437 d!1530385)))

(assert (=> bs!1153145 (= lambda!228936 lambda!228924)))

(declare-fun bs!1153146 () Bool)

(assert (= bs!1153146 (and d!1530437 d!1530419)))

(assert (=> bs!1153146 (= lambda!228936 lambda!228934)))

(declare-fun bs!1153147 () Bool)

(assert (= bs!1153147 (and d!1530437 d!1530359)))

(assert (=> bs!1153147 (= lambda!228936 lambda!228911)))

(declare-fun bs!1153148 () Bool)

(assert (= bs!1153148 (and d!1530437 start!491708)))

(assert (=> bs!1153148 (= lambda!228936 lambda!228892)))

(declare-fun bs!1153149 () Bool)

(assert (= bs!1153149 (and d!1530437 d!1530397)))

(assert (=> bs!1153149 (not (= lambda!228936 lambda!228928))))

(declare-fun bs!1153150 () Bool)

(assert (= bs!1153150 (and d!1530437 d!1530375)))

(assert (=> bs!1153150 (= lambda!228936 lambda!228921)))

(declare-fun bs!1153151 () Bool)

(assert (= bs!1153151 (and d!1530437 d!1530349)))

(assert (=> bs!1153151 (= lambda!228936 lambda!228908)))

(declare-fun bs!1153152 () Bool)

(assert (= bs!1153152 (and d!1530437 d!1530371)))

(assert (=> bs!1153152 (= lambda!228936 lambda!228918)))

(declare-fun bs!1153153 () Bool)

(assert (= bs!1153153 (and d!1530437 d!1530407)))

(assert (=> bs!1153153 (= lambda!228936 lambda!228931)))

(declare-fun lt!1946453 () ListMap!6237)

(assert (=> d!1530437 (invariantList!1704 (toList!6766 lt!1946453))))

(declare-fun e!2987264 () ListMap!6237)

(assert (=> d!1530437 (= lt!1946453 e!2987264)))

(declare-fun c!815627 () Bool)

(assert (=> d!1530437 (= c!815627 (is-Cons!54036 (toList!6765 lm!2709)))))

(assert (=> d!1530437 (forall!12143 (toList!6765 lm!2709) lambda!228936)))

(assert (=> d!1530437 (= (extractMap!2370 (toList!6765 lm!2709)) lt!1946453)))

(declare-fun b!4784573 () Bool)

(assert (=> b!4784573 (= e!2987264 (addToMapMapFromBucket!1669 (_2!31565 (h!60456 (toList!6765 lm!2709))) (extractMap!2370 (t!361610 (toList!6765 lm!2709)))))))

(declare-fun b!4784574 () Bool)

(assert (=> b!4784574 (= e!2987264 (ListMap!6238 Nil!54035))))

(assert (= (and d!1530437 c!815627) b!4784573))

(assert (= (and d!1530437 (not c!815627)) b!4784574))

(declare-fun m!5763318 () Bool)

(assert (=> d!1530437 m!5763318))

(declare-fun m!5763320 () Bool)

(assert (=> d!1530437 m!5763320))

(declare-fun m!5763322 () Bool)

(assert (=> b!4784573 m!5763322))

(assert (=> b!4784573 m!5763322))

(declare-fun m!5763324 () Bool)

(assert (=> b!4784573 m!5763324))

(assert (=> b!4784322 d!1530437))

(declare-fun bs!1153154 () Bool)

(declare-fun d!1530439 () Bool)

(assert (= bs!1153154 (and d!1530439 d!1530423)))

(declare-fun lambda!228937 () Int)

(assert (=> bs!1153154 (= lambda!228937 lambda!228935)))

(declare-fun bs!1153155 () Bool)

(assert (= bs!1153155 (and d!1530439 d!1530437)))

(assert (=> bs!1153155 (= lambda!228937 lambda!228936)))

(declare-fun bs!1153156 () Bool)

(assert (= bs!1153156 (and d!1530439 d!1530393)))

(assert (=> bs!1153156 (not (= lambda!228937 lambda!228927))))

(declare-fun bs!1153157 () Bool)

(assert (= bs!1153157 (and d!1530439 d!1530385)))

(assert (=> bs!1153157 (= lambda!228937 lambda!228924)))

(declare-fun bs!1153158 () Bool)

(assert (= bs!1153158 (and d!1530439 d!1530419)))

(assert (=> bs!1153158 (= lambda!228937 lambda!228934)))

(declare-fun bs!1153159 () Bool)

(assert (= bs!1153159 (and d!1530439 d!1530359)))

(assert (=> bs!1153159 (= lambda!228937 lambda!228911)))

(declare-fun bs!1153160 () Bool)

(assert (= bs!1153160 (and d!1530439 start!491708)))

(assert (=> bs!1153160 (= lambda!228937 lambda!228892)))

(declare-fun bs!1153161 () Bool)

(assert (= bs!1153161 (and d!1530439 d!1530397)))

(assert (=> bs!1153161 (not (= lambda!228937 lambda!228928))))

(declare-fun bs!1153162 () Bool)

(assert (= bs!1153162 (and d!1530439 d!1530375)))

(assert (=> bs!1153162 (= lambda!228937 lambda!228921)))

(declare-fun bs!1153163 () Bool)

(assert (= bs!1153163 (and d!1530439 d!1530349)))

(assert (=> bs!1153163 (= lambda!228937 lambda!228908)))

(declare-fun bs!1153164 () Bool)

(assert (= bs!1153164 (and d!1530439 d!1530371)))

(assert (=> bs!1153164 (= lambda!228937 lambda!228918)))

(declare-fun bs!1153165 () Bool)

(assert (= bs!1153165 (and d!1530439 d!1530407)))

(assert (=> bs!1153165 (= lambda!228937 lambda!228931)))

(assert (=> d!1530439 (contains!17592 lm!2709 (hash!4854 hashF!1687 key!6641))))

(declare-fun lt!1946454 () Unit!139424)

(assert (=> d!1530439 (= lt!1946454 (choose!34361 lm!2709 key!6641 hashF!1687))))

(assert (=> d!1530439 (forall!12143 (toList!6765 lm!2709) lambda!228937)))

(assert (=> d!1530439 (= (lemmaInGenMapThenLongMapContainsHash!1039 lm!2709 key!6641 hashF!1687) lt!1946454)))

(declare-fun bs!1153166 () Bool)

(assert (= bs!1153166 d!1530439))

(assert (=> bs!1153166 m!5762972))

(assert (=> bs!1153166 m!5762972))

(declare-fun m!5763326 () Bool)

(assert (=> bs!1153166 m!5763326))

(declare-fun m!5763328 () Bool)

(assert (=> bs!1153166 m!5763328))

(declare-fun m!5763330 () Bool)

(assert (=> bs!1153166 m!5763330))

(assert (=> b!4784322 d!1530439))

(declare-fun d!1530441 () Bool)

(assert (=> d!1530441 (= (apply!12898 lm!2709 lt!1946239) (get!18391 (getValueByKey!2301 (toList!6765 lm!2709) lt!1946239)))))

(declare-fun bs!1153167 () Bool)

(assert (= bs!1153167 d!1530441))

(declare-fun m!5763332 () Bool)

(assert (=> bs!1153167 m!5763332))

(assert (=> bs!1153167 m!5763332))

(declare-fun m!5763334 () Bool)

(assert (=> bs!1153167 m!5763334))

(assert (=> b!4784322 d!1530441))

(declare-fun b!4784575 () Bool)

(declare-fun e!2987268 () Bool)

(assert (=> b!4784575 (= e!2987268 (not (contains!17597 (keys!19693 (extractMap!2370 (toList!6765 lm!2709))) key!6641)))))

(declare-fun b!4784576 () Bool)

(assert (=> b!4784576 false))

(declare-fun lt!1946460 () Unit!139424)

(declare-fun lt!1946455 () Unit!139424)

(assert (=> b!4784576 (= lt!1946460 lt!1946455)))

(assert (=> b!4784576 (containsKey!3844 (toList!6766 (extractMap!2370 (toList!6765 lm!2709))) key!6641)))

(assert (=> b!4784576 (= lt!1946455 (lemmaInGetKeysListThenContainsKey!1050 (toList!6766 (extractMap!2370 (toList!6765 lm!2709))) key!6641))))

(declare-fun e!2987266 () Unit!139424)

(declare-fun Unit!139431 () Unit!139424)

(assert (=> b!4784576 (= e!2987266 Unit!139431)))

(declare-fun b!4784577 () Bool)

(declare-fun e!2987269 () List!54163)

(assert (=> b!4784577 (= e!2987269 (getKeysList!1050 (toList!6766 (extractMap!2370 (toList!6765 lm!2709)))))))

(declare-fun b!4784578 () Bool)

(declare-fun e!2987270 () Bool)

(declare-fun e!2987265 () Bool)

(assert (=> b!4784578 (= e!2987270 e!2987265)))

(declare-fun res!2032135 () Bool)

(assert (=> b!4784578 (=> (not res!2032135) (not e!2987265))))

(assert (=> b!4784578 (= res!2032135 (isDefined!10112 (getValueByKey!2300 (toList!6766 (extractMap!2370 (toList!6765 lm!2709))) key!6641)))))

(declare-fun b!4784579 () Bool)

(declare-fun e!2987267 () Unit!139424)

(declare-fun lt!1946456 () Unit!139424)

(assert (=> b!4784579 (= e!2987267 lt!1946456)))

(declare-fun lt!1946462 () Unit!139424)

(assert (=> b!4784579 (= lt!1946462 (lemmaContainsKeyImpliesGetValueByKeyDefined!2093 (toList!6766 (extractMap!2370 (toList!6765 lm!2709))) key!6641))))

(assert (=> b!4784579 (isDefined!10112 (getValueByKey!2300 (toList!6766 (extractMap!2370 (toList!6765 lm!2709))) key!6641))))

(declare-fun lt!1946461 () Unit!139424)

(assert (=> b!4784579 (= lt!1946461 lt!1946462)))

(assert (=> b!4784579 (= lt!1946456 (lemmaInListThenGetKeysListContains!1045 (toList!6766 (extractMap!2370 (toList!6765 lm!2709))) key!6641))))

(declare-fun call!334819 () Bool)

(assert (=> b!4784579 call!334819))

(declare-fun d!1530443 () Bool)

(assert (=> d!1530443 e!2987270))

(declare-fun res!2032136 () Bool)

(assert (=> d!1530443 (=> res!2032136 e!2987270)))

(assert (=> d!1530443 (= res!2032136 e!2987268)))

(declare-fun res!2032134 () Bool)

(assert (=> d!1530443 (=> (not res!2032134) (not e!2987268))))

(declare-fun lt!1946458 () Bool)

(assert (=> d!1530443 (= res!2032134 (not lt!1946458))))

(declare-fun lt!1946457 () Bool)

(assert (=> d!1530443 (= lt!1946458 lt!1946457)))

(declare-fun lt!1946459 () Unit!139424)

(assert (=> d!1530443 (= lt!1946459 e!2987267)))

(declare-fun c!815628 () Bool)

(assert (=> d!1530443 (= c!815628 lt!1946457)))

(assert (=> d!1530443 (= lt!1946457 (containsKey!3844 (toList!6766 (extractMap!2370 (toList!6765 lm!2709))) key!6641))))

(assert (=> d!1530443 (= (contains!17593 (extractMap!2370 (toList!6765 lm!2709)) key!6641) lt!1946458)))

(declare-fun b!4784580 () Bool)

(declare-fun Unit!139432 () Unit!139424)

(assert (=> b!4784580 (= e!2987266 Unit!139432)))

(declare-fun b!4784581 () Bool)

(assert (=> b!4784581 (= e!2987265 (contains!17597 (keys!19693 (extractMap!2370 (toList!6765 lm!2709))) key!6641))))

(declare-fun b!4784582 () Bool)

(assert (=> b!4784582 (= e!2987269 (keys!19693 (extractMap!2370 (toList!6765 lm!2709))))))

(declare-fun bm!334814 () Bool)

(assert (=> bm!334814 (= call!334819 (contains!17597 e!2987269 key!6641))))

(declare-fun c!815630 () Bool)

(assert (=> bm!334814 (= c!815630 c!815628)))

(declare-fun b!4784583 () Bool)

(assert (=> b!4784583 (= e!2987267 e!2987266)))

(declare-fun c!815629 () Bool)

(assert (=> b!4784583 (= c!815629 call!334819)))

(assert (= (and d!1530443 c!815628) b!4784579))

(assert (= (and d!1530443 (not c!815628)) b!4784583))

(assert (= (and b!4784583 c!815629) b!4784576))

(assert (= (and b!4784583 (not c!815629)) b!4784580))

(assert (= (or b!4784579 b!4784583) bm!334814))

(assert (= (and bm!334814 c!815630) b!4784577))

(assert (= (and bm!334814 (not c!815630)) b!4784582))

(assert (= (and d!1530443 res!2032134) b!4784575))

(assert (= (and d!1530443 (not res!2032136)) b!4784578))

(assert (= (and b!4784578 res!2032135) b!4784581))

(declare-fun m!5763336 () Bool)

(assert (=> d!1530443 m!5763336))

(assert (=> b!4784575 m!5762968))

(declare-fun m!5763338 () Bool)

(assert (=> b!4784575 m!5763338))

(assert (=> b!4784575 m!5763338))

(declare-fun m!5763340 () Bool)

(assert (=> b!4784575 m!5763340))

(assert (=> b!4784581 m!5762968))

(assert (=> b!4784581 m!5763338))

(assert (=> b!4784581 m!5763338))

(assert (=> b!4784581 m!5763340))

(declare-fun m!5763342 () Bool)

(assert (=> b!4784578 m!5763342))

(assert (=> b!4784578 m!5763342))

(declare-fun m!5763344 () Bool)

(assert (=> b!4784578 m!5763344))

(assert (=> b!4784576 m!5763336))

(declare-fun m!5763346 () Bool)

(assert (=> b!4784576 m!5763346))

(declare-fun m!5763348 () Bool)

(assert (=> b!4784579 m!5763348))

(assert (=> b!4784579 m!5763342))

(assert (=> b!4784579 m!5763342))

(assert (=> b!4784579 m!5763344))

(declare-fun m!5763350 () Bool)

(assert (=> b!4784579 m!5763350))

(assert (=> b!4784582 m!5762968))

(assert (=> b!4784582 m!5763338))

(declare-fun m!5763352 () Bool)

(assert (=> b!4784577 m!5763352))

(declare-fun m!5763354 () Bool)

(assert (=> bm!334814 m!5763354))

(assert (=> b!4784322 d!1530443))

(declare-fun bs!1153168 () Bool)

(declare-fun d!1530445 () Bool)

(assert (= bs!1153168 (and d!1530445 d!1530423)))

(declare-fun lambda!228938 () Int)

(assert (=> bs!1153168 (= lambda!228938 lambda!228935)))

(declare-fun bs!1153169 () Bool)

(assert (= bs!1153169 (and d!1530445 d!1530437)))

(assert (=> bs!1153169 (= lambda!228938 lambda!228936)))

(declare-fun bs!1153170 () Bool)

(assert (= bs!1153170 (and d!1530445 d!1530393)))

(assert (=> bs!1153170 (not (= lambda!228938 lambda!228927))))

(declare-fun bs!1153171 () Bool)

(assert (= bs!1153171 (and d!1530445 d!1530385)))

(assert (=> bs!1153171 (= lambda!228938 lambda!228924)))

(declare-fun bs!1153172 () Bool)

(assert (= bs!1153172 (and d!1530445 d!1530419)))

(assert (=> bs!1153172 (= lambda!228938 lambda!228934)))

(declare-fun bs!1153173 () Bool)

(assert (= bs!1153173 (and d!1530445 d!1530439)))

(assert (=> bs!1153173 (= lambda!228938 lambda!228937)))

(declare-fun bs!1153174 () Bool)

(assert (= bs!1153174 (and d!1530445 d!1530359)))

(assert (=> bs!1153174 (= lambda!228938 lambda!228911)))

(declare-fun bs!1153175 () Bool)

(assert (= bs!1153175 (and d!1530445 start!491708)))

(assert (=> bs!1153175 (= lambda!228938 lambda!228892)))

(declare-fun bs!1153176 () Bool)

(assert (= bs!1153176 (and d!1530445 d!1530397)))

(assert (=> bs!1153176 (not (= lambda!228938 lambda!228928))))

(declare-fun bs!1153177 () Bool)

(assert (= bs!1153177 (and d!1530445 d!1530375)))

(assert (=> bs!1153177 (= lambda!228938 lambda!228921)))

(declare-fun bs!1153178 () Bool)

(assert (= bs!1153178 (and d!1530445 d!1530349)))

(assert (=> bs!1153178 (= lambda!228938 lambda!228908)))

(declare-fun bs!1153179 () Bool)

(assert (= bs!1153179 (and d!1530445 d!1530371)))

(assert (=> bs!1153179 (= lambda!228938 lambda!228918)))

(declare-fun bs!1153180 () Bool)

(assert (= bs!1153180 (and d!1530445 d!1530407)))

(assert (=> bs!1153180 (= lambda!228938 lambda!228931)))

(declare-fun b!4784584 () Bool)

(declare-fun res!2032137 () Bool)

(declare-fun e!2987271 () Bool)

(assert (=> b!4784584 (=> (not res!2032137) (not e!2987271))))

(assert (=> b!4784584 (= res!2032137 (allKeysSameHashInMap!2248 lm!2709 hashF!1687))))

(declare-fun lt!1946465 () (_ BitVec 64))

(declare-fun e!2987272 () Bool)

(declare-fun b!4784587 () Bool)

(declare-fun lt!1946468 () List!54159)

(assert (=> b!4784587 (= e!2987272 (= (getValueByKey!2301 (toList!6765 lm!2709) lt!1946465) (Some!12969 lt!1946468)))))

(declare-fun b!4784585 () Bool)

(declare-fun res!2032140 () Bool)

(assert (=> b!4784585 (=> (not res!2032140) (not e!2987271))))

(assert (=> b!4784585 (= res!2032140 (contains!17593 (extractMap!2370 (toList!6765 lm!2709)) key!6641))))

(assert (=> d!1530445 e!2987271))

(declare-fun res!2032138 () Bool)

(assert (=> d!1530445 (=> (not res!2032138) (not e!2987271))))

(assert (=> d!1530445 (= res!2032138 (forall!12143 (toList!6765 lm!2709) lambda!228938))))

(declare-fun lt!1946464 () Unit!139424)

(assert (=> d!1530445 (= lt!1946464 (choose!34364 lm!2709 key!6641 hashF!1687))))

(assert (=> d!1530445 (forall!12143 (toList!6765 lm!2709) lambda!228938)))

(assert (=> d!1530445 (= (lemmaInGenMapThenGetPairDefined!589 lm!2709 key!6641 hashF!1687) lt!1946464)))

(declare-fun b!4784586 () Bool)

(assert (=> b!4784586 (= e!2987271 (isDefined!10110 (getPair!815 (apply!12898 lm!2709 (hash!4854 hashF!1687 key!6641)) key!6641)))))

(declare-fun lt!1946467 () Unit!139424)

(assert (=> b!4784586 (= lt!1946467 (forallContained!4087 (toList!6765 lm!2709) lambda!228938 (tuple2!56543 (hash!4854 hashF!1687 key!6641) (apply!12898 lm!2709 (hash!4854 hashF!1687 key!6641)))))))

(declare-fun lt!1946470 () Unit!139424)

(declare-fun lt!1946469 () Unit!139424)

(assert (=> b!4784586 (= lt!1946470 lt!1946469)))

(assert (=> b!4784586 (contains!17591 (toList!6765 lm!2709) (tuple2!56543 lt!1946465 lt!1946468))))

(assert (=> b!4784586 (= lt!1946469 (lemmaGetValueImpliesTupleContained!622 lm!2709 lt!1946465 lt!1946468))))

(assert (=> b!4784586 e!2987272))

(declare-fun res!2032139 () Bool)

(assert (=> b!4784586 (=> (not res!2032139) (not e!2987272))))

(assert (=> b!4784586 (= res!2032139 (contains!17592 lm!2709 lt!1946465))))

(assert (=> b!4784586 (= lt!1946468 (apply!12898 lm!2709 (hash!4854 hashF!1687 key!6641)))))

(assert (=> b!4784586 (= lt!1946465 (hash!4854 hashF!1687 key!6641))))

(declare-fun lt!1946463 () Unit!139424)

(declare-fun lt!1946466 () Unit!139424)

(assert (=> b!4784586 (= lt!1946463 lt!1946466)))

(assert (=> b!4784586 (contains!17592 lm!2709 (hash!4854 hashF!1687 key!6641))))

(assert (=> b!4784586 (= lt!1946466 (lemmaInGenMapThenLongMapContainsHash!1039 lm!2709 key!6641 hashF!1687))))

(assert (= (and d!1530445 res!2032138) b!4784584))

(assert (= (and b!4784584 res!2032137) b!4784585))

(assert (= (and b!4784585 res!2032140) b!4784586))

(assert (= (and b!4784586 res!2032139) b!4784587))

(assert (=> b!4784585 m!5762968))

(assert (=> b!4784585 m!5762968))

(assert (=> b!4784585 m!5762978))

(assert (=> b!4784584 m!5762898))

(declare-fun m!5763356 () Bool)

(assert (=> b!4784587 m!5763356))

(declare-fun m!5763358 () Bool)

(assert (=> b!4784586 m!5763358))

(declare-fun m!5763360 () Bool)

(assert (=> b!4784586 m!5763360))

(assert (=> b!4784586 m!5762972))

(assert (=> b!4784586 m!5763326))

(declare-fun m!5763362 () Bool)

(assert (=> b!4784586 m!5763362))

(assert (=> b!4784586 m!5762972))

(declare-fun m!5763364 () Bool)

(assert (=> b!4784586 m!5763364))

(declare-fun m!5763366 () Bool)

(assert (=> b!4784586 m!5763366))

(declare-fun m!5763368 () Bool)

(assert (=> b!4784586 m!5763368))

(assert (=> b!4784586 m!5762976))

(declare-fun m!5763370 () Bool)

(assert (=> b!4784586 m!5763370))

(assert (=> b!4784586 m!5763364))

(assert (=> b!4784586 m!5763358))

(assert (=> b!4784586 m!5762972))

(declare-fun m!5763372 () Bool)

(assert (=> d!1530445 m!5763372))

(declare-fun m!5763374 () Bool)

(assert (=> d!1530445 m!5763374))

(assert (=> d!1530445 m!5763372))

(assert (=> b!4784322 d!1530445))

(declare-fun d!1530447 () Bool)

(declare-fun e!2987273 () Bool)

(assert (=> d!1530447 e!2987273))

(declare-fun res!2032141 () Bool)

(assert (=> d!1530447 (=> res!2032141 e!2987273)))

(declare-fun lt!1946474 () Bool)

(assert (=> d!1530447 (= res!2032141 (not lt!1946474))))

(declare-fun lt!1946471 () Bool)

(assert (=> d!1530447 (= lt!1946474 lt!1946471)))

(declare-fun lt!1946472 () Unit!139424)

(declare-fun e!2987274 () Unit!139424)

(assert (=> d!1530447 (= lt!1946472 e!2987274)))

(declare-fun c!815631 () Bool)

(assert (=> d!1530447 (= c!815631 lt!1946471)))

(assert (=> d!1530447 (= lt!1946471 (containsKey!3845 (toList!6765 lm!2709) lt!1946239))))

(assert (=> d!1530447 (= (contains!17592 lm!2709 lt!1946239) lt!1946474)))

(declare-fun b!4784588 () Bool)

(declare-fun lt!1946473 () Unit!139424)

(assert (=> b!4784588 (= e!2987274 lt!1946473)))

(assert (=> b!4784588 (= lt!1946473 (lemmaContainsKeyImpliesGetValueByKeyDefined!2094 (toList!6765 lm!2709) lt!1946239))))

(assert (=> b!4784588 (isDefined!10113 (getValueByKey!2301 (toList!6765 lm!2709) lt!1946239))))

(declare-fun b!4784589 () Bool)

(declare-fun Unit!139433 () Unit!139424)

(assert (=> b!4784589 (= e!2987274 Unit!139433)))

(declare-fun b!4784590 () Bool)

(assert (=> b!4784590 (= e!2987273 (isDefined!10113 (getValueByKey!2301 (toList!6765 lm!2709) lt!1946239)))))

(assert (= (and d!1530447 c!815631) b!4784588))

(assert (= (and d!1530447 (not c!815631)) b!4784589))

(assert (= (and d!1530447 (not res!2032141)) b!4784590))

(declare-fun m!5763376 () Bool)

(assert (=> d!1530447 m!5763376))

(declare-fun m!5763378 () Bool)

(assert (=> b!4784588 m!5763378))

(assert (=> b!4784588 m!5763332))

(assert (=> b!4784588 m!5763332))

(declare-fun m!5763380 () Bool)

(assert (=> b!4784588 m!5763380))

(assert (=> b!4784590 m!5763332))

(assert (=> b!4784590 m!5763332))

(assert (=> b!4784590 m!5763380))

(assert (=> b!4784322 d!1530447))

(declare-fun b!4784595 () Bool)

(declare-fun e!2987277 () Bool)

(declare-fun tp!1357575 () Bool)

(declare-fun tp!1357576 () Bool)

(assert (=> b!4784595 (= e!2987277 (and tp!1357575 tp!1357576))))

(assert (=> b!4784325 (= tp!1357567 e!2987277)))

(assert (= (and b!4784325 (is-Cons!54036 (toList!6765 lm!2709))) b!4784595))

(declare-fun b_lambda!186051 () Bool)

(assert (= b_lambda!186043 (or start!491708 b_lambda!186051)))

(declare-fun bs!1153181 () Bool)

(declare-fun d!1530449 () Bool)

(assert (= bs!1153181 (and d!1530449 start!491708)))

(assert (=> bs!1153181 (= (dynLambda!22024 lambda!228892 lt!1946241) (noDuplicateKeys!2302 (_2!31565 lt!1946241)))))

(declare-fun m!5763382 () Bool)

(assert (=> bs!1153181 m!5763382))

(assert (=> d!1530369 d!1530449))

(declare-fun b_lambda!186053 () Bool)

(assert (= b_lambda!186049 (or start!491708 b_lambda!186053)))

(declare-fun bs!1153182 () Bool)

(declare-fun d!1530451 () Bool)

(assert (= bs!1153182 (and d!1530451 start!491708)))

(assert (=> bs!1153182 (= (dynLambda!22024 lambda!228892 lt!1946227) (noDuplicateKeys!2302 (_2!31565 lt!1946227)))))

(declare-fun m!5763384 () Bool)

(assert (=> bs!1153182 m!5763384))

(assert (=> d!1530433 d!1530451))

(declare-fun b_lambda!186055 () Bool)

(assert (= b_lambda!186045 (or start!491708 b_lambda!186055)))

(declare-fun bs!1153183 () Bool)

(declare-fun d!1530453 () Bool)

(assert (= bs!1153183 (and d!1530453 start!491708)))

(assert (=> bs!1153183 (= (dynLambda!22024 lambda!228892 (h!60456 (toList!6765 lt!1946242))) (noDuplicateKeys!2302 (_2!31565 (h!60456 (toList!6765 lt!1946242)))))))

(declare-fun m!5763386 () Bool)

(assert (=> bs!1153183 m!5763386))

(assert (=> b!4784512 d!1530453))

(declare-fun b_lambda!186057 () Bool)

(assert (= b_lambda!186047 (or start!491708 b_lambda!186057)))

(declare-fun bs!1153184 () Bool)

(declare-fun d!1530455 () Bool)

(assert (= bs!1153184 (and d!1530455 start!491708)))

(assert (=> bs!1153184 (= (dynLambda!22024 lambda!228892 (h!60456 (toList!6765 lm!2709))) (noDuplicateKeys!2302 (_2!31565 (h!60456 (toList!6765 lm!2709)))))))

(declare-fun m!5763388 () Bool)

(assert (=> bs!1153184 m!5763388))

(assert (=> b!4784534 d!1530455))

(push 1)

(assert (not d!1530351))

(assert (not bm!334810))

(assert (not d!1530435))

(assert (not b!4784572))

(assert (not b!4784432))

(assert (not b!4784459))

(assert (not b_lambda!186051))

(assert (not b!4784581))

(assert (not b!4784563))

(assert (not d!1530417))

(assert (not d!1530447))

(assert (not d!1530393))

(assert (not b!4784542))

(assert (not b!4784529))

(assert (not d!1530369))

(assert (not d!1530345))

(assert (not b!4784567))

(assert (not b!4784544))

(assert (not b!4784588))

(assert (not b!4784500))

(assert (not b_lambda!186057))

(assert (not d!1530439))

(assert (not d!1530425))

(assert (not b!4784573))

(assert (not d!1530437))

(assert (not bs!1153182))

(assert (not b!4784582))

(assert (not b!4784577))

(assert (not b!4784545))

(assert (not b!4784578))

(assert (not b!4784595))

(assert (not d!1530381))

(assert (not b!4784482))

(assert (not b!4784570))

(assert (not d!1530371))

(assert (not d!1530359))

(assert (not b!4784397))

(assert (not b!4784503))

(assert (not b!4784506))

(assert (not b!4784586))

(assert (not b!4784461))

(assert (not d!1530419))

(assert (not b_lambda!186055))

(assert (not b!4784383))

(assert (not b!4784513))

(assert (not d!1530407))

(assert (not b!4784384))

(assert (not b!4784585))

(assert (not b!4784535))

(assert (not b!4784505))

(assert (not d!1530431))

(assert (not b!4784550))

(assert (not d!1530367))

(assert (not b!4784385))

(assert (not b!4784388))

(assert (not d!1530441))

(assert (not b!4784547))

(assert (not b!4784382))

(assert (not b!4784551))

(assert (not b!4784587))

(assert (not b!4784568))

(assert tp_is_empty!33275)

(assert (not b!4784559))

(assert (not d!1530355))

(assert (not b!4784579))

(assert (not b!4784553))

(assert (not b!4784462))

(assert (not b!4784569))

(assert (not b!4784584))

(assert (not d!1530349))

(assert (not d!1530401))

(assert (not b!4784460))

(assert (not bs!1153183))

(assert (not d!1530421))

(assert (not d!1530423))

(assert (not d!1530347))

(assert (not bs!1153181))

(assert (not b!4784590))

(assert (not bm!334814))

(assert (not d!1530357))

(assert (not b!4784564))

(assert (not b!4784531))

(assert (not b!4784543))

(assert (not d!1530427))

(assert (not d!1530397))

(assert (not d!1530385))

(assert (not bs!1153184))

(assert (not d!1530375))

(assert (not d!1530433))

(assert (not b!4784399))

(assert (not b!4784405))

(assert (not d!1530389))

(assert (not b_lambda!186053))

(assert (not d!1530445))

(assert (not d!1530443))

(assert (not b!4784381))

(assert (not b!4784548))

(assert (not b!4784576))

(assert (not b!4784575))

(assert (not b!4784387))

(assert (not b!4784561))

(assert (not b!4784546))

(assert tp_is_empty!33273)

(assert (not b!4784504))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

