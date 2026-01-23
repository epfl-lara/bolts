; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!107956 () Bool)

(assert start!107956)

(declare-fun res!544532 () Bool)

(declare-fun e!776649 () Bool)

(assert (=> start!107956 (=> (not res!544532) (not e!776649))))

(declare-datatypes ((B!1355 0))(
  ( (B!1356 (val!4035 Int)) )
))
(declare-datatypes ((List!12282 0))(
  ( (Nil!12224) (Cons!12224 (h!17625 B!1355) (t!112666 List!12282)) )
))
(declare-fun l!3821 () List!12282)

(declare-fun e!9491 () B!1355)

(declare-fun contains!2041 (List!12282 B!1355) Bool)

(assert (=> start!107956 (= res!544532 (contains!2041 l!3821 e!9491))))

(assert (=> start!107956 e!776649))

(declare-fun e!776650 () Bool)

(assert (=> start!107956 e!776650))

(declare-fun tp_is_empty!6213 () Bool)

(assert (=> start!107956 tp_is_empty!6213))

(declare-fun b!1210620 () Bool)

(declare-fun res!544533 () Bool)

(assert (=> b!1210620 (=> (not res!544533) (not e!776649))))

(assert (=> b!1210620 (= res!544533 (and (or (not (is-Cons!12224 l!3821)) (not (= (h!17625 l!3821) e!9491))) (is-Cons!12224 l!3821)))))

(declare-fun b!1210621 () Bool)

(assert (=> b!1210621 (= e!776649 false)))

(declare-fun lt!414386 () Bool)

(assert (=> b!1210621 (= lt!414386 (contains!2041 (t!112666 l!3821) e!9491))))

(declare-fun b!1210622 () Bool)

(declare-fun tp!342894 () Bool)

(assert (=> b!1210622 (= e!776650 (and tp_is_empty!6213 tp!342894))))

(assert (= (and start!107956 res!544532) b!1210620))

(assert (= (and b!1210620 res!544533) b!1210621))

(assert (= (and start!107956 (is-Cons!12224 l!3821)) b!1210622))

(declare-fun m!1386511 () Bool)

(assert (=> start!107956 m!1386511))

(declare-fun m!1386513 () Bool)

(assert (=> b!1210621 m!1386513))

(push 1)

(assert (not b!1210621))

(assert (not start!107956))

(assert (not b!1210622))

(assert tp_is_empty!6213)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

