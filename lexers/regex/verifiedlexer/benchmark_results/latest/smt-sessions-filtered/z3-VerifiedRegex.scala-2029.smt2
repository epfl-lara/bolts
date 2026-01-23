; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!103974 () Bool)

(assert start!103974)

(declare-fun b!1176795 () Bool)

(declare-fun e!755184 () Bool)

(declare-fun tp_is_empty!5751 () Bool)

(declare-fun tp!335114 () Bool)

(assert (=> b!1176795 (= e!755184 (and tp_is_empty!5751 tp!335114))))

(declare-fun b!1176794 () Bool)

(declare-fun e!755185 () Bool)

(assert (=> b!1176794 (= e!755185 false)))

(declare-fun lt!405968 () Int)

(declare-datatypes ((B!1229 0))(
  ( (B!1230 (val!3724 Int)) )
))
(declare-datatypes ((List!11671 0))(
  ( (Nil!11647) (Cons!11647 (h!17048 B!1229) (t!111163 List!11671)) )
))
(declare-fun l!2952 () List!11671)

(declare-fun size!9211 (List!11671) Int)

(assert (=> b!1176794 (= lt!405968 (size!9211 (t!111163 l!2952)))))

(declare-fun b!1176793 () Bool)

(declare-fun res!532131 () Bool)

(assert (=> b!1176793 (=> (not res!532131) (not e!755185))))

(declare-fun i!757 () Int)

(declare-fun j!89 () Int)

(get-info :version)

(assert (=> b!1176793 (= res!532131 (and (not ((_ is Nil!11647) l!2952)) (or (not (= i!757 0)) (not (= j!89 0))) (<= i!757 0) (>= (- j!89 1) i!757)))))

(declare-fun b!1176792 () Bool)

(declare-fun res!532133 () Bool)

(assert (=> b!1176792 (=> (not res!532133) (not e!755185))))

(assert (=> b!1176792 (= res!532133 (<= j!89 (size!9211 l!2952)))))

(declare-fun res!532132 () Bool)

(assert (=> start!103974 (=> (not res!532132) (not e!755185))))

(assert (=> start!103974 (= res!532132 (and (>= i!757 0) (>= j!89 i!757)))))

(assert (=> start!103974 e!755185))

(assert (=> start!103974 true))

(assert (=> start!103974 e!755184))

(assert (= (and start!103974 res!532132) b!1176792))

(assert (= (and b!1176792 res!532133) b!1176793))

(assert (= (and b!1176793 res!532131) b!1176794))

(assert (= (and start!103974 ((_ is Cons!11647) l!2952)) b!1176795))

(declare-fun m!1354251 () Bool)

(assert (=> b!1176794 m!1354251))

(declare-fun m!1354253 () Bool)

(assert (=> b!1176792 m!1354253))

(check-sat (not b!1176792) (not b!1176794) (not b!1176795) tp_is_empty!5751)
(check-sat)
