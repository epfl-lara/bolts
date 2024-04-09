; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105004 () Bool)

(assert start!105004)

(declare-fun b_free!26737 () Bool)

(declare-fun b_next!26737 () Bool)

(assert (=> start!105004 (= b_free!26737 (not b_next!26737))))

(declare-fun tp!93708 () Bool)

(declare-fun b_and!44533 () Bool)

(assert (=> start!105004 (= tp!93708 b_and!44533)))

(declare-fun b!1251001 () Bool)

(declare-fun e!710348 () Bool)

(declare-fun e!710347 () Bool)

(assert (=> b!1251001 (= e!710348 e!710347)))

(declare-fun res!834486 () Bool)

(assert (=> b!1251001 (=> res!834486 e!710347)))

(declare-datatypes ((V!47551 0))(
  ( (V!47552 (val!15882 Int)) )
))
(declare-datatypes ((tuple2!20618 0))(
  ( (tuple2!20619 (_1!10319 (_ BitVec 64)) (_2!10319 V!47551)) )
))
(declare-datatypes ((List!27872 0))(
  ( (Nil!27869) (Cons!27868 (h!29077 tuple2!20618) (t!41354 List!27872)) )
))
(declare-datatypes ((ListLongMap!18503 0))(
  ( (ListLongMap!18504 (toList!9267 List!27872)) )
))
(declare-fun lt!564571 () ListLongMap!18503)

(declare-fun contains!7518 (ListLongMap!18503 (_ BitVec 64)) Bool)

(assert (=> b!1251001 (= res!834486 (contains!7518 lt!564571 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun defaultEntry!922 () Int)

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!47551)

(declare-datatypes ((array!80925 0))(
  ( (array!80926 (arr!39023 (Array (_ BitVec 32) (_ BitVec 64))) (size!39560 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80925)

(declare-datatypes ((ValueCell!15056 0))(
  ( (ValueCellFull!15056 (v!18579 V!47551)) (EmptyCell!15056) )
))
(declare-datatypes ((array!80927 0))(
  ( (array!80928 (arr!39024 (Array (_ BitVec 32) ValueCell!15056)) (size!39561 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80927)

(declare-fun minValueBefore!43 () V!47551)

(declare-fun getCurrentListMap!4483 (array!80925 array!80927 (_ BitVec 32) (_ BitVec 32) V!47551 V!47551 (_ BitVec 32) Int) ListLongMap!18503)

(assert (=> b!1251001 (= lt!564571 (getCurrentListMap!4483 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1251002 () Bool)

(declare-fun e!710344 () Bool)

(assert (=> b!1251002 (= e!710344 (not e!710348))))

(declare-fun res!834489 () Bool)

(assert (=> b!1251002 (=> res!834489 e!710348)))

(assert (=> b!1251002 (= res!834489 (or (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!564570 () ListLongMap!18503)

(declare-fun lt!564568 () ListLongMap!18503)

(assert (=> b!1251002 (= lt!564570 lt!564568)))

(declare-datatypes ((Unit!41511 0))(
  ( (Unit!41512) )
))
(declare-fun lt!564569 () Unit!41511)

(declare-fun minValueAfter!43 () V!47551)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!961 (array!80925 array!80927 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47551 V!47551 V!47551 V!47551 (_ BitVec 32) Int) Unit!41511)

(assert (=> b!1251002 (= lt!564569 (lemmaNoChangeToArrayThenSameMapNoExtras!961 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5643 (array!80925 array!80927 (_ BitVec 32) (_ BitVec 32) V!47551 V!47551 (_ BitVec 32) Int) ListLongMap!18503)

(assert (=> b!1251002 (= lt!564568 (getCurrentListMapNoExtraKeys!5643 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1251002 (= lt!564570 (getCurrentListMapNoExtraKeys!5643 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1251003 () Bool)

(assert (=> b!1251003 (= e!710347 true)))

(declare-fun -!2029 (ListLongMap!18503 (_ BitVec 64)) ListLongMap!18503)

(assert (=> b!1251003 (= (-!2029 lt!564571 #b1000000000000000000000000000000000000000000000000000000000000000) lt!564571)))

(declare-fun lt!564572 () Unit!41511)

(declare-fun removeNotPresentStillSame!96 (ListLongMap!18503 (_ BitVec 64)) Unit!41511)

(assert (=> b!1251003 (= lt!564572 (removeNotPresentStillSame!96 lt!564571 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1251004 () Bool)

(declare-fun e!710342 () Bool)

(declare-fun tp_is_empty!31639 () Bool)

(assert (=> b!1251004 (= e!710342 tp_is_empty!31639)))

(declare-fun b!1251005 () Bool)

(declare-fun res!834488 () Bool)

(assert (=> b!1251005 (=> (not res!834488) (not e!710344))))

(assert (=> b!1251005 (= res!834488 (and (= (size!39561 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39560 _keys!1118) (size!39561 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1251006 () Bool)

(declare-fun res!834491 () Bool)

(assert (=> b!1251006 (=> (not res!834491) (not e!710344))))

(declare-datatypes ((List!27873 0))(
  ( (Nil!27870) (Cons!27869 (h!29078 (_ BitVec 64)) (t!41355 List!27873)) )
))
(declare-fun arrayNoDuplicates!0 (array!80925 (_ BitVec 32) List!27873) Bool)

(assert (=> b!1251006 (= res!834491 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27870))))

(declare-fun b!1251007 () Bool)

(declare-fun e!710345 () Bool)

(assert (=> b!1251007 (= e!710345 tp_is_empty!31639)))

(declare-fun b!1251008 () Bool)

(declare-fun e!710343 () Bool)

(declare-fun mapRes!49225 () Bool)

(assert (=> b!1251008 (= e!710343 (and e!710342 mapRes!49225))))

(declare-fun condMapEmpty!49225 () Bool)

(declare-fun mapDefault!49225 () ValueCell!15056)

