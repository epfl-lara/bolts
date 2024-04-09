; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74166 () Bool)

(assert start!74166)

(declare-fun b!872002 () Bool)

(declare-fun e!485580 () Bool)

(declare-fun e!485583 () Bool)

(declare-fun mapRes!27368 () Bool)

(assert (=> b!872002 (= e!485580 (and e!485583 mapRes!27368))))

(declare-fun condMapEmpty!27368 () Bool)

(declare-datatypes ((V!27949 0))(
  ( (V!27950 (val!8636 Int)) )
))
(declare-datatypes ((ValueCell!8149 0))(
  ( (ValueCellFull!8149 (v!11057 V!27949)) (EmptyCell!8149) )
))
(declare-datatypes ((array!50484 0))(
  ( (array!50485 (arr!24268 (Array (_ BitVec 32) ValueCell!8149)) (size!24709 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50484)

(declare-fun mapDefault!27368 () ValueCell!8149)

