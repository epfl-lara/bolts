; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74208 () Bool)

(assert start!74208)

(declare-fun b!872443 () Bool)

(declare-fun e!485895 () Bool)

(declare-fun e!485894 () Bool)

(declare-fun mapRes!27431 () Bool)

(assert (=> b!872443 (= e!485895 (and e!485894 mapRes!27431))))

(declare-fun condMapEmpty!27431 () Bool)

(declare-datatypes ((V!28005 0))(
  ( (V!28006 (val!8657 Int)) )
))
(declare-datatypes ((ValueCell!8170 0))(
  ( (ValueCellFull!8170 (v!11078 V!28005)) (EmptyCell!8170) )
))
(declare-datatypes ((array!50560 0))(
  ( (array!50561 (arr!24306 (Array (_ BitVec 32) ValueCell!8170)) (size!24747 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50560)

(declare-fun mapDefault!27431 () ValueCell!8170)

