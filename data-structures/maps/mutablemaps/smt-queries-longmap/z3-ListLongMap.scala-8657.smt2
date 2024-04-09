; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!105320 () Bool)

(assert start!105320)

(declare-fun b_free!26979 () Bool)

(declare-fun b_next!26979 () Bool)

(assert (=> start!105320 (= b_free!26979 (not b_next!26979))))

(declare-fun tp!94446 () Bool)

(declare-fun b_and!44815 () Bool)

(assert (=> start!105320 (= tp!94446 b_and!44815)))

(declare-fun b!1254459 () Bool)

(declare-fun e!712872 () Bool)

(declare-fun e!712870 () Bool)

(declare-fun mapRes!49600 () Bool)

(assert (=> b!1254459 (= e!712872 (and e!712870 mapRes!49600))))

(declare-fun condMapEmpty!49600 () Bool)

(declare-datatypes ((V!47873 0))(
  ( (V!47874 (val!16003 Int)) )
))
(declare-datatypes ((ValueCell!15177 0))(
  ( (ValueCellFull!15177 (v!18702 V!47873)) (EmptyCell!15177) )
))
(declare-datatypes ((array!81395 0))(
  ( (array!81396 (arr!39254 (Array (_ BitVec 32) ValueCell!15177)) (size!39791 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81395)

(declare-fun mapDefault!49600 () ValueCell!15177)

(assert (=> b!1254459 (= condMapEmpty!49600 (= (arr!39254 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15177)) mapDefault!49600)))))

(declare-fun b!1254460 () Bool)

(declare-fun e!712873 () Bool)

(assert (=> b!1254460 (= e!712873 true)))

(declare-datatypes ((tuple2!20804 0))(
  ( (tuple2!20805 (_1!10412 (_ BitVec 64)) (_2!10412 V!47873)) )
))
(declare-datatypes ((List!28046 0))(
  ( (Nil!28043) (Cons!28042 (h!29251 tuple2!20804) (t!41536 List!28046)) )
))
(declare-datatypes ((ListLongMap!18689 0))(
  ( (ListLongMap!18690 (toList!9360 List!28046)) )
))
(declare-fun lt!566979 () ListLongMap!18689)

(declare-fun lt!566981 () ListLongMap!18689)

(declare-fun -!2069 (ListLongMap!18689 (_ BitVec 64)) ListLongMap!18689)

(assert (=> b!1254460 (= lt!566979 (-!2069 lt!566981 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!566983 () ListLongMap!18689)

(declare-fun lt!566978 () ListLongMap!18689)

(assert (=> b!1254460 (= (-!2069 lt!566983 #b1000000000000000000000000000000000000000000000000000000000000000) lt!566978)))

(declare-datatypes ((Unit!41692 0))(
  ( (Unit!41693) )
))
(declare-fun lt!566980 () Unit!41692)

(declare-fun minValueBefore!43 () V!47873)

(declare-fun addThenRemoveForNewKeyIsSame!329 (ListLongMap!18689 (_ BitVec 64) V!47873) Unit!41692)

(assert (=> b!1254460 (= lt!566980 (addThenRemoveForNewKeyIsSame!329 lt!566978 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))

(declare-fun lt!566982 () ListLongMap!18689)

(declare-fun lt!566977 () ListLongMap!18689)

(assert (=> b!1254460 (and (= lt!566981 lt!566983) (= lt!566982 lt!566977))))

(declare-fun +!4160 (ListLongMap!18689 tuple2!20804) ListLongMap!18689)

(assert (=> b!1254460 (= lt!566983 (+!4160 lt!566978 (tuple2!20805 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43)))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!47873)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!47873)

(declare-datatypes ((array!81397 0))(
  ( (array!81398 (arr!39255 (Array (_ BitVec 32) (_ BitVec 64))) (size!39792 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81397)

(declare-fun getCurrentListMap!4547 (array!81397 array!81395 (_ BitVec 32) (_ BitVec 32) V!47873 V!47873 (_ BitVec 32) Int) ListLongMap!18689)

(assert (=> b!1254460 (= lt!566982 (getCurrentListMap!4547 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(assert (=> b!1254460 (= lt!566981 (getCurrentListMap!4547 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1254461 () Bool)

(declare-fun e!712871 () Bool)

(declare-fun tp_is_empty!31881 () Bool)

(assert (=> b!1254461 (= e!712871 tp_is_empty!31881)))

(declare-fun b!1254462 () Bool)

(declare-fun res!836514 () Bool)

(declare-fun e!712869 () Bool)

(assert (=> b!1254462 (=> (not res!836514) (not e!712869))))

(declare-datatypes ((List!28047 0))(
  ( (Nil!28044) (Cons!28043 (h!29252 (_ BitVec 64)) (t!41537 List!28047)) )
))
(declare-fun arrayNoDuplicates!0 (array!81397 (_ BitVec 32) List!28047) Bool)

(assert (=> b!1254462 (= res!836514 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28044))))

(declare-fun res!836517 () Bool)

(assert (=> start!105320 (=> (not res!836517) (not e!712869))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105320 (= res!836517 (validMask!0 mask!1466))))

(assert (=> start!105320 e!712869))

(assert (=> start!105320 true))

(assert (=> start!105320 tp!94446))

(assert (=> start!105320 tp_is_empty!31881))

(declare-fun array_inv!29859 (array!81397) Bool)

(assert (=> start!105320 (array_inv!29859 _keys!1118)))

(declare-fun array_inv!29860 (array!81395) Bool)

(assert (=> start!105320 (and (array_inv!29860 _values!914) e!712872)))

(declare-fun b!1254463 () Bool)

(assert (=> b!1254463 (= e!712870 tp_is_empty!31881)))

(declare-fun b!1254464 () Bool)

(declare-fun res!836513 () Bool)

(assert (=> b!1254464 (=> (not res!836513) (not e!712869))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81397 (_ BitVec 32)) Bool)

(assert (=> b!1254464 (= res!836513 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun mapNonEmpty!49600 () Bool)

(declare-fun tp!94445 () Bool)

(assert (=> mapNonEmpty!49600 (= mapRes!49600 (and tp!94445 e!712871))))

(declare-fun mapValue!49600 () ValueCell!15177)

(declare-fun mapRest!49600 () (Array (_ BitVec 32) ValueCell!15177))

(declare-fun mapKey!49600 () (_ BitVec 32))

(assert (=> mapNonEmpty!49600 (= (arr!39254 _values!914) (store mapRest!49600 mapKey!49600 mapValue!49600))))

(declare-fun b!1254465 () Bool)

(declare-fun res!836515 () Bool)

(assert (=> b!1254465 (=> (not res!836515) (not e!712869))))

(assert (=> b!1254465 (= res!836515 (and (= (size!39791 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39792 _keys!1118) (size!39791 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1254466 () Bool)

(assert (=> b!1254466 (= e!712869 (not e!712873))))

(declare-fun res!836516 () Bool)

(assert (=> b!1254466 (=> res!836516 e!712873)))

(assert (=> b!1254466 (= res!836516 (or (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1254466 (= lt!566978 lt!566977)))

(declare-fun lt!566984 () Unit!41692)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1040 (array!81397 array!81395 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47873 V!47873 V!47873 V!47873 (_ BitVec 32) Int) Unit!41692)

(assert (=> b!1254466 (= lt!566984 (lemmaNoChangeToArrayThenSameMapNoExtras!1040 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5722 (array!81397 array!81395 (_ BitVec 32) (_ BitVec 32) V!47873 V!47873 (_ BitVec 32) Int) ListLongMap!18689)

(assert (=> b!1254466 (= lt!566977 (getCurrentListMapNoExtraKeys!5722 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1254466 (= lt!566978 (getCurrentListMapNoExtraKeys!5722 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun mapIsEmpty!49600 () Bool)

(assert (=> mapIsEmpty!49600 mapRes!49600))

(assert (= (and start!105320 res!836517) b!1254465))

(assert (= (and b!1254465 res!836515) b!1254464))

(assert (= (and b!1254464 res!836513) b!1254462))

(assert (= (and b!1254462 res!836514) b!1254466))

(assert (= (and b!1254466 (not res!836516)) b!1254460))

(assert (= (and b!1254459 condMapEmpty!49600) mapIsEmpty!49600))

(assert (= (and b!1254459 (not condMapEmpty!49600)) mapNonEmpty!49600))

(get-info :version)

(assert (= (and mapNonEmpty!49600 ((_ is ValueCellFull!15177) mapValue!49600)) b!1254461))

(assert (= (and b!1254459 ((_ is ValueCellFull!15177) mapDefault!49600)) b!1254463))

(assert (= start!105320 b!1254459))

(declare-fun m!1155265 () Bool)

(assert (=> b!1254466 m!1155265))

(declare-fun m!1155267 () Bool)

(assert (=> b!1254466 m!1155267))

(declare-fun m!1155269 () Bool)

(assert (=> b!1254466 m!1155269))

(declare-fun m!1155271 () Bool)

(assert (=> mapNonEmpty!49600 m!1155271))

(declare-fun m!1155273 () Bool)

(assert (=> b!1254460 m!1155273))

(declare-fun m!1155275 () Bool)

(assert (=> b!1254460 m!1155275))

(declare-fun m!1155277 () Bool)

(assert (=> b!1254460 m!1155277))

(declare-fun m!1155279 () Bool)

(assert (=> b!1254460 m!1155279))

(declare-fun m!1155281 () Bool)

(assert (=> b!1254460 m!1155281))

(declare-fun m!1155283 () Bool)

(assert (=> b!1254460 m!1155283))

(declare-fun m!1155285 () Bool)

(assert (=> start!105320 m!1155285))

(declare-fun m!1155287 () Bool)

(assert (=> start!105320 m!1155287))

(declare-fun m!1155289 () Bool)

(assert (=> start!105320 m!1155289))

(declare-fun m!1155291 () Bool)

(assert (=> b!1254462 m!1155291))

(declare-fun m!1155293 () Bool)

(assert (=> b!1254464 m!1155293))

(check-sat (not b!1254462) b_and!44815 (not b_next!26979) (not start!105320) (not b!1254464) (not mapNonEmpty!49600) tp_is_empty!31881 (not b!1254460) (not b!1254466))
(check-sat b_and!44815 (not b_next!26979))
