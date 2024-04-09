; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!137648 () Bool)

(assert start!137648)

(declare-fun b!1582133 () Bool)

(declare-fun res!1080985 () Bool)

(declare-fun e!882954 () Bool)

(assert (=> b!1582133 (=> (not res!1080985) (not e!882954))))

(declare-datatypes ((B!2748 0))(
  ( (B!2749 (val!19736 Int)) )
))
(declare-datatypes ((tuple2!25804 0))(
  ( (tuple2!25805 (_1!12912 (_ BitVec 64)) (_2!12912 B!2748)) )
))
(declare-datatypes ((List!37017 0))(
  ( (Nil!37014) (Cons!37013 (h!38557 tuple2!25804) (t!51938 List!37017)) )
))
(declare-fun l!1356 () List!37017)

(declare-fun key!387 () (_ BitVec 64))

(declare-fun containsKey!955 (List!37017 (_ BitVec 64)) Bool)

(assert (=> b!1582133 (= res!1080985 (not (containsKey!955 l!1356 key!387)))))

(declare-fun b!1582135 () Bool)

(declare-fun ListPrimitiveSize!204 (List!37017) Int)

(assert (=> b!1582135 (= e!882954 (>= (ListPrimitiveSize!204 (t!51938 l!1356)) (ListPrimitiveSize!204 l!1356)))))

(declare-fun b!1582134 () Bool)

(declare-fun res!1080984 () Bool)

(assert (=> b!1582134 (=> (not res!1080984) (not e!882954))))

(assert (=> b!1582134 (= res!1080984 (not (is-Nil!37014 l!1356)))))

(declare-fun res!1080986 () Bool)

(assert (=> start!137648 (=> (not res!1080986) (not e!882954))))

(declare-fun isStrictlySorted!1109 (List!37017) Bool)

(assert (=> start!137648 (= res!1080986 (isStrictlySorted!1109 l!1356))))

(assert (=> start!137648 e!882954))

(declare-fun e!882953 () Bool)

(assert (=> start!137648 e!882953))

(assert (=> start!137648 true))

(declare-fun b!1582136 () Bool)

(declare-fun tp_is_empty!39293 () Bool)

(declare-fun tp!114703 () Bool)

(assert (=> b!1582136 (= e!882953 (and tp_is_empty!39293 tp!114703))))

(assert (= (and start!137648 res!1080986) b!1582133))

(assert (= (and b!1582133 res!1080985) b!1582134))

(assert (= (and b!1582134 res!1080984) b!1582135))

(assert (= (and start!137648 (is-Cons!37013 l!1356)) b!1582136))

(declare-fun m!1452723 () Bool)

(assert (=> b!1582133 m!1452723))

(declare-fun m!1452725 () Bool)

(assert (=> b!1582135 m!1452725))

(declare-fun m!1452727 () Bool)

(assert (=> b!1582135 m!1452727))

(declare-fun m!1452729 () Bool)

(assert (=> start!137648 m!1452729))

(push 1)

(assert (not b!1582135))

(assert (not start!137648))

(assert tp_is_empty!39293)

(assert (not b!1582133))

(assert (not b!1582136))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!166877 () Bool)

(declare-fun res!1081003 () Bool)

(declare-fun e!882975 () Bool)

(assert (=> d!166877 (=> res!1081003 e!882975)))

(assert (=> d!166877 (= res!1081003 (and (is-Cons!37013 l!1356) (= (_1!12912 (h!38557 l!1356)) key!387)))))

(assert (=> d!166877 (= (containsKey!955 l!1356 key!387) e!882975)))

(declare-fun b!1582161 () Bool)

(declare-fun e!882976 () Bool)

(assert (=> b!1582161 (= e!882975 e!882976)))

(declare-fun res!1081004 () Bool)

(assert (=> b!1582161 (=> (not res!1081004) (not e!882976))))

(assert (=> b!1582161 (= res!1081004 (and (or (not (is-Cons!37013 l!1356)) (bvsle (_1!12912 (h!38557 l!1356)) key!387)) (is-Cons!37013 l!1356) (bvslt (_1!12912 (h!38557 l!1356)) key!387)))))

(declare-fun b!1582162 () Bool)

(assert (=> b!1582162 (= e!882976 (containsKey!955 (t!51938 l!1356) key!387))))

(assert (= (and d!166877 (not res!1081003)) b!1582161))

(assert (= (and b!1582161 res!1081004) b!1582162))

(declare-fun m!1452737 () Bool)

(assert (=> b!1582162 m!1452737))

(assert (=> b!1582133 d!166877))

(declare-fun d!166887 () Bool)

(declare-fun res!1081015 () Bool)

(declare-fun e!882994 () Bool)

(assert (=> d!166887 (=> res!1081015 e!882994)))

(assert (=> d!166887 (= res!1081015 (or (is-Nil!37014 l!1356) (is-Nil!37014 (t!51938 l!1356))))))

(assert (=> d!166887 (= (isStrictlySorted!1109 l!1356) e!882994)))

(declare-fun b!1582186 () Bool)

(declare-fun e!882995 () Bool)

(assert (=> b!1582186 (= e!882994 e!882995)))

(declare-fun res!1081016 () Bool)

(assert (=> b!1582186 (=> (not res!1081016) (not e!882995))))

(assert (=> b!1582186 (= res!1081016 (bvslt (_1!12912 (h!38557 l!1356)) (_1!12912 (h!38557 (t!51938 l!1356)))))))

(declare-fun b!1582187 () Bool)

(assert (=> b!1582187 (= e!882995 (isStrictlySorted!1109 (t!51938 l!1356)))))

(assert (= (and d!166887 (not res!1081015)) b!1582186))

(assert (= (and b!1582186 res!1081016) b!1582187))

(declare-fun m!1452743 () Bool)

(assert (=> b!1582187 m!1452743))

(assert (=> start!137648 d!166887))

(declare-fun d!166893 () Bool)

(declare-fun lt!676986 () Int)

(assert (=> d!166893 (>= lt!676986 0)))

(declare-fun e!883002 () Int)

(assert (=> d!166893 (= lt!676986 e!883002)))

(declare-fun c!146591 () Bool)

(assert (=> d!166893 (= c!146591 (is-Nil!37014 (t!51938 l!1356)))))

(assert (=> d!166893 (= (ListPrimitiveSize!204 (t!51938 l!1356)) lt!676986)))

(declare-fun b!1582196 () Bool)

(assert (=> b!1582196 (= e!883002 0)))

(declare-fun b!1582197 () Bool)

(assert (=> b!1582197 (= e!883002 (+ 1 (ListPrimitiveSize!204 (t!51938 (t!51938 l!1356)))))))

(assert (= (and d!166893 c!146591) b!1582196))

