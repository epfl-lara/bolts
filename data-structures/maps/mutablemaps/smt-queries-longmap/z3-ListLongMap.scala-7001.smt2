; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!88938 () Bool)

(assert start!88938)

(declare-fun b!1020186 () Bool)

(declare-fun e!574246 () Bool)

(declare-fun tp_is_empty!23781 () Bool)

(declare-fun tp!71222 () Bool)

(assert (=> b!1020186 (= e!574246 (and tp_is_empty!23781 tp!71222))))

(declare-fun b!1020187 () Bool)

(declare-fun res!683882 () Bool)

(declare-fun e!574245 () Bool)

(assert (=> b!1020187 (=> (not res!683882) (not e!574245))))

(declare-datatypes ((B!1714 0))(
  ( (B!1715 (val!11941 Int)) )
))
(declare-datatypes ((tuple2!15518 0))(
  ( (tuple2!15519 (_1!7769 (_ BitVec 64)) (_2!7769 B!1714)) )
))
(declare-datatypes ((List!21743 0))(
  ( (Nil!21740) (Cons!21739 (h!22937 tuple2!15518) (t!30760 List!21743)) )
))
(declare-fun l!1367 () List!21743)

(declare-fun lt!449793 () tuple2!15518)

(declare-fun contains!5934 (List!21743 tuple2!15518) Bool)

(assert (=> b!1020187 (= res!683882 (contains!5934 (t!30760 l!1367) lt!449793))))

(declare-fun b!1020188 () Bool)

(assert (=> b!1020188 (= e!574245 (not true))))

(declare-fun key!393 () (_ BitVec 64))

(declare-fun containsKey!552 (List!21743 (_ BitVec 64)) Bool)

(assert (=> b!1020188 (containsKey!552 (t!30760 l!1367) key!393)))

(declare-fun value!188 () B!1714)

(declare-datatypes ((Unit!33260 0))(
  ( (Unit!33261) )
))
(declare-fun lt!449794 () Unit!33260)

(declare-fun lemmaContainsTupleThenContainsKey!11 (List!21743 (_ BitVec 64) B!1714) Unit!33260)

(assert (=> b!1020188 (= lt!449794 (lemmaContainsTupleThenContainsKey!11 (t!30760 l!1367) key!393 value!188))))

(declare-fun b!1020189 () Bool)

(declare-fun res!683884 () Bool)

(assert (=> b!1020189 (=> (not res!683884) (not e!574245))))

(get-info :version)

(assert (=> b!1020189 (= res!683884 (and ((_ is Cons!21739) l!1367) (not (= (h!22937 l!1367) lt!449793))))))

(declare-fun res!683883 () Bool)

(declare-fun e!574244 () Bool)

(assert (=> start!88938 (=> (not res!683883) (not e!574244))))

(declare-fun isStrictlySorted!690 (List!21743) Bool)

(assert (=> start!88938 (= res!683883 (isStrictlySorted!690 l!1367))))

(assert (=> start!88938 e!574244))

(assert (=> start!88938 e!574246))

(assert (=> start!88938 true))

(assert (=> start!88938 tp_is_empty!23781))

(declare-fun b!1020190 () Bool)

(assert (=> b!1020190 (= e!574244 e!574245)))

(declare-fun res!683886 () Bool)

(assert (=> b!1020190 (=> (not res!683886) (not e!574245))))

(assert (=> b!1020190 (= res!683886 (contains!5934 l!1367 lt!449793))))

(assert (=> b!1020190 (= lt!449793 (tuple2!15519 key!393 value!188))))

(declare-fun b!1020191 () Bool)

(declare-fun res!683885 () Bool)

(assert (=> b!1020191 (=> (not res!683885) (not e!574245))))

(assert (=> b!1020191 (= res!683885 (isStrictlySorted!690 (t!30760 l!1367)))))

(assert (= (and start!88938 res!683883) b!1020190))

(assert (= (and b!1020190 res!683886) b!1020189))

(assert (= (and b!1020189 res!683884) b!1020191))

(assert (= (and b!1020191 res!683885) b!1020187))

(assert (= (and b!1020187 res!683882) b!1020188))

(assert (= (and start!88938 ((_ is Cons!21739) l!1367)) b!1020186))

(declare-fun m!940351 () Bool)

(assert (=> b!1020191 m!940351))

(declare-fun m!940353 () Bool)

(assert (=> b!1020188 m!940353))

(declare-fun m!940355 () Bool)

(assert (=> b!1020188 m!940355))

(declare-fun m!940357 () Bool)

(assert (=> b!1020190 m!940357))

(declare-fun m!940359 () Bool)

(assert (=> start!88938 m!940359))

(declare-fun m!940361 () Bool)

(assert (=> b!1020187 m!940361))

(check-sat (not b!1020188) (not start!88938) (not b!1020187) tp_is_empty!23781 (not b!1020190) (not b!1020186) (not b!1020191))
(check-sat)
