; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!43986 () Bool)

(assert start!43986)

(declare-fun res!288931 () Bool)

(declare-fun e!285577 () Bool)

(assert (=> start!43986 (=> (not res!288931) (not e!285577))))

(declare-datatypes ((B!1156 0))(
  ( (B!1157 (val!7030 Int)) )
))
(declare-datatypes ((tuple2!9258 0))(
  ( (tuple2!9259 (_1!4639 (_ BitVec 64)) (_2!4639 B!1156)) )
))
(declare-datatypes ((List!9329 0))(
  ( (Nil!9326) (Cons!9325 (h!10181 tuple2!9258) (t!15562 List!9329)) )
))
(declare-fun l!956 () List!9329)

(declare-fun isStrictlySorted!429 (List!9329) Bool)

(assert (=> start!43986 (= res!288931 (isStrictlySorted!429 l!956))))

(assert (=> start!43986 e!285577))

(declare-fun e!285576 () Bool)

(assert (=> start!43986 e!285576))

(assert (=> start!43986 true))

(declare-fun tp_is_empty!13965 () Bool)

(assert (=> start!43986 tp_is_empty!13965))

(declare-fun b!485028 () Bool)

(declare-fun res!288932 () Bool)

(assert (=> b!485028 (=> (not res!288932) (not e!285577))))

(declare-fun key!251 () (_ BitVec 64))

(declare-fun containsKey!395 (List!9329 (_ BitVec 64)) Bool)

(assert (=> b!485028 (= res!288932 (not (containsKey!395 l!956 key!251)))))

(declare-fun b!485029 () Bool)

(assert (=> b!485029 (= e!285577 false)))

(declare-fun lt!219464 () List!9329)

(declare-fun value!166 () B!1156)

(declare-fun insertStrictlySorted!248 (List!9329 (_ BitVec 64) B!1156) List!9329)

(assert (=> b!485029 (= lt!219464 (insertStrictlySorted!248 l!956 key!251 value!166))))

(declare-fun b!485030 () Bool)

(declare-fun tp!43594 () Bool)

(assert (=> b!485030 (= e!285576 (and tp_is_empty!13965 tp!43594))))

(assert (= (and start!43986 res!288931) b!485028))

(assert (= (and b!485028 res!288932) b!485029))

(get-info :version)

(assert (= (and start!43986 ((_ is Cons!9325) l!956)) b!485030))

(declare-fun m!465295 () Bool)

(assert (=> start!43986 m!465295))

(declare-fun m!465297 () Bool)

(assert (=> b!485028 m!465297))

(declare-fun m!465299 () Bool)

(assert (=> b!485029 m!465299))

(check-sat (not b!485029) (not b!485030) (not b!485028) (not start!43986) tp_is_empty!13965)
(check-sat)
