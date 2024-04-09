; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!104856 () Bool)

(assert start!104856)

(declare-fun b_free!26625 () Bool)

(declare-fun b_next!26625 () Bool)

(assert (=> start!104856 (= b_free!26625 (not b_next!26625))))

(declare-fun tp!93366 () Bool)

(declare-fun b_and!44403 () Bool)

(assert (=> start!104856 (= tp!93366 b_and!44403)))

(declare-fun b!1249354 () Bool)

(declare-fun res!833494 () Bool)

(declare-fun e!709118 () Bool)

(assert (=> b!1249354 (=> (not res!833494) (not e!709118))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((array!80711 0))(
  ( (array!80712 (arr!38918 (Array (_ BitVec 32) (_ BitVec 64))) (size!39455 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80711)

(declare-datatypes ((V!47401 0))(
  ( (V!47402 (val!15826 Int)) )
))
(declare-datatypes ((ValueCell!15000 0))(
  ( (ValueCellFull!15000 (v!18522 V!47401)) (EmptyCell!15000) )
))
(declare-datatypes ((array!80713 0))(
  ( (array!80714 (arr!38919 (Array (_ BitVec 32) ValueCell!15000)) (size!39456 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80713)

(assert (=> b!1249354 (= res!833494 (and (= (size!39456 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39455 _keys!1118) (size!39456 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1249355 () Bool)

(declare-fun e!709119 () Bool)

(declare-fun e!709121 () Bool)

(declare-fun mapRes!49051 () Bool)

(assert (=> b!1249355 (= e!709119 (and e!709121 mapRes!49051))))

(declare-fun condMapEmpty!49051 () Bool)

(declare-fun mapDefault!49051 () ValueCell!15000)

(assert (=> b!1249355 (= condMapEmpty!49051 (= (arr!38919 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15000)) mapDefault!49051)))))

(declare-fun mapNonEmpty!49051 () Bool)

(declare-fun tp!93365 () Bool)

(declare-fun e!709122 () Bool)

(assert (=> mapNonEmpty!49051 (= mapRes!49051 (and tp!93365 e!709122))))

(declare-fun mapRest!49051 () (Array (_ BitVec 32) ValueCell!15000))

(declare-fun mapKey!49051 () (_ BitVec 32))

(declare-fun mapValue!49051 () ValueCell!15000)

(assert (=> mapNonEmpty!49051 (= (arr!38919 _values!914) (store mapRest!49051 mapKey!49051 mapValue!49051))))

(declare-fun b!1249356 () Bool)

(assert (=> b!1249356 (= e!709118 (not true))))

(declare-datatypes ((tuple2!20530 0))(
  ( (tuple2!20531 (_1!10275 (_ BitVec 64)) (_2!10275 V!47401)) )
))
(declare-datatypes ((List!27792 0))(
  ( (Nil!27789) (Cons!27788 (h!28997 tuple2!20530) (t!41270 List!27792)) )
))
(declare-datatypes ((ListLongMap!18415 0))(
  ( (ListLongMap!18416 (toList!9223 List!27792)) )
))
(declare-fun lt!563673 () ListLongMap!18415)

(declare-fun lt!563671 () ListLongMap!18415)

(assert (=> b!1249356 (= lt!563673 lt!563671)))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!47401)

(declare-fun minValueBefore!43 () V!47401)

(declare-fun zeroValue!871 () V!47401)

(declare-datatypes ((Unit!41429 0))(
  ( (Unit!41430) )
))
(declare-fun lt!563672 () Unit!41429)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!924 (array!80711 array!80713 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47401 V!47401 V!47401 V!47401 (_ BitVec 32) Int) Unit!41429)

(assert (=> b!1249356 (= lt!563672 (lemmaNoChangeToArrayThenSameMapNoExtras!924 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5606 (array!80711 array!80713 (_ BitVec 32) (_ BitVec 32) V!47401 V!47401 (_ BitVec 32) Int) ListLongMap!18415)

(assert (=> b!1249356 (= lt!563671 (getCurrentListMapNoExtraKeys!5606 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1249356 (= lt!563673 (getCurrentListMapNoExtraKeys!5606 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun mapIsEmpty!49051 () Bool)

(assert (=> mapIsEmpty!49051 mapRes!49051))

(declare-fun res!833495 () Bool)

(assert (=> start!104856 (=> (not res!833495) (not e!709118))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!104856 (= res!833495 (validMask!0 mask!1466))))

(assert (=> start!104856 e!709118))

(assert (=> start!104856 true))

(assert (=> start!104856 tp!93366))

(declare-fun tp_is_empty!31527 () Bool)

(assert (=> start!104856 tp_is_empty!31527))

(declare-fun array_inv!29629 (array!80711) Bool)

(assert (=> start!104856 (array_inv!29629 _keys!1118)))

(declare-fun array_inv!29630 (array!80713) Bool)

(assert (=> start!104856 (and (array_inv!29630 _values!914) e!709119)))

(declare-fun b!1249357 () Bool)

(assert (=> b!1249357 (= e!709122 tp_is_empty!31527)))

(declare-fun b!1249358 () Bool)

(declare-fun res!833493 () Bool)

(assert (=> b!1249358 (=> (not res!833493) (not e!709118))))

(declare-datatypes ((List!27793 0))(
  ( (Nil!27790) (Cons!27789 (h!28998 (_ BitVec 64)) (t!41271 List!27793)) )
))
(declare-fun arrayNoDuplicates!0 (array!80711 (_ BitVec 32) List!27793) Bool)

(assert (=> b!1249358 (= res!833493 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27790))))

(declare-fun b!1249359 () Bool)

(assert (=> b!1249359 (= e!709121 tp_is_empty!31527)))

(declare-fun b!1249360 () Bool)

(declare-fun res!833496 () Bool)

(assert (=> b!1249360 (=> (not res!833496) (not e!709118))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!80711 (_ BitVec 32)) Bool)

(assert (=> b!1249360 (= res!833496 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(assert (= (and start!104856 res!833495) b!1249354))

(assert (= (and b!1249354 res!833494) b!1249360))

(assert (= (and b!1249360 res!833496) b!1249358))

(assert (= (and b!1249358 res!833493) b!1249356))

(assert (= (and b!1249355 condMapEmpty!49051) mapIsEmpty!49051))

(assert (= (and b!1249355 (not condMapEmpty!49051)) mapNonEmpty!49051))

(get-info :version)

(assert (= (and mapNonEmpty!49051 ((_ is ValueCellFull!15000) mapValue!49051)) b!1249357))

(assert (= (and b!1249355 ((_ is ValueCellFull!15000) mapDefault!49051)) b!1249359))

(assert (= start!104856 b!1249355))

(declare-fun m!1150325 () Bool)

(assert (=> start!104856 m!1150325))

(declare-fun m!1150327 () Bool)

(assert (=> start!104856 m!1150327))

(declare-fun m!1150329 () Bool)

(assert (=> start!104856 m!1150329))

(declare-fun m!1150331 () Bool)

(assert (=> b!1249356 m!1150331))

(declare-fun m!1150333 () Bool)

(assert (=> b!1249356 m!1150333))

(declare-fun m!1150335 () Bool)

(assert (=> b!1249356 m!1150335))

(declare-fun m!1150337 () Bool)

(assert (=> b!1249360 m!1150337))

(declare-fun m!1150339 () Bool)

(assert (=> b!1249358 m!1150339))

(declare-fun m!1150341 () Bool)

(assert (=> mapNonEmpty!49051 m!1150341))

(check-sat (not start!104856) b_and!44403 (not b!1249358) tp_is_empty!31527 (not b!1249360) (not b!1249356) (not mapNonEmpty!49051) (not b_next!26625))
(check-sat b_and!44403 (not b_next!26625))
