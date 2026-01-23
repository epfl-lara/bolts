; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!488454 () Bool)

(assert start!488454)

(declare-fun b!4771143 () Bool)

(declare-fun res!2023582 () Bool)

(declare-fun e!2978387 () Bool)

(assert (=> b!4771143 (=> (not res!2023582) (not e!2978387))))

(declare-datatypes ((K!15092 0))(
  ( (K!15093 (val!20379 Int)) )
))
(declare-datatypes ((V!15338 0))(
  ( (V!15339 (val!20380 Int)) )
))
(declare-datatypes ((tuple2!55732 0))(
  ( (tuple2!55733 (_1!31160 K!15092) (_2!31160 V!15338)) )
))
(declare-datatypes ((List!53714 0))(
  ( (Nil!53590) (Cons!53590 (h!60002 tuple2!55732) (t!361164 List!53714)) )
))
(declare-datatypes ((tuple2!55734 0))(
  ( (tuple2!55735 (_1!31161 (_ BitVec 64)) (_2!31161 List!53714)) )
))
(declare-datatypes ((List!53715 0))(
  ( (Nil!53591) (Cons!53591 (h!60003 tuple2!55734) (t!361165 List!53715)) )
))
(declare-datatypes ((ListLongMap!4783 0))(
  ( (ListLongMap!4784 (toList!6369 List!53715)) )
))
(declare-fun lm!1309 () ListLongMap!4783)

(declare-datatypes ((Hashable!6641 0))(
  ( (HashableExt!6640 (__x!32664 Int)) )
))
(declare-fun hashF!980 () Hashable!6641)

(declare-fun allKeysSameHashInMap!2046 (ListLongMap!4783 Hashable!6641) Bool)

(assert (=> b!4771143 (= res!2023582 (allKeysSameHashInMap!2046 lm!1309 hashF!980))))

(declare-fun b!4771144 () Bool)

(declare-fun e!2978386 () Bool)

(assert (=> b!4771144 (= e!2978387 (not e!2978386))))

(declare-fun res!2023579 () Bool)

(assert (=> b!4771144 (=> res!2023579 e!2978386)))

(declare-fun lambda!225007 () Int)

(declare-fun forall!11905 (List!53715 Int) Bool)

(assert (=> b!4771144 (= res!2023579 (not (forall!11905 (toList!6369 lm!1309) lambda!225007)))))

(declare-datatypes ((Unit!138483 0))(
  ( (Unit!138484) )
))
(declare-fun lt!1933420 () Unit!138483)

(declare-fun lt!1933425 () tuple2!55734)

(declare-fun forallContained!3886 (List!53715 Int tuple2!55734) Unit!138483)

(assert (=> b!4771144 (= lt!1933420 (forallContained!3886 (toList!6369 lm!1309) lambda!225007 lt!1933425))))

(declare-fun contains!16969 (List!53715 tuple2!55734) Bool)

(assert (=> b!4771144 (contains!16969 (toList!6369 lm!1309) lt!1933425)))

(declare-fun lt!1933421 () (_ BitVec 64))

(declare-fun lt!1933422 () List!53714)

(assert (=> b!4771144 (= lt!1933425 (tuple2!55735 lt!1933421 lt!1933422))))

(declare-fun lt!1933423 () Unit!138483)

(declare-fun lemmaGetValueImpliesTupleContained!452 (ListLongMap!4783 (_ BitVec 64) List!53714) Unit!138483)

(assert (=> b!4771144 (= lt!1933423 (lemmaGetValueImpliesTupleContained!452 lm!1309 lt!1933421 lt!1933422))))

(declare-fun apply!12686 (ListLongMap!4783 (_ BitVec 64)) List!53714)

(assert (=> b!4771144 (= lt!1933422 (apply!12686 lm!1309 lt!1933421))))

(declare-fun contains!16970 (ListLongMap!4783 (_ BitVec 64)) Bool)

(assert (=> b!4771144 (contains!16970 lm!1309 lt!1933421)))

