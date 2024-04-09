; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!104994 () Bool)

(assert start!104994)

(declare-fun b_free!26727 () Bool)

(declare-fun b_next!26727 () Bool)

(assert (=> start!104994 (= b_free!26727 (not b_next!26727))))

(declare-fun tp!93677 () Bool)

(declare-fun b_and!44523 () Bool)

(assert (=> start!104994 (= tp!93677 b_and!44523)))

(declare-fun mapNonEmpty!49210 () Bool)

(declare-fun mapRes!49210 () Bool)

(declare-fun tp!93678 () Bool)

(declare-fun e!710242 () Bool)

(assert (=> mapNonEmpty!49210 (= mapRes!49210 (and tp!93678 e!710242))))

(declare-fun mapKey!49210 () (_ BitVec 32))

(declare-datatypes ((V!47537 0))(
  ( (V!47538 (val!15877 Int)) )
))
(declare-datatypes ((ValueCell!15051 0))(
  ( (ValueCellFull!15051 (v!18574 V!47537)) (EmptyCell!15051) )
))
(declare-fun mapRest!49210 () (Array (_ BitVec 32) ValueCell!15051))

(declare-fun mapValue!49210 () ValueCell!15051)

(declare-datatypes ((array!80905 0))(
  ( (array!80906 (arr!39013 (Array (_ BitVec 32) ValueCell!15051)) (size!39550 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80905)

(assert (=> mapNonEmpty!49210 (= (arr!39013 _values!914) (store mapRest!49210 mapKey!49210 mapValue!49210))))

(declare-fun b!1250866 () Bool)

(declare-fun tp_is_empty!31629 () Bool)

(assert (=> b!1250866 (= e!710242 tp_is_empty!31629)))

(declare-fun b!1250867 () Bool)

(declare-fun e!710241 () Bool)

(declare-fun e!710240 () Bool)

(assert (=> b!1250867 (= e!710241 (and e!710240 mapRes!49210))))

(declare-fun condMapEmpty!49210 () Bool)

(declare-fun mapDefault!49210 () ValueCell!15051)

(assert (=> b!1250867 (= condMapEmpty!49210 (= (arr!39013 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15051)) mapDefault!49210)))))

(declare-fun b!1250868 () Bool)

(assert (=> b!1250868 (= e!710240 tp_is_empty!31629)))

(declare-fun b!1250869 () Bool)

(declare-fun e!710239 () Bool)

(declare-fun e!710243 () Bool)

(assert (=> b!1250869 (= e!710239 e!710243)))

(declare-fun res!834399 () Bool)

(assert (=> b!1250869 (=> res!834399 e!710243)))

(declare-datatypes ((tuple2!20608 0))(
  ( (tuple2!20609 (_1!10314 (_ BitVec 64)) (_2!10314 V!47537)) )
))
(declare-datatypes ((List!27863 0))(
  ( (Nil!27860) (Cons!27859 (h!29068 tuple2!20608) (t!41345 List!27863)) )
))
(declare-datatypes ((ListLongMap!18493 0))(
  ( (ListLongMap!18494 (toList!9262 List!27863)) )
))
(declare-fun lt!564494 () ListLongMap!18493)

(declare-fun contains!7513 (ListLongMap!18493 (_ BitVec 64)) Bool)

(assert (=> b!1250869 (= res!834399 (contains!7513 lt!564494 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun defaultEntry!922 () Int)

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!47537)

(declare-datatypes ((array!80907 0))(
  ( (array!80908 (arr!39014 (Array (_ BitVec 32) (_ BitVec 64))) (size!39551 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80907)

(declare-fun minValueBefore!43 () V!47537)

(declare-fun getCurrentListMap!4478 (array!80907 array!80905 (_ BitVec 32) (_ BitVec 32) V!47537 V!47537 (_ BitVec 32) Int) ListLongMap!18493)

(assert (=> b!1250869 (= lt!564494 (getCurrentListMap!4478 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1250870 () Bool)

(declare-fun e!710238 () Bool)

(assert (=> b!1250870 (= e!710238 (not e!710239))))

(declare-fun res!834397 () Bool)

(assert (=> b!1250870 (=> res!834397 e!710239)))

(assert (=> b!1250870 (= res!834397 (or (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!564495 () ListLongMap!18493)

(declare-fun lt!564496 () ListLongMap!18493)

(assert (=> b!1250870 (= lt!564495 lt!564496)))

(declare-datatypes ((Unit!41503 0))(
  ( (Unit!41504) )
))
(declare-fun lt!564493 () Unit!41503)

(declare-fun minValueAfter!43 () V!47537)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!959 (array!80907 array!80905 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47537 V!47537 V!47537 V!47537 (_ BitVec 32) Int) Unit!41503)

(assert (=> b!1250870 (= lt!564493 (lemmaNoChangeToArrayThenSameMapNoExtras!959 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5641 (array!80907 array!80905 (_ BitVec 32) (_ BitVec 32) V!47537 V!47537 (_ BitVec 32) Int) ListLongMap!18493)

(assert (=> b!1250870 (= lt!564496 (getCurrentListMapNoExtraKeys!5641 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1250870 (= lt!564495 (getCurrentListMapNoExtraKeys!5641 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1250871 () Bool)

(declare-fun res!834396 () Bool)

(assert (=> b!1250871 (=> (not res!834396) (not e!710238))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!80907 (_ BitVec 32)) Bool)

(assert (=> b!1250871 (= res!834396 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1250872 () Bool)

(declare-fun res!834401 () Bool)

(assert (=> b!1250872 (=> (not res!834401) (not e!710238))))

(assert (=> b!1250872 (= res!834401 (and (= (size!39550 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39551 _keys!1118) (size!39550 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1250873 () Bool)

(assert (=> b!1250873 (= e!710243 true)))

(declare-fun -!2025 (ListLongMap!18493 (_ BitVec 64)) ListLongMap!18493)

(assert (=> b!1250873 (= (-!2025 lt!564494 #b1000000000000000000000000000000000000000000000000000000000000000) lt!564494)))

(declare-fun lt!564497 () Unit!41503)

(declare-fun removeNotPresentStillSame!92 (ListLongMap!18493 (_ BitVec 64)) Unit!41503)

(assert (=> b!1250873 (= lt!564497 (removeNotPresentStillSame!92 lt!564494 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1250874 () Bool)

(declare-fun res!834400 () Bool)

(assert (=> b!1250874 (=> (not res!834400) (not e!710238))))

(declare-datatypes ((List!27864 0))(
  ( (Nil!27861) (Cons!27860 (h!29069 (_ BitVec 64)) (t!41346 List!27864)) )
))
(declare-fun arrayNoDuplicates!0 (array!80907 (_ BitVec 32) List!27864) Bool)

(assert (=> b!1250874 (= res!834400 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27861))))

(declare-fun res!834398 () Bool)

(assert (=> start!104994 (=> (not res!834398) (not e!710238))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!104994 (= res!834398 (validMask!0 mask!1466))))

(assert (=> start!104994 e!710238))

(assert (=> start!104994 true))

(assert (=> start!104994 tp!93677))

(assert (=> start!104994 tp_is_empty!31629))

(declare-fun array_inv!29693 (array!80907) Bool)

(assert (=> start!104994 (array_inv!29693 _keys!1118)))

(declare-fun array_inv!29694 (array!80905) Bool)

(assert (=> start!104994 (and (array_inv!29694 _values!914) e!710241)))

(declare-fun mapIsEmpty!49210 () Bool)

(assert (=> mapIsEmpty!49210 mapRes!49210))

(assert (= (and start!104994 res!834398) b!1250872))

(assert (= (and b!1250872 res!834401) b!1250871))

(assert (= (and b!1250871 res!834396) b!1250874))

(assert (= (and b!1250874 res!834400) b!1250870))

(assert (= (and b!1250870 (not res!834397)) b!1250869))

(assert (= (and b!1250869 (not res!834399)) b!1250873))

(assert (= (and b!1250867 condMapEmpty!49210) mapIsEmpty!49210))

(assert (= (and b!1250867 (not condMapEmpty!49210)) mapNonEmpty!49210))

(get-info :version)

(assert (= (and mapNonEmpty!49210 ((_ is ValueCellFull!15051) mapValue!49210)) b!1250866))

(assert (= (and b!1250867 ((_ is ValueCellFull!15051) mapDefault!49210)) b!1250868))

(assert (= start!104994 b!1250867))

(declare-fun m!1151695 () Bool)

(assert (=> b!1250870 m!1151695))

(declare-fun m!1151697 () Bool)

(assert (=> b!1250870 m!1151697))

(declare-fun m!1151699 () Bool)

(assert (=> b!1250870 m!1151699))

(declare-fun m!1151701 () Bool)

(assert (=> b!1250871 m!1151701))

(declare-fun m!1151703 () Bool)

(assert (=> b!1250869 m!1151703))

(declare-fun m!1151705 () Bool)

(assert (=> b!1250869 m!1151705))

(declare-fun m!1151707 () Bool)

(assert (=> b!1250873 m!1151707))

(declare-fun m!1151709 () Bool)

(assert (=> b!1250873 m!1151709))

(declare-fun m!1151711 () Bool)

(assert (=> mapNonEmpty!49210 m!1151711))

(declare-fun m!1151713 () Bool)

(assert (=> start!104994 m!1151713))

(declare-fun m!1151715 () Bool)

(assert (=> start!104994 m!1151715))

(declare-fun m!1151717 () Bool)

(assert (=> start!104994 m!1151717))

(declare-fun m!1151719 () Bool)

(assert (=> b!1250874 m!1151719))

(check-sat (not b!1250869) (not b!1250870) (not b!1250873) (not start!104994) (not b_next!26727) (not mapNonEmpty!49210) tp_is_empty!31629 (not b!1250874) (not b!1250871) b_and!44523)
(check-sat b_and!44523 (not b_next!26727))
