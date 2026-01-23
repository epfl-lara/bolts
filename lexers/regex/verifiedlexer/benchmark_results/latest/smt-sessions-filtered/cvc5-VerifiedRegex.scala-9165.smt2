; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!488532 () Bool)

(assert start!488532)

(declare-fun b!4771459 () Bool)

(declare-fun res!2023775 () Bool)

(declare-fun e!2978585 () Bool)

(assert (=> b!4771459 (=> (not res!2023775) (not e!2978585))))

(declare-datatypes ((K!15112 0))(
  ( (K!15113 (val!20395 Int)) )
))
(declare-datatypes ((V!15358 0))(
  ( (V!15359 (val!20396 Int)) )
))
(declare-datatypes ((tuple2!55764 0))(
  ( (tuple2!55765 (_1!31176 K!15112) (_2!31176 V!15358)) )
))
(declare-datatypes ((List!53731 0))(
  ( (Nil!53607) (Cons!53607 (h!60019 tuple2!55764) (t!361181 List!53731)) )
))
(declare-datatypes ((tuple2!55766 0))(
  ( (tuple2!55767 (_1!31177 (_ BitVec 64)) (_2!31177 List!53731)) )
))
(declare-datatypes ((List!53732 0))(
  ( (Nil!53608) (Cons!53608 (h!60020 tuple2!55766) (t!361182 List!53732)) )
))
(declare-datatypes ((ListLongMap!4799 0))(
  ( (ListLongMap!4800 (toList!6385 List!53732)) )
))
(declare-fun lm!1309 () ListLongMap!4799)

(declare-fun key!2872 () K!15112)

(declare-datatypes ((ListMap!5865 0))(
  ( (ListMap!5866 (toList!6386 List!53731)) )
))
(declare-fun contains!16995 (ListMap!5865 K!15112) Bool)

(declare-fun extractMap!2184 (List!53732) ListMap!5865)

(assert (=> b!4771459 (= res!2023775 (contains!16995 (extractMap!2184 (toList!6385 lm!1309)) key!2872))))

(declare-fun b!4771460 () Bool)

(declare-fun e!2978583 () Bool)

(assert (=> b!4771460 (= e!2978585 (not e!2978583))))

(declare-fun res!2023777 () Bool)

(assert (=> b!4771460 (=> res!2023777 e!2978583)))

(declare-datatypes ((Option!12744 0))(
  ( (None!12743) (Some!12743 (v!47870 tuple2!55764)) )
))
(declare-fun lt!1933754 () Option!12744)

(declare-fun v!9615 () V!15358)

(declare-fun get!18109 (Option!12744) tuple2!55764)

(assert (=> b!4771460 (= res!2023777 (not (= (_2!31176 (get!18109 lt!1933754)) v!9615)))))

(declare-fun isDefined!9890 (Option!12744) Bool)

(assert (=> b!4771460 (isDefined!9890 lt!1933754)))

(declare-fun lt!1933759 () List!53731)

(declare-fun getPair!669 (List!53731 K!15112) Option!12744)

(assert (=> b!4771460 (= lt!1933754 (getPair!669 lt!1933759 key!2872))))

(declare-fun lt!1933755 () tuple2!55766)

(declare-datatypes ((Unit!138502 0))(
  ( (Unit!138503) )
))
(declare-fun lt!1933757 () Unit!138502)

(declare-fun lambda!225096 () Int)

(declare-fun forallContained!3894 (List!53732 Int tuple2!55766) Unit!138502)

(assert (=> b!4771460 (= lt!1933757 (forallContained!3894 (toList!6385 lm!1309) lambda!225096 lt!1933755))))

(declare-datatypes ((Hashable!6649 0))(
  ( (HashableExt!6648 (__x!32672 Int)) )
))
(declare-fun hashF!980 () Hashable!6649)

(declare-fun lt!1933753 () Unit!138502)

(declare-fun lemmaInGenMapThenGetPairDefined!443 (ListLongMap!4799 K!15112 Hashable!6649) Unit!138502)

(assert (=> b!4771460 (= lt!1933753 (lemmaInGenMapThenGetPairDefined!443 lm!1309 key!2872 hashF!980))))

(declare-fun lt!1933758 () Unit!138502)

(assert (=> b!4771460 (= lt!1933758 (forallContained!3894 (toList!6385 lm!1309) lambda!225096 lt!1933755))))

(declare-fun contains!16996 (List!53732 tuple2!55766) Bool)

(assert (=> b!4771460 (contains!16996 (toList!6385 lm!1309) lt!1933755)))

(declare-fun lt!1933761 () (_ BitVec 64))

(assert (=> b!4771460 (= lt!1933755 (tuple2!55767 lt!1933761 lt!1933759))))

(declare-fun lt!1933756 () Unit!138502)

(declare-fun lemmaGetValueImpliesTupleContained!460 (ListLongMap!4799 (_ BitVec 64) List!53731) Unit!138502)

(assert (=> b!4771460 (= lt!1933756 (lemmaGetValueImpliesTupleContained!460 lm!1309 lt!1933761 lt!1933759))))

(declare-fun apply!12694 (ListLongMap!4799 (_ BitVec 64)) List!53731)

(assert (=> b!4771460 (= lt!1933759 (apply!12694 lm!1309 lt!1933761))))

