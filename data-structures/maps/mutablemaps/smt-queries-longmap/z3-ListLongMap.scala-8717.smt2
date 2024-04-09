; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!105812 () Bool)

(assert start!105812)

(declare-fun b_free!27339 () Bool)

(declare-fun b_next!27339 () Bool)

(assert (=> start!105812 (= b_free!27339 (not b_next!27339))))

(declare-fun tp!95547 () Bool)

(declare-fun b_and!45245 () Bool)

(assert (=> start!105812 (= tp!95547 b_and!45245)))

(declare-fun mapIsEmpty!50161 () Bool)

(declare-fun mapRes!50161 () Bool)

(assert (=> mapIsEmpty!50161 mapRes!50161))

(declare-fun b!1259887 () Bool)

(declare-fun e!716859 () Bool)

(declare-fun e!716858 () Bool)

(assert (=> b!1259887 (= e!716859 (and e!716858 mapRes!50161))))

(declare-fun condMapEmpty!50161 () Bool)

(declare-datatypes ((V!48353 0))(
  ( (V!48354 (val!16183 Int)) )
))
(declare-datatypes ((ValueCell!15357 0))(
  ( (ValueCellFull!15357 (v!18886 V!48353)) (EmptyCell!15357) )
))
(declare-datatypes ((array!82093 0))(
  ( (array!82094 (arr!39596 (Array (_ BitVec 32) ValueCell!15357)) (size!40133 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!82093)

(declare-fun mapDefault!50161 () ValueCell!15357)

(assert (=> b!1259887 (= condMapEmpty!50161 (= (arr!39596 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15357)) mapDefault!50161)))))

(declare-fun b!1259888 () Bool)

(declare-fun res!839729 () Bool)

(declare-fun e!716856 () Bool)

(assert (=> b!1259888 (=> (not res!839729) (not e!716856))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((array!82095 0))(
  ( (array!82096 (arr!39597 (Array (_ BitVec 32) (_ BitVec 64))) (size!40134 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!82095)

(assert (=> b!1259888 (= res!839729 (and (= (size!40133 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!40134 _keys!1118) (size!40133 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1259889 () Bool)

(declare-datatypes ((tuple2!21084 0))(
  ( (tuple2!21085 (_1!10552 (_ BitVec 64)) (_2!10552 V!48353)) )
))
(declare-datatypes ((List!28309 0))(
  ( (Nil!28306) (Cons!28305 (h!29514 tuple2!21084) (t!41813 List!28309)) )
))
(declare-datatypes ((ListLongMap!18969 0))(
  ( (ListLongMap!18970 (toList!9500 List!28309)) )
))
(declare-fun lt!570557 () ListLongMap!18969)

(declare-fun lt!570558 () ListLongMap!18969)

(declare-fun e!716860 () Bool)

(declare-fun lt!570553 () tuple2!21084)

(declare-fun +!4197 (ListLongMap!18969 tuple2!21084) ListLongMap!18969)

(assert (=> b!1259889 (= e!716860 (= lt!570558 (+!4197 lt!570557 lt!570553)))))

(declare-fun mapNonEmpty!50161 () Bool)

(declare-fun tp!95546 () Bool)

(declare-fun e!716861 () Bool)

(assert (=> mapNonEmpty!50161 (= mapRes!50161 (and tp!95546 e!716861))))

(declare-fun mapKey!50161 () (_ BitVec 32))

(declare-fun mapRest!50161 () (Array (_ BitVec 32) ValueCell!15357))

(declare-fun mapValue!50161 () ValueCell!15357)

(assert (=> mapNonEmpty!50161 (= (arr!39596 _values!914) (store mapRest!50161 mapKey!50161 mapValue!50161))))

(declare-fun b!1259890 () Bool)

(declare-fun tp_is_empty!32241 () Bool)

(assert (=> b!1259890 (= e!716861 tp_is_empty!32241)))

(declare-fun res!839732 () Bool)

(assert (=> start!105812 (=> (not res!839732) (not e!716856))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105812 (= res!839732 (validMask!0 mask!1466))))

(assert (=> start!105812 e!716856))

(assert (=> start!105812 true))

(assert (=> start!105812 tp!95547))

(assert (=> start!105812 tp_is_empty!32241))

(declare-fun array_inv!30097 (array!82095) Bool)

(assert (=> start!105812 (array_inv!30097 _keys!1118)))

(declare-fun array_inv!30098 (array!82093) Bool)

(assert (=> start!105812 (and (array_inv!30098 _values!914) e!716859)))

(declare-fun b!1259891 () Bool)

(assert (=> b!1259891 (= e!716858 tp_is_empty!32241)))

(declare-fun b!1259892 () Bool)

(declare-fun e!716862 () Bool)

(assert (=> b!1259892 (= e!716862 true)))

(declare-fun lt!570550 () ListLongMap!18969)

(declare-fun lt!570551 () ListLongMap!18969)

(declare-fun -!2130 (ListLongMap!18969 (_ BitVec 64)) ListLongMap!18969)

(assert (=> b!1259892 (= lt!570550 (-!2130 lt!570551 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!570549 () ListLongMap!18969)

(declare-fun lt!570552 () ListLongMap!18969)

(assert (=> b!1259892 (= (-!2130 lt!570549 #b1000000000000000000000000000000000000000000000000000000000000000) lt!570552)))

(declare-datatypes ((Unit!41969 0))(
  ( (Unit!41970) )
))
(declare-fun lt!570556 () Unit!41969)

(declare-fun minValueBefore!43 () V!48353)

(declare-fun addThenRemoveForNewKeyIsSame!355 (ListLongMap!18969 (_ BitVec 64) V!48353) Unit!41969)

(assert (=> b!1259892 (= lt!570556 (addThenRemoveForNewKeyIsSame!355 lt!570552 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))

(assert (=> b!1259892 e!716860))

(declare-fun res!839728 () Bool)

(assert (=> b!1259892 (=> (not res!839728) (not e!716860))))

(assert (=> b!1259892 (= res!839728 (= lt!570551 lt!570549))))

(assert (=> b!1259892 (= lt!570549 (+!4197 lt!570552 (tuple2!21085 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43)))))

(declare-fun lt!570554 () ListLongMap!18969)

(assert (=> b!1259892 (= lt!570552 (+!4197 lt!570554 lt!570553))))

(declare-fun zeroValue!871 () V!48353)

(assert (=> b!1259892 (= lt!570553 (tuple2!21085 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!871))))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!48353)

(declare-fun getCurrentListMap!4634 (array!82095 array!82093 (_ BitVec 32) (_ BitVec 32) V!48353 V!48353 (_ BitVec 32) Int) ListLongMap!18969)

(assert (=> b!1259892 (= lt!570558 (getCurrentListMap!4634 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1259892 (= lt!570551 (getCurrentListMap!4634 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1259893 () Bool)

(declare-fun res!839727 () Bool)

(assert (=> b!1259893 (=> (not res!839727) (not e!716856))))

(declare-datatypes ((List!28310 0))(
  ( (Nil!28307) (Cons!28306 (h!29515 (_ BitVec 64)) (t!41814 List!28310)) )
))
(declare-fun arrayNoDuplicates!0 (array!82095 (_ BitVec 32) List!28310) Bool)

(assert (=> b!1259893 (= res!839727 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28307))))

(declare-fun b!1259894 () Bool)

(assert (=> b!1259894 (= e!716856 (not e!716862))))

(declare-fun res!839731 () Bool)

(assert (=> b!1259894 (=> res!839731 e!716862)))

(assert (=> b!1259894 (= res!839731 (or (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1259894 (= lt!570554 lt!570557)))

(declare-fun lt!570555 () Unit!41969)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1163 (array!82095 array!82093 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48353 V!48353 V!48353 V!48353 (_ BitVec 32) Int) Unit!41969)

(assert (=> b!1259894 (= lt!570555 (lemmaNoChangeToArrayThenSameMapNoExtras!1163 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5845 (array!82095 array!82093 (_ BitVec 32) (_ BitVec 32) V!48353 V!48353 (_ BitVec 32) Int) ListLongMap!18969)

(assert (=> b!1259894 (= lt!570557 (getCurrentListMapNoExtraKeys!5845 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1259894 (= lt!570554 (getCurrentListMapNoExtraKeys!5845 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1259895 () Bool)

(declare-fun res!839730 () Bool)

(assert (=> b!1259895 (=> (not res!839730) (not e!716856))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82095 (_ BitVec 32)) Bool)

(assert (=> b!1259895 (= res!839730 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(assert (= (and start!105812 res!839732) b!1259888))

(assert (= (and b!1259888 res!839729) b!1259895))

(assert (= (and b!1259895 res!839730) b!1259893))

(assert (= (and b!1259893 res!839727) b!1259894))

(assert (= (and b!1259894 (not res!839731)) b!1259892))

(assert (= (and b!1259892 res!839728) b!1259889))

(assert (= (and b!1259887 condMapEmpty!50161) mapIsEmpty!50161))

(assert (= (and b!1259887 (not condMapEmpty!50161)) mapNonEmpty!50161))

(get-info :version)

(assert (= (and mapNonEmpty!50161 ((_ is ValueCellFull!15357) mapValue!50161)) b!1259890))

(assert (= (and b!1259887 ((_ is ValueCellFull!15357) mapDefault!50161)) b!1259891))

(assert (= start!105812 b!1259887))

(declare-fun m!1160519 () Bool)

(assert (=> b!1259893 m!1160519))

(declare-fun m!1160521 () Bool)

(assert (=> b!1259889 m!1160521))

(declare-fun m!1160523 () Bool)

(assert (=> b!1259892 m!1160523))

(declare-fun m!1160525 () Bool)

(assert (=> b!1259892 m!1160525))

(declare-fun m!1160527 () Bool)

(assert (=> b!1259892 m!1160527))

(declare-fun m!1160529 () Bool)

(assert (=> b!1259892 m!1160529))

(declare-fun m!1160531 () Bool)

(assert (=> b!1259892 m!1160531))

(declare-fun m!1160533 () Bool)

(assert (=> b!1259892 m!1160533))

(declare-fun m!1160535 () Bool)

(assert (=> b!1259892 m!1160535))

(declare-fun m!1160537 () Bool)

(assert (=> b!1259894 m!1160537))

(declare-fun m!1160539 () Bool)

(assert (=> b!1259894 m!1160539))

(declare-fun m!1160541 () Bool)

(assert (=> b!1259894 m!1160541))

(declare-fun m!1160543 () Bool)

(assert (=> start!105812 m!1160543))

(declare-fun m!1160545 () Bool)

(assert (=> start!105812 m!1160545))

(declare-fun m!1160547 () Bool)

(assert (=> start!105812 m!1160547))

(declare-fun m!1160549 () Bool)

(assert (=> b!1259895 m!1160549))

(declare-fun m!1160551 () Bool)

(assert (=> mapNonEmpty!50161 m!1160551))

(check-sat (not b!1259892) (not start!105812) b_and!45245 (not mapNonEmpty!50161) (not b_next!27339) (not b!1259889) tp_is_empty!32241 (not b!1259893) (not b!1259895) (not b!1259894))
(check-sat b_and!45245 (not b_next!27339))
