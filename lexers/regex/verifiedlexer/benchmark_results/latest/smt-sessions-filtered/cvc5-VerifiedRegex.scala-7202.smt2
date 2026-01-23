; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!384194 () Bool)

(assert start!384194)

(declare-fun b!4071062 () Bool)

(declare-fun e!2526549 () Bool)

(declare-fun tp_is_empty!20763 () Bool)

(declare-fun tp!1231895 () Bool)

(assert (=> b!4071062 (= e!2526549 (and tp_is_empty!20763 tp!1231895))))

(declare-fun b!4071060 () Bool)

(declare-fun e!2526551 () Bool)

(assert (=> b!4071060 (= e!2526551 false)))

(declare-fun lt!1457418 () Bool)

(declare-datatypes ((B!2595 0))(
  ( (B!2596 (val!14083 Int)) )
))
(declare-datatypes ((List!43606 0))(
  ( (Nil!43482) (Cons!43482 (h!48902 B!2595) (t!337053 List!43606)) )
))
(declare-fun p!1991 () List!43606)

(declare-fun l!3332 () List!43606)

(declare-fun isPrefix!4078 (List!43606 List!43606) Bool)

(declare-fun tail!6324 (List!43606) List!43606)

(assert (=> b!4071060 (= lt!1457418 (isPrefix!4078 (t!337053 p!1991) (tail!6324 l!3332)))))

(declare-fun b!4071059 () Bool)

(declare-fun res!1662349 () Bool)

(assert (=> b!4071059 (=> (not res!1662349) (not e!2526551))))

(assert (=> b!4071059 (= res!1662349 (is-Cons!43482 p!1991))))

(declare-fun res!1662350 () Bool)

(assert (=> start!384194 (=> (not res!1662350) (not e!2526551))))

(assert (=> start!384194 (= res!1662350 (isPrefix!4078 p!1991 l!3332))))

(assert (=> start!384194 e!2526551))

(declare-fun e!2526550 () Bool)

(assert (=> start!384194 e!2526550))

(assert (=> start!384194 e!2526549))

(declare-fun b!4071061 () Bool)

(declare-fun tp!1231896 () Bool)

(assert (=> b!4071061 (= e!2526550 (and tp_is_empty!20763 tp!1231896))))

(assert (= (and start!384194 res!1662350) b!4071059))

(assert (= (and b!4071059 res!1662349) b!4071060))

(assert (= (and start!384194 (is-Cons!43482 p!1991)) b!4071061))

(assert (= (and start!384194 (is-Cons!43482 l!3332)) b!4071062))

(declare-fun m!4680349 () Bool)

(assert (=> b!4071060 m!4680349))

(assert (=> b!4071060 m!4680349))

(declare-fun m!4680351 () Bool)

(assert (=> b!4071060 m!4680351))

(declare-fun m!4680353 () Bool)

(assert (=> start!384194 m!4680353))

(push 1)

(assert (not b!4071061))

(assert (not start!384194))

(assert (not b!4071060))

(assert tp_is_empty!20763)

(assert (not b!4071062))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

