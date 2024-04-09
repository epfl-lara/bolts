; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!105696 () Bool)

(assert start!105696)

(declare-fun b_free!27261 () Bool)

(declare-fun b_next!27261 () Bool)

(assert (=> start!105696 (= b_free!27261 (not b_next!27261))))

(declare-fun tp!95307 () Bool)

(declare-fun b_and!45145 () Bool)

(assert (=> start!105696 (= tp!95307 b_and!45145)))

(declare-fun b!1258511 () Bool)

(declare-fun e!715836 () Bool)

(declare-fun e!715837 () Bool)

(assert (=> b!1258511 (= e!715836 (not e!715837))))

(declare-fun res!838897 () Bool)

(assert (=> b!1258511 (=> res!838897 e!715837)))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(assert (=> b!1258511 (= res!838897 (or (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!48249 0))(
  ( (V!48250 (val!16144 Int)) )
))
(declare-datatypes ((tuple2!21018 0))(
  ( (tuple2!21019 (_1!10519 (_ BitVec 64)) (_2!10519 V!48249)) )
))
(declare-datatypes ((List!28250 0))(
  ( (Nil!28247) (Cons!28246 (h!29455 tuple2!21018) (t!41750 List!28250)) )
))
(declare-datatypes ((ListLongMap!18903 0))(
  ( (ListLongMap!18904 (toList!9467 List!28250)) )
))
(declare-fun lt!569224 () ListLongMap!18903)

(declare-fun lt!569226 () ListLongMap!18903)

(assert (=> b!1258511 (= lt!569224 lt!569226)))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!48249)

(declare-datatypes ((Unit!41904 0))(
  ( (Unit!41905) )
))
(declare-fun lt!569223 () Unit!41904)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!48249)

