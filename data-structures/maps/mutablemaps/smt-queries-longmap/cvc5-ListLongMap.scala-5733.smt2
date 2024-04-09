; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74222 () Bool)

(assert start!74222)

(declare-fun b_free!15001 () Bool)

(declare-fun b_next!15001 () Bool)

(assert (=> start!74222 (= b_free!15001 (not b_next!15001))))

(declare-fun tp!52654 () Bool)

(declare-fun b_and!24771 () Bool)

(assert (=> start!74222 (= tp!52654 b_and!24771)))

(declare-fun b!872629 () Bool)

(declare-fun e!486001 () Bool)

(declare-fun e!486006 () Bool)

(declare-fun mapRes!27452 () Bool)

(assert (=> b!872629 (= e!486001 (and e!486006 mapRes!27452))))

(declare-fun condMapEmpty!27452 () Bool)

(declare-datatypes ((V!28025 0))(
  ( (V!28026 (val!8664 Int)) )
))
(declare-datatypes ((ValueCell!8177 0))(
  ( (ValueCellFull!8177 (v!11085 V!28025)) (EmptyCell!8177) )
))
(declare-datatypes ((array!50586 0))(
  ( (array!50587 (arr!24319 (Array (_ BitVec 32) ValueCell!8177)) (size!24760 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50586)

(declare-fun mapDefault!27452 () ValueCell!8177)

