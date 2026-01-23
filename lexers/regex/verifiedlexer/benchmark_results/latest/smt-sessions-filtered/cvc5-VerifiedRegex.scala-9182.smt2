; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!488696 () Bool)

(assert start!488696)

(declare-fun res!2024451 () Bool)

(declare-fun e!2979239 () Bool)

(assert (=> start!488696 (=> (not res!2024451) (not e!2979239))))

(declare-datatypes ((K!15197 0))(
  ( (K!15198 (val!20463 Int)) )
))
(declare-datatypes ((V!15443 0))(
  ( (V!15444 (val!20464 Int)) )
))
(declare-datatypes ((tuple2!55900 0))(
  ( (tuple2!55901 (_1!31244 K!15197) (_2!31244 V!15443)) )
))
(declare-datatypes ((List!53801 0))(
  ( (Nil!53677) (Cons!53677 (h!60089 tuple2!55900) (t!361251 List!53801)) )
))
(declare-datatypes ((tuple2!55902 0))(
  ( (tuple2!55903 (_1!31245 (_ BitVec 64)) (_2!31245 List!53801)) )
))
(declare-datatypes ((List!53802 0))(
  ( (Nil!53678) (Cons!53678 (h!60090 tuple2!55902) (t!361252 List!53802)) )
))
(declare-datatypes ((ListLongMap!4867 0))(
  ( (ListLongMap!4868 (toList!6453 List!53802)) )
))
(declare-fun lm!1309 () ListLongMap!4867)

(declare-fun lambda!225572 () Int)

(declare-fun forall!11947 (List!53802 Int) Bool)

(assert (=> start!488696 (= res!2024451 (forall!11947 (toList!6453 lm!1309) lambda!225572))))

(assert (=> start!488696 e!2979239))

(declare-fun e!2979238 () Bool)

(declare-fun inv!69224 (ListLongMap!4867) Bool)

(assert (=> start!488696 (and (inv!69224 lm!1309) e!2979238)))

(assert (=> start!488696 true))

(declare-fun tp_is_empty!32729 () Bool)

(assert (=> start!488696 tp_is_empty!32729))

(declare-fun tp_is_empty!32731 () Bool)

(assert (=> start!488696 tp_is_empty!32731))

(declare-fun b!4772351 () Bool)

(declare-fun e!2979237 () Bool)

(declare-fun e!2979235 () Bool)

(assert (=> b!4772351 (= e!2979237 (not e!2979235))))

(declare-fun res!2024454 () Bool)

(assert (=> b!4772351 (=> res!2024454 e!2979235)))

(declare-datatypes ((Option!12781 0))(
  ( (None!12780) (Some!12780 (v!47913 tuple2!55900)) )
))
(declare-fun lt!1935321 () Option!12781)

(declare-fun v!9615 () V!15443)

(declare-fun get!18163 (Option!12781) tuple2!55900)

(assert (=> b!4772351 (= res!2024454 (not (= (_2!31244 (get!18163 lt!1935321)) v!9615)))))

(declare-fun isDefined!9927 (Option!12781) Bool)

(assert (=> b!4772351 (isDefined!9927 lt!1935321)))

(declare-fun lt!1935316 () List!53801)

(declare-fun key!2872 () K!15197)

(declare-fun getPair!703 (List!53801 K!15197) Option!12781)

(assert (=> b!4772351 (= lt!1935321 (getPair!703 lt!1935316 key!2872))))

(declare-fun lt!1935318 () tuple2!55902)

(declare-datatypes ((Unit!138575 0))(
  ( (Unit!138576) )
))
(declare-fun lt!1935324 () Unit!138575)

(declare-fun forallContained!3928 (List!53802 Int tuple2!55902) Unit!138575)

(assert (=> b!4772351 (= lt!1935324 (forallContained!3928 (toList!6453 lm!1309) lambda!225572 lt!1935318))))

(declare-datatypes ((Hashable!6683 0))(
  ( (HashableExt!6682 (__x!32706 Int)) )
))
(declare-fun hashF!980 () Hashable!6683)

(declare-fun lt!1935325 () Unit!138575)

(declare-fun lemmaInGenMapThenGetPairDefined!477 (ListLongMap!4867 K!15197 Hashable!6683) Unit!138575)

(assert (=> b!4772351 (= lt!1935325 (lemmaInGenMapThenGetPairDefined!477 lm!1309 key!2872 hashF!980))))

(declare-fun lt!1935317 () Unit!138575)

(assert (=> b!4772351 (= lt!1935317 (forallContained!3928 (toList!6453 lm!1309) lambda!225572 lt!1935318))))

