; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!105666 () Bool)

(assert start!105666)

(declare-fun b_free!27231 () Bool)

(declare-fun b_next!27231 () Bool)

(assert (=> start!105666 (= b_free!27231 (not b_next!27231))))

(declare-fun tp!95216 () Bool)

(declare-fun b_and!45115 () Bool)

(assert (=> start!105666 (= tp!95216 b_and!45115)))

(declare-fun mapIsEmpty!49993 () Bool)

(declare-fun mapRes!49993 () Bool)

(assert (=> mapIsEmpty!49993 mapRes!49993))

(declare-fun b!1258151 () Bool)

(declare-fun res!838669 () Bool)

(declare-fun e!715566 () Bool)

(assert (=> b!1258151 (=> (not res!838669) (not e!715566))))

(declare-datatypes ((array!81889 0))(
  ( (array!81890 (arr!39496 (Array (_ BitVec 32) (_ BitVec 64))) (size!40033 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81889)

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81889 (_ BitVec 32)) Bool)

(assert (=> b!1258151 (= res!838669 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1258152 () Bool)

(declare-fun res!838673 () Bool)

(assert (=> b!1258152 (=> (not res!838673) (not e!715566))))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((V!48209 0))(
  ( (V!48210 (val!16129 Int)) )
))
(declare-datatypes ((ValueCell!15303 0))(
  ( (ValueCellFull!15303 (v!18831 V!48209)) (EmptyCell!15303) )
))
(declare-datatypes ((array!81891 0))(
  ( (array!81892 (arr!39497 (Array (_ BitVec 32) ValueCell!15303)) (size!40034 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81891)

(assert (=> b!1258152 (= res!838673 (and (= (size!40034 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!40033 _keys!1118) (size!40034 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun res!838672 () Bool)

(assert (=> start!105666 (=> (not res!838672) (not e!715566))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105666 (= res!838672 (validMask!0 mask!1466))))

(assert (=> start!105666 e!715566))

(assert (=> start!105666 true))

(assert (=> start!105666 tp!95216))

(declare-fun tp_is_empty!32133 () Bool)

(assert (=> start!105666 tp_is_empty!32133))

(declare-fun array_inv!30033 (array!81889) Bool)

(assert (=> start!105666 (array_inv!30033 _keys!1118)))

(declare-fun e!715569 () Bool)

(declare-fun array_inv!30034 (array!81891) Bool)

(assert (=> start!105666 (and (array_inv!30034 _values!914) e!715569)))

(declare-fun b!1258153 () Bool)

(declare-fun e!715570 () Bool)

(assert (=> b!1258153 (= e!715570 tp_is_empty!32133)))

(declare-fun b!1258154 () Bool)

(assert (=> b!1258154 (= e!715569 (and e!715570 mapRes!49993))))

(declare-fun condMapEmpty!49993 () Bool)

(declare-fun mapDefault!49993 () ValueCell!15303)

(assert (=> b!1258154 (= condMapEmpty!49993 (= (arr!39497 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15303)) mapDefault!49993)))))

(declare-fun b!1258155 () Bool)

(declare-fun e!715568 () Bool)

(assert (=> b!1258155 (= e!715568 true)))

(declare-fun defaultEntry!922 () Int)

(declare-fun zeroValue!871 () V!48209)

(declare-fun minValueBefore!43 () V!48209)

(declare-datatypes ((tuple2!20998 0))(
  ( (tuple2!20999 (_1!10509 (_ BitVec 64)) (_2!10509 V!48209)) )
))
(declare-datatypes ((List!28230 0))(
  ( (Nil!28227) (Cons!28226 (h!29435 tuple2!20998) (t!41730 List!28230)) )
))
(declare-datatypes ((ListLongMap!18883 0))(
  ( (ListLongMap!18884 (toList!9457 List!28230)) )
))
(declare-fun lt!569044 () ListLongMap!18883)

(declare-fun getCurrentListMap!4597 (array!81889 array!81891 (_ BitVec 32) (_ BitVec 32) V!48209 V!48209 (_ BitVec 32) Int) ListLongMap!18883)

(assert (=> b!1258155 (= lt!569044 (getCurrentListMap!4597 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun mapNonEmpty!49993 () Bool)

(declare-fun tp!95217 () Bool)

(declare-fun e!715565 () Bool)

(assert (=> mapNonEmpty!49993 (= mapRes!49993 (and tp!95217 e!715565))))

(declare-fun mapValue!49993 () ValueCell!15303)

(declare-fun mapRest!49993 () (Array (_ BitVec 32) ValueCell!15303))

(declare-fun mapKey!49993 () (_ BitVec 32))

(assert (=> mapNonEmpty!49993 (= (arr!39497 _values!914) (store mapRest!49993 mapKey!49993 mapValue!49993))))

(declare-fun b!1258156 () Bool)

(declare-fun res!838671 () Bool)

(assert (=> b!1258156 (=> (not res!838671) (not e!715566))))

(declare-datatypes ((List!28231 0))(
  ( (Nil!28228) (Cons!28227 (h!29436 (_ BitVec 64)) (t!41731 List!28231)) )
))
(declare-fun arrayNoDuplicates!0 (array!81889 (_ BitVec 32) List!28231) Bool)

(assert (=> b!1258156 (= res!838671 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28228))))

(declare-fun b!1258157 () Bool)

(assert (=> b!1258157 (= e!715566 (not e!715568))))

(declare-fun res!838670 () Bool)

(assert (=> b!1258157 (=> res!838670 e!715568)))

(assert (=> b!1258157 (= res!838670 (or (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun lt!569045 () ListLongMap!18883)

(declare-fun lt!569043 () ListLongMap!18883)

(assert (=> b!1258157 (= lt!569045 lt!569043)))

(declare-fun minValueAfter!43 () V!48209)

(declare-datatypes ((Unit!41886 0))(
  ( (Unit!41887) )
))
(declare-fun lt!569046 () Unit!41886)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1126 (array!81889 array!81891 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48209 V!48209 V!48209 V!48209 (_ BitVec 32) Int) Unit!41886)

(assert (=> b!1258157 (= lt!569046 (lemmaNoChangeToArrayThenSameMapNoExtras!1126 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5808 (array!81889 array!81891 (_ BitVec 32) (_ BitVec 32) V!48209 V!48209 (_ BitVec 32) Int) ListLongMap!18883)

(assert (=> b!1258157 (= lt!569043 (getCurrentListMapNoExtraKeys!5808 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1258157 (= lt!569045 (getCurrentListMapNoExtraKeys!5808 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1258158 () Bool)

(assert (=> b!1258158 (= e!715565 tp_is_empty!32133)))

(assert (= (and start!105666 res!838672) b!1258152))

(assert (= (and b!1258152 res!838673) b!1258151))

(assert (= (and b!1258151 res!838669) b!1258156))

(assert (= (and b!1258156 res!838671) b!1258157))

(assert (= (and b!1258157 (not res!838670)) b!1258155))

(assert (= (and b!1258154 condMapEmpty!49993) mapIsEmpty!49993))

(assert (= (and b!1258154 (not condMapEmpty!49993)) mapNonEmpty!49993))

(get-info :version)

(assert (= (and mapNonEmpty!49993 ((_ is ValueCellFull!15303) mapValue!49993)) b!1258158))

(assert (= (and b!1258154 ((_ is ValueCellFull!15303) mapDefault!49993)) b!1258153))

(assert (= start!105666 b!1258154))

(declare-fun m!1158655 () Bool)

(assert (=> start!105666 m!1158655))

(declare-fun m!1158657 () Bool)

(assert (=> start!105666 m!1158657))

(declare-fun m!1158659 () Bool)

(assert (=> start!105666 m!1158659))

(declare-fun m!1158661 () Bool)

(assert (=> b!1258151 m!1158661))

(declare-fun m!1158663 () Bool)

(assert (=> b!1258157 m!1158663))

(declare-fun m!1158665 () Bool)

(assert (=> b!1258157 m!1158665))

(declare-fun m!1158667 () Bool)

(assert (=> b!1258157 m!1158667))

(declare-fun m!1158669 () Bool)

(assert (=> mapNonEmpty!49993 m!1158669))

(declare-fun m!1158671 () Bool)

(assert (=> b!1258156 m!1158671))

(declare-fun m!1158673 () Bool)

(assert (=> b!1258155 m!1158673))

(check-sat b_and!45115 (not b!1258157) (not mapNonEmpty!49993) (not b!1258151) tp_is_empty!32133 (not b!1258155) (not b!1258156) (not b_next!27231) (not start!105666))
(check-sat b_and!45115 (not b_next!27231))
