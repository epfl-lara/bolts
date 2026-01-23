; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!489180 () Bool)

(assert start!489180)

(declare-fun b!4774237 () Bool)

(declare-fun e!2980496 () Bool)

(declare-datatypes ((K!15297 0))(
  ( (K!15298 (val!20543 Int)) )
))
(declare-datatypes ((V!15543 0))(
  ( (V!15544 (val!20544 Int)) )
))
(declare-datatypes ((tuple2!56060 0))(
  ( (tuple2!56061 (_1!31324 K!15297) (_2!31324 V!15543)) )
))
(declare-datatypes ((List!53887 0))(
  ( (Nil!53763) (Cons!53763 (h!60177 tuple2!56060) (t!361337 List!53887)) )
))
(declare-datatypes ((tuple2!56062 0))(
  ( (tuple2!56063 (_1!31325 (_ BitVec 64)) (_2!31325 List!53887)) )
))
(declare-datatypes ((List!53888 0))(
  ( (Nil!53764) (Cons!53764 (h!60178 tuple2!56062) (t!361338 List!53888)) )
))
(declare-datatypes ((ListLongMap!4947 0))(
  ( (ListLongMap!4948 (toList!6533 List!53888)) )
))
(declare-fun lm!1309 () ListLongMap!4947)

(declare-fun lambda!226176 () Int)

(declare-fun forall!11991 (List!53888 Int) Bool)

(assert (=> b!4774237 (= e!2980496 (forall!11991 (toList!6533 lm!1309) lambda!226176))))

(declare-datatypes ((Unit!138755 0))(
  ( (Unit!138756) )
))
(declare-fun lt!1937267 () Unit!138755)

(declare-fun lt!1937264 () tuple2!56062)

(declare-fun forallContained!3964 (List!53888 Int tuple2!56062) Unit!138755)

(assert (=> b!4774237 (= lt!1937267 (forallContained!3964 (toList!6533 lm!1309) lambda!226176 lt!1937264))))

(declare-datatypes ((ListMap!6013 0))(
  ( (ListMap!6014 (toList!6534 List!53887)) )
))
(declare-fun lt!1937271 () ListMap!6013)

(declare-fun key!2872 () K!15297)

(declare-fun v!9615 () V!15543)

(declare-fun apply!12790 (ListMap!6013 K!15297) V!15543)

(assert (=> b!4774237 (= (apply!12790 lt!1937271 key!2872) v!9615)))

(declare-datatypes ((Hashable!6723 0))(
  ( (HashableExt!6722 (__x!32746 Int)) )
))
(declare-fun hashF!980 () Hashable!6723)

(declare-fun lt!1937262 () Unit!138755)

(declare-fun lemmaExtractMapPreservesMapping!27 (ListLongMap!4947 K!15297 V!15543 Hashable!6723) Unit!138755)

(assert (=> b!4774237 (= lt!1937262 (lemmaExtractMapPreservesMapping!27 lm!1309 key!2872 v!9615 hashF!980))))

(declare-fun lt!1937273 () Unit!138755)

(declare-fun lemmaInGenericMapThenInLongMap!245 (ListLongMap!4947 K!15297 Hashable!6723) Unit!138755)

(assert (=> b!4774237 (= lt!1937273 (lemmaInGenericMapThenInLongMap!245 lm!1309 key!2872 hashF!980))))

(declare-fun b!4774238 () Bool)

(declare-fun e!2980499 () Bool)

(declare-fun e!2980495 () Bool)

(assert (=> b!4774238 (= e!2980499 (not e!2980495))))

(declare-fun res!2025601 () Bool)

(assert (=> b!4774238 (=> res!2025601 e!2980495)))

(declare-datatypes ((Option!12820 0))(
  ( (None!12819) (Some!12819 (v!47966 tuple2!56060)) )
))
(declare-fun lt!1937260 () Option!12820)

(declare-fun get!18218 (Option!12820) tuple2!56060)

(assert (=> b!4774238 (= res!2025601 (not (= (_2!31324 (get!18218 lt!1937260)) v!9615)))))

(declare-fun isDefined!9965 (Option!12820) Bool)

(assert (=> b!4774238 (isDefined!9965 lt!1937260)))

(declare-fun lt!1937265 () List!53887)

(declare-fun getPair!731 (List!53887 K!15297) Option!12820)

(assert (=> b!4774238 (= lt!1937260 (getPair!731 lt!1937265 key!2872))))

