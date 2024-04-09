; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!43782 () Bool)

(assert start!43782)

(declare-fun b!483693 () Bool)

(declare-fun e!284705 () Bool)

(assert (=> b!483693 (= e!284705 (not true))))

(declare-datatypes ((B!1102 0))(
  ( (B!1103 (val!7003 Int)) )
))
(declare-datatypes ((tuple2!9204 0))(
  ( (tuple2!9205 (_1!4612 (_ BitVec 64)) (_2!4612 B!1102)) )
))
(declare-datatypes ((List!9302 0))(
  ( (Nil!9299) (Cons!9298 (h!10154 tuple2!9204) (t!15532 List!9302)) )
))
(declare-fun l!956 () List!9302)

(declare-fun key!251 () (_ BitVec 64))

(declare-fun value!166 () B!1102)

(declare-fun length!9 (List!9302) Int)

(declare-fun insertStrictlySorted!224 (List!9302 (_ BitVec 64) B!1102) List!9302)

(assert (=> b!483693 (= (length!9 (insertStrictlySorted!224 (t!15532 l!956) key!251 value!166)) (+ 1 (length!9 (t!15532 l!956))))))

(declare-datatypes ((Unit!14146 0))(
  ( (Unit!14147) )
))
(declare-fun lt!219269 () Unit!14146)

(declare-fun lemmaAddNewKeyIncrementSize!2 (List!9302 (_ BitVec 64) B!1102) Unit!14146)

(assert (=> b!483693 (= lt!219269 (lemmaAddNewKeyIncrementSize!2 (t!15532 l!956) key!251 value!166))))

(declare-fun b!483694 () Bool)

(declare-fun res!288259 () Bool)

(declare-fun e!284707 () Bool)

(assert (=> b!483694 (=> (not res!288259) (not e!284707))))

(declare-fun containsKey!368 (List!9302 (_ BitVec 64)) Bool)

(assert (=> b!483694 (= res!288259 (not (containsKey!368 l!956 key!251)))))

(declare-fun b!483696 () Bool)

(declare-fun res!288258 () Bool)

(assert (=> b!483696 (=> (not res!288258) (not e!284705))))

(declare-fun isStrictlySorted!402 (List!9302) Bool)

(assert (=> b!483696 (= res!288258 (isStrictlySorted!402 (t!15532 l!956)))))

(declare-fun b!483697 () Bool)

(assert (=> b!483697 (= e!284707 e!284705)))

(declare-fun res!288260 () Bool)

(assert (=> b!483697 (=> (not res!288260) (not e!284705))))

(get-info :version)

(assert (=> b!483697 (= res!288260 (and ((_ is Cons!9298) l!956) (bvslt (_1!4612 (h!10154 l!956)) key!251)))))

(declare-fun lt!219268 () List!9302)

(assert (=> b!483697 (= lt!219268 (insertStrictlySorted!224 l!956 key!251 value!166))))

(declare-fun b!483698 () Bool)

(declare-fun res!288256 () Bool)

(assert (=> b!483698 (=> (not res!288256) (not e!284705))))

(assert (=> b!483698 (= res!288256 (not (containsKey!368 (t!15532 l!956) key!251)))))

(declare-fun res!288257 () Bool)

(assert (=> start!43782 (=> (not res!288257) (not e!284707))))

(assert (=> start!43782 (= res!288257 (isStrictlySorted!402 l!956))))

(assert (=> start!43782 e!284707))

(declare-fun e!284706 () Bool)

(assert (=> start!43782 e!284706))

(assert (=> start!43782 true))

(declare-fun tp_is_empty!13911 () Bool)

(assert (=> start!43782 tp_is_empty!13911))

(declare-fun b!483695 () Bool)

(declare-fun tp!43456 () Bool)

(assert (=> b!483695 (= e!284706 (and tp_is_empty!13911 tp!43456))))

(assert (= (and start!43782 res!288257) b!483694))

(assert (= (and b!483694 res!288259) b!483697))

(assert (= (and b!483697 res!288260) b!483696))

(assert (= (and b!483696 res!288258) b!483698))

(assert (= (and b!483698 res!288256) b!483693))

(assert (= (and start!43782 ((_ is Cons!9298) l!956)) b!483695))

(declare-fun m!464611 () Bool)

(assert (=> b!483694 m!464611))

(declare-fun m!464613 () Bool)

(assert (=> b!483693 m!464613))

(assert (=> b!483693 m!464613))

(declare-fun m!464615 () Bool)

(assert (=> b!483693 m!464615))

(declare-fun m!464617 () Bool)

(assert (=> b!483693 m!464617))

(declare-fun m!464619 () Bool)

(assert (=> b!483693 m!464619))

(declare-fun m!464621 () Bool)

(assert (=> start!43782 m!464621))

(declare-fun m!464623 () Bool)

(assert (=> b!483696 m!464623))

(declare-fun m!464625 () Bool)

(assert (=> b!483697 m!464625))

(declare-fun m!464627 () Bool)

(assert (=> b!483698 m!464627))

(check-sat tp_is_empty!13911 (not start!43782) (not b!483693) (not b!483697) (not b!483694) (not b!483698) (not b!483695) (not b!483696))
(check-sat)
