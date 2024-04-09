; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75150 () Bool)

(assert start!75150)

(declare-fun b!885437 () Bool)

(declare-fun res!601421 () Bool)

(declare-fun e!492815 () Bool)

(assert (=> b!885437 (=> (not res!601421) (not e!492815))))

(declare-datatypes ((B!1260 0))(
  ( (B!1261 (val!8936 Int)) )
))
(declare-datatypes ((tuple2!11892 0))(
  ( (tuple2!11893 (_1!5956 (_ BitVec 64)) (_2!5956 B!1260)) )
))
(declare-datatypes ((List!17736 0))(
  ( (Nil!17733) (Cons!17732 (h!18863 tuple2!11892) (t!25021 List!17736)) )
))
(declare-fun l!906 () List!17736)

(declare-fun isStrictlySorted!472 (List!17736) Bool)

(assert (=> b!885437 (= res!601421 (isStrictlySorted!472 (t!25021 l!906)))))

(declare-fun res!601419 () Bool)

(assert (=> start!75150 (=> (not res!601419) (not e!492815))))

(assert (=> start!75150 (= res!601419 (isStrictlySorted!472 l!906))))

(assert (=> start!75150 e!492815))

(declare-fun e!492814 () Bool)

(assert (=> start!75150 e!492814))

(assert (=> start!75150 true))

(declare-fun tp_is_empty!17771 () Bool)

(assert (=> start!75150 tp_is_empty!17771))

(declare-fun b!885439 () Bool)

(declare-fun tp!54273 () Bool)

(assert (=> b!885439 (= e!492814 (and tp_is_empty!17771 tp!54273))))

(declare-fun b!885438 () Bool)

(assert (=> b!885438 (= e!492815 (not true))))

(declare-fun v2!16 () B!1260)

(declare-fun key1!49 () (_ BitVec 64))

(declare-fun v1!38 () B!1260)

(declare-fun insertStrictlySorted!293 (List!17736 (_ BitVec 64) B!1260) List!17736)

(assert (=> b!885438 (= (insertStrictlySorted!293 (insertStrictlySorted!293 (t!25021 l!906) key1!49 v1!38) key1!49 v2!16) (insertStrictlySorted!293 (t!25021 l!906) key1!49 v2!16))))

(declare-datatypes ((Unit!30203 0))(
  ( (Unit!30204) )
))
(declare-fun lt!400980 () Unit!30203)

(declare-fun lemmaInsertStrictlySortedErasesIfSameKey!12 (List!17736 (_ BitVec 64) B!1260 B!1260) Unit!30203)

(assert (=> b!885438 (= lt!400980 (lemmaInsertStrictlySortedErasesIfSameKey!12 (t!25021 l!906) key1!49 v1!38 v2!16))))

(declare-fun b!885436 () Bool)

(declare-fun res!601420 () Bool)

(assert (=> b!885436 (=> (not res!601420) (not e!492815))))

(assert (=> b!885436 (= res!601420 (and (is-Cons!17732 l!906) (bvslt (_1!5956 (h!18863 l!906)) key1!49)))))

(assert (= (and start!75150 res!601419) b!885436))

(assert (= (and b!885436 res!601420) b!885437))

(assert (= (and b!885437 res!601421) b!885438))

(assert (= (and start!75150 (is-Cons!17732 l!906)) b!885439))

(declare-fun m!825725 () Bool)

(assert (=> b!885437 m!825725))

(declare-fun m!825727 () Bool)

(assert (=> start!75150 m!825727))

(declare-fun m!825729 () Bool)

(assert (=> b!885438 m!825729))

(assert (=> b!885438 m!825729))

(declare-fun m!825731 () Bool)

(assert (=> b!885438 m!825731))

(declare-fun m!825733 () Bool)

(assert (=> b!885438 m!825733))

(declare-fun m!825735 () Bool)

(assert (=> b!885438 m!825735))

(push 1)

(assert (not b!885439))

(assert tp_is_empty!17771)

(assert (not start!75150))

(assert (not b!885437))

(assert (not b!885438))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

