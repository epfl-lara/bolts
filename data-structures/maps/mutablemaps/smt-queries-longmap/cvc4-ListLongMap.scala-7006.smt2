; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89018 () Bool)

(assert start!89018)

(declare-fun b!1020621 () Bool)

(declare-fun e!574561 () Bool)

(declare-fun tp_is_empty!23813 () Bool)

(declare-fun tp!71297 () Bool)

(assert (=> b!1020621 (= e!574561 (and tp_is_empty!23813 tp!71297))))

(declare-fun b!1020622 () Bool)

(declare-fun e!574560 () Bool)

(declare-fun e!574559 () Bool)

(assert (=> b!1020622 (= e!574560 e!574559)))

(declare-fun res!684184 () Bool)

(assert (=> b!1020622 (=> (not res!684184) (not e!574559))))

(declare-datatypes ((B!1746 0))(
  ( (B!1747 (val!11957 Int)) )
))
(declare-datatypes ((tuple2!15550 0))(
  ( (tuple2!15551 (_1!7785 (_ BitVec 64)) (_2!7785 B!1746)) )
))
(declare-datatypes ((List!21759 0))(
  ( (Nil!21756) (Cons!21755 (h!22953 tuple2!15550) (t!30776 List!21759)) )
))
(declare-fun l!1367 () List!21759)

(declare-fun lt!449898 () tuple2!15550)

(declare-fun contains!5950 (List!21759 tuple2!15550) Bool)

(assert (=> b!1020622 (= res!684184 (contains!5950 l!1367 lt!449898))))

(declare-fun key!393 () (_ BitVec 64))

(declare-fun value!188 () B!1746)

(assert (=> b!1020622 (= lt!449898 (tuple2!15551 key!393 value!188))))

(declare-fun b!1020623 () Bool)

(declare-fun res!684182 () Bool)

(assert (=> b!1020623 (=> (not res!684182) (not e!574559))))

(declare-fun isStrictlySorted!706 (List!21759) Bool)

(assert (=> b!1020623 (= res!684182 (isStrictlySorted!706 (t!30776 l!1367)))))

(declare-fun b!1020624 () Bool)

(declare-fun res!684186 () Bool)

(assert (=> b!1020624 (=> (not res!684186) (not e!574559))))

(assert (=> b!1020624 (= res!684186 (contains!5950 (t!30776 l!1367) lt!449898))))

(declare-fun res!684183 () Bool)

(assert (=> start!89018 (=> (not res!684183) (not e!574560))))

(assert (=> start!89018 (= res!684183 (isStrictlySorted!706 l!1367))))

(assert (=> start!89018 e!574560))

(assert (=> start!89018 e!574561))

(assert (=> start!89018 true))

(assert (=> start!89018 tp_is_empty!23813))

(declare-fun b!1020625 () Bool)

(declare-fun containsKey!556 (List!21759 (_ BitVec 64)) Bool)

(assert (=> b!1020625 (= e!574559 (not (containsKey!556 l!1367 key!393)))))

(assert (=> b!1020625 (containsKey!556 (t!30776 l!1367) key!393)))

(declare-datatypes ((Unit!33268 0))(
  ( (Unit!33269) )
))
(declare-fun lt!449899 () Unit!33268)

(declare-fun lemmaContainsTupleThenContainsKey!15 (List!21759 (_ BitVec 64) B!1746) Unit!33268)

(assert (=> b!1020625 (= lt!449899 (lemmaContainsTupleThenContainsKey!15 (t!30776 l!1367) key!393 value!188))))

(declare-fun b!1020626 () Bool)

(declare-fun res!684185 () Bool)

(assert (=> b!1020626 (=> (not res!684185) (not e!574559))))

(assert (=> b!1020626 (= res!684185 (and (is-Cons!21755 l!1367) (not (= (h!22953 l!1367) lt!449898))))))

(assert (= (and start!89018 res!684183) b!1020622))

(assert (= (and b!1020622 res!684184) b!1020626))

(assert (= (and b!1020626 res!684185) b!1020623))

