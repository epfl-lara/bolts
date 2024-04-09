; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77984 () Bool)

(assert start!77984)

(declare-fun b_free!16499 () Bool)

(declare-fun b_next!16499 () Bool)

(assert (=> start!77984 (= b_free!16499 (not b_next!16499))))

(declare-fun tp!57765 () Bool)

(declare-fun b_and!27087 () Bool)

(assert (=> start!77984 (= tp!57765 b_and!27087)))

(declare-fun b!909977 () Bool)

(declare-fun e!510204 () Bool)

(declare-fun e!510203 () Bool)

(declare-fun mapRes!30094 () Bool)

(assert (=> b!909977 (= e!510204 (and e!510203 mapRes!30094))))

(declare-fun condMapEmpty!30094 () Bool)

(declare-datatypes ((V!30187 0))(
  ( (V!30188 (val!9509 Int)) )
))
(declare-datatypes ((ValueCell!8977 0))(
  ( (ValueCellFull!8977 (v!12017 V!30187)) (EmptyCell!8977) )
))
(declare-datatypes ((array!53852 0))(
  ( (array!53853 (arr!25879 (Array (_ BitVec 32) ValueCell!8977)) (size!26339 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53852)

(declare-fun mapDefault!30094 () ValueCell!8977)

