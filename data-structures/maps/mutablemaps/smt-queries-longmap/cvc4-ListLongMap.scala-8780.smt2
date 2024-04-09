; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!106808 () Bool)

(assert start!106808)

(declare-fun b!1267233 () Bool)

(declare-fun res!843629 () Bool)

(declare-fun e!721926 () Bool)

(assert (=> b!1267233 (=> (not res!843629) (not e!721926))))

(declare-datatypes ((B!2076 0))(
  ( (B!2077 (val!16373 Int)) )
))
(declare-datatypes ((tuple2!21414 0))(
  ( (tuple2!21415 (_1!10717 (_ BitVec 64)) (_2!10717 B!2076)) )
))
(declare-datatypes ((List!28540 0))(
  ( (Nil!28537) (Cons!28536 (h!29745 tuple2!21414) (t!42074 List!28540)) )
))
(declare-fun l!874 () List!28540)

(assert (=> b!1267233 (= res!843629 (is-Cons!28536 l!874))))

(declare-fun res!843631 () Bool)

(assert (=> start!106808 (=> (not res!843631) (not e!721926))))

(declare-fun isStrictlySorted!818 (List!28540) Bool)

(assert (=> start!106808 (= res!843631 (isStrictlySorted!818 l!874))))

(assert (=> start!106808 e!721926))

(declare-fun e!721927 () Bool)

(assert (=> start!106808 e!721927))

(assert (=> start!106808 true))

(declare-fun b!1267235 () Bool)

(declare-fun tp_is_empty!32597 () Bool)

(declare-fun tp!96594 () Bool)

(assert (=> b!1267235 (= e!721927 (and tp_is_empty!32597 tp!96594))))

(declare-fun b!1267232 () Bool)

(declare-fun res!843630 () Bool)

(assert (=> b!1267232 (=> (not res!843630) (not e!721926))))

(declare-fun key!235 () (_ BitVec 64))

(declare-fun containsKey!679 (List!28540 (_ BitVec 64)) Bool)

(assert (=> b!1267232 (= res!843630 (not (containsKey!679 l!874 key!235)))))

(declare-fun b!1267234 () Bool)

(assert (=> b!1267234 (= e!721926 (not (isStrictlySorted!818 (t!42074 l!874))))))

(assert (= (and start!106808 res!843631) b!1267232))

(assert (= (and b!1267232 res!843630) b!1267233))

(assert (= (and b!1267233 res!843629) b!1267234))

(assert (= (and start!106808 (is-Cons!28536 l!874)) b!1267235))

(declare-fun m!1166649 () Bool)

(assert (=> start!106808 m!1166649))

(declare-fun m!1166651 () Bool)

(assert (=> b!1267232 m!1166651))

(declare-fun m!1166653 () Bool)

(assert (=> b!1267234 m!1166653))

(push 1)

(assert (not b!1267232))

(assert (not start!106808))

(assert tp_is_empty!32597)

(assert (not b!1267234))

(assert (not b!1267235))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!139363 () Bool)

(declare-fun res!843646 () Bool)

(declare-fun e!721942 () Bool)

(assert (=> d!139363 (=> res!843646 e!721942)))

(assert (=> d!139363 (= res!843646 (or (is-Nil!28537 l!874) (is-Nil!28537 (t!42074 l!874))))))

(assert (=> d!139363 (= (isStrictlySorted!818 l!874) e!721942)))

(declare-fun b!1267250 () Bool)

(declare-fun e!721943 () Bool)

(assert (=> b!1267250 (= e!721942 e!721943)))

(declare-fun res!843647 () Bool)

(assert (=> b!1267250 (=> (not res!843647) (not e!721943))))

(assert (=> b!1267250 (= res!843647 (bvslt (_1!10717 (h!29745 l!874)) (_1!10717 (h!29745 (t!42074 l!874)))))))

(declare-fun b!1267251 () Bool)

(assert (=> b!1267251 (= e!721943 (isStrictlySorted!818 (t!42074 l!874)))))

(assert (= (and d!139363 (not res!843646)) b!1267250))

(assert (= (and b!1267250 res!843647) b!1267251))

(assert (=> b!1267251 m!1166653))

(assert (=> start!106808 d!139363))

(declare-fun d!139367 () Bool)

(declare-fun res!843652 () Bool)

(declare-fun e!721948 () Bool)

(assert (=> d!139367 (=> res!843652 e!721948)))

(assert (=> d!139367 (= res!843652 (or (is-Nil!28537 (t!42074 l!874)) (is-Nil!28537 (t!42074 (t!42074 l!874)))))))

(assert (=> d!139367 (= (isStrictlySorted!818 (t!42074 l!874)) e!721948)))

(declare-fun b!1267256 () Bool)

(declare-fun e!721949 () Bool)

(assert (=> b!1267256 (= e!721948 e!721949)))

(declare-fun res!843653 () Bool)

(assert (=> b!1267256 (=> (not res!843653) (not e!721949))))

(assert (=> b!1267256 (= res!843653 (bvslt (_1!10717 (h!29745 (t!42074 l!874))) (_1!10717 (h!29745 (t!42074 (t!42074 l!874))))))))

(declare-fun b!1267257 () Bool)

(assert (=> b!1267257 (= e!721949 (isStrictlySorted!818 (t!42074 (t!42074 l!874))))))

(assert (= (and d!139367 (not res!843652)) b!1267256))

(assert (= (and b!1267256 res!843653) b!1267257))

(declare-fun m!1166659 () Bool)

(assert (=> b!1267257 m!1166659))

(assert (=> b!1267234 d!139367))

(declare-fun d!139373 () Bool)

(declare-fun res!843672 () Bool)

(declare-fun e!721968 () Bool)

(assert (=> d!139373 (=> res!843672 e!721968)))

(assert (=> d!139373 (= res!843672 (and (is-Cons!28536 l!874) (= (_1!10717 (h!29745 l!874)) key!235)))))

(assert (=> d!139373 (= (containsKey!679 l!874 key!235) e!721968)))

(declare-fun b!1267278 () Bool)

(declare-fun e!721969 () Bool)

(assert (=> b!1267278 (= e!721968 e!721969)))

(declare-fun res!843673 () Bool)

(assert (=> b!1267278 (=> (not res!843673) (not e!721969))))

(assert (=> b!1267278 (= res!843673 (and (or (not (is-Cons!28536 l!874)) (bvsle (_1!10717 (h!29745 l!874)) key!235)) (is-Cons!28536 l!874) (bvslt (_1!10717 (h!29745 l!874)) key!235)))))

(declare-fun b!1267279 () Bool)

(assert (=> b!1267279 (= e!721969 (containsKey!679 (t!42074 l!874) key!235))))

(assert (= (and d!139373 (not res!843672)) b!1267278))

(assert (= (and b!1267278 res!843673) b!1267279))

(declare-fun m!1166665 () Bool)

(assert (=> b!1267279 m!1166665))

(assert (=> b!1267232 d!139373))

(declare-fun b!1267292 () Bool)

(declare-fun e!721978 () Bool)

(declare-fun tp!96603 () Bool)

(assert (=> b!1267292 (= e!721978 (and tp_is_empty!32597 tp!96603))))

(assert (=> b!1267235 (= tp!96594 e!721978)))

(assert (= (and b!1267235 (is-Cons!28536 (t!42074 l!874))) b!1267292))

(push 1)

