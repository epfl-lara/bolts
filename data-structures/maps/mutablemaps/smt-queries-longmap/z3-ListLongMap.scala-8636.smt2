; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!105156 () Bool)

(assert start!105156)

(declare-fun b_free!26853 () Bool)

(declare-fun b_next!26853 () Bool)

(assert (=> start!105156 (= b_free!26853 (not b_next!26853))))

(declare-fun tp!94061 () Bool)

(declare-fun b_and!44667 () Bool)

(assert (=> start!105156 (= tp!94061 b_and!44667)))

(declare-fun b!1252607 () Bool)

(declare-fun res!835420 () Bool)

(declare-fun e!711516 () Bool)

(assert (=> b!1252607 (=> (not res!835420) (not e!711516))))

(declare-datatypes ((array!81151 0))(
  ( (array!81152 (arr!39134 (Array (_ BitVec 32) (_ BitVec 64))) (size!39671 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81151)

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81151 (_ BitVec 32)) Bool)

(assert (=> b!1252607 (= res!835420 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1252608 () Bool)

(declare-fun e!711512 () Bool)

(declare-fun tp_is_empty!31755 () Bool)

(assert (=> b!1252608 (= e!711512 tp_is_empty!31755)))

(declare-fun b!1252609 () Bool)

(declare-fun res!835422 () Bool)

(assert (=> b!1252609 (=> (not res!835422) (not e!711516))))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((V!47705 0))(
  ( (V!47706 (val!15940 Int)) )
))
(declare-datatypes ((ValueCell!15114 0))(
  ( (ValueCellFull!15114 (v!18638 V!47705)) (EmptyCell!15114) )
))
(declare-datatypes ((array!81153 0))(
  ( (array!81154 (arr!39135 (Array (_ BitVec 32) ValueCell!15114)) (size!39672 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81153)

(assert (=> b!1252609 (= res!835422 (and (= (size!39672 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39671 _keys!1118) (size!39672 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1252606 () Bool)

(declare-fun e!711514 () Bool)

(assert (=> b!1252606 (= e!711516 (not e!711514))))

(declare-fun res!835421 () Bool)

(assert (=> b!1252606 (=> res!835421 e!711514)))

(assert (=> b!1252606 (= res!835421 (or (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!20706 0))(
  ( (tuple2!20707 (_1!10363 (_ BitVec 64)) (_2!10363 V!47705)) )
))
(declare-datatypes ((List!27954 0))(
  ( (Nil!27951) (Cons!27950 (h!29159 tuple2!20706) (t!41440 List!27954)) )
))
(declare-datatypes ((ListLongMap!18591 0))(
  ( (ListLongMap!18592 (toList!9311 List!27954)) )
))
(declare-fun lt!565399 () ListLongMap!18591)

(declare-fun lt!565402 () ListLongMap!18591)

(assert (=> b!1252606 (= lt!565399 lt!565402)))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!47705)

(declare-fun zeroValue!871 () V!47705)

(declare-fun minValueBefore!43 () V!47705)

(declare-datatypes ((Unit!41595 0))(
  ( (Unit!41596) )
))
(declare-fun lt!565401 () Unit!41595)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1000 (array!81151 array!81153 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47705 V!47705 V!47705 V!47705 (_ BitVec 32) Int) Unit!41595)

(assert (=> b!1252606 (= lt!565401 (lemmaNoChangeToArrayThenSameMapNoExtras!1000 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5682 (array!81151 array!81153 (_ BitVec 32) (_ BitVec 32) V!47705 V!47705 (_ BitVec 32) Int) ListLongMap!18591)

(assert (=> b!1252606 (= lt!565402 (getCurrentListMapNoExtraKeys!5682 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1252606 (= lt!565399 (getCurrentListMapNoExtraKeys!5682 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun res!835419 () Bool)

(assert (=> start!105156 (=> (not res!835419) (not e!711516))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105156 (= res!835419 (validMask!0 mask!1466))))

(assert (=> start!105156 e!711516))

(assert (=> start!105156 true))

(assert (=> start!105156 tp!94061))

(assert (=> start!105156 tp_is_empty!31755))

(declare-fun array_inv!29777 (array!81151) Bool)

(assert (=> start!105156 (array_inv!29777 _keys!1118)))

(declare-fun e!711515 () Bool)

(declare-fun array_inv!29778 (array!81153) Bool)

(assert (=> start!105156 (and (array_inv!29778 _values!914) e!711515)))

(declare-fun mapNonEmpty!49405 () Bool)

(declare-fun mapRes!49405 () Bool)

(declare-fun tp!94062 () Bool)

(assert (=> mapNonEmpty!49405 (= mapRes!49405 (and tp!94062 e!711512))))

(declare-fun mapValue!49405 () ValueCell!15114)

(declare-fun mapKey!49405 () (_ BitVec 32))

(declare-fun mapRest!49405 () (Array (_ BitVec 32) ValueCell!15114))

(assert (=> mapNonEmpty!49405 (= (arr!39135 _values!914) (store mapRest!49405 mapKey!49405 mapValue!49405))))

(declare-fun b!1252610 () Bool)

(declare-fun res!835423 () Bool)

(assert (=> b!1252610 (=> (not res!835423) (not e!711516))))

(declare-datatypes ((List!27955 0))(
  ( (Nil!27952) (Cons!27951 (h!29160 (_ BitVec 64)) (t!41441 List!27955)) )
))
(declare-fun arrayNoDuplicates!0 (array!81151 (_ BitVec 32) List!27955) Bool)

(assert (=> b!1252610 (= res!835423 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27952))))

(declare-fun b!1252611 () Bool)

(declare-fun e!711513 () Bool)

(assert (=> b!1252611 (= e!711513 tp_is_empty!31755)))

(declare-fun mapIsEmpty!49405 () Bool)

(assert (=> mapIsEmpty!49405 mapRes!49405))

(declare-fun b!1252612 () Bool)

(assert (=> b!1252612 (= e!711514 true)))

(declare-fun lt!565400 () ListLongMap!18591)

(declare-fun getCurrentListMap!4506 (array!81151 array!81153 (_ BitVec 32) (_ BitVec 32) V!47705 V!47705 (_ BitVec 32) Int) ListLongMap!18591)

(assert (=> b!1252612 (= lt!565400 (getCurrentListMap!4506 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1252613 () Bool)

(assert (=> b!1252613 (= e!711515 (and e!711513 mapRes!49405))))

(declare-fun condMapEmpty!49405 () Bool)

(declare-fun mapDefault!49405 () ValueCell!15114)

(assert (=> b!1252613 (= condMapEmpty!49405 (= (arr!39135 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15114)) mapDefault!49405)))))

(assert (= (and start!105156 res!835419) b!1252609))

(assert (= (and b!1252609 res!835422) b!1252607))

(assert (= (and b!1252607 res!835420) b!1252610))

(assert (= (and b!1252610 res!835423) b!1252606))

(assert (= (and b!1252606 (not res!835421)) b!1252612))

(assert (= (and b!1252613 condMapEmpty!49405) mapIsEmpty!49405))

(assert (= (and b!1252613 (not condMapEmpty!49405)) mapNonEmpty!49405))

(get-info :version)

(assert (= (and mapNonEmpty!49405 ((_ is ValueCellFull!15114) mapValue!49405)) b!1252608))

(assert (= (and b!1252613 ((_ is ValueCellFull!15114) mapDefault!49405)) b!1252611))

(assert (= start!105156 b!1252613))

(declare-fun m!1153231 () Bool)

(assert (=> b!1252612 m!1153231))

(declare-fun m!1153233 () Bool)

(assert (=> start!105156 m!1153233))

(declare-fun m!1153235 () Bool)

(assert (=> start!105156 m!1153235))

(declare-fun m!1153237 () Bool)

(assert (=> start!105156 m!1153237))

(declare-fun m!1153239 () Bool)

(assert (=> mapNonEmpty!49405 m!1153239))

(declare-fun m!1153241 () Bool)

(assert (=> b!1252607 m!1153241))

(declare-fun m!1153243 () Bool)

(assert (=> b!1252610 m!1153243))

(declare-fun m!1153245 () Bool)

(assert (=> b!1252606 m!1153245))

(declare-fun m!1153247 () Bool)

(assert (=> b!1252606 m!1153247))

(declare-fun m!1153249 () Bool)

(assert (=> b!1252606 m!1153249))

(check-sat (not b!1252606) (not b!1252612) (not b!1252607) tp_is_empty!31755 (not b!1252610) (not b_next!26853) b_and!44667 (not mapNonEmpty!49405) (not start!105156))
(check-sat b_and!44667 (not b_next!26853))
