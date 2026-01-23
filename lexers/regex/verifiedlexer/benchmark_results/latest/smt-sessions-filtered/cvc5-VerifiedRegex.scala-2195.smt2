; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!108076 () Bool)

(assert start!108076)

(declare-fun res!544840 () Bool)

(declare-fun e!777125 () Bool)

(assert (=> start!108076 (=> (not res!544840) (not e!777125))))

(declare-datatypes ((B!1391 0))(
  ( (B!1392 (val!4053 Int)) )
))
(declare-datatypes ((List!12300 0))(
  ( (Nil!12242) (Cons!12242 (h!17643 B!1391) (t!112684 List!12300)) )
))
(declare-fun l!3821 () List!12300)

(declare-fun e!9491 () B!1391)

(declare-fun contains!2059 (List!12300 B!1391) Bool)

(assert (=> start!108076 (= res!544840 (contains!2059 l!3821 e!9491))))

(assert (=> start!108076 e!777125))

(declare-fun e!777126 () Bool)

(assert (=> start!108076 e!777126))

(declare-fun tp_is_empty!6249 () Bool)

(assert (=> start!108076 tp_is_empty!6249))

(declare-fun b!1211330 () Bool)

(assert (=> b!1211330 (= e!777125 (and (or (not (is-Cons!12242 l!3821)) (not (= (h!17643 l!3821) e!9491))) (not (is-Cons!12242 l!3821))))))

(declare-fun b!1211331 () Bool)

(declare-fun tp!342996 () Bool)

(assert (=> b!1211331 (= e!777126 (and tp_is_empty!6249 tp!342996))))

(assert (= (and start!108076 res!544840) b!1211330))

(assert (= (and start!108076 (is-Cons!12242 l!3821)) b!1211331))

(declare-fun m!1387023 () Bool)

(assert (=> start!108076 m!1387023))

(push 1)

(assert (not start!108076))

(assert (not b!1211331))

(assert tp_is_empty!6249)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!346534 () Bool)

(declare-fun lt!414588 () Bool)

(declare-fun content!1755 (List!12300) (Set B!1391))

(assert (=> d!346534 (= lt!414588 (set.member e!9491 (content!1755 l!3821)))))

(declare-fun e!777138 () Bool)

(assert (=> d!346534 (= lt!414588 e!777138)))

(declare-fun res!544849 () Bool)

(assert (=> d!346534 (=> (not res!544849) (not e!777138))))

(assert (=> d!346534 (= res!544849 (is-Cons!12242 l!3821))))

(assert (=> d!346534 (= (contains!2059 l!3821 e!9491) lt!414588)))

(declare-fun b!1211342 () Bool)

(declare-fun e!777137 () Bool)

(assert (=> b!1211342 (= e!777138 e!777137)))

(declare-fun res!544848 () Bool)

(assert (=> b!1211342 (=> res!544848 e!777137)))

(assert (=> b!1211342 (= res!544848 (= (h!17643 l!3821) e!9491))))

(declare-fun b!1211343 () Bool)

(assert (=> b!1211343 (= e!777137 (contains!2059 (t!112684 l!3821) e!9491))))

(assert (= (and d!346534 res!544849) b!1211342))

(assert (= (and b!1211342 (not res!544848)) b!1211343))

(declare-fun m!1387027 () Bool)

(assert (=> d!346534 m!1387027))

(declare-fun m!1387029 () Bool)

(assert (=> d!346534 m!1387029))

(declare-fun m!1387031 () Bool)

(assert (=> b!1211343 m!1387031))

(assert (=> start!108076 d!346534))

(declare-fun b!1211348 () Bool)

(declare-fun e!777141 () Bool)

(declare-fun tp!343002 () Bool)

(assert (=> b!1211348 (= e!777141 (and tp_is_empty!6249 tp!343002))))

(assert (=> b!1211331 (= tp!342996 e!777141)))

(assert (= (and b!1211331 (is-Cons!12242 (t!112684 l!3821))) b!1211348))

(push 1)

(assert (not b!1211343))

(assert (not d!346534))

(assert (not b!1211348))

(assert tp_is_empty!6249)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

