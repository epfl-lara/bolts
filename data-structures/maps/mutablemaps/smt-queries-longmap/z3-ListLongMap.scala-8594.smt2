; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!104832 () Bool)

(assert start!104832)

(declare-fun b_free!26601 () Bool)

(declare-fun b_next!26601 () Bool)

(assert (=> start!104832 (= b_free!26601 (not b_next!26601))))

(declare-fun tp!93293 () Bool)

(declare-fun b_and!44379 () Bool)

(assert (=> start!104832 (= tp!93293 b_and!44379)))

(declare-fun b!1249102 () Bool)

(declare-fun e!708939 () Bool)

(assert (=> b!1249102 (= e!708939 false)))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun defaultEntry!922 () Int)

(declare-datatypes ((V!47369 0))(
  ( (V!47370 (val!15814 Int)) )
))
(declare-fun minValueAfter!43 () V!47369)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!47369)

(declare-datatypes ((ValueCell!14988 0))(
  ( (ValueCellFull!14988 (v!18510 V!47369)) (EmptyCell!14988) )
))
(declare-datatypes ((array!80667 0))(
  ( (array!80668 (arr!38896 (Array (_ BitVec 32) ValueCell!14988)) (size!39433 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80667)

(declare-datatypes ((array!80669 0))(
  ( (array!80670 (arr!38897 (Array (_ BitVec 32) (_ BitVec 64))) (size!39434 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80669)

(declare-datatypes ((tuple2!20518 0))(
  ( (tuple2!20519 (_1!10269 (_ BitVec 64)) (_2!10269 V!47369)) )
))
(declare-datatypes ((List!27778 0))(
  ( (Nil!27775) (Cons!27774 (h!28983 tuple2!20518) (t!41256 List!27778)) )
))
(declare-datatypes ((ListLongMap!18403 0))(
  ( (ListLongMap!18404 (toList!9217 List!27778)) )
))
(declare-fun lt!563567 () ListLongMap!18403)

(declare-fun getCurrentListMapNoExtraKeys!5600 (array!80669 array!80667 (_ BitVec 32) (_ BitVec 32) V!47369 V!47369 (_ BitVec 32) Int) ListLongMap!18403)

(assert (=> b!1249102 (= lt!563567 (getCurrentListMapNoExtraKeys!5600 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun lt!563568 () ListLongMap!18403)

(declare-fun minValueBefore!43 () V!47369)

(assert (=> b!1249102 (= lt!563568 (getCurrentListMapNoExtraKeys!5600 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun res!833351 () Bool)

(assert (=> start!104832 (=> (not res!833351) (not e!708939))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!104832 (= res!833351 (validMask!0 mask!1466))))

(assert (=> start!104832 e!708939))

(assert (=> start!104832 true))

(assert (=> start!104832 tp!93293))

(declare-fun tp_is_empty!31503 () Bool)

(assert (=> start!104832 tp_is_empty!31503))

(declare-fun array_inv!29615 (array!80669) Bool)

(assert (=> start!104832 (array_inv!29615 _keys!1118)))

(declare-fun e!708940 () Bool)

(declare-fun array_inv!29616 (array!80667) Bool)

(assert (=> start!104832 (and (array_inv!29616 _values!914) e!708940)))

(declare-fun b!1249103 () Bool)

(declare-fun res!833352 () Bool)

(assert (=> b!1249103 (=> (not res!833352) (not e!708939))))

(declare-datatypes ((List!27779 0))(
  ( (Nil!27776) (Cons!27775 (h!28984 (_ BitVec 64)) (t!41257 List!27779)) )
))
(declare-fun arrayNoDuplicates!0 (array!80669 (_ BitVec 32) List!27779) Bool)

(assert (=> b!1249103 (= res!833352 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27776))))

(declare-fun mapNonEmpty!49015 () Bool)

(declare-fun mapRes!49015 () Bool)

(declare-fun tp!93294 () Bool)

(declare-fun e!708942 () Bool)

(assert (=> mapNonEmpty!49015 (= mapRes!49015 (and tp!93294 e!708942))))

(declare-fun mapValue!49015 () ValueCell!14988)

(declare-fun mapRest!49015 () (Array (_ BitVec 32) ValueCell!14988))

(declare-fun mapKey!49015 () (_ BitVec 32))

(assert (=> mapNonEmpty!49015 (= (arr!38896 _values!914) (store mapRest!49015 mapKey!49015 mapValue!49015))))

(declare-fun b!1249104 () Bool)

(declare-fun res!833349 () Bool)

(assert (=> b!1249104 (=> (not res!833349) (not e!708939))))

(assert (=> b!1249104 (= res!833349 (and (= (size!39433 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39434 _keys!1118) (size!39433 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1249105 () Bool)

(declare-fun res!833350 () Bool)

(assert (=> b!1249105 (=> (not res!833350) (not e!708939))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!80669 (_ BitVec 32)) Bool)

(assert (=> b!1249105 (= res!833350 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1249106 () Bool)

(assert (=> b!1249106 (= e!708942 tp_is_empty!31503)))

(declare-fun b!1249107 () Bool)

(declare-fun e!708938 () Bool)

(assert (=> b!1249107 (= e!708940 (and e!708938 mapRes!49015))))

(declare-fun condMapEmpty!49015 () Bool)

(declare-fun mapDefault!49015 () ValueCell!14988)

(assert (=> b!1249107 (= condMapEmpty!49015 (= (arr!38896 _values!914) ((as const (Array (_ BitVec 32) ValueCell!14988)) mapDefault!49015)))))

(declare-fun b!1249108 () Bool)

(assert (=> b!1249108 (= e!708938 tp_is_empty!31503)))

(declare-fun mapIsEmpty!49015 () Bool)

(assert (=> mapIsEmpty!49015 mapRes!49015))

(assert (= (and start!104832 res!833351) b!1249104))

(assert (= (and b!1249104 res!833349) b!1249105))

(assert (= (and b!1249105 res!833350) b!1249103))

(assert (= (and b!1249103 res!833352) b!1249102))

(assert (= (and b!1249107 condMapEmpty!49015) mapIsEmpty!49015))

(assert (= (and b!1249107 (not condMapEmpty!49015)) mapNonEmpty!49015))

(get-info :version)

(assert (= (and mapNonEmpty!49015 ((_ is ValueCellFull!14988) mapValue!49015)) b!1249106))

(assert (= (and b!1249107 ((_ is ValueCellFull!14988) mapDefault!49015)) b!1249108))

(assert (= start!104832 b!1249107))

(declare-fun m!1150113 () Bool)

(assert (=> b!1249103 m!1150113))

(declare-fun m!1150115 () Bool)

(assert (=> b!1249105 m!1150115))

(declare-fun m!1150117 () Bool)

(assert (=> start!104832 m!1150117))

(declare-fun m!1150119 () Bool)

(assert (=> start!104832 m!1150119))

(declare-fun m!1150121 () Bool)

(assert (=> start!104832 m!1150121))

(declare-fun m!1150123 () Bool)

(assert (=> mapNonEmpty!49015 m!1150123))

(declare-fun m!1150125 () Bool)

(assert (=> b!1249102 m!1150125))

(declare-fun m!1150127 () Bool)

(assert (=> b!1249102 m!1150127))

(check-sat (not b!1249102) (not b_next!26601) (not b!1249105) (not mapNonEmpty!49015) tp_is_empty!31503 b_and!44379 (not b!1249103) (not start!104832))
(check-sat b_and!44379 (not b_next!26601))
