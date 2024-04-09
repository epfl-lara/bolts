; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77980 () Bool)

(assert start!77980)

(declare-fun b_free!16495 () Bool)

(declare-fun b_next!16495 () Bool)

(assert (=> start!77980 (= b_free!16495 (not b_next!16495))))

(declare-fun tp!57754 () Bool)

(declare-fun b_and!27083 () Bool)

(assert (=> start!77980 (= tp!57754 b_and!27083)))

(declare-fun mapIsEmpty!30088 () Bool)

(declare-fun mapRes!30088 () Bool)

(assert (=> mapIsEmpty!30088 mapRes!30088))

(declare-fun b!909935 () Bool)

(declare-fun res!614183 () Bool)

(declare-fun e!510173 () Bool)

(assert (=> b!909935 (=> (not res!614183) (not e!510173))))

(declare-datatypes ((array!53844 0))(
  ( (array!53845 (arr!25875 (Array (_ BitVec 32) (_ BitVec 64))) (size!26335 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53844)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53844 (_ BitVec 32)) Bool)

(assert (=> b!909935 (= res!614183 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!909936 () Bool)

(declare-fun res!614184 () Bool)

(assert (=> b!909936 (=> (not res!614184) (not e!510173))))

(declare-datatypes ((List!18279 0))(
  ( (Nil!18276) (Cons!18275 (h!19421 (_ BitVec 64)) (t!25870 List!18279)) )
))
(declare-fun arrayNoDuplicates!0 (array!53844 (_ BitVec 32) List!18279) Bool)

(assert (=> b!909936 (= res!614184 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18276))))

(declare-fun b!909937 () Bool)

(declare-fun e!510172 () Bool)

(declare-fun tp_is_empty!18913 () Bool)

(assert (=> b!909937 (= e!510172 tp_is_empty!18913)))

(declare-fun mapNonEmpty!30088 () Bool)

(declare-fun tp!57753 () Bool)

(assert (=> mapNonEmpty!30088 (= mapRes!30088 (and tp!57753 e!510172))))

(declare-datatypes ((V!30183 0))(
  ( (V!30184 (val!9507 Int)) )
))
(declare-datatypes ((ValueCell!8975 0))(
  ( (ValueCellFull!8975 (v!12015 V!30183)) (EmptyCell!8975) )
))
(declare-datatypes ((array!53846 0))(
  ( (array!53847 (arr!25876 (Array (_ BitVec 32) ValueCell!8975)) (size!26336 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53846)

(declare-fun mapRest!30088 () (Array (_ BitVec 32) ValueCell!8975))

(declare-fun mapKey!30088 () (_ BitVec 32))

(declare-fun mapValue!30088 () ValueCell!8975)

(assert (=> mapNonEmpty!30088 (= (arr!25876 _values!1152) (store mapRest!30088 mapKey!30088 mapValue!30088))))

(declare-fun res!614182 () Bool)

(assert (=> start!77980 (=> (not res!614182) (not e!510173))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77980 (= res!614182 (validMask!0 mask!1756))))

(assert (=> start!77980 e!510173))

(declare-fun e!510176 () Bool)

(declare-fun array_inv!20216 (array!53846) Bool)

(assert (=> start!77980 (and (array_inv!20216 _values!1152) e!510176)))

(assert (=> start!77980 tp!57754))

(assert (=> start!77980 true))

(assert (=> start!77980 tp_is_empty!18913))

(declare-fun array_inv!20217 (array!53844) Bool)

(assert (=> start!77980 (array_inv!20217 _keys!1386)))

(declare-fun b!909938 () Bool)

(declare-fun e!510174 () Bool)

(assert (=> b!909938 (= e!510174 tp_is_empty!18913)))

(declare-fun b!909939 () Bool)

(assert (=> b!909939 (= e!510173 false)))

(declare-fun defaultEntry!1160 () Int)

(declare-fun zeroValue!1094 () V!30183)

(declare-fun k!1033 () (_ BitVec 64))

(declare-fun lt!410092 () Bool)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!30183)

(declare-datatypes ((tuple2!12428 0))(
  ( (tuple2!12429 (_1!6224 (_ BitVec 64)) (_2!6224 V!30183)) )
))
(declare-datatypes ((List!18280 0))(
  ( (Nil!18277) (Cons!18276 (h!19422 tuple2!12428) (t!25871 List!18280)) )
))
(declare-datatypes ((ListLongMap!11139 0))(
  ( (ListLongMap!11140 (toList!5585 List!18280)) )
))
(declare-fun contains!4593 (ListLongMap!11139 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2815 (array!53844 array!53846 (_ BitVec 32) (_ BitVec 32) V!30183 V!30183 (_ BitVec 32) Int) ListLongMap!11139)

(assert (=> b!909939 (= lt!410092 (contains!4593 (getCurrentListMap!2815 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k!1033))))

(declare-fun b!909940 () Bool)

(declare-fun res!614185 () Bool)

(assert (=> b!909940 (=> (not res!614185) (not e!510173))))

(assert (=> b!909940 (= res!614185 (and (= (size!26336 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26335 _keys!1386) (size!26336 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!909941 () Bool)

(assert (=> b!909941 (= e!510176 (and e!510174 mapRes!30088))))

(declare-fun condMapEmpty!30088 () Bool)

(declare-fun mapDefault!30088 () ValueCell!8975)

