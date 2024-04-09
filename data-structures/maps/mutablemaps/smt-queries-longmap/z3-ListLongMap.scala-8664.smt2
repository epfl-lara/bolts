; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!105384 () Bool)

(assert start!105384)

(declare-fun b_free!27021 () Bool)

(declare-fun b_next!27021 () Bool)

(assert (=> start!105384 (= b_free!27021 (not b_next!27021))))

(declare-fun tp!94574 () Bool)

(declare-fun b_and!44869 () Bool)

(assert (=> start!105384 (= tp!94574 b_and!44869)))

(declare-fun b!1255106 () Bool)

(declare-fun e!713324 () Bool)

(declare-fun tp_is_empty!31923 () Bool)

(assert (=> b!1255106 (= e!713324 tp_is_empty!31923)))

(declare-fun mapNonEmpty!49666 () Bool)

(declare-fun mapRes!49666 () Bool)

(declare-fun tp!94575 () Bool)

(declare-fun e!713328 () Bool)

(assert (=> mapNonEmpty!49666 (= mapRes!49666 (and tp!94575 e!713328))))

(declare-datatypes ((V!47929 0))(
  ( (V!47930 (val!16024 Int)) )
))
(declare-datatypes ((ValueCell!15198 0))(
  ( (ValueCellFull!15198 (v!18724 V!47929)) (EmptyCell!15198) )
))
(declare-fun mapValue!49666 () ValueCell!15198)

(declare-fun mapKey!49666 () (_ BitVec 32))

(declare-fun mapRest!49666 () (Array (_ BitVec 32) ValueCell!15198))

