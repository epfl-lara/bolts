; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!4120 () Bool)

(assert start!4120)

(declare-fun b_free!1027 () Bool)

(declare-fun b_next!1027 () Bool)

(assert (=> start!4120 (= b_free!1027 (not b_next!1027))))

(declare-fun tp!4500 () Bool)

(declare-fun b_and!1839 () Bool)

(assert (=> start!4120 (= tp!4500 b_and!1839)))

(declare-fun b!30835 () Bool)

(declare-fun e!19755 () Bool)

(declare-fun e!19750 () Bool)

(declare-fun mapRes!1600 () Bool)

(assert (=> b!30835 (= e!19755 (and e!19750 mapRes!1600))))

(declare-fun condMapEmpty!1600 () Bool)

(declare-datatypes ((V!1667 0))(
  ( (V!1668 (val!717 Int)) )
))
(declare-datatypes ((ValueCell!491 0))(
  ( (ValueCellFull!491 (v!1806 V!1667)) (EmptyCell!491) )
))
(declare-datatypes ((array!1973 0))(
  ( (array!1974 (arr!940 (Array (_ BitVec 32) ValueCell!491)) (size!1041 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1973)

(declare-fun mapDefault!1600 () ValueCell!491)

