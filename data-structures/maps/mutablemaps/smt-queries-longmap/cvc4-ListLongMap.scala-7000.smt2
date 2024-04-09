; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!88934 () Bool)

(assert start!88934)

(declare-fun b!1020151 () Bool)

(declare-fun e!574227 () Bool)

(declare-fun tp_is_empty!23777 () Bool)

(declare-fun tp!71216 () Bool)

(assert (=> b!1020151 (= e!574227 (and tp_is_empty!23777 tp!71216))))

(declare-fun b!1020152 () Bool)

(declare-fun e!574226 () Bool)

(assert (=> b!1020152 (= e!574226 false)))

(declare-fun lt!449781 () Bool)

(declare-datatypes ((B!1710 0))(
  ( (B!1711 (val!11939 Int)) )
))
(declare-datatypes ((tuple2!15514 0))(
  ( (tuple2!15515 (_1!7767 (_ BitVec 64)) (_2!7767 B!1710)) )
))
(declare-datatypes ((List!21741 0))(
  ( (Nil!21738) (Cons!21737 (h!22935 tuple2!15514) (t!30758 List!21741)) )
))
(declare-fun l!1367 () List!21741)

(declare-fun lt!449782 () tuple2!15514)

(declare-fun contains!5932 (List!21741 tuple2!15514) Bool)

(assert (=> b!1020152 (= lt!449781 (contains!5932 (t!30758 l!1367) lt!449782))))

(declare-fun b!1020153 () Bool)

(declare-fun res!683856 () Bool)

(assert (=> b!1020153 (=> (not res!683856) (not e!574226))))

(assert (=> b!1020153 (= res!683856 (and (is-Cons!21737 l!1367) (not (= (h!22935 l!1367) lt!449782))))))

(declare-fun b!1020154 () Bool)

(declare-fun res!683854 () Bool)

(assert (=> b!1020154 (=> (not res!683854) (not e!574226))))

(declare-fun isStrictlySorted!688 (List!21741) Bool)

(assert (=> b!1020154 (= res!683854 (isStrictlySorted!688 (t!30758 l!1367)))))

(declare-fun b!1020155 () Bool)

(declare-fun e!574228 () Bool)

(assert (=> b!1020155 (= e!574228 e!574226)))

(declare-fun res!683853 () Bool)

(assert (=> b!1020155 (=> (not res!683853) (not e!574226))))

(assert (=> b!1020155 (= res!683853 (contains!5932 l!1367 lt!449782))))

(declare-fun key!393 () (_ BitVec 64))

(declare-fun value!188 () B!1710)

(assert (=> b!1020155 (= lt!449782 (tuple2!15515 key!393 value!188))))

(declare-fun res!683855 () Bool)

(assert (=> start!88934 (=> (not res!683855) (not e!574228))))

(assert (=> start!88934 (= res!683855 (isStrictlySorted!688 l!1367))))

(assert (=> start!88934 e!574228))

(assert (=> start!88934 e!574227))

(assert (=> start!88934 true))

(assert (=> start!88934 tp_is_empty!23777))

(assert (= (and start!88934 res!683855) b!1020155))

(assert (= (and b!1020155 res!683853) b!1020153))

(assert (= (and b!1020153 res!683856) b!1020154))

(assert (= (and b!1020154 res!683854) b!1020152))

(assert (= (and start!88934 (is-Cons!21737 l!1367)) b!1020151))

(declare-fun m!940331 () Bool)

(assert (=> b!1020152 m!940331))

(declare-fun m!940333 () Bool)

(assert (=> b!1020154 m!940333))

(declare-fun m!940335 () Bool)

(assert (=> b!1020155 m!940335))

(declare-fun m!940337 () Bool)

(assert (=> start!88934 m!940337))

(push 1)

