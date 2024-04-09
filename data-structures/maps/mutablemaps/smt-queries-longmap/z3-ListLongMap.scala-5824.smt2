; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!75154 () Bool)

(assert start!75154)

(assert (=> start!75154 false))

(declare-fun e!492821 () Bool)

(assert (=> start!75154 e!492821))

(declare-fun b!885445 () Bool)

(declare-fun tp_is_empty!17775 () Bool)

(declare-fun tp!54279 () Bool)

(assert (=> b!885445 (= e!492821 (and tp_is_empty!17775 tp!54279))))

(declare-datatypes ((B!1264 0))(
  ( (B!1265 (val!8938 Int)) )
))
(declare-datatypes ((tuple2!11896 0))(
  ( (tuple2!11897 (_1!5958 (_ BitVec 64)) (_2!5958 B!1264)) )
))
(declare-datatypes ((List!17738 0))(
  ( (Nil!17735) (Cons!17734 (h!18865 tuple2!11896) (t!25023 List!17738)) )
))
(declare-fun l!906 () List!17738)

(get-info :version)

(assert (= (and start!75154 ((_ is Cons!17734) l!906)) b!885445))

(check-sat (not b!885445) tp_is_empty!17775)
(check-sat)
