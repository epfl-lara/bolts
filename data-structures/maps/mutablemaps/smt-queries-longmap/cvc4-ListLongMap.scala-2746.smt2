; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40326 () Bool)

(assert start!40326)

(declare-fun b!442567 () Bool)

(declare-fun e!260481 () Bool)

(declare-fun e!260479 () Bool)

(declare-fun mapRes!19200 () Bool)

(assert (=> b!442567 (= e!260481 (and e!260479 mapRes!19200))))

(declare-fun condMapEmpty!19200 () Bool)

(declare-datatypes ((V!16727 0))(
  ( (V!16728 (val!5903 Int)) )
))
(declare-datatypes ((ValueCell!5515 0))(
  ( (ValueCellFull!5515 (v!8150 V!16727)) (EmptyCell!5515) )
))
(declare-datatypes ((array!27217 0))(
  ( (array!27218 (arr!13054 (Array (_ BitVec 32) ValueCell!5515)) (size!13406 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27217)

(declare-fun mapDefault!19200 () ValueCell!5515)

