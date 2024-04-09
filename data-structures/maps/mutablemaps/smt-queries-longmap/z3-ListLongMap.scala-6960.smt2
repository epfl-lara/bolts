; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!87936 () Bool)

(assert start!87936)

(declare-fun res!681217 () Bool)

(declare-fun e!571285 () Bool)

(assert (=> start!87936 (=> (not res!681217) (not e!571285))))

(declare-datatypes ((B!1468 0))(
  ( (B!1469 (val!11818 Int)) )
))
(declare-datatypes ((tuple2!15272 0))(
  ( (tuple2!15273 (_1!7646 (_ BitVec 64)) (_2!7646 B!1468)) )
))
(declare-datatypes ((List!21581 0))(
  ( (Nil!21578) (Cons!21577 (h!22775 tuple2!15272) (t!30590 List!21581)) )
))
(declare-fun l!412 () List!21581)

(declare-fun isStrictlySorted!588 (List!21581) Bool)

(assert (=> start!87936 (= res!681217 (isStrictlySorted!588 l!412))))

(assert (=> start!87936 e!571285))

(declare-fun e!571286 () Bool)

(assert (=> start!87936 e!571286))

(declare-fun tp_is_empty!23535 () Bool)

(assert (=> start!87936 tp_is_empty!23535))

(declare-fun b!1015431 () Bool)

(declare-fun value!115 () B!1468)

(get-info :version)

(assert (=> b!1015431 (= e!571285 (and (or (not ((_ is Cons!21577) l!412)) (not (= (_2!7646 (h!22775 l!412)) value!115))) (or (not ((_ is Cons!21577) l!412)) (= (_2!7646 (h!22775 l!412)) value!115)) (not ((_ is Nil!21578) l!412))))))

(declare-fun b!1015432 () Bool)

(declare-fun tp!70632 () Bool)

(assert (=> b!1015432 (= e!571286 (and tp_is_empty!23535 tp!70632))))

(assert (= (and start!87936 res!681217) b!1015431))

(assert (= (and start!87936 ((_ is Cons!21577) l!412)) b!1015432))

(declare-fun m!937661 () Bool)

(assert (=> start!87936 m!937661))

(check-sat (not start!87936) (not b!1015432) tp_is_empty!23535)
(check-sat)
