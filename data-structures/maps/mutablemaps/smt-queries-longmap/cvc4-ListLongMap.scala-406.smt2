; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!7610 () Bool)

(assert start!7610)

(declare-fun b!48551 () Bool)

(declare-fun res!28165 () Bool)

(declare-fun e!31161 () Bool)

(assert (=> b!48551 (=> (not res!28165) (not e!31161))))

(declare-datatypes ((B!954 0))(
  ( (B!955 (val!1097 Int)) )
))
(declare-datatypes ((tuple2!1780 0))(
  ( (tuple2!1781 (_1!900 (_ BitVec 64)) (_2!900 B!954)) )
))
(declare-datatypes ((List!1313 0))(
  ( (Nil!1310) (Cons!1309 (h!1889 tuple2!1780) (t!4349 List!1313)) )
))
(declare-fun l!1333 () List!1313)

(assert (=> b!48551 (= res!28165 (not (is-Nil!1310 l!1333)))))

(declare-fun b!48552 () Bool)

(declare-fun res!28166 () Bool)

(assert (=> b!48552 (=> (not res!28166) (not e!31161))))

(declare-fun isStrictlySorted!257 (List!1313) Bool)

(assert (=> b!48552 (= res!28166 (isStrictlySorted!257 (t!4349 l!1333)))))

(declare-fun b!48553 () Bool)

(declare-fun newKey!147 () (_ BitVec 64))

(declare-fun containsKey!109 (List!1313 (_ BitVec 64)) Bool)

(assert (=> b!48553 (= e!31161 (containsKey!109 (t!4349 l!1333) newKey!147))))

(declare-fun b!48554 () Bool)

(declare-fun e!31162 () Bool)

(declare-fun tp_is_empty!2105 () Bool)

(declare-fun tp!6407 () Bool)

(assert (=> b!48554 (= e!31162 (and tp_is_empty!2105 tp!6407))))

(declare-fun b!48555 () Bool)

(declare-fun res!28164 () Bool)

(assert (=> b!48555 (=> (not res!28164) (not e!31161))))

(assert (=> b!48555 (= res!28164 (not (containsKey!109 l!1333 newKey!147)))))

(declare-fun res!28167 () Bool)

(assert (=> start!7610 (=> (not res!28167) (not e!31161))))

(assert (=> start!7610 (= res!28167 (isStrictlySorted!257 l!1333))))

(assert (=> start!7610 e!31161))

(assert (=> start!7610 e!31162))

(assert (=> start!7610 true))

(assert (= (and start!7610 res!28167) b!48555))

(assert (= (and b!48555 res!28164) b!48551))

(assert (= (and b!48551 res!28165) b!48552))

(assert (= (and b!48552 res!28166) b!48553))

(assert (= (and start!7610 (is-Cons!1309 l!1333)) b!48554))

(declare-fun m!42361 () Bool)

(assert (=> b!48552 m!42361))

(declare-fun m!42363 () Bool)

(assert (=> b!48553 m!42363))

(declare-fun m!42365 () Bool)

(assert (=> b!48555 m!42365))

(declare-fun m!42367 () Bool)

(assert (=> start!7610 m!42367))

(push 1)

(assert (not b!48554))

(assert (not start!7610))

(assert tp_is_empty!2105)

(assert (not b!48552))

(assert (not b!48553))

(assert (not b!48555))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!9667 () Bool)

(declare-fun res!28186 () Bool)

(declare-fun e!31181 () Bool)

(assert (=> d!9667 (=> res!28186 e!31181)))

(assert (=> d!9667 (= res!28186 (and (is-Cons!1309 (t!4349 l!1333)) (= (_1!900 (h!1889 (t!4349 l!1333))) newKey!147)))))

(assert (=> d!9667 (= (containsKey!109 (t!4349 l!1333) newKey!147) e!31181)))

(declare-fun b!48574 () Bool)

(declare-fun e!31182 () Bool)

(assert (=> b!48574 (= e!31181 e!31182)))

(declare-fun res!28187 () Bool)

(assert (=> b!48574 (=> (not res!28187) (not e!31182))))

(assert (=> b!48574 (= res!28187 (and (or (not (is-Cons!1309 (t!4349 l!1333))) (bvsle (_1!900 (h!1889 (t!4349 l!1333))) newKey!147)) (is-Cons!1309 (t!4349 l!1333)) (bvslt (_1!900 (h!1889 (t!4349 l!1333))) newKey!147)))))

(declare-fun b!48575 () Bool)

(assert (=> b!48575 (= e!31182 (containsKey!109 (t!4349 (t!4349 l!1333)) newKey!147))))

(assert (= (and d!9667 (not res!28186)) b!48574))

(assert (= (and b!48574 res!28187) b!48575))

