; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!7592 () Bool)

(assert start!7592)

(declare-fun b!48451 () Bool)

(declare-fun res!28089 () Bool)

(declare-fun e!31093 () Bool)

(assert (=> b!48451 (=> (not res!28089) (not e!31093))))

(declare-datatypes ((B!948 0))(
  ( (B!949 (val!1094 Int)) )
))
(declare-datatypes ((tuple2!1774 0))(
  ( (tuple2!1775 (_1!897 (_ BitVec 64)) (_2!897 B!948)) )
))
(declare-datatypes ((List!1310 0))(
  ( (Nil!1307) (Cons!1306 (h!1886 tuple2!1774) (t!4346 List!1310)) )
))
(declare-fun l!1333 () List!1310)

(assert (=> b!48451 (= res!28089 (not (is-Nil!1307 l!1333)))))

(declare-fun b!48450 () Bool)

(declare-fun res!28088 () Bool)

(assert (=> b!48450 (=> (not res!28088) (not e!31093))))

(declare-fun newKey!147 () (_ BitVec 64))

(declare-fun containsKey!106 (List!1310 (_ BitVec 64)) Bool)

(assert (=> b!48450 (= res!28088 (not (containsKey!106 l!1333 newKey!147)))))

(declare-fun b!48453 () Bool)

(declare-fun e!31092 () Bool)

(declare-fun tp_is_empty!2099 () Bool)

(declare-fun tp!6389 () Bool)

(assert (=> b!48453 (= e!31092 (and tp_is_empty!2099 tp!6389))))

(declare-fun res!28087 () Bool)

(assert (=> start!7592 (=> (not res!28087) (not e!31093))))

(declare-fun isStrictlySorted!254 (List!1310) Bool)

(assert (=> start!7592 (= res!28087 (isStrictlySorted!254 l!1333))))

(assert (=> start!7592 e!31093))

(assert (=> start!7592 e!31092))

(assert (=> start!7592 true))

(declare-fun b!48452 () Bool)

(assert (=> b!48452 (= e!31093 (not (isStrictlySorted!254 (t!4346 l!1333))))))

(assert (= (and start!7592 res!28087) b!48450))

(assert (= (and b!48450 res!28088) b!48451))

(assert (= (and b!48451 res!28089) b!48452))

(assert (= (and start!7592 (is-Cons!1306 l!1333)) b!48453))

(declare-fun m!42327 () Bool)

(assert (=> b!48450 m!42327))

(declare-fun m!42329 () Bool)

(assert (=> start!7592 m!42329))

(declare-fun m!42331 () Bool)

(assert (=> b!48452 m!42331))

(push 1)

(assert (not b!48450))

(assert tp_is_empty!2099)

(assert (not start!7592))

(assert (not b!48453))

(assert (not b!48452))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!9645 () Bool)

(declare-fun res!28104 () Bool)

(declare-fun e!31108 () Bool)

(assert (=> d!9645 (=> res!28104 e!31108)))

(assert (=> d!9645 (= res!28104 (and (is-Cons!1306 l!1333) (= (_1!897 (h!1886 l!1333)) newKey!147)))))

(assert (=> d!9645 (= (containsKey!106 l!1333 newKey!147) e!31108)))

(declare-fun b!48468 () Bool)

(declare-fun e!31109 () Bool)

(assert (=> b!48468 (= e!31108 e!31109)))

(declare-fun res!28105 () Bool)

(assert (=> b!48468 (=> (not res!28105) (not e!31109))))

(assert (=> b!48468 (= res!28105 (and (or (not (is-Cons!1306 l!1333)) (bvsle (_1!897 (h!1886 l!1333)) newKey!147)) (is-Cons!1306 l!1333) (bvslt (_1!897 (h!1886 l!1333)) newKey!147)))))

(declare-fun b!48469 () Bool)

(assert (=> b!48469 (= e!31109 (containsKey!106 (t!4346 l!1333) newKey!147))))

(assert (= (and d!9645 (not res!28104)) b!48468))

(assert (= (and b!48468 res!28105) b!48469))

(declare-fun m!42335 () Bool)

(assert (=> b!48469 m!42335))

(assert (=> b!48450 d!9645))

(declare-fun d!9653 () Bool)

(declare-fun res!28122 () Bool)

(declare-fun e!31126 () Bool)

(assert (=> d!9653 (=> res!28122 e!31126)))

(assert (=> d!9653 (= res!28122 (or (is-Nil!1307 (t!4346 l!1333)) (is-Nil!1307 (t!4346 (t!4346 l!1333)))))))

(assert (=> d!9653 (= (isStrictlySorted!254 (t!4346 l!1333)) e!31126)))

(declare-fun b!48486 () Bool)

(declare-fun e!31127 () Bool)

(assert (=> b!48486 (= e!31126 e!31127)))

(declare-fun res!28123 () Bool)

(assert (=> b!48486 (=> (not res!28123) (not e!31127))))

(assert (=> b!48486 (= res!28123 (bvslt (_1!897 (h!1886 (t!4346 l!1333))) (_1!897 (h!1886 (t!4346 (t!4346 l!1333))))))))

(declare-fun b!48487 () Bool)

(assert (=> b!48487 (= e!31127 (isStrictlySorted!254 (t!4346 (t!4346 l!1333))))))

(assert (= (and d!9653 (not res!28122)) b!48486))

(assert (= (and b!48486 res!28123) b!48487))

(declare-fun m!42339 () Bool)

(assert (=> b!48487 m!42339))

(assert (=> b!48452 d!9653))

(declare-fun d!9657 () Bool)

(declare-fun res!28124 () Bool)

(declare-fun e!31128 () Bool)

(assert (=> d!9657 (=> res!28124 e!31128)))

(assert (=> d!9657 (= res!28124 (or (is-Nil!1307 l!1333) (is-Nil!1307 (t!4346 l!1333))))))

(assert (=> d!9657 (= (isStrictlySorted!254 l!1333) e!31128)))

(declare-fun b!48488 () Bool)

(declare-fun e!31129 () Bool)

(assert (=> b!48488 (= e!31128 e!31129)))

(declare-fun res!28125 () Bool)

(assert (=> b!48488 (=> (not res!28125) (not e!31129))))

(assert (=> b!48488 (= res!28125 (bvslt (_1!897 (h!1886 l!1333)) (_1!897 (h!1886 (t!4346 l!1333)))))))

(declare-fun b!48489 () Bool)

(assert (=> b!48489 (= e!31129 (isStrictlySorted!254 (t!4346 l!1333)))))

(assert (= (and d!9657 (not res!28124)) b!48488))

(assert (= (and b!48488 res!28125) b!48489))

(assert (=> b!48489 m!42331))

(assert (=> start!7592 d!9657))

(declare-fun b!48504 () Bool)

(declare-fun e!31140 () Bool)

(declare-fun tp!6394 () Bool)

(assert (=> b!48504 (= e!31140 (and tp_is_empty!2099 tp!6394))))

(assert (=> b!48453 (= tp!6389 e!31140)))

(assert (= (and b!48453 (is-Cons!1306 (t!4346 l!1333))) b!48504))

