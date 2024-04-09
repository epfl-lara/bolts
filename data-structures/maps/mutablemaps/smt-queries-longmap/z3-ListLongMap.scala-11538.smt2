; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!134346 () Bool)

(assert start!134346)

(assert (=> start!134346 false))

(assert (=> start!134346 true))

(declare-fun e!874383 () Bool)

(assert (=> start!134346 e!874383))

(declare-fun b!1568444 () Bool)

(declare-fun tp_is_empty!39015 () Bool)

(declare-fun tp!114025 () Bool)

(assert (=> b!1568444 (= e!874383 (and tp_is_empty!39015 tp!114025))))

(declare-datatypes ((B!2464 0))(
  ( (B!2465 (val!19594 Int)) )
))
(declare-datatypes ((tuple2!25454 0))(
  ( (tuple2!25455 (_1!12737 (_ BitVec 64)) (_2!12737 B!2464)) )
))
(declare-datatypes ((List!36875 0))(
  ( (Nil!36872) (Cons!36871 (h!38319 tuple2!25454) (t!51790 List!36875)) )
))
(declare-fun l!750 () List!36875)

(get-info :version)

(assert (= (and start!134346 ((_ is Cons!36871) l!750)) b!1568444))

(check-sat (not b!1568444) tp_is_empty!39015)
(check-sat)
