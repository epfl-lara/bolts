; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!88940 () Bool)

(assert start!88940)

(declare-fun res!683898 () Bool)

(declare-fun e!574255 () Bool)

(assert (=> start!88940 (=> (not res!683898) (not e!574255))))

(declare-datatypes ((B!1716 0))(
  ( (B!1717 (val!11942 Int)) )
))
(declare-datatypes ((tuple2!15520 0))(
  ( (tuple2!15521 (_1!7770 (_ BitVec 64)) (_2!7770 B!1716)) )
))
(declare-datatypes ((List!21744 0))(
  ( (Nil!21741) (Cons!21740 (h!22938 tuple2!15520) (t!30761 List!21744)) )
))
(declare-fun l!1367 () List!21744)

(declare-fun isStrictlySorted!691 (List!21744) Bool)

(assert (=> start!88940 (= res!683898 (isStrictlySorted!691 l!1367))))

(assert (=> start!88940 e!574255))

(declare-fun e!574253 () Bool)

(assert (=> start!88940 e!574253))

(assert (=> start!88940 true))

(declare-fun tp_is_empty!23783 () Bool)

(assert (=> start!88940 tp_is_empty!23783))

(declare-fun b!1020204 () Bool)

(declare-fun e!574254 () Bool)

(assert (=> b!1020204 (= e!574254 (not true))))

(declare-fun key!393 () (_ BitVec 64))

(declare-fun containsKey!553 (List!21744 (_ BitVec 64)) Bool)

(assert (=> b!1020204 (containsKey!553 (t!30761 l!1367) key!393)))

(declare-fun value!188 () B!1716)

(declare-datatypes ((Unit!33262 0))(
  ( (Unit!33263) )
))
(declare-fun lt!449800 () Unit!33262)

(declare-fun lemmaContainsTupleThenContainsKey!12 (List!21744 (_ BitVec 64) B!1716) Unit!33262)

(assert (=> b!1020204 (= lt!449800 (lemmaContainsTupleThenContainsKey!12 (t!30761 l!1367) key!393 value!188))))

(declare-fun b!1020205 () Bool)

(declare-fun res!683900 () Bool)

(assert (=> b!1020205 (=> (not res!683900) (not e!574254))))

(assert (=> b!1020205 (= res!683900 (isStrictlySorted!691 (t!30761 l!1367)))))

(declare-fun b!1020206 () Bool)

(declare-fun res!683901 () Bool)

(assert (=> b!1020206 (=> (not res!683901) (not e!574254))))

(declare-fun lt!449799 () tuple2!15520)

(declare-fun contains!5935 (List!21744 tuple2!15520) Bool)

(assert (=> b!1020206 (= res!683901 (contains!5935 (t!30761 l!1367) lt!449799))))

(declare-fun b!1020207 () Bool)

(declare-fun res!683897 () Bool)

(assert (=> b!1020207 (=> (not res!683897) (not e!574254))))

(assert (=> b!1020207 (= res!683897 (and (is-Cons!21740 l!1367) (not (= (h!22938 l!1367) lt!449799))))))

(declare-fun b!1020208 () Bool)

(declare-fun tp!71225 () Bool)

(assert (=> b!1020208 (= e!574253 (and tp_is_empty!23783 tp!71225))))

(declare-fun b!1020209 () Bool)

(assert (=> b!1020209 (= e!574255 e!574254)))

(declare-fun res!683899 () Bool)

(assert (=> b!1020209 (=> (not res!683899) (not e!574254))))

(assert (=> b!1020209 (= res!683899 (contains!5935 l!1367 lt!449799))))

(assert (=> b!1020209 (= lt!449799 (tuple2!15521 key!393 value!188))))

(assert (= (and start!88940 res!683898) b!1020209))

(assert (= (and b!1020209 res!683899) b!1020207))

(assert (= (and b!1020207 res!683897) b!1020205))

(assert (= (and b!1020205 res!683900) b!1020206))

(assert (= (and b!1020206 res!683901) b!1020204))

(assert (= (and start!88940 (is-Cons!21740 l!1367)) b!1020208))

(declare-fun m!940363 () Bool)

(assert (=> b!1020209 m!940363))

(declare-fun m!940365 () Bool)

(assert (=> b!1020205 m!940365))

(declare-fun m!940367 () Bool)

(assert (=> b!1020206 m!940367))

(declare-fun m!940369 () Bool)

(assert (=> b!1020204 m!940369))

(declare-fun m!940371 () Bool)

(assert (=> b!1020204 m!940371))

(declare-fun m!940373 () Bool)

(assert (=> start!88940 m!940373))

(push 1)

