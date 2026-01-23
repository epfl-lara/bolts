; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!396308 () Bool)

(assert start!396308)

(declare-fun res!1703863 () Bool)

(declare-fun e!2581581 () Bool)

(assert (=> start!396308 (=> (not res!1703863) (not e!2581581))))

(declare-datatypes ((B!2715 0))(
  ( (B!2716 (val!14649 Int)) )
))
(declare-datatypes ((List!45526 0))(
  ( (Nil!45402) (Cons!45402 (h!50822 B!2715) (t!343557 List!45526)) )
))
(declare-fun l!3061 () List!45526)

(declare-fun e!9245 () B!2715)

(declare-fun contains!9260 (List!45526 B!2715) Bool)

(assert (=> start!396308 (= res!1703863 (contains!9260 l!3061 e!9245))))

(assert (=> start!396308 e!2581581))

(declare-fun e!2581582 () Bool)

(assert (=> start!396308 e!2581582))

(declare-fun tp_is_empty!21763 () Bool)

(assert (=> start!396308 tp_is_empty!21763))

(declare-fun b!4159667 () Bool)

(assert (=> b!4159667 (= e!2581581 (= l!3061 Nil!45402))))

(declare-fun b!4159668 () Bool)

(declare-fun tp!1269065 () Bool)

(assert (=> b!4159668 (= e!2581582 (and tp_is_empty!21763 tp!1269065))))

(assert (= (and start!396308 res!1703863) b!4159667))

(assert (= (and start!396308 (is-Cons!45402 l!3061)) b!4159668))

(declare-fun m!4753305 () Bool)

(assert (=> start!396308 m!4753305))

(push 1)

(assert (not start!396308))

(assert (not b!4159668))

(assert tp_is_empty!21763)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1229902 () Bool)

(declare-fun lt!1482741 () Bool)

(declare-fun content!7045 (List!45526) (Set B!2715))

(assert (=> d!1229902 (= lt!1482741 (set.member e!9245 (content!7045 l!3061)))))

(declare-fun e!2581593 () Bool)

(assert (=> d!1229902 (= lt!1482741 e!2581593)))

(declare-fun res!1703871 () Bool)

(assert (=> d!1229902 (=> (not res!1703871) (not e!2581593))))

(assert (=> d!1229902 (= res!1703871 (is-Cons!45402 l!3061))))

(assert (=> d!1229902 (= (contains!9260 l!3061 e!9245) lt!1482741)))

(declare-fun b!4159679 () Bool)

(declare-fun e!2581594 () Bool)

(assert (=> b!4159679 (= e!2581593 e!2581594)))

(declare-fun res!1703872 () Bool)

(assert (=> b!4159679 (=> res!1703872 e!2581594)))

(assert (=> b!4159679 (= res!1703872 (= (h!50822 l!3061) e!9245))))

(declare-fun b!4159680 () Bool)

(assert (=> b!4159680 (= e!2581594 (contains!9260 (t!343557 l!3061) e!9245))))

(assert (= (and d!1229902 res!1703871) b!4159679))

(assert (= (and b!4159679 (not res!1703872)) b!4159680))

(declare-fun m!4753309 () Bool)

(assert (=> d!1229902 m!4753309))

(declare-fun m!4753311 () Bool)

(assert (=> d!1229902 m!4753311))

(declare-fun m!4753313 () Bool)

(assert (=> b!4159680 m!4753313))

(assert (=> start!396308 d!1229902))

(declare-fun b!4159689 () Bool)

(declare-fun e!2581601 () Bool)

(declare-fun tp!1269071 () Bool)

(assert (=> b!4159689 (= e!2581601 (and tp_is_empty!21763 tp!1269071))))

(assert (=> b!4159668 (= tp!1269065 e!2581601)))

(assert (= (and b!4159668 (is-Cons!45402 (t!343557 l!3061))) b!4159689))

(push 1)

(assert (not b!4159680))

(assert (not d!1229902))

(assert (not b!4159689))

(assert tp_is_empty!21763)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

