; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40200 () Bool)

(assert start!40200)

(declare-fun b_free!10459 () Bool)

(declare-fun b_next!10459 () Bool)

(assert (=> start!40200 (= b_free!10459 (not b_next!10459))))

(declare-fun tp!36906 () Bool)

(declare-fun b_and!18445 () Bool)

(assert (=> start!40200 (= tp!36906 b_and!18445)))

(declare-fun b!440177 () Bool)

(declare-fun e!259357 () Bool)

(declare-fun tp_is_empty!11611 () Bool)

(assert (=> b!440177 (= e!259357 tp_is_empty!11611)))

(declare-fun b!440178 () Bool)

(declare-fun e!259354 () Bool)

(declare-fun mapRes!19038 () Bool)

(assert (=> b!440178 (= e!259354 (and e!259357 mapRes!19038))))

(declare-fun condMapEmpty!19038 () Bool)

(declare-datatypes ((V!16587 0))(
  ( (V!16588 (val!5850 Int)) )
))
(declare-datatypes ((ValueCell!5462 0))(
  ( (ValueCellFull!5462 (v!8093 V!16587)) (EmptyCell!5462) )
))
(declare-datatypes ((array!27013 0))(
  ( (array!27014 (arr!12953 (Array (_ BitVec 32) ValueCell!5462)) (size!13305 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27013)

(declare-fun mapDefault!19038 () ValueCell!5462)

