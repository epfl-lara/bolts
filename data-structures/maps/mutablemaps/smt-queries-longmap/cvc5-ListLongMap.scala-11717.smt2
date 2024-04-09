; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!137170 () Bool)

(assert start!137170)

(declare-fun b!1580126 () Bool)

(declare-fun e!881528 () Bool)

(assert (=> b!1580126 (= e!881528 (not true))))

(declare-datatypes ((B!2642 0))(
  ( (B!2643 (val!19683 Int)) )
))
(declare-datatypes ((tuple2!25650 0))(
  ( (tuple2!25651 (_1!12835 (_ BitVec 64)) (_2!12835 B!2642)) )
))
(declare-datatypes ((List!36964 0))(
  ( (Nil!36961) (Cons!36960 (h!38504 tuple2!25650) (t!51885 List!36964)) )
))
(declare-fun l!1390 () List!36964)

(declare-fun key!405 () (_ BitVec 64))

(declare-fun value!194 () B!2642)

(declare-datatypes ((Option!897 0))(
  ( (Some!896 (v!22390 B!2642)) (None!895) )
))
(declare-fun getValueByKey!813 (List!36964 (_ BitVec 64)) Option!897)

(assert (=> b!1580126 (= (getValueByKey!813 (t!51885 l!1390) key!405) (Some!896 value!194))))

(declare-datatypes ((Unit!52178 0))(
  ( (Unit!52179) )
))
(declare-fun lt!676650 () Unit!52178)

(declare-fun lemmaContainsTupThenGetReturnValue!396 (List!36964 (_ BitVec 64) B!2642) Unit!52178)

(assert (=> b!1580126 (= lt!676650 (lemmaContainsTupThenGetReturnValue!396 (t!51885 l!1390) key!405 value!194))))

(declare-fun b!1580128 () Bool)

(declare-fun res!1079555 () Bool)

(declare-fun e!881529 () Bool)

(assert (=> b!1580128 (=> (not res!1079555) (not e!881529))))

(declare-fun containsKey!905 (List!36964 (_ BitVec 64)) Bool)

(assert (=> b!1580128 (= res!1079555 (containsKey!905 l!1390 key!405))))

(declare-fun b!1580129 () Bool)

(declare-fun res!1079553 () Bool)

(assert (=> b!1580129 (=> (not res!1079553) (not e!881528))))

(declare-fun lt!676651 () tuple2!25650)

(declare-fun contains!10492 (List!36964 tuple2!25650) Bool)

(assert (=> b!1580129 (= res!1079553 (contains!10492 (t!51885 l!1390) lt!676651))))

(declare-fun b!1580130 () Bool)

(declare-fun e!881530 () Bool)

(assert (=> b!1580130 (= e!881530 e!881528)))

(declare-fun res!1079554 () Bool)

(assert (=> b!1580130 (=> (not res!1079554) (not e!881528))))

(declare-fun e!881531 () Bool)

(assert (=> b!1580130 (= res!1079554 e!881531)))

(declare-fun res!1079550 () Bool)

(assert (=> b!1580130 (=> res!1079550 e!881531)))

(declare-datatypes ((tuple2!25652 0))(
  ( (tuple2!25653 (_1!12836 tuple2!25650) (_2!12836 List!36964)) )
))
(declare-datatypes ((Option!898 0))(
  ( (Some!897 (v!22391 tuple2!25652)) (None!896) )
))
(declare-fun lt!676649 () Option!898)

(declare-fun isEmpty!1165 (Option!898) Bool)

(assert (=> b!1580130 (= res!1079550 (isEmpty!1165 lt!676649))))

(declare-fun unapply!79 (List!36964) Option!898)

(assert (=> b!1580130 (= lt!676649 (unapply!79 l!1390))))

(declare-fun b!1580131 () Bool)

(declare-fun res!1079557 () Bool)

(assert (=> b!1580131 (=> (not res!1079557) (not e!881528))))

