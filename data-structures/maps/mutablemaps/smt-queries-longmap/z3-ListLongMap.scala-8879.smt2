; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107836 () Bool)

(assert start!107836)

(assert (=> start!107836 false))

(declare-fun e!727419 () Bool)

(assert (=> start!107836 e!727419))

(assert (=> start!107836 true))

(declare-fun b!1274548 () Bool)

(declare-fun tp_is_empty!33189 () Bool)

(declare-fun tp!97998 () Bool)

(assert (=> b!1274548 (= e!727419 (and tp_is_empty!33189 tp!97998))))

(declare-datatypes ((B!2146 0))(
  ( (B!2147 (val!16669 Int)) )
))
(declare-datatypes ((tuple2!21566 0))(
  ( (tuple2!21567 (_1!10793 (_ BitVec 64)) (_2!10793 B!2146)) )
))
(declare-datatypes ((List!28753 0))(
  ( (Nil!28750) (Cons!28749 (h!29958 tuple2!21566) (t!42293 List!28753)) )
))
(declare-fun l!595 () List!28753)

(get-info :version)

(assert (= (and start!107836 ((_ is Cons!28749) l!595)) b!1274548))

(check-sat (not b!1274548) tp_is_empty!33189)
(check-sat)
