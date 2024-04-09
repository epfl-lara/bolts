; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!105654 () Bool)

(assert start!105654)

(declare-fun b_free!27219 () Bool)

(declare-fun b_next!27219 () Bool)

(assert (=> start!105654 (= b_free!27219 (not b_next!27219))))

(declare-fun tp!95181 () Bool)

(declare-fun b_and!45103 () Bool)

(assert (=> start!105654 (= tp!95181 b_and!45103)))

(declare-fun b!1258007 () Bool)

(declare-fun e!715459 () Bool)

(declare-fun tp_is_empty!32121 () Bool)

(assert (=> b!1258007 (= e!715459 tp_is_empty!32121)))

(declare-fun b!1258008 () Bool)

(declare-fun res!838583 () Bool)

(declare-fun e!715458 () Bool)

(assert (=> b!1258008 (=> (not res!838583) (not e!715458))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((array!81865 0))(
  ( (array!81866 (arr!39484 (Array (_ BitVec 32) (_ BitVec 64))) (size!40021 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81865)

(declare-datatypes ((V!48193 0))(
  ( (V!48194 (val!16123 Int)) )
))
(declare-datatypes ((ValueCell!15297 0))(
  ( (ValueCellFull!15297 (v!18825 V!48193)) (EmptyCell!15297) )
))
(declare-datatypes ((array!81867 0))(
  ( (array!81868 (arr!39485 (Array (_ BitVec 32) ValueCell!15297)) (size!40022 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81867)

(assert (=> b!1258008 (= res!838583 (and (= (size!40022 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!40021 _keys!1118) (size!40022 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1258009 () Bool)

(declare-fun e!715461 () Bool)

(declare-fun mapRes!49975 () Bool)

(assert (=> b!1258009 (= e!715461 (and e!715459 mapRes!49975))))

(declare-fun condMapEmpty!49975 () Bool)

(declare-fun mapDefault!49975 () ValueCell!15297)

(assert (=> b!1258009 (= condMapEmpty!49975 (= (arr!39485 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15297)) mapDefault!49975)))))

(declare-fun res!838579 () Bool)

(assert (=> start!105654 (=> (not res!838579) (not e!715458))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105654 (= res!838579 (validMask!0 mask!1466))))

(assert (=> start!105654 e!715458))

(assert (=> start!105654 true))

(assert (=> start!105654 tp!95181))

(assert (=> start!105654 tp_is_empty!32121))

(declare-fun array_inv!30023 (array!81865) Bool)

(assert (=> start!105654 (array_inv!30023 _keys!1118)))

(declare-fun array_inv!30024 (array!81867) Bool)

(assert (=> start!105654 (and (array_inv!30024 _values!914) e!715461)))

(declare-fun b!1258010 () Bool)

(declare-fun e!715460 () Bool)

(assert (=> b!1258010 (= e!715460 tp_is_empty!32121)))

(declare-fun b!1258011 () Bool)

(declare-fun e!715462 () Bool)

(assert (=> b!1258011 (= e!715458 (not e!715462))))

(declare-fun res!838582 () Bool)

(assert (=> b!1258011 (=> res!838582 e!715462)))

(assert (=> b!1258011 (= res!838582 (or (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!20988 0))(
  ( (tuple2!20989 (_1!10504 (_ BitVec 64)) (_2!10504 V!48193)) )
))
(declare-datatypes ((List!28219 0))(
  ( (Nil!28216) (Cons!28215 (h!29424 tuple2!20988) (t!41719 List!28219)) )
))
(declare-datatypes ((ListLongMap!18873 0))(
  ( (ListLongMap!18874 (toList!9452 List!28219)) )
))
(declare-fun lt!568972 () ListLongMap!18873)

(declare-fun lt!568971 () ListLongMap!18873)

(assert (=> b!1258011 (= lt!568972 lt!568971)))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!48193)

(declare-fun zeroValue!871 () V!48193)

(declare-datatypes ((Unit!41878 0))(
  ( (Unit!41879) )
))
(declare-fun lt!568974 () Unit!41878)

(declare-fun minValueBefore!43 () V!48193)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1122 (array!81865 array!81867 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48193 V!48193 V!48193 V!48193 (_ BitVec 32) Int) Unit!41878)

(assert (=> b!1258011 (= lt!568974 (lemmaNoChangeToArrayThenSameMapNoExtras!1122 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5804 (array!81865 array!81867 (_ BitVec 32) (_ BitVec 32) V!48193 V!48193 (_ BitVec 32) Int) ListLongMap!18873)

(assert (=> b!1258011 (= lt!568971 (getCurrentListMapNoExtraKeys!5804 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1258011 (= lt!568972 (getCurrentListMapNoExtraKeys!5804 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1258012 () Bool)

(assert (=> b!1258012 (= e!715462 true)))

(declare-fun lt!568973 () ListLongMap!18873)

(declare-fun getCurrentListMap!4592 (array!81865 array!81867 (_ BitVec 32) (_ BitVec 32) V!48193 V!48193 (_ BitVec 32) Int) ListLongMap!18873)

(assert (=> b!1258012 (= lt!568973 (getCurrentListMap!4592 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1258013 () Bool)

(declare-fun res!838581 () Bool)

(assert (=> b!1258013 (=> (not res!838581) (not e!715458))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81865 (_ BitVec 32)) Bool)

(assert (=> b!1258013 (= res!838581 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1258014 () Bool)

(declare-fun res!838580 () Bool)

(assert (=> b!1258014 (=> (not res!838580) (not e!715458))))

(declare-datatypes ((List!28220 0))(
  ( (Nil!28217) (Cons!28216 (h!29425 (_ BitVec 64)) (t!41720 List!28220)) )
))
(declare-fun arrayNoDuplicates!0 (array!81865 (_ BitVec 32) List!28220) Bool)

(assert (=> b!1258014 (= res!838580 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28217))))

(declare-fun mapIsEmpty!49975 () Bool)

(assert (=> mapIsEmpty!49975 mapRes!49975))

(declare-fun mapNonEmpty!49975 () Bool)

(declare-fun tp!95180 () Bool)

(assert (=> mapNonEmpty!49975 (= mapRes!49975 (and tp!95180 e!715460))))

(declare-fun mapRest!49975 () (Array (_ BitVec 32) ValueCell!15297))

(declare-fun mapValue!49975 () ValueCell!15297)

(declare-fun mapKey!49975 () (_ BitVec 32))

(assert (=> mapNonEmpty!49975 (= (arr!39485 _values!914) (store mapRest!49975 mapKey!49975 mapValue!49975))))

(assert (= (and start!105654 res!838579) b!1258008))

(assert (= (and b!1258008 res!838583) b!1258013))

(assert (= (and b!1258013 res!838581) b!1258014))

(assert (= (and b!1258014 res!838580) b!1258011))

(assert (= (and b!1258011 (not res!838582)) b!1258012))

(assert (= (and b!1258009 condMapEmpty!49975) mapIsEmpty!49975))

(assert (= (and b!1258009 (not condMapEmpty!49975)) mapNonEmpty!49975))

(get-info :version)

(assert (= (and mapNonEmpty!49975 ((_ is ValueCellFull!15297) mapValue!49975)) b!1258010))

(assert (= (and b!1258009 ((_ is ValueCellFull!15297) mapDefault!49975)) b!1258007))

(assert (= start!105654 b!1258009))

(declare-fun m!1158535 () Bool)

(assert (=> b!1258011 m!1158535))

(declare-fun m!1158537 () Bool)

(assert (=> b!1258011 m!1158537))

(declare-fun m!1158539 () Bool)

(assert (=> b!1258011 m!1158539))

(declare-fun m!1158541 () Bool)

(assert (=> start!105654 m!1158541))

(declare-fun m!1158543 () Bool)

(assert (=> start!105654 m!1158543))

(declare-fun m!1158545 () Bool)

(assert (=> start!105654 m!1158545))

(declare-fun m!1158547 () Bool)

(assert (=> b!1258012 m!1158547))

(declare-fun m!1158549 () Bool)

(assert (=> b!1258014 m!1158549))

(declare-fun m!1158551 () Bool)

(assert (=> b!1258013 m!1158551))

(declare-fun m!1158553 () Bool)

(assert (=> mapNonEmpty!49975 m!1158553))

(check-sat (not b_next!27219) (not b!1258011) (not b!1258013) (not start!105654) b_and!45103 (not b!1258012) (not b!1258014) tp_is_empty!32121 (not mapNonEmpty!49975))
(check-sat b_and!45103 (not b_next!27219))
