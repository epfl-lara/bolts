; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!489184 () Bool)

(assert start!489184)

(declare-fun b!4774273 () Bool)

(declare-fun e!2980528 () Bool)

(declare-fun e!2980529 () Bool)

(assert (=> b!4774273 (= e!2980528 e!2980529)))

(declare-fun res!2025634 () Bool)

(assert (=> b!4774273 (=> res!2025634 e!2980529)))

(declare-datatypes ((K!15302 0))(
  ( (K!15303 (val!20547 Int)) )
))
(declare-datatypes ((V!15548 0))(
  ( (V!15549 (val!20548 Int)) )
))
(declare-datatypes ((tuple2!56068 0))(
  ( (tuple2!56069 (_1!31328 K!15302) (_2!31328 V!15548)) )
))
(declare-datatypes ((List!53891 0))(
  ( (Nil!53767) (Cons!53767 (h!60181 tuple2!56068) (t!361341 List!53891)) )
))
(declare-datatypes ((tuple2!56070 0))(
  ( (tuple2!56071 (_1!31329 (_ BitVec 64)) (_2!31329 List!53891)) )
))
(declare-datatypes ((List!53892 0))(
  ( (Nil!53768) (Cons!53768 (h!60182 tuple2!56070) (t!361342 List!53892)) )
))
(declare-datatypes ((ListLongMap!4951 0))(
  ( (ListLongMap!4952 (toList!6537 List!53892)) )
))
(declare-fun lm!1309 () ListLongMap!4951)

(declare-fun lambda!226200 () Int)

(declare-fun forall!11993 (List!53892 Int) Bool)

(assert (=> b!4774273 (= res!2025634 (not (forall!11993 (toList!6537 lm!1309) lambda!226200)))))

(declare-fun key!2872 () K!15302)

(declare-fun v!9615 () V!15548)

(declare-fun getValue!39 (List!53892 K!15302) V!15548)

(assert (=> b!4774273 (= (getValue!39 (toList!6537 lm!1309) key!2872) v!9615)))

(declare-datatypes ((Hashable!6725 0))(
  ( (HashableExt!6724 (__x!32748 Int)) )
))
(declare-fun hashF!980 () Hashable!6725)

(declare-datatypes ((Unit!138759 0))(
  ( (Unit!138760) )
))
(declare-fun lt!1937354 () Unit!138759)

(declare-fun lemmaGetValueEquivToGetPair!39 (ListLongMap!4951 K!15302 V!15548 Hashable!6725) Unit!138759)

(assert (=> b!4774273 (= lt!1937354 (lemmaGetValueEquivToGetPair!39 lm!1309 key!2872 v!9615 hashF!980))))

(declare-fun containsKeyBiggerList!381 (List!53892 K!15302) Bool)

(assert (=> b!4774273 (containsKeyBiggerList!381 (toList!6537 lm!1309) key!2872)))

(declare-fun lt!1937361 () Unit!138759)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!239 (ListLongMap!4951 K!15302 Hashable!6725) Unit!138759)

(assert (=> b!4774273 (= lt!1937361 (lemmaInLongMapThenContainsKeyBiggerList!239 lm!1309 key!2872 hashF!980))))

(declare-fun b!4774274 () Bool)

(declare-fun e!2980527 () Bool)

(declare-fun tp!1356933 () Bool)

(assert (=> b!4774274 (= e!2980527 tp!1356933)))

(declare-fun b!4774275 () Bool)

(declare-fun e!2980525 () Bool)

(declare-fun e!2980526 () Bool)

(assert (=> b!4774275 (= e!2980525 e!2980526)))

(declare-fun res!2025632 () Bool)

(assert (=> b!4774275 (=> (not res!2025632) (not e!2980526))))

(declare-datatypes ((ListMap!6017 0))(
  ( (ListMap!6018 (toList!6538 List!53891)) )
))
(declare-fun lt!1937350 () ListMap!6017)

(declare-fun contains!17224 (ListMap!6017 K!15302) Bool)

(assert (=> b!4774275 (= res!2025632 (contains!17224 lt!1937350 key!2872))))

(declare-fun extractMap!2260 (List!53892) ListMap!6017)

(assert (=> b!4774275 (= lt!1937350 (extractMap!2260 (toList!6537 lm!1309)))))

(declare-fun res!2025631 () Bool)

(assert (=> start!489184 (=> (not res!2025631) (not e!2980525))))

