; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105758 () Bool)

(assert start!105758)

(declare-fun b_free!27307 () Bool)

(declare-fun b_next!27307 () Bool)

(assert (=> start!105758 (= b_free!27307 (not b_next!27307))))

(declare-fun tp!95448 () Bool)

(declare-fun b_and!45201 () Bool)

(assert (=> start!105758 (= tp!95448 b_and!45201)))

(declare-fun b!1259267 () Bool)

(declare-fun res!839356 () Bool)

(declare-fun e!716403 () Bool)

(assert (=> b!1259267 (=> (not res!839356) (not e!716403))))

(declare-datatypes ((array!82031 0))(
  ( (array!82032 (arr!39566 (Array (_ BitVec 32) (_ BitVec 64))) (size!40103 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!82031)

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82031 (_ BitVec 32)) Bool)

(assert (=> b!1259267 (= res!839356 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1259268 () Bool)

(declare-fun e!716405 () Bool)

(assert (=> b!1259268 (= e!716405 true)))

(declare-datatypes ((V!48311 0))(
  ( (V!48312 (val!16167 Int)) )
))
(declare-datatypes ((tuple2!21056 0))(
  ( (tuple2!21057 (_1!10538 (_ BitVec 64)) (_2!10538 V!48311)) )
))
(declare-datatypes ((List!28284 0))(
  ( (Nil!28281) (Cons!28280 (h!29489 tuple2!21056) (t!41786 List!28284)) )
))
(declare-datatypes ((ListLongMap!18941 0))(
  ( (ListLongMap!18942 (toList!9486 List!28284)) )
))
(declare-fun lt!569930 () ListLongMap!18941)

(declare-fun lt!569929 () ListLongMap!18941)

(declare-fun -!2119 (ListLongMap!18941 (_ BitVec 64)) ListLongMap!18941)

(assert (=> b!1259268 (= lt!569930 (-!2119 lt!569929 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!569928 () ListLongMap!18941)

(declare-fun lt!569931 () ListLongMap!18941)

(assert (=> b!1259268 (= (-!2119 lt!569928 #b1000000000000000000000000000000000000000000000000000000000000000) lt!569931)))

(declare-datatypes ((Unit!41941 0))(
  ( (Unit!41942) )
))
(declare-fun lt!569932 () Unit!41941)

(declare-fun minValueBefore!43 () V!48311)

(declare-fun addThenRemoveForNewKeyIsSame!344 (ListLongMap!18941 (_ BitVec 64) V!48311) Unit!41941)

(assert (=> b!1259268 (= lt!569932 (addThenRemoveForNewKeyIsSame!344 lt!569931 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))

(declare-fun e!716400 () Bool)

(assert (=> b!1259268 e!716400))

(declare-fun res!839354 () Bool)

(assert (=> b!1259268 (=> (not res!839354) (not e!716400))))

(assert (=> b!1259268 (= res!839354 (= lt!569929 lt!569928))))

(declare-fun +!4184 (ListLongMap!18941 tuple2!21056) ListLongMap!18941)

(assert (=> b!1259268 (= lt!569928 (+!4184 lt!569931 (tuple2!21057 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43)))))

(declare-fun lt!569924 () ListLongMap!18941)

(declare-fun lt!569923 () tuple2!21056)

(assert (=> b!1259268 (= lt!569931 (+!4184 lt!569924 lt!569923))))

(declare-fun zeroValue!871 () V!48311)

(assert (=> b!1259268 (= lt!569923 (tuple2!21057 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!871))))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!48311)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((ValueCell!15341 0))(
  ( (ValueCellFull!15341 (v!18869 V!48311)) (EmptyCell!15341) )
))
(declare-datatypes ((array!82033 0))(
  ( (array!82034 (arr!39567 (Array (_ BitVec 32) ValueCell!15341)) (size!40104 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!82033)

(declare-fun lt!569926 () ListLongMap!18941)

(declare-fun getCurrentListMap!4623 (array!82031 array!82033 (_ BitVec 32) (_ BitVec 32) V!48311 V!48311 (_ BitVec 32) Int) ListLongMap!18941)

(assert (=> b!1259268 (= lt!569926 (getCurrentListMap!4623 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(assert (=> b!1259268 (= lt!569929 (getCurrentListMap!4623 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun mapNonEmpty!50110 () Bool)

(declare-fun mapRes!50110 () Bool)

(declare-fun tp!95447 () Bool)

(declare-fun e!716402 () Bool)

(assert (=> mapNonEmpty!50110 (= mapRes!50110 (and tp!95447 e!716402))))

(declare-fun mapValue!50110 () ValueCell!15341)

(declare-fun mapRest!50110 () (Array (_ BitVec 32) ValueCell!15341))

(declare-fun mapKey!50110 () (_ BitVec 32))

(assert (=> mapNonEmpty!50110 (= (arr!39567 _values!914) (store mapRest!50110 mapKey!50110 mapValue!50110))))

(declare-fun b!1259269 () Bool)

(declare-fun res!839357 () Bool)

(assert (=> b!1259269 (=> (not res!839357) (not e!716403))))

(declare-datatypes ((List!28285 0))(
  ( (Nil!28282) (Cons!28281 (h!29490 (_ BitVec 64)) (t!41787 List!28285)) )
))
(declare-fun arrayNoDuplicates!0 (array!82031 (_ BitVec 32) List!28285) Bool)

(assert (=> b!1259269 (= res!839357 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28282))))

(declare-fun res!839353 () Bool)

(assert (=> start!105758 (=> (not res!839353) (not e!716403))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105758 (= res!839353 (validMask!0 mask!1466))))

(assert (=> start!105758 e!716403))

(assert (=> start!105758 true))

(assert (=> start!105758 tp!95448))

(declare-fun tp_is_empty!32209 () Bool)

(assert (=> start!105758 tp_is_empty!32209))

(declare-fun array_inv!30081 (array!82031) Bool)

(assert (=> start!105758 (array_inv!30081 _keys!1118)))

(declare-fun e!716401 () Bool)

(declare-fun array_inv!30082 (array!82033) Bool)

(assert (=> start!105758 (and (array_inv!30082 _values!914) e!716401)))

(declare-fun b!1259270 () Bool)

(assert (=> b!1259270 (= e!716403 (not e!716405))))

(declare-fun res!839355 () Bool)

(assert (=> b!1259270 (=> res!839355 e!716405)))

(assert (=> b!1259270 (= res!839355 (or (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun lt!569927 () ListLongMap!18941)

(assert (=> b!1259270 (= lt!569924 lt!569927)))

(declare-fun lt!569925 () Unit!41941)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1152 (array!82031 array!82033 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48311 V!48311 V!48311 V!48311 (_ BitVec 32) Int) Unit!41941)

(assert (=> b!1259270 (= lt!569925 (lemmaNoChangeToArrayThenSameMapNoExtras!1152 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5834 (array!82031 array!82033 (_ BitVec 32) (_ BitVec 32) V!48311 V!48311 (_ BitVec 32) Int) ListLongMap!18941)

(assert (=> b!1259270 (= lt!569927 (getCurrentListMapNoExtraKeys!5834 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1259270 (= lt!569924 (getCurrentListMapNoExtraKeys!5834 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1259271 () Bool)

(assert (=> b!1259271 (= e!716400 (= lt!569926 (+!4184 lt!569927 lt!569923)))))

(declare-fun mapIsEmpty!50110 () Bool)

(assert (=> mapIsEmpty!50110 mapRes!50110))

(declare-fun b!1259272 () Bool)

(assert (=> b!1259272 (= e!716402 tp_is_empty!32209)))

(declare-fun b!1259273 () Bool)

(declare-fun res!839358 () Bool)

(assert (=> b!1259273 (=> (not res!839358) (not e!716403))))

(assert (=> b!1259273 (= res!839358 (and (= (size!40104 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!40103 _keys!1118) (size!40104 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1259274 () Bool)

(declare-fun e!716404 () Bool)

(assert (=> b!1259274 (= e!716401 (and e!716404 mapRes!50110))))

(declare-fun condMapEmpty!50110 () Bool)

(declare-fun mapDefault!50110 () ValueCell!15341)

