; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40370 () Bool)

(assert start!40370)

(declare-fun b!443210 () Bool)

(declare-fun e!260789 () Bool)

(declare-fun e!260788 () Bool)

(declare-fun mapRes!19248 () Bool)

(assert (=> b!443210 (= e!260789 (and e!260788 mapRes!19248))))

(declare-fun condMapEmpty!19248 () Bool)

(declare-datatypes ((V!16767 0))(
  ( (V!16768 (val!5918 Int)) )
))
(declare-datatypes ((ValueCell!5530 0))(
  ( (ValueCellFull!5530 (v!8165 V!16767)) (EmptyCell!5530) )
))
(declare-datatypes ((array!27275 0))(
  ( (array!27276 (arr!13082 (Array (_ BitVec 32) ValueCell!5530)) (size!13434 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27275)

(declare-fun mapDefault!19248 () ValueCell!5530)

