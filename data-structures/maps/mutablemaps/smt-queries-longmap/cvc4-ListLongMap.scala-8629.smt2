; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105102 () Bool)

(assert start!105102)

(declare-fun b_free!26813 () Bool)

(declare-fun b_next!26813 () Bool)

(assert (=> start!105102 (= b_free!26813 (not b_next!26813))))

(declare-fun tp!93939 () Bool)

(declare-fun b_and!44619 () Bool)

(assert (=> start!105102 (= tp!93939 b_and!44619)))

(declare-fun mapNonEmpty!49342 () Bool)

(declare-fun mapRes!49342 () Bool)

(declare-fun tp!93938 () Bool)

(declare-fun e!711118 () Bool)

(assert (=> mapNonEmpty!49342 (= mapRes!49342 (and tp!93938 e!711118))))

(declare-datatypes ((V!47651 0))(
  ( (V!47652 (val!15920 Int)) )
))
(declare-datatypes ((ValueCell!15094 0))(
  ( (ValueCellFull!15094 (v!18618 V!47651)) (EmptyCell!15094) )
))
(declare-fun mapValue!49342 () ValueCell!15094)

(declare-fun mapRest!49342 () (Array (_ BitVec 32) ValueCell!15094))

(declare-datatypes ((array!81073 0))(
  ( (array!81074 (arr!39096 (Array (_ BitVec 32) ValueCell!15094)) (size!39633 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81073)

(declare-fun mapKey!49342 () (_ BitVec 32))

(assert (=> mapNonEmpty!49342 (= (arr!39096 _values!914) (store mapRest!49342 mapKey!49342 mapValue!49342))))

(declare-fun b!1252060 () Bool)

(declare-fun e!711120 () Bool)

(declare-fun tp_is_empty!31715 () Bool)

(assert (=> b!1252060 (= e!711120 tp_is_empty!31715)))

(declare-fun b!1252061 () Bool)

(declare-fun res!835109 () Bool)

(declare-fun e!711116 () Bool)

(assert (=> b!1252061 (=> (not res!835109) (not e!711116))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((array!81075 0))(
  ( (array!81076 (arr!39097 (Array (_ BitVec 32) (_ BitVec 64))) (size!39634 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81075)

(assert (=> b!1252061 (= res!835109 (and (= (size!39633 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39634 _keys!1118) (size!39633 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1252062 () Bool)

(assert (=> b!1252062 (= e!711116 (not true))))

(declare-datatypes ((tuple2!20674 0))(
  ( (tuple2!20675 (_1!10347 (_ BitVec 64)) (_2!10347 V!47651)) )
))
(declare-datatypes ((List!27926 0))(
  ( (Nil!27923) (Cons!27922 (h!29131 tuple2!20674) (t!41410 List!27926)) )
))
(declare-datatypes ((ListLongMap!18559 0))(
  ( (ListLongMap!18560 (toList!9295 List!27926)) )
))
(declare-fun lt!565138 () ListLongMap!18559)

(declare-fun lt!565140 () ListLongMap!18559)

(assert (=> b!1252062 (= lt!565138 lt!565140)))

(declare-fun defaultEntry!922 () Int)

(declare-fun zeroValue!871 () V!47651)

(declare-fun minValueBefore!43 () V!47651)

(declare-datatypes ((Unit!41567 0))(
  ( (Unit!41568) )
))
(declare-fun lt!565139 () Unit!41567)

(declare-fun minValueAfter!43 () V!47651)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!986 (array!81075 array!81073 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47651 V!47651 V!47651 V!47651 (_ BitVec 32) Int) Unit!41567)

(assert (=> b!1252062 (= lt!565139 (lemmaNoChangeToArrayThenSameMapNoExtras!986 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5668 (array!81075 array!81073 (_ BitVec 32) (_ BitVec 32) V!47651 V!47651 (_ BitVec 32) Int) ListLongMap!18559)

(assert (=> b!1252062 (= lt!565140 (getCurrentListMapNoExtraKeys!5668 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1252062 (= lt!565138 (getCurrentListMapNoExtraKeys!5668 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1252063 () Bool)

(declare-fun res!835110 () Bool)

(assert (=> b!1252063 (=> (not res!835110) (not e!711116))))

(declare-datatypes ((List!27927 0))(
  ( (Nil!27924) (Cons!27923 (h!29132 (_ BitVec 64)) (t!41411 List!27927)) )
))
(declare-fun arrayNoDuplicates!0 (array!81075 (_ BitVec 32) List!27927) Bool)

(assert (=> b!1252063 (= res!835110 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27924))))

(declare-fun b!1252064 () Bool)

(declare-fun res!835107 () Bool)

(assert (=> b!1252064 (=> (not res!835107) (not e!711116))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81075 (_ BitVec 32)) Bool)

(assert (=> b!1252064 (= res!835107 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1252065 () Bool)

(assert (=> b!1252065 (= e!711118 tp_is_empty!31715)))

(declare-fun res!835108 () Bool)

(assert (=> start!105102 (=> (not res!835108) (not e!711116))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105102 (= res!835108 (validMask!0 mask!1466))))

(assert (=> start!105102 e!711116))

(assert (=> start!105102 true))

(assert (=> start!105102 tp!93939))

(assert (=> start!105102 tp_is_empty!31715))

(declare-fun array_inv!29749 (array!81075) Bool)

(assert (=> start!105102 (array_inv!29749 _keys!1118)))

(declare-fun e!711119 () Bool)

(declare-fun array_inv!29750 (array!81073) Bool)

(assert (=> start!105102 (and (array_inv!29750 _values!914) e!711119)))

(declare-fun b!1252066 () Bool)

(assert (=> b!1252066 (= e!711119 (and e!711120 mapRes!49342))))

(declare-fun condMapEmpty!49342 () Bool)

(declare-fun mapDefault!49342 () ValueCell!15094)

