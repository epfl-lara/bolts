; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!105106 () Bool)

(assert start!105106)

(declare-fun b_free!26817 () Bool)

(declare-fun b_next!26817 () Bool)

(assert (=> start!105106 (= b_free!26817 (not b_next!26817))))

(declare-fun tp!93951 () Bool)

(declare-fun b_and!44623 () Bool)

(assert (=> start!105106 (= tp!93951 b_and!44623)))

(declare-fun b!1252102 () Bool)

(declare-fun e!711149 () Bool)

(declare-fun tp_is_empty!31719 () Bool)

(assert (=> b!1252102 (= e!711149 tp_is_empty!31719)))

(declare-fun b!1252103 () Bool)

(declare-fun e!711150 () Bool)

(assert (=> b!1252103 (= e!711150 tp_is_empty!31719)))

(declare-fun b!1252104 () Bool)

(declare-fun e!711148 () Bool)

(assert (=> b!1252104 (= e!711148 (not true))))

(declare-datatypes ((V!47657 0))(
  ( (V!47658 (val!15922 Int)) )
))
(declare-datatypes ((tuple2!20676 0))(
  ( (tuple2!20677 (_1!10348 (_ BitVec 64)) (_2!10348 V!47657)) )
))
(declare-datatypes ((List!27928 0))(
  ( (Nil!27925) (Cons!27924 (h!29133 tuple2!20676) (t!41412 List!27928)) )
))
(declare-datatypes ((ListLongMap!18561 0))(
  ( (ListLongMap!18562 (toList!9296 List!27928)) )
))
(declare-fun lt!565156 () ListLongMap!18561)

(declare-fun lt!565158 () ListLongMap!18561)

(assert (=> b!1252104 (= lt!565156 lt!565158)))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!47657)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!47657)

