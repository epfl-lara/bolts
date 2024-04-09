; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!106840 () Bool)

(assert start!106840)

(declare-fun b!1267414 () Bool)

(declare-fun res!843772 () Bool)

(declare-fun e!722058 () Bool)

(assert (=> b!1267414 (=> (not res!843772) (not e!722058))))

(declare-datatypes ((B!2084 0))(
  ( (B!2085 (val!16377 Int)) )
))
(declare-datatypes ((tuple2!21422 0))(
  ( (tuple2!21423 (_1!10721 (_ BitVec 64)) (_2!10721 B!2084)) )
))
(declare-datatypes ((List!28544 0))(
  ( (Nil!28541) (Cons!28540 (h!29749 tuple2!21422) (t!42078 List!28544)) )
))
(declare-fun l!874 () List!28544)

(declare-fun key!235 () (_ BitVec 64))

(declare-fun containsKey!683 (List!28544 (_ BitVec 64)) Bool)

(assert (=> b!1267414 (= res!843772 (not (containsKey!683 (t!42078 l!874) key!235)))))

(declare-fun b!1267415 () Bool)

(declare-fun res!843769 () Bool)

(assert (=> b!1267415 (=> (not res!843769) (not e!722058))))

(declare-fun isStrictlySorted!822 (List!28544) Bool)

(assert (=> b!1267415 (= res!843769 (isStrictlySorted!822 (t!42078 l!874)))))

(declare-fun b!1267416 () Bool)

(declare-fun res!843768 () Bool)

(assert (=> b!1267416 (=> (not res!843768) (not e!722058))))

(assert (=> b!1267416 (= res!843768 (is-Cons!28540 l!874))))

(declare-fun b!1267417 () Bool)

(declare-fun e!722059 () Bool)

(declare-fun tp_is_empty!32605 () Bool)

(declare-fun tp!96624 () Bool)

(assert (=> b!1267417 (= e!722059 (and tp_is_empty!32605 tp!96624))))

(declare-fun b!1267418 () Bool)

(declare-fun ListPrimitiveSize!160 (List!28544) Int)

(assert (=> b!1267418 (= e!722058 (>= (ListPrimitiveSize!160 (t!42078 l!874)) (ListPrimitiveSize!160 l!874)))))

(declare-fun b!1267413 () Bool)

(declare-fun res!843771 () Bool)

(assert (=> b!1267413 (=> (not res!843771) (not e!722058))))

(assert (=> b!1267413 (= res!843771 (not (containsKey!683 l!874 key!235)))))

(declare-fun res!843770 () Bool)

(assert (=> start!106840 (=> (not res!843770) (not e!722058))))

(assert (=> start!106840 (= res!843770 (isStrictlySorted!822 l!874))))

(assert (=> start!106840 e!722058))

(assert (=> start!106840 e!722059))

(assert (=> start!106840 true))

(assert (= (and start!106840 res!843770) b!1267413))

(assert (= (and b!1267413 res!843771) b!1267416))

(assert (= (and b!1267416 res!843768) b!1267415))

(assert (= (and b!1267415 res!843769) b!1267414))

(assert (= (and b!1267414 res!843772) b!1267418))

(assert (= (and start!106840 (is-Cons!28540 l!874)) b!1267417))

(declare-fun m!1166703 () Bool)

(assert (=> b!1267414 m!1166703))

(declare-fun m!1166705 () Bool)

(assert (=> start!106840 m!1166705))

(declare-fun m!1166707 () Bool)

(assert (=> b!1267418 m!1166707))

(declare-fun m!1166709 () Bool)

(assert (=> b!1267418 m!1166709))

(declare-fun m!1166711 () Bool)

(assert (=> b!1267413 m!1166711))

(declare-fun m!1166713 () Bool)

(assert (=> b!1267415 m!1166713))

(push 1)

(assert (not b!1267414))

(assert (not b!1267413))

(assert (not b!1267418))

(assert tp_is_empty!32605)

(assert (not start!106840))

(assert (not b!1267417))

