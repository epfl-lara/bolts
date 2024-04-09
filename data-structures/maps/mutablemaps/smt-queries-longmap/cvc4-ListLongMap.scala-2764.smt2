; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40448 () Bool)

(assert start!40448)

(declare-fun b!444732 () Bool)

(declare-fun e!261492 () Bool)

(declare-fun e!261490 () Bool)

(declare-fun mapRes!19365 () Bool)

(assert (=> b!444732 (= e!261492 (and e!261490 mapRes!19365))))

(declare-fun condMapEmpty!19365 () Bool)

(declare-datatypes ((V!16871 0))(
  ( (V!16872 (val!5957 Int)) )
))
(declare-datatypes ((ValueCell!5569 0))(
  ( (ValueCellFull!5569 (v!8204 V!16871)) (EmptyCell!5569) )
))
(declare-datatypes ((array!27421 0))(
  ( (array!27422 (arr!13155 (Array (_ BitVec 32) ValueCell!5569)) (size!13507 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27421)

(declare-fun mapDefault!19365 () ValueCell!5569)