(declare-datatypes ((array!81941 0))(
  ( (array!81942 (arr!39522 (Array (_ BitVec 32) (_ BitVec 64))) (size!40059 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81941)

(declare-datatypes ((ValueCell!15318 0))(
  ( (ValueCellFull!15318 (v!18846 V!48249)) (EmptyCell!15318) )
))
(declare-datatypes ((array!81943 0))(
  ( (array!81944 (arr!39523 (Array (_ BitVec 32) ValueCell!15318)) (size!40060 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81943)

(declare-fun minValueBefore!43 () V!48249)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1135 (array!81941 array!81943 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48249 V!48249 V!48249 V!48249 (_ BitVec 32) Int) Unit!41904)

(assert (=> b!1258511 (= lt!569223 (lemmaNoChangeToArrayThenSameMapNoExtras!1135 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5817 (array!81941 array!81943 (_ BitVec 32) (_ BitVec 32) V!48249 V!48249 (_ BitVec 32) Int) ListLongMap!18903)

(assert (=> b!1258511 (= lt!569226 (getCurrentListMapNoExtraKeys!5817 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1258511 (= lt!569224 (getCurrentListMapNoExtraKeys!5817 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1258512 () Bool)

(assert (=> b!1258512 (= e!715837 true)))

(declare-fun lt!569225 () ListLongMap!18903)

(declare-fun getCurrentListMap!4606 (array!81941 array!81943 (_ BitVec 32) (_ BitVec 32) V!48249 V!48249 (_ BitVec 32) Int) ListLongMap!18903)

(assert (=> b!1258512 (= lt!569225 (getCurrentListMap!4606 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun mapIsEmpty!50038 () Bool)

(declare-fun mapRes!50038 () Bool)

(assert (=> mapIsEmpty!50038 mapRes!50038))

(declare-fun b!1258513 () Bool)

(declare-fun res!838898 () Bool)

(assert (=> b!1258513 (=> (not res!838898) (not e!715836))))

(declare-datatypes ((List!28251 0))(
  ( (Nil!28248) (Cons!28247 (h!29456 (_ BitVec 64)) (t!41751 List!28251)) )
))
(declare-fun arrayNoDuplicates!0 (array!81941 (_ BitVec 32) List!28251) Bool)

(assert (=> b!1258513 (= res!838898 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28248))))

(declare-fun res!838895 () Bool)

(assert (=> start!105696 (=> (not res!838895) (not e!715836))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105696 (= res!838895 (validMask!0 mask!1466))))

(assert (=> start!105696 e!715836))

(assert (=> start!105696 true))

(assert (=> start!105696 tp!95307))

(declare-fun tp_is_empty!32163 () Bool)

(assert (=> start!105696 tp_is_empty!32163))

(declare-fun array_inv!30051 (array!81941) Bool)

(assert (=> start!105696 (array_inv!30051 _keys!1118)))

(declare-fun e!715835 () Bool)

(declare-fun array_inv!30052 (array!81943) Bool)

(assert (=> start!105696 (and (array_inv!30052 _values!914) e!715835)))

(declare-fun b!1258514 () Bool)

(declare-fun e!715840 () Bool)

(assert (=> b!1258514 (= e!715840 tp_is_empty!32163)))

(declare-fun mapNonEmpty!50038 () Bool)

(declare-fun tp!95306 () Bool)

(assert (=> mapNonEmpty!50038 (= mapRes!50038 (and tp!95306 e!715840))))

(declare-fun mapValue!50038 () ValueCell!15318)

(declare-fun mapKey!50038 () (_ BitVec 32))

(declare-fun mapRest!50038 () (Array (_ BitVec 32) ValueCell!15318))

(assert (=> mapNonEmpty!50038 (= (arr!39523 _values!914) (store mapRest!50038 mapKey!50038 mapValue!50038))))

(declare-fun b!1258515 () Bool)

(declare-fun e!715839 () Bool)

(assert (=> b!1258515 (= e!715839 tp_is_empty!32163)))

(declare-fun b!1258516 () Bool)

(declare-fun res!838896 () Bool)

(assert (=> b!1258516 (=> (not res!838896) (not e!715836))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81941 (_ BitVec 32)) Bool)

(assert (=> b!1258516 (= res!838896 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1258517 () Bool)

(assert (=> b!1258517 (= e!715835 (and e!715839 mapRes!50038))))

(declare-fun condMapEmpty!50038 () Bool)

(declare-fun mapDefault!50038 () ValueCell!15318)

(assert (=> b!1258517 (= condMapEmpty!50038 (= (arr!39523 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15318)) mapDefault!50038)))))

(declare-fun b!1258518 () Bool)

(declare-fun res!838894 () Bool)

(assert (=> b!1258518 (=> (not res!838894) (not e!715836))))

(assert (=> b!1258518 (= res!838894 (and (= (size!40060 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!40059 _keys!1118) (size!40060 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (= (and start!105696 res!838895) b!1258518))

(assert (= (and b!1258518 res!838894) b!1258516))

(assert (= (and b!1258516 res!838896) b!1258513))

(assert (= (and b!1258513 res!838898) b!1258511))

(assert (= (and b!1258511 (not res!838897)) b!1258512))

(assert (= (and b!1258517 condMapEmpty!50038) mapIsEmpty!50038))

(assert (= (and b!1258517 (not condMapEmpty!50038)) mapNonEmpty!50038))

(get-info :version)

(assert (= (and mapNonEmpty!50038 ((_ is ValueCellFull!15318) mapValue!50038)) b!1258514))

(assert (= (and b!1258517 ((_ is ValueCellFull!15318) mapDefault!50038)) b!1258515))

(assert (= start!105696 b!1258517))

(declare-fun m!1158955 () Bool)

(assert (=> b!1258513 m!1158955))

(declare-fun m!1158957 () Bool)

(assert (=> b!1258512 m!1158957))

(declare-fun m!1158959 () Bool)

(assert (=> start!105696 m!1158959))

(declare-fun m!1158961 () Bool)

(assert (=> start!105696 m!1158961))

(declare-fun m!1158963 () Bool)

(assert (=> start!105696 m!1158963))

(declare-fun m!1158965 () Bool)

(assert (=> mapNonEmpty!50038 m!1158965))

(declare-fun m!1158967 () Bool)

(assert (=> b!1258511 m!1158967))

(declare-fun m!1158969 () Bool)

(assert (=> b!1258511 m!1158969))

(declare-fun m!1158971 () Bool)

(assert (=> b!1258511 m!1158971))

(declare-fun m!1158973 () Bool)

(assert (=> b!1258516 m!1158973))

(check-sat b_and!45145 tp_is_empty!32163 (not b!1258513) (not b!1258516) (not start!105696) (not b!1258512) (not mapNonEmpty!50038) (not b_next!27261) (not b!1258511))
(check-sat b_and!45145 (not b_next!27261))