(assert (not b!1267415))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!139407 () Bool)

(declare-fun res!843817 () Bool)

(declare-fun e!722086 () Bool)

(assert (=> d!139407 (=> res!843817 e!722086)))

(assert (=> d!139407 (= res!843817 (and (is-Cons!28540 (t!42078 l!874)) (= (_1!10721 (h!29749 (t!42078 l!874))) key!235)))))

(assert (=> d!139407 (= (containsKey!683 (t!42078 l!874) key!235) e!722086)))

(declare-fun b!1267469 () Bool)

(declare-fun e!722087 () Bool)

(assert (=> b!1267469 (= e!722086 e!722087)))

(declare-fun res!843818 () Bool)

(assert (=> b!1267469 (=> (not res!843818) (not e!722087))))

(assert (=> b!1267469 (= res!843818 (and (or (not (is-Cons!28540 (t!42078 l!874))) (bvsle (_1!10721 (h!29749 (t!42078 l!874))) key!235)) (is-Cons!28540 (t!42078 l!874)) (bvslt (_1!10721 (h!29749 (t!42078 l!874))) key!235)))))

(declare-fun b!1267470 () Bool)

(assert (=> b!1267470 (= e!722087 (containsKey!683 (t!42078 (t!42078 l!874)) key!235))))

(assert (= (and d!139407 (not res!843817)) b!1267469))

(assert (= (and b!1267469 res!843818) b!1267470))

(declare-fun m!1166741 () Bool)

(assert (=> b!1267470 m!1166741))

(assert (=> b!1267414 d!139407))

(declare-fun d!139413 () Bool)

(declare-fun res!843821 () Bool)

(declare-fun e!722090 () Bool)

(assert (=> d!139413 (=> res!843821 e!722090)))

(assert (=> d!139413 (= res!843821 (and (is-Cons!28540 l!874) (= (_1!10721 (h!29749 l!874)) key!235)))))

(assert (=> d!139413 (= (containsKey!683 l!874 key!235) e!722090)))

(declare-fun b!1267473 () Bool)

(declare-fun e!722091 () Bool)

(assert (=> b!1267473 (= e!722090 e!722091)))

(declare-fun res!843822 () Bool)

(assert (=> b!1267473 (=> (not res!843822) (not e!722091))))

(assert (=> b!1267473 (= res!843822 (and (or (not (is-Cons!28540 l!874)) (bvsle (_1!10721 (h!29749 l!874)) key!235)) (is-Cons!28540 l!874) (bvslt (_1!10721 (h!29749 l!874)) key!235)))))

(declare-fun b!1267474 () Bool)

(assert (=> b!1267474 (= e!722091 (containsKey!683 (t!42078 l!874) key!235))))

(assert (= (and d!139413 (not res!843821)) b!1267473))

(assert (= (and b!1267473 res!843822) b!1267474))

(assert (=> b!1267474 m!1166703))

(assert (=> b!1267413 d!139413))

(declare-fun d!139417 () Bool)

(declare-fun lt!574268 () Int)

(assert (=> d!139417 (>= lt!574268 0)))

(declare-fun e!722106 () Int)

(assert (=> d!139417 (= lt!574268 e!722106)))

(declare-fun c!123508 () Bool)

(assert (=> d!139417 (= c!123508 (is-Nil!28541 (t!42078 l!874)))))

(assert (=> d!139417 (= (ListPrimitiveSize!160 (t!42078 l!874)) lt!574268)))

(declare-fun b!1267491 () Bool)

(assert (=> b!1267491 (= e!722106 0)))

(declare-fun b!1267492 () Bool)

(assert (=> b!1267492 (= e!722106 (+ 1 (ListPrimitiveSize!160 (t!42078 (t!42078 l!874)))))))

(assert (= (and d!139417 c!123508) b!1267491))

(assert (= (and d!139417 (not c!123508)) b!1267492))

(declare-fun m!1166745 () Bool)

(assert (=> b!1267492 m!1166745))

(assert (=> b!1267418 d!139417))

(declare-fun d!139423 () Bool)

