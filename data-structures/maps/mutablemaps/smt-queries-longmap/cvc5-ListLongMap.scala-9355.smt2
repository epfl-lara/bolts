; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111602 () Bool)

(assert start!111602)

(declare-fun b_free!30223 () Bool)

(declare-fun b_next!30223 () Bool)

(assert (=> start!111602 (= b_free!30223 (not b_next!30223))))

(declare-fun tp!106145 () Bool)

(declare-fun b_and!48615 () Bool)

(assert (=> start!111602 (= tp!106145 b_and!48615)))

(declare-fun b!1321019 () Bool)

(declare-fun e!753483 () Bool)

(declare-fun e!753487 () Bool)

(declare-fun mapRes!55712 () Bool)

(assert (=> b!1321019 (= e!753483 (and e!753487 mapRes!55712))))

(declare-fun condMapEmpty!55712 () Bool)

(declare-datatypes ((V!53161 0))(
  ( (V!53162 (val!18096 Int)) )
))
(declare-datatypes ((ValueCell!17123 0))(
  ( (ValueCellFull!17123 (v!20724 V!53161)) (EmptyCell!17123) )
))
(declare-datatypes ((array!88979 0))(
  ( (array!88980 (arr!42959 (Array (_ BitVec 32) ValueCell!17123)) (size!43510 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88979)

(declare-fun mapDefault!55712 () ValueCell!17123)

