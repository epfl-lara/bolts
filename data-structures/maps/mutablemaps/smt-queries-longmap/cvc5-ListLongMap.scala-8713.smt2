; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105764 () Bool)

(assert start!105764)

(declare-fun b_free!27313 () Bool)

(declare-fun b_next!27313 () Bool)

(assert (=> start!105764 (= b_free!27313 (not b_next!27313))))

(declare-fun tp!95466 () Bool)

(declare-fun b_and!45207 () Bool)

(assert (=> start!105764 (= tp!95466 b_and!45207)))

(declare-datatypes ((V!48319 0))(
  ( (V!48320 (val!16170 Int)) )
))
(declare-datatypes ((tuple2!21062 0))(
  ( (tuple2!21063 (_1!10541 (_ BitVec 64)) (_2!10541 V!48319)) )
))
(declare-fun lt!570021 () tuple2!21062)

(declare-fun b!1259348 () Bool)

(declare-fun e!716466 () Bool)

(declare-datatypes ((List!28290 0))(
  ( (Nil!28287) (Cons!28286 (h!29495 tuple2!21062) (t!41792 List!28290)) )
))
(declare-datatypes ((ListLongMap!18947 0))(
  ( (ListLongMap!18948 (toList!9489 List!28290)) )
))
(declare-fun lt!570020 () ListLongMap!18947)

(declare-fun lt!570022 () ListLongMap!18947)

(declare-fun +!4187 (ListLongMap!18947 tuple2!21062) ListLongMap!18947)

(assert (=> b!1259348 (= e!716466 (= lt!570022 (+!4187 lt!570020 lt!570021)))))

(declare-fun b!1259349 () Bool)

(declare-fun e!716462 () Bool)

(declare-fun tp_is_empty!32215 () Bool)

(assert (=> b!1259349 (= e!716462 tp_is_empty!32215)))

(declare-fun b!1259350 () Bool)

(declare-fun e!716468 () Bool)

(assert (=> b!1259350 (= e!716468 true)))

(declare-fun lt!570015 () ListLongMap!18947)

(declare-fun lt!570018 () ListLongMap!18947)

(declare-fun -!2122 (ListLongMap!18947 (_ BitVec 64)) ListLongMap!18947)

(assert (=> b!1259350 (= lt!570015 (-!2122 lt!570018 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!570016 () ListLongMap!18947)

(declare-fun lt!570014 () ListLongMap!18947)

(assert (=> b!1259350 (= (-!2122 lt!570016 #b1000000000000000000000000000000000000000000000000000000000000000) lt!570014)))

(declare-datatypes ((Unit!41947 0))(
  ( (Unit!41948) )
))
(declare-fun lt!570013 () Unit!41947)

(declare-fun minValueBefore!43 () V!48319)

(declare-fun addThenRemoveForNewKeyIsSame!347 (ListLongMap!18947 (_ BitVec 64) V!48319) Unit!41947)

(assert (=> b!1259350 (= lt!570013 (addThenRemoveForNewKeyIsSame!347 lt!570014 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))

(assert (=> b!1259350 e!716466))

(declare-fun res!839410 () Bool)

(assert (=> b!1259350 (=> (not res!839410) (not e!716466))))

(assert (=> b!1259350 (= res!839410 (= lt!570018 lt!570016))))

(assert (=> b!1259350 (= lt!570016 (+!4187 lt!570014 (tuple2!21063 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43)))))

(declare-fun lt!570017 () ListLongMap!18947)

(assert (=> b!1259350 (= lt!570014 (+!4187 lt!570017 lt!570021))))

(declare-fun zeroValue!871 () V!48319)

(assert (=> b!1259350 (= lt!570021 (tuple2!21063 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!871))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!48319)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((array!82043 0))(
  ( (array!82044 (arr!39572 (Array (_ BitVec 32) (_ BitVec 64))) (size!40109 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!82043)

(declare-datatypes ((ValueCell!15344 0))(
  ( (ValueCellFull!15344 (v!18872 V!48319)) (EmptyCell!15344) )
))
(declare-datatypes ((array!82045 0))(
  ( (array!82046 (arr!39573 (Array (_ BitVec 32) ValueCell!15344)) (size!40110 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!82045)

(declare-fun getCurrentListMap!4626 (array!82043 array!82045 (_ BitVec 32) (_ BitVec 32) V!48319 V!48319 (_ BitVec 32) Int) ListLongMap!18947)

(assert (=> b!1259350 (= lt!570022 (getCurrentListMap!4626 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(assert (=> b!1259350 (= lt!570018 (getCurrentListMap!4626 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1259351 () Bool)

(declare-fun res!839407 () Bool)

(declare-fun e!716465 () Bool)

(assert (=> b!1259351 (=> (not res!839407) (not e!716465))))

(declare-datatypes ((List!28291 0))(
  ( (Nil!28288) (Cons!28287 (h!29496 (_ BitVec 64)) (t!41793 List!28291)) )
))
(declare-fun arrayNoDuplicates!0 (array!82043 (_ BitVec 32) List!28291) Bool)

(assert (=> b!1259351 (= res!839407 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28288))))

(declare-fun b!1259352 () Bool)

(declare-fun res!839409 () Bool)

(assert (=> b!1259352 (=> (not res!839409) (not e!716465))))

(assert (=> b!1259352 (= res!839409 (and (= (size!40110 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!40109 _keys!1118) (size!40110 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1259353 () Bool)

(assert (=> b!1259353 (= e!716465 (not e!716468))))

(declare-fun res!839411 () Bool)

(assert (=> b!1259353 (=> res!839411 e!716468)))

(assert (=> b!1259353 (= res!839411 (or (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1259353 (= lt!570017 lt!570020)))

(declare-fun lt!570019 () Unit!41947)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1155 (array!82043 array!82045 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48319 V!48319 V!48319 V!48319 (_ BitVec 32) Int) Unit!41947)

(assert (=> b!1259353 (= lt!570019 (lemmaNoChangeToArrayThenSameMapNoExtras!1155 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5837 (array!82043 array!82045 (_ BitVec 32) (_ BitVec 32) V!48319 V!48319 (_ BitVec 32) Int) ListLongMap!18947)

(assert (=> b!1259353 (= lt!570020 (getCurrentListMapNoExtraKeys!5837 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1259353 (= lt!570017 (getCurrentListMapNoExtraKeys!5837 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1259354 () Bool)

(declare-fun e!716467 () Bool)

(assert (=> b!1259354 (= e!716467 tp_is_empty!32215)))

(declare-fun b!1259355 () Bool)

(declare-fun e!716463 () Bool)

(declare-fun mapRes!50119 () Bool)

(assert (=> b!1259355 (= e!716463 (and e!716467 mapRes!50119))))

(declare-fun condMapEmpty!50119 () Bool)

(declare-fun mapDefault!50119 () ValueCell!15344)

