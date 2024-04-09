; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!95292 () Bool)

(assert start!95292)

(assert (=> start!95292 false))

(assert (=> start!95292 true))

(declare-datatypes ((B!1762 0))(
  ( (B!1763 (val!13084 Int)) )
))
(declare-datatypes ((tuple2!16750 0))(
  ( (tuple2!16751 (_1!8385 (_ BitVec 64)) (_2!8385 B!1762)) )
))
(declare-datatypes ((List!23319 0))(
  ( (Nil!23316) (Cons!23315 (h!24524 tuple2!16750) (t!32685 List!23319)) )
))
(declare-datatypes ((ListLongMap!14731 0))(
  ( (ListLongMap!14732 (toList!7381 List!23319)) )
))
(declare-fun lm!214 () ListLongMap!14731)

(declare-fun e!615470 () Bool)

(declare-fun inv!37846 (ListLongMap!14731) Bool)

(assert (=> start!95292 (and (inv!37846 lm!214) e!615470)))

(declare-fun b!1076579 () Bool)

(declare-fun tp!78255 () Bool)

(assert (=> b!1076579 (= e!615470 tp!78255)))

(assert (= start!95292 b!1076579))

(declare-fun m!995717 () Bool)

(assert (=> start!95292 m!995717))

(check-sat (not start!95292) (not b!1076579))
(check-sat)
