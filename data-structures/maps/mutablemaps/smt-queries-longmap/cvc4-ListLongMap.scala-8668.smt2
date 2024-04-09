; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105410 () Bool)

(assert start!105410)

(declare-fun b_free!27047 () Bool)

(declare-fun b_next!27047 () Bool)

(assert (=> start!105410 (= b_free!27047 (not b_next!27047))))

(declare-fun tp!94652 () Bool)

(declare-fun b_and!44895 () Bool)

(assert (=> start!105410 (= tp!94652 b_and!44895)))

(declare-fun b!1255379 () Bool)

(declare-fun res!837028 () Bool)

(declare-fun e!713521 () Bool)

(assert (=> b!1255379 (=> (not res!837028) (not e!713521))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((array!81531 0))(
  ( (array!81532 (arr!39321 (Array (_ BitVec 32) (_ BitVec 64))) (size!39858 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81531)

(declare-datatypes ((V!47963 0))(
  ( (V!47964 (val!16037 Int)) )
))
(declare-datatypes ((ValueCell!15211 0))(
  ( (ValueCellFull!15211 (v!18737 V!47963)) (EmptyCell!15211) )
))
(declare-datatypes ((array!81533 0))(
  ( (array!81534 (arr!39322 (Array (_ BitVec 32) ValueCell!15211)) (size!39859 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81533)

(assert (=> b!1255379 (= res!837028 (and (= (size!39859 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39858 _keys!1118) (size!39859 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1255381 () Bool)

(declare-fun res!837027 () Bool)

(assert (=> b!1255381 (=> (not res!837027) (not e!713521))))

(declare-datatypes ((List!28093 0))(
  ( (Nil!28090) (Cons!28089 (h!29298 (_ BitVec 64)) (t!41585 List!28093)) )
))
(declare-fun arrayNoDuplicates!0 (array!81531 (_ BitVec 32) List!28093) Bool)

(assert (=> b!1255381 (= res!837027 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28090))))

(declare-fun b!1255382 () Bool)

(assert (=> b!1255382 (= e!713521 (not (or (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsle #b00000000000000000000000000000000 (size!39858 _keys!1118)))))))

(declare-datatypes ((tuple2!20854 0))(
  ( (tuple2!20855 (_1!10437 (_ BitVec 64)) (_2!10437 V!47963)) )
))
(declare-datatypes ((List!28094 0))(
  ( (Nil!28091) (Cons!28090 (h!29299 tuple2!20854) (t!41586 List!28094)) )
))
(declare-datatypes ((ListLongMap!18739 0))(
  ( (ListLongMap!18740 (toList!9385 List!28094)) )
))
(declare-fun lt!567531 () ListLongMap!18739)

(declare-fun lt!567532 () ListLongMap!18739)

(assert (=> b!1255382 (= lt!567531 lt!567532)))

(declare-datatypes ((Unit!41744 0))(
  ( (Unit!41745) )
))
(declare-fun lt!567533 () Unit!41744)

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!47963)

(declare-fun zeroValue!871 () V!47963)

(declare-fun minValueBefore!43 () V!47963)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1064 (array!81531 array!81533 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47963 V!47963 V!47963 V!47963 (_ BitVec 32) Int) Unit!41744)

(assert (=> b!1255382 (= lt!567533 (lemmaNoChangeToArrayThenSameMapNoExtras!1064 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5746 (array!81531 array!81533 (_ BitVec 32) (_ BitVec 32) V!47963 V!47963 (_ BitVec 32) Int) ListLongMap!18739)

(assert (=> b!1255382 (= lt!567532 (getCurrentListMapNoExtraKeys!5746 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1255382 (= lt!567531 (getCurrentListMapNoExtraKeys!5746 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun mapIsEmpty!49705 () Bool)

(declare-fun mapRes!49705 () Bool)

(assert (=> mapIsEmpty!49705 mapRes!49705))

(declare-fun res!837026 () Bool)

(assert (=> start!105410 (=> (not res!837026) (not e!713521))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105410 (= res!837026 (validMask!0 mask!1466))))

(assert (=> start!105410 e!713521))

(assert (=> start!105410 true))

(assert (=> start!105410 tp!94652))

(declare-fun tp_is_empty!31949 () Bool)

(assert (=> start!105410 tp_is_empty!31949))

(declare-fun array_inv!29909 (array!81531) Bool)

(assert (=> start!105410 (array_inv!29909 _keys!1118)))

(declare-fun e!713523 () Bool)

(declare-fun array_inv!29910 (array!81533) Bool)

(assert (=> start!105410 (and (array_inv!29910 _values!914) e!713523)))

(declare-fun b!1255380 () Bool)

(declare-fun res!837025 () Bool)

(assert (=> b!1255380 (=> (not res!837025) (not e!713521))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81531 (_ BitVec 32)) Bool)

(assert (=> b!1255380 (= res!837025 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1255383 () Bool)

(declare-fun e!713519 () Bool)

(assert (=> b!1255383 (= e!713519 tp_is_empty!31949)))

(declare-fun b!1255384 () Bool)

(declare-fun e!713522 () Bool)

(assert (=> b!1255384 (= e!713523 (and e!713522 mapRes!49705))))

(declare-fun condMapEmpty!49705 () Bool)

(declare-fun mapDefault!49705 () ValueCell!15211)

