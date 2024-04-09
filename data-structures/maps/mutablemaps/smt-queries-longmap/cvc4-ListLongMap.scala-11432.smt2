; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133396 () Bool)

(assert start!133396)

(declare-fun b!1559199 () Bool)

(declare-fun e!868787 () Bool)

(declare-fun e!868784 () Bool)

(declare-fun mapRes!59082 () Bool)

(assert (=> b!1559199 (= e!868787 (and e!868784 mapRes!59082))))

(declare-fun condMapEmpty!59082 () Bool)

(declare-datatypes ((V!59509 0))(
  ( (V!59510 (val!19322 Int)) )
))
(declare-datatypes ((ValueCell!18208 0))(
  ( (ValueCellFull!18208 (v!22070 V!59509)) (EmptyCell!18208) )
))
(declare-datatypes ((array!103633 0))(
  ( (array!103634 (arr!50007 (Array (_ BitVec 32) ValueCell!18208)) (size!50558 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!103633)

(declare-fun mapDefault!59082 () ValueCell!18208)

