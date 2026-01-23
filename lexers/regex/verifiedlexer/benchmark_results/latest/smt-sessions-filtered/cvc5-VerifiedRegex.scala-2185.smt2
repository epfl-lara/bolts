; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!107952 () Bool)

(assert start!107952)

(declare-fun res!544518 () Bool)

(declare-fun e!776638 () Bool)

(assert (=> start!107952 (=> (not res!544518) (not e!776638))))

(declare-datatypes ((B!1351 0))(
  ( (B!1352 (val!4033 Int)) )
))
(declare-datatypes ((List!12280 0))(
  ( (Nil!12222) (Cons!12222 (h!17623 B!1351) (t!112664 List!12280)) )
))
(declare-fun l!3821 () List!12280)

(declare-fun e!9491 () B!1351)

(declare-fun contains!2039 (List!12280 B!1351) Bool)

(assert (=> start!107952 (= res!544518 (contains!2039 l!3821 e!9491))))

(assert (=> start!107952 e!776638))

(declare-fun e!776637 () Bool)

(assert (=> start!107952 e!776637))

(declare-fun tp_is_empty!6209 () Bool)

(assert (=> start!107952 tp_is_empty!6209))

(declare-fun b!1210598 () Bool)

(declare-fun res!544517 () Bool)

(assert (=> b!1210598 (=> (not res!544517) (not e!776638))))

(assert (=> b!1210598 (= res!544517 (and (is-Cons!12222 l!3821) (= (h!17623 l!3821) e!9491)))))

(declare-fun b!1210601 () Bool)

(declare-fun tp!342888 () Bool)

(assert (=> b!1210601 (= e!776637 (and tp_is_empty!6209 tp!342888))))

(declare-fun b!1210600 () Bool)

(assert (=> b!1210600 (= e!776638 false)))

(declare-fun lt!414380 () Bool)

(assert (=> b!1210600 (= lt!414380 (contains!2039 (t!112664 l!3821) e!9491))))

(declare-fun b!1210599 () Bool)

(declare-fun res!544516 () Bool)

(assert (=> b!1210599 (=> (not res!544516) (not e!776638))))

(declare-fun -!87 (List!12280 B!1351) List!12280)

(assert (=> b!1210599 (= res!544516 (= (-!87 l!3821 e!9491) (-!87 (t!112664 l!3821) e!9491)))))

(assert (= (and start!107952 res!544518) b!1210598))

(assert (= (and b!1210598 res!544517) b!1210599))

(assert (= (and b!1210599 res!544516) b!1210600))

(assert (= (and start!107952 (is-Cons!12222 l!3821)) b!1210601))

(declare-fun m!1386495 () Bool)

(assert (=> start!107952 m!1386495))

(declare-fun m!1386497 () Bool)

(assert (=> b!1210600 m!1386497))

(declare-fun m!1386499 () Bool)

(assert (=> b!1210599 m!1386499))

(declare-fun m!1386501 () Bool)

(assert (=> b!1210599 m!1386501))

(push 1)

(assert tp_is_empty!6209)

(assert (not b!1210601))

(assert (not b!1210600))

(assert (not b!1210599))

(assert (not start!107952))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

