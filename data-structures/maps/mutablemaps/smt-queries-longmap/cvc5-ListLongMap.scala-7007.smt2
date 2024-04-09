; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89044 () Bool)

(assert start!89044)

(declare-fun b!1020733 () Bool)

(declare-fun e!574658 () Bool)

(declare-datatypes ((B!1748 0))(
  ( (B!1749 (val!11958 Int)) )
))
(declare-datatypes ((tuple2!15552 0))(
  ( (tuple2!15553 (_1!7786 (_ BitVec 64)) (_2!7786 B!1748)) )
))
(declare-datatypes ((List!21760 0))(
  ( (Nil!21757) (Cons!21756 (h!22954 tuple2!15552) (t!30777 List!21760)) )
))
(declare-fun l!1367 () List!21760)

(declare-fun key!393 () (_ BitVec 64))

(declare-fun containsKey!557 (List!21760 (_ BitVec 64)) Bool)

(assert (=> b!1020733 (= e!574658 (not (containsKey!557 l!1367 key!393)))))

(declare-fun b!1020734 () Bool)

(declare-fun e!574659 () Bool)

(declare-fun tp_is_empty!23815 () Bool)

(declare-fun tp!71309 () Bool)

(assert (=> b!1020734 (= e!574659 (and tp_is_empty!23815 tp!71309))))

(declare-fun b!1020732 () Bool)

(declare-fun res!684274 () Bool)

(assert (=> b!1020732 (=> (not res!684274) (not e!574658))))

(declare-fun lt!449923 () tuple2!15552)

(assert (=> b!1020732 (= res!684274 (or (not (is-Cons!21756 l!1367)) (= (h!22954 l!1367) lt!449923)))))

(declare-fun res!684276 () Bool)

(declare-fun e!574660 () Bool)

(assert (=> start!89044 (=> (not res!684276) (not e!574660))))

(declare-fun isStrictlySorted!707 (List!21760) Bool)

(assert (=> start!89044 (= res!684276 (isStrictlySorted!707 l!1367))))

(assert (=> start!89044 e!574660))

(assert (=> start!89044 e!574659))

(assert (=> start!89044 true))

(assert (=> start!89044 tp_is_empty!23815))

(declare-fun b!1020731 () Bool)

(assert (=> b!1020731 (= e!574660 e!574658)))

(declare-fun res!684275 () Bool)

(assert (=> b!1020731 (=> (not res!684275) (not e!574658))))

(declare-fun contains!5951 (List!21760 tuple2!15552) Bool)

(assert (=> b!1020731 (= res!684275 (contains!5951 l!1367 lt!449923))))

(declare-fun value!188 () B!1748)

(assert (=> b!1020731 (= lt!449923 (tuple2!15553 key!393 value!188))))

(assert (= (and start!89044 res!684276) b!1020731))

(assert (= (and b!1020731 res!684275) b!1020732))

(assert (= (and b!1020732 res!684274) b!1020733))

(assert (= (and start!89044 (is-Cons!21756 l!1367)) b!1020734))

(declare-fun m!940669 () Bool)

(assert (=> b!1020733 m!940669))

(declare-fun m!940671 () Bool)

(assert (=> start!89044 m!940671))

(declare-fun m!940673 () Bool)

(assert (=> b!1020731 m!940673))

(push 1)

(assert tp_is_empty!23815)

(assert (not b!1020734))

(assert (not b!1020733))

(assert (not start!89044))

(assert (not b!1020731))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!122411 () Bool)

(declare-fun res!684303 () Bool)

(declare-fun e!574687 () Bool)

(assert (=> d!122411 (=> res!684303 e!574687)))

(assert (=> d!122411 (= res!684303 (and (is-Cons!21756 l!1367) (= (_1!7786 (h!22954 l!1367)) key!393)))))

(assert (=> d!122411 (= (containsKey!557 l!1367 key!393) e!574687)))

(declare-fun b!1020767 () Bool)

(declare-fun e!574688 () Bool)

(assert (=> b!1020767 (= e!574687 e!574688)))

(declare-fun res!684304 () Bool)

(assert (=> b!1020767 (=> (not res!684304) (not e!574688))))

