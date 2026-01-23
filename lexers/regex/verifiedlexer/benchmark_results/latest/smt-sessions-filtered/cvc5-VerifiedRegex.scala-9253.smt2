; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!490892 () Bool)

(assert start!490892)

(declare-fun b!4781203 () Bool)

(declare-fun res!2030021 () Bool)

(declare-fun e!2984961 () Bool)

(assert (=> b!4781203 (=> res!2030021 e!2984961)))

(declare-datatypes ((K!15552 0))(
  ( (K!15553 (val!20747 Int)) )
))
(declare-datatypes ((V!15798 0))(
  ( (V!15799 (val!20748 Int)) )
))
(declare-datatypes ((tuple2!56468 0))(
  ( (tuple2!56469 (_1!31528 K!15552) (_2!31528 V!15798)) )
))
(declare-datatypes ((List!54111 0))(
  ( (Nil!53987) (Cons!53987 (h!60407 tuple2!56468) (t!361561 List!54111)) )
))
(declare-datatypes ((tuple2!56470 0))(
  ( (tuple2!56471 (_1!31529 (_ BitVec 64)) (_2!31529 List!54111)) )
))
(declare-datatypes ((List!54112 0))(
  ( (Nil!53988) (Cons!53988 (h!60408 tuple2!56470) (t!361562 List!54112)) )
))
(declare-datatypes ((ListLongMap!5151 0))(
  ( (ListLongMap!5152 (toList!6729 List!54112)) )
))
(declare-fun lm!2709 () ListLongMap!5151)

(declare-fun lambda!228156 () Int)

(declare-fun forall!12117 (List!54112 Int) Bool)

(assert (=> b!4781203 (= res!2030021 (not (forall!12117 (toList!6729 lm!2709) lambda!228156)))))

(declare-fun b!4781204 () Bool)

(declare-fun res!2030020 () Bool)

(declare-fun e!2984959 () Bool)

(assert (=> b!4781204 (=> (not res!2030020) (not e!2984959))))

(declare-datatypes ((Hashable!6825 0))(
  ( (HashableExt!6824 (__x!32848 Int)) )
))
(declare-fun hashF!1687 () Hashable!6825)

(declare-fun allKeysSameHashInMap!2230 (ListLongMap!5151 Hashable!6825) Bool)

(assert (=> b!4781204 (= res!2030020 (allKeysSameHashInMap!2230 lm!2709 hashF!1687))))

(declare-fun b!4781205 () Bool)

(assert (=> b!4781205 (= e!2984959 (not e!2984961))))

(declare-fun res!2030019 () Bool)

(assert (=> b!4781205 (=> res!2030019 e!2984961)))

(declare-datatypes ((Option!12925 0))(
  ( (None!12924) (Some!12924 (v!48131 tuple2!56468)) )
))
(declare-fun lt!1943607 () Option!12925)

(declare-fun v!11584 () V!15798)

(declare-fun get!18350 (Option!12925) tuple2!56468)

(assert (=> b!4781205 (= res!2030019 (not (= (_2!31528 (get!18350 lt!1943607)) v!11584)))))

(declare-fun isDefined!10069 (Option!12925) Bool)

(assert (=> b!4781205 (isDefined!10069 lt!1943607)))

(declare-fun lt!1943612 () List!54111)

(declare-fun key!6641 () K!15552)

(declare-fun getPair!797 (List!54111 K!15552) Option!12925)

(assert (=> b!4781205 (= lt!1943607 (getPair!797 lt!1943612 key!6641))))

(declare-datatypes ((Unit!139259 0))(
  ( (Unit!139260) )
))
(declare-fun lt!1943609 () Unit!139259)

(declare-fun lt!1943611 () tuple2!56470)

(declare-fun forallContained!4061 (List!54112 Int tuple2!56470) Unit!139259)

(assert (=> b!4781205 (= lt!1943609 (forallContained!4061 (toList!6729 lm!2709) lambda!228156 lt!1943611))))

(declare-fun lt!1943610 () Unit!139259)

