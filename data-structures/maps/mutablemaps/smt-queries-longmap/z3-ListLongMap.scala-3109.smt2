; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!43758 () Bool)

(assert start!43758)

(assert (=> start!43758 false))

(declare-fun e!284641 () Bool)

(assert (=> start!43758 e!284641))

(declare-fun b!483596 () Bool)

(declare-fun tp_is_empty!13887 () Bool)

(declare-fun tp!43420 () Bool)

(assert (=> b!483596 (= e!284641 (and tp_is_empty!13887 tp!43420))))

(declare-datatypes ((B!1078 0))(
  ( (B!1079 (val!6991 Int)) )
))
(declare-datatypes ((tuple2!9180 0))(
  ( (tuple2!9181 (_1!4600 (_ BitVec 64)) (_2!4600 B!1078)) )
))
(declare-datatypes ((List!9290 0))(
  ( (Nil!9287) (Cons!9286 (h!10142 tuple2!9180) (t!15520 List!9290)) )
))
(declare-fun l!956 () List!9290)

(get-info :version)

(assert (= (and start!43758 ((_ is Cons!9286) l!956)) b!483596))

(check-sat (not b!483596) tp_is_empty!13887)
(check-sat)
