; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!103742 () Bool)

(assert start!103742)

(assert (=> start!103742 false))

(assert (=> start!103742 true))

(declare-fun e!703889 () Bool)

(assert (=> start!103742 e!703889))

(declare-fun b!1241739 () Bool)

(declare-fun tp_is_empty!31269 () Bool)

(declare-fun tp!92703 () Bool)

(assert (=> b!1241739 (= e!703889 (and tp_is_empty!31269 tp!92703))))

(declare-datatypes ((B!1870 0))(
  ( (B!1871 (val!15697 Int)) )
))
(declare-datatypes ((tuple2!20422 0))(
  ( (tuple2!20423 (_1!10221 (_ BitVec 64)) (_2!10221 B!1870)) )
))
(declare-datatypes ((List!27526 0))(
  ( (Nil!27523) (Cons!27522 (h!28731 tuple2!20422) (t!40996 List!27526)) )
))
(declare-fun l!644 () List!27526)

(get-info :version)

(assert (= (and start!103742 ((_ is Cons!27522) l!644)) b!1241739))

(check-sat (not b!1241739) tp_is_empty!31269)
(check-sat)
