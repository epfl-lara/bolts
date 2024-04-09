; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40346 () Bool)

(assert start!40346)

(declare-fun b!442958 () Bool)

(declare-fun e!260663 () Bool)

(declare-fun e!260658 () Bool)

(declare-fun mapRes!19230 () Bool)

(assert (=> b!442958 (= e!260663 (and e!260658 mapRes!19230))))

(declare-fun condMapEmpty!19230 () Bool)

(declare-datatypes ((V!16755 0))(
  ( (V!16756 (val!5913 Int)) )
))
(declare-datatypes ((ValueCell!5525 0))(
  ( (ValueCellFull!5525 (v!8160 V!16755)) (EmptyCell!5525) )
))
(declare-datatypes ((array!27255 0))(
  ( (array!27256 (arr!13073 (Array (_ BitVec 32) ValueCell!5525)) (size!13425 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27255)

(declare-fun mapDefault!19230 () ValueCell!5525)