(assert (= (and b!1020623 res!684182) b!1020624))

(assert (= (and b!1020624 res!684186) b!1020625))

(assert (= (and start!89018 (is-Cons!21755 l!1367)) b!1020621))

(declare-fun m!940601 () Bool)

(assert (=> b!1020625 m!940601))

(declare-fun m!940603 () Bool)

(assert (=> b!1020625 m!940603))

(declare-fun m!940605 () Bool)

(assert (=> b!1020625 m!940605))

(declare-fun m!940607 () Bool)

(assert (=> start!89018 m!940607))

(declare-fun m!940609 () Bool)

(assert (=> b!1020622 m!940609))

(declare-fun m!940611 () Bool)

(assert (=> b!1020624 m!940611))

(declare-fun m!940613 () Bool)

(assert (=> b!1020623 m!940613))

(push 1)

(assert tp_is_empty!23813)

(assert (not b!1020624))

(assert (not b!1020622))

(assert (not b!1020623))

(assert (not b!1020621))

(assert (not b!1020625))

(assert (not start!89018))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!122371 () Bool)

(declare-fun lt!449905 () Bool)

(declare-fun content!507 (List!21759) (Set tuple2!15550))

(assert (=> d!122371 (= lt!449905 (member lt!449898 (content!507 l!1367)))))

(declare-fun e!574580 () Bool)

(assert (=> d!122371 (= lt!449905 e!574580)))

(declare-fun res!684206 () Bool)

(assert (=> d!122371 (=> (not res!684206) (not e!574580))))

(assert (=> d!122371 (= res!684206 (is-Cons!21755 l!1367))))

(assert (=> d!122371 (= (contains!5950 l!1367 lt!449898) lt!449905)))

(declare-fun b!1020645 () Bool)

(declare-fun e!574581 () Bool)

(assert (=> b!1020645 (= e!574580 e!574581)))

(declare-fun res!684205 () Bool)

(assert (=> b!1020645 (=> res!684205 e!574581)))

(assert (=> b!1020645 (= res!684205 (= (h!22953 l!1367) lt!449898))))

(declare-fun b!1020646 () Bool)

(assert (=> b!1020646 (= e!574581 (contains!5950 (t!30776 l!1367) lt!449898))))

(assert (= (and d!122371 res!684206) b!1020645))

(assert (= (and b!1020645 (not res!684205)) b!1020646))

(declare-fun m!940623 () Bool)

(assert (=> d!122371 m!940623))

(declare-fun m!940625 () Bool)

(assert (=> d!122371 m!940625))

(assert (=> b!1020646 m!940611))

(assert (=> b!1020622 d!122371))

(declare-fun d!122379 () Bool)

(declare-fun lt!449908 () Bool)

(assert (=> d!122379 (= lt!449908 (member lt!449898 (content!507 (t!30776 l!1367))))))

(declare-fun e!574586 () Bool)

(assert (=> d!122379 (= lt!449908 e!574586)))

(declare-fun res!684212 () Bool)

(assert (=> d!122379 (=> (not res!684212) (not e!574586))))

(assert (=> d!122379 (= res!684212 (is-Cons!21755 (t!30776 l!1367)))))

(assert (=> d!122379 (= (contains!5950 (t!30776 l!1367) lt!449898) lt!449908)))

(declare-fun b!1020651 () Bool)

(declare-fun e!574587 () Bool)

(assert (=> b!1020651 (= e!574586 e!574587)))

(declare-fun res!684211 () Bool)

(assert (=> b!1020651 (=> res!684211 e!574587)))

(assert (=> b!1020651 (= res!684211 (= (h!22953 (t!30776 l!1367)) lt!449898))))

(declare-fun b!1020652 () Bool)

(assert (=> b!1020652 (= e!574587 (contains!5950 (t!30776 (t!30776 l!1367)) lt!449898))))

(assert (= (and d!122379 res!684212) b!1020651))

(assert (= (and b!1020651 (not res!684211)) b!1020652))

(declare-fun m!940627 () Bool)

(assert (=> d!122379 m!940627))

