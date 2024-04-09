; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!43788 () Bool)

(assert start!43788)

(declare-fun res!288287 () Bool)

(declare-fun e!284727 () Bool)

(assert (=> start!43788 (=> (not res!288287) (not e!284727))))

(declare-datatypes ((B!1108 0))(
  ( (B!1109 (val!7006 Int)) )
))
(declare-datatypes ((tuple2!9210 0))(
  ( (tuple2!9211 (_1!4615 (_ BitVec 64)) (_2!4615 B!1108)) )
))
(declare-datatypes ((List!9305 0))(
  ( (Nil!9302) (Cons!9301 (h!10157 tuple2!9210) (t!15535 List!9305)) )
))
(declare-fun l!956 () List!9305)

(declare-fun isStrictlySorted!405 (List!9305) Bool)

(assert (=> start!43788 (= res!288287 (isStrictlySorted!405 l!956))))

(assert (=> start!43788 e!284727))

(declare-fun e!284728 () Bool)

(assert (=> start!43788 e!284728))

(assert (=> start!43788 true))

(declare-fun tp_is_empty!13917 () Bool)

(assert (=> start!43788 tp_is_empty!13917))

(declare-fun b!483732 () Bool)

(declare-fun res!288286 () Bool)

(assert (=> b!483732 (=> (not res!288286) (not e!284727))))

(declare-fun key!251 () (_ BitVec 64))

(declare-fun containsKey!371 (List!9305 (_ BitVec 64)) Bool)

(assert (=> b!483732 (= res!288286 (not (containsKey!371 l!956 key!251)))))

(declare-fun b!483733 () Bool)

(assert (=> b!483733 (= e!284727 false)))

(declare-fun lt!219281 () List!9305)

(declare-fun value!166 () B!1108)

(declare-fun insertStrictlySorted!227 (List!9305 (_ BitVec 64) B!1108) List!9305)

(assert (=> b!483733 (= lt!219281 (insertStrictlySorted!227 l!956 key!251 value!166))))

(declare-fun b!483734 () Bool)

(declare-fun tp!43465 () Bool)

(assert (=> b!483734 (= e!284728 (and tp_is_empty!13917 tp!43465))))

(assert (= (and start!43788 res!288287) b!483732))

(assert (= (and b!483732 res!288286) b!483733))

(get-info :version)

(assert (= (and start!43788 ((_ is Cons!9301) l!956)) b!483734))

(declare-fun m!464653 () Bool)

(assert (=> start!43788 m!464653))

(declare-fun m!464655 () Bool)

(assert (=> b!483732 m!464655))

(declare-fun m!464657 () Bool)

(assert (=> b!483733 m!464657))

(check-sat (not b!483732) (not b!483733) (not b!483734) tp_is_empty!13917 (not start!43788))
(check-sat)
