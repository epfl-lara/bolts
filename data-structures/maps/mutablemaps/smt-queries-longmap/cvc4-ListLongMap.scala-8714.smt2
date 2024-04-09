; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105774 () Bool)

(assert start!105774)

(declare-fun b_free!27323 () Bool)

(declare-fun b_next!27323 () Bool)

(assert (=> start!105774 (= b_free!27323 (not b_next!27323))))

(declare-fun tp!95496 () Bool)

(declare-fun b_and!45217 () Bool)

(assert (=> start!105774 (= tp!95496 b_and!45217)))

(declare-fun mapIsEmpty!50134 () Bool)

(declare-fun mapRes!50134 () Bool)

(assert (=> mapIsEmpty!50134 mapRes!50134))

(declare-fun res!839501 () Bool)

(declare-fun e!716570 () Bool)

(assert (=> start!105774 (=> (not res!839501) (not e!716570))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105774 (= res!839501 (validMask!0 mask!1466))))

(assert (=> start!105774 e!716570))

(assert (=> start!105774 true))

(assert (=> start!105774 tp!95496))

(declare-fun tp_is_empty!32225 () Bool)

(assert (=> start!105774 tp_is_empty!32225))

(declare-datatypes ((array!82063 0))(
  ( (array!82064 (arr!39582 (Array (_ BitVec 32) (_ BitVec 64))) (size!40119 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!82063)

(declare-fun array_inv!30091 (array!82063) Bool)

(assert (=> start!105774 (array_inv!30091 _keys!1118)))

(declare-datatypes ((V!48331 0))(
  ( (V!48332 (val!16175 Int)) )
))
(declare-datatypes ((ValueCell!15349 0))(
  ( (ValueCellFull!15349 (v!18877 V!48331)) (EmptyCell!15349) )
))
(declare-datatypes ((array!82065 0))(
  ( (array!82066 (arr!39583 (Array (_ BitVec 32) ValueCell!15349)) (size!40120 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!82065)

(declare-fun e!716569 () Bool)

(declare-fun array_inv!30092 (array!82065) Bool)

(assert (=> start!105774 (and (array_inv!30092 _values!914) e!716569)))

(declare-fun b!1259483 () Bool)

(declare-fun e!716567 () Bool)

(assert (=> b!1259483 (= e!716567 true)))

(declare-datatypes ((tuple2!21072 0))(
  ( (tuple2!21073 (_1!10546 (_ BitVec 64)) (_2!10546 V!48331)) )
))
(declare-datatypes ((List!28299 0))(
  ( (Nil!28296) (Cons!28295 (h!29504 tuple2!21072) (t!41801 List!28299)) )
))
(declare-datatypes ((ListLongMap!18957 0))(
  ( (ListLongMap!18958 (toList!9494 List!28299)) )
))
(declare-fun lt!570167 () ListLongMap!18957)

(declare-fun lt!570168 () ListLongMap!18957)

(declare-fun -!2125 (ListLongMap!18957 (_ BitVec 64)) ListLongMap!18957)

(assert (=> b!1259483 (= lt!570167 (-!2125 lt!570168 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!570166 () ListLongMap!18957)

(declare-fun lt!570171 () ListLongMap!18957)

(assert (=> b!1259483 (= (-!2125 lt!570166 #b1000000000000000000000000000000000000000000000000000000000000000) lt!570171)))

(declare-datatypes ((Unit!41955 0))(
  ( (Unit!41956) )
))
(declare-fun lt!570172 () Unit!41955)

(declare-fun minValueBefore!43 () V!48331)

(declare-fun addThenRemoveForNewKeyIsSame!350 (ListLongMap!18957 (_ BitVec 64) V!48331) Unit!41955)

(assert (=> b!1259483 (= lt!570172 (addThenRemoveForNewKeyIsSame!350 lt!570171 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))

(declare-fun e!716573 () Bool)

(assert (=> b!1259483 e!716573))

(declare-fun res!839497 () Bool)

(assert (=> b!1259483 (=> (not res!839497) (not e!716573))))

(assert (=> b!1259483 (= res!839497 (= lt!570168 lt!570166))))

(declare-fun +!4191 (ListLongMap!18957 tuple2!21072) ListLongMap!18957)

(assert (=> b!1259483 (= lt!570166 (+!4191 lt!570171 (tuple2!21073 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43)))))

(declare-fun lt!570169 () ListLongMap!18957)

(declare-fun lt!570164 () tuple2!21072)

(assert (=> b!1259483 (= lt!570171 (+!4191 lt!570169 lt!570164))))

(declare-fun zeroValue!871 () V!48331)

(assert (=> b!1259483 (= lt!570164 (tuple2!21073 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!871))))

(declare-fun minValueAfter!43 () V!48331)

(declare-fun lt!570170 () ListLongMap!18957)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun defaultEntry!922 () Int)

(declare-fun getCurrentListMap!4629 (array!82063 array!82065 (_ BitVec 32) (_ BitVec 32) V!48331 V!48331 (_ BitVec 32) Int) ListLongMap!18957)

(assert (=> b!1259483 (= lt!570170 (getCurrentListMap!4629 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(assert (=> b!1259483 (= lt!570168 (getCurrentListMap!4629 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1259484 () Bool)

(declare-fun e!716568 () Bool)

(assert (=> b!1259484 (= e!716568 tp_is_empty!32225)))

(declare-fun b!1259485 () Bool)

(declare-fun res!839498 () Bool)

(assert (=> b!1259485 (=> (not res!839498) (not e!716570))))

(assert (=> b!1259485 (= res!839498 (and (= (size!40120 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!40119 _keys!1118) (size!40120 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun lt!570165 () ListLongMap!18957)

(declare-fun b!1259486 () Bool)

(assert (=> b!1259486 (= e!716573 (= lt!570170 (+!4191 lt!570165 lt!570164)))))

(declare-fun b!1259487 () Bool)

(declare-fun e!716572 () Bool)

(assert (=> b!1259487 (= e!716569 (and e!716572 mapRes!50134))))

(declare-fun condMapEmpty!50134 () Bool)

(declare-fun mapDefault!50134 () ValueCell!15349)