(declare-fun m!940629 () Bool)

(assert (=> d!122379 m!940629))

(declare-fun m!940631 () Bool)

(assert (=> b!1020652 m!940631))

(assert (=> b!1020624 d!122379))

(declare-fun d!122381 () Bool)

(declare-fun res!684224 () Bool)

(declare-fun e!574599 () Bool)

(assert (=> d!122381 (=> res!684224 e!574599)))

(assert (=> d!122381 (= res!684224 (or (is-Nil!21756 (t!30776 l!1367)) (is-Nil!21756 (t!30776 (t!30776 l!1367)))))))

(assert (=> d!122381 (= (isStrictlySorted!706 (t!30776 l!1367)) e!574599)))

(declare-fun b!1020664 () Bool)

(declare-fun e!574600 () Bool)

(assert (=> b!1020664 (= e!574599 e!574600)))

(declare-fun res!684225 () Bool)

(assert (=> b!1020664 (=> (not res!684225) (not e!574600))))

(assert (=> b!1020664 (= res!684225 (bvslt (_1!7785 (h!22953 (t!30776 l!1367))) (_1!7785 (h!22953 (t!30776 (t!30776 l!1367))))))))

(declare-fun b!1020665 () Bool)

(assert (=> b!1020665 (= e!574600 (isStrictlySorted!706 (t!30776 (t!30776 l!1367))))))

(assert (= (and d!122381 (not res!684224)) b!1020664))

(assert (= (and b!1020664 res!684225) b!1020665))

(declare-fun m!940639 () Bool)

(assert (=> b!1020665 m!940639))

(assert (=> b!1020623 d!122381))

(declare-fun d!122389 () Bool)

(declare-fun res!684241 () Bool)

(declare-fun e!574617 () Bool)

(assert (=> d!122389 (=> res!684241 e!574617)))

(assert (=> d!122389 (= res!684241 (and (is-Cons!21755 l!1367) (= (_1!7785 (h!22953 l!1367)) key!393)))))

(assert (=> d!122389 (= (containsKey!556 l!1367 key!393) e!574617)))

(declare-fun b!1020681 () Bool)

(declare-fun e!574619 () Bool)

(assert (=> b!1020681 (= e!574617 e!574619)))

(declare-fun res!684244 () Bool)

(assert (=> b!1020681 (=> (not res!684244) (not e!574619))))

(assert (=> b!1020681 (= res!684244 (and (or (not (is-Cons!21755 l!1367)) (bvsle (_1!7785 (h!22953 l!1367)) key!393)) (is-Cons!21755 l!1367) (bvslt (_1!7785 (h!22953 l!1367)) key!393)))))

(declare-fun b!1020682 () Bool)

(assert (=> b!1020682 (= e!574619 (containsKey!556 (t!30776 l!1367) key!393))))

(assert (= (and d!122389 (not res!684241)) b!1020681))

(assert (= (and b!1020681 res!684244) b!1020682))

(assert (=> b!1020682 m!940603))

(assert (=> b!1020625 d!122389))

(declare-fun d!122395 () Bool)

(declare-fun res!684245 () Bool)

(declare-fun e!574620 () Bool)

(assert (=> d!122395 (=> res!684245 e!574620)))

(assert (=> d!122395 (= res!684245 (and (is-Cons!21755 (t!30776 l!1367)) (= (_1!7785 (h!22953 (t!30776 l!1367))) key!393)))))

(assert (=> d!122395 (= (containsKey!556 (t!30776 l!1367) key!393) e!574620)))

(declare-fun b!1020685 () Bool)

(declare-fun e!574621 () Bool)

(assert (=> b!1020685 (= e!574620 e!574621)))

(declare-fun res!684246 () Bool)

(assert (=> b!1020685 (=> (not res!684246) (not e!574621))))

(assert (=> b!1020685 (= res!684246 (and (or (not (is-Cons!21755 (t!30776 l!1367))) (bvsle (_1!7785 (h!22953 (t!30776 l!1367))) key!393)) (is-Cons!21755 (t!30776 l!1367)) (bvslt (_1!7785 (h!22953 (t!30776 l!1367))) key!393)))))