(declare-datatypes ((array!81081 0))(
  ( (array!81082 (arr!39100 (Array (_ BitVec 32) (_ BitVec 64))) (size!39637 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81081)

(declare-datatypes ((ValueCell!15096 0))(
  ( (ValueCellFull!15096 (v!18620 V!47657)) (EmptyCell!15096) )
))
(declare-datatypes ((array!81083 0))(
  ( (array!81084 (arr!39101 (Array (_ BitVec 32) ValueCell!15096)) (size!39638 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81083)

(declare-fun minValueBefore!43 () V!47657)

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-datatypes ((Unit!41569 0))(
  ( (Unit!41570) )
))
(declare-fun lt!565157 () Unit!41569)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!987 (array!81081 array!81083 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47657 V!47657 V!47657 V!47657 (_ BitVec 32) Int) Unit!41569)

(assert (=> b!1252104 (= lt!565157 (lemmaNoChangeToArrayThenSameMapNoExtras!987 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5669 (array!81081 array!81083 (_ BitVec 32) (_ BitVec 32) V!47657 V!47657 (_ BitVec 32) Int) ListLongMap!18561)

(assert (=> b!1252104 (= lt!565158 (getCurrentListMapNoExtraKeys!5669 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1252104 (= lt!565156 (getCurrentListMapNoExtraKeys!5669 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1252105 () Bool)

(declare-fun res!835132 () Bool)

(assert (=> b!1252105 (=> (not res!835132) (not e!711148))))

(declare-datatypes ((List!27929 0))(
  ( (Nil!27926) (Cons!27925 (h!29134 (_ BitVec 64)) (t!41413 List!27929)) )
))
(declare-fun arrayNoDuplicates!0 (array!81081 (_ BitVec 32) List!27929) Bool)

(assert (=> b!1252105 (= res!835132 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27926))))

(declare-fun res!835131 () Bool)

(assert (=> start!105106 (=> (not res!835131) (not e!711148))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105106 (= res!835131 (validMask!0 mask!1466))))

(assert (=> start!105106 e!711148))

(assert (=> start!105106 true))

(assert (=> start!105106 tp!93951))

(assert (=> start!105106 tp_is_empty!31719))

(declare-fun array_inv!29753 (array!81081) Bool)

(assert (=> start!105106 (array_inv!29753 _keys!1118)))

(declare-fun e!711146 () Bool)

(declare-fun array_inv!29754 (array!81083) Bool)

(assert (=> start!105106 (and (array_inv!29754 _values!914) e!711146)))

(declare-fun mapIsEmpty!49348 () Bool)

(declare-fun mapRes!49348 () Bool)

(assert (=> mapIsEmpty!49348 mapRes!49348))

(declare-fun b!1252106 () Bool)

(declare-fun res!835133 () Bool)

(assert (=> b!1252106 (=> (not res!835133) (not e!711148))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81081 (_ BitVec 32)) Bool)

(assert (=> b!1252106 (= res!835133 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1252107 () Bool)

(assert (=> b!1252107 (= e!711146 (and e!711149 mapRes!49348))))

(declare-fun condMapEmpty!49348 () Bool)

(declare-fun mapDefault!49348 () ValueCell!15096)

(assert (=> b!1252107 (= condMapEmpty!49348 (= (arr!39101 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15096)) mapDefault!49348)))))

(declare-fun b!1252108 () Bool)

(declare-fun res!835134 () Bool)

(assert (=> b!1252108 (=> (not res!835134) (not e!711148))))

(assert (=> b!1252108 (= res!835134 (and (= (size!39638 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39637 _keys!1118) (size!39638 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!49348 () Bool)

(declare-fun tp!93950 () Bool)

(assert (=> mapNonEmpty!49348 (= mapRes!49348 (and tp!93950 e!711150))))

(declare-fun mapRest!49348 () (Array (_ BitVec 32) ValueCell!15096))

(declare-fun mapValue!49348 () ValueCell!15096)

(declare-fun mapKey!49348 () (_ BitVec 32))

(assert (=> mapNonEmpty!49348 (= (arr!39101 _values!914) (store mapRest!49348 mapKey!49348 mapValue!49348))))

(assert (= (and start!105106 res!835131) b!1252108))

(assert (= (and b!1252108 res!835134) b!1252106))

(assert (= (and b!1252106 res!835133) b!1252105))

(assert (= (and b!1252105 res!835132) b!1252104))

(assert (= (and b!1252107 condMapEmpty!49348) mapIsEmpty!49348))

(assert (= (and b!1252107 (not condMapEmpty!49348)) mapNonEmpty!49348))

(get-info :version)

(assert (= (and mapNonEmpty!49348 ((_ is ValueCellFull!15096) mapValue!49348)) b!1252103))

(assert (= (and b!1252107 ((_ is ValueCellFull!15096) mapDefault!49348)) b!1252102))

(assert (= start!105106 b!1252107))

(declare-fun m!1152815 () Bool)

(assert (=> b!1252106 m!1152815))

(declare-fun m!1152817 () Bool)

(assert (=> b!1252105 m!1152817))

(declare-fun m!1152819 () Bool)

(assert (=> start!105106 m!1152819))

(declare-fun m!1152821 () Bool)

(assert (=> start!105106 m!1152821))

(declare-fun m!1152823 () Bool)

(assert (=> start!105106 m!1152823))

(declare-fun m!1152825 () Bool)

(assert (=> b!1252104 m!1152825))

(declare-fun m!1152827 () Bool)

(assert (=> b!1252104 m!1152827))

(declare-fun m!1152829 () Bool)

(assert (=> b!1252104 m!1152829))

(declare-fun m!1152831 () Bool)

(assert (=> mapNonEmpty!49348 m!1152831))

(check-sat (not b!1252104) (not b!1252106) b_and!44623 (not b_next!26817) (not b!1252105) tp_is_empty!31719 (not start!105106) (not mapNonEmpty!49348))
(check-sat b_and!44623 (not b_next!26817))
