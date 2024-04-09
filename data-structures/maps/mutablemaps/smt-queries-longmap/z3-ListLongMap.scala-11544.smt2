; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!134418 () Bool)

(assert start!134418)

(assert (=> start!134418 false))

(assert (=> start!134418 true))

(declare-fun e!874761 () Bool)

(assert (=> start!134418 e!874761))

(declare-fun b!1569152 () Bool)

(declare-fun tp_is_empty!39051 () Bool)

(declare-fun tp!114097 () Bool)

(assert (=> b!1569152 (= e!874761 (and tp_is_empty!39051 tp!114097))))

(declare-datatypes ((B!2500 0))(
  ( (B!2501 (val!19612 Int)) )
))
(declare-datatypes ((tuple2!25490 0))(
  ( (tuple2!25491 (_1!12755 (_ BitVec 64)) (_2!12755 B!2500)) )
))
(declare-datatypes ((List!36893 0))(
  ( (Nil!36890) (Cons!36889 (h!38337 tuple2!25490) (t!51808 List!36893)) )
))
(declare-fun l!750 () List!36893)

(get-info :version)

(assert (= (and start!134418 ((_ is Cons!36889) l!750)) b!1569152))

(check-sat (not b!1569152) tp_is_empty!39051)
(check-sat)
