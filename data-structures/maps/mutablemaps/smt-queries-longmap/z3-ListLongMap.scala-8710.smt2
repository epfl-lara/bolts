; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!105748 () Bool)

(assert start!105748)

(declare-fun b_free!27297 () Bool)

(declare-fun b_next!27297 () Bool)

(assert (=> start!105748 (= b_free!27297 (not b_next!27297))))

(declare-fun tp!95418 () Bool)

(declare-fun b_and!45191 () Bool)

(assert (=> start!105748 (= tp!95418 b_and!45191)))

(declare-fun b!1259132 () Bool)

(declare-fun e!716300 () Bool)

(declare-fun tp_is_empty!32199 () Bool)

(assert (=> b!1259132 (= e!716300 tp_is_empty!32199)))

(declare-fun b!1259133 () Bool)

(declare-fun e!716294 () Bool)

(assert (=> b!1259133 (= e!716294 tp_is_empty!32199)))

(declare-fun res!839265 () Bool)

(declare-fun e!716296 () Bool)

(assert (=> start!105748 (=> (not res!839265) (not e!716296))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105748 (= res!839265 (validMask!0 mask!1466))))

(assert (=> start!105748 e!716296))

(assert (=> start!105748 true))

(assert (=> start!105748 tp!95418))

(assert (=> start!105748 tp_is_empty!32199))

