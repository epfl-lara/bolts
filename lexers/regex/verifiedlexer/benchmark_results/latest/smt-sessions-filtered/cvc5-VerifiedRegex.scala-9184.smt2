; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!488804 () Bool)

(assert start!488804)

(declare-fun b!4772688 () Bool)

(declare-fun res!2024639 () Bool)

(declare-fun e!2979470 () Bool)

(assert (=> b!4772688 (=> (not res!2024639) (not e!2979470))))

(declare-datatypes ((K!15207 0))(
  ( (K!15208 (val!20471 Int)) )
))
(declare-datatypes ((V!15453 0))(
  ( (V!15454 (val!20472 Int)) )
))
(declare-datatypes ((tuple2!55916 0))(
  ( (tuple2!55917 (_1!31252 K!15207) (_2!31252 V!15453)) )
))
(declare-datatypes ((List!53811 0))(
  ( (Nil!53687) (Cons!53687 (h!60099 tuple2!55916) (t!361261 List!53811)) )
))
(declare-datatypes ((tuple2!55918 0))(
  ( (tuple2!55919 (_1!31253 (_ BitVec 64)) (_2!31253 List!53811)) )
))
(declare-datatypes ((List!53812 0))(
  ( (Nil!53688) (Cons!53688 (h!60100 tuple2!55918) (t!361262 List!53812)) )
))
(declare-datatypes ((ListLongMap!4875 0))(
  ( (ListLongMap!4876 (toList!6461 List!53812)) )
))
(declare-fun lm!1309 () ListLongMap!4875)

(declare-fun key!2872 () K!15207)

(declare-datatypes ((ListMap!5941 0))(
  ( (ListMap!5942 (toList!6462 List!53811)) )
))
(declare-fun contains!17115 (ListMap!5941 K!15207) Bool)

(declare-fun extractMap!2222 (List!53812) ListMap!5941)

(assert (=> b!4772688 (= res!2024639 (contains!17115 (extractMap!2222 (toList!6461 lm!1309)) key!2872))))

(declare-fun b!4772689 () Bool)

(declare-fun lambda!225674 () Int)

(declare-fun forall!11951 (List!53812 Int) Bool)

(assert (=> b!4772689 (= e!2979470 (not (forall!11951 (toList!6461 lm!1309) lambda!225674)))))

(declare-fun b!4772690 () Bool)

(declare-fun e!2979469 () Bool)

(declare-fun tp!1356777 () Bool)

(assert (=> b!4772690 (= e!2979469 tp!1356777)))

(declare-fun b!4772687 () Bool)

(declare-fun res!2024641 () Bool)

(assert (=> b!4772687 (=> (not res!2024641) (not e!2979470))))

(declare-datatypes ((Hashable!6687 0))(
  ( (HashableExt!6686 (__x!32710 Int)) )
))
(declare-fun hashF!980 () Hashable!6687)

(declare-fun allKeysSameHashInMap!2092 (ListLongMap!4875 Hashable!6687) Bool)

(assert (=> b!4772687 (= res!2024641 (allKeysSameHashInMap!2092 lm!1309 hashF!980))))

(declare-fun res!2024640 () Bool)

(assert (=> start!488804 (=> (not res!2024640) (not e!2979470))))

(assert (=> start!488804 (= res!2024640 (forall!11951 (toList!6461 lm!1309) lambda!225674))))

(assert (=> start!488804 e!2979470))

(declare-fun inv!69234 (ListLongMap!4875) Bool)

(assert (=> start!488804 (and (inv!69234 lm!1309) e!2979469)))

(assert (=> start!488804 true))

(declare-fun tp_is_empty!32745 () Bool)

(assert (=> start!488804 tp_is_empty!32745))

(assert (= (and start!488804 res!2024640) b!4772687))

(assert (= (and b!4772687 res!2024641) b!4772688))

(assert (= (and b!4772688 res!2024639) b!4772689))

(assert (= start!488804 b!4772690))

(declare-fun m!5745584 () Bool)

(assert (=> b!4772688 m!5745584))

(assert (=> b!4772688 m!5745584))

(declare-fun m!5745586 () Bool)

(assert (=> b!4772688 m!5745586))

(declare-fun m!5745588 () Bool)

(assert (=> b!4772689 m!5745588))

(declare-fun m!5745590 () Bool)

(assert (=> b!4772687 m!5745590))

(assert (=> start!488804 m!5745588))

(declare-fun m!5745592 () Bool)

(assert (=> start!488804 m!5745592))

(push 1)

(assert (not b!4772690))

(assert tp_is_empty!32745)

(assert (not start!488804))

(assert (not b!4772688))

(assert (not b!4772687))

(assert (not b!4772689))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

