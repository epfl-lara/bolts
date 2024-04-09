; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!4438 () Bool)

(assert start!4438)

(declare-fun b_free!1201 () Bool)

(declare-fun b_next!1201 () Bool)

(assert (=> start!4438 (= b_free!1201 (not b_next!1201))))

(declare-fun tp!5041 () Bool)

(declare-fun b_and!2025 () Bool)

(assert (=> start!4438 (= tp!5041 b_and!2025)))

(declare-fun b!34260 () Bool)

(declare-fun e!21751 () Bool)

(declare-fun tp_is_empty!1555 () Bool)

(assert (=> b!34260 (= e!21751 tp_is_empty!1555)))

(declare-fun b!34261 () Bool)

(declare-fun e!21752 () Bool)

(declare-fun e!21755 () Bool)

(declare-fun mapRes!1879 () Bool)

(assert (=> b!34261 (= e!21752 (and e!21755 mapRes!1879))))

(declare-fun condMapEmpty!1879 () Bool)

(declare-datatypes ((V!1899 0))(
  ( (V!1900 (val!804 Int)) )
))
(declare-datatypes ((ValueCell!578 0))(
  ( (ValueCellFull!578 (v!1899 V!1899)) (EmptyCell!578) )
))
(declare-datatypes ((array!2321 0))(
  ( (array!2322 (arr!1108 (Array (_ BitVec 32) ValueCell!578)) (size!1209 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!2321)

(declare-fun mapDefault!1879 () ValueCell!578)

