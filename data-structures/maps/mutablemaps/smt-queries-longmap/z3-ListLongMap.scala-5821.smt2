; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!75118 () Bool)

(assert start!75118)

(declare-fun res!601291 () Bool)

(declare-fun e!492643 () Bool)

(assert (=> start!75118 (=> (not res!601291) (not e!492643))))

(declare-datatypes ((B!1246 0))(
  ( (B!1247 (val!8929 Int)) )
))
(declare-datatypes ((tuple2!11878 0))(
  ( (tuple2!11879 (_1!5949 (_ BitVec 64)) (_2!5949 B!1246)) )
))
(declare-datatypes ((List!17729 0))(
  ( (Nil!17726) (Cons!17725 (h!18856 tuple2!11878) (t!25014 List!17729)) )
))
(declare-fun l!906 () List!17729)

(declare-fun isStrictlySorted!465 (List!17729) Bool)

(assert (=> start!75118 (= res!601291 (isStrictlySorted!465 l!906))))

(assert (=> start!75118 e!492643))

(declare-fun e!492644 () Bool)

(assert (=> start!75118 e!492644))

(assert (=> start!75118 true))

(declare-fun tp_is_empty!17757 () Bool)

(assert (=> start!75118 tp_is_empty!17757))

(declare-fun b!885129 () Bool)

(assert (=> b!885129 (= e!492643 (not true))))

(declare-fun v2!16 () B!1246)

(declare-fun key1!49 () (_ BitVec 64))

(declare-fun v1!38 () B!1246)

(declare-fun insertStrictlySorted!286 (List!17729 (_ BitVec 64) B!1246) List!17729)

(assert (=> b!885129 (= (insertStrictlySorted!286 (insertStrictlySorted!286 (t!25014 l!906) key1!49 v1!38) key1!49 v2!16) (insertStrictlySorted!286 (t!25014 l!906) key1!49 v2!16))))

(declare-datatypes ((Unit!30189 0))(
  ( (Unit!30190) )
))
(declare-fun lt!400932 () Unit!30189)

(declare-fun lemmaInsertStrictlySortedErasesIfSameKey!5 (List!17729 (_ BitVec 64) B!1246 B!1246) Unit!30189)

(assert (=> b!885129 (= lt!400932 (lemmaInsertStrictlySortedErasesIfSameKey!5 (t!25014 l!906) key1!49 v1!38 v2!16))))

(declare-fun b!885127 () Bool)

(declare-fun res!601290 () Bool)

(assert (=> b!885127 (=> (not res!601290) (not e!492643))))

(get-info :version)

(assert (=> b!885127 (= res!601290 (and ((_ is Cons!17725) l!906) (bvslt (_1!5949 (h!18856 l!906)) key1!49)))))

(declare-fun b!885130 () Bool)

(declare-fun tp!54243 () Bool)

(assert (=> b!885130 (= e!492644 (and tp_is_empty!17757 tp!54243))))

(declare-fun b!885128 () Bool)

(declare-fun res!601292 () Bool)

(assert (=> b!885128 (=> (not res!601292) (not e!492643))))

(assert (=> b!885128 (= res!601292 (isStrictlySorted!465 (t!25014 l!906)))))

(assert (= (and start!75118 res!601291) b!885127))

(assert (= (and b!885127 res!601290) b!885128))

(assert (= (and b!885128 res!601292) b!885129))

(assert (= (and start!75118 ((_ is Cons!17725) l!906)) b!885130))

(declare-fun m!825491 () Bool)

(assert (=> start!75118 m!825491))

(declare-fun m!825493 () Bool)

(assert (=> b!885129 m!825493))

(assert (=> b!885129 m!825493))

(declare-fun m!825495 () Bool)

(assert (=> b!885129 m!825495))

(declare-fun m!825497 () Bool)

(assert (=> b!885129 m!825497))

(declare-fun m!825499 () Bool)

(assert (=> b!885129 m!825499))

(declare-fun m!825501 () Bool)

(assert (=> b!885128 m!825501))

(check-sat (not b!885130) (not b!885128) (not start!75118) tp_is_empty!17757 (not b!885129))
(check-sat)
