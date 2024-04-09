; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!105402 () Bool)

(assert start!105402)

(declare-fun b_free!27039 () Bool)

(declare-fun b_next!27039 () Bool)

(assert (=> start!105402 (= b_free!27039 (not b_next!27039))))

(declare-fun tp!94629 () Bool)

(declare-fun b_and!44887 () Bool)

(assert (=> start!105402 (= tp!94629 b_and!44887)))

(declare-fun res!836980 () Bool)

(declare-fun e!713461 () Bool)

(assert (=> start!105402 (=> (not res!836980) (not e!713461))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105402 (= res!836980 (validMask!0 mask!1466))))

(assert (=> start!105402 e!713461))

(assert (=> start!105402 true))

(assert (=> start!105402 tp!94629))

(declare-fun tp_is_empty!31941 () Bool)

(assert (=> start!105402 tp_is_empty!31941))

(declare-datatypes ((array!81515 0))(
  ( (array!81516 (arr!39313 (Array (_ BitVec 32) (_ BitVec 64))) (size!39850 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81515)

(declare-fun array_inv!29903 (array!81515) Bool)

(assert (=> start!105402 (array_inv!29903 _keys!1118)))

(declare-datatypes ((V!47953 0))(
  ( (V!47954 (val!16033 Int)) )
))
(declare-datatypes ((ValueCell!15207 0))(
  ( (ValueCellFull!15207 (v!18733 V!47953)) (EmptyCell!15207) )
))
(declare-datatypes ((array!81517 0))(
  ( (array!81518 (arr!39314 (Array (_ BitVec 32) ValueCell!15207)) (size!39851 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81517)

(declare-fun e!713459 () Bool)

(declare-fun array_inv!29904 (array!81517) Bool)

(assert (=> start!105402 (and (array_inv!29904 _values!914) e!713459)))

(declare-fun b!1255295 () Bool)

(declare-fun e!713462 () Bool)

(assert (=> b!1255295 (= e!713462 tp_is_empty!31941)))

(declare-fun b!1255296 () Bool)

(declare-fun mapRes!49693 () Bool)

(assert (=> b!1255296 (= e!713459 (and e!713462 mapRes!49693))))

(declare-fun condMapEmpty!49693 () Bool)

(declare-fun mapDefault!49693 () ValueCell!15207)

(assert (=> b!1255296 (= condMapEmpty!49693 (= (arr!39314 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15207)) mapDefault!49693)))))

(declare-fun mapNonEmpty!49693 () Bool)

(declare-fun tp!94628 () Bool)

(declare-fun e!713460 () Bool)

(assert (=> mapNonEmpty!49693 (= mapRes!49693 (and tp!94628 e!713460))))

(declare-fun mapRest!49693 () (Array (_ BitVec 32) ValueCell!15207))

(declare-fun mapValue!49693 () ValueCell!15207)

(declare-fun mapKey!49693 () (_ BitVec 32))

(assert (=> mapNonEmpty!49693 (= (arr!39314 _values!914) (store mapRest!49693 mapKey!49693 mapValue!49693))))

(declare-fun mapIsEmpty!49693 () Bool)

(assert (=> mapIsEmpty!49693 mapRes!49693))

(declare-fun b!1255297 () Bool)

(declare-fun res!836977 () Bool)

(assert (=> b!1255297 (=> (not res!836977) (not e!713461))))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(assert (=> b!1255297 (= res!836977 (and (= (size!39851 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39850 _keys!1118) (size!39851 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1255298 () Bool)

(declare-fun res!836979 () Bool)

(assert (=> b!1255298 (=> (not res!836979) (not e!713461))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81515 (_ BitVec 32)) Bool)

(assert (=> b!1255298 (= res!836979 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1255299 () Bool)

(declare-fun res!836978 () Bool)

(assert (=> b!1255299 (=> (not res!836978) (not e!713461))))

(declare-datatypes ((List!28088 0))(
  ( (Nil!28085) (Cons!28084 (h!29293 (_ BitVec 64)) (t!41580 List!28088)) )
))
(declare-fun arrayNoDuplicates!0 (array!81515 (_ BitVec 32) List!28088) Bool)

(assert (=> b!1255299 (= res!836978 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28085))))

(declare-fun b!1255300 () Bool)

(assert (=> b!1255300 (= e!713460 tp_is_empty!31941)))

(declare-fun b!1255301 () Bool)

(assert (=> b!1255301 (= e!713461 (not true))))

(declare-datatypes ((tuple2!20848 0))(
  ( (tuple2!20849 (_1!10434 (_ BitVec 64)) (_2!10434 V!47953)) )
))
(declare-datatypes ((List!28089 0))(
  ( (Nil!28086) (Cons!28085 (h!29294 tuple2!20848) (t!41581 List!28089)) )
))
(declare-datatypes ((ListLongMap!18733 0))(
  ( (ListLongMap!18734 (toList!9382 List!28089)) )
))
(declare-fun lt!567495 () ListLongMap!18733)

(declare-fun lt!567497 () ListLongMap!18733)

(assert (=> b!1255301 (= lt!567495 lt!567497)))

(declare-fun defaultEntry!922 () Int)

(declare-datatypes ((Unit!41738 0))(
  ( (Unit!41739) )
))
(declare-fun lt!567496 () Unit!41738)

(declare-fun minValueAfter!43 () V!47953)

(declare-fun minValueBefore!43 () V!47953)

(declare-fun zeroValue!871 () V!47953)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1061 (array!81515 array!81517 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47953 V!47953 V!47953 V!47953 (_ BitVec 32) Int) Unit!41738)

(assert (=> b!1255301 (= lt!567496 (lemmaNoChangeToArrayThenSameMapNoExtras!1061 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5743 (array!81515 array!81517 (_ BitVec 32) (_ BitVec 32) V!47953 V!47953 (_ BitVec 32) Int) ListLongMap!18733)

(assert (=> b!1255301 (= lt!567497 (getCurrentListMapNoExtraKeys!5743 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1255301 (= lt!567495 (getCurrentListMapNoExtraKeys!5743 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (= (and start!105402 res!836980) b!1255297))

(assert (= (and b!1255297 res!836977) b!1255298))

(assert (= (and b!1255298 res!836979) b!1255299))

(assert (= (and b!1255299 res!836978) b!1255301))

(assert (= (and b!1255296 condMapEmpty!49693) mapIsEmpty!49693))

(assert (= (and b!1255296 (not condMapEmpty!49693)) mapNonEmpty!49693))

(get-info :version)

(assert (= (and mapNonEmpty!49693 ((_ is ValueCellFull!15207) mapValue!49693)) b!1255300))

(assert (= (and b!1255296 ((_ is ValueCellFull!15207) mapDefault!49693)) b!1255295))

(assert (= start!105402 b!1255296))

(declare-fun m!1156085 () Bool)

(assert (=> mapNonEmpty!49693 m!1156085))

(declare-fun m!1156087 () Bool)

(assert (=> b!1255301 m!1156087))

(declare-fun m!1156089 () Bool)

(assert (=> b!1255301 m!1156089))

(declare-fun m!1156091 () Bool)

(assert (=> b!1255301 m!1156091))

(declare-fun m!1156093 () Bool)

(assert (=> start!105402 m!1156093))

(declare-fun m!1156095 () Bool)

(assert (=> start!105402 m!1156095))

(declare-fun m!1156097 () Bool)

(assert (=> start!105402 m!1156097))

(declare-fun m!1156099 () Bool)

(assert (=> b!1255298 m!1156099))

(declare-fun m!1156101 () Bool)

(assert (=> b!1255299 m!1156101))

(check-sat (not b!1255299) tp_is_empty!31941 (not b!1255301) b_and!44887 (not mapNonEmpty!49693) (not b_next!27039) (not b!1255298) (not start!105402))
(check-sat b_and!44887 (not b_next!27039))