(declare-fun key!2872 () K!15092)

(declare-fun hash!4615 (Hashable!6641 K!15092) (_ BitVec 64))

(assert (=> b!4771144 (= lt!1933421 (hash!4615 hashF!980 key!2872))))

(declare-fun lt!1933424 () Unit!138483)

(declare-fun lemmaInGenMapThenLongMapContainsHash!857 (ListLongMap!4783 K!15092 Hashable!6641) Unit!138483)

(assert (=> b!4771144 (= lt!1933424 (lemmaInGenMapThenLongMapContainsHash!857 lm!1309 key!2872 hashF!980))))

(declare-fun b!4771145 () Bool)

(assert (=> b!4771145 (= e!2978386 (forall!11905 (toList!6369 lm!1309) lambda!225007))))

(declare-fun b!4771146 () Bool)

(declare-fun res!2023580 () Bool)

(assert (=> b!4771146 (=> (not res!2023580) (not e!2978387))))

(declare-datatypes ((ListMap!5849 0))(
  ( (ListMap!5850 (toList!6370 List!53714)) )
))
(declare-fun contains!16971 (ListMap!5849 K!15092) Bool)

(declare-fun extractMap!2176 (List!53715) ListMap!5849)

(assert (=> b!4771146 (= res!2023580 (contains!16971 (extractMap!2176 (toList!6369 lm!1309)) key!2872))))

(declare-fun b!4771147 () Bool)

(declare-fun e!2978385 () Bool)

(declare-fun tp!1356603 () Bool)

(assert (=> b!4771147 (= e!2978385 tp!1356603)))

(declare-fun res!2023581 () Bool)

(assert (=> start!488454 (=> (not res!2023581) (not e!2978387))))

(assert (=> start!488454 (= res!2023581 (forall!11905 (toList!6369 lm!1309) lambda!225007))))

(assert (=> start!488454 e!2978387))

(declare-fun inv!69119 (ListLongMap!4783) Bool)

(assert (=> start!488454 (and (inv!69119 lm!1309) e!2978385)))

(assert (=> start!488454 true))

(declare-fun tp_is_empty!32577 () Bool)

(assert (=> start!488454 tp_is_empty!32577))

(assert (= (and start!488454 res!2023581) b!4771143))

(assert (= (and b!4771143 res!2023582) b!4771146))

(assert (= (and b!4771146 res!2023580) b!4771144))

(assert (= (and b!4771144 (not res!2023579)) b!4771145))

(assert (= start!488454 b!4771147))

(declare-fun m!5742982 () Bool)

(assert (=> b!4771146 m!5742982))

(assert (=> b!4771146 m!5742982))

(declare-fun m!5742984 () Bool)

(assert (=> b!4771146 m!5742984))

(declare-fun m!5742986 () Bool)

(assert (=> b!4771143 m!5742986))

(declare-fun m!5742988 () Bool)

(assert (=> b!4771144 m!5742988))

(declare-fun m!5742990 () Bool)

(assert (=> b!4771144 m!5742990))

(declare-fun m!5742992 () Bool)

(assert (=> b!4771144 m!5742992))

(declare-fun m!5742994 () Bool)

(assert (=> b!4771144 m!5742994))

(declare-fun m!5742996 () Bool)

(assert (=> b!4771144 m!5742996))

(declare-fun m!5742998 () Bool)

(assert (=> b!4771144 m!5742998))

(declare-fun m!5743000 () Bool)

(assert (=> b!4771144 m!5743000))

(declare-fun m!5743002 () Bool)

(assert (=> b!4771144 m!5743002))

(assert (=> b!4771145 m!5742998))

(assert (=> start!488454 m!5742998))

(declare-fun m!5743004 () Bool)

(assert (=> start!488454 m!5743004))

(push 1)

(assert (not b!4771146))

(assert (not start!488454))

(assert (not b!4771144))

(assert (not b!4771143))

(assert (not b!4771147))

(assert tp_is_empty!32577)

(assert (not b!4771145))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

