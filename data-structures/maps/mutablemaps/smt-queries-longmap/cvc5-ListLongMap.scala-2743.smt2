; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40304 () Bool)

(assert start!40304)

(declare-fun b!442296 () Bool)

(declare-fun e!260315 () Bool)

(declare-fun e!260317 () Bool)

(declare-fun mapRes!19167 () Bool)

(assert (=> b!442296 (= e!260315 (and e!260317 mapRes!19167))))

(declare-fun condMapEmpty!19167 () Bool)

(declare-datatypes ((V!16699 0))(
  ( (V!16700 (val!5892 Int)) )
))
(declare-datatypes ((ValueCell!5504 0))(
  ( (ValueCellFull!5504 (v!8139 V!16699)) (EmptyCell!5504) )
))
(declare-datatypes ((array!27177 0))(
  ( (array!27178 (arr!13034 (Array (_ BitVec 32) ValueCell!5504)) (size!13386 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27177)

(declare-fun mapDefault!19167 () ValueCell!5504)

