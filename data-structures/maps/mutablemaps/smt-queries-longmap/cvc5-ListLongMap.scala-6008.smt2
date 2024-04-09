; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77928 () Bool)

(assert start!77928)

(declare-fun b_free!16459 () Bool)

(declare-fun b_next!16459 () Bool)

(assert (=> start!77928 (= b_free!16459 (not b_next!16459))))

(declare-fun tp!57643 () Bool)

(declare-fun b_and!27045 () Bool)

(assert (=> start!77928 (= tp!57643 b_and!27045)))

(declare-fun b!909434 () Bool)

(declare-fun res!613912 () Bool)

(declare-fun e!509834 () Bool)

(assert (=> b!909434 (=> (not res!613912) (not e!509834))))

(declare-datatypes ((V!30135 0))(
  ( (V!30136 (val!9489 Int)) )
))
(declare-datatypes ((ValueCell!8957 0))(
  ( (ValueCellFull!8957 (v!11996 V!30135)) (EmptyCell!8957) )
))
(declare-datatypes ((array!53770 0))(
  ( (array!53771 (arr!25839 (Array (_ BitVec 32) ValueCell!8957)) (size!26299 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53770)

(declare-fun defaultEntry!1160 () Int)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun zeroValue!1094 () V!30135)

(declare-datatypes ((array!53772 0))(
  ( (array!53773 (arr!25840 (Array (_ BitVec 32) (_ BitVec 64))) (size!26300 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53772)

(declare-fun k!1033 () (_ BitVec 64))

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!30135)

(declare-datatypes ((tuple2!12394 0))(
  ( (tuple2!12395 (_1!6207 (_ BitVec 64)) (_2!6207 V!30135)) )
))
(declare-datatypes ((List!18251 0))(
  ( (Nil!18248) (Cons!18247 (h!19393 tuple2!12394) (t!25840 List!18251)) )
))
(declare-datatypes ((ListLongMap!11105 0))(
  ( (ListLongMap!11106 (toList!5568 List!18251)) )
))
(declare-fun contains!4575 (ListLongMap!11105 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2798 (array!53772 array!53770 (_ BitVec 32) (_ BitVec 32) V!30135 V!30135 (_ BitVec 32) Int) ListLongMap!11105)

(assert (=> b!909434 (= res!613912 (contains!4575 (getCurrentListMap!2798 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k!1033))))

(declare-fun b!909435 () Bool)

(declare-fun i!717 () (_ BitVec 32))

(assert (=> b!909435 (= e!509834 (and (= (select (arr!25840 _keys!1386) i!717) k!1033) (= k!1033 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1073 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (bvsgt #b00000000000000000000000000000000 (size!26300 _keys!1386))))))

(declare-fun b!909436 () Bool)

(declare-fun res!613908 () Bool)

(assert (=> b!909436 (=> (not res!613908) (not e!509834))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!909436 (= res!613908 (inRange!0 i!717 mask!1756))))

(declare-fun b!909437 () Bool)

(declare-fun e!509830 () Bool)

(declare-fun tp_is_empty!18877 () Bool)

(assert (=> b!909437 (= e!509830 tp_is_empty!18877)))

(declare-fun mapIsEmpty!30031 () Bool)

(declare-fun mapRes!30031 () Bool)

(assert (=> mapIsEmpty!30031 mapRes!30031))

(declare-fun mapNonEmpty!30031 () Bool)

(declare-fun tp!57642 () Bool)

(declare-fun e!509832 () Bool)

(assert (=> mapNonEmpty!30031 (= mapRes!30031 (and tp!57642 e!509832))))

(declare-fun mapRest!30031 () (Array (_ BitVec 32) ValueCell!8957))

(declare-fun mapValue!30031 () ValueCell!8957)

(declare-fun mapKey!30031 () (_ BitVec 32))

(assert (=> mapNonEmpty!30031 (= (arr!25839 _values!1152) (store mapRest!30031 mapKey!30031 mapValue!30031))))

(declare-fun b!909438 () Bool)

(declare-fun e!509831 () Bool)

(assert (=> b!909438 (= e!509831 (and e!509830 mapRes!30031))))

(declare-fun condMapEmpty!30031 () Bool)

(declare-fun mapDefault!30031 () ValueCell!8957)

