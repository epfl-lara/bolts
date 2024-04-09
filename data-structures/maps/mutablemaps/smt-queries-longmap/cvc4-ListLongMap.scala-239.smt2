; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!4118 () Bool)

(assert start!4118)

(declare-fun b_free!1025 () Bool)

(declare-fun b_next!1025 () Bool)

(assert (=> start!4118 (= b_free!1025 (not b_next!1025))))

(declare-fun tp!4495 () Bool)

(declare-fun b_and!1837 () Bool)

(assert (=> start!4118 (= tp!4495 b_and!1837)))

(declare-fun b!30803 () Bool)

(declare-fun e!19732 () Bool)

(declare-fun e!19735 () Bool)

(declare-fun mapRes!1597 () Bool)

(assert (=> b!30803 (= e!19732 (and e!19735 mapRes!1597))))

(declare-fun condMapEmpty!1597 () Bool)

(declare-datatypes ((V!1663 0))(
  ( (V!1664 (val!716 Int)) )
))
(declare-datatypes ((ValueCell!490 0))(
  ( (ValueCellFull!490 (v!1805 V!1663)) (EmptyCell!490) )
))
(declare-datatypes ((array!1971 0))(
  ( (array!1972 (arr!939 (Array (_ BitVec 32) ValueCell!490)) (size!1040 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1971)

(declare-fun mapDefault!1597 () ValueCell!490)

