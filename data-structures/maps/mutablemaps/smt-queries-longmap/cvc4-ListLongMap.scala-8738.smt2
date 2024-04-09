; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105992 () Bool)

(assert start!105992)

(declare-fun b_free!27467 () Bool)

(declare-fun b_next!27467 () Bool)

(assert (=> start!105992 (= b_free!27467 (not b_next!27467))))

(declare-fun tp!95940 () Bool)

(declare-fun b_and!45403 () Bool)

(assert (=> start!105992 (= tp!95940 b_and!45403)))

(declare-fun b!1261820 () Bool)

(declare-fun e!718253 () Bool)

(declare-fun tp_is_empty!32369 () Bool)

(assert (=> b!1261820 (= e!718253 tp_is_empty!32369)))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun defaultEntry!922 () Int)

(declare-fun b!1261821 () Bool)

(declare-datatypes ((V!48523 0))(
  ( (V!48524 (val!16247 Int)) )
))
(declare-fun minValueAfter!43 () V!48523)

(declare-fun e!718256 () Bool)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!48523)

(declare-datatypes ((array!82339 0))(
  ( (array!82340 (arr!39716 (Array (_ BitVec 32) (_ BitVec 64))) (size!40253 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!82339)

(declare-datatypes ((ValueCell!15421 0))(
  ( (ValueCellFull!15421 (v!18952 V!48523)) (EmptyCell!15421) )
))
(declare-datatypes ((array!82341 0))(
  ( (array!82342 (arr!39717 (Array (_ BitVec 32) ValueCell!15421)) (size!40254 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!82341)

(declare-datatypes ((tuple2!21172 0))(
  ( (tuple2!21173 (_1!10596 (_ BitVec 64)) (_2!10596 V!48523)) )
))
(declare-datatypes ((List!28394 0))(
  ( (Nil!28391) (Cons!28390 (h!29599 tuple2!21172) (t!41904 List!28394)) )
))
(declare-datatypes ((ListLongMap!19057 0))(
  ( (ListLongMap!19058 (toList!9544 List!28394)) )
))
(declare-fun lt!571822 () ListLongMap!19057)

(declare-fun getCurrentListMap!4650 (array!82339 array!82341 (_ BitVec 32) (_ BitVec 32) V!48523 V!48523 (_ BitVec 32) Int) ListLongMap!19057)

(assert (=> b!1261821 (= e!718256 (= lt!571822 (getCurrentListMap!4650 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922)))))

(declare-fun lt!571825 () ListLongMap!19057)

(assert (=> b!1261821 (= lt!571822 lt!571825)))

(declare-fun -!2143 (ListLongMap!19057 (_ BitVec 64)) ListLongMap!19057)

(assert (=> b!1261821 (= lt!571822 (-!2143 lt!571825 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!42017 0))(
  ( (Unit!42018) )
))
(declare-fun lt!571821 () Unit!42017)

(declare-fun removeNotPresentStillSame!143 (ListLongMap!19057 (_ BitVec 64)) Unit!42017)

(assert (=> b!1261821 (= lt!571821 (removeNotPresentStillSame!143 lt!571825 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1261822 () Bool)

(declare-fun res!840834 () Bool)

(declare-fun e!718251 () Bool)

(assert (=> b!1261822 (=> (not res!840834) (not e!718251))))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(assert (=> b!1261822 (= res!840834 (and (= (size!40254 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!40253 _keys!1118) (size!40254 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!50362 () Bool)

(declare-fun mapRes!50362 () Bool)

(assert (=> mapIsEmpty!50362 mapRes!50362))

(declare-fun b!1261823 () Bool)

(declare-fun e!718252 () Bool)

(assert (=> b!1261823 (= e!718252 tp_is_empty!32369)))

(declare-fun b!1261824 () Bool)

(declare-fun e!718255 () Bool)

(assert (=> b!1261824 (= e!718251 (not e!718255))))

(declare-fun res!840832 () Bool)

(assert (=> b!1261824 (=> res!840832 e!718255)))

(assert (=> b!1261824 (= res!840832 (or (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!571823 () ListLongMap!19057)

(declare-fun lt!571820 () ListLongMap!19057)

(assert (=> b!1261824 (= lt!571823 lt!571820)))

(declare-fun lt!571824 () Unit!42017)

(declare-fun minValueBefore!43 () V!48523)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1181 (array!82339 array!82341 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48523 V!48523 V!48523 V!48523 (_ BitVec 32) Int) Unit!42017)

(assert (=> b!1261824 (= lt!571824 (lemmaNoChangeToArrayThenSameMapNoExtras!1181 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5885 (array!82339 array!82341 (_ BitVec 32) (_ BitVec 32) V!48523 V!48523 (_ BitVec 32) Int) ListLongMap!19057)

(assert (=> b!1261824 (= lt!571820 (getCurrentListMapNoExtraKeys!5885 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1261824 (= lt!571823 (getCurrentListMapNoExtraKeys!5885 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1261825 () Bool)

(declare-fun res!840833 () Bool)

(assert (=> b!1261825 (=> (not res!840833) (not e!718251))))

(declare-datatypes ((List!28395 0))(
  ( (Nil!28392) (Cons!28391 (h!29600 (_ BitVec 64)) (t!41905 List!28395)) )
))
(declare-fun arrayNoDuplicates!0 (array!82339 (_ BitVec 32) List!28395) Bool)

(assert (=> b!1261825 (= res!840833 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28392))))

(declare-fun res!840836 () Bool)

(assert (=> start!105992 (=> (not res!840836) (not e!718251))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105992 (= res!840836 (validMask!0 mask!1466))))

(assert (=> start!105992 e!718251))

(assert (=> start!105992 true))

(assert (=> start!105992 tp!95940))

(assert (=> start!105992 tp_is_empty!32369))

(declare-fun array_inv!30185 (array!82339) Bool)

(assert (=> start!105992 (array_inv!30185 _keys!1118)))

(declare-fun e!718254 () Bool)

(declare-fun array_inv!30186 (array!82341) Bool)

(assert (=> start!105992 (and (array_inv!30186 _values!914) e!718254)))

(declare-fun b!1261826 () Bool)

(assert (=> b!1261826 (= e!718254 (and e!718253 mapRes!50362))))

(declare-fun condMapEmpty!50362 () Bool)

(declare-fun mapDefault!50362 () ValueCell!15421)

