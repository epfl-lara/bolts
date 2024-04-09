; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!137168 () Bool)

(assert start!137168)

(declare-fun res!1079525 () Bool)

(declare-fun e!881515 () Bool)

(assert (=> start!137168 (=> (not res!1079525) (not e!881515))))

(declare-datatypes ((B!2640 0))(
  ( (B!2641 (val!19682 Int)) )
))
(declare-datatypes ((tuple2!25646 0))(
  ( (tuple2!25647 (_1!12833 (_ BitVec 64)) (_2!12833 B!2640)) )
))
(declare-datatypes ((List!36963 0))(
  ( (Nil!36960) (Cons!36959 (h!38503 tuple2!25646) (t!51884 List!36963)) )
))
(declare-fun l!1390 () List!36963)

(declare-fun isStrictlySorted!1058 (List!36963) Bool)

(assert (=> start!137168 (= res!1079525 (isStrictlySorted!1058 l!1390))))

(assert (=> start!137168 e!881515))

(declare-fun e!881516 () Bool)

(assert (=> start!137168 e!881516))

(assert (=> start!137168 true))

(declare-fun tp_is_empty!39185 () Bool)

(assert (=> start!137168 tp_is_empty!39185))

(declare-fun b!1580097 () Bool)

(declare-fun res!1079526 () Bool)

(declare-fun e!881514 () Bool)

(assert (=> b!1580097 (=> (not res!1079526) (not e!881514))))

(declare-fun key!405 () (_ BitVec 64))

(assert (=> b!1580097 (= res!1079526 (and (or (not (is-Cons!36959 l!1390)) (not (= (_1!12833 (h!38503 l!1390)) key!405))) (is-Cons!36959 l!1390)))))

(declare-fun b!1580098 () Bool)

(declare-fun e!881517 () Bool)

(assert (=> b!1580098 (= e!881515 e!881517)))

(declare-fun res!1079527 () Bool)

(assert (=> b!1580098 (=> (not res!1079527) (not e!881517))))

(declare-fun lt!676641 () tuple2!25646)

(declare-fun contains!10491 (List!36963 tuple2!25646) Bool)

(assert (=> b!1580098 (= res!1079527 (contains!10491 l!1390 lt!676641))))

(declare-fun value!194 () B!2640)

(assert (=> b!1580098 (= lt!676641 (tuple2!25647 key!405 value!194))))

(declare-fun b!1580099 () Bool)

(declare-fun res!1079524 () Bool)

(assert (=> b!1580099 (=> (not res!1079524) (not e!881515))))

(declare-fun containsKey!904 (List!36963 (_ BitVec 64)) Bool)

(assert (=> b!1580099 (= res!1079524 (containsKey!904 l!1390 key!405))))

(declare-fun b!1580100 () Bool)

(declare-fun res!1079530 () Bool)

(assert (=> b!1580100 (=> (not res!1079530) (not e!881514))))

(assert (=> b!1580100 (= res!1079530 (isStrictlySorted!1058 (t!51884 l!1390)))))

(declare-fun b!1580101 () Bool)

(declare-fun res!1079529 () Bool)

(assert (=> b!1580101 (=> (not res!1079529) (not e!881514))))

(assert (=> b!1580101 (= res!1079529 (containsKey!904 (t!51884 l!1390) key!405))))

(declare-fun b!1580102 () Bool)

(declare-fun tp!114439 () Bool)

(assert (=> b!1580102 (= e!881516 (and tp_is_empty!39185 tp!114439))))

(declare-fun b!1580103 () Bool)

(assert (=> b!1580103 (= e!881514 false)))

(declare-fun lt!676640 () Bool)

(assert (=> b!1580103 (= lt!676640 (contains!10491 (t!51884 l!1390) lt!676641))))

(declare-fun b!1580104 () Bool)

(declare-fun e!881513 () Bool)

(declare-datatypes ((tuple2!25648 0))(
  ( (tuple2!25649 (_1!12834 tuple2!25646) (_2!12834 List!36963)) )
))
(declare-datatypes ((Option!896 0))(
  ( (Some!895 (v!22389 tuple2!25648)) (None!894) )
))
(declare-fun lt!676642 () Option!896)

(declare-fun get!26807 (Option!896) tuple2!25648)

(assert (=> b!1580104 (= e!881513 (not (is-Nil!36960 (_2!12834 (get!26807 lt!676642)))))))

(declare-fun b!1580105 () Bool)

(assert (=> b!1580105 (= e!881517 e!881514)))

(declare-fun res!1079528 () Bool)

(assert (=> b!1580105 (=> (not res!1079528) (not e!881514))))

(assert (=> b!1580105 (= res!1079528 e!881513)))

(declare-fun res!1079531 () Bool)

(assert (=> b!1580105 (=> res!1079531 e!881513)))

(declare-fun isEmpty!1164 (Option!896) Bool)

(assert (=> b!1580105 (= res!1079531 (isEmpty!1164 lt!676642))))

(declare-fun unapply!78 (List!36963) Option!896)

(assert (=> b!1580105 (= lt!676642 (unapply!78 l!1390))))

(assert (= (and start!137168 res!1079525) b!1580099))

(assert (= (and b!1580099 res!1079524) b!1580098))

(assert (= (and b!1580098 res!1079527) b!1580105))

(assert (= (and b!1580105 (not res!1079531)) b!1580104))

(assert (= (and b!1580105 res!1079528) b!1580097))

(assert (= (and b!1580097 res!1079526) b!1580100))

(assert (= (and b!1580100 res!1079530) b!1580101))

(assert (= (and b!1580101 res!1079529) b!1580103))

(assert (= (and start!137168 (is-Cons!36959 l!1390)) b!1580102))

(declare-fun m!1451627 () Bool)

(assert (=> b!1580098 m!1451627))

(declare-fun m!1451629 () Bool)

(assert (=> b!1580105 m!1451629))

(declare-fun m!1451631 () Bool)

(assert (=> b!1580105 m!1451631))

(declare-fun m!1451633 () Bool)

(assert (=> b!1580101 m!1451633))

(declare-fun m!1451635 () Bool)

(assert (=> b!1580100 m!1451635))

(declare-fun m!1451637 () Bool)

(assert (=> b!1580103 m!1451637))

(declare-fun m!1451639 () Bool)

(assert (=> start!137168 m!1451639))

(declare-fun m!1451641 () Bool)

(assert (=> b!1580099 m!1451641))

(declare-fun m!1451643 () Bool)

(assert (=> b!1580104 m!1451643))

(push 1)

