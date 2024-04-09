; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!134442 () Bool)

(assert start!134442)

(assert (=> start!134442 false))

(assert (=> start!134442 true))

(declare-fun e!874866 () Bool)

(assert (=> start!134442 e!874866))

(declare-fun b!1569326 () Bool)

(declare-fun tp_is_empty!39063 () Bool)

(declare-fun tp!114124 () Bool)

(assert (=> b!1569326 (= e!874866 (and tp_is_empty!39063 tp!114124))))

(declare-datatypes ((B!2512 0))(
  ( (B!2513 (val!19618 Int)) )
))
(declare-datatypes ((tuple2!25502 0))(
  ( (tuple2!25503 (_1!12761 (_ BitVec 64)) (_2!12761 B!2512)) )
))
(declare-datatypes ((List!36899 0))(
  ( (Nil!36896) (Cons!36895 (h!38343 tuple2!25502) (t!51814 List!36899)) )
))
(declare-fun l!750 () List!36899)

(get-info :version)

(assert (= (and start!134442 ((_ is Cons!36895) l!750)) b!1569326))

(check-sat (not b!1569326) tp_is_empty!39063)
(check-sat)
