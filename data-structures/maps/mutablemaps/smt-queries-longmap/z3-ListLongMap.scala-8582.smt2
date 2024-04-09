; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!104748 () Bool)

(assert start!104748)

(declare-fun b_free!26529 () Bool)

(declare-fun b_next!26529 () Bool)

(assert (=> start!104748 (= b_free!26529 (not b_next!26529))))

(declare-fun tp!93074 () Bool)

(declare-fun b_and!44303 () Bool)

(assert (=> start!104748 (= tp!93074 b_and!44303)))

(declare-fun mapNonEmpty!48904 () Bool)

(declare-fun mapRes!48904 () Bool)

(declare-fun tp!93075 () Bool)

(declare-fun e!708353 () Bool)

(assert (=> mapNonEmpty!48904 (= mapRes!48904 (and tp!93075 e!708353))))

(declare-datatypes ((V!47273 0))(
  ( (V!47274 (val!15778 Int)) )
))
(declare-datatypes ((ValueCell!14952 0))(
  ( (ValueCellFull!14952 (v!18474 V!47273)) (EmptyCell!14952) )
))
(declare-fun mapRest!48904 () (Array (_ BitVec 32) ValueCell!14952))

(declare-fun mapKey!48904 () (_ BitVec 32))

(declare-fun mapValue!48904 () ValueCell!14952)

(declare-datatypes ((array!80529 0))(
  ( (array!80530 (arr!38828 (Array (_ BitVec 32) ValueCell!14952)) (size!39365 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80529)

(assert (=> mapNonEmpty!48904 (= (arr!38828 _values!914) (store mapRest!48904 mapKey!48904 mapValue!48904))))

(declare-fun b!1248273 () Bool)

(declare-fun e!708352 () Bool)

(declare-fun tp_is_empty!31431 () Bool)

(assert (=> b!1248273 (= e!708352 tp_is_empty!31431)))

(declare-fun b!1248274 () Bool)

(assert (=> b!1248274 (= e!708353 tp_is_empty!31431)))

(declare-fun b!1248275 () Bool)

(declare-fun res!832891 () Bool)

(declare-fun e!708354 () Bool)

(assert (=> b!1248275 (=> (not res!832891) (not e!708354))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((array!80531 0))(
  ( (array!80532 (arr!38829 (Array (_ BitVec 32) (_ BitVec 64))) (size!39366 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80531)

(assert (=> b!1248275 (= res!832891 (and (= (size!39365 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39366 _keys!1118) (size!39365 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun res!832893 () Bool)

(assert (=> start!104748 (=> (not res!832893) (not e!708354))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!104748 (= res!832893 (validMask!0 mask!1466))))

(assert (=> start!104748 e!708354))

(assert (=> start!104748 true))

(assert (=> start!104748 tp!93074))

(assert (=> start!104748 tp_is_empty!31431))

(declare-fun array_inv!29563 (array!80531) Bool)

(assert (=> start!104748 (array_inv!29563 _keys!1118)))

(declare-fun e!708351 () Bool)

(declare-fun array_inv!29564 (array!80529) Bool)

(assert (=> start!104748 (and (array_inv!29564 _values!914) e!708351)))

(declare-fun mapIsEmpty!48904 () Bool)

(assert (=> mapIsEmpty!48904 mapRes!48904))

(declare-fun b!1248276 () Bool)

(declare-fun res!832890 () Bool)

(assert (=> b!1248276 (=> (not res!832890) (not e!708354))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!80531 (_ BitVec 32)) Bool)

(assert (=> b!1248276 (= res!832890 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1248277 () Bool)

(declare-fun res!832892 () Bool)

(assert (=> b!1248277 (=> (not res!832892) (not e!708354))))

(declare-datatypes ((List!27736 0))(
  ( (Nil!27733) (Cons!27732 (h!28941 (_ BitVec 64)) (t!41212 List!27736)) )
))
(declare-fun arrayNoDuplicates!0 (array!80531 (_ BitVec 32) List!27736) Bool)

(assert (=> b!1248277 (= res!832892 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27733))))

(declare-fun b!1248278 () Bool)

(assert (=> b!1248278 (= e!708351 (and e!708352 mapRes!48904))))

(declare-fun condMapEmpty!48904 () Bool)

(declare-fun mapDefault!48904 () ValueCell!14952)

(assert (=> b!1248278 (= condMapEmpty!48904 (= (arr!38828 _values!914) ((as const (Array (_ BitVec 32) ValueCell!14952)) mapDefault!48904)))))

(declare-fun b!1248279 () Bool)

(assert (=> b!1248279 (= e!708354 false)))

(declare-fun defaultEntry!922 () Int)

(declare-fun zeroValue!871 () V!47273)

(declare-fun minValueBefore!43 () V!47273)

(declare-datatypes ((tuple2!20478 0))(
  ( (tuple2!20479 (_1!10249 (_ BitVec 64)) (_2!10249 V!47273)) )
))
(declare-datatypes ((List!27737 0))(
  ( (Nil!27734) (Cons!27733 (h!28942 tuple2!20478) (t!41213 List!27737)) )
))
(declare-datatypes ((ListLongMap!18363 0))(
  ( (ListLongMap!18364 (toList!9197 List!27737)) )
))
(declare-fun lt!563334 () ListLongMap!18363)

(declare-fun getCurrentListMapNoExtraKeys!5580 (array!80531 array!80529 (_ BitVec 32) (_ BitVec 32) V!47273 V!47273 (_ BitVec 32) Int) ListLongMap!18363)

(assert (=> b!1248279 (= lt!563334 (getCurrentListMapNoExtraKeys!5580 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (= (and start!104748 res!832893) b!1248275))

(assert (= (and b!1248275 res!832891) b!1248276))

(assert (= (and b!1248276 res!832890) b!1248277))

(assert (= (and b!1248277 res!832892) b!1248279))

(assert (= (and b!1248278 condMapEmpty!48904) mapIsEmpty!48904))

(assert (= (and b!1248278 (not condMapEmpty!48904)) mapNonEmpty!48904))

(get-info :version)

(assert (= (and mapNonEmpty!48904 ((_ is ValueCellFull!14952) mapValue!48904)) b!1248274))

(assert (= (and b!1248278 ((_ is ValueCellFull!14952) mapDefault!48904)) b!1248273))

(assert (= start!104748 b!1248278))

(declare-fun m!1149503 () Bool)

(assert (=> b!1248277 m!1149503))

(declare-fun m!1149505 () Bool)

(assert (=> mapNonEmpty!48904 m!1149505))

(declare-fun m!1149507 () Bool)

(assert (=> b!1248279 m!1149507))

(declare-fun m!1149509 () Bool)

(assert (=> b!1248276 m!1149509))

(declare-fun m!1149511 () Bool)

(assert (=> start!104748 m!1149511))

(declare-fun m!1149513 () Bool)

(assert (=> start!104748 m!1149513))

(declare-fun m!1149515 () Bool)

(assert (=> start!104748 m!1149515))

(check-sat (not mapNonEmpty!48904) (not b!1248277) (not b!1248276) (not start!104748) (not b!1248279) (not b_next!26529) b_and!44303 tp_is_empty!31431)
(check-sat b_and!44303 (not b_next!26529))
