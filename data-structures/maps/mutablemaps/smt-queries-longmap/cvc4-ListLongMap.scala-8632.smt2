; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105134 () Bool)

(assert start!105134)

(declare-fun b_free!26831 () Bool)

(declare-fun b_next!26831 () Bool)

(assert (=> start!105134 (= b_free!26831 (not b_next!26831))))

(declare-fun tp!93995 () Bool)

(declare-fun b_and!44645 () Bool)

(assert (=> start!105134 (= tp!93995 b_and!44645)))

(declare-fun b!1252342 () Bool)

(declare-fun e!711314 () Bool)

(declare-fun tp_is_empty!31733 () Bool)

(assert (=> b!1252342 (= e!711314 tp_is_empty!31733)))

(declare-fun res!835255 () Bool)

(declare-fun e!711315 () Bool)

(assert (=> start!105134 (=> (not res!835255) (not e!711315))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105134 (= res!835255 (validMask!0 mask!1466))))

(assert (=> start!105134 e!711315))

(assert (=> start!105134 true))

(assert (=> start!105134 tp!93995))

(assert (=> start!105134 tp_is_empty!31733))

(declare-datatypes ((array!81109 0))(
  ( (array!81110 (arr!39113 (Array (_ BitVec 32) (_ BitVec 64))) (size!39650 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81109)

(declare-fun array_inv!29763 (array!81109) Bool)

(assert (=> start!105134 (array_inv!29763 _keys!1118)))

(declare-datatypes ((V!47675 0))(
  ( (V!47676 (val!15929 Int)) )
))
(declare-datatypes ((ValueCell!15103 0))(
  ( (ValueCellFull!15103 (v!18627 V!47675)) (EmptyCell!15103) )
))
(declare-datatypes ((array!81111 0))(
  ( (array!81112 (arr!39114 (Array (_ BitVec 32) ValueCell!15103)) (size!39651 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81111)

(declare-fun e!711318 () Bool)

(declare-fun array_inv!29764 (array!81111) Bool)

(assert (=> start!105134 (and (array_inv!29764 _values!914) e!711318)))

(declare-fun mapIsEmpty!49372 () Bool)

(declare-fun mapRes!49372 () Bool)

(assert (=> mapIsEmpty!49372 mapRes!49372))

(declare-fun b!1252343 () Bool)

(declare-fun res!835254 () Bool)

(assert (=> b!1252343 (=> (not res!835254) (not e!711315))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81109 (_ BitVec 32)) Bool)

(assert (=> b!1252343 (= res!835254 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1252344 () Bool)

(declare-fun res!835258 () Bool)

(assert (=> b!1252344 (=> (not res!835258) (not e!711315))))

(declare-datatypes ((List!27938 0))(
  ( (Nil!27935) (Cons!27934 (h!29143 (_ BitVec 64)) (t!41424 List!27938)) )
))
(declare-fun arrayNoDuplicates!0 (array!81109 (_ BitVec 32) List!27938) Bool)

(assert (=> b!1252344 (= res!835258 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27935))))

(declare-fun b!1252345 () Bool)

(declare-fun e!711317 () Bool)

(assert (=> b!1252345 (= e!711317 tp_is_empty!31733)))

(declare-fun mapNonEmpty!49372 () Bool)

(declare-fun tp!93996 () Bool)

(assert (=> mapNonEmpty!49372 (= mapRes!49372 (and tp!93996 e!711314))))

(declare-fun mapKey!49372 () (_ BitVec 32))

(declare-fun mapRest!49372 () (Array (_ BitVec 32) ValueCell!15103))

(declare-fun mapValue!49372 () ValueCell!15103)

(assert (=> mapNonEmpty!49372 (= (arr!39114 _values!914) (store mapRest!49372 mapKey!49372 mapValue!49372))))

(declare-fun b!1252346 () Bool)

(declare-fun e!711316 () Bool)

(assert (=> b!1252346 (= e!711316 true)))

(declare-fun defaultEntry!922 () Int)

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!47675)

(declare-fun minValueBefore!43 () V!47675)

(declare-datatypes ((tuple2!20688 0))(
  ( (tuple2!20689 (_1!10354 (_ BitVec 64)) (_2!10354 V!47675)) )
))
(declare-datatypes ((List!27939 0))(
  ( (Nil!27936) (Cons!27935 (h!29144 tuple2!20688) (t!41425 List!27939)) )
))
(declare-datatypes ((ListLongMap!18573 0))(
  ( (ListLongMap!18574 (toList!9302 List!27939)) )
))
(declare-fun lt!565268 () ListLongMap!18573)

(declare-fun getCurrentListMap!4499 (array!81109 array!81111 (_ BitVec 32) (_ BitVec 32) V!47675 V!47675 (_ BitVec 32) Int) ListLongMap!18573)

(assert (=> b!1252346 (= lt!565268 (getCurrentListMap!4499 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1252347 () Bool)

(declare-fun res!835257 () Bool)

(assert (=> b!1252347 (=> (not res!835257) (not e!711315))))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(assert (=> b!1252347 (= res!835257 (and (= (size!39651 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39650 _keys!1118) (size!39651 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1252348 () Bool)

(assert (=> b!1252348 (= e!711315 (not e!711316))))

(declare-fun res!835256 () Bool)

(assert (=> b!1252348 (=> res!835256 e!711316)))

(assert (=> b!1252348 (= res!835256 (or (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun lt!565269 () ListLongMap!18573)

(declare-fun lt!565267 () ListLongMap!18573)

(assert (=> b!1252348 (= lt!565269 lt!565267)))

(declare-fun minValueAfter!43 () V!47675)

(declare-datatypes ((Unit!41581 0))(
  ( (Unit!41582) )
))
(declare-fun lt!565270 () Unit!41581)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!993 (array!81109 array!81111 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47675 V!47675 V!47675 V!47675 (_ BitVec 32) Int) Unit!41581)

(assert (=> b!1252348 (= lt!565270 (lemmaNoChangeToArrayThenSameMapNoExtras!993 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5675 (array!81109 array!81111 (_ BitVec 32) (_ BitVec 32) V!47675 V!47675 (_ BitVec 32) Int) ListLongMap!18573)

(assert (=> b!1252348 (= lt!565267 (getCurrentListMapNoExtraKeys!5675 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1252348 (= lt!565269 (getCurrentListMapNoExtraKeys!5675 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1252349 () Bool)

(assert (=> b!1252349 (= e!711318 (and e!711317 mapRes!49372))))

(declare-fun condMapEmpty!49372 () Bool)

(declare-fun mapDefault!49372 () ValueCell!15103)

