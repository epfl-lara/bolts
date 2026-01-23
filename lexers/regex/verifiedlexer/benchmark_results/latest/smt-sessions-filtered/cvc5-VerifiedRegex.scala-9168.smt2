; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!488544 () Bool)

(assert start!488544)

(declare-fun b!4771573 () Bool)

(declare-fun e!2978645 () Bool)

(declare-fun tp!1356657 () Bool)

(assert (=> b!4771573 (= e!2978645 tp!1356657)))

(declare-fun b!4771574 () Bool)

(declare-fun res!2023871 () Bool)

(declare-fun e!2978646 () Bool)

(assert (=> b!4771574 (=> (not res!2023871) (not e!2978646))))

(declare-datatypes ((K!15127 0))(
  ( (K!15128 (val!20407 Int)) )
))
(declare-datatypes ((V!15373 0))(
  ( (V!15374 (val!20408 Int)) )
))
(declare-datatypes ((tuple2!55788 0))(
  ( (tuple2!55789 (_1!31188 K!15127) (_2!31188 V!15373)) )
))
(declare-datatypes ((List!53743 0))(
  ( (Nil!53619) (Cons!53619 (h!60031 tuple2!55788) (t!361193 List!53743)) )
))
(declare-datatypes ((tuple2!55790 0))(
  ( (tuple2!55791 (_1!31189 (_ BitVec 64)) (_2!31189 List!53743)) )
))
(declare-datatypes ((List!53744 0))(
  ( (Nil!53620) (Cons!53620 (h!60032 tuple2!55790) (t!361194 List!53744)) )
))
(declare-datatypes ((ListLongMap!4811 0))(
  ( (ListLongMap!4812 (toList!6397 List!53744)) )
))
(declare-fun lm!1309 () ListLongMap!4811)

(declare-datatypes ((Hashable!6655 0))(
  ( (HashableExt!6654 (__x!32678 Int)) )
))
(declare-fun hashF!980 () Hashable!6655)

(declare-fun allKeysSameHashInMap!2060 (ListLongMap!4811 Hashable!6655) Bool)

(assert (=> b!4771574 (= res!2023871 (allKeysSameHashInMap!2060 lm!1309 hashF!980))))

(declare-fun b!4771575 () Bool)

(declare-fun e!2978648 () Bool)

(declare-fun e!2978647 () Bool)

(assert (=> b!4771575 (= e!2978648 e!2978647)))

(declare-fun res!2023869 () Bool)

(assert (=> b!4771575 (=> res!2023869 e!2978647)))

(declare-fun lambda!225176 () Int)

(declare-fun forall!11919 (List!53744 Int) Bool)

(assert (=> b!4771575 (= res!2023869 (not (forall!11919 (toList!6397 lm!1309) lambda!225176)))))

(declare-fun key!2872 () K!15127)

(declare-fun containsKeyBiggerList!329 (List!53744 K!15127) Bool)

(assert (=> b!4771575 (containsKeyBiggerList!329 (toList!6397 lm!1309) key!2872)))

(declare-datatypes ((Unit!138514 0))(
  ( (Unit!138515) )
))
(declare-fun lt!1933951 () Unit!138514)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!187 (ListLongMap!4811 K!15127 Hashable!6655) Unit!138514)

(assert (=> b!4771575 (= lt!1933951 (lemmaInLongMapThenContainsKeyBiggerList!187 lm!1309 key!2872 hashF!980))))

(declare-fun b!4771576 () Bool)

(declare-fun res!2023870 () Bool)

(assert (=> b!4771576 (=> (not res!2023870) (not e!2978646))))

(declare-datatypes ((ListMap!5877 0))(
  ( (ListMap!5878 (toList!6398 List!53743)) )
))
(declare-fun contains!17013 (ListMap!5877 K!15127) Bool)

(declare-fun extractMap!2190 (List!53744) ListMap!5877)

(assert (=> b!4771576 (= res!2023870 (contains!17013 (extractMap!2190 (toList!6397 lm!1309)) key!2872))))

