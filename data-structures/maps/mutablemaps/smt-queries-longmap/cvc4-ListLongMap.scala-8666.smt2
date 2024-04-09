; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105398 () Bool)

(assert start!105398)

(declare-fun b_free!27035 () Bool)

(declare-fun b_next!27035 () Bool)

(assert (=> start!105398 (= b_free!27035 (not b_next!27035))))

(declare-fun tp!94617 () Bool)

(declare-fun b_and!44883 () Bool)

(assert (=> start!105398 (= tp!94617 b_and!44883)))

(declare-fun res!836956 () Bool)

(declare-fun e!713431 () Bool)

(assert (=> start!105398 (=> (not res!836956) (not e!713431))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105398 (= res!836956 (validMask!0 mask!1466))))

(assert (=> start!105398 e!713431))

(assert (=> start!105398 true))

(assert (=> start!105398 tp!94617))

(declare-fun tp_is_empty!31937 () Bool)

(assert (=> start!105398 tp_is_empty!31937))

(declare-datatypes ((array!81507 0))(
  ( (array!81508 (arr!39309 (Array (_ BitVec 32) (_ BitVec 64))) (size!39846 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81507)

(declare-fun array_inv!29901 (array!81507) Bool)

(assert (=> start!105398 (array_inv!29901 _keys!1118)))

(declare-datatypes ((V!47947 0))(
  ( (V!47948 (val!16031 Int)) )
))
(declare-datatypes ((ValueCell!15205 0))(
  ( (ValueCellFull!15205 (v!18731 V!47947)) (EmptyCell!15205) )
))
(declare-datatypes ((array!81509 0))(
  ( (array!81510 (arr!39310 (Array (_ BitVec 32) ValueCell!15205)) (size!39847 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81509)

(declare-fun e!713432 () Bool)

(declare-fun array_inv!29902 (array!81509) Bool)

(assert (=> start!105398 (and (array_inv!29902 _values!914) e!713432)))

(declare-fun b!1255253 () Bool)

(declare-fun e!713430 () Bool)

(assert (=> b!1255253 (= e!713430 tp_is_empty!31937)))

(declare-fun b!1255254 () Bool)

(declare-fun res!836955 () Bool)

(assert (=> b!1255254 (=> (not res!836955) (not e!713431))))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(assert (=> b!1255254 (= res!836955 (and (= (size!39847 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39846 _keys!1118) (size!39847 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1255255 () Bool)

(declare-fun e!713433 () Bool)

(assert (=> b!1255255 (= e!713433 tp_is_empty!31937)))

(declare-fun b!1255256 () Bool)

(assert (=> b!1255256 (= e!713431 (not true))))

(declare-datatypes ((tuple2!20846 0))(
  ( (tuple2!20847 (_1!10433 (_ BitVec 64)) (_2!10433 V!47947)) )
))
(declare-datatypes ((List!28085 0))(
  ( (Nil!28082) (Cons!28081 (h!29290 tuple2!20846) (t!41577 List!28085)) )
))
(declare-datatypes ((ListLongMap!18731 0))(
  ( (ListLongMap!18732 (toList!9381 List!28085)) )
))
(declare-fun lt!567477 () ListLongMap!18731)

(declare-fun lt!567478 () ListLongMap!18731)

(assert (=> b!1255256 (= lt!567477 lt!567478)))

(declare-fun defaultEntry!922 () Int)

(declare-datatypes ((Unit!41736 0))(
  ( (Unit!41737) )
))
(declare-fun lt!567479 () Unit!41736)

(declare-fun minValueAfter!43 () V!47947)

(declare-fun zeroValue!871 () V!47947)

(declare-fun minValueBefore!43 () V!47947)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1060 (array!81507 array!81509 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47947 V!47947 V!47947 V!47947 (_ BitVec 32) Int) Unit!41736)

(assert (=> b!1255256 (= lt!567479 (lemmaNoChangeToArrayThenSameMapNoExtras!1060 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5742 (array!81507 array!81509 (_ BitVec 32) (_ BitVec 32) V!47947 V!47947 (_ BitVec 32) Int) ListLongMap!18731)

(assert (=> b!1255256 (= lt!567478 (getCurrentListMapNoExtraKeys!5742 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1255256 (= lt!567477 (getCurrentListMapNoExtraKeys!5742 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun mapNonEmpty!49687 () Bool)

(declare-fun mapRes!49687 () Bool)

(declare-fun tp!94616 () Bool)

(assert (=> mapNonEmpty!49687 (= mapRes!49687 (and tp!94616 e!713430))))

(declare-fun mapKey!49687 () (_ BitVec 32))

(declare-fun mapValue!49687 () ValueCell!15205)

(declare-fun mapRest!49687 () (Array (_ BitVec 32) ValueCell!15205))

(assert (=> mapNonEmpty!49687 (= (arr!39310 _values!914) (store mapRest!49687 mapKey!49687 mapValue!49687))))

(declare-fun b!1255257 () Bool)

(declare-fun res!836954 () Bool)

(assert (=> b!1255257 (=> (not res!836954) (not e!713431))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81507 (_ BitVec 32)) Bool)

(assert (=> b!1255257 (= res!836954 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1255258 () Bool)

(declare-fun res!836953 () Bool)

(assert (=> b!1255258 (=> (not res!836953) (not e!713431))))

(declare-datatypes ((List!28086 0))(
  ( (Nil!28083) (Cons!28082 (h!29291 (_ BitVec 64)) (t!41578 List!28086)) )
))
(declare-fun arrayNoDuplicates!0 (array!81507 (_ BitVec 32) List!28086) Bool)

(assert (=> b!1255258 (= res!836953 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28083))))

(declare-fun mapIsEmpty!49687 () Bool)

(assert (=> mapIsEmpty!49687 mapRes!49687))

(declare-fun b!1255259 () Bool)

(assert (=> b!1255259 (= e!713432 (and e!713433 mapRes!49687))))

(declare-fun condMapEmpty!49687 () Bool)

(declare-fun mapDefault!49687 () ValueCell!15205)

