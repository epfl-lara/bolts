; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!489048 () Bool)

(assert start!489048)

(declare-fun b!4773673 () Bool)

(declare-fun e!2980114 () Bool)

(declare-fun tp!1356861 () Bool)

(assert (=> b!4773673 (= e!2980114 tp!1356861)))

(declare-fun b!4773674 () Bool)

(declare-fun e!2980115 () Bool)

(assert (=> b!4773674 (= e!2980115 true)))

(declare-datatypes ((K!15252 0))(
  ( (K!15253 (val!20507 Int)) )
))
(declare-datatypes ((V!15498 0))(
  ( (V!15499 (val!20508 Int)) )
))
(declare-datatypes ((tuple2!55988 0))(
  ( (tuple2!55989 (_1!31288 K!15252) (_2!31288 V!15498)) )
))
(declare-datatypes ((List!53849 0))(
  ( (Nil!53725) (Cons!53725 (h!60139 tuple2!55988) (t!361299 List!53849)) )
))
(declare-datatypes ((tuple2!55990 0))(
  ( (tuple2!55991 (_1!31289 (_ BitVec 64)) (_2!31289 List!53849)) )
))
(declare-datatypes ((List!53850 0))(
  ( (Nil!53726) (Cons!53726 (h!60140 tuple2!55990) (t!361300 List!53850)) )
))
(declare-datatypes ((ListLongMap!4911 0))(
  ( (ListLongMap!4912 (toList!6497 List!53850)) )
))
(declare-fun lm!1309 () ListLongMap!4911)

(declare-fun key!2872 () K!15252)

(declare-fun containsKeyBiggerList!361 (List!53850 K!15252) Bool)

(assert (=> b!4773674 (containsKeyBiggerList!361 (toList!6497 lm!1309) key!2872)))

(declare-datatypes ((Hashable!6705 0))(
  ( (HashableExt!6704 (__x!32728 Int)) )
))
(declare-fun hashF!980 () Hashable!6705)

(declare-datatypes ((Unit!138714 0))(
  ( (Unit!138715) )
))
(declare-fun lt!1936440 () Unit!138714)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!219 (ListLongMap!4911 K!15252 Hashable!6705) Unit!138714)

(assert (=> b!4773674 (= lt!1936440 (lemmaInLongMapThenContainsKeyBiggerList!219 lm!1309 key!2872 hashF!980))))

(declare-fun b!4773675 () Bool)

(declare-fun res!2025227 () Bool)

(declare-fun e!2980113 () Bool)

(assert (=> b!4773675 (=> (not res!2025227) (not e!2980113))))

(declare-fun allKeysSameHashInMap!2110 (ListLongMap!4911 Hashable!6705) Bool)

(assert (=> b!4773675 (= res!2025227 (allKeysSameHashInMap!2110 lm!1309 hashF!980))))

(declare-fun b!4773676 () Bool)

(declare-fun res!2025229 () Bool)

(assert (=> b!4773676 (=> (not res!2025229) (not e!2980113))))

(declare-datatypes ((ListMap!5977 0))(
  ( (ListMap!5978 (toList!6498 List!53849)) )
))
(declare-fun contains!17161 (ListMap!5977 K!15252) Bool)

(declare-fun extractMap!2240 (List!53850) ListMap!5977)

(assert (=> b!4773676 (= res!2025229 (contains!17161 (extractMap!2240 (toList!6497 lm!1309)) key!2872))))

(declare-fun b!4773677 () Bool)

(assert (=> b!4773677 (= e!2980113 (not e!2980115))))

(declare-fun res!2025228 () Bool)

(assert (=> b!4773677 (=> res!2025228 e!2980115)))

(declare-datatypes ((Option!12798 0))(
  ( (None!12797) (Some!12797 (v!47938 tuple2!55988)) )
))
(declare-fun lt!1936449 () Option!12798)

(declare-fun v!9615 () V!15498)

(declare-fun get!18187 (Option!12798) tuple2!55988)

(assert (=> b!4773677 (= res!2025228 (not (= (_2!31288 (get!18187 lt!1936449)) v!9615)))))

(declare-fun isDefined!9944 (Option!12798) Bool)

(assert (=> b!4773677 (isDefined!9944 lt!1936449)))

(declare-fun lt!1936447 () List!53849)

(declare-fun getPair!713 (List!53849 K!15252) Option!12798)

(assert (=> b!4773677 (= lt!1936449 (getPair!713 lt!1936447 key!2872))))

(declare-fun lt!1936446 () Unit!138714)

(declare-fun lambda!225956 () Int)

(declare-fun lt!1936443 () tuple2!55990)

(declare-fun forallContained!3946 (List!53850 Int tuple2!55990) Unit!138714)

(assert (=> b!4773677 (= lt!1936446 (forallContained!3946 (toList!6497 lm!1309) lambda!225956 lt!1936443))))

(declare-fun lt!1936441 () Unit!138714)

(declare-fun lemmaInGenMapThenGetPairDefined!487 (ListLongMap!4911 K!15252 Hashable!6705) Unit!138714)