(declare-fun m!42371 () Bool)

(assert (=> b!48575 m!42371))

(assert (=> b!48553 d!9667))

(declare-fun d!9675 () Bool)

(declare-fun res!28206 () Bool)

(declare-fun e!31201 () Bool)

(assert (=> d!9675 (=> res!28206 e!31201)))

(assert (=> d!9675 (= res!28206 (or (is-Nil!1310 (t!4349 l!1333)) (is-Nil!1310 (t!4349 (t!4349 l!1333)))))))

(assert (=> d!9675 (= (isStrictlySorted!257 (t!4349 l!1333)) e!31201)))

(declare-fun b!48594 () Bool)

(declare-fun e!31202 () Bool)

(assert (=> b!48594 (= e!31201 e!31202)))

(declare-fun res!28207 () Bool)

(assert (=> b!48594 (=> (not res!28207) (not e!31202))))

(assert (=> b!48594 (= res!28207 (bvslt (_1!900 (h!1889 (t!4349 l!1333))) (_1!900 (h!1889 (t!4349 (t!4349 l!1333))))))))

(declare-fun b!48595 () Bool)

(assert (=> b!48595 (= e!31202 (isStrictlySorted!257 (t!4349 (t!4349 l!1333))))))

(assert (= (and d!9675 (not res!28206)) b!48594))

(assert (= (and b!48594 res!28207) b!48595))

(declare-fun m!42375 () Bool)

(assert (=> b!48595 m!42375))

(assert (=> b!48552 d!9675))

(declare-fun d!9683 () Bool)

(declare-fun res!28212 () Bool)

(declare-fun e!31207 () Bool)

(assert (=> d!9683 (=> res!28212 e!31207)))

(assert (=> d!9683 (= res!28212 (or (is-Nil!1310 l!1333) (is-Nil!1310 (t!4349 l!1333))))))

(assert (=> d!9683 (= (isStrictlySorted!257 l!1333) e!31207)))

(declare-fun b!48600 () Bool)

(declare-fun e!31208 () Bool)

(assert (=> b!48600 (= e!31207 e!31208)))

(declare-fun res!28213 () Bool)

(assert (=> b!48600 (=> (not res!28213) (not e!31208))))

(assert (=> b!48600 (= res!28213 (bvslt (_1!900 (h!1889 l!1333)) (_1!900 (h!1889 (t!4349 l!1333)))))))

(declare-fun b!48601 () Bool)

(assert (=> b!48601 (= e!31208 (isStrictlySorted!257 (t!4349 l!1333)))))

(assert (= (and d!9683 (not res!28212)) b!48600))

(assert (= (and b!48600 res!28213) b!48601))

(assert (=> b!48601 m!42361))

(assert (=> start!7610 d!9683))

(declare-fun d!9685 () Bool)

(declare-fun res!28214 () Bool)

(declare-fun e!31213 () Bool)

(assert (=> d!9685 (=> res!28214 e!31213)))

(assert (=> d!9685 (= res!28214 (and (is-Cons!1309 l!1333) (= (_1!900 (h!1889 l!1333)) newKey!147)))))

(assert (=> d!9685 (= (containsKey!109 l!1333 newKey!147) e!31213)))

(declare-fun b!48610 () Bool)

(declare-fun e!31214 () Bool)

(assert (=> b!48610 (= e!31213 e!31214)))

(declare-fun res!28215 () Bool)

(assert (=> b!48610 (=> (not res!28215) (not e!31214))))

(assert (=> b!48610 (= res!28215 (and (or (not (is-Cons!1309 l!1333)) (bvsle (_1!900 (h!1889 l!1333)) newKey!147)) (is-Cons!1309 l!1333) (bvslt (_1!900 (h!1889 l!1333)) newKey!147)))))

(declare-fun b!48611 () Bool)

(assert (=> b!48611 (= e!31214 (containsKey!109 (t!4349 l!1333) newKey!147))))

(assert (= (and d!9685 (not res!28214)) b!48610))

(assert (= (and b!48610 res!28215) b!48611))

(assert (=> b!48611 m!42363))

(assert (=> b!48555 d!9685))

(declare-fun b!48618 () Bool)

(declare-fun e!31219 () Bool)

(declare-fun tp!6416 () Bool)

(assert (=> b!48618 (= e!31219 (and tp_is_empty!2105 tp!6416))))

(assert (=> b!48554 (= tp!6407 e!31219)))

(assert (= (and b!48554 (is-Cons!1309 (t!4349 l!1333))) b!48618))

(push 1)

(assert (not b!48601))

(assert (not b!48575))

(assert (not b!48611))

(assert tp_is_empty!2105)

(assert (not b!48595))

(assert (not b!48618))

(check-sat)

(pop 1)

(push 1)

(check-sat)