(declare-fun b!4771577 () Bool)

(assert (=> b!4771577 (= e!2978647 (forall!11919 (toList!6397 lm!1309) lambda!225176))))

(declare-fun lt!1933947 () tuple2!55790)

(declare-fun lt!1933954 () Unit!138514)

(declare-fun forallContained!3900 (List!53744 Int tuple2!55790) Unit!138514)

(assert (=> b!4771577 (= lt!1933954 (forallContained!3900 (toList!6397 lm!1309) lambda!225176 lt!1933947))))

(declare-fun lt!1933949 () Unit!138514)

(assert (=> b!4771577 (= lt!1933949 (forallContained!3900 (toList!6397 lm!1309) lambda!225176 lt!1933947))))

(declare-fun lt!1933955 () Unit!138514)

(declare-fun lemmaListContainsThenExtractedMapContains!577 (ListLongMap!4811 K!15127 Hashable!6655) Unit!138514)

(assert (=> b!4771577 (= lt!1933955 (lemmaListContainsThenExtractedMapContains!577 lm!1309 key!2872 hashF!980))))

(declare-fun res!2023873 () Bool)

(assert (=> start!488544 (=> (not res!2023873) (not e!2978646))))

(assert (=> start!488544 (= res!2023873 (forall!11919 (toList!6397 lm!1309) lambda!225176))))

(assert (=> start!488544 e!2978646))

(declare-fun inv!69154 (ListLongMap!4811) Bool)

(assert (=> start!488544 (and (inv!69154 lm!1309) e!2978645)))

(assert (=> start!488544 true))

(declare-fun tp_is_empty!32617 () Bool)

(assert (=> start!488544 tp_is_empty!32617))

(declare-fun tp_is_empty!32619 () Bool)

(assert (=> start!488544 tp_is_empty!32619))

(declare-fun b!4771578 () Bool)

(assert (=> b!4771578 (= e!2978646 (not e!2978648))))

(declare-fun res!2023872 () Bool)

(assert (=> b!4771578 (=> res!2023872 e!2978648)))

(declare-datatypes ((Option!12750 0))(
  ( (None!12749) (Some!12749 (v!47876 tuple2!55788)) )
))
(declare-fun lt!1933953 () Option!12750)

(declare-fun v!9615 () V!15373)

(declare-fun get!18118 (Option!12750) tuple2!55788)

(assert (=> b!4771578 (= res!2023872 (not (= (_2!31188 (get!18118 lt!1933953)) v!9615)))))

(declare-fun isDefined!9896 (Option!12750) Bool)

(assert (=> b!4771578 (isDefined!9896 lt!1933953)))

(declare-fun lt!1933948 () List!53743)

(declare-fun getPair!675 (List!53743 K!15127) Option!12750)

(assert (=> b!4771578 (= lt!1933953 (getPair!675 lt!1933948 key!2872))))

(declare-fun lt!1933944 () Unit!138514)

(assert (=> b!4771578 (= lt!1933944 (forallContained!3900 (toList!6397 lm!1309) lambda!225176 lt!1933947))))

(declare-fun lt!1933945 () Unit!138514)

(declare-fun lemmaInGenMapThenGetPairDefined!449 (ListLongMap!4811 K!15127 Hashable!6655) Unit!138514)

(assert (=> b!4771578 (= lt!1933945 (lemmaInGenMapThenGetPairDefined!449 lm!1309 key!2872 hashF!980))))

(declare-fun lt!1933956 () Unit!138514)

(assert (=> b!4771578 (= lt!1933956 (forallContained!3900 (toList!6397 lm!1309) lambda!225176 lt!1933947))))

(declare-fun contains!17014 (List!53744 tuple2!55790) Bool)

(assert (=> b!4771578 (contains!17014 (toList!6397 lm!1309) lt!1933947)))

(declare-fun lt!1933946 () (_ BitVec 64))

(assert (=> b!4771578 (= lt!1933947 (tuple2!55791 lt!1933946 lt!1933948))))

(declare-fun lt!1933952 () Unit!138514)

