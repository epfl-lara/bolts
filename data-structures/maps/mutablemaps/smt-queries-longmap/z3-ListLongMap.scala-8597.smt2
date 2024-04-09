; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!104850 () Bool)

(assert start!104850)

(declare-fun b_free!26619 () Bool)

(declare-fun b_next!26619 () Bool)

(assert (=> start!104850 (= b_free!26619 (not b_next!26619))))

(declare-fun tp!93347 () Bool)

(declare-fun b_and!44397 () Bool)

(assert (=> start!104850 (= tp!93347 b_and!44397)))

(declare-fun b!1249291 () Bool)

(declare-fun e!709075 () Bool)

(assert (=> b!1249291 (= e!709075 (not true))))

(declare-datatypes ((V!47393 0))(
  ( (V!47394 (val!15823 Int)) )
))
(declare-datatypes ((tuple2!20528 0))(
  ( (tuple2!20529 (_1!10274 (_ BitVec 64)) (_2!10274 V!47393)) )
))
(declare-datatypes ((List!27789 0))(
  ( (Nil!27786) (Cons!27785 (h!28994 tuple2!20528) (t!41267 List!27789)) )
))
(declare-datatypes ((ListLongMap!18413 0))(
  ( (ListLongMap!18414 (toList!9222 List!27789)) )
))
(declare-fun lt!563644 () ListLongMap!18413)

(declare-fun lt!563646 () ListLongMap!18413)

(assert (=> b!1249291 (= lt!563644 lt!563646)))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!47393)

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!47393)

