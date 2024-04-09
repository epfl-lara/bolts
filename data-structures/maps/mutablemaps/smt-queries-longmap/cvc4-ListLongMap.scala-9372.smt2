; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111708 () Bool)

(assert start!111708)

(declare-fun b_free!30329 () Bool)

(declare-fun b_next!30329 () Bool)

(assert (=> start!111708 (= b_free!30329 (not b_next!30329))))

(declare-fun tp!106463 () Bool)

(declare-fun b_and!48827 () Bool)

(assert (=> start!111708 (= tp!106463 b_and!48827)))

(declare-fun b!1322874 () Bool)

(declare-fun e!754278 () Bool)

(declare-fun e!754281 () Bool)

(declare-fun mapRes!55871 () Bool)

(assert (=> b!1322874 (= e!754278 (and e!754281 mapRes!55871))))

(declare-fun condMapEmpty!55871 () Bool)

(declare-datatypes ((V!53301 0))(
  ( (V!53302 (val!18149 Int)) )
))
(declare-datatypes ((ValueCell!17176 0))(
  ( (ValueCellFull!17176 (v!20777 V!53301)) (EmptyCell!17176) )
))
(declare-datatypes ((array!89175 0))(
  ( (array!89176 (arr!43057 (Array (_ BitVec 32) ValueCell!17176)) (size!43608 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89175)

(declare-fun mapDefault!55871 () ValueCell!17176)

