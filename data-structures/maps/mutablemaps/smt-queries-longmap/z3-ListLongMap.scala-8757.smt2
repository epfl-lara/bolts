; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!106374 () Bool)

(assert start!106374)

(assert (=> start!106374 false))

(declare-fun e!720346 () Bool)

(assert (=> start!106374 e!720346))

(assert (=> start!106374 true))

(declare-fun b!1264865 () Bool)

(declare-fun tp_is_empty!32469 () Bool)

(declare-fun tp!96270 () Bool)

(assert (=> b!1264865 (= e!720346 (and tp_is_empty!32469 tp!96270))))

(declare-datatypes ((B!1936 0))(
  ( (B!1937 (val!16303 Int)) )
))
(declare-datatypes ((tuple2!21274 0))(
  ( (tuple2!21275 (_1!10647 (_ BitVec 64)) (_2!10647 B!1936)) )
))
(declare-datatypes ((List!28470 0))(
  ( (Nil!28467) (Cons!28466 (h!29675 tuple2!21274) (t!41998 List!28470)) )
))
(declare-fun l!706 () List!28470)

(get-info :version)

(assert (= (and start!106374 ((_ is Cons!28466) l!706)) b!1264865))

(check-sat (not b!1264865) tp_is_empty!32469)
(check-sat)
