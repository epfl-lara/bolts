; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111536 () Bool)

(assert start!111536)

(declare-fun b_free!30157 () Bool)

(declare-fun b_next!30157 () Bool)

(assert (=> start!111536 (= b_free!30157 (not b_next!30157))))

(declare-fun tp!105947 () Bool)

(declare-fun b_and!48483 () Bool)

(assert (=> start!111536 (= tp!105947 b_and!48483)))

(declare-fun b!1319864 () Bool)

(declare-fun e!752988 () Bool)

(declare-fun e!752990 () Bool)

(declare-fun mapRes!55613 () Bool)

(assert (=> b!1319864 (= e!752988 (and e!752990 mapRes!55613))))

(declare-fun condMapEmpty!55613 () Bool)

(declare-datatypes ((V!53073 0))(
  ( (V!53074 (val!18063 Int)) )
))
(declare-datatypes ((ValueCell!17090 0))(
  ( (ValueCellFull!17090 (v!20691 V!53073)) (EmptyCell!17090) )
))
(declare-datatypes ((array!88853 0))(
  ( (array!88854 (arr!42896 (Array (_ BitVec 32) ValueCell!17090)) (size!43447 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88853)

(declare-fun mapDefault!55613 () ValueCell!17090)

