; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77972 () Bool)

(assert start!77972)

(declare-fun b_free!16487 () Bool)

(declare-fun b_next!16487 () Bool)

(assert (=> start!77972 (= b_free!16487 (not b_next!16487))))

(declare-fun tp!57729 () Bool)

(declare-fun b_and!27075 () Bool)

(assert (=> start!77972 (= tp!57729 b_and!27075)))

(declare-fun mapNonEmpty!30076 () Bool)

(declare-fun mapRes!30076 () Bool)

(declare-fun tp!57730 () Bool)

(declare-fun e!510116 () Bool)

(assert (=> mapNonEmpty!30076 (= mapRes!30076 (and tp!57730 e!510116))))

(declare-datatypes ((V!30171 0))(
  ( (V!30172 (val!9503 Int)) )
))
(declare-datatypes ((ValueCell!8971 0))(
  ( (ValueCellFull!8971 (v!12011 V!30171)) (EmptyCell!8971) )
))
(declare-datatypes ((array!53828 0))(
  ( (array!53829 (arr!25867 (Array (_ BitVec 32) ValueCell!8971)) (size!26327 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53828)

(declare-fun mapValue!30076 () ValueCell!8971)

(declare-fun mapKey!30076 () (_ BitVec 32))

(declare-fun mapRest!30076 () (Array (_ BitVec 32) ValueCell!8971))

(assert (=> mapNonEmpty!30076 (= (arr!25867 _values!1152) (store mapRest!30076 mapKey!30076 mapValue!30076))))

(declare-fun b!909851 () Bool)

(declare-fun e!510112 () Bool)

(declare-fun tp_is_empty!18905 () Bool)

(assert (=> b!909851 (= e!510112 tp_is_empty!18905)))

(declare-fun res!614135 () Bool)

(declare-fun e!510113 () Bool)

(assert (=> start!77972 (=> (not res!614135) (not e!510113))))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77972 (= res!614135 (validMask!0 mask!1756))))

(assert (=> start!77972 e!510113))

(declare-fun e!510114 () Bool)

(declare-fun array_inv!20210 (array!53828) Bool)

(assert (=> start!77972 (and (array_inv!20210 _values!1152) e!510114)))

(assert (=> start!77972 tp!57729))

(assert (=> start!77972 true))

(assert (=> start!77972 tp_is_empty!18905))

(declare-datatypes ((array!53830 0))(
  ( (array!53831 (arr!25868 (Array (_ BitVec 32) (_ BitVec 64))) (size!26328 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53830)

(declare-fun array_inv!20211 (array!53830) Bool)

(assert (=> start!77972 (array_inv!20211 _keys!1386)))

(declare-fun b!909852 () Bool)

(declare-fun res!614134 () Bool)

(assert (=> b!909852 (=> (not res!614134) (not e!510113))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53830 (_ BitVec 32)) Bool)

(assert (=> b!909852 (= res!614134 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun mapIsEmpty!30076 () Bool)

(assert (=> mapIsEmpty!30076 mapRes!30076))

(declare-fun b!909853 () Bool)

(assert (=> b!909853 (= e!510116 tp_is_empty!18905)))

(declare-fun b!909854 () Bool)

(declare-fun res!614137 () Bool)

(assert (=> b!909854 (=> (not res!614137) (not e!510113))))

(declare-fun extraKeys!1073 () (_ BitVec 32))

(assert (=> b!909854 (= res!614137 (and (= (size!26327 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26328 _keys!1386) (size!26327 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!909855 () Bool)

(declare-fun res!614136 () Bool)

(assert (=> b!909855 (=> (not res!614136) (not e!510113))))

(declare-datatypes ((List!18272 0))(
  ( (Nil!18269) (Cons!18268 (h!19414 (_ BitVec 64)) (t!25863 List!18272)) )
))
(declare-fun arrayNoDuplicates!0 (array!53830 (_ BitVec 32) List!18272) Bool)

(assert (=> b!909855 (= res!614136 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18269))))

(declare-fun b!909856 () Bool)

(assert (=> b!909856 (= e!510113 false)))

(declare-fun defaultEntry!1160 () Int)

(declare-fun zeroValue!1094 () V!30171)

(declare-fun lt!410080 () Bool)

(declare-fun k!1033 () (_ BitVec 64))

(declare-fun minValue!1094 () V!30171)

(declare-datatypes ((tuple2!12420 0))(
  ( (tuple2!12421 (_1!6220 (_ BitVec 64)) (_2!6220 V!30171)) )
))
(declare-datatypes ((List!18273 0))(
  ( (Nil!18270) (Cons!18269 (h!19415 tuple2!12420) (t!25864 List!18273)) )
))
(declare-datatypes ((ListLongMap!11131 0))(
  ( (ListLongMap!11132 (toList!5581 List!18273)) )
))
(declare-fun contains!4589 (ListLongMap!11131 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2811 (array!53830 array!53828 (_ BitVec 32) (_ BitVec 32) V!30171 V!30171 (_ BitVec 32) Int) ListLongMap!11131)

(assert (=> b!909856 (= lt!410080 (contains!4589 (getCurrentListMap!2811 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k!1033))))

(declare-fun b!909857 () Bool)

(assert (=> b!909857 (= e!510114 (and e!510112 mapRes!30076))))

(declare-fun condMapEmpty!30076 () Bool)

(declare-fun mapDefault!30076 () ValueCell!8971)

