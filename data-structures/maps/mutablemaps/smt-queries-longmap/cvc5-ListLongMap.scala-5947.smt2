; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77536 () Bool)

(assert start!77536)

(declare-fun b_free!16093 () Bool)

(declare-fun b_next!16093 () Bool)

(assert (=> start!77536 (= b_free!16093 (not b_next!16093))))

(declare-fun tp!56541 () Bool)

(declare-fun b_and!26477 () Bool)

(assert (=> start!77536 (= tp!56541 b_and!26477)))

(declare-fun b!902960 () Bool)

(declare-fun e!505895 () Bool)

(declare-fun e!505897 () Bool)

(declare-fun mapRes!29479 () Bool)

(assert (=> b!902960 (= e!505895 (and e!505897 mapRes!29479))))

(declare-fun condMapEmpty!29479 () Bool)

(declare-datatypes ((V!29647 0))(
  ( (V!29648 (val!9306 Int)) )
))
(declare-datatypes ((ValueCell!8774 0))(
  ( (ValueCellFull!8774 (v!11811 V!29647)) (EmptyCell!8774) )
))
(declare-datatypes ((array!53070 0))(
  ( (array!53071 (arr!25490 (Array (_ BitVec 32) ValueCell!8774)) (size!25950 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53070)

(declare-fun mapDefault!29479 () ValueCell!8774)