(declare-fun lt!1937270 () Unit!138755)

(assert (=> b!4774238 (= lt!1937270 (forallContained!3964 (toList!6533 lm!1309) lambda!226176 lt!1937264))))

(declare-fun lt!1937272 () Unit!138755)

(declare-fun lemmaInGenMapThenGetPairDefined!505 (ListLongMap!4947 K!15297 Hashable!6723) Unit!138755)

(assert (=> b!4774238 (= lt!1937272 (lemmaInGenMapThenGetPairDefined!505 lm!1309 key!2872 hashF!980))))

(declare-fun lt!1937266 () Unit!138755)

(assert (=> b!4774238 (= lt!1937266 (forallContained!3964 (toList!6533 lm!1309) lambda!226176 lt!1937264))))

(declare-fun contains!17218 (List!53888 tuple2!56062) Bool)

(assert (=> b!4774238 (contains!17218 (toList!6533 lm!1309) lt!1937264)))

(declare-fun lt!1937268 () (_ BitVec 64))

(assert (=> b!4774238 (= lt!1937264 (tuple2!56063 lt!1937268 lt!1937265))))

(declare-fun lt!1937269 () Unit!138755)

(declare-fun lemmaGetValueImpliesTupleContained!526 (ListLongMap!4947 (_ BitVec 64) List!53887) Unit!138755)

(assert (=> b!4774238 (= lt!1937269 (lemmaGetValueImpliesTupleContained!526 lm!1309 lt!1937268 lt!1937265))))

(declare-fun apply!12791 (ListLongMap!4947 (_ BitVec 64)) List!53887)

(assert (=> b!4774238 (= lt!1937265 (apply!12791 lm!1309 lt!1937268))))

(declare-fun contains!17219 (ListLongMap!4947 (_ BitVec 64)) Bool)

(assert (=> b!4774238 (contains!17219 lm!1309 lt!1937268)))

(declare-fun hash!4699 (Hashable!6723 K!15297) (_ BitVec 64))

(assert (=> b!4774238 (= lt!1937268 (hash!4699 hashF!980 key!2872))))

(declare-fun lt!1937261 () Unit!138755)

(declare-fun lemmaInGenMapThenLongMapContainsHash!935 (ListLongMap!4947 K!15297 Hashable!6723) Unit!138755)

(assert (=> b!4774238 (= lt!1937261 (lemmaInGenMapThenLongMapContainsHash!935 lm!1309 key!2872 hashF!980))))

(declare-fun b!4774239 () Bool)

(declare-fun e!2980497 () Bool)

(assert (=> b!4774239 (= e!2980497 e!2980499)))

(declare-fun res!2025602 () Bool)

(assert (=> b!4774239 (=> (not res!2025602) (not e!2980499))))

(declare-fun contains!17220 (ListMap!6013 K!15297) Bool)

(assert (=> b!4774239 (= res!2025602 (contains!17220 lt!1937271 key!2872))))

(declare-fun extractMap!2258 (List!53888) ListMap!6013)

(assert (=> b!4774239 (= lt!1937271 (extractMap!2258 (toList!6533 lm!1309)))))

(declare-fun b!4774240 () Bool)

(declare-fun e!2980498 () Bool)

(declare-fun tp!1356927 () Bool)

(assert (=> b!4774240 (= e!2980498 tp!1356927)))

(declare-fun b!4774241 () Bool)

(assert (=> b!4774241 (= e!2980495 e!2980496)))

(declare-fun res!2025605 () Bool)

(assert (=> b!4774241 (=> res!2025605 e!2980496)))

(assert (=> b!4774241 (= res!2025605 (not (forall!11991 (toList!6533 lm!1309) lambda!226176)))))

(declare-fun getValue!37 (List!53888 K!15297) V!15543)

(assert (=> b!4774241 (= (getValue!37 (toList!6533 lm!1309) key!2872) v!9615)))

(declare-fun lt!1937274 () Unit!138755)

(declare-fun lemmaGetValueEquivToGetPair!37 (ListLongMap!4947 K!15297 V!15543 Hashable!6723) Unit!138755)

(assert (=> b!4774241 (= lt!1937274 (lemmaGetValueEquivToGetPair!37 lm!1309 key!2872 v!9615 hashF!980))))

(declare-fun containsKeyBiggerList!379 (List!53888 K!15297) Bool)

(assert (=> b!4774241 (containsKeyBiggerList!379 (toList!6533 lm!1309) key!2872)))

