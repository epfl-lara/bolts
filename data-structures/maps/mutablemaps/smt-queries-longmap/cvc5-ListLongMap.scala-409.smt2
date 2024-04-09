; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!7636 () Bool)

(assert start!7636)

(declare-fun res!28248 () Bool)

(declare-fun e!31252 () Bool)

(assert (=> start!7636 (=> (not res!28248) (not e!31252))))

(declare-datatypes ((B!968 0))(
  ( (B!969 (val!1104 Int)) )
))
(declare-datatypes ((tuple2!1794 0))(
  ( (tuple2!1795 (_1!907 (_ BitVec 64)) (_2!907 B!968)) )
))
(declare-datatypes ((List!1320 0))(
  ( (Nil!1317) (Cons!1316 (h!1896 tuple2!1794) (t!4356 List!1320)) )
))
(declare-fun l!1333 () List!1320)

(declare-fun isStrictlySorted!261 (List!1320) Bool)

(assert (=> start!7636 (= res!28248 (isStrictlySorted!261 l!1333))))

(assert (=> start!7636 e!31252))

(declare-fun e!31251 () Bool)

(assert (=> start!7636 e!31251))

(assert (=> start!7636 true))

(declare-fun b!48670 () Bool)

(declare-fun res!28247 () Bool)

(assert (=> b!48670 (=> (not res!28247) (not e!31252))))

(declare-fun newKey!147 () (_ BitVec 64))

(declare-fun containsKey!113 (List!1320 (_ BitVec 64)) Bool)

(assert (=> b!48670 (= res!28247 (not (containsKey!113 l!1333 newKey!147)))))

(declare-fun b!48671 () Bool)

(declare-fun ListPrimitiveSize!49 (List!1320) Int)

(assert (=> b!48671 (= e!31252 (< (ListPrimitiveSize!49 l!1333) 0))))

(declare-fun b!48672 () Bool)

(declare-fun tp_is_empty!2119 () Bool)

(declare-fun tp!6437 () Bool)

(assert (=> b!48672 (= e!31251 (and tp_is_empty!2119 tp!6437))))

(assert (= (and start!7636 res!28248) b!48670))

(assert (= (and b!48670 res!28247) b!48671))

(assert (= (and start!7636 (is-Cons!1316 l!1333)) b!48672))

(declare-fun m!42399 () Bool)

(assert (=> start!7636 m!42399))

(declare-fun m!42401 () Bool)

(assert (=> b!48670 m!42401))

(declare-fun m!42403 () Bool)

(assert (=> b!48671 m!42403))

(push 1)

(assert tp_is_empty!2119)

(assert (not b!48671))

(assert (not b!48670))

(assert (not b!48672))

(assert (not start!7636))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!9695 () Bool)

(declare-fun res!28275 () Bool)

(declare-fun e!31279 () Bool)

(assert (=> d!9695 (=> res!28275 e!31279)))

(assert (=> d!9695 (= res!28275 (or (is-Nil!1317 l!1333) (is-Nil!1317 (t!4356 l!1333))))))

(assert (=> d!9695 (= (isStrictlySorted!261 l!1333) e!31279)))

(declare-fun b!48705 () Bool)

(declare-fun e!31280 () Bool)

(assert (=> b!48705 (= e!31279 e!31280)))

(declare-fun res!28276 () Bool)

(assert (=> b!48705 (=> (not res!28276) (not e!31280))))

(assert (=> b!48705 (= res!28276 (bvslt (_1!907 (h!1896 l!1333)) (_1!907 (h!1896 (t!4356 l!1333)))))))

(declare-fun b!48706 () Bool)

(assert (=> b!48706 (= e!31280 (isStrictlySorted!261 (t!4356 l!1333)))))

(assert (= (and d!9695 (not res!28275)) b!48705))

(assert (= (and b!48705 res!28276) b!48706))

(declare-fun m!42419 () Bool)

(assert (=> b!48706 m!42419))

(assert (=> start!7636 d!9695))

(declare-fun d!9701 () Bool)

(declare-fun lt!20693 () Int)

(assert (=> d!9701 (>= lt!20693 0)))

(declare-fun e!31290 () Int)

(assert (=> d!9701 (= lt!20693 e!31290)))

(declare-fun c!6545 () Bool)

(assert (=> d!9701 (= c!6545 (is-Nil!1317 l!1333))))

(assert (=> d!9701 (= (ListPrimitiveSize!49 l!1333) lt!20693)))

(declare-fun b!48723 () Bool)

(assert (=> b!48723 (= e!31290 0)))

(declare-fun b!48724 () Bool)

(assert (=> b!48724 (= e!31290 (+ 1 (ListPrimitiveSize!49 (t!4356 l!1333))))))

(assert (= (and d!9701 c!6545) b!48723))

(assert (= (and d!9701 (not c!6545)) b!48724))

(declare-fun m!42425 () Bool)

(assert (=> b!48724 m!42425))

(assert (=> b!48671 d!9701))

(declare-fun d!9707 () Bool)

(declare-fun res!28293 () Bool)

(declare-fun e!31306 () Bool)

(assert (=> d!9707 (=> res!28293 e!31306)))

(assert (=> d!9707 (= res!28293 (and (is-Cons!1316 l!1333) (= (_1!907 (h!1896 l!1333)) newKey!147)))))

(assert (=> d!9707 (= (containsKey!113 l!1333 newKey!147) e!31306)))

(declare-fun b!48743 () Bool)

(declare-fun e!31307 () Bool)

(assert (=> b!48743 (= e!31306 e!31307)))

(declare-fun res!28294 () Bool)

(assert (=> b!48743 (=> (not res!28294) (not e!31307))))

(assert (=> b!48743 (= res!28294 (and (or (not (is-Cons!1316 l!1333)) (bvsle (_1!907 (h!1896 l!1333)) newKey!147)) (is-Cons!1316 l!1333) (bvslt (_1!907 (h!1896 l!1333)) newKey!147)))))

(declare-fun b!48744 () Bool)

(assert (=> b!48744 (= e!31307 (containsKey!113 (t!4356 l!1333) newKey!147))))

(assert (= (and d!9707 (not res!28293)) b!48743))

(assert (= (and b!48743 res!28294) b!48744))

(declare-fun m!42431 () Bool)

(assert (=> b!48744 m!42431))

(assert (=> b!48670 d!9707))

(declare-fun b!48758 () Bool)

(declare-fun e!31317 () Bool)

(declare-fun tp!6451 () Bool)

(assert (=> b!48758 (= e!31317 (and tp_is_empty!2119 tp!6451))))

(assert (=> b!48672 (= tp!6437 e!31317)))

(assert (= (and b!48672 (is-Cons!1316 (t!4356 l!1333))) b!48758))

(push 1)

