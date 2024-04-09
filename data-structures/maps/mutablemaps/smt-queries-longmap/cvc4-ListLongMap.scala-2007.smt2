; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35034 () Bool)

(assert start!35034)

(declare-fun b_free!7715 () Bool)

(declare-fun b_next!7715 () Bool)

(assert (=> start!35034 (= b_free!7715 (not b_next!7715))))

(declare-fun tp!26724 () Bool)

(declare-fun b_and!14963 () Bool)

(assert (=> start!35034 (= tp!26724 b_and!14963)))

(declare-fun res!194589 () Bool)

(declare-fun e!214879 () Bool)

(assert (=> start!35034 (=> (not res!194589) (not e!214879))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35034 (= res!194589 (validMask!0 mask!2385))))

(assert (=> start!35034 e!214879))

(assert (=> start!35034 true))

(declare-fun tp_is_empty!7667 () Bool)

(assert (=> start!35034 tp_is_empty!7667))

(assert (=> start!35034 tp!26724))

(declare-datatypes ((V!11199 0))(
  ( (V!11200 (val!3878 Int)) )
))
(declare-datatypes ((ValueCell!3490 0))(
  ( (ValueCellFull!3490 (v!6061 V!11199)) (EmptyCell!3490) )
))
(declare-datatypes ((array!18879 0))(
  ( (array!18880 (arr!8942 (Array (_ BitVec 32) ValueCell!3490)) (size!9294 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18879)

(declare-fun e!214882 () Bool)

(declare-fun array_inv!6592 (array!18879) Bool)

(assert (=> start!35034 (and (array_inv!6592 _values!1525) e!214882)))

(declare-datatypes ((array!18881 0))(
  ( (array!18882 (arr!8943 (Array (_ BitVec 32) (_ BitVec 64))) (size!9295 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18881)

(declare-fun array_inv!6593 (array!18881) Bool)

(assert (=> start!35034 (array_inv!6593 _keys!1895)))

(declare-fun b!350838 () Bool)

(declare-fun e!214878 () Bool)

(assert (=> b!350838 (= e!214878 tp_is_empty!7667)))

(declare-fun b!350839 () Bool)

(declare-fun res!194592 () Bool)

(assert (=> b!350839 (=> (not res!194592) (not e!214879))))

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun zeroValue!1467 () V!11199)

(declare-fun defaultEntry!1528 () Int)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!11199)

(declare-datatypes ((tuple2!5590 0))(
  ( (tuple2!5591 (_1!2805 (_ BitVec 64)) (_2!2805 V!11199)) )
))
(declare-datatypes ((List!5228 0))(
  ( (Nil!5225) (Cons!5224 (h!6080 tuple2!5590) (t!10374 List!5228)) )
))
(declare-datatypes ((ListLongMap!4517 0))(
  ( (ListLongMap!4518 (toList!2274 List!5228)) )
))
(declare-fun contains!2339 (ListLongMap!4517 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1791 (array!18881 array!18879 (_ BitVec 32) (_ BitVec 32) V!11199 V!11199 (_ BitVec 32) Int) ListLongMap!4517)

(assert (=> b!350839 (= res!194592 (not (contains!2339 (getCurrentListMap!1791 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun b!350840 () Bool)

(declare-fun res!194595 () Bool)

(assert (=> b!350840 (=> (not res!194595) (not e!214879))))

(assert (=> b!350840 (= res!194595 (and (= (size!9294 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!9295 _keys!1895) (size!9294 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!350841 () Bool)

(declare-fun mapRes!12972 () Bool)

(assert (=> b!350841 (= e!214882 (and e!214878 mapRes!12972))))

(declare-fun condMapEmpty!12972 () Bool)

(declare-fun mapDefault!12972 () ValueCell!3490)

