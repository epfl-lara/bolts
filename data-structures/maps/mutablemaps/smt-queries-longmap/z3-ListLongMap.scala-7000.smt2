; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!88932 () Bool)

(assert start!88932)

(declare-fun b!1020137 () Bool)

(declare-fun res!683842 () Bool)

(declare-fun e!574219 () Bool)

(assert (=> b!1020137 (=> (not res!683842) (not e!574219))))

(declare-datatypes ((B!1708 0))(
  ( (B!1709 (val!11938 Int)) )
))
(declare-datatypes ((tuple2!15512 0))(
  ( (tuple2!15513 (_1!7766 (_ BitVec 64)) (_2!7766 B!1708)) )
))
(declare-datatypes ((List!21740 0))(
  ( (Nil!21737) (Cons!21736 (h!22934 tuple2!15512) (t!30757 List!21740)) )
))
(declare-fun l!1367 () List!21740)

(declare-fun isStrictlySorted!687 (List!21740) Bool)

(assert (=> b!1020137 (= res!683842 (isStrictlySorted!687 (t!30757 l!1367)))))

(declare-fun b!1020138 () Bool)

(declare-fun res!683843 () Bool)

(assert (=> b!1020138 (=> (not res!683843) (not e!574219))))

(declare-fun lt!449775 () tuple2!15512)

(get-info :version)

(assert (=> b!1020138 (= res!683843 (and ((_ is Cons!21736) l!1367) (not (= (h!22934 l!1367) lt!449775))))))

(declare-fun b!1020139 () Bool)

(declare-fun e!574217 () Bool)

(declare-fun tp_is_empty!23775 () Bool)

(declare-fun tp!71213 () Bool)

(assert (=> b!1020139 (= e!574217 (and tp_is_empty!23775 tp!71213))))

(declare-fun b!1020140 () Bool)

(declare-fun e!574218 () Bool)

(assert (=> b!1020140 (= e!574218 e!574219)))

(declare-fun res!683844 () Bool)

(assert (=> b!1020140 (=> (not res!683844) (not e!574219))))

(declare-fun contains!5931 (List!21740 tuple2!15512) Bool)

(assert (=> b!1020140 (= res!683844 (contains!5931 l!1367 lt!449775))))

(declare-fun key!393 () (_ BitVec 64))

(declare-fun value!188 () B!1708)

(assert (=> b!1020140 (= lt!449775 (tuple2!15513 key!393 value!188))))

(declare-fun res!683841 () Bool)

(assert (=> start!88932 (=> (not res!683841) (not e!574218))))

(assert (=> start!88932 (= res!683841 (isStrictlySorted!687 l!1367))))

(assert (=> start!88932 e!574218))

(assert (=> start!88932 e!574217))

(assert (=> start!88932 true))

(assert (=> start!88932 tp_is_empty!23775))

(declare-fun b!1020136 () Bool)

(assert (=> b!1020136 (= e!574219 false)))

(declare-fun lt!449776 () Bool)

(assert (=> b!1020136 (= lt!449776 (contains!5931 (t!30757 l!1367) lt!449775))))

(assert (= (and start!88932 res!683841) b!1020140))

(assert (= (and b!1020140 res!683844) b!1020138))

(assert (= (and b!1020138 res!683843) b!1020137))

(assert (= (and b!1020137 res!683842) b!1020136))

(assert (= (and start!88932 ((_ is Cons!21736) l!1367)) b!1020139))

(declare-fun m!940323 () Bool)

(assert (=> b!1020137 m!940323))

(declare-fun m!940325 () Bool)

(assert (=> b!1020140 m!940325))

(declare-fun m!940327 () Bool)

(assert (=> start!88932 m!940327))

(declare-fun m!940329 () Bool)

(assert (=> b!1020136 m!940329))

(check-sat tp_is_empty!23775 (not b!1020139) (not b!1020137) (not b!1020136) (not start!88932) (not b!1020140))
(check-sat)
