; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74168 () Bool)

(assert start!74168)

(declare-fun b!872023 () Bool)

(declare-fun e!485596 () Bool)

(declare-fun e!485597 () Bool)

(declare-fun mapRes!27371 () Bool)

(assert (=> b!872023 (= e!485596 (and e!485597 mapRes!27371))))

(declare-fun condMapEmpty!27371 () Bool)

(declare-datatypes ((V!27953 0))(
  ( (V!27954 (val!8637 Int)) )
))
(declare-datatypes ((ValueCell!8150 0))(
  ( (ValueCellFull!8150 (v!11058 V!27953)) (EmptyCell!8150) )
))
(declare-datatypes ((array!50486 0))(
  ( (array!50487 (arr!24269 (Array (_ BitVec 32) ValueCell!8150)) (size!24710 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50486)

(declare-fun mapDefault!27371 () ValueCell!8150)