(assert (=> start!489184 (= res!2025631 (forall!11993 (toList!6537 lm!1309) lambda!226200))))

(assert (=> start!489184 e!2980525))

(declare-fun inv!69329 (ListLongMap!4951) Bool)

(assert (=> start!489184 (and (inv!69329 lm!1309) e!2980527)))

(assert (=> start!489184 true))

(declare-fun tp_is_empty!32877 () Bool)

(assert (=> start!489184 tp_is_empty!32877))

(declare-fun tp_is_empty!32879 () Bool)

(assert (=> start!489184 tp_is_empty!32879))

(declare-fun b!4774276 () Bool)

(assert (=> b!4774276 (= e!2980526 (not e!2980528))))

(declare-fun res!2025633 () Bool)

(assert (=> b!4774276 (=> res!2025633 e!2980528)))

(declare-datatypes ((Option!12822 0))(
  ( (None!12821) (Some!12821 (v!47968 tuple2!56068)) )
))
(declare-fun lt!1937364 () Option!12822)

(declare-fun get!18221 (Option!12822) tuple2!56068)

(assert (=> b!4774276 (= res!2025633 (not (= (_2!31328 (get!18221 lt!1937364)) v!9615)))))

(declare-fun isDefined!9967 (Option!12822) Bool)

(assert (=> b!4774276 (isDefined!9967 lt!1937364)))

(declare-fun lt!1937355 () List!53891)

(declare-fun getPair!733 (List!53891 K!15302) Option!12822)

(assert (=> b!4774276 (= lt!1937364 (getPair!733 lt!1937355 key!2872))))

(declare-fun lt!1937362 () Unit!138759)

(declare-fun lt!1937352 () tuple2!56070)

(declare-fun forallContained!3966 (List!53892 Int tuple2!56070) Unit!138759)

(assert (=> b!4774276 (= lt!1937362 (forallContained!3966 (toList!6537 lm!1309) lambda!226200 lt!1937352))))

(declare-fun lt!1937363 () Unit!138759)

(declare-fun lemmaInGenMapThenGetPairDefined!507 (ListLongMap!4951 K!15302 Hashable!6725) Unit!138759)

(assert (=> b!4774276 (= lt!1937363 (lemmaInGenMapThenGetPairDefined!507 lm!1309 key!2872 hashF!980))))

(declare-fun lt!1937358 () Unit!138759)

(assert (=> b!4774276 (= lt!1937358 (forallContained!3966 (toList!6537 lm!1309) lambda!226200 lt!1937352))))

(declare-fun contains!17225 (List!53892 tuple2!56070) Bool)

(assert (=> b!4774276 (contains!17225 (toList!6537 lm!1309) lt!1937352)))

(declare-fun lt!1937357 () (_ BitVec 64))

(assert (=> b!4774276 (= lt!1937352 (tuple2!56071 lt!1937357 lt!1937355))))

(declare-fun lt!1937360 () Unit!138759)

(declare-fun lemmaGetValueImpliesTupleContained!528 (ListLongMap!4951 (_ BitVec 64) List!53891) Unit!138759)

(assert (=> b!4774276 (= lt!1937360 (lemmaGetValueImpliesTupleContained!528 lm!1309 lt!1937357 lt!1937355))))

(declare-fun apply!12794 (ListLongMap!4951 (_ BitVec 64)) List!53891)

(assert (=> b!4774276 (= lt!1937355 (apply!12794 lm!1309 lt!1937357))))

(declare-fun contains!17226 (ListLongMap!4951 (_ BitVec 64)) Bool)

(assert (=> b!4774276 (contains!17226 lm!1309 lt!1937357)))

(declare-fun hash!4701 (Hashable!6725 K!15302) (_ BitVec 64))

(assert (=> b!4774276 (= lt!1937357 (hash!4701 hashF!980 key!2872))))

(declare-fun lt!1937351 () Unit!138759)

(declare-fun lemmaInGenMapThenLongMapContainsHash!937 (ListLongMap!4951 K!15302 Hashable!6725) Unit!138759)

(assert (=> b!4774276 (= lt!1937351 (lemmaInGenMapThenLongMapContainsHash!937 lm!1309 key!2872 hashF!980))))

(declare-fun b!4774277 () Bool)

(declare-fun res!2025635 () Bool)

(assert (=> b!4774277 (=> (not res!2025635) (not e!2980525))))

