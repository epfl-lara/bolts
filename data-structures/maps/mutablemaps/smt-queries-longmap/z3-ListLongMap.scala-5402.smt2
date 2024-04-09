; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!72150 () Bool)

(assert start!72150)

(assert (=> start!72150 false))

(declare-fun e!466853 () Bool)

(assert (=> start!72150 e!466853))

(declare-fun b!836618 () Bool)

(declare-fun tp_is_empty!15285 () Bool)

(declare-fun tp!47513 () Bool)

(assert (=> b!836618 (= e!466853 (and tp_is_empty!15285 tp!47513))))

(declare-datatypes ((B!1216 0))(
  ( (B!1217 (val!7690 Int)) )
))
(declare-datatypes ((tuple2!10258 0))(
  ( (tuple2!10259 (_1!5139 (_ BitVec 64)) (_2!5139 B!1216)) )
))
(declare-datatypes ((List!16055 0))(
  ( (Nil!16052) (Cons!16051 (h!17182 tuple2!10258) (t!22434 List!16055)) )
))
(declare-fun l!390 () List!16055)

(get-info :version)

(assert (= (and start!72150 ((_ is Cons!16051) l!390)) b!836618))

(check-sat (not b!836618) tp_is_empty!15285)
(check-sat)