(declare-fun lt!574269 () Int)

(assert (=> d!139423 (>= lt!574269 0)))

(declare-fun e!722111 () Int)

(assert (=> d!139423 (= lt!574269 e!722111)))

(declare-fun c!123509 () Bool)

(assert (=> d!139423 (= c!123509 (is-Nil!28541 l!874))))

(assert (=> d!139423 (= (ListPrimitiveSize!160 l!874) lt!574269)))

(declare-fun b!1267497 () Bool)

(assert (=> b!1267497 (= e!722111 0)))

(declare-fun b!1267498 () Bool)

(assert (=> b!1267498 (= e!722111 (+ 1 (ListPrimitiveSize!160 (t!42078 l!874))))))

(assert (= (and d!139423 c!123509) b!1267497))

(assert (= (and d!139423 (not c!123509)) b!1267498))

(assert (=> b!1267498 m!1166707))

(assert (=> b!1267418 d!139423))

(declare-fun d!139429 () Bool)

(declare-fun res!843847 () Bool)

(declare-fun e!722126 () Bool)

(assert (=> d!139429 (=> res!843847 e!722126)))

(assert (=> d!139429 (= res!843847 (or (is-Nil!28541 l!874) (is-Nil!28541 (t!42078 l!874))))))

(assert (=> d!139429 (= (isStrictlySorted!822 l!874) e!722126)))

(declare-fun b!1267519 () Bool)

(declare-fun e!722127 () Bool)

(assert (=> b!1267519 (= e!722126 e!722127)))

(declare-fun res!843848 () Bool)

(assert (=> b!1267519 (=> (not res!843848) (not e!722127))))

(assert (=> b!1267519 (= res!843848 (bvslt (_1!10721 (h!29749 l!874)) (_1!10721 (h!29749 (t!42078 l!874)))))))

(declare-fun b!1267520 () Bool)

(assert (=> b!1267520 (= e!722127 (isStrictlySorted!822 (t!42078 l!874)))))

(assert (= (and d!139429 (not res!843847)) b!1267519))

(assert (= (and b!1267519 res!843848) b!1267520))

(assert (=> b!1267520 m!1166713))

(assert (=> start!106840 d!139429))

(declare-fun d!139437 () Bool)

(declare-fun res!843849 () Bool)

(declare-fun e!722131 () Bool)

(assert (=> d!139437 (=> res!843849 e!722131)))

(assert (=> d!139437 (= res!843849 (or (is-Nil!28541 (t!42078 l!874)) (is-Nil!28541 (t!42078 (t!42078 l!874)))))))

(assert (=> d!139437 (= (isStrictlySorted!822 (t!42078 l!874)) e!722131)))

(declare-fun b!1267527 () Bool)

(declare-fun e!722132 () Bool)

(assert (=> b!1267527 (= e!722131 e!722132)))

(declare-fun res!843850 () Bool)

(assert (=> b!1267527 (=> (not res!843850) (not e!722132))))

(assert (=> b!1267527 (= res!843850 (bvslt (_1!10721 (h!29749 (t!42078 l!874))) (_1!10721 (h!29749 (t!42078 (t!42078 l!874))))))))

(declare-fun b!1267528 () Bool)

(assert (=> b!1267528 (= e!722132 (isStrictlySorted!822 (t!42078 (t!42078 l!874))))))

(assert (= (and d!139437 (not res!843849)) b!1267527))

(assert (= (and b!1267527 res!843850) b!1267528))

(declare-fun m!1166755 () Bool)

(assert (=> b!1267528 m!1166755))

(assert (=> b!1267415 d!139437))

(declare-fun b!1267540 () Bool)

(declare-fun e!722139 () Bool)

(declare-fun tp!96638 () Bool)

(assert (=> b!1267540 (= e!722139 (and tp_is_empty!32605 tp!96638))))

(assert (=> b!1267417 (= tp!96624 e!722139)))

(assert (= (and b!1267417 (is-Cons!28540 (t!42078 l!874))) b!1267540))

(push 1)

