; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105008 () Bool)

(assert start!105008)

(declare-fun b_free!26741 () Bool)

(declare-fun b_next!26741 () Bool)

(assert (=> start!105008 (= b_free!26741 (not b_next!26741))))

(declare-fun tp!93720 () Bool)

(declare-fun b_and!44537 () Bool)

(assert (=> start!105008 (= tp!93720 b_and!44537)))

(declare-fun b!1251055 () Bool)

(declare-fun res!834522 () Bool)

(declare-fun e!710389 () Bool)

(assert (=> b!1251055 (=> (not res!834522) (not e!710389))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((array!80933 0))(
  ( (array!80934 (arr!39027 (Array (_ BitVec 32) (_ BitVec 64))) (size!39564 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80933)

(declare-datatypes ((V!47555 0))(
  ( (V!47556 (val!15884 Int)) )
))
(declare-datatypes ((ValueCell!15058 0))(
  ( (ValueCellFull!15058 (v!18581 V!47555)) (EmptyCell!15058) )
))
(declare-datatypes ((array!80935 0))(
  ( (array!80936 (arr!39028 (Array (_ BitVec 32) ValueCell!15058)) (size!39565 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80935)

(assert (=> b!1251055 (= res!834522 (and (= (size!39565 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39564 _keys!1118) (size!39565 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1251056 () Bool)

(declare-fun e!710386 () Bool)

(declare-fun e!710388 () Bool)

(assert (=> b!1251056 (= e!710386 e!710388)))

(declare-fun res!834526 () Bool)

(assert (=> b!1251056 (=> res!834526 e!710388)))

(declare-datatypes ((tuple2!20622 0))(
  ( (tuple2!20623 (_1!10321 (_ BitVec 64)) (_2!10321 V!47555)) )
))
(declare-datatypes ((List!27876 0))(
  ( (Nil!27873) (Cons!27872 (h!29081 tuple2!20622) (t!41358 List!27876)) )
))
(declare-datatypes ((ListLongMap!18507 0))(
  ( (ListLongMap!18508 (toList!9269 List!27876)) )
))
(declare-fun lt!564599 () ListLongMap!18507)

(declare-fun contains!7520 (ListLongMap!18507 (_ BitVec 64)) Bool)

(assert (=> b!1251056 (= res!834526 (contains!7520 lt!564599 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun defaultEntry!922 () Int)

(declare-fun zeroValue!871 () V!47555)

(declare-fun minValueBefore!43 () V!47555)

(declare-fun getCurrentListMap!4485 (array!80933 array!80935 (_ BitVec 32) (_ BitVec 32) V!47555 V!47555 (_ BitVec 32) Int) ListLongMap!18507)

(assert (=> b!1251056 (= lt!564599 (getCurrentListMap!4485 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1251057 () Bool)

(assert (=> b!1251057 (= e!710389 (not e!710386))))

(declare-fun res!834527 () Bool)

(assert (=> b!1251057 (=> res!834527 e!710386)))

(assert (=> b!1251057 (= res!834527 (or (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!564600 () ListLongMap!18507)

(declare-fun lt!564598 () ListLongMap!18507)

(assert (=> b!1251057 (= lt!564600 lt!564598)))

(declare-fun minValueAfter!43 () V!47555)

(declare-datatypes ((Unit!41515 0))(
  ( (Unit!41516) )
))
(declare-fun lt!564602 () Unit!41515)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!963 (array!80933 array!80935 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47555 V!47555 V!47555 V!47555 (_ BitVec 32) Int) Unit!41515)

(assert (=> b!1251057 (= lt!564602 (lemmaNoChangeToArrayThenSameMapNoExtras!963 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5645 (array!80933 array!80935 (_ BitVec 32) (_ BitVec 32) V!47555 V!47555 (_ BitVec 32) Int) ListLongMap!18507)

(assert (=> b!1251057 (= lt!564598 (getCurrentListMapNoExtraKeys!5645 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1251057 (= lt!564600 (getCurrentListMapNoExtraKeys!5645 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1251058 () Bool)

(declare-fun e!710390 () Bool)

(declare-fun e!710385 () Bool)

(declare-fun mapRes!49231 () Bool)

(assert (=> b!1251058 (= e!710390 (and e!710385 mapRes!49231))))

(declare-fun condMapEmpty!49231 () Bool)

(declare-fun mapDefault!49231 () ValueCell!15058)

