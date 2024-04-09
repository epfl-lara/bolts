; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111626 () Bool)

(assert start!111626)

(declare-fun b_free!30247 () Bool)

(declare-fun b_next!30247 () Bool)

(assert (=> start!111626 (= b_free!30247 (not b_next!30247))))

(declare-fun tp!106217 () Bool)

(declare-fun b_and!48663 () Bool)

(assert (=> start!111626 (= tp!106217 b_and!48663)))

(declare-fun b!1321439 () Bool)

(declare-fun e!753665 () Bool)

(declare-fun e!753667 () Bool)

(declare-fun mapRes!55748 () Bool)

(assert (=> b!1321439 (= e!753665 (and e!753667 mapRes!55748))))

(declare-fun condMapEmpty!55748 () Bool)

(declare-datatypes ((V!53193 0))(
  ( (V!53194 (val!18108 Int)) )
))
(declare-datatypes ((ValueCell!17135 0))(
  ( (ValueCellFull!17135 (v!20736 V!53193)) (EmptyCell!17135) )
))
(declare-datatypes ((array!89021 0))(
  ( (array!89022 (arr!42980 (Array (_ BitVec 32) ValueCell!17135)) (size!43531 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89021)

(declare-fun mapDefault!55748 () ValueCell!17135)

