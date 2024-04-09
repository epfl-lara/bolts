; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!105390 () Bool)

(assert start!105390)

(declare-fun b_free!27027 () Bool)

(declare-fun b_next!27027 () Bool)

(assert (=> start!105390 (= b_free!27027 (not b_next!27027))))

(declare-fun tp!94593 () Bool)

(declare-fun b_and!44875 () Bool)

(assert (=> start!105390 (= tp!94593 b_and!44875)))

(declare-fun b!1255169 () Bool)

(declare-fun e!713369 () Bool)

(assert (=> b!1255169 (= e!713369 (not true))))

(declare-datatypes ((V!47937 0))(
  ( (V!47938 (val!16027 Int)) )
))
(declare-datatypes ((tuple2!20840 0))(
  ( (tuple2!20841 (_1!10430 (_ BitVec 64)) (_2!10430 V!47937)) )
))
(declare-datatypes ((List!28079 0))(
  ( (Nil!28076) (Cons!28075 (h!29284 tuple2!20840) (t!41571 List!28079)) )
))
(declare-datatypes ((ListLongMap!18725 0))(
  ( (ListLongMap!18726 (toList!9378 List!28079)) )
))
(declare-fun lt!567441 () ListLongMap!18725)

(declare-fun lt!567442 () ListLongMap!18725)

(assert (=> b!1255169 (= lt!567441 lt!567442)))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!47937)

(declare-datatypes ((Unit!41730 0))(
  ( (Unit!41731) )
))
(declare-fun lt!567443 () Unit!41730)

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!47937)