(declare-fun contains!16997 (ListLongMap!4799 (_ BitVec 64)) Bool)

(assert (=> b!4771460 (contains!16997 lm!1309 lt!1933761)))

(declare-fun hash!4624 (Hashable!6649 K!15112) (_ BitVec 64))

(assert (=> b!4771460 (= lt!1933761 (hash!4624 hashF!980 key!2872))))

(declare-fun lt!1933760 () Unit!138502)

(declare-fun lemmaInGenMapThenLongMapContainsHash!865 (ListLongMap!4799 K!15112 Hashable!6649) Unit!138502)

(assert (=> b!4771460 (= lt!1933760 (lemmaInGenMapThenLongMapContainsHash!865 lm!1309 key!2872 hashF!980))))

(declare-fun res!2023774 () Bool)

(assert (=> start!488532 (=> (not res!2023774) (not e!2978585))))

(declare-fun forall!11913 (List!53732 Int) Bool)

(assert (=> start!488532 (= res!2023774 (forall!11913 (toList!6385 lm!1309) lambda!225096))))

(assert (=> start!488532 e!2978585))

(declare-fun e!2978584 () Bool)

(declare-fun inv!69139 (ListLongMap!4799) Bool)

(assert (=> start!488532 (and (inv!69139 lm!1309) e!2978584)))

(assert (=> start!488532 true))

(declare-fun tp_is_empty!32593 () Bool)

(assert (=> start!488532 tp_is_empty!32593))

(declare-fun tp_is_empty!32595 () Bool)

(assert (=> start!488532 tp_is_empty!32595))

(declare-fun b!4771461 () Bool)

(assert (=> b!4771461 (= e!2978583 (forall!11913 (toList!6385 lm!1309) lambda!225096))))

(declare-fun lt!1933752 () Unit!138502)

(assert (=> b!4771461 (= lt!1933752 (forallContained!3894 (toList!6385 lm!1309) lambda!225096 lt!1933755))))

(declare-fun b!4771462 () Bool)

(declare-fun res!2023776 () Bool)

(assert (=> b!4771462 (=> (not res!2023776) (not e!2978585))))

(declare-fun allKeysSameHashInMap!2054 (ListLongMap!4799 Hashable!6649) Bool)

(assert (=> b!4771462 (= res!2023776 (allKeysSameHashInMap!2054 lm!1309 hashF!980))))

(declare-fun b!4771463 () Bool)

(declare-fun tp!1356639 () Bool)

(assert (=> b!4771463 (= e!2978584 tp!1356639)))

(declare-fun b!4771464 () Bool)

(declare-fun res!2023773 () Bool)

(assert (=> b!4771464 (=> res!2023773 e!2978583)))

(assert (=> b!4771464 (= res!2023773 (not (forall!11913 (toList!6385 lm!1309) lambda!225096)))))

(assert (= (and start!488532 res!2023774) b!4771462))

(assert (= (and b!4771462 res!2023776) b!4771459))

(assert (= (and b!4771459 res!2023775) b!4771460))

(assert (= (and b!4771460 (not res!2023777)) b!4771464))

(assert (= (and b!4771464 (not res!2023773)) b!4771461))

(assert (= start!488532 b!4771463))

(declare-fun m!5743408 () Bool)

(assert (=> b!4771462 m!5743408))

(declare-fun m!5743410 () Bool)

(assert (=> b!4771460 m!5743410))

(declare-fun m!5743412 () Bool)

(assert (=> b!4771460 m!5743412))

(declare-fun m!5743414 () Bool)

(assert (=> b!4771460 m!5743414))

(declare-fun m!5743416 () Bool)

(assert (=> b!4771460 m!5743416))

(declare-fun m!5743418 () Bool)

(assert (=> b!4771460 m!5743418))

(declare-fun m!5743420 () Bool)

(assert (=> b!4771460 m!5743420))

(declare-fun m!5743422 () Bool)

(assert (=> b!4771460 m!5743422))

(assert (=> b!4771460 m!5743418))

(declare-fun m!5743424 () Bool)

(assert (=> b!4771460 m!5743424))

(declare-fun m!5743426 () Bool)

(assert (=> b!4771460 m!5743426))

(declare-fun m!5743428 () Bool)

(assert (=> b!4771460 m!5743428))

(declare-fun m!5743430 () Bool)

(assert (=> b!4771460 m!5743430))

(declare-fun m!5743432 () Bool)

(assert (=> b!4771464 m!5743432))

(declare-fun m!5743434 () Bool)

(assert (=> b!4771459 m!5743434))

(assert (=> b!4771459 m!5743434))

(declare-fun m!5743436 () Bool)

(assert (=> b!4771459 m!5743436))

(assert (=> start!488532 m!5743432))

(declare-fun m!5743438 () Bool)

(assert (=> start!488532 m!5743438))

(assert (=> b!4771461 m!5743432))

(assert (=> b!4771461 m!5743418))

(push 1)

(assert (not start!488532))

(assert tp_is_empty!32595)

(assert (not b!4771462))

(assert (not b!4771459))

(assert (not b!4771464))

(assert (not b!4771463))

(assert (not b!4771461))

(assert tp_is_empty!32593)

(assert (not b!4771460))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