(declare-fun lt!1937263 () Unit!138755)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!237 (ListLongMap!4947 K!15297 Hashable!6723) Unit!138755)

(assert (=> b!4774241 (= lt!1937263 (lemmaInLongMapThenContainsKeyBiggerList!237 lm!1309 key!2872 hashF!980))))

(declare-fun res!2025604 () Bool)

(assert (=> start!489180 (=> (not res!2025604) (not e!2980497))))

(assert (=> start!489180 (= res!2025604 (forall!11991 (toList!6533 lm!1309) lambda!226176))))

(assert (=> start!489180 e!2980497))

(declare-fun inv!69324 (ListLongMap!4947) Bool)

(assert (=> start!489180 (and (inv!69324 lm!1309) e!2980498)))

(assert (=> start!489180 true))

(declare-fun tp_is_empty!32869 () Bool)

(assert (=> start!489180 tp_is_empty!32869))

(declare-fun tp_is_empty!32871 () Bool)

(assert (=> start!489180 tp_is_empty!32871))

(declare-fun b!4774242 () Bool)

(declare-fun res!2025603 () Bool)

(assert (=> b!4774242 (=> (not res!2025603) (not e!2980497))))

(declare-fun allKeysSameHashInMap!2128 (ListLongMap!4947 Hashable!6723) Bool)

(assert (=> b!4774242 (= res!2025603 (allKeysSameHashInMap!2128 lm!1309 hashF!980))))

(assert (= (and start!489180 res!2025604) b!4774242))

(assert (= (and b!4774242 res!2025603) b!4774239))

(assert (= (and b!4774239 res!2025602) b!4774238))

(assert (= (and b!4774238 (not res!2025601)) b!4774241))

(assert (= (and b!4774241 (not res!2025605)) b!4774237))

(assert (= start!489180 b!4774240))

(declare-fun m!5748168 () Bool)

(assert (=> b!4774241 m!5748168))

(declare-fun m!5748170 () Bool)

(assert (=> b!4774241 m!5748170))

(declare-fun m!5748172 () Bool)

(assert (=> b!4774241 m!5748172))

(declare-fun m!5748174 () Bool)

(assert (=> b!4774241 m!5748174))

(declare-fun m!5748176 () Bool)

(assert (=> b!4774241 m!5748176))

(declare-fun m!5748178 () Bool)

(assert (=> b!4774238 m!5748178))

(declare-fun m!5748180 () Bool)

(assert (=> b!4774238 m!5748180))

(declare-fun m!5748182 () Bool)

(assert (=> b!4774238 m!5748182))

(declare-fun m!5748184 () Bool)

(assert (=> b!4774238 m!5748184))

(declare-fun m!5748186 () Bool)

(assert (=> b!4774238 m!5748186))

(declare-fun m!5748188 () Bool)

(assert (=> b!4774238 m!5748188))

(declare-fun m!5748190 () Bool)

(assert (=> b!4774238 m!5748190))

(declare-fun m!5748192 () Bool)

(assert (=> b!4774238 m!5748192))

(declare-fun m!5748194 () Bool)

(assert (=> b!4774238 m!5748194))

(assert (=> b!4774238 m!5748188))

(declare-fun m!5748196 () Bool)

(assert (=> b!4774238 m!5748196))

(declare-fun m!5748198 () Bool)

(assert (=> b!4774238 m!5748198))

(declare-fun m!5748200 () Bool)

(assert (=> b!4774239 m!5748200))

(declare-fun m!5748202 () Bool)

(assert (=> b!4774239 m!5748202))

(assert (=> b!4774237 m!5748188))

(declare-fun m!5748204 () Bool)

(assert (=> b!4774237 m!5748204))

(declare-fun m!5748206 () Bool)

(assert (=> b!4774237 m!5748206))

(assert (=> b!4774237 m!5748172))

(declare-fun m!5748208 () Bool)

(assert (=> b!4774237 m!5748208))

(declare-fun m!5748210 () Bool)

(assert (=> b!4774242 m!5748210))

(assert (=> start!489180 m!5748172))

(declare-fun m!5748212 () Bool)

(assert (=> start!489180 m!5748212))

(push 1)

(assert (not b!4774242))

(assert (not b!4774239))

(assert tp_is_empty!32871)

(assert (not b!4774241))

(assert (not b!4774238))

(assert (not start!489180))

(assert (not b!4774240))

(assert (not b!4774237))

(assert tp_is_empty!32869)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

