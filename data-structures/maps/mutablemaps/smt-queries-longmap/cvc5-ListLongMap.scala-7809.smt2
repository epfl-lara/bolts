; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97634 () Bool)

(assert start!97634)

(declare-fun b!1114873 () Bool)

(declare-fun e!635411 () Bool)

(declare-fun e!635407 () Bool)

(declare-fun mapRes!43561 () Bool)

(assert (=> b!1114873 (= e!635411 (and e!635407 mapRes!43561))))

(declare-fun condMapEmpty!43561 () Bool)

(declare-datatypes ((V!42233 0))(
  ( (V!42234 (val!13971 Int)) )
))
(declare-datatypes ((ValueCell!13205 0))(
  ( (ValueCellFull!13205 (v!16605 V!42233)) (EmptyCell!13205) )
))
(declare-datatypes ((array!72506 0))(
  ( (array!72507 (arr!34902 (Array (_ BitVec 32) ValueCell!13205)) (size!35439 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72506)

(declare-fun mapDefault!43561 () ValueCell!13205)

