; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!137162 () Bool)

(assert start!137162)

(declare-fun b!1580016 () Bool)

(declare-fun res!1079453 () Bool)

(declare-fun e!881472 () Bool)

(assert (=> b!1580016 (=> (not res!1079453) (not e!881472))))

(declare-datatypes ((B!2634 0))(
  ( (B!2635 (val!19679 Int)) )
))
(declare-datatypes ((tuple2!25634 0))(
  ( (tuple2!25635 (_1!12827 (_ BitVec 64)) (_2!12827 B!2634)) )
))
(declare-datatypes ((List!36960 0))(
  ( (Nil!36957) (Cons!36956 (h!38500 tuple2!25634) (t!51881 List!36960)) )
))
(declare-fun l!1390 () List!36960)

(declare-fun isStrictlySorted!1055 (List!36960) Bool)

(assert (=> b!1580016 (= res!1079453 (isStrictlySorted!1055 (t!51881 l!1390)))))

(declare-fun b!1580017 () Bool)

(declare-fun res!1079452 () Bool)

(declare-fun e!881468 () Bool)

(assert (=> b!1580017 (=> (not res!1079452) (not e!881468))))

(declare-fun key!405 () (_ BitVec 64))

(declare-fun containsKey!901 (List!36960 (_ BitVec 64)) Bool)

(assert (=> b!1580017 (= res!1079452 (containsKey!901 l!1390 key!405))))

(declare-fun b!1580018 () Bool)

(declare-fun e!881471 () Bool)

(declare-fun tp_is_empty!39179 () Bool)

(declare-fun tp!114430 () Bool)

(assert (=> b!1580018 (= e!881471 (and tp_is_empty!39179 tp!114430))))

(declare-fun b!1580019 () Bool)

(declare-fun e!881470 () Bool)

(assert (=> b!1580019 (= e!881468 e!881470)))

(declare-fun res!1079456 () Bool)

(assert (=> b!1580019 (=> (not res!1079456) (not e!881470))))

(declare-fun lt!676613 () tuple2!25634)

(declare-fun contains!10488 (List!36960 tuple2!25634) Bool)

(assert (=> b!1580019 (= res!1079456 (contains!10488 l!1390 lt!676613))))

(declare-fun value!194 () B!2634)

(assert (=> b!1580019 (= lt!676613 (tuple2!25635 key!405 value!194))))

(declare-fun b!1580020 () Bool)

(declare-fun res!1079454 () Bool)

(assert (=> b!1580020 (=> (not res!1079454) (not e!881472))))

(assert (=> b!1580020 (= res!1079454 (and (is-Cons!36956 l!1390) (= (_1!12827 (h!38500 l!1390)) key!405)))))

(declare-fun b!1580021 () Bool)

(declare-fun res!1079457 () Bool)

(assert (=> b!1580021 (=> (not res!1079457) (not e!881472))))

(assert (=> b!1580021 (= res!1079457 (not (containsKey!901 (t!51881 l!1390) key!405)))))

(declare-fun res!1079455 () Bool)

(assert (=> start!137162 (=> (not res!1079455) (not e!881468))))

(assert (=> start!137162 (= res!1079455 (isStrictlySorted!1055 l!1390))))

(assert (=> start!137162 e!881468))

(assert (=> start!137162 e!881471))

(assert (=> start!137162 true))

(assert (=> start!137162 tp_is_empty!39179))

(declare-fun b!1580022 () Bool)

(assert (=> b!1580022 (= e!881470 e!881472)))

(declare-fun res!1079458 () Bool)

(assert (=> b!1580022 (=> (not res!1079458) (not e!881472))))

(declare-fun e!881469 () Bool)

(assert (=> b!1580022 (= res!1079458 e!881469)))

(declare-fun res!1079459 () Bool)

(assert (=> b!1580022 (=> res!1079459 e!881469)))

(declare-datatypes ((tuple2!25636 0))(
  ( (tuple2!25637 (_1!12828 tuple2!25634) (_2!12828 List!36960)) )
))
(declare-datatypes ((Option!893 0))(
  ( (Some!892 (v!22386 tuple2!25636)) (None!891) )
))
(declare-fun lt!676614 () Option!893)

(declare-fun isEmpty!1161 (Option!893) Bool)

(assert (=> b!1580022 (= res!1079459 (isEmpty!1161 lt!676614))))

(declare-fun unapply!75 (List!36960) Option!893)

(assert (=> b!1580022 (= lt!676614 (unapply!75 l!1390))))

(declare-fun b!1580023 () Bool)

(assert (=> b!1580023 (= e!881472 (not true))))

(assert (=> b!1580023 (not (contains!10488 (t!51881 l!1390) lt!676613))))

(declare-datatypes ((Unit!52176 0))(
  ( (Unit!52177) )
))
(declare-fun lt!676615 () Unit!52176)

(declare-fun lemmaNotContainsKeyThenNotContainsTuple!3 (List!36960 (_ BitVec 64) B!2634) Unit!52176)

(assert (=> b!1580023 (= lt!676615 (lemmaNotContainsKeyThenNotContainsTuple!3 (t!51881 l!1390) key!405 value!194))))

(declare-fun b!1580024 () Bool)

(declare-fun get!26802 (Option!893) tuple2!25636)

(assert (=> b!1580024 (= e!881469 (not (is-Nil!36957 (_2!12828 (get!26802 lt!676614)))))))

(assert (= (and start!137162 res!1079455) b!1580017))

(assert (= (and b!1580017 res!1079452) b!1580019))

(assert (= (and b!1580019 res!1079456) b!1580022))

(assert (= (and b!1580022 (not res!1079459)) b!1580024))

(assert (= (and b!1580022 res!1079458) b!1580020))

(assert (= (and b!1580020 res!1079454) b!1580016))

(assert (= (and b!1580016 res!1079453) b!1580021))

(assert (= (and b!1580021 res!1079457) b!1580023))

(assert (= (and start!137162 (is-Cons!36956 l!1390)) b!1580018))

(declare-fun m!1451571 () Bool)

(assert (=> b!1580021 m!1451571))

(declare-fun m!1451573 () Bool)

(assert (=> b!1580017 m!1451573))

(declare-fun m!1451575 () Bool)

(assert (=> b!1580022 m!1451575))

(declare-fun m!1451577 () Bool)

(assert (=> b!1580022 m!1451577))

(declare-fun m!1451579 () Bool)

(assert (=> b!1580024 m!1451579))

(declare-fun m!1451581 () Bool)

(assert (=> b!1580016 m!1451581))

(declare-fun m!1451583 () Bool)

(assert (=> b!1580019 m!1451583))

(declare-fun m!1451585 () Bool)

(assert (=> b!1580023 m!1451585))

(declare-fun m!1451587 () Bool)

(assert (=> b!1580023 m!1451587))

(declare-fun m!1451589 () Bool)

(assert (=> start!137162 m!1451589))

(push 1)

