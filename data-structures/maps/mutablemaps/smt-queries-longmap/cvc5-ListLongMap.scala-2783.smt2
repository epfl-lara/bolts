; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40594 () Bool)

(assert start!40594)

(declare-fun b_free!10597 () Bool)

(declare-fun b_next!10597 () Bool)

(assert (=> start!40594 (= b_free!10597 (not b_next!10597))))

(declare-fun tp!37610 () Bool)

(declare-fun b_and!18623 () Bool)

(assert (=> start!40594 (= tp!37610 b_and!18623)))

(declare-fun b!447407 () Bool)

(declare-fun e!262685 () Bool)

(declare-fun e!262686 () Bool)

(declare-fun mapRes!19536 () Bool)

(assert (=> b!447407 (= e!262685 (and e!262686 mapRes!19536))))

(declare-fun condMapEmpty!19536 () Bool)

(declare-datatypes ((V!17019 0))(
  ( (V!17020 (val!6012 Int)) )
))
(declare-datatypes ((ValueCell!5624 0))(
  ( (ValueCellFull!5624 (v!8263 V!17019)) (EmptyCell!5624) )
))
(declare-datatypes ((array!27639 0))(
  ( (array!27640 (arr!13262 (Array (_ BitVec 32) ValueCell!5624)) (size!13614 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27639)

(declare-fun mapDefault!19536 () ValueCell!5624)

