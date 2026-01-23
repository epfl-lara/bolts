; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!488452 () Bool)

(assert start!488452)

(declare-fun b!4771131 () Bool)

(declare-fun e!2978378 () Bool)

(declare-datatypes ((K!15089 0))(
  ( (K!15090 (val!20377 Int)) )
))
(declare-datatypes ((V!15335 0))(
  ( (V!15336 (val!20378 Int)) )
))
(declare-datatypes ((tuple2!55728 0))(
  ( (tuple2!55729 (_1!31158 K!15089) (_2!31158 V!15335)) )
))
(declare-datatypes ((List!53712 0))(
  ( (Nil!53588) (Cons!53588 (h!60000 tuple2!55728) (t!361162 List!53712)) )
))
(declare-datatypes ((tuple2!55730 0))(
  ( (tuple2!55731 (_1!31159 (_ BitVec 64)) (_2!31159 List!53712)) )
))
(declare-datatypes ((List!53713 0))(
  ( (Nil!53589) (Cons!53589 (h!60001 tuple2!55730) (t!361163 List!53713)) )
))
(declare-datatypes ((ListLongMap!4781 0))(
  ( (ListLongMap!4782 (toList!6367 List!53713)) )
))
(declare-fun lm!1309 () ListLongMap!4781)

(declare-fun lambda!224998 () Int)

(declare-fun forall!11904 (List!53713 Int) Bool)

(assert (=> b!4771131 (= e!2978378 (not (forall!11904 (toList!6367 lm!1309) lambda!224998)))))

(declare-fun lt!1933404 () (_ BitVec 64))

(declare-fun lt!1933407 () List!53712)

(declare-fun contains!16966 (List!53713 tuple2!55730) Bool)

(assert (=> b!4771131 (contains!16966 (toList!6367 lm!1309) (tuple2!55731 lt!1933404 lt!1933407))))

(declare-datatypes ((Unit!138481 0))(
  ( (Unit!138482) )
))
(declare-fun lt!1933405 () Unit!138481)

(declare-fun lemmaGetValueImpliesTupleContained!451 (ListLongMap!4781 (_ BitVec 64) List!53712) Unit!138481)

(assert (=> b!4771131 (= lt!1933405 (lemmaGetValueImpliesTupleContained!451 lm!1309 lt!1933404 lt!1933407))))

(declare-fun apply!12685 (ListLongMap!4781 (_ BitVec 64)) List!53712)

(assert (=> b!4771131 (= lt!1933407 (apply!12685 lm!1309 lt!1933404))))

(declare-fun contains!16967 (ListLongMap!4781 (_ BitVec 64)) Bool)

(assert (=> b!4771131 (contains!16967 lm!1309 lt!1933404)))

(declare-datatypes ((Hashable!6640 0))(
  ( (HashableExt!6639 (__x!32663 Int)) )
))
(declare-fun hashF!980 () Hashable!6640)

(declare-fun key!2872 () K!15089)

(declare-fun hash!4614 (Hashable!6640 K!15089) (_ BitVec 64))

(assert (=> b!4771131 (= lt!1933404 (hash!4614 hashF!980 key!2872))))

(declare-fun lt!1933406 () Unit!138481)

(declare-fun lemmaInGenMapThenLongMapContainsHash!856 (ListLongMap!4781 K!15089 Hashable!6640) Unit!138481)

(assert (=> b!4771131 (= lt!1933406 (lemmaInGenMapThenLongMapContainsHash!856 lm!1309 key!2872 hashF!980))))

(declare-fun b!4771129 () Bool)

(declare-fun res!2023568 () Bool)

(assert (=> b!4771129 (=> (not res!2023568) (not e!2978378))))

(declare-fun allKeysSameHashInMap!2045 (ListLongMap!4781 Hashable!6640) Bool)

(assert (=> b!4771129 (= res!2023568 (allKeysSameHashInMap!2045 lm!1309 hashF!980))))

(declare-fun b!4771130 () Bool)

(declare-fun res!2023570 () Bool)

(assert (=> b!4771130 (=> (not res!2023570) (not e!2978378))))

(declare-datatypes ((ListMap!5847 0))(
  ( (ListMap!5848 (toList!6368 List!53712)) )
))
(declare-fun contains!16968 (ListMap!5847 K!15089) Bool)

(declare-fun extractMap!2175 (List!53713) ListMap!5847)

(assert (=> b!4771130 (= res!2023570 (contains!16968 (extractMap!2175 (toList!6367 lm!1309)) key!2872))))

(declare-fun b!4771132 () Bool)

(declare-fun e!2978377 () Bool)

(declare-fun tp!1356600 () Bool)

(assert (=> b!4771132 (= e!2978377 tp!1356600)))

(declare-fun res!2023569 () Bool)

(assert (=> start!488452 (=> (not res!2023569) (not e!2978378))))

(assert (=> start!488452 (= res!2023569 (forall!11904 (toList!6367 lm!1309) lambda!224998))))

(assert (=> start!488452 e!2978378))

(declare-fun inv!69115 (ListLongMap!4781) Bool)

(assert (=> start!488452 (and (inv!69115 lm!1309) e!2978377)))

(assert (=> start!488452 true))

(declare-fun tp_is_empty!32575 () Bool)

(assert (=> start!488452 tp_is_empty!32575))

(assert (= (and start!488452 res!2023569) b!4771129))

(assert (= (and b!4771129 res!2023568) b!4771130))

(assert (= (and b!4771130 res!2023570) b!4771131))

(assert (= start!488452 b!4771132))

(declare-fun m!5742960 () Bool)

(assert (=> b!4771131 m!5742960))

(declare-fun m!5742962 () Bool)

(assert (=> b!4771131 m!5742962))

(declare-fun m!5742964 () Bool)

(assert (=> b!4771131 m!5742964))

(declare-fun m!5742966 () Bool)

(assert (=> b!4771131 m!5742966))

(declare-fun m!5742968 () Bool)

(assert (=> b!4771131 m!5742968))

(declare-fun m!5742970 () Bool)

(assert (=> b!4771131 m!5742970))

(declare-fun m!5742972 () Bool)

(assert (=> b!4771131 m!5742972))

(declare-fun m!5742974 () Bool)

(assert (=> b!4771129 m!5742974))

(declare-fun m!5742976 () Bool)

(assert (=> b!4771130 m!5742976))

(assert (=> b!4771130 m!5742976))

(declare-fun m!5742978 () Bool)

(assert (=> b!4771130 m!5742978))

(assert (=> start!488452 m!5742964))

(declare-fun m!5742980 () Bool)

(assert (=> start!488452 m!5742980))

(check-sat tp_is_empty!32575 (not start!488452) (not b!4771129) (not b!4771132) (not b!4771131) (not b!4771130))
(check-sat)
