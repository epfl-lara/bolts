; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!105168 () Bool)

(assert start!105168)

(declare-fun b_free!26865 () Bool)

(declare-fun b_next!26865 () Bool)

(assert (=> start!105168 (= b_free!26865 (not b_next!26865))))

(declare-fun tp!94097 () Bool)

(declare-fun b_and!44679 () Bool)

(assert (=> start!105168 (= tp!94097 b_and!44679)))

(declare-fun b!1252750 () Bool)

(declare-fun res!835513 () Bool)

(declare-fun e!711625 () Bool)

(assert (=> b!1252750 (=> (not res!835513) (not e!711625))))

(declare-datatypes ((array!81175 0))(
  ( (array!81176 (arr!39146 (Array (_ BitVec 32) (_ BitVec 64))) (size!39683 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81175)

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81175 (_ BitVec 32)) Bool)

(assert (=> b!1252750 (= res!835513 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1252751 () Bool)

(declare-fun e!711621 () Bool)

(declare-fun tp_is_empty!31767 () Bool)

(assert (=> b!1252751 (= e!711621 tp_is_empty!31767)))

(declare-fun mapNonEmpty!49423 () Bool)

(declare-fun mapRes!49423 () Bool)

(declare-fun tp!94098 () Bool)

(assert (=> mapNonEmpty!49423 (= mapRes!49423 (and tp!94098 e!711621))))

(declare-datatypes ((V!47721 0))(
  ( (V!47722 (val!15946 Int)) )
))
(declare-datatypes ((ValueCell!15120 0))(
  ( (ValueCellFull!15120 (v!18644 V!47721)) (EmptyCell!15120) )
))
(declare-fun mapValue!49423 () ValueCell!15120)

(declare-fun mapRest!49423 () (Array (_ BitVec 32) ValueCell!15120))

(declare-fun mapKey!49423 () (_ BitVec 32))

(declare-datatypes ((array!81177 0))(
  ( (array!81178 (arr!39147 (Array (_ BitVec 32) ValueCell!15120)) (size!39684 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81177)

(assert (=> mapNonEmpty!49423 (= (arr!39147 _values!914) (store mapRest!49423 mapKey!49423 mapValue!49423))))

(declare-fun b!1252752 () Bool)

(declare-fun res!835512 () Bool)

(assert (=> b!1252752 (=> (not res!835512) (not e!711625))))

(declare-datatypes ((List!27965 0))(
  ( (Nil!27962) (Cons!27961 (h!29170 (_ BitVec 64)) (t!41451 List!27965)) )
))
(declare-fun arrayNoDuplicates!0 (array!81175 (_ BitVec 32) List!27965) Bool)

(assert (=> b!1252752 (= res!835512 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27962))))

(declare-fun b!1252753 () Bool)

(declare-fun e!711622 () Bool)

(declare-fun e!711624 () Bool)

(assert (=> b!1252753 (= e!711622 (and e!711624 mapRes!49423))))

(declare-fun condMapEmpty!49423 () Bool)

(declare-fun mapDefault!49423 () ValueCell!15120)

(assert (=> b!1252753 (= condMapEmpty!49423 (= (arr!39147 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15120)) mapDefault!49423)))))

(declare-fun res!835509 () Bool)

(assert (=> start!105168 (=> (not res!835509) (not e!711625))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105168 (= res!835509 (validMask!0 mask!1466))))

(assert (=> start!105168 e!711625))

(assert (=> start!105168 true))

(assert (=> start!105168 tp!94097))

(assert (=> start!105168 tp_is_empty!31767))

(declare-fun array_inv!29787 (array!81175) Bool)

(assert (=> start!105168 (array_inv!29787 _keys!1118)))

(declare-fun array_inv!29788 (array!81177) Bool)

(assert (=> start!105168 (and (array_inv!29788 _values!914) e!711622)))

(declare-fun b!1252754 () Bool)

(assert (=> b!1252754 (= e!711624 tp_is_empty!31767)))

(declare-fun b!1252755 () Bool)

(declare-fun res!835510 () Bool)

(assert (=> b!1252755 (=> (not res!835510) (not e!711625))))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(assert (=> b!1252755 (= res!835510 (and (= (size!39684 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39683 _keys!1118) (size!39684 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1252756 () Bool)

(declare-fun e!711623 () Bool)

(assert (=> b!1252756 (= e!711623 true)))

(declare-fun zeroValue!871 () V!47721)

(declare-fun minValueBefore!43 () V!47721)

(declare-fun defaultEntry!922 () Int)

(declare-datatypes ((tuple2!20718 0))(
  ( (tuple2!20719 (_1!10369 (_ BitVec 64)) (_2!10369 V!47721)) )
))
(declare-datatypes ((List!27966 0))(
  ( (Nil!27963) (Cons!27962 (h!29171 tuple2!20718) (t!41452 List!27966)) )
))
(declare-datatypes ((ListLongMap!18603 0))(
  ( (ListLongMap!18604 (toList!9317 List!27966)) )
))
(declare-fun lt!565471 () ListLongMap!18603)

(declare-fun getCurrentListMap!4511 (array!81175 array!81177 (_ BitVec 32) (_ BitVec 32) V!47721 V!47721 (_ BitVec 32) Int) ListLongMap!18603)

(assert (=> b!1252756 (= lt!565471 (getCurrentListMap!4511 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1252757 () Bool)

(assert (=> b!1252757 (= e!711625 (not e!711623))))

(declare-fun res!835511 () Bool)

(assert (=> b!1252757 (=> res!835511 e!711623)))

(assert (=> b!1252757 (= res!835511 (or (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun lt!565472 () ListLongMap!18603)

(declare-fun lt!565473 () ListLongMap!18603)

(assert (=> b!1252757 (= lt!565472 lt!565473)))

(declare-fun minValueAfter!43 () V!47721)

(declare-datatypes ((Unit!41607 0))(
  ( (Unit!41608) )
))
(declare-fun lt!565474 () Unit!41607)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1006 (array!81175 array!81177 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47721 V!47721 V!47721 V!47721 (_ BitVec 32) Int) Unit!41607)

(assert (=> b!1252757 (= lt!565474 (lemmaNoChangeToArrayThenSameMapNoExtras!1006 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5688 (array!81175 array!81177 (_ BitVec 32) (_ BitVec 32) V!47721 V!47721 (_ BitVec 32) Int) ListLongMap!18603)

(assert (=> b!1252757 (= lt!565473 (getCurrentListMapNoExtraKeys!5688 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1252757 (= lt!565472 (getCurrentListMapNoExtraKeys!5688 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun mapIsEmpty!49423 () Bool)

(assert (=> mapIsEmpty!49423 mapRes!49423))

(assert (= (and start!105168 res!835509) b!1252755))

(assert (= (and b!1252755 res!835510) b!1252750))

(assert (= (and b!1252750 res!835513) b!1252752))

(assert (= (and b!1252752 res!835512) b!1252757))

(assert (= (and b!1252757 (not res!835511)) b!1252756))

(assert (= (and b!1252753 condMapEmpty!49423) mapIsEmpty!49423))

(assert (= (and b!1252753 (not condMapEmpty!49423)) mapNonEmpty!49423))

(get-info :version)

(assert (= (and mapNonEmpty!49423 ((_ is ValueCellFull!15120) mapValue!49423)) b!1252751))

(assert (= (and b!1252753 ((_ is ValueCellFull!15120) mapDefault!49423)) b!1252754))

(assert (= start!105168 b!1252753))

(declare-fun m!1153351 () Bool)

(assert (=> b!1252752 m!1153351))

(declare-fun m!1153353 () Bool)

(assert (=> b!1252750 m!1153353))

(declare-fun m!1153355 () Bool)

(assert (=> b!1252757 m!1153355))

(declare-fun m!1153357 () Bool)

(assert (=> b!1252757 m!1153357))

(declare-fun m!1153359 () Bool)

(assert (=> b!1252757 m!1153359))

(declare-fun m!1153361 () Bool)

(assert (=> start!105168 m!1153361))

(declare-fun m!1153363 () Bool)

(assert (=> start!105168 m!1153363))

(declare-fun m!1153365 () Bool)

(assert (=> start!105168 m!1153365))

(declare-fun m!1153367 () Bool)

(assert (=> mapNonEmpty!49423 m!1153367))

(declare-fun m!1153369 () Bool)

(assert (=> b!1252756 m!1153369))

(check-sat (not start!105168) (not b!1252757) (not b!1252756) (not b!1252750) tp_is_empty!31767 (not b!1252752) (not mapNonEmpty!49423) (not b_next!26865) b_and!44679)
(check-sat b_and!44679 (not b_next!26865))
