; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!503024 () Bool)

(assert start!503024)

(declare-fun b!4836845 () Bool)

(assert (=> b!4836845 true))

(declare-fun e!3022791 () Bool)

(declare-datatypes ((K!16992 0))(
  ( (K!16993 (val!21899 Int)) )
))
(declare-datatypes ((V!17238 0))(
  ( (V!17239 (val!21900 Int)) )
))
(declare-datatypes ((tuple2!58670 0))(
  ( (tuple2!58671 (_1!32629 K!16992) (_2!32629 V!17238)) )
))
(declare-datatypes ((List!55368 0))(
  ( (Nil!55244) (Cons!55244 (h!61679 tuple2!58670) (t!362864 List!55368)) )
))
(declare-datatypes ((tuple2!58672 0))(
  ( (tuple2!58673 (_1!32630 (_ BitVec 64)) (_2!32630 List!55368)) )
))
(declare-datatypes ((List!55369 0))(
  ( (Nil!55245) (Cons!55245 (h!61680 tuple2!58672) (t!362865 List!55369)) )
))
(declare-datatypes ((ListLongMap!6201 0))(
  ( (ListLongMap!6202 (toList!7665 List!55369)) )
))
(declare-fun lm!2671 () ListLongMap!6201)

(declare-fun lambda!239774 () Int)

(declare-fun forall!12774 (List!55369 Int) Bool)

(assert (=> b!4836845 (= e!3022791 (not (forall!12774 (toList!7665 lm!2671) lambda!239774)))))

(declare-fun lt!1982252 () tuple2!58670)

(declare-datatypes ((Unit!144645 0))(
  ( (Unit!144646) )
))
(declare-fun lt!1982254 () Unit!144645)

(declare-fun lambda!239775 () Int)

(declare-fun forallContained!4471 (List!55368 Int tuple2!58670) Unit!144645)

(assert (=> b!4836845 (= lt!1982254 (forallContained!4471 (_2!32630 (h!61680 (toList!7665 lm!2671))) lambda!239775 lt!1982252))))

(declare-datatypes ((ListMap!7023 0))(
  ( (ListMap!7024 (toList!7666 List!55368)) )
))
(declare-fun lt!1982253 () ListMap!7023)

(declare-fun lt!1982249 () ListMap!7023)

(assert (=> b!4836845 (= lt!1982253 lt!1982249)))

(declare-fun lt!1982250 () ListMap!7023)

(declare-fun addToMapMapFromBucket!1871 (List!55368 ListMap!7023) ListMap!7023)

(assert (=> b!4836845 (= lt!1982249 (addToMapMapFromBucket!1871 (_2!32630 (h!61680 (toList!7665 lm!2671))) lt!1982250))))

(declare-fun extractMap!2731 (List!55369) ListMap!7023)

(assert (=> b!4836845 (= lt!1982253 (extractMap!2731 (toList!7665 lm!2671)))))

(assert (=> b!4836845 (= lt!1982250 (extractMap!2731 (t!362865 (toList!7665 lm!2671))))))

(declare-fun e!3022790 () Bool)

(assert (=> b!4836845 e!3022790))

(declare-fun res!2061166 () Bool)

(assert (=> b!4836845 (=> (not res!2061166) (not e!3022790))))

(declare-fun contains!19043 (List!55368 tuple2!58670) Bool)

(declare-fun head!10377 (List!55369) tuple2!58672)

(assert (=> b!4836845 (= res!2061166 (contains!19043 (_2!32630 (head!10377 (toList!7665 lm!2671))) lt!1982252))))

(declare-fun key!6540 () K!16992)

(declare-fun lt!1982251 () V!17238)

(assert (=> b!4836845 (= lt!1982252 (tuple2!58671 key!6540 lt!1982251))))

(declare-datatypes ((Hashable!7369 0))(
  ( (HashableExt!7368 (__x!33644 Int)) )
))
(declare-fun hashF!1662 () Hashable!7369)

(declare-fun lt!1982248 () Unit!144645)

(declare-fun lemmaInPairListHeadThenGetValueInTuple!13 (ListLongMap!6201 K!16992 V!17238 Hashable!7369) Unit!144645)

(assert (=> b!4836845 (= lt!1982248 (lemmaInPairListHeadThenGetValueInTuple!13 lm!2671 key!6540 lt!1982251 hashF!1662))))

(declare-fun getValue!183 (List!55369 K!16992) V!17238)

(assert (=> b!4836845 (= lt!1982251 (getValue!183 (toList!7665 lm!2671) key!6540))))

