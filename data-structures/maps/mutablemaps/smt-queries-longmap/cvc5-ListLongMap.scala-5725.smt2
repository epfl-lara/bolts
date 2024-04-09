; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74174 () Bool)

(assert start!74174)

(declare-fun b!872086 () Bool)

(declare-fun e!485640 () Bool)

(declare-fun e!485641 () Bool)

(declare-fun mapRes!27380 () Bool)

(assert (=> b!872086 (= e!485640 (and e!485641 mapRes!27380))))

(declare-fun condMapEmpty!27380 () Bool)

(declare-datatypes ((V!27961 0))(
  ( (V!27962 (val!8640 Int)) )
))
(declare-datatypes ((ValueCell!8153 0))(
  ( (ValueCellFull!8153 (v!11061 V!27961)) (EmptyCell!8153) )
))
(declare-datatypes ((array!50496 0))(
  ( (array!50497 (arr!24274 (Array (_ BitVec 32) ValueCell!8153)) (size!24715 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50496)

(declare-fun mapDefault!27380 () ValueCell!8153)