(declare-datatypes ((array!81481 0))(
  ( (array!81482 (arr!39296 (Array (_ BitVec 32) ValueCell!15198)) (size!39833 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81481)

(assert (=> mapNonEmpty!49666 (= (arr!39296 _values!914) (store mapRest!49666 mapKey!49666 mapValue!49666))))

(declare-fun res!836871 () Bool)

(declare-fun e!713326 () Bool)

(assert (=> start!105384 (=> (not res!836871) (not e!713326))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105384 (= res!836871 (validMask!0 mask!1466))))

(assert (=> start!105384 e!713326))

(assert (=> start!105384 true))

(assert (=> start!105384 tp!94574))

(assert (=> start!105384 tp_is_empty!31923))

(declare-datatypes ((array!81483 0))(
  ( (array!81484 (arr!39297 (Array (_ BitVec 32) (_ BitVec 64))) (size!39834 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81483)

(declare-fun array_inv!29889 (array!81483) Bool)

(assert (=> start!105384 (array_inv!29889 _keys!1118)))

(declare-fun e!713325 () Bool)

(declare-fun array_inv!29890 (array!81481) Bool)

(assert (=> start!105384 (and (array_inv!29890 _values!914) e!713325)))

(declare-fun b!1255107 () Bool)

(declare-fun res!836869 () Bool)

(assert (=> b!1255107 (=> (not res!836869) (not e!713326))))

(declare-datatypes ((List!28074 0))(
  ( (Nil!28071) (Cons!28070 (h!29279 (_ BitVec 64)) (t!41566 List!28074)) )
))
(declare-fun arrayNoDuplicates!0 (array!81483 (_ BitVec 32) List!28074) Bool)

(assert (=> b!1255107 (= res!836869 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28071))))

(declare-fun b!1255108 () Bool)

(assert (=> b!1255108 (= e!713325 (and e!713324 mapRes!49666))))

(declare-fun condMapEmpty!49666 () Bool)

(declare-fun mapDefault!49666 () ValueCell!15198)

(assert (=> b!1255108 (= condMapEmpty!49666 (= (arr!39296 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15198)) mapDefault!49666)))))

(declare-fun mapIsEmpty!49666 () Bool)

(assert (=> mapIsEmpty!49666 mapRes!49666))

(declare-fun b!1255109 () Bool)

(declare-fun res!836872 () Bool)

(assert (=> b!1255109 (=> (not res!836872) (not e!713326))))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(assert (=> b!1255109 (= res!836872 (and (= (size!39833 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39834 _keys!1118) (size!39833 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1255110 () Bool)

(declare-fun res!836870 () Bool)

(assert (=> b!1255110 (=> (not res!836870) (not e!713326))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81483 (_ BitVec 32)) Bool)

(assert (=> b!1255110 (= res!836870 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1255111 () Bool)

(assert (=> b!1255111 (= e!713326 (not true))))

(declare-datatypes ((tuple2!20834 0))(
  ( (tuple2!20835 (_1!10427 (_ BitVec 64)) (_2!10427 V!47929)) )
))
(declare-datatypes ((List!28075 0))(
  ( (Nil!28072) (Cons!28071 (h!29280 tuple2!20834) (t!41567 List!28075)) )
))
(declare-datatypes ((ListLongMap!18719 0))(
  ( (ListLongMap!18720 (toList!9375 List!28075)) )
))
(declare-fun lt!567414 () ListLongMap!18719)

(declare-fun lt!567416 () ListLongMap!18719)

(assert (=> b!1255111 (= lt!567414 lt!567416)))

(declare-fun defaultEntry!922 () Int)

(declare-datatypes ((Unit!41724 0))(
  ( (Unit!41725) )
))
(declare-fun lt!567415 () Unit!41724)

(declare-fun minValueAfter!43 () V!47929)

(declare-fun zeroValue!871 () V!47929)

(declare-fun minValueBefore!43 () V!47929)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1054 (array!81483 array!81481 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47929 V!47929 V!47929 V!47929 (_ BitVec 32) Int) Unit!41724)

(assert (=> b!1255111 (= lt!567415 (lemmaNoChangeToArrayThenSameMapNoExtras!1054 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5736 (array!81483 array!81481 (_ BitVec 32) (_ BitVec 32) V!47929 V!47929 (_ BitVec 32) Int) ListLongMap!18719)

(assert (=> b!1255111 (= lt!567416 (getCurrentListMapNoExtraKeys!5736 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1255111 (= lt!567414 (getCurrentListMapNoExtraKeys!5736 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1255112 () Bool)

(assert (=> b!1255112 (= e!713328 tp_is_empty!31923)))

(assert (= (and start!105384 res!836871) b!1255109))

(assert (= (and b!1255109 res!836872) b!1255110))

(assert (= (and b!1255110 res!836870) b!1255107))

(assert (= (and b!1255107 res!836869) b!1255111))

(assert (= (and b!1255108 condMapEmpty!49666) mapIsEmpty!49666))

(assert (= (and b!1255108 (not condMapEmpty!49666)) mapNonEmpty!49666))

(get-info :version)

(assert (= (and mapNonEmpty!49666 ((_ is ValueCellFull!15198) mapValue!49666)) b!1255112))

(assert (= (and b!1255108 ((_ is ValueCellFull!15198) mapDefault!49666)) b!1255106))

(assert (= start!105384 b!1255108))

(declare-fun m!1155923 () Bool)

(assert (=> start!105384 m!1155923))

(declare-fun m!1155925 () Bool)

(assert (=> start!105384 m!1155925))

(declare-fun m!1155927 () Bool)

(assert (=> start!105384 m!1155927))

(declare-fun m!1155929 () Bool)

(assert (=> b!1255110 m!1155929))

(declare-fun m!1155931 () Bool)

(assert (=> mapNonEmpty!49666 m!1155931))

(declare-fun m!1155933 () Bool)

(assert (=> b!1255107 m!1155933))

(declare-fun m!1155935 () Bool)

(assert (=> b!1255111 m!1155935))

(declare-fun m!1155937 () Bool)

(assert (=> b!1255111 m!1155937))

(declare-fun m!1155939 () Bool)

(assert (=> b!1255111 m!1155939))

(check-sat (not b_next!27021) tp_is_empty!31923 (not b!1255111) b_and!44869 (not b!1255107) (not start!105384) (not b!1255110) (not mapNonEmpty!49666))
(check-sat b_and!44869 (not b_next!27021))
