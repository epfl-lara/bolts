; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!87504 () Bool)

(assert start!87504)

(assert (=> start!87504 false))

(declare-fun e!569918 () Bool)

(assert (=> start!87504 e!569918))

(declare-fun b!1013083 () Bool)

(declare-fun tp_is_empty!23445 () Bool)

(declare-fun tp!70377 () Bool)

(assert (=> b!1013083 (= e!569918 (and tp_is_empty!23445 tp!70377))))

(declare-datatypes ((B!1378 0))(
  ( (B!1379 (val!11773 Int)) )
))
(declare-datatypes ((tuple2!15182 0))(
  ( (tuple2!15183 (_1!7601 (_ BitVec 64)) (_2!7601 B!1378)) )
))
(declare-datatypes ((List!21506 0))(
  ( (Nil!21503) (Cons!21502 (h!22700 tuple2!15182) (t!30515 List!21506)) )
))
(declare-fun l!412 () List!21506)

(get-info :version)

(assert (= (and start!87504 ((_ is Cons!21502) l!412)) b!1013083))

(check-sat (not b!1013083) tp_is_empty!23445)
(check-sat)