(declare-fun lemmaInGenMapThenGetPairDefined!571 (ListLongMap!5151 K!15552 Hashable!6825) Unit!139259)

(assert (=> b!4781205 (= lt!1943610 (lemmaInGenMapThenGetPairDefined!571 lm!2709 key!6641 hashF!1687))))

(declare-fun lt!1943606 () Unit!139259)

(assert (=> b!4781205 (= lt!1943606 (forallContained!4061 (toList!6729 lm!2709) lambda!228156 lt!1943611))))

(declare-fun contains!17515 (List!54112 tuple2!56470) Bool)

(assert (=> b!4781205 (contains!17515 (toList!6729 lm!2709) lt!1943611)))

(declare-fun lt!1943605 () (_ BitVec 64))

(assert (=> b!4781205 (= lt!1943611 (tuple2!56471 lt!1943605 lt!1943612))))

(declare-fun lt!1943613 () Unit!139259)

(declare-fun lemmaGetValueImpliesTupleContained!604 (ListLongMap!5151 (_ BitVec 64) List!54111) Unit!139259)

(assert (=> b!4781205 (= lt!1943613 (lemmaGetValueImpliesTupleContained!604 lm!2709 lt!1943605 lt!1943612))))

(declare-fun apply!12880 (ListLongMap!5151 (_ BitVec 64)) List!54111)

(assert (=> b!4781205 (= lt!1943612 (apply!12880 lm!2709 lt!1943605))))

(declare-fun contains!17516 (ListLongMap!5151 (_ BitVec 64)) Bool)

(assert (=> b!4781205 (contains!17516 lm!2709 lt!1943605)))

(declare-fun hash!4810 (Hashable!6825 K!15552) (_ BitVec 64))

(assert (=> b!4781205 (= lt!1943605 (hash!4810 hashF!1687 key!6641))))

(declare-fun lt!1943608 () Unit!139259)

(declare-fun lemmaInGenMapThenLongMapContainsHash!1021 (ListLongMap!5151 K!15552 Hashable!6825) Unit!139259)

(assert (=> b!4781205 (= lt!1943608 (lemmaInGenMapThenLongMapContainsHash!1021 lm!2709 key!6641 hashF!1687))))

(declare-datatypes ((ListMap!6201 0))(
  ( (ListMap!6202 (toList!6730 List!54111)) )
))
(declare-fun contains!17517 (ListMap!6201 K!15552) Bool)

(declare-fun extractMap!2352 (List!54112) ListMap!6201)

(assert (=> b!4781205 (contains!17517 (extractMap!2352 (toList!6729 lm!2709)) key!6641)))

(declare-fun lt!1943604 () Unit!139259)

(declare-fun lemmaListContainsThenExtractedMapContains!673 (ListLongMap!5151 K!15552 Hashable!6825) Unit!139259)

(assert (=> b!4781205 (= lt!1943604 (lemmaListContainsThenExtractedMapContains!673 lm!2709 key!6641 hashF!1687))))

(declare-fun res!2030015 () Bool)

(assert (=> start!490892 (=> (not res!2030015) (not e!2984959))))

(assert (=> start!490892 (= res!2030015 (forall!12117 (toList!6729 lm!2709) lambda!228156))))

(assert (=> start!490892 e!2984959))

(declare-fun e!2984960 () Bool)

(declare-fun inv!69579 (ListLongMap!5151) Bool)

(assert (=> start!490892 (and (inv!69579 lm!2709) e!2984960)))

(assert (=> start!490892 true))

(declare-fun tp_is_empty!33201 () Bool)

(assert (=> start!490892 tp_is_empty!33201))

(declare-fun tp_is_empty!33203 () Bool)

(assert (=> start!490892 tp_is_empty!33203))

(declare-fun b!4781206 () Bool)

(declare-fun tp!1357421 () Bool)

(assert (=> b!4781206 (= e!2984960 tp!1357421)))

(declare-fun b!4781207 () Bool)

(declare-fun res!2030017 () Bool)