(declare-fun contains!17100 (List!53802 tuple2!55902) Bool)

(assert (=> b!4772351 (contains!17100 (toList!6453 lm!1309) lt!1935318)))

(declare-fun lt!1935327 () (_ BitVec 64))

(assert (=> b!4772351 (= lt!1935318 (tuple2!55903 lt!1935327 lt!1935316))))

(declare-fun lt!1935319 () Unit!138575)

(declare-fun lemmaGetValueImpliesTupleContained!494 (ListLongMap!4867 (_ BitVec 64) List!53801) Unit!138575)

(assert (=> b!4772351 (= lt!1935319 (lemmaGetValueImpliesTupleContained!494 lm!1309 lt!1935327 lt!1935316))))

(declare-fun apply!12746 (ListLongMap!4867 (_ BitVec 64)) List!53801)

(assert (=> b!4772351 (= lt!1935316 (apply!12746 lm!1309 lt!1935327))))

(declare-fun contains!17101 (ListLongMap!4867 (_ BitVec 64)) Bool)

(assert (=> b!4772351 (contains!17101 lm!1309 lt!1935327)))

(declare-fun hash!4659 (Hashable!6683 K!15197) (_ BitVec 64))

(assert (=> b!4772351 (= lt!1935327 (hash!4659 hashF!980 key!2872))))

(declare-fun lt!1935323 () Unit!138575)

(declare-fun lemmaInGenMapThenLongMapContainsHash!899 (ListLongMap!4867 K!15197 Hashable!6683) Unit!138575)

(assert (=> b!4772351 (= lt!1935323 (lemmaInGenMapThenLongMapContainsHash!899 lm!1309 key!2872 hashF!980))))

(declare-fun b!4772352 () Bool)

(assert (=> b!4772352 (= e!2979239 e!2979237)))

(declare-fun res!2024453 () Bool)

(assert (=> b!4772352 (=> (not res!2024453) (not e!2979237))))

(declare-datatypes ((ListMap!5933 0))(
  ( (ListMap!5934 (toList!6454 List!53801)) )
))
(declare-fun lt!1935313 () ListMap!5933)

(declare-fun contains!17102 (ListMap!5933 K!15197) Bool)

(assert (=> b!4772352 (= res!2024453 (contains!17102 lt!1935313 key!2872))))

(declare-fun extractMap!2218 (List!53802) ListMap!5933)

(assert (=> b!4772352 (= lt!1935313 (extractMap!2218 (toList!6453 lm!1309)))))

(declare-fun b!4772353 () Bool)

(declare-fun e!2979236 () Bool)

(assert (=> b!4772353 (= e!2979236 (forall!11947 (toList!6453 lm!1309) lambda!225572))))

(declare-fun lt!1935315 () Unit!138575)

(assert (=> b!4772353 (= lt!1935315 (forallContained!3928 (toList!6453 lm!1309) lambda!225572 lt!1935318))))

(declare-fun lt!1935312 () Unit!138575)

(assert (=> b!4772353 (= lt!1935312 (forallContained!3928 (toList!6453 lm!1309) lambda!225572 lt!1935318))))

(declare-fun apply!12747 (ListMap!5933 K!15197) V!15443)

(assert (=> b!4772353 (= (apply!12747 lt!1935313 key!2872) v!9615)))

(declare-fun lt!1935320 () Unit!138575)

(declare-fun lemmaExtractMapPreservesMapping!19 (ListLongMap!4867 K!15197 V!15443 Hashable!6683) Unit!138575)

(assert (=> b!4772353 (= lt!1935320 (lemmaExtractMapPreservesMapping!19 lm!1309 key!2872 v!9615 hashF!980))))

(declare-fun lt!1935314 () Unit!138575)

(declare-fun lemmaInGenericMapThenInLongMap!235 (ListLongMap!4867 K!15197 Hashable!6683) Unit!138575)

(assert (=> b!4772353 (= lt!1935314 (lemmaInGenericMapThenInLongMap!235 lm!1309 key!2872 hashF!980))))

(declare-fun b!4772354 () Bool)

(declare-fun tp!1356753 () Bool)

(assert (=> b!4772354 (= e!2979238 tp!1356753)))

(declare-fun b!4772355 () Bool)

(assert (=> b!4772355 (= e!2979235 e!2979236)))

(declare-fun res!2024452 () Bool)

(assert (=> b!4772355 (=> res!2024452 e!2979236)))

(assert (=> b!4772355 (= res!2024452 (not (forall!11947 (toList!6453 lm!1309) lambda!225572)))))

