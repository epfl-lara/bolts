; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!7584 () Bool)

(assert start!7584)

(assert (=> start!7584 false))

(declare-fun e!31072 () Bool)

(assert (=> start!7584 e!31072))

(assert (=> start!7584 true))

(declare-fun b!48414 () Bool)

(declare-fun tp_is_empty!2091 () Bool)

(declare-fun tp!6377 () Bool)

(assert (=> b!48414 (= e!31072 (and tp_is_empty!2091 tp!6377))))

(declare-datatypes ((B!940 0))(
  ( (B!941 (val!1090 Int)) )
))
(declare-datatypes ((tuple2!1766 0))(
  ( (tuple2!1767 (_1!893 (_ BitVec 64)) (_2!893 B!940)) )
))
(declare-datatypes ((List!1306 0))(
  ( (Nil!1303) (Cons!1302 (h!1882 tuple2!1766) (t!4342 List!1306)) )
))
(declare-fun l!1333 () List!1306)

(get-info :version)

(assert (= (and start!7584 ((_ is Cons!1302) l!1333)) b!48414))

(check-sat (not b!48414) tp_is_empty!2091)
(check-sat)