(assert (=> b!4781207 (=> res!2030017 e!2984961)))

(assert (=> b!4781207 (= res!2030017 (or (and (is-Cons!53988 (toList!6729 lm!2709)) (= (_1!31529 (h!60408 (toList!6729 lm!2709))) lt!1943605)) (not (is-Cons!53988 (toList!6729 lm!2709)))))))

(declare-fun b!4781208 () Bool)

(declare-fun res!2030018 () Bool)

(assert (=> b!4781208 (=> (not res!2030018) (not e!2984959))))

(declare-fun containsKeyBiggerList!481 (List!54112 K!15552) Bool)

(assert (=> b!4781208 (= res!2030018 (containsKeyBiggerList!481 (toList!6729 lm!2709) key!6641))))

(declare-fun b!4781209 () Bool)

(declare-fun res!2030016 () Bool)

(assert (=> b!4781209 (=> res!2030016 e!2984961)))

(assert (=> b!4781209 (= res!2030016 (not (contains!17516 lm!2709 (_1!31529 (h!60408 (toList!6729 lm!2709))))))))

(declare-fun b!4781210 () Bool)

(assert (=> b!4781210 (= e!2984961 (not (= (_1!31529 (h!60408 (toList!6729 lm!2709))) lt!1943605)))))

(assert (= (and start!490892 res!2030015) b!4781204))

(assert (= (and b!4781204 res!2030020) b!4781208))

(assert (= (and b!4781208 res!2030018) b!4781205))

(assert (= (and b!4781205 (not res!2030019)) b!4781207))

(assert (= (and b!4781207 (not res!2030017)) b!4781203))

(assert (= (and b!4781203 (not res!2030021)) b!4781209))

(assert (= (and b!4781209 (not res!2030016)) b!4781210))

(assert (= start!490892 b!4781206))

(declare-fun m!5758158 () Bool)

(assert (=> b!4781203 m!5758158))

(declare-fun m!5758160 () Bool)

(assert (=> b!4781204 m!5758160))

(declare-fun m!5758162 () Bool)

(assert (=> b!4781208 m!5758162))

(assert (=> start!490892 m!5758158))

(declare-fun m!5758164 () Bool)

(assert (=> start!490892 m!5758164))

(declare-fun m!5758166 () Bool)

(assert (=> b!4781205 m!5758166))

(declare-fun m!5758168 () Bool)

(assert (=> b!4781205 m!5758168))

(declare-fun m!5758170 () Bool)

(assert (=> b!4781205 m!5758170))

(declare-fun m!5758172 () Bool)

(assert (=> b!4781205 m!5758172))

(declare-fun m!5758174 () Bool)

(assert (=> b!4781205 m!5758174))

(declare-fun m!5758176 () Bool)

(assert (=> b!4781205 m!5758176))

(declare-fun m!5758178 () Bool)

(assert (=> b!4781205 m!5758178))

(declare-fun m!5758180 () Bool)

(assert (=> b!4781205 m!5758180))

(declare-fun m!5758182 () Bool)

(assert (=> b!4781205 m!5758182))

(declare-fun m!5758184 () Bool)

(assert (=> b!4781205 m!5758184))

(assert (=> b!4781205 m!5758176))

(declare-fun m!5758186 () Bool)

(assert (=> b!4781205 m!5758186))

(assert (=> b!4781205 m!5758172))

(declare-fun m!5758188 () Bool)

(assert (=> b!4781205 m!5758188))

(declare-fun m!5758190 () Bool)

(assert (=> b!4781205 m!5758190))

(declare-fun m!5758192 () Bool)

(assert (=> b!4781205 m!5758192))

(declare-fun m!5758194 () Bool)

(assert (=> b!4781209 m!5758194))

(push 1)

(assert tp_is_empty!33203)

(assert (not b!4781208))

(assert (not b!4781206))

(assert tp_is_empty!33201)

(assert (not b!4781203))

(assert (not b!4781209))

(assert (not start!490892))

(assert (not b!4781205))

(assert (not b!4781204))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