(declare-fun getValue!23 (List!53802 K!15197) V!15443)

(assert (=> b!4772355 (= (getValue!23 (toList!6453 lm!1309) key!2872) v!9615)))

(declare-fun lt!1935322 () Unit!138575)

(declare-fun lemmaGetValueEquivToGetPair!23 (ListLongMap!4867 K!15197 V!15443 Hashable!6683) Unit!138575)

(assert (=> b!4772355 (= lt!1935322 (lemmaGetValueEquivToGetPair!23 lm!1309 key!2872 v!9615 hashF!980))))

(declare-fun containsKeyBiggerList!357 (List!53802 K!15197) Bool)

(assert (=> b!4772355 (containsKeyBiggerList!357 (toList!6453 lm!1309) key!2872)))

(declare-fun lt!1935326 () Unit!138575)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!215 (ListLongMap!4867 K!15197 Hashable!6683) Unit!138575)

(assert (=> b!4772355 (= lt!1935326 (lemmaInLongMapThenContainsKeyBiggerList!215 lm!1309 key!2872 hashF!980))))

(declare-fun b!4772356 () Bool)

(declare-fun res!2024455 () Bool)

(assert (=> b!4772356 (=> (not res!2024455) (not e!2979239))))

(declare-fun allKeysSameHashInMap!2088 (ListLongMap!4867 Hashable!6683) Bool)

(assert (=> b!4772356 (= res!2024455 (allKeysSameHashInMap!2088 lm!1309 hashF!980))))

(assert (= (and start!488696 res!2024451) b!4772356))

(assert (= (and b!4772356 res!2024455) b!4772352))

(assert (= (and b!4772352 res!2024453) b!4772351))

(assert (= (and b!4772351 (not res!2024454)) b!4772355))

(assert (= (and b!4772355 (not res!2024452)) b!4772353))

(assert (= start!488696 b!4772354))

(declare-fun m!5745112 () Bool)

(assert (=> b!4772353 m!5745112))

(declare-fun m!5745114 () Bool)

(assert (=> b!4772353 m!5745114))

(declare-fun m!5745116 () Bool)

(assert (=> b!4772353 m!5745116))

(declare-fun m!5745118 () Bool)

(assert (=> b!4772353 m!5745118))

(declare-fun m!5745120 () Bool)

(assert (=> b!4772353 m!5745120))

(assert (=> b!4772353 m!5745112))

(assert (=> start!488696 m!5745120))

(declare-fun m!5745122 () Bool)

(assert (=> start!488696 m!5745122))

(declare-fun m!5745124 () Bool)

(assert (=> b!4772355 m!5745124))

(declare-fun m!5745126 () Bool)

(assert (=> b!4772355 m!5745126))

(assert (=> b!4772355 m!5745120))

(declare-fun m!5745128 () Bool)

(assert (=> b!4772355 m!5745128))

(declare-fun m!5745130 () Bool)

(assert (=> b!4772355 m!5745130))

(declare-fun m!5745132 () Bool)

(assert (=> b!4772351 m!5745132))

(declare-fun m!5745134 () Bool)

(assert (=> b!4772351 m!5745134))

(declare-fun m!5745136 () Bool)

(assert (=> b!4772351 m!5745136))

(assert (=> b!4772351 m!5745112))

(declare-fun m!5745138 () Bool)

(assert (=> b!4772351 m!5745138))

(declare-fun m!5745140 () Bool)

(assert (=> b!4772351 m!5745140))

(declare-fun m!5745142 () Bool)

(assert (=> b!4772351 m!5745142))

(assert (=> b!4772351 m!5745112))

(declare-fun m!5745144 () Bool)

(assert (=> b!4772351 m!5745144))

(declare-fun m!5745146 () Bool)

(assert (=> b!4772351 m!5745146))

(declare-fun m!5745148 () Bool)

(assert (=> b!4772351 m!5745148))

(declare-fun m!5745150 () Bool)

(assert (=> b!4772351 m!5745150))

(declare-fun m!5745152 () Bool)

(assert (=> b!4772352 m!5745152))

(declare-fun m!5745154 () Bool)

(assert (=> b!4772352 m!5745154))

(declare-fun m!5745156 () Bool)

(assert (=> b!4772356 m!5745156))

(push 1)

(assert (not b!4772352))

(assert (not start!488696))

(assert (not b!4772353))

(assert (not b!4772355))

(assert tp_is_empty!32729)

(assert (not b!4772351))

(assert (not b!4772354))

(assert tp_is_empty!32731)

(assert (not b!4772356))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

