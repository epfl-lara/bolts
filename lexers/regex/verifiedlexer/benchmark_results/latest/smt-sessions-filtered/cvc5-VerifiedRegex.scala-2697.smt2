; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!145226 () Bool)

(assert start!145226)

(declare-fun b!1563314 () Bool)

(declare-fun res!696776 () Bool)

(declare-fun e!1003956 () Bool)

(assert (=> b!1563314 (=> (not res!696776) (not e!1003956))))

(declare-datatypes ((B!1403 0))(
  ( (B!1404 (val!4965 Int)) )
))
(declare-datatypes ((List!17032 0))(
  ( (Nil!16962) (Cons!16962 (h!22363 B!1403) (t!141611 List!17032)) )
))
(declare-fun l!3627 () List!17032)

(assert (=> b!1563314 (= res!696776 (is-Cons!16962 l!3627))))

(declare-fun res!696774 () Bool)

(assert (=> start!145226 (=> (not res!696774) (not e!1003956))))

(declare-fun noDuplicate!225 (List!17032) Bool)

(assert (=> start!145226 (= res!696774 (noDuplicate!225 l!3627))))

(assert (=> start!145226 e!1003956))

(declare-fun e!1003955 () Bool)

(assert (=> start!145226 e!1003955))

(declare-fun tp_is_empty!7099 () Bool)

(assert (=> start!145226 tp_is_empty!7099))

(declare-fun b!1563315 () Bool)

(declare-fun res!696775 () Bool)

(assert (=> b!1563315 (=> (not res!696775) (not e!1003956))))

(declare-fun elmt!170 () B!1403)

(declare-fun contains!2983 (List!17032 B!1403) Bool)

(assert (=> b!1563315 (= res!696775 (not (contains!2983 l!3627 elmt!170)))))

(declare-fun b!1563316 () Bool)

(declare-fun res!696777 () Bool)

(assert (=> b!1563316 (=> (not res!696777) (not e!1003956))))

(assert (=> b!1563316 (= res!696777 (noDuplicate!225 (t!141611 l!3627)))))

(declare-fun b!1563317 () Bool)

(assert (=> b!1563317 (= e!1003956 false)))

(declare-fun lt!541359 () Bool)

(assert (=> b!1563317 (= lt!541359 (contains!2983 (t!141611 l!3627) elmt!170))))

(declare-fun b!1563318 () Bool)

(declare-fun tp!460543 () Bool)

(assert (=> b!1563318 (= e!1003955 (and tp_is_empty!7099 tp!460543))))

(assert (= (and start!145226 res!696774) b!1563315))

(assert (= (and b!1563315 res!696775) b!1563314))

(assert (= (and b!1563314 res!696776) b!1563316))

(assert (= (and b!1563316 res!696777) b!1563317))

(assert (= (and start!145226 (is-Cons!16962 l!3627)) b!1563318))

(declare-fun m!1834731 () Bool)

(assert (=> start!145226 m!1834731))

(declare-fun m!1834733 () Bool)

(assert (=> b!1563315 m!1834733))

(declare-fun m!1834735 () Bool)

(assert (=> b!1563316 m!1834735))

(declare-fun m!1834737 () Bool)

(assert (=> b!1563317 m!1834737))

(push 1)

(assert (not start!145226))

(assert (not b!1563316))

(assert (not b!1563318))

(assert (not b!1563315))

(assert (not b!1563317))

(assert tp_is_empty!7099)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

