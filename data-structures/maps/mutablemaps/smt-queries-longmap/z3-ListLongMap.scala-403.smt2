; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!7578 () Bool)

(assert start!7578)

(assert (=> start!7578 false))

(declare-fun e!31063 () Bool)

(assert (=> start!7578 e!31063))

(declare-fun b!48405 () Bool)

(declare-fun tp_is_empty!2085 () Bool)

(declare-fun tp!6368 () Bool)

(assert (=> b!48405 (= e!31063 (and tp_is_empty!2085 tp!6368))))

(declare-datatypes ((B!934 0))(
  ( (B!935 (val!1087 Int)) )
))
(declare-datatypes ((tuple2!1760 0))(
  ( (tuple2!1761 (_1!890 (_ BitVec 64)) (_2!890 B!934)) )
))
(declare-datatypes ((List!1303 0))(
  ( (Nil!1300) (Cons!1299 (h!1879 tuple2!1760) (t!4339 List!1303)) )
))
(declare-fun l!1333 () List!1303)

(get-info :version)

(assert (= (and start!7578 ((_ is Cons!1299) l!1333)) b!48405))

(check-sat (not b!48405) tp_is_empty!2085)
(check-sat)
