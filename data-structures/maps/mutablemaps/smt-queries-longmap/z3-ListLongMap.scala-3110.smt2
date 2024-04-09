; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!43764 () Bool)

(assert start!43764)

(assert (=> start!43764 false))

(declare-fun e!284650 () Bool)

(assert (=> start!43764 e!284650))

(assert (=> start!43764 true))

(declare-fun b!483605 () Bool)

(declare-fun tp_is_empty!13893 () Bool)

(declare-fun tp!43429 () Bool)

(assert (=> b!483605 (= e!284650 (and tp_is_empty!13893 tp!43429))))

(declare-datatypes ((B!1084 0))(
  ( (B!1085 (val!6994 Int)) )
))
(declare-datatypes ((tuple2!9186 0))(
  ( (tuple2!9187 (_1!4603 (_ BitVec 64)) (_2!4603 B!1084)) )
))
(declare-datatypes ((List!9293 0))(
  ( (Nil!9290) (Cons!9289 (h!10145 tuple2!9186) (t!15523 List!9293)) )
))
(declare-fun l!956 () List!9293)

(get-info :version)

(assert (= (and start!43764 ((_ is Cons!9289) l!956)) b!483605))

(check-sat (not b!483605) tp_is_empty!13893)
(check-sat)
