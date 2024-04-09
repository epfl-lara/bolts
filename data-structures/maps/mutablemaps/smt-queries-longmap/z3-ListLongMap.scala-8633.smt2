; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!105138 () Bool)

(assert start!105138)

(declare-fun b_free!26835 () Bool)

(declare-fun b_next!26835 () Bool)

(assert (=> start!105138 (= b_free!26835 (not b_next!26835))))

(declare-fun tp!94008 () Bool)

(declare-fun b_and!44649 () Bool)

(assert (=> start!105138 (= tp!94008 b_and!44649)))

(declare-fun b!1252390 () Bool)

(declare-fun res!835286 () Bool)

(declare-fun e!711351 () Bool)

(assert (=> b!1252390 (=> (not res!835286) (not e!711351))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((array!81115 0))(
  ( (array!81116 (arr!39116 (Array (_ BitVec 32) (_ BitVec 64))) (size!39653 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81115)

(declare-datatypes ((V!47681 0))(
  ( (V!47682 (val!15931 Int)) )
))
(declare-datatypes ((ValueCell!15105 0))(
  ( (ValueCellFull!15105 (v!18629 V!47681)) (EmptyCell!15105) )
))
(declare-datatypes ((array!81117 0))(
  ( (array!81118 (arr!39117 (Array (_ BitVec 32) ValueCell!15105)) (size!39654 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81117)

(assert (=> b!1252390 (= res!835286 (and (= (size!39654 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39653 _keys!1118) (size!39654 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!49378 () Bool)

(declare-fun mapRes!49378 () Bool)

(declare-fun tp!94007 () Bool)

(declare-fun e!711354 () Bool)

(assert (=> mapNonEmpty!49378 (= mapRes!49378 (and tp!94007 e!711354))))

(declare-fun mapValue!49378 () ValueCell!15105)

(declare-fun mapKey!49378 () (_ BitVec 32))

(declare-fun mapRest!49378 () (Array (_ BitVec 32) ValueCell!15105))

(assert (=> mapNonEmpty!49378 (= (arr!39117 _values!914) (store mapRest!49378 mapKey!49378 mapValue!49378))))

(declare-fun res!835287 () Bool)

(assert (=> start!105138 (=> (not res!835287) (not e!711351))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105138 (= res!835287 (validMask!0 mask!1466))))

(assert (=> start!105138 e!711351))

(assert (=> start!105138 true))

(assert (=> start!105138 tp!94008))

(declare-fun tp_is_empty!31737 () Bool)

(assert (=> start!105138 tp_is_empty!31737))

(declare-fun array_inv!29765 (array!81115) Bool)

(assert (=> start!105138 (array_inv!29765 _keys!1118)))

(declare-fun e!711352 () Bool)

(declare-fun array_inv!29766 (array!81117) Bool)

(assert (=> start!105138 (and (array_inv!29766 _values!914) e!711352)))

(declare-fun b!1252391 () Bool)

(assert (=> b!1252391 (= e!711354 tp_is_empty!31737)))

(declare-fun b!1252392 () Bool)

(declare-fun e!711353 () Bool)

(assert (=> b!1252392 (= e!711352 (and e!711353 mapRes!49378))))

(declare-fun condMapEmpty!49378 () Bool)

(declare-fun mapDefault!49378 () ValueCell!15105)

(assert (=> b!1252392 (= condMapEmpty!49378 (= (arr!39117 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15105)) mapDefault!49378)))))

(declare-fun b!1252393 () Bool)

(declare-fun res!835285 () Bool)

(assert (=> b!1252393 (=> (not res!835285) (not e!711351))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81115 (_ BitVec 32)) Bool)

(assert (=> b!1252393 (= res!835285 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1252394 () Bool)

(declare-fun e!711355 () Bool)

(assert (=> b!1252394 (= e!711355 true)))

(declare-fun defaultEntry!922 () Int)

(declare-datatypes ((tuple2!20690 0))(
  ( (tuple2!20691 (_1!10355 (_ BitVec 64)) (_2!10355 V!47681)) )
))
(declare-datatypes ((List!27940 0))(
  ( (Nil!27937) (Cons!27936 (h!29145 tuple2!20690) (t!41426 List!27940)) )
))
(declare-datatypes ((ListLongMap!18575 0))(
  ( (ListLongMap!18576 (toList!9303 List!27940)) )
))
(declare-fun lt!565293 () ListLongMap!18575)

(declare-fun zeroValue!871 () V!47681)

(declare-fun minValueBefore!43 () V!47681)

(declare-fun getCurrentListMap!4500 (array!81115 array!81117 (_ BitVec 32) (_ BitVec 32) V!47681 V!47681 (_ BitVec 32) Int) ListLongMap!18575)

(assert (=> b!1252394 (= lt!565293 (getCurrentListMap!4500 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1252395 () Bool)

(declare-fun res!835284 () Bool)

(assert (=> b!1252395 (=> (not res!835284) (not e!711351))))

(declare-datatypes ((List!27941 0))(
  ( (Nil!27938) (Cons!27937 (h!29146 (_ BitVec 64)) (t!41427 List!27941)) )
))
(declare-fun arrayNoDuplicates!0 (array!81115 (_ BitVec 32) List!27941) Bool)

(assert (=> b!1252395 (= res!835284 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27938))))

(declare-fun b!1252396 () Bool)

(assert (=> b!1252396 (= e!711353 tp_is_empty!31737)))

(declare-fun b!1252397 () Bool)

(assert (=> b!1252397 (= e!711351 (not e!711355))))

(declare-fun res!835288 () Bool)

(assert (=> b!1252397 (=> res!835288 e!711355)))

(assert (=> b!1252397 (= res!835288 (or (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun lt!565292 () ListLongMap!18575)

(declare-fun lt!565291 () ListLongMap!18575)

(assert (=> b!1252397 (= lt!565292 lt!565291)))

(declare-fun minValueAfter!43 () V!47681)

(declare-datatypes ((Unit!41583 0))(
  ( (Unit!41584) )
))
(declare-fun lt!565294 () Unit!41583)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!994 (array!81115 array!81117 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47681 V!47681 V!47681 V!47681 (_ BitVec 32) Int) Unit!41583)

(assert (=> b!1252397 (= lt!565294 (lemmaNoChangeToArrayThenSameMapNoExtras!994 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5676 (array!81115 array!81117 (_ BitVec 32) (_ BitVec 32) V!47681 V!47681 (_ BitVec 32) Int) ListLongMap!18575)

(assert (=> b!1252397 (= lt!565291 (getCurrentListMapNoExtraKeys!5676 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1252397 (= lt!565292 (getCurrentListMapNoExtraKeys!5676 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun mapIsEmpty!49378 () Bool)

(assert (=> mapIsEmpty!49378 mapRes!49378))

(assert (= (and start!105138 res!835287) b!1252390))

(assert (= (and b!1252390 res!835286) b!1252393))

(assert (= (and b!1252393 res!835285) b!1252395))

(assert (= (and b!1252395 res!835284) b!1252397))

(assert (= (and b!1252397 (not res!835288)) b!1252394))

(assert (= (and b!1252392 condMapEmpty!49378) mapIsEmpty!49378))

(assert (= (and b!1252392 (not condMapEmpty!49378)) mapNonEmpty!49378))

(get-info :version)

(assert (= (and mapNonEmpty!49378 ((_ is ValueCellFull!15105) mapValue!49378)) b!1252391))

(assert (= (and b!1252392 ((_ is ValueCellFull!15105) mapDefault!49378)) b!1252396))

(assert (= start!105138 b!1252392))

(declare-fun m!1153051 () Bool)

(assert (=> b!1252394 m!1153051))

(declare-fun m!1153053 () Bool)

(assert (=> start!105138 m!1153053))

(declare-fun m!1153055 () Bool)

(assert (=> start!105138 m!1153055))

(declare-fun m!1153057 () Bool)

(assert (=> start!105138 m!1153057))

(declare-fun m!1153059 () Bool)

(assert (=> b!1252393 m!1153059))

(declare-fun m!1153061 () Bool)

(assert (=> mapNonEmpty!49378 m!1153061))

(declare-fun m!1153063 () Bool)

(assert (=> b!1252395 m!1153063))

(declare-fun m!1153065 () Bool)

(assert (=> b!1252397 m!1153065))

(declare-fun m!1153067 () Bool)

(assert (=> b!1252397 m!1153067))

(declare-fun m!1153069 () Bool)

(assert (=> b!1252397 m!1153069))

(check-sat b_and!44649 (not b!1252394) tp_is_empty!31737 (not b!1252397) (not b!1252393) (not b_next!26835) (not mapNonEmpty!49378) (not b!1252395) (not start!105138))
(check-sat b_and!44649 (not b_next!26835))
