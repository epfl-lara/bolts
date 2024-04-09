; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111692 () Bool)

(assert start!111692)

(declare-fun b_free!30313 () Bool)

(declare-fun b_next!30313 () Bool)

(assert (=> start!111692 (= b_free!30313 (not b_next!30313))))

(declare-fun tp!106415 () Bool)

(declare-fun b_and!48795 () Bool)

(assert (=> start!111692 (= tp!106415 b_and!48795)))

(declare-fun b!1322594 () Bool)

(declare-fun e!754160 () Bool)

(declare-fun e!754162 () Bool)

(declare-fun mapRes!55847 () Bool)

(assert (=> b!1322594 (= e!754160 (and e!754162 mapRes!55847))))

(declare-fun condMapEmpty!55847 () Bool)

(declare-datatypes ((V!53281 0))(
  ( (V!53282 (val!18141 Int)) )
))
(declare-datatypes ((ValueCell!17168 0))(
  ( (ValueCellFull!17168 (v!20769 V!53281)) (EmptyCell!17168) )
))
(declare-datatypes ((array!89145 0))(
  ( (array!89146 (arr!43042 (Array (_ BitVec 32) ValueCell!17168)) (size!43593 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89145)

(declare-fun mapDefault!55847 () ValueCell!17168)