(declare-datatypes ((array!80699 0))(
  ( (array!80700 (arr!38912 (Array (_ BitVec 32) (_ BitVec 64))) (size!39449 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80699)

(declare-datatypes ((ValueCell!14997 0))(
  ( (ValueCellFull!14997 (v!18519 V!47393)) (EmptyCell!14997) )
))
(declare-datatypes ((array!80701 0))(
  ( (array!80702 (arr!38913 (Array (_ BitVec 32) ValueCell!14997)) (size!39450 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80701)

(declare-fun minValueBefore!43 () V!47393)

(declare-datatypes ((Unit!41427 0))(
  ( (Unit!41428) )
))
(declare-fun lt!563645 () Unit!41427)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!923 (array!80699 array!80701 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47393 V!47393 V!47393 V!47393 (_ BitVec 32) Int) Unit!41427)

(assert (=> b!1249291 (= lt!563645 (lemmaNoChangeToArrayThenSameMapNoExtras!923 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5605 (array!80699 array!80701 (_ BitVec 32) (_ BitVec 32) V!47393 V!47393 (_ BitVec 32) Int) ListLongMap!18413)

(assert (=> b!1249291 (= lt!563646 (getCurrentListMapNoExtraKeys!5605 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1249291 (= lt!563644 (getCurrentListMapNoExtraKeys!5605 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1249292 () Bool)

(declare-fun e!709074 () Bool)

(declare-fun tp_is_empty!31521 () Bool)

(assert (=> b!1249292 (= e!709074 tp_is_empty!31521)))

(declare-fun b!1249293 () Bool)

(declare-fun res!833457 () Bool)

(assert (=> b!1249293 (=> (not res!833457) (not e!709075))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!80699 (_ BitVec 32)) Bool)

(assert (=> b!1249293 (= res!833457 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun res!833458 () Bool)

(assert (=> start!104850 (=> (not res!833458) (not e!709075))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!104850 (= res!833458 (validMask!0 mask!1466))))

(assert (=> start!104850 e!709075))

(assert (=> start!104850 true))

(assert (=> start!104850 tp!93347))

(assert (=> start!104850 tp_is_empty!31521))

(declare-fun array_inv!29625 (array!80699) Bool)

(assert (=> start!104850 (array_inv!29625 _keys!1118)))

(declare-fun e!709077 () Bool)

(declare-fun array_inv!29626 (array!80701) Bool)

(assert (=> start!104850 (and (array_inv!29626 _values!914) e!709077)))

(declare-fun mapNonEmpty!49042 () Bool)

(declare-fun mapRes!49042 () Bool)

(declare-fun tp!93348 () Bool)

(assert (=> mapNonEmpty!49042 (= mapRes!49042 (and tp!93348 e!709074))))

(declare-fun mapKey!49042 () (_ BitVec 32))

(declare-fun mapRest!49042 () (Array (_ BitVec 32) ValueCell!14997))

(declare-fun mapValue!49042 () ValueCell!14997)

(assert (=> mapNonEmpty!49042 (= (arr!38913 _values!914) (store mapRest!49042 mapKey!49042 mapValue!49042))))

(declare-fun b!1249294 () Bool)

(declare-fun res!833459 () Bool)

(assert (=> b!1249294 (=> (not res!833459) (not e!709075))))

(assert (=> b!1249294 (= res!833459 (and (= (size!39450 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39449 _keys!1118) (size!39450 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1249295 () Bool)

(declare-fun res!833460 () Bool)

(assert (=> b!1249295 (=> (not res!833460) (not e!709075))))

(declare-datatypes ((List!27790 0))(
  ( (Nil!27787) (Cons!27786 (h!28995 (_ BitVec 64)) (t!41268 List!27790)) )
))
(declare-fun arrayNoDuplicates!0 (array!80699 (_ BitVec 32) List!27790) Bool)

(assert (=> b!1249295 (= res!833460 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27787))))

(declare-fun b!1249296 () Bool)

(declare-fun e!709076 () Bool)

(assert (=> b!1249296 (= e!709076 tp_is_empty!31521)))

(declare-fun mapIsEmpty!49042 () Bool)

(assert (=> mapIsEmpty!49042 mapRes!49042))

(declare-fun b!1249297 () Bool)

(assert (=> b!1249297 (= e!709077 (and e!709076 mapRes!49042))))

(declare-fun condMapEmpty!49042 () Bool)

(declare-fun mapDefault!49042 () ValueCell!14997)

(assert (=> b!1249297 (= condMapEmpty!49042 (= (arr!38913 _values!914) ((as const (Array (_ BitVec 32) ValueCell!14997)) mapDefault!49042)))))

(assert (= (and start!104850 res!833458) b!1249294))

(assert (= (and b!1249294 res!833459) b!1249293))

(assert (= (and b!1249293 res!833457) b!1249295))

(assert (= (and b!1249295 res!833460) b!1249291))

(assert (= (and b!1249297 condMapEmpty!49042) mapIsEmpty!49042))

(assert (= (and b!1249297 (not condMapEmpty!49042)) mapNonEmpty!49042))

(get-info :version)

(assert (= (and mapNonEmpty!49042 ((_ is ValueCellFull!14997) mapValue!49042)) b!1249292))

(assert (= (and b!1249297 ((_ is ValueCellFull!14997) mapDefault!49042)) b!1249296))

(assert (= start!104850 b!1249297))

(declare-fun m!1150271 () Bool)

(assert (=> start!104850 m!1150271))

(declare-fun m!1150273 () Bool)

(assert (=> start!104850 m!1150273))

(declare-fun m!1150275 () Bool)

(assert (=> start!104850 m!1150275))

(declare-fun m!1150277 () Bool)

(assert (=> b!1249293 m!1150277))

(declare-fun m!1150279 () Bool)

(assert (=> b!1249295 m!1150279))

(declare-fun m!1150281 () Bool)

(assert (=> mapNonEmpty!49042 m!1150281))

(declare-fun m!1150283 () Bool)

(assert (=> b!1249291 m!1150283))

(declare-fun m!1150285 () Bool)

(assert (=> b!1249291 m!1150285))

(declare-fun m!1150287 () Bool)

(assert (=> b!1249291 m!1150287))

(check-sat b_and!44397 (not b_next!26619) (not b!1249295) (not start!104850) (not b!1249293) (not mapNonEmpty!49042) tp_is_empty!31521 (not b!1249291))
(check-sat b_and!44397 (not b_next!26619))