(declare-fun isStrictlySorted!1059 (List!36964) Bool)

(assert (=> b!1580131 (= res!1079557 (isStrictlySorted!1059 (t!51885 l!1390)))))

(declare-fun b!1580132 () Bool)

(declare-fun res!1079552 () Bool)

(assert (=> b!1580132 (=> (not res!1079552) (not e!881528))))

(assert (=> b!1580132 (= res!1079552 (and (or (not (is-Cons!36960 l!1390)) (not (= (_1!12835 (h!38504 l!1390)) key!405))) (is-Cons!36960 l!1390)))))

(declare-fun b!1580133 () Bool)

(declare-fun e!881532 () Bool)

(declare-fun tp_is_empty!39187 () Bool)

(declare-fun tp!114442 () Bool)

(assert (=> b!1580133 (= e!881532 (and tp_is_empty!39187 tp!114442))))

(declare-fun res!1079551 () Bool)

(assert (=> start!137170 (=> (not res!1079551) (not e!881529))))

(assert (=> start!137170 (= res!1079551 (isStrictlySorted!1059 l!1390))))

(assert (=> start!137170 e!881529))

(assert (=> start!137170 e!881532))

(assert (=> start!137170 true))

(assert (=> start!137170 tp_is_empty!39187))

(declare-fun b!1580127 () Bool)

(declare-fun get!26810 (Option!898) tuple2!25652)

(assert (=> b!1580127 (= e!881531 (not (is-Nil!36961 (_2!12836 (get!26810 lt!676649)))))))

(declare-fun b!1580134 () Bool)

(declare-fun res!1079558 () Bool)

(assert (=> b!1580134 (=> (not res!1079558) (not e!881528))))

(assert (=> b!1580134 (= res!1079558 (containsKey!905 (t!51885 l!1390) key!405))))

(declare-fun b!1580135 () Bool)

(assert (=> b!1580135 (= e!881529 e!881530)))

(declare-fun res!1079556 () Bool)

(assert (=> b!1580135 (=> (not res!1079556) (not e!881530))))

(assert (=> b!1580135 (= res!1079556 (contains!10492 l!1390 lt!676651))))

(assert (=> b!1580135 (= lt!676651 (tuple2!25651 key!405 value!194))))

(assert (= (and start!137170 res!1079551) b!1580128))

(assert (= (and b!1580128 res!1079555) b!1580135))

(assert (= (and b!1580135 res!1079556) b!1580130))

(assert (= (and b!1580130 (not res!1079550)) b!1580127))

(assert (= (and b!1580130 res!1079554) b!1580132))

(assert (= (and b!1580132 res!1079552) b!1580131))

(assert (= (and b!1580131 res!1079557) b!1580134))

(assert (= (and b!1580134 res!1079558) b!1580129))

(assert (= (and b!1580129 res!1079553) b!1580126))

(assert (= (and start!137170 (is-Cons!36960 l!1390)) b!1580133))

(declare-fun m!1451645 () Bool)

(assert (=> b!1580131 m!1451645))

(declare-fun m!1451647 () Bool)

(assert (=> start!137170 m!1451647))

(declare-fun m!1451649 () Bool)

(assert (=> b!1580135 m!1451649))

(declare-fun m!1451651 () Bool)

(assert (=> b!1580134 m!1451651))

(declare-fun m!1451653 () Bool)

(assert (=> b!1580127 m!1451653))

(declare-fun m!1451655 () Bool)

(assert (=> b!1580130 m!1451655))

(declare-fun m!1451657 () Bool)

(assert (=> b!1580130 m!1451657))

(declare-fun m!1451659 () Bool)

(assert (=> b!1580128 m!1451659))

(declare-fun m!1451661 () Bool)

(assert (=> b!1580126 m!1451661))

(declare-fun m!1451663 () Bool)

(assert (=> b!1580126 m!1451663))

(declare-fun m!1451665 () Bool)

(assert (=> b!1580129 m!1451665))

(push 1)