(declare-fun b!1020686 () Bool)

(assert (=> b!1020686 (= e!574621 (containsKey!556 (t!30776 (t!30776 l!1367)) key!393))))

(assert (= (and d!122395 (not res!684245)) b!1020685))

(assert (= (and b!1020685 res!684246) b!1020686))

(declare-fun m!940649 () Bool)

(assert (=> b!1020686 m!940649))

(assert (=> b!1020625 d!122395))

(declare-fun d!122397 () Bool)

(assert (=> d!122397 (containsKey!556 (t!30776 l!1367) key!393)))

(declare-fun lt!449920 () Unit!33268)

(declare-fun choose!1686 (List!21759 (_ BitVec 64) B!1746) Unit!33268)

(assert (=> d!122397 (= lt!449920 (choose!1686 (t!30776 l!1367) key!393 value!188))))

(declare-fun e!574646 () Bool)

(assert (=> d!122397 e!574646))

(declare-fun res!684265 () Bool)

(assert (=> d!122397 (=> (not res!684265) (not e!574646))))

(assert (=> d!122397 (= res!684265 (isStrictlySorted!706 (t!30776 l!1367)))))

(assert (=> d!122397 (= (lemmaContainsTupleThenContainsKey!15 (t!30776 l!1367) key!393 value!188) lt!449920)))

(declare-fun b!1020715 () Bool)

(assert (=> b!1020715 (= e!574646 (contains!5950 (t!30776 l!1367) (tuple2!15551 key!393 value!188)))))

(assert (= (and d!122397 res!684265) b!1020715))

(assert (=> d!122397 m!940603))

(declare-fun m!940665 () Bool)

(assert (=> d!122397 m!940665))

(assert (=> d!122397 m!940613))

(declare-fun m!940667 () Bool)

(assert (=> b!1020715 m!940667))

(assert (=> b!1020625 d!122397))

(declare-fun d!122407 () Bool)

(declare-fun res!684266 () Bool)

(declare-fun e!574647 () Bool)

(assert (=> d!122407 (=> res!684266 e!574647)))

(assert (=> d!122407 (= res!684266 (or (is-Nil!21756 l!1367) (is-Nil!21756 (t!30776 l!1367))))))

(assert (=> d!122407 (= (isStrictlySorted!706 l!1367) e!574647)))

(declare-fun b!1020716 () Bool)

(declare-fun e!574648 () Bool)

(assert (=> b!1020716 (= e!574647 e!574648)))

(declare-fun res!684267 () Bool)

(assert (=> b!1020716 (=> (not res!684267) (not e!574648))))

(assert (=> b!1020716 (= res!684267 (bvslt (_1!7785 (h!22953 l!1367)) (_1!7785 (h!22953 (t!30776 l!1367)))))))

(declare-fun b!1020717 () Bool)

(assert (=> b!1020717 (= e!574648 (isStrictlySorted!706 (t!30776 l!1367)))))

(assert (= (and d!122407 (not res!684266)) b!1020716))

(assert (= (and b!1020716 res!684267) b!1020717))

(assert (=> b!1020717 m!940613))

(assert (=> start!89018 d!122407))

(declare-fun b!1020722 () Bool)

(declare-fun e!574651 () Bool)

(declare-fun tp!71306 () Bool)

(assert (=> b!1020722 (= e!574651 (and tp_is_empty!23813 tp!71306))))

(assert (=> b!1020621 (= tp!71297 e!574651)))

(assert (= (and b!1020621 (is-Cons!21755 (t!30776 l!1367))) b!1020722))

(push 1)

(assert (not b!1020652))

(assert (not b!1020722))

(assert (not d!122379))

(assert (not d!122371))

(assert (not d!122397))

(assert (not b!1020682))

(assert (not b!1020717))

(assert (not b!1020715))

(assert (not b!1020686))

(assert (not b!1020646))

(assert (not b!1020665))

(assert tp_is_empty!23813)

(check-sat)

(pop 1)

(push 1)

(check-sat)

