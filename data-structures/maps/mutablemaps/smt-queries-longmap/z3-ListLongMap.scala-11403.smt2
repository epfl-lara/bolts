; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!132816 () Bool)

(assert start!132816)

(assert (=> start!132816 false))

(declare-fun e!866265 () Bool)

(assert (=> start!132816 e!866265))

(declare-fun b!1555468 () Bool)

(declare-fun tp_is_empty!38307 () Bool)

(declare-fun tp!112303 () Bool)

(assert (=> b!1555468 (= e!866265 (and tp_is_empty!38307 tp!112303))))

(declare-datatypes ((B!2296 0))(
  ( (B!2297 (val!19234 Int)) )
))
(declare-datatypes ((tuple2!24984 0))(
  ( (tuple2!24985 (_1!12502 (_ BitVec 64)) (_2!12502 B!2296)) )
))
(declare-datatypes ((List!36414 0))(
  ( (Nil!36411) (Cons!36410 (h!37857 tuple2!24984) (t!51142 List!36414)) )
))
(declare-fun l!1177 () List!36414)

(get-info :version)

(assert (= (and start!132816 ((_ is Cons!36410) l!1177)) b!1555468))

(check-sat (not b!1555468) tp_is_empty!38307)
(check-sat)
