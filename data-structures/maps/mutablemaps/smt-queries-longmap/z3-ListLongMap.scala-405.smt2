; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!7590 () Bool)

(assert start!7590)

(declare-fun b!48440 () Bool)

(declare-fun e!31086 () Bool)

(declare-datatypes ((B!946 0))(
  ( (B!947 (val!1093 Int)) )
))
(declare-datatypes ((tuple2!1772 0))(
  ( (tuple2!1773 (_1!896 (_ BitVec 64)) (_2!896 B!946)) )
))
(declare-datatypes ((List!1309 0))(
  ( (Nil!1306) (Cons!1305 (h!1885 tuple2!1772) (t!4345 List!1309)) )
))
(declare-fun l!1333 () List!1309)

(declare-fun isStrictlySorted!253 (List!1309) Bool)

(assert (=> b!48440 (= e!31086 (not (isStrictlySorted!253 (t!4345 l!1333))))))

(declare-fun b!48438 () Bool)

(declare-fun res!28079 () Bool)

(assert (=> b!48438 (=> (not res!28079) (not e!31086))))

(declare-fun newKey!147 () (_ BitVec 64))

(declare-fun containsKey!105 (List!1309 (_ BitVec 64)) Bool)

(assert (=> b!48438 (= res!28079 (not (containsKey!105 l!1333 newKey!147)))))

(declare-fun b!48441 () Bool)

(declare-fun e!31087 () Bool)

(declare-fun tp_is_empty!2097 () Bool)

(declare-fun tp!6386 () Bool)

(assert (=> b!48441 (= e!31087 (and tp_is_empty!2097 tp!6386))))

(declare-fun b!48439 () Bool)

(declare-fun res!28078 () Bool)

(assert (=> b!48439 (=> (not res!28078) (not e!31086))))

(get-info :version)

(assert (=> b!48439 (= res!28078 (not ((_ is Nil!1306) l!1333)))))

(declare-fun res!28080 () Bool)

(assert (=> start!7590 (=> (not res!28080) (not e!31086))))

(assert (=> start!7590 (= res!28080 (isStrictlySorted!253 l!1333))))

(assert (=> start!7590 e!31086))

(assert (=> start!7590 e!31087))

(assert (=> start!7590 true))

(assert (= (and start!7590 res!28080) b!48438))

(assert (= (and b!48438 res!28079) b!48439))

(assert (= (and b!48439 res!28078) b!48440))

(assert (= (and start!7590 ((_ is Cons!1305) l!1333)) b!48441))

(declare-fun m!42321 () Bool)

(assert (=> b!48440 m!42321))

(declare-fun m!42323 () Bool)

(assert (=> b!48438 m!42323))

(declare-fun m!42325 () Bool)

(assert (=> start!7590 m!42325))

(check-sat (not b!48438) (not b!48441) (not b!48440) (not start!7590) tp_is_empty!2097)
(check-sat)
(get-model)

(declare-fun d!9647 () Bool)

(declare-fun res!28108 () Bool)

(declare-fun e!31112 () Bool)

(assert (=> d!9647 (=> res!28108 e!31112)))

(assert (=> d!9647 (= res!28108 (or ((_ is Nil!1306) (t!4345 l!1333)) ((_ is Nil!1306) (t!4345 (t!4345 l!1333)))))))

(assert (=> d!9647 (= (isStrictlySorted!253 (t!4345 l!1333)) e!31112)))

(declare-fun b!48472 () Bool)

(declare-fun e!31113 () Bool)

(assert (=> b!48472 (= e!31112 e!31113)))

(declare-fun res!28109 () Bool)

(assert (=> b!48472 (=> (not res!28109) (not e!31113))))

(assert (=> b!48472 (= res!28109 (bvslt (_1!896 (h!1885 (t!4345 l!1333))) (_1!896 (h!1885 (t!4345 (t!4345 l!1333))))))))

(declare-fun b!48473 () Bool)

(assert (=> b!48473 (= e!31113 (isStrictlySorted!253 (t!4345 (t!4345 l!1333))))))

(assert (= (and d!9647 (not res!28108)) b!48472))

(assert (= (and b!48472 res!28109) b!48473))

(declare-fun m!42337 () Bool)

(assert (=> b!48473 m!42337))

(assert (=> b!48440 d!9647))

(declare-fun d!9655 () Bool)

(declare-fun res!28128 () Bool)

(declare-fun e!31132 () Bool)

(assert (=> d!9655 (=> res!28128 e!31132)))

(assert (=> d!9655 (= res!28128 (and ((_ is Cons!1305) l!1333) (= (_1!896 (h!1885 l!1333)) newKey!147)))))

(assert (=> d!9655 (= (containsKey!105 l!1333 newKey!147) e!31132)))

(declare-fun b!48494 () Bool)

(declare-fun e!31135 () Bool)

(assert (=> b!48494 (= e!31132 e!31135)))

(declare-fun res!28129 () Bool)

(assert (=> b!48494 (=> (not res!28129) (not e!31135))))

(assert (=> b!48494 (= res!28129 (and (or (not ((_ is Cons!1305) l!1333)) (bvsle (_1!896 (h!1885 l!1333)) newKey!147)) ((_ is Cons!1305) l!1333) (bvslt (_1!896 (h!1885 l!1333)) newKey!147)))))

(declare-fun b!48495 () Bool)

(assert (=> b!48495 (= e!31135 (containsKey!105 (t!4345 l!1333) newKey!147))))

(assert (= (and d!9655 (not res!28128)) b!48494))

(assert (= (and b!48494 res!28129) b!48495))

(declare-fun m!42343 () Bool)

(assert (=> b!48495 m!42343))

(assert (=> b!48438 d!9655))

(declare-fun d!9659 () Bool)

(declare-fun res!28130 () Bool)

(declare-fun e!31138 () Bool)

(assert (=> d!9659 (=> res!28130 e!31138)))

(assert (=> d!9659 (= res!28130 (or ((_ is Nil!1306) l!1333) ((_ is Nil!1306) (t!4345 l!1333))))))

(assert (=> d!9659 (= (isStrictlySorted!253 l!1333) e!31138)))

(declare-fun b!48502 () Bool)

(declare-fun e!31139 () Bool)

(assert (=> b!48502 (= e!31138 e!31139)))

(declare-fun res!28131 () Bool)

(assert (=> b!48502 (=> (not res!28131) (not e!31139))))

(assert (=> b!48502 (= res!28131 (bvslt (_1!896 (h!1885 l!1333)) (_1!896 (h!1885 (t!4345 l!1333)))))))

(declare-fun b!48503 () Bool)

(assert (=> b!48503 (= e!31139 (isStrictlySorted!253 (t!4345 l!1333)))))

(assert (= (and d!9659 (not res!28130)) b!48502))

(assert (= (and b!48502 res!28131) b!48503))

(assert (=> b!48503 m!42321))

(assert (=> start!7590 d!9659))

(declare-fun b!48510 () Bool)

(declare-fun e!31144 () Bool)

(declare-fun tp!6398 () Bool)

(assert (=> b!48510 (= e!31144 (and tp_is_empty!2097 tp!6398))))

(assert (=> b!48441 (= tp!6386 e!31144)))

(assert (= (and b!48441 ((_ is Cons!1305) (t!4345 l!1333))) b!48510))

(check-sat (not b!48495) (not b!48510) (not b!48473) tp_is_empty!2097 (not b!48503))
