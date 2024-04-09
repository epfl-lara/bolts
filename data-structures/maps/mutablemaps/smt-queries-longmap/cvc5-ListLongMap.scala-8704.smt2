; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105694 () Bool)

(assert start!105694)

(declare-fun b_free!27259 () Bool)

(declare-fun b_next!27259 () Bool)

(assert (=> start!105694 (= b_free!27259 (not b_next!27259))))

(declare-fun tp!95300 () Bool)

(declare-fun b_and!45143 () Bool)

(assert (=> start!105694 (= tp!95300 b_and!45143)))

(declare-fun b!1258487 () Bool)

(declare-fun e!715817 () Bool)

(declare-fun tp_is_empty!32161 () Bool)

(assert (=> b!1258487 (= e!715817 tp_is_empty!32161)))

(declare-fun b!1258488 () Bool)

(declare-fun res!838882 () Bool)

(declare-fun e!715819 () Bool)

(assert (=> b!1258488 (=> (not res!838882) (not e!715819))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((array!81937 0))(
  ( (array!81938 (arr!39520 (Array (_ BitVec 32) (_ BitVec 64))) (size!40057 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81937)

(declare-datatypes ((V!48247 0))(
  ( (V!48248 (val!16143 Int)) )
))
(declare-datatypes ((ValueCell!15317 0))(
  ( (ValueCellFull!15317 (v!18845 V!48247)) (EmptyCell!15317) )
))
(declare-datatypes ((array!81939 0))(
  ( (array!81940 (arr!39521 (Array (_ BitVec 32) ValueCell!15317)) (size!40058 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81939)

(assert (=> b!1258488 (= res!838882 (and (= (size!40058 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!40057 _keys!1118) (size!40058 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1258489 () Bool)

(declare-fun res!838883 () Bool)

(assert (=> b!1258489 (=> (not res!838883) (not e!715819))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81937 (_ BitVec 32)) Bool)

(assert (=> b!1258489 (= res!838883 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1258490 () Bool)

(declare-fun res!838881 () Bool)

(assert (=> b!1258490 (=> (not res!838881) (not e!715819))))

(declare-datatypes ((List!28248 0))(
  ( (Nil!28245) (Cons!28244 (h!29453 (_ BitVec 64)) (t!41748 List!28248)) )
))
(declare-fun arrayNoDuplicates!0 (array!81937 (_ BitVec 32) List!28248) Bool)

(assert (=> b!1258490 (= res!838881 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28245))))

(declare-fun res!838879 () Bool)

(assert (=> start!105694 (=> (not res!838879) (not e!715819))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105694 (= res!838879 (validMask!0 mask!1466))))

(assert (=> start!105694 e!715819))

(assert (=> start!105694 true))

(assert (=> start!105694 tp!95300))

(assert (=> start!105694 tp_is_empty!32161))

(declare-fun array_inv!30049 (array!81937) Bool)

(assert (=> start!105694 (array_inv!30049 _keys!1118)))

(declare-fun e!715820 () Bool)

(declare-fun array_inv!30050 (array!81939) Bool)

(assert (=> start!105694 (and (array_inv!30050 _values!914) e!715820)))

(declare-fun mapIsEmpty!50035 () Bool)

(declare-fun mapRes!50035 () Bool)

(assert (=> mapIsEmpty!50035 mapRes!50035))

(declare-fun b!1258491 () Bool)

(declare-fun e!715818 () Bool)

(assert (=> b!1258491 (= e!715818 tp_is_empty!32161)))

(declare-fun b!1258492 () Bool)

(declare-fun e!715821 () Bool)

(assert (=> b!1258492 (= e!715821 true)))

(declare-fun defaultEntry!922 () Int)

(declare-datatypes ((tuple2!21016 0))(
  ( (tuple2!21017 (_1!10518 (_ BitVec 64)) (_2!10518 V!48247)) )
))
(declare-datatypes ((List!28249 0))(
  ( (Nil!28246) (Cons!28245 (h!29454 tuple2!21016) (t!41749 List!28249)) )
))
(declare-datatypes ((ListLongMap!18901 0))(
  ( (ListLongMap!18902 (toList!9466 List!28249)) )
))
(declare-fun lt!569212 () ListLongMap!18901)

(declare-fun zeroValue!871 () V!48247)

(declare-fun minValueBefore!43 () V!48247)

(declare-fun getCurrentListMap!4605 (array!81937 array!81939 (_ BitVec 32) (_ BitVec 32) V!48247 V!48247 (_ BitVec 32) Int) ListLongMap!18901)

(assert (=> b!1258492 (= lt!569212 (getCurrentListMap!4605 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1258493 () Bool)

(assert (=> b!1258493 (= e!715819 (not e!715821))))

(declare-fun res!838880 () Bool)

(assert (=> b!1258493 (=> res!838880 e!715821)))

(assert (=> b!1258493 (= res!838880 (or (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun lt!569213 () ListLongMap!18901)

(declare-fun lt!569214 () ListLongMap!18901)

(assert (=> b!1258493 (= lt!569213 lt!569214)))

(declare-fun minValueAfter!43 () V!48247)

(declare-datatypes ((Unit!41902 0))(
  ( (Unit!41903) )
))
(declare-fun lt!569211 () Unit!41902)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1134 (array!81937 array!81939 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48247 V!48247 V!48247 V!48247 (_ BitVec 32) Int) Unit!41902)

(assert (=> b!1258493 (= lt!569211 (lemmaNoChangeToArrayThenSameMapNoExtras!1134 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5816 (array!81937 array!81939 (_ BitVec 32) (_ BitVec 32) V!48247 V!48247 (_ BitVec 32) Int) ListLongMap!18901)

(assert (=> b!1258493 (= lt!569214 (getCurrentListMapNoExtraKeys!5816 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1258493 (= lt!569213 (getCurrentListMapNoExtraKeys!5816 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun mapNonEmpty!50035 () Bool)

(declare-fun tp!95301 () Bool)

(assert (=> mapNonEmpty!50035 (= mapRes!50035 (and tp!95301 e!715817))))

(declare-fun mapValue!50035 () ValueCell!15317)

(declare-fun mapKey!50035 () (_ BitVec 32))

(declare-fun mapRest!50035 () (Array (_ BitVec 32) ValueCell!15317))

(assert (=> mapNonEmpty!50035 (= (arr!39521 _values!914) (store mapRest!50035 mapKey!50035 mapValue!50035))))

(declare-fun b!1258494 () Bool)

(assert (=> b!1258494 (= e!715820 (and e!715818 mapRes!50035))))

(declare-fun condMapEmpty!50035 () Bool)

(declare-fun mapDefault!50035 () ValueCell!15317)