(declare-fun res!2061164 () Bool)

(assert (=> start!503024 (=> (not res!2061164) (not e!3022791))))

(assert (=> start!503024 (= res!2061164 (forall!12774 (toList!7665 lm!2671) lambda!239774))))

(assert (=> start!503024 e!3022791))

(declare-fun e!3022789 () Bool)

(declare-fun inv!70893 (ListLongMap!6201) Bool)

(assert (=> start!503024 (and (inv!70893 lm!2671) e!3022789)))

(assert (=> start!503024 true))

(declare-fun tp_is_empty!34837 () Bool)

(assert (=> start!503024 tp_is_empty!34837))

(declare-fun b!4836846 () Bool)

(declare-fun res!2061162 () Bool)

(assert (=> b!4836846 (=> (not res!2061162) (not e!3022791))))

(declare-fun allKeysSameHashInMap!2685 (ListLongMap!6201 Hashable!7369) Bool)

(assert (=> b!4836846 (= res!2061162 (allKeysSameHashInMap!2685 lm!2671 hashF!1662))))

(declare-fun b!4836847 () Bool)

(declare-fun tp!1363521 () Bool)

(assert (=> b!4836847 (= e!3022789 tp!1363521)))

(declare-fun b!4836848 () Bool)

(declare-fun res!2061161 () Bool)

(assert (=> b!4836848 (=> (not res!2061161) (not e!3022791))))

(declare-fun containsKey!4519 (List!55368 K!16992) Bool)

(assert (=> b!4836848 (= res!2061161 (containsKey!4519 (_2!32630 (h!61680 (toList!7665 lm!2671))) key!6540))))

(declare-fun b!4836849 () Bool)

(assert (=> b!4836849 (= e!3022790 (contains!19043 (_2!32630 (h!61680 (toList!7665 lm!2671))) lt!1982252))))

(declare-fun b!4836850 () Bool)

(declare-fun res!2061165 () Bool)

(assert (=> b!4836850 (=> (not res!2061165) (not e!3022791))))

(assert (=> b!4836850 (= res!2061165 (is-Cons!55245 (toList!7665 lm!2671)))))

(declare-fun b!4836851 () Bool)

(declare-fun res!2061163 () Bool)

(assert (=> b!4836851 (=> (not res!2061163) (not e!3022791))))

(declare-fun containsKeyBiggerList!653 (List!55369 K!16992) Bool)

(assert (=> b!4836851 (= res!2061163 (containsKeyBiggerList!653 (toList!7665 lm!2671) key!6540))))

(assert (= (and start!503024 res!2061164) b!4836846))

(assert (= (and b!4836846 res!2061162) b!4836851))

(assert (= (and b!4836851 res!2061163) b!4836850))

(assert (= (and b!4836850 res!2061165) b!4836848))

(assert (= (and b!4836848 res!2061161) b!4836845))

(assert (= (and b!4836845 res!2061166) b!4836849))

(assert (= start!503024 b!4836847))

(declare-fun m!5832148 () Bool)

(assert (=> b!4836851 m!5832148))

(declare-fun m!5832150 () Bool)

(assert (=> b!4836849 m!5832150))

(declare-fun m!5832152 () Bool)

(assert (=> b!4836845 m!5832152))

(declare-fun m!5832154 () Bool)

(assert (=> b!4836845 m!5832154))

(declare-fun m!5832156 () Bool)

(assert (=> b!4836845 m!5832156))

(declare-fun m!5832158 () Bool)

(assert (=> b!4836845 m!5832158))

(declare-fun m!5832160 () Bool)

(assert (=> b!4836845 m!5832160))

(declare-fun m!5832162 () Bool)

(assert (=> b!4836845 m!5832162))

(declare-fun m!5832164 () Bool)

(assert (=> b!4836845 m!5832164))

(declare-fun m!5832166 () Bool)

(assert (=> b!4836845 m!5832166))

(declare-fun m!5832168 () Bool)

(assert (=> b!4836845 m!5832168))

(declare-fun m!5832170 () Bool)

(assert (=> b!4836848 m!5832170))

(assert (=> start!503024 m!5832154))

(declare-fun m!5832172 () Bool)

(assert (=> start!503024 m!5832172))

(declare-fun m!5832174 () Bool)

(assert (=> b!4836846 m!5832174))

(push 1)

(assert (not b!4836848))

(assert (not b!4836849))

(assert (not b!4836847))

(assert (not b!4836845))

(assert (not b!4836851))

(assert tp_is_empty!34837)

(assert (not b!4836846))

(assert (not start!503024))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

