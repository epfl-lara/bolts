; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!75148 () Bool)

(assert start!75148)

(declare-fun b!885426 () Bool)

(declare-fun e!492809 () Bool)

(assert (=> b!885426 (= e!492809 (not true))))

(declare-datatypes ((B!1258 0))(
  ( (B!1259 (val!8935 Int)) )
))
(declare-fun v2!16 () B!1258)

(declare-fun key1!49 () (_ BitVec 64))

(declare-fun v1!38 () B!1258)

(declare-datatypes ((tuple2!11890 0))(
  ( (tuple2!11891 (_1!5955 (_ BitVec 64)) (_2!5955 B!1258)) )
))
(declare-datatypes ((List!17735 0))(
  ( (Nil!17732) (Cons!17731 (h!18862 tuple2!11890) (t!25020 List!17735)) )
))
(declare-fun l!906 () List!17735)

(declare-fun insertStrictlySorted!292 (List!17735 (_ BitVec 64) B!1258) List!17735)

(assert (=> b!885426 (= (insertStrictlySorted!292 (insertStrictlySorted!292 (t!25020 l!906) key1!49 v1!38) key1!49 v2!16) (insertStrictlySorted!292 (t!25020 l!906) key1!49 v2!16))))

(declare-datatypes ((Unit!30201 0))(
  ( (Unit!30202) )
))
(declare-fun lt!400977 () Unit!30201)

(declare-fun lemmaInsertStrictlySortedErasesIfSameKey!11 (List!17735 (_ BitVec 64) B!1258 B!1258) Unit!30201)

(assert (=> b!885426 (= lt!400977 (lemmaInsertStrictlySortedErasesIfSameKey!11 (t!25020 l!906) key1!49 v1!38 v2!16))))

(declare-fun b!885427 () Bool)

(declare-fun e!492808 () Bool)

(declare-fun tp_is_empty!17769 () Bool)

(declare-fun tp!54270 () Bool)

(assert (=> b!885427 (= e!492808 (and tp_is_empty!17769 tp!54270))))

(declare-fun res!601412 () Bool)

(assert (=> start!75148 (=> (not res!601412) (not e!492809))))

(declare-fun isStrictlySorted!471 (List!17735) Bool)

(assert (=> start!75148 (= res!601412 (isStrictlySorted!471 l!906))))

(assert (=> start!75148 e!492809))

(assert (=> start!75148 e!492808))

(assert (=> start!75148 true))

(assert (=> start!75148 tp_is_empty!17769))

(declare-fun b!885425 () Bool)

(declare-fun res!601410 () Bool)

(assert (=> b!885425 (=> (not res!601410) (not e!492809))))

(assert (=> b!885425 (= res!601410 (isStrictlySorted!471 (t!25020 l!906)))))

(declare-fun b!885424 () Bool)

(declare-fun res!601411 () Bool)

(assert (=> b!885424 (=> (not res!601411) (not e!492809))))

(get-info :version)

(assert (=> b!885424 (= res!601411 (and ((_ is Cons!17731) l!906) (bvslt (_1!5955 (h!18862 l!906)) key1!49)))))

(assert (= (and start!75148 res!601412) b!885424))

(assert (= (and b!885424 res!601411) b!885425))

(assert (= (and b!885425 res!601410) b!885426))

(assert (= (and start!75148 ((_ is Cons!17731) l!906)) b!885427))

(declare-fun m!825713 () Bool)

(assert (=> b!885426 m!825713))

(assert (=> b!885426 m!825713))

(declare-fun m!825715 () Bool)

(assert (=> b!885426 m!825715))

(declare-fun m!825717 () Bool)

(assert (=> b!885426 m!825717))

(declare-fun m!825719 () Bool)

(assert (=> b!885426 m!825719))

(declare-fun m!825721 () Bool)

(assert (=> start!75148 m!825721))

(declare-fun m!825723 () Bool)

(assert (=> b!885425 m!825723))

(check-sat (not b!885427) (not b!885426) (not b!885425) tp_is_empty!17769 (not start!75148))
(check-sat)
