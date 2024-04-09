; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!105214 () Bool)

(assert start!105214)

(declare-fun b_free!26895 () Bool)

(declare-fun b_next!26895 () Bool)

(assert (=> start!105214 (= b_free!26895 (not b_next!26895))))

(declare-fun tp!94191 () Bool)

(declare-fun b_and!44719 () Bool)

(assert (=> start!105214 (= tp!94191 b_and!44719)))

(declare-fun mapIsEmpty!49471 () Bool)

(declare-fun mapRes!49471 () Bool)

(assert (=> mapIsEmpty!49471 mapRes!49471))

(declare-fun b!1253267 () Bool)

(declare-fun res!835805 () Bool)

(declare-fun e!711996 () Bool)

(assert (=> b!1253267 (=> (not res!835805) (not e!711996))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((array!81235 0))(
  ( (array!81236 (arr!39175 (Array (_ BitVec 32) (_ BitVec 64))) (size!39712 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81235)

(declare-datatypes ((V!47761 0))(
  ( (V!47762 (val!15961 Int)) )
))
(declare-datatypes ((ValueCell!15135 0))(
  ( (ValueCellFull!15135 (v!18659 V!47761)) (EmptyCell!15135) )
))
(declare-datatypes ((array!81237 0))(
  ( (array!81238 (arr!39176 (Array (_ BitVec 32) ValueCell!15135)) (size!39713 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81237)

(assert (=> b!1253267 (= res!835805 (and (= (size!39713 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39712 _keys!1118) (size!39713 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!49471 () Bool)

(declare-fun tp!94190 () Bool)

(declare-fun e!711997 () Bool)

(assert (=> mapNonEmpty!49471 (= mapRes!49471 (and tp!94190 e!711997))))

(declare-fun mapKey!49471 () (_ BitVec 32))

(declare-fun mapRest!49471 () (Array (_ BitVec 32) ValueCell!15135))

(declare-fun mapValue!49471 () ValueCell!15135)

(assert (=> mapNonEmpty!49471 (= (arr!39176 _values!914) (store mapRest!49471 mapKey!49471 mapValue!49471))))

(declare-fun b!1253269 () Bool)

(declare-fun e!711993 () Bool)

(assert (=> b!1253269 (= e!711996 (not e!711993))))

(declare-fun res!835801 () Bool)

(assert (=> b!1253269 (=> res!835801 e!711993)))

(assert (=> b!1253269 (= res!835801 (or (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!20742 0))(
  ( (tuple2!20743 (_1!10381 (_ BitVec 64)) (_2!10381 V!47761)) )
))
(declare-datatypes ((List!27990 0))(
  ( (Nil!27987) (Cons!27986 (h!29195 tuple2!20742) (t!41478 List!27990)) )
))
(declare-datatypes ((ListLongMap!18627 0))(
  ( (ListLongMap!18628 (toList!9329 List!27990)) )
))
(declare-fun lt!565836 () ListLongMap!18627)

(declare-fun lt!565838 () ListLongMap!18627)

(assert (=> b!1253269 (= lt!565836 lt!565838)))

(declare-fun defaultEntry!922 () Int)

(declare-datatypes ((Unit!41628 0))(
  ( (Unit!41629) )
))
(declare-fun lt!565833 () Unit!41628)

(declare-fun minValueAfter!43 () V!47761)

(declare-fun zeroValue!871 () V!47761)

(declare-fun minValueBefore!43 () V!47761)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1016 (array!81235 array!81237 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47761 V!47761 V!47761 V!47761 (_ BitVec 32) Int) Unit!41628)

(assert (=> b!1253269 (= lt!565833 (lemmaNoChangeToArrayThenSameMapNoExtras!1016 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5698 (array!81235 array!81237 (_ BitVec 32) (_ BitVec 32) V!47761 V!47761 (_ BitVec 32) Int) ListLongMap!18627)

(assert (=> b!1253269 (= lt!565838 (getCurrentListMapNoExtraKeys!5698 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1253269 (= lt!565836 (getCurrentListMapNoExtraKeys!5698 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1253270 () Bool)

(declare-fun tp_is_empty!31797 () Bool)

(assert (=> b!1253270 (= e!711997 tp_is_empty!31797)))

(declare-fun b!1253271 () Bool)

(declare-fun res!835804 () Bool)

(assert (=> b!1253271 (=> (not res!835804) (not e!711996))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81235 (_ BitVec 32)) Bool)

(assert (=> b!1253271 (= res!835804 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1253272 () Bool)

(declare-fun e!711995 () Bool)

(assert (=> b!1253272 (= e!711995 tp_is_empty!31797)))

(declare-fun b!1253273 () Bool)

(declare-fun e!711998 () Bool)

(assert (=> b!1253273 (= e!711998 (and e!711995 mapRes!49471))))

(declare-fun condMapEmpty!49471 () Bool)

(declare-fun mapDefault!49471 () ValueCell!15135)

(assert (=> b!1253273 (= condMapEmpty!49471 (= (arr!39176 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15135)) mapDefault!49471)))))

(declare-fun b!1253274 () Bool)

(assert (=> b!1253274 (= e!711993 true)))

(declare-fun lt!565831 () ListLongMap!18627)

(declare-fun lt!565832 () ListLongMap!18627)

(declare-fun -!2042 (ListLongMap!18627 (_ BitVec 64)) ListLongMap!18627)

(assert (=> b!1253274 (= lt!565831 (-!2042 lt!565832 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!565835 () ListLongMap!18627)

(assert (=> b!1253274 (= (-!2042 lt!565835 #b1000000000000000000000000000000000000000000000000000000000000000) lt!565836)))

(declare-fun lt!565837 () Unit!41628)

(declare-fun addThenRemoveForNewKeyIsSame!302 (ListLongMap!18627 (_ BitVec 64) V!47761) Unit!41628)

(assert (=> b!1253274 (= lt!565837 (addThenRemoveForNewKeyIsSame!302 lt!565836 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))

(declare-fun lt!565834 () ListLongMap!18627)

(assert (=> b!1253274 (and (= lt!565832 lt!565835) (= lt!565834 lt!565838))))

(declare-fun +!4133 (ListLongMap!18627 tuple2!20742) ListLongMap!18627)

(assert (=> b!1253274 (= lt!565835 (+!4133 lt!565836 (tuple2!20743 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43)))))

(declare-fun getCurrentListMap!4520 (array!81235 array!81237 (_ BitVec 32) (_ BitVec 32) V!47761 V!47761 (_ BitVec 32) Int) ListLongMap!18627)

(assert (=> b!1253274 (= lt!565834 (getCurrentListMap!4520 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1253274 (= lt!565832 (getCurrentListMap!4520 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun res!835802 () Bool)

(assert (=> start!105214 (=> (not res!835802) (not e!711996))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105214 (= res!835802 (validMask!0 mask!1466))))

(assert (=> start!105214 e!711996))

(assert (=> start!105214 true))

(assert (=> start!105214 tp!94191))

(assert (=> start!105214 tp_is_empty!31797))

(declare-fun array_inv!29807 (array!81235) Bool)

(assert (=> start!105214 (array_inv!29807 _keys!1118)))

(declare-fun array_inv!29808 (array!81237) Bool)

(assert (=> start!105214 (and (array_inv!29808 _values!914) e!711998)))

(declare-fun b!1253268 () Bool)

(declare-fun res!835803 () Bool)

(assert (=> b!1253268 (=> (not res!835803) (not e!711996))))

(declare-datatypes ((List!27991 0))(
  ( (Nil!27988) (Cons!27987 (h!29196 (_ BitVec 64)) (t!41479 List!27991)) )
))
(declare-fun arrayNoDuplicates!0 (array!81235 (_ BitVec 32) List!27991) Bool)

(assert (=> b!1253268 (= res!835803 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27988))))

(assert (= (and start!105214 res!835802) b!1253267))

(assert (= (and b!1253267 res!835805) b!1253271))

(assert (= (and b!1253271 res!835804) b!1253268))

(assert (= (and b!1253268 res!835803) b!1253269))

(assert (= (and b!1253269 (not res!835801)) b!1253274))

(assert (= (and b!1253273 condMapEmpty!49471) mapIsEmpty!49471))

(assert (= (and b!1253273 (not condMapEmpty!49471)) mapNonEmpty!49471))

(get-info :version)

(assert (= (and mapNonEmpty!49471 ((_ is ValueCellFull!15135) mapValue!49471)) b!1253270))

(assert (= (and b!1253273 ((_ is ValueCellFull!15135) mapDefault!49471)) b!1253272))

(assert (= start!105214 b!1253273))

(declare-fun m!1153821 () Bool)

(assert (=> b!1253274 m!1153821))

(declare-fun m!1153823 () Bool)

(assert (=> b!1253274 m!1153823))

(declare-fun m!1153825 () Bool)

(assert (=> b!1253274 m!1153825))

(declare-fun m!1153827 () Bool)

(assert (=> b!1253274 m!1153827))

(declare-fun m!1153829 () Bool)

(assert (=> b!1253274 m!1153829))

(declare-fun m!1153831 () Bool)

(assert (=> b!1253274 m!1153831))

(declare-fun m!1153833 () Bool)

(assert (=> b!1253271 m!1153833))

(declare-fun m!1153835 () Bool)

(assert (=> b!1253268 m!1153835))

(declare-fun m!1153837 () Bool)

(assert (=> b!1253269 m!1153837))

(declare-fun m!1153839 () Bool)

(assert (=> b!1253269 m!1153839))

(declare-fun m!1153841 () Bool)

(assert (=> b!1253269 m!1153841))

(declare-fun m!1153843 () Bool)

(assert (=> start!105214 m!1153843))

(declare-fun m!1153845 () Bool)

(assert (=> start!105214 m!1153845))

(declare-fun m!1153847 () Bool)

(assert (=> start!105214 m!1153847))

(declare-fun m!1153849 () Bool)

(assert (=> mapNonEmpty!49471 m!1153849))

(check-sat tp_is_empty!31797 (not start!105214) (not b!1253269) (not b!1253268) (not mapNonEmpty!49471) b_and!44719 (not b!1253274) (not b!1253271) (not b_next!26895))
(check-sat b_and!44719 (not b_next!26895))
