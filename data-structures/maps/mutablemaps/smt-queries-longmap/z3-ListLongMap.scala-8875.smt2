; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107806 () Bool)

(assert start!107806)

(assert (=> start!107806 false))

(declare-fun e!727332 () Bool)

(assert (=> start!107806 e!727332))

(assert (=> start!107806 true))

(declare-fun b!1274437 () Bool)

(declare-fun tp_is_empty!33165 () Bool)

(declare-fun tp!97953 () Bool)

(assert (=> b!1274437 (= e!727332 (and tp_is_empty!33165 tp!97953))))

(declare-datatypes ((B!2122 0))(
  ( (B!2123 (val!16657 Int)) )
))
(declare-datatypes ((tuple2!21542 0))(
  ( (tuple2!21543 (_1!10781 (_ BitVec 64)) (_2!10781 B!2122)) )
))
(declare-datatypes ((List!28741 0))(
  ( (Nil!28738) (Cons!28737 (h!29946 tuple2!21542) (t!42281 List!28741)) )
))
(declare-fun l!595 () List!28741)

(get-info :version)

(assert (= (and start!107806 ((_ is Cons!28737) l!595)) b!1274437))

(check-sat (not b!1274437) tp_is_empty!33165)
(check-sat)
