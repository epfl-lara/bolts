; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77908 () Bool)

(assert start!77908)

(declare-fun b_free!16439 () Bool)

(declare-fun b_next!16439 () Bool)

(assert (=> start!77908 (= b_free!16439 (not b_next!16439))))

(declare-fun tp!57582 () Bool)

(declare-fun b_and!27025 () Bool)

(assert (=> start!77908 (= tp!57582 b_and!27025)))

(declare-fun b!909220 () Bool)

(declare-fun e!509684 () Bool)

(assert (=> b!909220 (= e!509684 false)))

(declare-datatypes ((V!30107 0))(
  ( (V!30108 (val!9479 Int)) )
))
(declare-datatypes ((ValueCell!8947 0))(
  ( (ValueCellFull!8947 (v!11986 V!30107)) (EmptyCell!8947) )
))
(declare-datatypes ((array!53732 0))(
  ( (array!53733 (arr!25820 (Array (_ BitVec 32) ValueCell!8947)) (size!26280 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53732)

(declare-fun defaultEntry!1160 () Int)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun lt!409930 () Bool)

(declare-fun zeroValue!1094 () V!30107)

(declare-datatypes ((array!53734 0))(
  ( (array!53735 (arr!25821 (Array (_ BitVec 32) (_ BitVec 64))) (size!26281 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53734)

(declare-fun k!1033 () (_ BitVec 64))

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!30107)

(declare-datatypes ((tuple2!12380 0))(
  ( (tuple2!12381 (_1!6200 (_ BitVec 64)) (_2!6200 V!30107)) )
))
(declare-datatypes ((List!18238 0))(
  ( (Nil!18235) (Cons!18234 (h!19380 tuple2!12380) (t!25827 List!18238)) )
))
(declare-datatypes ((ListLongMap!11091 0))(
  ( (ListLongMap!11092 (toList!5561 List!18238)) )
))
(declare-fun contains!4568 (ListLongMap!11091 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2791 (array!53734 array!53732 (_ BitVec 32) (_ BitVec 32) V!30107 V!30107 (_ BitVec 32) Int) ListLongMap!11091)

(assert (=> b!909220 (= lt!409930 (contains!4568 (getCurrentListMap!2791 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k!1033))))

(declare-fun b!909221 () Bool)

(declare-fun res!613783 () Bool)

(assert (=> b!909221 (=> (not res!613783) (not e!509684))))

(assert (=> b!909221 (= res!613783 (and (= (size!26280 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26281 _keys!1386) (size!26280 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!909222 () Bool)

(declare-fun e!509682 () Bool)

(declare-fun tp_is_empty!18857 () Bool)

(assert (=> b!909222 (= e!509682 tp_is_empty!18857)))

(declare-fun b!909223 () Bool)

(declare-fun e!509680 () Bool)

(declare-fun e!509681 () Bool)

(declare-fun mapRes!30001 () Bool)

(assert (=> b!909223 (= e!509680 (and e!509681 mapRes!30001))))

(declare-fun condMapEmpty!30001 () Bool)

(declare-fun mapDefault!30001 () ValueCell!8947)

