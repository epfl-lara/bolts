; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!87942 () Bool)

(assert start!87942)

(declare-fun b!1015459 () Bool)

(assert (=> b!1015459 true))

(assert (=> b!1015459 true))

(declare-fun res!681231 () Bool)

(declare-fun e!571303 () Bool)

(assert (=> start!87942 (=> (not res!681231) (not e!571303))))

(declare-datatypes ((B!1474 0))(
  ( (B!1475 (val!11821 Int)) )
))
(declare-datatypes ((tuple2!15278 0))(
  ( (tuple2!15279 (_1!7649 (_ BitVec 64)) (_2!7649 B!1474)) )
))
(declare-datatypes ((List!21585 0))(
  ( (Nil!21582) (Cons!21581 (h!22779 tuple2!15278) (t!30594 List!21585)) )
))
(declare-fun l!412 () List!21585)

(declare-fun isStrictlySorted!591 (List!21585) Bool)

(assert (=> start!87942 (= res!681231 (isStrictlySorted!591 l!412))))

(assert (=> start!87942 e!571303))

(declare-fun e!571304 () Bool)

(assert (=> start!87942 e!571304))

(declare-fun tp_is_empty!23541 () Bool)

(assert (=> start!87942 tp_is_empty!23541))

(declare-fun b!1015458 () Bool)

(declare-fun res!681232 () Bool)

(assert (=> b!1015458 (=> (not res!681232) (not e!571303))))

(declare-fun value!115 () B!1474)

(get-info :version)

(assert (=> b!1015458 (= res!681232 (and (or (not ((_ is Cons!21581) l!412)) (not (= (_2!7649 (h!22779 l!412)) value!115))) (or (not ((_ is Cons!21581) l!412)) (= (_2!7649 (h!22779 l!412)) value!115)) (not ((_ is Nil!21582) l!412))))))

(declare-datatypes ((List!21586 0))(
  ( (Nil!21583) (Cons!21582 (h!22780 (_ BitVec 64)) (t!30595 List!21586)) )
))
(declare-fun err!115 () List!21586)

(declare-fun lambda!905 () Int)

(declare-fun forall!260 (List!21586 Int) Bool)

(assert (=> b!1015459 (= e!571303 (not (forall!260 err!115 lambda!905)))))

(assert (=> b!1015459 true))

(declare-fun b!1015460 () Bool)

(declare-fun tp!70641 () Bool)

(assert (=> b!1015460 (= e!571304 (and tp_is_empty!23541 tp!70641))))

(assert (= (and start!87942 res!681231) b!1015458))

(assert (= (and b!1015458 res!681232) b!1015459))

(assert (= (and start!87942 ((_ is Cons!21581) l!412)) b!1015460))

(declare-fun m!937669 () Bool)

(assert (=> start!87942 m!937669))

(declare-fun m!937671 () Bool)

(assert (=> b!1015459 m!937671))

(check-sat (not b!1015459) (not start!87942) (not b!1015460) tp_is_empty!23541)
(check-sat)
