; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!87984 () Bool)

(assert start!87984)

(declare-fun b!1015630 () Bool)

(assert (=> b!1015630 true))

(assert (=> b!1015630 true))

(declare-fun b!1015629 () Bool)

(declare-fun res!681329 () Bool)

(declare-fun e!571403 () Bool)

(assert (=> b!1015629 (=> (not res!681329) (not e!571403))))

(declare-datatypes ((B!1498 0))(
  ( (B!1499 (val!11833 Int)) )
))
(declare-datatypes ((tuple2!15302 0))(
  ( (tuple2!15303 (_1!7661 (_ BitVec 64)) (_2!7661 B!1498)) )
))
(declare-datatypes ((List!21603 0))(
  ( (Nil!21600) (Cons!21599 (h!22797 tuple2!15302) (t!30612 List!21603)) )
))
(declare-fun l!1114 () List!21603)

(declare-fun isEmpty!865 (List!21603) Bool)

(assert (=> b!1015629 (= res!681329 (not (isEmpty!865 l!1114)))))

(declare-fun res!681330 () Bool)

(assert (=> b!1015630 (=> (not res!681330) (not e!571403))))

(declare-datatypes ((List!21604 0))(
  ( (Nil!21601) (Cons!21600 (h!22798 (_ BitVec 64)) (t!30613 List!21604)) )
))
(declare-fun keys!40 () List!21604)

(declare-fun lambda!923 () Int)

(declare-fun forall!266 (List!21604 Int) Bool)

(assert (=> b!1015630 (= res!681330 (forall!266 keys!40 lambda!923))))

(declare-fun res!681327 () Bool)

(assert (=> start!87984 (=> (not res!681327) (not e!571403))))

(declare-fun isStrictlySorted!597 (List!21603) Bool)

(assert (=> start!87984 (= res!681327 (isStrictlySorted!597 l!1114))))

(assert (=> start!87984 e!571403))

(declare-fun e!571402 () Bool)

(assert (=> start!87984 e!571402))

(assert (=> start!87984 true))

(declare-fun tp_is_empty!23565 () Bool)

(assert (=> start!87984 tp_is_empty!23565))

(declare-fun b!1015631 () Bool)

(assert (=> b!1015631 (= e!571403 (not true))))

(declare-fun containsKey!483 (List!21603 (_ BitVec 64)) Bool)

(assert (=> b!1015631 (containsKey!483 l!1114 (h!22798 keys!40))))

(declare-datatypes ((Unit!33194 0))(
  ( (Unit!33195) )
))
(declare-fun lt!449136 () Unit!33194)

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!2 (List!21603 (_ BitVec 64)) Unit!33194)

(assert (=> b!1015631 (= lt!449136 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!2 l!1114 (h!22798 keys!40)))))

(declare-fun b!1015632 () Bool)

(declare-fun tp!70686 () Bool)

(assert (=> b!1015632 (= e!571402 (and tp_is_empty!23565 tp!70686))))

(declare-fun b!1015633 () Bool)

(declare-fun res!681331 () Bool)

(assert (=> b!1015633 (=> (not res!681331) (not e!571403))))

(declare-fun newHead!31 () tuple2!15302)

(declare-fun head!948 (List!21603) tuple2!15302)

(assert (=> b!1015633 (= res!681331 (bvslt (_1!7661 newHead!31) (_1!7661 (head!948 l!1114))))))

(declare-fun b!1015634 () Bool)

(declare-fun res!681328 () Bool)

(assert (=> b!1015634 (=> (not res!681328) (not e!571403))))

(get-info :version)

(assert (=> b!1015634 (= res!681328 ((_ is Cons!21600) keys!40))))

(assert (= (and start!87984 res!681327) b!1015629))

(assert (= (and b!1015629 res!681329) b!1015630))

(assert (= (and b!1015630 res!681330) b!1015633))

(assert (= (and b!1015633 res!681331) b!1015634))

(assert (= (and b!1015634 res!681328) b!1015631))

(assert (= (and start!87984 ((_ is Cons!21599) l!1114)) b!1015632))

(declare-fun m!937731 () Bool)

(assert (=> b!1015631 m!937731))

(declare-fun m!937733 () Bool)

(assert (=> b!1015631 m!937733))

(declare-fun m!937735 () Bool)

(assert (=> b!1015629 m!937735))

(declare-fun m!937737 () Bool)

(assert (=> start!87984 m!937737))

(declare-fun m!937739 () Bool)

(assert (=> b!1015630 m!937739))

(declare-fun m!937741 () Bool)

(assert (=> b!1015633 m!937741))

(check-sat tp_is_empty!23565 (not b!1015633) (not b!1015632) (not start!87984) (not b!1015631) (not b!1015630) (not b!1015629))