(declare-datatypes ((array!82011 0))(
  ( (array!82012 (arr!39556 (Array (_ BitVec 32) (_ BitVec 64))) (size!40093 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!82011)

(declare-fun array_inv!30073 (array!82011) Bool)

(assert (=> start!105748 (array_inv!30073 _keys!1118)))

(declare-datatypes ((V!48297 0))(
  ( (V!48298 (val!16162 Int)) )
))
(declare-datatypes ((ValueCell!15336 0))(
  ( (ValueCellFull!15336 (v!18864 V!48297)) (EmptyCell!15336) )
))
(declare-datatypes ((array!82013 0))(
  ( (array!82014 (arr!39557 (Array (_ BitVec 32) ValueCell!15336)) (size!40094 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!82013)

(declare-fun e!716299 () Bool)

(declare-fun array_inv!30074 (array!82013) Bool)

(assert (=> start!105748 (and (array_inv!30074 _values!914) e!716299)))

(declare-fun b!1259134 () Bool)

(declare-fun mapRes!50095 () Bool)

(assert (=> b!1259134 (= e!716299 (and e!716300 mapRes!50095))))

(declare-fun condMapEmpty!50095 () Bool)

(declare-fun mapDefault!50095 () ValueCell!15336)

(assert (=> b!1259134 (= condMapEmpty!50095 (= (arr!39557 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15336)) mapDefault!50095)))))

(declare-fun b!1259135 () Bool)

(declare-fun res!839263 () Bool)

(assert (=> b!1259135 (=> (not res!839263) (not e!716296))))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(assert (=> b!1259135 (= res!839263 (and (= (size!40094 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!40093 _keys!1118) (size!40094 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!50095 () Bool)

(assert (=> mapIsEmpty!50095 mapRes!50095))

(declare-fun b!1259136 () Bool)

(declare-fun res!839264 () Bool)

(assert (=> b!1259136 (=> (not res!839264) (not e!716296))))

(declare-datatypes ((List!28276 0))(
  ( (Nil!28273) (Cons!28272 (h!29481 (_ BitVec 64)) (t!41778 List!28276)) )
))
(declare-fun arrayNoDuplicates!0 (array!82011 (_ BitVec 32) List!28276) Bool)

(assert (=> b!1259136 (= res!839264 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28273))))

(declare-fun b!1259137 () Bool)

(declare-fun e!716298 () Bool)

(assert (=> b!1259137 (= e!716298 true)))

(declare-datatypes ((tuple2!21048 0))(
  ( (tuple2!21049 (_1!10534 (_ BitVec 64)) (_2!10534 V!48297)) )
))
(declare-datatypes ((List!28277 0))(
  ( (Nil!28274) (Cons!28273 (h!29482 tuple2!21048) (t!41779 List!28277)) )
))
(declare-datatypes ((ListLongMap!18933 0))(
  ( (ListLongMap!18934 (toList!9482 List!28277)) )
))
(declare-fun lt!569774 () ListLongMap!18933)

(declare-fun lt!569778 () ListLongMap!18933)

(declare-fun -!2115 (ListLongMap!18933 (_ BitVec 64)) ListLongMap!18933)

(assert (=> b!1259137 (= lt!569774 (-!2115 lt!569778 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!569781 () ListLongMap!18933)

(declare-fun lt!569782 () ListLongMap!18933)

(assert (=> b!1259137 (= (-!2115 lt!569781 #b1000000000000000000000000000000000000000000000000000000000000000) lt!569782)))

(declare-datatypes ((Unit!41933 0))(
  ( (Unit!41934) )
))
(declare-fun lt!569777 () Unit!41933)

(declare-fun minValueBefore!43 () V!48297)

(declare-fun addThenRemoveForNewKeyIsSame!340 (ListLongMap!18933 (_ BitVec 64) V!48297) Unit!41933)

(assert (=> b!1259137 (= lt!569777 (addThenRemoveForNewKeyIsSame!340 lt!569782 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))

(declare-fun e!716297 () Bool)

(assert (=> b!1259137 e!716297))

(declare-fun res!839268 () Bool)

(assert (=> b!1259137 (=> (not res!839268) (not e!716297))))

(assert (=> b!1259137 (= res!839268 (= lt!569778 lt!569781))))

(declare-fun +!4180 (ListLongMap!18933 tuple2!21048) ListLongMap!18933)

(assert (=> b!1259137 (= lt!569781 (+!4180 lt!569782 (tuple2!21049 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43)))))

(declare-fun lt!569779 () ListLongMap!18933)

(declare-fun lt!569776 () tuple2!21048)

(assert (=> b!1259137 (= lt!569782 (+!4180 lt!569779 lt!569776))))

(declare-fun zeroValue!871 () V!48297)

(assert (=> b!1259137 (= lt!569776 (tuple2!21049 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!871))))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!48297)

(declare-fun lt!569780 () ListLongMap!18933)

(declare-fun getCurrentListMap!4619 (array!82011 array!82013 (_ BitVec 32) (_ BitVec 32) V!48297 V!48297 (_ BitVec 32) Int) ListLongMap!18933)

(assert (=> b!1259137 (= lt!569780 (getCurrentListMap!4619 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1259137 (= lt!569778 (getCurrentListMap!4619 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun mapNonEmpty!50095 () Bool)

(declare-fun tp!95417 () Bool)

(assert (=> mapNonEmpty!50095 (= mapRes!50095 (and tp!95417 e!716294))))

(declare-fun mapRest!50095 () (Array (_ BitVec 32) ValueCell!15336))

(declare-fun mapKey!50095 () (_ BitVec 32))

(declare-fun mapValue!50095 () ValueCell!15336)

(assert (=> mapNonEmpty!50095 (= (arr!39557 _values!914) (store mapRest!50095 mapKey!50095 mapValue!50095))))

(declare-fun b!1259138 () Bool)

(declare-fun res!839266 () Bool)

(assert (=> b!1259138 (=> (not res!839266) (not e!716296))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82011 (_ BitVec 32)) Bool)

(assert (=> b!1259138 (= res!839266 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1259139 () Bool)

(assert (=> b!1259139 (= e!716296 (not e!716298))))

(declare-fun res!839267 () Bool)

(assert (=> b!1259139 (=> res!839267 e!716298)))

(assert (=> b!1259139 (= res!839267 (or (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun lt!569773 () ListLongMap!18933)

(assert (=> b!1259139 (= lt!569779 lt!569773)))

(declare-fun lt!569775 () Unit!41933)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1148 (array!82011 array!82013 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48297 V!48297 V!48297 V!48297 (_ BitVec 32) Int) Unit!41933)

(assert (=> b!1259139 (= lt!569775 (lemmaNoChangeToArrayThenSameMapNoExtras!1148 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5830 (array!82011 array!82013 (_ BitVec 32) (_ BitVec 32) V!48297 V!48297 (_ BitVec 32) Int) ListLongMap!18933)

(assert (=> b!1259139 (= lt!569773 (getCurrentListMapNoExtraKeys!5830 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1259139 (= lt!569779 (getCurrentListMapNoExtraKeys!5830 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1259140 () Bool)

(assert (=> b!1259140 (= e!716297 (= lt!569780 (+!4180 lt!569773 lt!569776)))))

(assert (= (and start!105748 res!839265) b!1259135))

(assert (= (and b!1259135 res!839263) b!1259138))

(assert (= (and b!1259138 res!839266) b!1259136))

(assert (= (and b!1259136 res!839264) b!1259139))

(assert (= (and b!1259139 (not res!839267)) b!1259137))

(assert (= (and b!1259137 res!839268) b!1259140))

(assert (= (and b!1259134 condMapEmpty!50095) mapIsEmpty!50095))

(assert (= (and b!1259134 (not condMapEmpty!50095)) mapNonEmpty!50095))

(get-info :version)

(assert (= (and mapNonEmpty!50095 ((_ is ValueCellFull!15336) mapValue!50095)) b!1259133))

(assert (= (and b!1259134 ((_ is ValueCellFull!15336) mapDefault!50095)) b!1259132))

(assert (= start!105748 b!1259134))

(declare-fun m!1159597 () Bool)

(assert (=> b!1259137 m!1159597))

(declare-fun m!1159599 () Bool)

(assert (=> b!1259137 m!1159599))

(declare-fun m!1159601 () Bool)

(assert (=> b!1259137 m!1159601))

(declare-fun m!1159603 () Bool)

(assert (=> b!1259137 m!1159603))

(declare-fun m!1159605 () Bool)

(assert (=> b!1259137 m!1159605))

(declare-fun m!1159607 () Bool)

(assert (=> b!1259137 m!1159607))

(declare-fun m!1159609 () Bool)

(assert (=> b!1259137 m!1159609))

(declare-fun m!1159611 () Bool)

(assert (=> b!1259138 m!1159611))

(declare-fun m!1159613 () Bool)

(assert (=> b!1259140 m!1159613))

(declare-fun m!1159615 () Bool)

(assert (=> b!1259136 m!1159615))

(declare-fun m!1159617 () Bool)

(assert (=> b!1259139 m!1159617))

(declare-fun m!1159619 () Bool)

(assert (=> b!1259139 m!1159619))

(declare-fun m!1159621 () Bool)

(assert (=> b!1259139 m!1159621))

(declare-fun m!1159623 () Bool)

(assert (=> start!105748 m!1159623))

(declare-fun m!1159625 () Bool)

(assert (=> start!105748 m!1159625))

(declare-fun m!1159627 () Bool)

(assert (=> start!105748 m!1159627))

(declare-fun m!1159629 () Bool)

(assert (=> mapNonEmpty!50095 m!1159629))

(check-sat (not b!1259138) (not b!1259137) (not mapNonEmpty!50095) (not b!1259139) tp_is_empty!32199 b_and!45191 (not b!1259140) (not start!105748) (not b!1259136) (not b_next!27297))
(check-sat b_and!45191 (not b_next!27297))
