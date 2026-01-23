; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!506246 () Bool)

(assert start!506246)

(declare-fun b!4851184 () Bool)

(declare-fun e!3032670 () Bool)

(assert (=> b!4851184 (= e!3032670 (not true))))

(declare-datatypes ((K!17407 0))(
  ( (K!17408 (val!22231 Int)) )
))
(declare-datatypes ((V!17653 0))(
  ( (V!17654 (val!22232 Int)) )
))
(declare-datatypes ((tuple2!59334 0))(
  ( (tuple2!59335 (_1!32961 K!17407) (_2!32961 V!17653)) )
))
(declare-datatypes ((Option!13708 0))(
  ( (None!13707) (Some!13707 (v!49501 tuple2!59334)) )
))
(declare-fun lt!1990014 () Option!13708)

(declare-datatypes ((List!55724 0))(
  ( (Nil!55600) (Cons!55600 (h!62037 tuple2!59334) (t!363220 List!55724)) )
))
(declare-fun lt!1990016 () List!55724)

(declare-fun key!6445 () K!17407)

(declare-fun getPair!1111 (List!55724 K!17407) Option!13708)

(assert (=> b!4851184 (= lt!1990014 (getPair!1111 lt!1990016 key!6445))))

(declare-datatypes ((tuple2!59336 0))(
  ( (tuple2!59337 (_1!32962 (_ BitVec 64)) (_2!32962 List!55724)) )
))
(declare-datatypes ((List!55725 0))(
  ( (Nil!55601) (Cons!55601 (h!62038 tuple2!59336) (t!363221 List!55725)) )
))
(declare-datatypes ((ListLongMap!6505 0))(
  ( (ListLongMap!6506 (toList!7881 List!55725)) )
))
(declare-fun lm!2646 () ListLongMap!6505)

(declare-datatypes ((Unit!145758 0))(
  ( (Unit!145759) )
))
(declare-fun lt!1990012 () Unit!145758)

(declare-fun lambda!242787 () Int)

(declare-fun lt!1990013 () tuple2!59336)

(declare-fun forallContained!4562 (List!55725 Int tuple2!59336) Unit!145758)

(assert (=> b!4851184 (= lt!1990012 (forallContained!4562 (toList!7881 lm!2646) lambda!242787 lt!1990013))))

(declare-fun contains!19271 (List!55725 tuple2!59336) Bool)

(assert (=> b!4851184 (contains!19271 (toList!7881 lm!2646) lt!1990013)))

(declare-fun lt!1990015 () (_ BitVec 64))

(assert (=> b!4851184 (= lt!1990013 (tuple2!59337 lt!1990015 lt!1990016))))

(declare-fun lt!1990011 () Unit!145758)

(declare-fun lemmaGetValueImpliesTupleContained!788 (ListLongMap!6505 (_ BitVec 64) List!55724) Unit!145758)

(assert (=> b!4851184 (= lt!1990011 (lemmaGetValueImpliesTupleContained!788 lm!2646 lt!1990015 lt!1990016))))

(declare-fun apply!13464 (ListLongMap!6505 (_ BitVec 64)) List!55724)

(assert (=> b!4851184 (= lt!1990016 (apply!13464 lm!2646 lt!1990015))))

(declare-fun b!4851185 () Bool)

(declare-fun e!3032671 () Bool)

(declare-fun tp!1364875 () Bool)

(assert (=> b!4851185 (= e!3032671 tp!1364875)))

(declare-fun b!4851182 () Bool)

(declare-fun res!2070647 () Bool)

(declare-fun e!3032669 () Bool)

(assert (=> b!4851182 (=> (not res!2070647) (not e!3032669))))

(declare-datatypes ((Hashable!7521 0))(
  ( (HashableExt!7520 (__x!33796 Int)) )
))
(declare-fun hashF!1641 () Hashable!7521)

(declare-fun allKeysSameHashInMap!2837 (ListLongMap!6505 Hashable!7521) Bool)

(assert (=> b!4851182 (= res!2070647 (allKeysSameHashInMap!2837 lm!2646 hashF!1641))))

(declare-fun res!2070648 () Bool)

(assert (=> start!506246 (=> (not res!2070648) (not e!3032669))))

(declare-fun forall!12974 (List!55725 Int) Bool)

(assert (=> start!506246 (= res!2070648 (forall!12974 (toList!7881 lm!2646) lambda!242787))))

(assert (=> start!506246 e!3032669))

(declare-fun inv!71294 (ListLongMap!6505) Bool)

(assert (=> start!506246 (and (inv!71294 lm!2646) e!3032671)))

(assert (=> start!506246 true))

(declare-fun tp_is_empty!35257 () Bool)

(assert (=> start!506246 tp_is_empty!35257))

(declare-fun b!4851183 () Bool)

(assert (=> b!4851183 (= e!3032669 e!3032670)))

(declare-fun res!2070646 () Bool)

(assert (=> b!4851183 (=> (not res!2070646) (not e!3032670))))

(declare-fun contains!19272 (ListLongMap!6505 (_ BitVec 64)) Bool)

(assert (=> b!4851183 (= res!2070646 (contains!19272 lm!2646 lt!1990015))))

(declare-fun hash!5649 (Hashable!7521 K!17407) (_ BitVec 64))

(assert (=> b!4851183 (= lt!1990015 (hash!5649 hashF!1641 key!6445))))

(assert (= (and start!506246 res!2070648) b!4851182))

(assert (= (and b!4851182 res!2070647) b!4851183))

(assert (= (and b!4851183 res!2070646) b!4851184))

(assert (= start!506246 b!4851185))

(declare-fun m!5849788 () Bool)

(assert (=> b!4851184 m!5849788))

(declare-fun m!5849790 () Bool)

(assert (=> b!4851184 m!5849790))

(declare-fun m!5849792 () Bool)

(assert (=> b!4851184 m!5849792))

(declare-fun m!5849794 () Bool)

(assert (=> b!4851184 m!5849794))

(declare-fun m!5849796 () Bool)

(assert (=> b!4851184 m!5849796))

(declare-fun m!5849798 () Bool)

(assert (=> b!4851182 m!5849798))

(declare-fun m!5849800 () Bool)

(assert (=> start!506246 m!5849800))

(declare-fun m!5849802 () Bool)

(assert (=> start!506246 m!5849802))

(declare-fun m!5849804 () Bool)

(assert (=> b!4851183 m!5849804))

(declare-fun m!5849806 () Bool)

(assert (=> b!4851183 m!5849806))

(push 1)

(assert (not b!4851185))

(assert (not b!4851183))

(assert (not b!4851182))

(assert (not start!506246))

(assert (not b!4851184))

(assert tp_is_empty!35257)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