(declare-fun allKeysSameHashInMap!2130 (ListLongMap!4951 Hashable!6725) Bool)

(assert (=> b!4774277 (= res!2025635 (allKeysSameHashInMap!2130 lm!1309 hashF!980))))

(declare-fun b!4774278 () Bool)

(assert (=> b!4774278 (= e!2980529 true)))

(declare-fun lt!1937353 () Unit!138759)

(assert (=> b!4774278 (= lt!1937353 (forallContained!3966 (toList!6537 lm!1309) lambda!226200 lt!1937352))))

(declare-fun apply!12795 (ListMap!6017 K!15302) V!15548)

(assert (=> b!4774278 (= (apply!12795 lt!1937350 key!2872) v!9615)))

(declare-fun lt!1937356 () Unit!138759)

(declare-fun lemmaExtractMapPreservesMapping!29 (ListLongMap!4951 K!15302 V!15548 Hashable!6725) Unit!138759)

(assert (=> b!4774278 (= lt!1937356 (lemmaExtractMapPreservesMapping!29 lm!1309 key!2872 v!9615 hashF!980))))

(declare-fun lt!1937359 () Unit!138759)

(declare-fun lemmaInGenericMapThenInLongMap!247 (ListLongMap!4951 K!15302 Hashable!6725) Unit!138759)

(assert (=> b!4774278 (= lt!1937359 (lemmaInGenericMapThenInLongMap!247 lm!1309 key!2872 hashF!980))))

(assert (= (and start!489184 res!2025631) b!4774277))

(assert (= (and b!4774277 res!2025635) b!4774275))

(assert (= (and b!4774275 res!2025632) b!4774276))

(assert (= (and b!4774276 (not res!2025633)) b!4774273))

(assert (= (and b!4774273 (not res!2025634)) b!4774278))

(assert (= start!489184 b!4774274))

(declare-fun m!5748260 () Bool)

(assert (=> b!4774277 m!5748260))

(declare-fun m!5748262 () Bool)

(assert (=> b!4774278 m!5748262))

(declare-fun m!5748264 () Bool)

(assert (=> b!4774278 m!5748264))

(declare-fun m!5748266 () Bool)

(assert (=> b!4774278 m!5748266))

(declare-fun m!5748268 () Bool)

(assert (=> b!4774278 m!5748268))

(declare-fun m!5748270 () Bool)

(assert (=> b!4774275 m!5748270))

(declare-fun m!5748272 () Bool)

(assert (=> b!4774275 m!5748272))

(declare-fun m!5748274 () Bool)

(assert (=> start!489184 m!5748274))

(declare-fun m!5748276 () Bool)

(assert (=> start!489184 m!5748276))

(declare-fun m!5748278 () Bool)

(assert (=> b!4774273 m!5748278))

(assert (=> b!4774273 m!5748274))

(declare-fun m!5748280 () Bool)

(assert (=> b!4774273 m!5748280))

(declare-fun m!5748282 () Bool)

(assert (=> b!4774273 m!5748282))

(declare-fun m!5748284 () Bool)

(assert (=> b!4774273 m!5748284))

(declare-fun m!5748286 () Bool)

(assert (=> b!4774276 m!5748286))

(declare-fun m!5748288 () Bool)

(assert (=> b!4774276 m!5748288))

(declare-fun m!5748290 () Bool)

(assert (=> b!4774276 m!5748290))

(declare-fun m!5748292 () Bool)

(assert (=> b!4774276 m!5748292))

(declare-fun m!5748294 () Bool)

(assert (=> b!4774276 m!5748294))

(assert (=> b!4774276 m!5748262))

(declare-fun m!5748296 () Bool)

(assert (=> b!4774276 m!5748296))

(declare-fun m!5748298 () Bool)

(assert (=> b!4774276 m!5748298))

(declare-fun m!5748300 () Bool)

(assert (=> b!4774276 m!5748300))

(assert (=> b!4774276 m!5748262))

(declare-fun m!5748302 () Bool)

(assert (=> b!4774276 m!5748302))

(declare-fun m!5748304 () Bool)

(assert (=> b!4774276 m!5748304))

(push 1)

(assert (not b!4774277))

(assert (not start!489184))

(assert (not b!4774275))

(assert (not b!4774274))

(assert (not b!4774276))

(assert tp_is_empty!32879)

(assert tp_is_empty!32877)

(assert (not b!4774273))

(assert (not b!4774278))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