(declare-fun lemmaGetValueImpliesTupleContained!466 (ListLongMap!4811 (_ BitVec 64) List!53743) Unit!138514)

(assert (=> b!4771578 (= lt!1933952 (lemmaGetValueImpliesTupleContained!466 lm!1309 lt!1933946 lt!1933948))))

(declare-fun apply!12700 (ListLongMap!4811 (_ BitVec 64)) List!53743)

(assert (=> b!4771578 (= lt!1933948 (apply!12700 lm!1309 lt!1933946))))

(declare-fun contains!17015 (ListLongMap!4811 (_ BitVec 64)) Bool)

(assert (=> b!4771578 (contains!17015 lm!1309 lt!1933946)))

(declare-fun hash!4630 (Hashable!6655 K!15127) (_ BitVec 64))

(assert (=> b!4771578 (= lt!1933946 (hash!4630 hashF!980 key!2872))))

(declare-fun lt!1933950 () Unit!138514)

(declare-fun lemmaInGenMapThenLongMapContainsHash!871 (ListLongMap!4811 K!15127 Hashable!6655) Unit!138514)

(assert (=> b!4771578 (= lt!1933950 (lemmaInGenMapThenLongMapContainsHash!871 lm!1309 key!2872 hashF!980))))

(assert (= (and start!488544 res!2023873) b!4771574))

(assert (= (and b!4771574 res!2023871) b!4771576))

(assert (= (and b!4771576 res!2023870) b!4771578))

(assert (= (and b!4771578 (not res!2023872)) b!4771575))

(assert (= (and b!4771575 (not res!2023869)) b!4771577))

(assert (= start!488544 b!4771573))

(declare-fun m!5743600 () Bool)

(assert (=> start!488544 m!5743600))

(declare-fun m!5743602 () Bool)

(assert (=> start!488544 m!5743602))

(declare-fun m!5743604 () Bool)

(assert (=> b!4771576 m!5743604))

(assert (=> b!4771576 m!5743604))

(declare-fun m!5743606 () Bool)

(assert (=> b!4771576 m!5743606))

(assert (=> b!4771575 m!5743600))

(declare-fun m!5743608 () Bool)

(assert (=> b!4771575 m!5743608))

(declare-fun m!5743610 () Bool)

(assert (=> b!4771575 m!5743610))

(declare-fun m!5743612 () Bool)

(assert (=> b!4771578 m!5743612))

(declare-fun m!5743614 () Bool)

(assert (=> b!4771578 m!5743614))

(declare-fun m!5743616 () Bool)

(assert (=> b!4771578 m!5743616))

(declare-fun m!5743618 () Bool)

(assert (=> b!4771578 m!5743618))

(declare-fun m!5743620 () Bool)

(assert (=> b!4771578 m!5743620))

(declare-fun m!5743622 () Bool)

(assert (=> b!4771578 m!5743622))

(declare-fun m!5743624 () Bool)

(assert (=> b!4771578 m!5743624))

(declare-fun m!5743626 () Bool)

(assert (=> b!4771578 m!5743626))

(declare-fun m!5743628 () Bool)

(assert (=> b!4771578 m!5743628))

(declare-fun m!5743630 () Bool)

(assert (=> b!4771578 m!5743630))

(declare-fun m!5743632 () Bool)

(assert (=> b!4771578 m!5743632))

(assert (=> b!4771578 m!5743632))

(assert (=> b!4771577 m!5743600))

(assert (=> b!4771577 m!5743632))

(assert (=> b!4771577 m!5743632))

(declare-fun m!5743634 () Bool)

(assert (=> b!4771577 m!5743634))

(declare-fun m!5743636 () Bool)

(assert (=> b!4771574 m!5743636))

(push 1)

(assert (not b!4771576))

(assert (not start!488544))

(assert (not b!4771578))

(assert tp_is_empty!32619)

(assert (not b!4771577))

(assert tp_is_empty!32617)

(assert (not b!4771575))

(assert (not b!4771574))

(assert (not b!4771573))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