(assert (=> b!4773677 (= lt!1936441 (lemmaInGenMapThenGetPairDefined!487 lm!1309 key!2872 hashF!980))))

(declare-fun lt!1936448 () Unit!138714)

(assert (=> b!4773677 (= lt!1936448 (forallContained!3946 (toList!6497 lm!1309) lambda!225956 lt!1936443))))

(declare-fun contains!17162 (List!53850 tuple2!55990) Bool)

(assert (=> b!4773677 (contains!17162 (toList!6497 lm!1309) lt!1936443)))

(declare-fun lt!1936444 () (_ BitVec 64))

(assert (=> b!4773677 (= lt!1936443 (tuple2!55991 lt!1936444 lt!1936447))))

(declare-fun lt!1936442 () Unit!138714)

(declare-fun lemmaGetValueImpliesTupleContained!508 (ListLongMap!4911 (_ BitVec 64) List!53849) Unit!138714)

(assert (=> b!4773677 (= lt!1936442 (lemmaGetValueImpliesTupleContained!508 lm!1309 lt!1936444 lt!1936447))))

(declare-fun apply!12768 (ListLongMap!4911 (_ BitVec 64)) List!53849)

(assert (=> b!4773677 (= lt!1936447 (apply!12768 lm!1309 lt!1936444))))

(declare-fun contains!17163 (ListLongMap!4911 (_ BitVec 64)) Bool)

(assert (=> b!4773677 (contains!17163 lm!1309 lt!1936444)))

(declare-fun hash!4680 (Hashable!6705 K!15252) (_ BitVec 64))

(assert (=> b!4773677 (= lt!1936444 (hash!4680 hashF!980 key!2872))))

(declare-fun lt!1936445 () Unit!138714)

(declare-fun lemmaInGenMapThenLongMapContainsHash!917 (ListLongMap!4911 K!15252 Hashable!6705) Unit!138714)

(assert (=> b!4773677 (= lt!1936445 (lemmaInGenMapThenLongMapContainsHash!917 lm!1309 key!2872 hashF!980))))

(declare-fun res!2025230 () Bool)

(assert (=> start!489048 (=> (not res!2025230) (not e!2980113))))

(declare-fun forall!11973 (List!53850 Int) Bool)

(assert (=> start!489048 (= res!2025230 (forall!11973 (toList!6497 lm!1309) lambda!225956))))

(assert (=> start!489048 e!2980113))

(declare-fun inv!69279 (ListLongMap!4911) Bool)

(assert (=> start!489048 (and (inv!69279 lm!1309) e!2980114)))

(assert (=> start!489048 true))

(declare-fun tp_is_empty!32797 () Bool)

(assert (=> start!489048 tp_is_empty!32797))

(declare-fun tp_is_empty!32799 () Bool)

(assert (=> start!489048 tp_is_empty!32799))

(assert (= (and start!489048 res!2025230) b!4773675))

(assert (= (and b!4773675 res!2025227) b!4773676))

(assert (= (and b!4773676 res!2025229) b!4773677))

(assert (= (and b!4773677 (not res!2025228)) b!4773674))

(assert (= start!489048 b!4773673))

(declare-fun m!5747164 () Bool)

(assert (=> b!4773677 m!5747164))

(declare-fun m!5747166 () Bool)

(assert (=> b!4773677 m!5747166))

(declare-fun m!5747168 () Bool)

(assert (=> b!4773677 m!5747168))

(declare-fun m!5747170 () Bool)

(assert (=> b!4773677 m!5747170))

(declare-fun m!5747172 () Bool)

(assert (=> b!4773677 m!5747172))

(declare-fun m!5747174 () Bool)

(assert (=> b!4773677 m!5747174))

(assert (=> b!4773677 m!5747174))

(declare-fun m!5747176 () Bool)

(assert (=> b!4773677 m!5747176))

(declare-fun m!5747178 () Bool)

(assert (=> b!4773677 m!5747178))

(declare-fun m!5747180 () Bool)

(assert (=> b!4773677 m!5747180))

(declare-fun m!5747182 () Bool)

(assert (=> b!4773677 m!5747182))

(declare-fun m!5747184 () Bool)

(assert (=> b!4773677 m!5747184))

(declare-fun m!5747186 () Bool)

(assert (=> b!4773674 m!5747186))

(declare-fun m!5747188 () Bool)

(assert (=> b!4773674 m!5747188))

(declare-fun m!5747190 () Bool)

(assert (=> start!489048 m!5747190))

(declare-fun m!5747192 () Bool)

(assert (=> start!489048 m!5747192))

(declare-fun m!5747194 () Bool)

(assert (=> b!4773676 m!5747194))

(assert (=> b!4773676 m!5747194))

(declare-fun m!5747196 () Bool)

(assert (=> b!4773676 m!5747196))

(declare-fun m!5747198 () Bool)

(assert (=> b!4773675 m!5747198))

(push 1)

(assert tp_is_empty!32799)

(assert (not b!4773673))

(assert (not b!4773675))

(assert (not start!489048))

(assert (not b!4773676))

(assert (not b!4773674))

(assert (not b!4773677))

(assert tp_is_empty!32797)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

