; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75146 () Bool)

(assert start!75146)

(declare-fun b!885414 () Bool)

(declare-fun e!492802 () Bool)

(assert (=> b!885414 (= e!492802 (not true))))

(declare-datatypes ((B!1256 0))(
  ( (B!1257 (val!8934 Int)) )
))
(declare-fun v2!16 () B!1256)

(declare-fun key1!49 () (_ BitVec 64))

(declare-fun v1!38 () B!1256)

(declare-datatypes ((tuple2!11888 0))(
  ( (tuple2!11889 (_1!5954 (_ BitVec 64)) (_2!5954 B!1256)) )
))
(declare-datatypes ((List!17734 0))(
  ( (Nil!17731) (Cons!17730 (h!18861 tuple2!11888) (t!25019 List!17734)) )
))
(declare-fun l!906 () List!17734)

(declare-fun insertStrictlySorted!291 (List!17734 (_ BitVec 64) B!1256) List!17734)

(assert (=> b!885414 (= (insertStrictlySorted!291 (insertStrictlySorted!291 (t!25019 l!906) key1!49 v1!38) key1!49 v2!16) (insertStrictlySorted!291 (t!25019 l!906) key1!49 v2!16))))

(declare-datatypes ((Unit!30199 0))(
  ( (Unit!30200) )
))
(declare-fun lt!400974 () Unit!30199)

(declare-fun lemmaInsertStrictlySortedErasesIfSameKey!10 (List!17734 (_ BitVec 64) B!1256 B!1256) Unit!30199)

(assert (=> b!885414 (= lt!400974 (lemmaInsertStrictlySortedErasesIfSameKey!10 (t!25019 l!906) key1!49 v1!38 v2!16))))

(declare-fun b!885415 () Bool)

(declare-fun e!492803 () Bool)

(declare-fun tp_is_empty!17767 () Bool)

(declare-fun tp!54267 () Bool)

(assert (=> b!885415 (= e!492803 (and tp_is_empty!17767 tp!54267))))

(declare-fun b!885412 () Bool)

(declare-fun res!601401 () Bool)

(assert (=> b!885412 (=> (not res!601401) (not e!492802))))

(assert (=> b!885412 (= res!601401 (and (is-Cons!17730 l!906) (bvslt (_1!5954 (h!18861 l!906)) key1!49)))))

(declare-fun b!885413 () Bool)

(declare-fun res!601403 () Bool)

(assert (=> b!885413 (=> (not res!601403) (not e!492802))))

(declare-fun isStrictlySorted!470 (List!17734) Bool)

(assert (=> b!885413 (= res!601403 (isStrictlySorted!470 (t!25019 l!906)))))

(declare-fun res!601402 () Bool)

(assert (=> start!75146 (=> (not res!601402) (not e!492802))))

(assert (=> start!75146 (= res!601402 (isStrictlySorted!470 l!906))))

(assert (=> start!75146 e!492802))

(assert (=> start!75146 e!492803))

(assert (=> start!75146 true))

(assert (=> start!75146 tp_is_empty!17767))

(assert (= (and start!75146 res!601402) b!885412))

(assert (= (and b!885412 res!601401) b!885413))

(assert (= (and b!885413 res!601403) b!885414))

(assert (= (and start!75146 (is-Cons!17730 l!906)) b!885415))

(declare-fun m!825701 () Bool)

(assert (=> b!885414 m!825701))

(assert (=> b!885414 m!825701))

(declare-fun m!825703 () Bool)

(assert (=> b!885414 m!825703))

(declare-fun m!825705 () Bool)

(assert (=> b!885414 m!825705))

(declare-fun m!825707 () Bool)

(assert (=> b!885414 m!825707))

(declare-fun m!825709 () Bool)

(assert (=> b!885413 m!825709))

(declare-fun m!825711 () Bool)

(assert (=> start!75146 m!825711))

(push 1)

(assert (not b!885415))

(assert tp_is_empty!17767)

(assert (not b!885413))

(assert (not start!75146))

(assert (not b!885414))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

