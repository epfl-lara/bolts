; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!105144 () Bool)

(assert start!105144)

(declare-fun b_free!26841 () Bool)

(declare-fun b_next!26841 () Bool)

(assert (=> start!105144 (= b_free!26841 (not b_next!26841))))

(declare-fun tp!94025 () Bool)

(declare-fun b_and!44655 () Bool)

(assert (=> start!105144 (= tp!94025 b_and!44655)))

(declare-fun mapNonEmpty!49387 () Bool)

(declare-fun mapRes!49387 () Bool)

(declare-fun tp!94026 () Bool)

(declare-fun e!711408 () Bool)

(assert (=> mapNonEmpty!49387 (= mapRes!49387 (and tp!94026 e!711408))))

(declare-fun mapKey!49387 () (_ BitVec 32))

(declare-datatypes ((V!47689 0))(
  ( (V!47690 (val!15934 Int)) )
))
(declare-datatypes ((ValueCell!15108 0))(
  ( (ValueCellFull!15108 (v!18632 V!47689)) (EmptyCell!15108) )
))
(declare-fun mapValue!49387 () ValueCell!15108)

(declare-fun mapRest!49387 () (Array (_ BitVec 32) ValueCell!15108))

(declare-datatypes ((array!81127 0))(
  ( (array!81128 (arr!39122 (Array (_ BitVec 32) ValueCell!15108)) (size!39659 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81127)

(assert (=> mapNonEmpty!49387 (= (arr!39122 _values!914) (store mapRest!49387 mapKey!49387 mapValue!49387))))

(declare-fun b!1252462 () Bool)

(declare-fun res!835330 () Bool)

(declare-fun e!711409 () Bool)

(assert (=> b!1252462 (=> (not res!835330) (not e!711409))))

(declare-datatypes ((array!81129 0))(
  ( (array!81130 (arr!39123 (Array (_ BitVec 32) (_ BitVec 64))) (size!39660 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81129)

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81129 (_ BitVec 32)) Bool)

(assert (=> b!1252462 (= res!835330 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun res!835329 () Bool)

(assert (=> start!105144 (=> (not res!835329) (not e!711409))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105144 (= res!835329 (validMask!0 mask!1466))))

(assert (=> start!105144 e!711409))

(assert (=> start!105144 true))

(assert (=> start!105144 tp!94025))

(declare-fun tp_is_empty!31743 () Bool)

(assert (=> start!105144 tp_is_empty!31743))

(declare-fun array_inv!29771 (array!81129) Bool)

(assert (=> start!105144 (array_inv!29771 _keys!1118)))

(declare-fun e!711406 () Bool)

(declare-fun array_inv!29772 (array!81127) Bool)

(assert (=> start!105144 (and (array_inv!29772 _values!914) e!711406)))

(declare-fun mapIsEmpty!49387 () Bool)

(assert (=> mapIsEmpty!49387 mapRes!49387))

(declare-fun b!1252463 () Bool)

(declare-fun e!711407 () Bool)

(assert (=> b!1252463 (= e!711407 true)))

(declare-fun defaultEntry!922 () Int)

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!47689)

(declare-datatypes ((tuple2!20694 0))(
  ( (tuple2!20695 (_1!10357 (_ BitVec 64)) (_2!10357 V!47689)) )
))
(declare-datatypes ((List!27944 0))(
  ( (Nil!27941) (Cons!27940 (h!29149 tuple2!20694) (t!41430 List!27944)) )
))
(declare-datatypes ((ListLongMap!18579 0))(
  ( (ListLongMap!18580 (toList!9305 List!27944)) )
))
(declare-fun lt!565327 () ListLongMap!18579)

(declare-fun minValueBefore!43 () V!47689)

(declare-fun getCurrentListMap!4501 (array!81129 array!81127 (_ BitVec 32) (_ BitVec 32) V!47689 V!47689 (_ BitVec 32) Int) ListLongMap!18579)

(assert (=> b!1252463 (= lt!565327 (getCurrentListMap!4501 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1252464 () Bool)

(declare-fun e!711404 () Bool)

(assert (=> b!1252464 (= e!711404 tp_is_empty!31743)))

(declare-fun b!1252465 () Bool)

(assert (=> b!1252465 (= e!711406 (and e!711404 mapRes!49387))))

(declare-fun condMapEmpty!49387 () Bool)

(declare-fun mapDefault!49387 () ValueCell!15108)

(assert (=> b!1252465 (= condMapEmpty!49387 (= (arr!39122 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15108)) mapDefault!49387)))))

(declare-fun b!1252466 () Bool)

(assert (=> b!1252466 (= e!711409 (not e!711407))))

(declare-fun res!835331 () Bool)

(assert (=> b!1252466 (=> res!835331 e!711407)))

(assert (=> b!1252466 (= res!835331 (or (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun lt!565328 () ListLongMap!18579)

(declare-fun lt!565330 () ListLongMap!18579)

(assert (=> b!1252466 (= lt!565328 lt!565330)))

(declare-fun minValueAfter!43 () V!47689)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((Unit!41587 0))(
  ( (Unit!41588) )
))
(declare-fun lt!565329 () Unit!41587)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!996 (array!81129 array!81127 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47689 V!47689 V!47689 V!47689 (_ BitVec 32) Int) Unit!41587)

(assert (=> b!1252466 (= lt!565329 (lemmaNoChangeToArrayThenSameMapNoExtras!996 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5678 (array!81129 array!81127 (_ BitVec 32) (_ BitVec 32) V!47689 V!47689 (_ BitVec 32) Int) ListLongMap!18579)

(assert (=> b!1252466 (= lt!565330 (getCurrentListMapNoExtraKeys!5678 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1252466 (= lt!565328 (getCurrentListMapNoExtraKeys!5678 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1252467 () Bool)

(declare-fun res!835332 () Bool)

(assert (=> b!1252467 (=> (not res!835332) (not e!711409))))

(assert (=> b!1252467 (= res!835332 (and (= (size!39659 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39660 _keys!1118) (size!39659 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1252468 () Bool)

(declare-fun res!835333 () Bool)

(assert (=> b!1252468 (=> (not res!835333) (not e!711409))))

(declare-datatypes ((List!27945 0))(
  ( (Nil!27942) (Cons!27941 (h!29150 (_ BitVec 64)) (t!41431 List!27945)) )
))
(declare-fun arrayNoDuplicates!0 (array!81129 (_ BitVec 32) List!27945) Bool)

(assert (=> b!1252468 (= res!835333 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27942))))

(declare-fun b!1252469 () Bool)

(assert (=> b!1252469 (= e!711408 tp_is_empty!31743)))

(assert (= (and start!105144 res!835329) b!1252467))

(assert (= (and b!1252467 res!835332) b!1252462))

(assert (= (and b!1252462 res!835330) b!1252468))

(assert (= (and b!1252468 res!835333) b!1252466))

(assert (= (and b!1252466 (not res!835331)) b!1252463))

(assert (= (and b!1252465 condMapEmpty!49387) mapIsEmpty!49387))

(assert (= (and b!1252465 (not condMapEmpty!49387)) mapNonEmpty!49387))

(get-info :version)

(assert (= (and mapNonEmpty!49387 ((_ is ValueCellFull!15108) mapValue!49387)) b!1252469))

(assert (= (and b!1252465 ((_ is ValueCellFull!15108) mapDefault!49387)) b!1252464))

(assert (= start!105144 b!1252465))

(declare-fun m!1153111 () Bool)

(assert (=> b!1252466 m!1153111))

(declare-fun m!1153113 () Bool)

(assert (=> b!1252466 m!1153113))

(declare-fun m!1153115 () Bool)

(assert (=> b!1252466 m!1153115))

(declare-fun m!1153117 () Bool)

(assert (=> b!1252462 m!1153117))

(declare-fun m!1153119 () Bool)

(assert (=> b!1252463 m!1153119))

(declare-fun m!1153121 () Bool)

(assert (=> b!1252468 m!1153121))

(declare-fun m!1153123 () Bool)

(assert (=> start!105144 m!1153123))

(declare-fun m!1153125 () Bool)

(assert (=> start!105144 m!1153125))

(declare-fun m!1153127 () Bool)

(assert (=> start!105144 m!1153127))

(declare-fun m!1153129 () Bool)

(assert (=> mapNonEmpty!49387 m!1153129))

(check-sat (not mapNonEmpty!49387) (not b!1252463) (not start!105144) (not b!1252468) (not b_next!26841) tp_is_empty!31743 b_and!44655 (not b!1252466) (not b!1252462))
(check-sat b_and!44655 (not b_next!26841))
