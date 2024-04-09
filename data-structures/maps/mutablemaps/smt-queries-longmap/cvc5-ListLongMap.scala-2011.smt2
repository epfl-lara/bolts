; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35076 () Bool)

(assert start!35076)

(declare-fun b_free!7735 () Bool)

(declare-fun b_next!7735 () Bool)

(assert (=> start!35076 (= b_free!7735 (not b_next!7735))))

(declare-fun tp!26786 () Bool)

(declare-fun b_and!14985 () Bool)

(assert (=> start!35076 (= tp!26786 b_and!14985)))

(declare-fun b!351309 () Bool)

(declare-fun res!194886 () Bool)

(declare-fun e!215155 () Bool)

(assert (=> b!351309 (=> (not res!194886) (not e!215155))))

(declare-datatypes ((array!18917 0))(
  ( (array!18918 (arr!8960 (Array (_ BitVec 32) (_ BitVec 64))) (size!9312 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18917)

(declare-datatypes ((List!5238 0))(
  ( (Nil!5235) (Cons!5234 (h!6090 (_ BitVec 64)) (t!10386 List!5238)) )
))
(declare-fun arrayNoDuplicates!0 (array!18917 (_ BitVec 32) List!5238) Bool)

(assert (=> b!351309 (= res!194886 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5235))))

(declare-fun b!351310 () Bool)

(declare-fun res!194888 () Bool)

(assert (=> b!351310 (=> (not res!194888) (not e!215155))))

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!351310 (= res!194888 (validKeyInArray!0 k!1348))))

(declare-fun mapIsEmpty!13005 () Bool)

(declare-fun mapRes!13005 () Bool)

(assert (=> mapIsEmpty!13005 mapRes!13005))

(declare-fun b!351311 () Bool)

(declare-fun res!194885 () Bool)

(assert (=> b!351311 (=> (not res!194885) (not e!215155))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-datatypes ((V!11227 0))(
  ( (V!11228 (val!3888 Int)) )
))
(declare-fun zeroValue!1467 () V!11227)

(declare-fun defaultEntry!1528 () Int)

(declare-datatypes ((ValueCell!3500 0))(
  ( (ValueCellFull!3500 (v!6072 V!11227)) (EmptyCell!3500) )
))
(declare-datatypes ((array!18919 0))(
  ( (array!18920 (arr!8961 (Array (_ BitVec 32) ValueCell!3500)) (size!9313 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18919)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!11227)

(declare-datatypes ((tuple2!5600 0))(
  ( (tuple2!5601 (_1!2810 (_ BitVec 64)) (_2!2810 V!11227)) )
))
(declare-datatypes ((List!5239 0))(
  ( (Nil!5236) (Cons!5235 (h!6091 tuple2!5600) (t!10387 List!5239)) )
))
(declare-datatypes ((ListLongMap!4527 0))(
  ( (ListLongMap!4528 (toList!2279 List!5239)) )
))
(declare-fun contains!2345 (ListLongMap!4527 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1796 (array!18917 array!18919 (_ BitVec 32) (_ BitVec 32) V!11227 V!11227 (_ BitVec 32) Int) ListLongMap!4527)

(assert (=> b!351311 (= res!194885 (not (contains!2345 (getCurrentListMap!1796 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun b!351313 () Bool)

(declare-fun e!215151 () Bool)

(declare-fun tp_is_empty!7687 () Bool)

(assert (=> b!351313 (= e!215151 tp_is_empty!7687)))

(declare-fun mapNonEmpty!13005 () Bool)

(declare-fun tp!26787 () Bool)

(declare-fun e!215150 () Bool)

(assert (=> mapNonEmpty!13005 (= mapRes!13005 (and tp!26787 e!215150))))

(declare-fun mapValue!13005 () ValueCell!3500)

(declare-fun mapKey!13005 () (_ BitVec 32))

(declare-fun mapRest!13005 () (Array (_ BitVec 32) ValueCell!3500))

(assert (=> mapNonEmpty!13005 (= (arr!8961 _values!1525) (store mapRest!13005 mapKey!13005 mapValue!13005))))

(declare-fun b!351314 () Bool)

(declare-fun e!215152 () Bool)

(assert (=> b!351314 (= e!215152 (and e!215151 mapRes!13005))))

(declare-fun condMapEmpty!13005 () Bool)

(declare-fun mapDefault!13005 () ValueCell!3500)

