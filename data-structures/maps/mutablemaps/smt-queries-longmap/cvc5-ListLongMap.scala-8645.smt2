; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105224 () Bool)

(assert start!105224)

(declare-fun b_free!26905 () Bool)

(declare-fun b_next!26905 () Bool)

(assert (=> start!105224 (= b_free!26905 (not b_next!26905))))

(declare-fun tp!94220 () Bool)

(declare-fun b_and!44729 () Bool)

(assert (=> start!105224 (= tp!94220 b_and!44729)))

(declare-fun b!1253387 () Bool)

(declare-fun e!712088 () Bool)

(declare-fun tp_is_empty!31807 () Bool)

(assert (=> b!1253387 (= e!712088 tp_is_empty!31807)))

(declare-fun res!835879 () Bool)

(declare-fun e!712085 () Bool)

(assert (=> start!105224 (=> (not res!835879) (not e!712085))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105224 (= res!835879 (validMask!0 mask!1466))))

(assert (=> start!105224 e!712085))

(assert (=> start!105224 true))

(assert (=> start!105224 tp!94220))

(assert (=> start!105224 tp_is_empty!31807))

(declare-datatypes ((array!81255 0))(
  ( (array!81256 (arr!39185 (Array (_ BitVec 32) (_ BitVec 64))) (size!39722 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81255)

(declare-fun array_inv!29813 (array!81255) Bool)

(assert (=> start!105224 (array_inv!29813 _keys!1118)))

(declare-datatypes ((V!47775 0))(
  ( (V!47776 (val!15966 Int)) )
))
(declare-datatypes ((ValueCell!15140 0))(
  ( (ValueCellFull!15140 (v!18664 V!47775)) (EmptyCell!15140) )
))
(declare-datatypes ((array!81257 0))(
  ( (array!81258 (arr!39186 (Array (_ BitVec 32) ValueCell!15140)) (size!39723 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81257)

(declare-fun e!712084 () Bool)

(declare-fun array_inv!29814 (array!81257) Bool)

(assert (=> start!105224 (and (array_inv!29814 _values!914) e!712084)))

(declare-fun b!1253388 () Bool)

(declare-fun e!712083 () Bool)

(assert (=> b!1253388 (= e!712083 tp_is_empty!31807)))

(declare-fun mapNonEmpty!49486 () Bool)

(declare-fun mapRes!49486 () Bool)

(declare-fun tp!94221 () Bool)

(assert (=> mapNonEmpty!49486 (= mapRes!49486 (and tp!94221 e!712088))))

(declare-fun mapRest!49486 () (Array (_ BitVec 32) ValueCell!15140))

(declare-fun mapKey!49486 () (_ BitVec 32))

(declare-fun mapValue!49486 () ValueCell!15140)

(assert (=> mapNonEmpty!49486 (= (arr!39186 _values!914) (store mapRest!49486 mapKey!49486 mapValue!49486))))

(declare-fun mapIsEmpty!49486 () Bool)

(assert (=> mapIsEmpty!49486 mapRes!49486))

(declare-fun b!1253389 () Bool)

(declare-fun res!835876 () Bool)

(assert (=> b!1253389 (=> (not res!835876) (not e!712085))))

(declare-datatypes ((List!27999 0))(
  ( (Nil!27996) (Cons!27995 (h!29204 (_ BitVec 64)) (t!41487 List!27999)) )
))
(declare-fun arrayNoDuplicates!0 (array!81255 (_ BitVec 32) List!27999) Bool)

(assert (=> b!1253389 (= res!835876 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27996))))

(declare-fun b!1253390 () Bool)

(declare-fun e!712087 () Bool)

(assert (=> b!1253390 (= e!712085 (not e!712087))))

(declare-fun res!835880 () Bool)

(assert (=> b!1253390 (=> res!835880 e!712087)))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(assert (=> b!1253390 (= res!835880 (or (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!20752 0))(
  ( (tuple2!20753 (_1!10386 (_ BitVec 64)) (_2!10386 V!47775)) )
))
(declare-datatypes ((List!28000 0))(
  ( (Nil!27997) (Cons!27996 (h!29205 tuple2!20752) (t!41488 List!28000)) )
))
(declare-datatypes ((ListLongMap!18637 0))(
  ( (ListLongMap!18638 (toList!9334 List!28000)) )
))
(declare-fun lt!565955 () ListLongMap!18637)

(declare-fun lt!565956 () ListLongMap!18637)

(assert (=> b!1253390 (= lt!565955 lt!565956)))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!47775)

(declare-datatypes ((Unit!41638 0))(
  ( (Unit!41639) )
))
(declare-fun lt!565957 () Unit!41638)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!47775)

(declare-fun minValueBefore!43 () V!47775)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1019 (array!81255 array!81257 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47775 V!47775 V!47775 V!47775 (_ BitVec 32) Int) Unit!41638)

(assert (=> b!1253390 (= lt!565957 (lemmaNoChangeToArrayThenSameMapNoExtras!1019 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5701 (array!81255 array!81257 (_ BitVec 32) (_ BitVec 32) V!47775 V!47775 (_ BitVec 32) Int) ListLongMap!18637)

(assert (=> b!1253390 (= lt!565956 (getCurrentListMapNoExtraKeys!5701 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1253390 (= lt!565955 (getCurrentListMapNoExtraKeys!5701 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1253391 () Bool)

(assert (=> b!1253391 (= e!712087 true)))

(declare-fun lt!565953 () ListLongMap!18637)

(declare-fun lt!565951 () ListLongMap!18637)

(declare-fun -!2047 (ListLongMap!18637 (_ BitVec 64)) ListLongMap!18637)

(assert (=> b!1253391 (= lt!565953 (-!2047 lt!565951 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!565958 () ListLongMap!18637)

(assert (=> b!1253391 (= (-!2047 lt!565958 #b1000000000000000000000000000000000000000000000000000000000000000) lt!565955)))

(declare-fun lt!565952 () Unit!41638)

(declare-fun addThenRemoveForNewKeyIsSame!307 (ListLongMap!18637 (_ BitVec 64) V!47775) Unit!41638)

(assert (=> b!1253391 (= lt!565952 (addThenRemoveForNewKeyIsSame!307 lt!565955 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))

(declare-fun lt!565954 () ListLongMap!18637)

(assert (=> b!1253391 (and (= lt!565951 lt!565958) (= lt!565954 lt!565956))))

(declare-fun +!4138 (ListLongMap!18637 tuple2!20752) ListLongMap!18637)

(assert (=> b!1253391 (= lt!565958 (+!4138 lt!565955 (tuple2!20753 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43)))))

(declare-fun getCurrentListMap!4525 (array!81255 array!81257 (_ BitVec 32) (_ BitVec 32) V!47775 V!47775 (_ BitVec 32) Int) ListLongMap!18637)

(assert (=> b!1253391 (= lt!565954 (getCurrentListMap!4525 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1253391 (= lt!565951 (getCurrentListMap!4525 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1253392 () Bool)

(declare-fun res!835878 () Bool)

(assert (=> b!1253392 (=> (not res!835878) (not e!712085))))

(assert (=> b!1253392 (= res!835878 (and (= (size!39723 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39722 _keys!1118) (size!39723 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1253393 () Bool)

(declare-fun res!835877 () Bool)

(assert (=> b!1253393 (=> (not res!835877) (not e!712085))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81255 (_ BitVec 32)) Bool)

(assert (=> b!1253393 (= res!835877 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1253394 () Bool)

(assert (=> b!1253394 (= e!712084 (and e!712083 mapRes!49486))))

(declare-fun condMapEmpty!49486 () Bool)

(declare-fun mapDefault!49486 () ValueCell!15140)

