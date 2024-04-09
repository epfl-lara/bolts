; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89048 () Bool)

(assert start!89048)

(declare-fun b!1020755 () Bool)

(declare-fun e!574676 () Bool)

(declare-fun e!574677 () Bool)

(assert (=> b!1020755 (= e!574676 e!574677)))

(declare-fun res!684293 () Bool)

(assert (=> b!1020755 (=> (not res!684293) (not e!574677))))

(declare-datatypes ((B!1752 0))(
  ( (B!1753 (val!11960 Int)) )
))
(declare-datatypes ((tuple2!15556 0))(
  ( (tuple2!15557 (_1!7788 (_ BitVec 64)) (_2!7788 B!1752)) )
))
(declare-datatypes ((List!21762 0))(
  ( (Nil!21759) (Cons!21758 (h!22956 tuple2!15556) (t!30779 List!21762)) )
))
(declare-fun l!1367 () List!21762)

(declare-fun lt!449929 () tuple2!15556)

(declare-fun contains!5953 (List!21762 tuple2!15556) Bool)

(assert (=> b!1020755 (= res!684293 (contains!5953 l!1367 lt!449929))))

(declare-fun key!393 () (_ BitVec 64))

(declare-fun value!188 () B!1752)

(assert (=> b!1020755 (= lt!449929 (tuple2!15557 key!393 value!188))))

(declare-fun b!1020758 () Bool)

(declare-fun e!574678 () Bool)

(declare-fun tp_is_empty!23819 () Bool)

(declare-fun tp!71315 () Bool)

(assert (=> b!1020758 (= e!574678 (and tp_is_empty!23819 tp!71315))))

(declare-fun b!1020756 () Bool)

(declare-fun res!684294 () Bool)

(assert (=> b!1020756 (=> (not res!684294) (not e!574677))))

(assert (=> b!1020756 (= res!684294 (or (not (is-Cons!21758 l!1367)) (= (h!22956 l!1367) lt!449929)))))

(declare-fun b!1020757 () Bool)

(declare-fun containsKey!559 (List!21762 (_ BitVec 64)) Bool)

(assert (=> b!1020757 (= e!574677 (not (containsKey!559 l!1367 key!393)))))

(declare-fun res!684292 () Bool)

(assert (=> start!89048 (=> (not res!684292) (not e!574676))))

(declare-fun isStrictlySorted!709 (List!21762) Bool)

(assert (=> start!89048 (= res!684292 (isStrictlySorted!709 l!1367))))

(assert (=> start!89048 e!574676))

(assert (=> start!89048 e!574678))

(assert (=> start!89048 true))

(assert (=> start!89048 tp_is_empty!23819))

(assert (= (and start!89048 res!684292) b!1020755))

(assert (= (and b!1020755 res!684293) b!1020756))

(assert (= (and b!1020756 res!684294) b!1020757))

(assert (= (and start!89048 (is-Cons!21758 l!1367)) b!1020758))

(declare-fun m!940681 () Bool)

(assert (=> b!1020755 m!940681))

(declare-fun m!940683 () Bool)

(assert (=> b!1020757 m!940683))

(declare-fun m!940685 () Bool)

(assert (=> start!89048 m!940685))

(push 1)

(assert (not start!89048))

(assert tp_is_empty!23819)

(assert (not b!1020757))

(assert (not b!1020755))

(assert (not b!1020758))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!122415 () Bool)

(declare-fun res!684311 () Bool)

(declare-fun e!574695 () Bool)

(assert (=> d!122415 (=> res!684311 e!574695)))

(assert (=> d!122415 (= res!684311 (and (is-Cons!21758 l!1367) (= (_1!7788 (h!22956 l!1367)) key!393)))))

(assert (=> d!122415 (= (containsKey!559 l!1367 key!393) e!574695)))

(declare-fun b!1020775 () Bool)

(declare-fun e!574696 () Bool)

(assert (=> b!1020775 (= e!574695 e!574696)))

(declare-fun res!684312 () Bool)

(assert (=> b!1020775 (=> (not res!684312) (not e!574696))))

(assert (=> b!1020775 (= res!684312 (and (or (not (is-Cons!21758 l!1367)) (bvsle (_1!7788 (h!22956 l!1367)) key!393)) (is-Cons!21758 l!1367) (bvslt (_1!7788 (h!22956 l!1367)) key!393)))))

(declare-fun b!1020776 () Bool)

(assert (=> b!1020776 (= e!574696 (containsKey!559 (t!30779 l!1367) key!393))))

(assert (= (and d!122415 (not res!684311)) b!1020775))

(assert (= (and b!1020775 res!684312) b!1020776))

(declare-fun m!940695 () Bool)

(assert (=> b!1020776 m!940695))

(assert (=> b!1020757 d!122415))

(declare-fun d!122421 () Bool)

(declare-fun res!684329 () Bool)

(declare-fun e!574713 () Bool)

(assert (=> d!122421 (=> res!684329 e!574713)))

(assert (=> d!122421 (= res!684329 (or (is-Nil!21759 l!1367) (is-Nil!21759 (t!30779 l!1367))))))

(assert (=> d!122421 (= (isStrictlySorted!709 l!1367) e!574713)))

(declare-fun b!1020793 () Bool)

(declare-fun e!574714 () Bool)

(assert (=> b!1020793 (= e!574713 e!574714)))

(declare-fun res!684330 () Bool)

(assert (=> b!1020793 (=> (not res!684330) (not e!574714))))

(assert (=> b!1020793 (= res!684330 (bvslt (_1!7788 (h!22956 l!1367)) (_1!7788 (h!22956 (t!30779 l!1367)))))))

(declare-fun b!1020794 () Bool)

(assert (=> b!1020794 (= e!574714 (isStrictlySorted!709 (t!30779 l!1367)))))

(assert (= (and d!122421 (not res!684329)) b!1020793))

(assert (= (and b!1020793 res!684330) b!1020794))

(declare-fun m!940701 () Bool)

(assert (=> b!1020794 m!940701))

(assert (=> start!89048 d!122421))

(declare-fun d!122427 () Bool)

(declare-fun lt!449938 () Bool)

(declare-fun content!511 (List!21762) (Set tuple2!15556))

(assert (=> d!122427 (= lt!449938 (member lt!449929 (content!511 l!1367)))))

(declare-fun e!574737 () Bool)

(assert (=> d!122427 (= lt!449938 e!574737)))

(declare-fun res!684348 () Bool)

(assert (=> d!122427 (=> (not res!684348) (not e!574737))))

(assert (=> d!122427 (= res!684348 (is-Cons!21758 l!1367))))

(assert (=> d!122427 (= (contains!5953 l!1367 lt!449929) lt!449938)))

(declare-fun b!1020821 () Bool)

(declare-fun e!574738 () Bool)

(assert (=> b!1020821 (= e!574737 e!574738)))

(declare-fun res!684347 () Bool)

(assert (=> b!1020821 (=> res!684347 e!574738)))

(assert (=> b!1020821 (= res!684347 (= (h!22956 l!1367) lt!449929))))

(declare-fun b!1020822 () Bool)

(assert (=> b!1020822 (= e!574738 (contains!5953 (t!30779 l!1367) lt!449929))))

(assert (= (and d!122427 res!684348) b!1020821))

(assert (= (and b!1020821 (not res!684347)) b!1020822))

(declare-fun m!940711 () Bool)

(assert (=> d!122427 m!940711))

(declare-fun m!940713 () Bool)

(assert (=> d!122427 m!940713))

