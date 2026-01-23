; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!384294 () Bool)

(assert start!384294)

(declare-fun lt!1457562 () Bool)

(declare-datatypes ((B!2619 0))(
  ( (B!2620 (val!14095 Int)) )
))
(declare-datatypes ((List!43618 0))(
  ( (Nil!43494) (Cons!43494 (h!48914 B!2619) (t!337065 List!43618)) )
))
(declare-fun p!1991 () List!43618)

(declare-fun l!3332 () List!43618)

(declare-fun isPrefix!4090 (List!43618 List!43618) Bool)

(assert (=> start!384294 (= lt!1457562 (isPrefix!4090 p!1991 l!3332))))

(assert (=> start!384294 false))

(declare-fun e!2526987 () Bool)

(assert (=> start!384294 e!2526987))

(declare-fun e!2526988 () Bool)

(assert (=> start!384294 e!2526988))

(declare-fun b!4071703 () Bool)

(declare-fun tp_is_empty!20787 () Bool)

(declare-fun tp!1232033 () Bool)

(assert (=> b!4071703 (= e!2526987 (and tp_is_empty!20787 tp!1232033))))

(declare-fun b!4071704 () Bool)

(declare-fun tp!1232034 () Bool)

(assert (=> b!4071704 (= e!2526988 (and tp_is_empty!20787 tp!1232034))))

(assert (= (and start!384294 (is-Cons!43494 p!1991)) b!4071703))

(assert (= (and start!384294 (is-Cons!43494 l!3332)) b!4071704))

(declare-fun m!4681021 () Bool)

(assert (=> start!384294 m!4681021))

(push 1)

(assert (not start!384294))

(assert (not b!4071703))

(assert (not b!4071704))

(assert tp_is_empty!20787)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