(declare-datatypes ((array!81493 0))(
  ( (array!81494 (arr!39302 (Array (_ BitVec 32) (_ BitVec 64))) (size!39839 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81493)

(declare-datatypes ((ValueCell!15201 0))(
  ( (ValueCellFull!15201 (v!18727 V!47937)) (EmptyCell!15201) )
))
(declare-datatypes ((array!81495 0))(
  ( (array!81496 (arr!39303 (Array (_ BitVec 32) ValueCell!15201)) (size!39840 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81495)

(declare-fun minValueBefore!43 () V!47937)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1057 (array!81493 array!81495 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47937 V!47937 V!47937 V!47937 (_ BitVec 32) Int) Unit!41730)

(assert (=> b!1255169 (= lt!567443 (lemmaNoChangeToArrayThenSameMapNoExtras!1057 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5739 (array!81493 array!81495 (_ BitVec 32) (_ BitVec 32) V!47937 V!47937 (_ BitVec 32) Int) ListLongMap!18725)

(assert (=> b!1255169 (= lt!567442 (getCurrentListMapNoExtraKeys!5739 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1255169 (= lt!567441 (getCurrentListMapNoExtraKeys!5739 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1255170 () Bool)

(declare-fun res!836908 () Bool)

(assert (=> b!1255170 (=> (not res!836908) (not e!713369))))

(assert (=> b!1255170 (= res!836908 (and (= (size!39840 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39839 _keys!1118) (size!39840 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1255171 () Bool)

(declare-fun res!836907 () Bool)

(assert (=> b!1255171 (=> (not res!836907) (not e!713369))))

(declare-datatypes ((List!28080 0))(
  ( (Nil!28077) (Cons!28076 (h!29285 (_ BitVec 64)) (t!41572 List!28080)) )
))
(declare-fun arrayNoDuplicates!0 (array!81493 (_ BitVec 32) List!28080) Bool)

(assert (=> b!1255171 (= res!836907 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28077))))

(declare-fun mapNonEmpty!49675 () Bool)

(declare-fun mapRes!49675 () Bool)

(declare-fun tp!94592 () Bool)

(declare-fun e!713372 () Bool)

(assert (=> mapNonEmpty!49675 (= mapRes!49675 (and tp!94592 e!713372))))

(declare-fun mapValue!49675 () ValueCell!15201)

(declare-fun mapKey!49675 () (_ BitVec 32))

(declare-fun mapRest!49675 () (Array (_ BitVec 32) ValueCell!15201))

(assert (=> mapNonEmpty!49675 (= (arr!39303 _values!914) (store mapRest!49675 mapKey!49675 mapValue!49675))))

(declare-fun b!1255172 () Bool)

(declare-fun e!713373 () Bool)

(declare-fun e!713370 () Bool)

(assert (=> b!1255172 (= e!713373 (and e!713370 mapRes!49675))))

(declare-fun condMapEmpty!49675 () Bool)

(declare-fun mapDefault!49675 () ValueCell!15201)

(assert (=> b!1255172 (= condMapEmpty!49675 (= (arr!39303 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15201)) mapDefault!49675)))))

(declare-fun b!1255173 () Bool)

(declare-fun res!836906 () Bool)

(assert (=> b!1255173 (=> (not res!836906) (not e!713369))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81493 (_ BitVec 32)) Bool)

(assert (=> b!1255173 (= res!836906 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1255175 () Bool)

(declare-fun tp_is_empty!31929 () Bool)

(assert (=> b!1255175 (= e!713372 tp_is_empty!31929)))

(declare-fun mapIsEmpty!49675 () Bool)

(assert (=> mapIsEmpty!49675 mapRes!49675))

(declare-fun b!1255174 () Bool)

(assert (=> b!1255174 (= e!713370 tp_is_empty!31929)))

(declare-fun res!836905 () Bool)

(assert (=> start!105390 (=> (not res!836905) (not e!713369))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105390 (= res!836905 (validMask!0 mask!1466))))

(assert (=> start!105390 e!713369))

(assert (=> start!105390 true))

(assert (=> start!105390 tp!94593))

(assert (=> start!105390 tp_is_empty!31929))

(declare-fun array_inv!29895 (array!81493) Bool)

(assert (=> start!105390 (array_inv!29895 _keys!1118)))

(declare-fun array_inv!29896 (array!81495) Bool)

(assert (=> start!105390 (and (array_inv!29896 _values!914) e!713373)))

(assert (= (and start!105390 res!836905) b!1255170))

(assert (= (and b!1255170 res!836908) b!1255173))

(assert (= (and b!1255173 res!836906) b!1255171))

(assert (= (and b!1255171 res!836907) b!1255169))

(assert (= (and b!1255172 condMapEmpty!49675) mapIsEmpty!49675))

(assert (= (and b!1255172 (not condMapEmpty!49675)) mapNonEmpty!49675))

(get-info :version)

(assert (= (and mapNonEmpty!49675 ((_ is ValueCellFull!15201) mapValue!49675)) b!1255175))

(assert (= (and b!1255172 ((_ is ValueCellFull!15201) mapDefault!49675)) b!1255174))

(assert (= start!105390 b!1255172))

(declare-fun m!1155977 () Bool)

(assert (=> b!1255169 m!1155977))

(declare-fun m!1155979 () Bool)

(assert (=> b!1255169 m!1155979))

(declare-fun m!1155981 () Bool)

(assert (=> b!1255169 m!1155981))

(declare-fun m!1155983 () Bool)

(assert (=> mapNonEmpty!49675 m!1155983))

(declare-fun m!1155985 () Bool)

(assert (=> start!105390 m!1155985))

(declare-fun m!1155987 () Bool)

(assert (=> start!105390 m!1155987))

(declare-fun m!1155989 () Bool)

(assert (=> start!105390 m!1155989))

(declare-fun m!1155991 () Bool)

(assert (=> b!1255171 m!1155991))

(declare-fun m!1155993 () Bool)

(assert (=> b!1255173 m!1155993))

(check-sat b_and!44875 (not mapNonEmpty!49675) (not b!1255171) (not b!1255169) (not b_next!27027) tp_is_empty!31929 (not b!1255173) (not start!105390))
(check-sat b_and!44875 (not b_next!27027))
