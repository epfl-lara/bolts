; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!106822 () Bool)

(assert start!106822)

(declare-fun b!1267303 () Bool)

(declare-fun res!843683 () Bool)

(declare-fun e!721984 () Bool)

(assert (=> b!1267303 (=> (not res!843683) (not e!721984))))

(declare-datatypes ((B!2078 0))(
  ( (B!2079 (val!16374 Int)) )
))
(declare-datatypes ((tuple2!21416 0))(
  ( (tuple2!21417 (_1!10718 (_ BitVec 64)) (_2!10718 B!2078)) )
))
(declare-datatypes ((List!28541 0))(
  ( (Nil!28538) (Cons!28537 (h!29746 tuple2!21416) (t!42075 List!28541)) )
))
(declare-fun l!874 () List!28541)

(assert (=> b!1267303 (= res!843683 (is-Cons!28537 l!874))))

(declare-fun b!1267304 () Bool)

(declare-fun key!235 () (_ BitVec 64))

(declare-fun containsKey!680 (List!28541 (_ BitVec 64)) Bool)

(assert (=> b!1267304 (= e!721984 (containsKey!680 (t!42075 l!874) key!235))))

(declare-fun b!1267305 () Bool)

(declare-fun res!843685 () Bool)

(assert (=> b!1267305 (=> (not res!843685) (not e!721984))))

(assert (=> b!1267305 (= res!843685 (not (containsKey!680 l!874 key!235)))))

(declare-fun b!1267306 () Bool)

(declare-fun e!721983 () Bool)

(declare-fun tp_is_empty!32599 () Bool)

(declare-fun tp!96606 () Bool)

(assert (=> b!1267306 (= e!721983 (and tp_is_empty!32599 tp!96606))))

(declare-fun b!1267307 () Bool)

(declare-fun res!843684 () Bool)

(assert (=> b!1267307 (=> (not res!843684) (not e!721984))))

(declare-fun isStrictlySorted!819 (List!28541) Bool)

(assert (=> b!1267307 (= res!843684 (isStrictlySorted!819 (t!42075 l!874)))))

(declare-fun res!843682 () Bool)

(assert (=> start!106822 (=> (not res!843682) (not e!721984))))

(assert (=> start!106822 (= res!843682 (isStrictlySorted!819 l!874))))

(assert (=> start!106822 e!721984))

(assert (=> start!106822 e!721983))

(assert (=> start!106822 true))

(assert (= (and start!106822 res!843682) b!1267305))

(assert (= (and b!1267305 res!843685) b!1267303))

(assert (= (and b!1267303 res!843683) b!1267307))

(assert (= (and b!1267307 res!843684) b!1267304))

(assert (= (and start!106822 (is-Cons!28537 l!874)) b!1267306))

(declare-fun m!1166667 () Bool)

(assert (=> b!1267304 m!1166667))

(declare-fun m!1166669 () Bool)

(assert (=> b!1267305 m!1166669))

(declare-fun m!1166671 () Bool)

(assert (=> b!1267307 m!1166671))

(declare-fun m!1166673 () Bool)

(assert (=> start!106822 m!1166673))

(push 1)

(assert (not start!106822))

(assert tp_is_empty!32599)

(assert (not b!1267306))

(assert (not b!1267304))

(assert (not b!1267305))

(assert (not b!1267307))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!139381 () Bool)

(declare-fun res!843722 () Bool)

(declare-fun e!722009 () Bool)

(assert (=> d!139381 (=> res!843722 e!722009)))

(assert (=> d!139381 (= res!843722 (or (is-Nil!28538 (t!42075 l!874)) (is-Nil!28538 (t!42075 (t!42075 l!874)))))))

(assert (=> d!139381 (= (isStrictlySorted!819 (t!42075 l!874)) e!722009)))

(declare-fun b!1267350 () Bool)

(declare-fun e!722010 () Bool)

(assert (=> b!1267350 (= e!722009 e!722010)))

(declare-fun res!843723 () Bool)

(assert (=> b!1267350 (=> (not res!843723) (not e!722010))))

(assert (=> b!1267350 (= res!843723 (bvslt (_1!10718 (h!29746 (t!42075 l!874))) (_1!10718 (h!29746 (t!42075 (t!42075 l!874))))))))

(declare-fun b!1267351 () Bool)

(assert (=> b!1267351 (= e!722010 (isStrictlySorted!819 (t!42075 (t!42075 l!874))))))

(assert (= (and d!139381 (not res!843722)) b!1267350))

(assert (= (and b!1267350 res!843723) b!1267351))

(declare-fun m!1166691 () Bool)

(assert (=> b!1267351 m!1166691))

(assert (=> b!1267307 d!139381))

(declare-fun d!139385 () Bool)

