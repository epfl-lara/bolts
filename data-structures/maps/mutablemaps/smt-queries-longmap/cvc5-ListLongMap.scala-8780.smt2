; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!106804 () Bool)

(assert start!106804)

(declare-fun b!1267208 () Bool)

(declare-fun res!843611 () Bool)

(declare-fun e!721915 () Bool)

(assert (=> b!1267208 (=> (not res!843611) (not e!721915))))

(declare-datatypes ((B!2072 0))(
  ( (B!2073 (val!16371 Int)) )
))
(declare-datatypes ((tuple2!21410 0))(
  ( (tuple2!21411 (_1!10715 (_ BitVec 64)) (_2!10715 B!2072)) )
))
(declare-datatypes ((List!28538 0))(
  ( (Nil!28535) (Cons!28534 (h!29743 tuple2!21410) (t!42072 List!28538)) )
))
(declare-fun l!874 () List!28538)

(declare-fun key!235 () (_ BitVec 64))

(declare-fun containsKey!677 (List!28538 (_ BitVec 64)) Bool)

(assert (=> b!1267208 (= res!843611 (not (containsKey!677 l!874 key!235)))))

(declare-fun b!1267209 () Bool)

(declare-fun res!843612 () Bool)

(assert (=> b!1267209 (=> (not res!843612) (not e!721915))))

(assert (=> b!1267209 (= res!843612 (is-Cons!28534 l!874))))

(declare-fun b!1267211 () Bool)

(declare-fun e!721914 () Bool)

(declare-fun tp_is_empty!32593 () Bool)

(declare-fun tp!96588 () Bool)

(assert (=> b!1267211 (= e!721914 (and tp_is_empty!32593 tp!96588))))

(declare-fun b!1267210 () Bool)

(declare-fun isStrictlySorted!816 (List!28538) Bool)

(assert (=> b!1267210 (= e!721915 (not (isStrictlySorted!816 (t!42072 l!874))))))

(declare-fun res!843613 () Bool)

(assert (=> start!106804 (=> (not res!843613) (not e!721915))))

(assert (=> start!106804 (= res!843613 (isStrictlySorted!816 l!874))))

(assert (=> start!106804 e!721915))

(assert (=> start!106804 e!721914))

(assert (=> start!106804 true))

(assert (= (and start!106804 res!843613) b!1267208))

(assert (= (and b!1267208 res!843611) b!1267209))

(assert (= (and b!1267209 res!843612) b!1267210))

(assert (= (and start!106804 (is-Cons!28534 l!874)) b!1267211))

(declare-fun m!1166637 () Bool)

(assert (=> b!1267208 m!1166637))

(declare-fun m!1166639 () Bool)

(assert (=> b!1267210 m!1166639))

(declare-fun m!1166641 () Bool)

(assert (=> start!106804 m!1166641))

(push 1)

(assert (not b!1267211))

(assert (not b!1267210))

(assert (not start!106804))

(assert (not b!1267208))

(assert tp_is_empty!32593)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!139359 () Bool)

(declare-fun res!843648 () Bool)

(declare-fun e!721944 () Bool)

(assert (=> d!139359 (=> res!843648 e!721944)))

(assert (=> d!139359 (= res!843648 (and (is-Cons!28534 l!874) (= (_1!10715 (h!29743 l!874)) key!235)))))

(assert (=> d!139359 (= (containsKey!677 l!874 key!235) e!721944)))

(declare-fun b!1267252 () Bool)

(declare-fun e!721945 () Bool)

(assert (=> b!1267252 (= e!721944 e!721945)))

(declare-fun res!843649 () Bool)

(assert (=> b!1267252 (=> (not res!843649) (not e!721945))))

(assert (=> b!1267252 (= res!843649 (and (or (not (is-Cons!28534 l!874)) (bvsle (_1!10715 (h!29743 l!874)) key!235)) (is-Cons!28534 l!874) (bvslt (_1!10715 (h!29743 l!874)) key!235)))))

(declare-fun b!1267253 () Bool)

(assert (=> b!1267253 (= e!721945 (containsKey!677 (t!42072 l!874) key!235))))

(assert (= (and d!139359 (not res!843648)) b!1267252))

(assert (= (and b!1267252 res!843649) b!1267253))

(declare-fun m!1166655 () Bool)

(assert (=> b!1267253 m!1166655))

(assert (=> b!1267208 d!139359))

(declare-fun d!139369 () Bool)

(declare-fun res!843666 () Bool)

(declare-fun e!721962 () Bool)

(assert (=> d!139369 (=> res!843666 e!721962)))

(assert (=> d!139369 (= res!843666 (or (is-Nil!28535 (t!42072 l!874)) (is-Nil!28535 (t!42072 (t!42072 l!874)))))))

(assert (=> d!139369 (= (isStrictlySorted!816 (t!42072 l!874)) e!721962)))

(declare-fun b!1267270 () Bool)

(declare-fun e!721963 () Bool)

(assert (=> b!1267270 (= e!721962 e!721963)))

(declare-fun res!843667 () Bool)

(assert (=> b!1267270 (=> (not res!843667) (not e!721963))))

(assert (=> b!1267270 (= res!843667 (bvslt (_1!10715 (h!29743 (t!42072 l!874))) (_1!10715 (h!29743 (t!42072 (t!42072 l!874))))))))

(declare-fun b!1267271 () Bool)

(assert (=> b!1267271 (= e!721963 (isStrictlySorted!816 (t!42072 (t!42072 l!874))))))

(assert (= (and d!139369 (not res!843666)) b!1267270))

(assert (= (and b!1267270 res!843667) b!1267271))

(declare-fun m!1166661 () Bool)

(assert (=> b!1267271 m!1166661))

(assert (=> b!1267210 d!139369))

(declare-fun d!139375 () Bool)

(declare-fun res!843668 () Bool)

(declare-fun e!721964 () Bool)

(assert (=> d!139375 (=> res!843668 e!721964)))

(assert (=> d!139375 (= res!843668 (or (is-Nil!28535 l!874) (is-Nil!28535 (t!42072 l!874))))))

(assert (=> d!139375 (= (isStrictlySorted!816 l!874) e!721964)))

(declare-fun b!1267272 () Bool)

(declare-fun e!721965 () Bool)

(assert (=> b!1267272 (= e!721964 e!721965)))

(declare-fun res!843669 () Bool)

(assert (=> b!1267272 (=> (not res!843669) (not e!721965))))

(assert (=> b!1267272 (= res!843669 (bvslt (_1!10715 (h!29743 l!874)) (_1!10715 (h!29743 (t!42072 l!874)))))))

(declare-fun b!1267273 () Bool)

(assert (=> b!1267273 (= e!721965 (isStrictlySorted!816 (t!42072 l!874)))))

(assert (= (and d!139375 (not res!843668)) b!1267272))

(assert (= (and b!1267272 res!843669) b!1267273))

(assert (=> b!1267273 m!1166639))

(assert (=> start!106804 d!139375))

(declare-fun b!1267290 () Bool)

(declare-fun e!721976 () Bool)

(declare-fun tp!96599 () Bool)

(assert (=> b!1267290 (= e!721976 (and tp_is_empty!32593 tp!96599))))

(assert (=> b!1267211 (= tp!96588 e!721976)))

(assert (= (and b!1267211 (is-Cons!28534 (t!42072 l!874))) b!1267290))

(push 1)

(assert (not b!1267273))

(assert (not b!1267290))

(assert (not b!1267253))

(assert (not b!1267271))

(assert tp_is_empty!32593)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

