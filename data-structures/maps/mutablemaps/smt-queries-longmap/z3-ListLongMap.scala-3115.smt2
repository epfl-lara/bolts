; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!43794 () Bool)

(assert start!43794)

(declare-fun res!288304 () Bool)

(declare-fun e!284746 () Bool)

(assert (=> start!43794 (=> (not res!288304) (not e!284746))))

(declare-datatypes ((B!1114 0))(
  ( (B!1115 (val!7009 Int)) )
))
(declare-datatypes ((tuple2!9216 0))(
  ( (tuple2!9217 (_1!4618 (_ BitVec 64)) (_2!4618 B!1114)) )
))
(declare-datatypes ((List!9308 0))(
  ( (Nil!9305) (Cons!9304 (h!10160 tuple2!9216) (t!15538 List!9308)) )
))
(declare-fun l!956 () List!9308)

(declare-fun isStrictlySorted!408 (List!9308) Bool)

(assert (=> start!43794 (= res!288304 (isStrictlySorted!408 l!956))))

(assert (=> start!43794 e!284746))

(declare-fun e!284745 () Bool)

(assert (=> start!43794 e!284745))

(assert (=> start!43794 true))

(declare-fun tp_is_empty!13923 () Bool)

(assert (=> start!43794 tp_is_empty!13923))

(declare-fun b!483759 () Bool)

(declare-fun res!288305 () Bool)

(assert (=> b!483759 (=> (not res!288305) (not e!284746))))

(declare-fun key!251 () (_ BitVec 64))

(declare-fun containsKey!374 (List!9308 (_ BitVec 64)) Bool)

(assert (=> b!483759 (= res!288305 (not (containsKey!374 l!956 key!251)))))

(declare-fun b!483760 () Bool)

(assert (=> b!483760 (= e!284746 false)))

(declare-fun value!166 () B!1114)

(declare-fun lt!219290 () List!9308)

(declare-fun insertStrictlySorted!230 (List!9308 (_ BitVec 64) B!1114) List!9308)

(assert (=> b!483760 (= lt!219290 (insertStrictlySorted!230 l!956 key!251 value!166))))

(declare-fun b!483761 () Bool)

(declare-fun tp!43474 () Bool)

(assert (=> b!483761 (= e!284745 (and tp_is_empty!13923 tp!43474))))

(assert (= (and start!43794 res!288304) b!483759))

(assert (= (and b!483759 res!288305) b!483760))

(get-info :version)

(assert (= (and start!43794 ((_ is Cons!9304) l!956)) b!483761))

(declare-fun m!464671 () Bool)

(assert (=> start!43794 m!464671))

(declare-fun m!464673 () Bool)

(assert (=> b!483759 m!464673))

(declare-fun m!464675 () Bool)

(assert (=> b!483760 m!464675))

(check-sat (not b!483759) (not b!483760) (not start!43794) (not b!483761) tp_is_empty!13923)
(check-sat)
