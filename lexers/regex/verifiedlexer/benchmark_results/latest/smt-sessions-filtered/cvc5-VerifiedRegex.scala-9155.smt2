; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!488430 () Bool)

(assert start!488430)

(declare-fun b!4770993 () Bool)

(declare-fun res!2023466 () Bool)

(declare-fun e!2978312 () Bool)

(assert (=> b!4770993 (=> (not res!2023466) (not e!2978312))))

(declare-datatypes ((K!15062 0))(
  ( (K!15063 (val!20355 Int)) )
))
(declare-datatypes ((V!15308 0))(
  ( (V!15309 (val!20356 Int)) )
))
(declare-datatypes ((tuple2!55684 0))(
  ( (tuple2!55685 (_1!31136 K!15062) (_2!31136 V!15308)) )
))
(declare-datatypes ((List!53690 0))(
  ( (Nil!53566) (Cons!53566 (h!59978 tuple2!55684) (t!361140 List!53690)) )
))
(declare-datatypes ((tuple2!55686 0))(
  ( (tuple2!55687 (_1!31137 (_ BitVec 64)) (_2!31137 List!53690)) )
))
(declare-datatypes ((List!53691 0))(
  ( (Nil!53567) (Cons!53567 (h!59979 tuple2!55686) (t!361141 List!53691)) )
))
(declare-datatypes ((ListLongMap!4759 0))(
  ( (ListLongMap!4760 (toList!6345 List!53691)) )
))
(declare-fun lm!1309 () ListLongMap!4759)

(declare-datatypes ((Hashable!6629 0))(
  ( (HashableExt!6628 (__x!32652 Int)) )
))
(declare-fun hashF!980 () Hashable!6629)

(declare-fun allKeysSameHashInMap!2034 (ListLongMap!4759 Hashable!6629) Bool)

(assert (=> b!4770993 (= res!2023466 (allKeysSameHashInMap!2034 lm!1309 hashF!980))))

(declare-fun b!4770994 () Bool)

(declare-fun res!2023467 () Bool)

(assert (=> b!4770994 (=> (not res!2023467) (not e!2978312))))

(declare-fun key!2872 () K!15062)

(declare-datatypes ((ListMap!5825 0))(
  ( (ListMap!5826 (toList!6346 List!53690)) )
))
(declare-fun contains!16945 (ListMap!5825 K!15062) Bool)

(declare-fun extractMap!2164 (List!53691) ListMap!5825)

(assert (=> b!4770994 (= res!2023467 (contains!16945 (extractMap!2164 (toList!6345 lm!1309)) key!2872))))

(declare-fun b!4770995 () Bool)

(declare-fun lambda!224957 () Int)

(declare-fun forall!11893 (List!53691 Int) Bool)

(assert (=> b!4770995 (= e!2978312 (not (forall!11893 (toList!6345 lm!1309) lambda!224957)))))

(declare-fun b!4770996 () Bool)

(declare-fun e!2978311 () Bool)

(declare-fun tp!1356567 () Bool)

(assert (=> b!4770996 (= e!2978311 tp!1356567)))

(declare-fun res!2023468 () Bool)

(assert (=> start!488430 (=> (not res!2023468) (not e!2978312))))

(assert (=> start!488430 (= res!2023468 (forall!11893 (toList!6345 lm!1309) lambda!224957))))

(assert (=> start!488430 e!2978312))

(declare-fun inv!69089 (ListLongMap!4759) Bool)

(assert (=> start!488430 (and (inv!69089 lm!1309) e!2978311)))

(assert (=> start!488430 true))

(declare-fun tp_is_empty!32553 () Bool)

(assert (=> start!488430 tp_is_empty!32553))

(declare-fun b!4770997 () Bool)

(declare-fun res!2023465 () Bool)

(assert (=> b!4770997 (=> (not res!2023465) (not e!2978312))))

(assert (=> b!4770997 (= res!2023465 (forall!11893 (toList!6345 lm!1309) lambda!224957))))

(assert (= (and start!488430 res!2023468) b!4770993))

(assert (= (and b!4770993 res!2023466) b!4770994))

(assert (= (and b!4770994 res!2023467) b!4770997))

(assert (= (and b!4770997 res!2023465) b!4770995))

(assert (= start!488430 b!4770996))

(declare-fun m!5742786 () Bool)

(assert (=> start!488430 m!5742786))

(declare-fun m!5742788 () Bool)

(assert (=> start!488430 m!5742788))

(declare-fun m!5742790 () Bool)

(assert (=> b!4770993 m!5742790))

(declare-fun m!5742792 () Bool)

(assert (=> b!4770994 m!5742792))

(assert (=> b!4770994 m!5742792))

(declare-fun m!5742794 () Bool)

(assert (=> b!4770994 m!5742794))

(assert (=> b!4770995 m!5742786))

(assert (=> b!4770997 m!5742786))

(push 1)

(assert (not b!4770994))

(assert (not start!488430))

(assert tp_is_empty!32553)

(assert (not b!4770993))

(assert (not b!4770997))

(assert (not b!4770995))

(assert (not b!4770996))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

