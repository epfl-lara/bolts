; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!104880 () Bool)

(assert start!104880)

(declare-fun b_free!26649 () Bool)

(declare-fun b_next!26649 () Bool)

(assert (=> start!104880 (= b_free!26649 (not b_next!26649))))

(declare-fun tp!93438 () Bool)

(declare-fun b_and!44427 () Bool)

(assert (=> start!104880 (= tp!93438 b_and!44427)))

(declare-fun mapNonEmpty!49087 () Bool)

(declare-fun mapRes!49087 () Bool)

(declare-fun tp!93437 () Bool)

(declare-fun e!709300 () Bool)

(assert (=> mapNonEmpty!49087 (= mapRes!49087 (and tp!93437 e!709300))))

(declare-datatypes ((V!47433 0))(
  ( (V!47434 (val!15838 Int)) )
))
(declare-datatypes ((ValueCell!15012 0))(
  ( (ValueCellFull!15012 (v!18534 V!47433)) (EmptyCell!15012) )
))
(declare-fun mapValue!49087 () ValueCell!15012)

(declare-fun mapKey!49087 () (_ BitVec 32))

(declare-fun mapRest!49087 () (Array (_ BitVec 32) ValueCell!15012))

(declare-datatypes ((array!80755 0))(
  ( (array!80756 (arr!38940 (Array (_ BitVec 32) ValueCell!15012)) (size!39477 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80755)

(assert (=> mapNonEmpty!49087 (= (arr!38940 _values!914) (store mapRest!49087 mapKey!49087 mapValue!49087))))

(declare-fun res!833639 () Bool)

(declare-fun e!709301 () Bool)

(assert (=> start!104880 (=> (not res!833639) (not e!709301))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!104880 (= res!833639 (validMask!0 mask!1466))))

(assert (=> start!104880 e!709301))

(assert (=> start!104880 true))

(assert (=> start!104880 tp!93438))

(declare-fun tp_is_empty!31551 () Bool)

(assert (=> start!104880 tp_is_empty!31551))

(declare-datatypes ((array!80757 0))(
  ( (array!80758 (arr!38941 (Array (_ BitVec 32) (_ BitVec 64))) (size!39478 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80757)

(declare-fun array_inv!29643 (array!80757) Bool)

(assert (=> start!104880 (array_inv!29643 _keys!1118)))

(declare-fun e!709299 () Bool)

(declare-fun array_inv!29644 (array!80755) Bool)

(assert (=> start!104880 (and (array_inv!29644 _values!914) e!709299)))

(declare-fun mapIsEmpty!49087 () Bool)

(assert (=> mapIsEmpty!49087 mapRes!49087))

(declare-fun b!1249606 () Bool)

(declare-fun res!833638 () Bool)

(assert (=> b!1249606 (=> (not res!833638) (not e!709301))))

(declare-datatypes ((List!27807 0))(
  ( (Nil!27804) (Cons!27803 (h!29012 (_ BitVec 64)) (t!41285 List!27807)) )
))
(declare-fun arrayNoDuplicates!0 (array!80757 (_ BitVec 32) List!27807) Bool)

(assert (=> b!1249606 (= res!833638 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27804))))

(declare-fun b!1249607 () Bool)

(assert (=> b!1249607 (= e!709301 (not true))))

(declare-datatypes ((tuple2!20544 0))(
  ( (tuple2!20545 (_1!10282 (_ BitVec 64)) (_2!10282 V!47433)) )
))
(declare-datatypes ((List!27808 0))(
  ( (Nil!27805) (Cons!27804 (h!29013 tuple2!20544) (t!41286 List!27808)) )
))
(declare-datatypes ((ListLongMap!18429 0))(
  ( (ListLongMap!18430 (toList!9230 List!27808)) )
))
(declare-fun lt!563780 () ListLongMap!18429)

(declare-fun lt!563781 () ListLongMap!18429)

(assert (=> b!1249607 (= lt!563780 lt!563781)))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!47433)

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!47433)

(declare-fun minValueBefore!43 () V!47433)

(declare-datatypes ((Unit!41443 0))(
  ( (Unit!41444) )
))
(declare-fun lt!563779 () Unit!41443)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!931 (array!80757 array!80755 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47433 V!47433 V!47433 V!47433 (_ BitVec 32) Int) Unit!41443)

(assert (=> b!1249607 (= lt!563779 (lemmaNoChangeToArrayThenSameMapNoExtras!931 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5613 (array!80757 array!80755 (_ BitVec 32) (_ BitVec 32) V!47433 V!47433 (_ BitVec 32) Int) ListLongMap!18429)

(assert (=> b!1249607 (= lt!563781 (getCurrentListMapNoExtraKeys!5613 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1249607 (= lt!563780 (getCurrentListMapNoExtraKeys!5613 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1249608 () Bool)

(declare-fun e!709302 () Bool)

(assert (=> b!1249608 (= e!709299 (and e!709302 mapRes!49087))))

(declare-fun condMapEmpty!49087 () Bool)

(declare-fun mapDefault!49087 () ValueCell!15012)

(assert (=> b!1249608 (= condMapEmpty!49087 (= (arr!38940 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15012)) mapDefault!49087)))))

(declare-fun b!1249609 () Bool)

(declare-fun res!833637 () Bool)

(assert (=> b!1249609 (=> (not res!833637) (not e!709301))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!80757 (_ BitVec 32)) Bool)

(assert (=> b!1249609 (= res!833637 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1249610 () Bool)

(assert (=> b!1249610 (= e!709300 tp_is_empty!31551)))

(declare-fun b!1249611 () Bool)

(declare-fun res!833640 () Bool)

(assert (=> b!1249611 (=> (not res!833640) (not e!709301))))

(assert (=> b!1249611 (= res!833640 (and (= (size!39477 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39478 _keys!1118) (size!39477 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1249612 () Bool)

(assert (=> b!1249612 (= e!709302 tp_is_empty!31551)))

(assert (= (and start!104880 res!833639) b!1249611))

(assert (= (and b!1249611 res!833640) b!1249609))

(assert (= (and b!1249609 res!833637) b!1249606))

(assert (= (and b!1249606 res!833638) b!1249607))

(assert (= (and b!1249608 condMapEmpty!49087) mapIsEmpty!49087))

(assert (= (and b!1249608 (not condMapEmpty!49087)) mapNonEmpty!49087))

(get-info :version)

(assert (= (and mapNonEmpty!49087 ((_ is ValueCellFull!15012) mapValue!49087)) b!1249610))

(assert (= (and b!1249608 ((_ is ValueCellFull!15012) mapDefault!49087)) b!1249612))

(assert (= start!104880 b!1249608))

(declare-fun m!1150541 () Bool)

(assert (=> b!1249607 m!1150541))

(declare-fun m!1150543 () Bool)

(assert (=> b!1249607 m!1150543))

(declare-fun m!1150545 () Bool)

(assert (=> b!1249607 m!1150545))

(declare-fun m!1150547 () Bool)

(assert (=> start!104880 m!1150547))

(declare-fun m!1150549 () Bool)

(assert (=> start!104880 m!1150549))

(declare-fun m!1150551 () Bool)

(assert (=> start!104880 m!1150551))

(declare-fun m!1150553 () Bool)

(assert (=> b!1249606 m!1150553))

(declare-fun m!1150555 () Bool)

(assert (=> mapNonEmpty!49087 m!1150555))

(declare-fun m!1150557 () Bool)

(assert (=> b!1249609 m!1150557))

(check-sat (not start!104880) (not b_next!26649) tp_is_empty!31551 (not mapNonEmpty!49087) (not b!1249609) b_and!44427 (not b!1249607) (not b!1249606))
(check-sat b_and!44427 (not b_next!26649))