(declare-fun res!843726 () Bool)

(declare-fun e!722013 () Bool)

(assert (=> d!139385 (=> res!843726 e!722013)))

(assert (=> d!139385 (= res!843726 (or (is-Nil!28538 l!874) (is-Nil!28538 (t!42075 l!874))))))

(assert (=> d!139385 (= (isStrictlySorted!819 l!874) e!722013)))

(declare-fun b!1267354 () Bool)

(declare-fun e!722014 () Bool)

(assert (=> b!1267354 (= e!722013 e!722014)))

(declare-fun res!843727 () Bool)

(assert (=> b!1267354 (=> (not res!843727) (not e!722014))))

(assert (=> b!1267354 (= res!843727 (bvslt (_1!10718 (h!29746 l!874)) (_1!10718 (h!29746 (t!42075 l!874)))))))

(declare-fun b!1267355 () Bool)

(assert (=> b!1267355 (= e!722014 (isStrictlySorted!819 (t!42075 l!874)))))

(assert (= (and d!139385 (not res!843726)) b!1267354))

(assert (= (and b!1267354 res!843727) b!1267355))

(assert (=> b!1267355 m!1166671))

(assert (=> start!106822 d!139385))

(declare-fun d!139389 () Bool)

(declare-fun res!843746 () Bool)

(declare-fun e!722033 () Bool)

(assert (=> d!139389 (=> res!843746 e!722033)))

(assert (=> d!139389 (= res!843746 (and (is-Cons!28537 l!874) (= (_1!10718 (h!29746 l!874)) key!235)))))

(assert (=> d!139389 (= (containsKey!680 l!874 key!235) e!722033)))

(declare-fun b!1267374 () Bool)

(declare-fun e!722034 () Bool)

(assert (=> b!1267374 (= e!722033 e!722034)))

(declare-fun res!843747 () Bool)

(assert (=> b!1267374 (=> (not res!843747) (not e!722034))))

(assert (=> b!1267374 (= res!843747 (and (or (not (is-Cons!28537 l!874)) (bvsle (_1!10718 (h!29746 l!874)) key!235)) (is-Cons!28537 l!874) (bvslt (_1!10718 (h!29746 l!874)) key!235)))))

(declare-fun b!1267375 () Bool)

(assert (=> b!1267375 (= e!722034 (containsKey!680 (t!42075 l!874) key!235))))

(assert (= (and d!139389 (not res!843746)) b!1267374))

(assert (= (and b!1267374 res!843747) b!1267375))

(assert (=> b!1267375 m!1166667))

(assert (=> b!1267305 d!139389))

(declare-fun d!139397 () Bool)

(declare-fun res!843752 () Bool)

(declare-fun e!722039 () Bool)

(assert (=> d!139397 (=> res!843752 e!722039)))

(assert (=> d!139397 (= res!843752 (and (is-Cons!28537 (t!42075 l!874)) (= (_1!10718 (h!29746 (t!42075 l!874))) key!235)))))

(assert (=> d!139397 (= (containsKey!680 (t!42075 l!874) key!235) e!722039)))

(declare-fun b!1267380 () Bool)

(declare-fun e!722040 () Bool)

(assert (=> b!1267380 (= e!722039 e!722040)))

(declare-fun res!843753 () Bool)

(assert (=> b!1267380 (=> (not res!843753) (not e!722040))))

(assert (=> b!1267380 (= res!843753 (and (or (not (is-Cons!28537 (t!42075 l!874))) (bvsle (_1!10718 (h!29746 (t!42075 l!874))) key!235)) (is-Cons!28537 (t!42075 l!874)) (bvslt (_1!10718 (h!29746 (t!42075 l!874))) key!235)))))

(declare-fun b!1267381 () Bool)

(assert (=> b!1267381 (= e!722040 (containsKey!680 (t!42075 (t!42075 l!874)) key!235))))

(assert (= (and d!139397 (not res!843752)) b!1267380))

(assert (= (and b!1267380 res!843753) b!1267381))

(declare-fun m!1166699 () Bool)

(assert (=> b!1267381 m!1166699))

(assert (=> b!1267304 d!139397))

(declare-fun b!1267399 () Bool)

(declare-fun e!722052 () Bool)

(declare-fun tp!96620 () Bool)

(assert (=> b!1267399 (= e!722052 (and tp_is_empty!32599 tp!96620))))

(assert (=> b!1267306 (= tp!96606 e!722052)))

(assert (= (and b!1267306 (is-Cons!28537 (t!42075 l!874))) b!1267399))

(push 1)

(assert (not b!1267381))

(assert tp_is_empty!32599)

(assert (not b!1267399))

(assert (not b!1267355))

(assert (not b!1267375))

(assert (not b!1267351))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

