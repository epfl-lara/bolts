; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105934 () Bool)

(assert start!105934)

(declare-fun b_free!27439 () Bool)

(declare-fun b_next!27439 () Bool)

(assert (=> start!105934 (= b_free!27439 (not b_next!27439))))

(declare-fun tp!95850 () Bool)

(declare-fun b_and!45357 () Bool)

(assert (=> start!105934 (= tp!95850 b_and!45357)))

(declare-fun b!1261259 () Bool)

(declare-fun res!840549 () Bool)

(declare-fun e!717864 () Bool)

(assert (=> b!1261259 (=> (not res!840549) (not e!717864))))

(declare-datatypes ((array!82281 0))(
  ( (array!82282 (arr!39689 (Array (_ BitVec 32) (_ BitVec 64))) (size!40226 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!82281)

(declare-datatypes ((List!28373 0))(
  ( (Nil!28370) (Cons!28369 (h!29578 (_ BitVec 64)) (t!41879 List!28373)) )
))
(declare-fun arrayNoDuplicates!0 (array!82281 (_ BitVec 32) List!28373) Bool)

(assert (=> b!1261259 (= res!840549 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28370))))

(declare-fun b!1261260 () Bool)

(declare-fun e!717863 () Bool)

(declare-fun tp_is_empty!32341 () Bool)

(assert (=> b!1261260 (= e!717863 tp_is_empty!32341)))

(declare-fun b!1261262 () Bool)

(declare-fun e!717861 () Bool)

(assert (=> b!1261262 (= e!717861 tp_is_empty!32341)))

(declare-fun mapIsEmpty!50314 () Bool)

(declare-fun mapRes!50314 () Bool)

(assert (=> mapIsEmpty!50314 mapRes!50314))

(declare-fun b!1261263 () Bool)

(assert (=> b!1261263 (= e!717864 false)))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun defaultEntry!922 () Int)

(declare-datatypes ((V!48487 0))(
  ( (V!48488 (val!16233 Int)) )
))
(declare-fun minValueAfter!43 () V!48487)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!48487)

(declare-datatypes ((ValueCell!15407 0))(
  ( (ValueCellFull!15407 (v!18937 V!48487)) (EmptyCell!15407) )
))
(declare-datatypes ((array!82283 0))(
  ( (array!82284 (arr!39690 (Array (_ BitVec 32) ValueCell!15407)) (size!40227 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!82283)

(declare-datatypes ((tuple2!21152 0))(
  ( (tuple2!21153 (_1!10586 (_ BitVec 64)) (_2!10586 V!48487)) )
))
(declare-datatypes ((List!28374 0))(
  ( (Nil!28371) (Cons!28370 (h!29579 tuple2!21152) (t!41880 List!28374)) )
))
(declare-datatypes ((ListLongMap!19037 0))(
  ( (ListLongMap!19038 (toList!9534 List!28374)) )
))
(declare-fun lt!571540 () ListLongMap!19037)

(declare-fun getCurrentListMapNoExtraKeys!5875 (array!82281 array!82283 (_ BitVec 32) (_ BitVec 32) V!48487 V!48487 (_ BitVec 32) Int) ListLongMap!19037)

(assert (=> b!1261263 (= lt!571540 (getCurrentListMapNoExtraKeys!5875 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun lt!571541 () ListLongMap!19037)

(declare-fun minValueBefore!43 () V!48487)

(assert (=> b!1261263 (= lt!571541 (getCurrentListMapNoExtraKeys!5875 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1261264 () Bool)

(declare-fun e!717862 () Bool)

(assert (=> b!1261264 (= e!717862 (and e!717861 mapRes!50314))))

(declare-fun condMapEmpty!50314 () Bool)

(declare-fun mapDefault!50314 () ValueCell!15407)