(assert (=> b!1020767 (= res!684304 (and (or (not (is-Cons!21756 l!1367)) (bvsle (_1!7786 (h!22954 l!1367)) key!393)) (is-Cons!21756 l!1367) (bvslt (_1!7786 (h!22954 l!1367)) key!393)))))

(declare-fun b!1020768 () Bool)

(assert (=> b!1020768 (= e!574688 (containsKey!557 (t!30777 l!1367) key!393))))

(assert (= (and d!122411 (not res!684303)) b!1020767))

(assert (= (and b!1020767 res!684304) b!1020768))

(declare-fun m!940687 () Bool)

(assert (=> b!1020768 m!940687))

(assert (=> b!1020733 d!122411))

(declare-fun d!122417 () Bool)

(declare-fun res!684321 () Bool)

(declare-fun e!574705 () Bool)

(assert (=> d!122417 (=> res!684321 e!574705)))

(assert (=> d!122417 (= res!684321 (or (is-Nil!21757 l!1367) (is-Nil!21757 (t!30777 l!1367))))))

(assert (=> d!122417 (= (isStrictlySorted!707 l!1367) e!574705)))

(declare-fun b!1020783 () Bool)

(declare-fun e!574706 () Bool)

(assert (=> b!1020783 (= e!574705 e!574706)))

(declare-fun res!684322 () Bool)

(assert (=> b!1020783 (=> (not res!684322) (not e!574706))))

(assert (=> b!1020783 (= res!684322 (bvslt (_1!7786 (h!22954 l!1367)) (_1!7786 (h!22954 (t!30777 l!1367)))))))

(declare-fun b!1020784 () Bool)

(assert (=> b!1020784 (= e!574706 (isStrictlySorted!707 (t!30777 l!1367)))))

(assert (= (and d!122417 (not res!684321)) b!1020783))

(assert (= (and b!1020783 res!684322) b!1020784))

(declare-fun m!940697 () Bool)

(assert (=> b!1020784 m!940697))

(assert (=> start!89044 d!122417))

(declare-fun d!122423 () Bool)

(declare-fun lt!449935 () Bool)

(declare-fun content!510 (List!21760) (Set tuple2!15552))

(assert (=> d!122423 (= lt!449935 (set.member lt!449923 (content!510 l!1367)))))

(declare-fun e!574723 () Bool)

(assert (=> d!122423 (= lt!449935 e!574723)))

(declare-fun res!684339 () Bool)

(assert (=> d!122423 (=> (not res!684339) (not e!574723))))

(assert (=> d!122423 (= res!684339 (is-Cons!21756 l!1367))))

(assert (=> d!122423 (= (contains!5951 l!1367 lt!449923) lt!449935)))

(declare-fun b!1020803 () Bool)

(declare-fun e!574724 () Bool)

(assert (=> b!1020803 (= e!574723 e!574724)))

(declare-fun res!684340 () Bool)

(assert (=> b!1020803 (=> res!684340 e!574724)))

(assert (=> b!1020803 (= res!684340 (= (h!22954 l!1367) lt!449923))))

(declare-fun b!1020804 () Bool)

(assert (=> b!1020804 (= e!574724 (contains!5951 (t!30777 l!1367) lt!449923))))

(assert (= (and d!122423 res!684339) b!1020803))

(assert (= (and b!1020803 (not res!684340)) b!1020804))

(declare-fun m!940703 () Bool)

(assert (=> d!122423 m!940703))

(declare-fun m!940705 () Bool)

(assert (=> d!122423 m!940705))

(declare-fun m!940707 () Bool)

(assert (=> b!1020804 m!940707))

(assert (=> b!1020731 d!122423))

(declare-fun b!1020819 () Bool)

(declare-fun e!574735 () Bool)

(declare-fun tp!71320 () Bool)

(assert (=> b!1020819 (= e!574735 (and tp_is_empty!23815 tp!71320))))

(assert (=> b!1020734 (= tp!71309 e!574735)))

(assert (= (and b!1020734 (is-Cons!21756 (t!30777 l!1367))) b!1020819))

(push 1)

(assert tp_is_empty!23815)

(assert (not b!1020784))

(assert (not b!1020819))

(assert (not d!122423))

(assert (not b!1020804))

(assert (not b!1020768))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

