; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104848 () Bool)

(assert start!104848)

(declare-fun b_free!26617 () Bool)

(declare-fun b_next!26617 () Bool)

(assert (=> start!104848 (= b_free!26617 (not b_next!26617))))

(declare-fun tp!93341 () Bool)

(declare-fun b_and!44395 () Bool)

(assert (=> start!104848 (= tp!93341 b_and!44395)))

(declare-fun b!1249270 () Bool)

(declare-fun e!709058 () Bool)

(declare-fun tp_is_empty!31519 () Bool)

(assert (=> b!1249270 (= e!709058 tp_is_empty!31519)))

(declare-fun b!1249271 () Bool)

(declare-fun e!709059 () Bool)

(declare-fun mapRes!49039 () Bool)

(assert (=> b!1249271 (= e!709059 (and e!709058 mapRes!49039))))

(declare-fun condMapEmpty!49039 () Bool)

(declare-datatypes ((V!47391 0))(
  ( (V!47392 (val!15822 Int)) )
))
(declare-datatypes ((ValueCell!14996 0))(
  ( (ValueCellFull!14996 (v!18518 V!47391)) (EmptyCell!14996) )
))
(declare-datatypes ((array!80697 0))(
  ( (array!80698 (arr!38911 (Array (_ BitVec 32) ValueCell!14996)) (size!39448 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80697)

(declare-fun mapDefault!49039 () ValueCell!14996)

