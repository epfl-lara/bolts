; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40408 () Bool)

(assert start!40408)

(declare-fun b!443951 () Bool)

(declare-fun e!261130 () Bool)

(declare-fun e!261135 () Bool)

(declare-fun mapRes!19305 () Bool)

(assert (=> b!443951 (= e!261130 (and e!261135 mapRes!19305))))

(declare-fun condMapEmpty!19305 () Bool)

(declare-datatypes ((V!16819 0))(
  ( (V!16820 (val!5937 Int)) )
))
(declare-datatypes ((ValueCell!5549 0))(
  ( (ValueCellFull!5549 (v!8184 V!16819)) (EmptyCell!5549) )
))
(declare-datatypes ((array!27345 0))(
  ( (array!27346 (arr!13117 (Array (_ BitVec 32) ValueCell!5549)) (size!13469 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27345)

(declare-fun mapDefault!19305 () ValueCell!5549)

