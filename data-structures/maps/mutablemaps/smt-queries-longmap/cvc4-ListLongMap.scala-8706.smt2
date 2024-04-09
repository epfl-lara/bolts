; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105726 () Bool)

(assert start!105726)

(declare-fun b_free!27275 () Bool)

(declare-fun b_next!27275 () Bool)

(assert (=> start!105726 (= b_free!27275 (not b_next!27275))))

(declare-fun tp!95351 () Bool)

(declare-fun b_and!45169 () Bool)

(assert (=> start!105726 (= tp!95351 b_and!45169)))

(declare-fun mapNonEmpty!50062 () Bool)

(declare-fun mapRes!50062 () Bool)

(declare-fun tp!95352 () Bool)

(declare-fun e!716067 () Bool)

(assert (=> mapNonEmpty!50062 (= mapRes!50062 (and tp!95352 e!716067))))

(declare-datatypes ((V!48267 0))(
  ( (V!48268 (val!16151 Int)) )
))
(declare-datatypes ((ValueCell!15325 0))(
  ( (ValueCellFull!15325 (v!18853 V!48267)) (EmptyCell!15325) )
))
(declare-fun mapRest!50062 () (Array (_ BitVec 32) ValueCell!15325))

(declare-fun mapValue!50062 () ValueCell!15325)

(declare-datatypes ((array!81971 0))(
  ( (array!81972 (arr!39536 (Array (_ BitVec 32) ValueCell!15325)) (size!40073 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81971)

(declare-fun mapKey!50062 () (_ BitVec 32))

(assert (=> mapNonEmpty!50062 (= (arr!39536 _values!914) (store mapRest!50062 mapKey!50062 mapValue!50062))))

(declare-fun b!1258835 () Bool)

(declare-fun res!839066 () Bool)

(declare-fun e!716066 () Bool)

(assert (=> b!1258835 (=> (not res!839066) (not e!716066))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((array!81973 0))(
  ( (array!81974 (arr!39537 (Array (_ BitVec 32) (_ BitVec 64))) (size!40074 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81973)

(assert (=> b!1258835 (= res!839066 (and (= (size!40073 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!40074 _keys!1118) (size!40073 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1258836 () Bool)

(declare-datatypes ((tuple2!21030 0))(
  ( (tuple2!21031 (_1!10525 (_ BitVec 64)) (_2!10525 V!48267)) )
))
(declare-datatypes ((List!28260 0))(
  ( (Nil!28257) (Cons!28256 (h!29465 tuple2!21030) (t!41762 List!28260)) )
))
(declare-datatypes ((ListLongMap!18915 0))(
  ( (ListLongMap!18916 (toList!9473 List!28260)) )
))
(declare-fun lt!569445 () ListLongMap!18915)

(declare-fun lt!569452 () tuple2!21030)

(declare-fun lt!569448 () ListLongMap!18915)

(declare-fun e!716063 () Bool)

(declare-fun +!4172 (ListLongMap!18915 tuple2!21030) ListLongMap!18915)

(assert (=> b!1258836 (= e!716063 (= lt!569448 (+!4172 lt!569445 lt!569452)))))

(declare-fun mapIsEmpty!50062 () Bool)

(assert (=> mapIsEmpty!50062 mapRes!50062))

(declare-fun b!1258837 () Bool)

(declare-fun e!716065 () Bool)

(assert (=> b!1258837 (= e!716066 (not e!716065))))

(declare-fun res!839070 () Bool)

(assert (=> b!1258837 (=> res!839070 e!716065)))

(assert (=> b!1258837 (= res!839070 (or (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun lt!569450 () ListLongMap!18915)

(assert (=> b!1258837 (= lt!569450 lt!569445)))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!48267)

(declare-fun zeroValue!871 () V!48267)

(declare-datatypes ((Unit!41917 0))(
  ( (Unit!41918) )
))
(declare-fun lt!569447 () Unit!41917)

(declare-fun minValueBefore!43 () V!48267)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1141 (array!81973 array!81971 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48267 V!48267 V!48267 V!48267 (_ BitVec 32) Int) Unit!41917)

(assert (=> b!1258837 (= lt!569447 (lemmaNoChangeToArrayThenSameMapNoExtras!1141 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5823 (array!81973 array!81971 (_ BitVec 32) (_ BitVec 32) V!48267 V!48267 (_ BitVec 32) Int) ListLongMap!18915)

(assert (=> b!1258837 (= lt!569445 (getCurrentListMapNoExtraKeys!5823 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1258837 (= lt!569450 (getCurrentListMapNoExtraKeys!5823 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1258838 () Bool)

(assert (=> b!1258838 (= e!716065 true)))

(declare-fun lt!569449 () Bool)

(declare-fun lt!569451 () ListLongMap!18915)

(declare-fun contains!7595 (ListLongMap!18915 (_ BitVec 64)) Bool)

(assert (=> b!1258838 (= lt!569449 (contains!7595 lt!569451 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1258838 e!716063))

(declare-fun res!839065 () Bool)

(assert (=> b!1258838 (=> (not res!839065) (not e!716063))))

(declare-fun lt!569446 () ListLongMap!18915)

(assert (=> b!1258838 (= res!839065 (= lt!569446 (+!4172 lt!569451 (tuple2!21031 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))))

(assert (=> b!1258838 (= lt!569451 (+!4172 lt!569450 lt!569452))))

(assert (=> b!1258838 (= lt!569452 (tuple2!21031 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!871))))

(declare-fun getCurrentListMap!4612 (array!81973 array!81971 (_ BitVec 32) (_ BitVec 32) V!48267 V!48267 (_ BitVec 32) Int) ListLongMap!18915)

(assert (=> b!1258838 (= lt!569448 (getCurrentListMap!4612 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1258838 (= lt!569446 (getCurrentListMap!4612 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1258839 () Bool)

(declare-fun res!839068 () Bool)

(assert (=> b!1258839 (=> (not res!839068) (not e!716066))))

(declare-datatypes ((List!28261 0))(
  ( (Nil!28258) (Cons!28257 (h!29466 (_ BitVec 64)) (t!41763 List!28261)) )
))
(declare-fun arrayNoDuplicates!0 (array!81973 (_ BitVec 32) List!28261) Bool)

(assert (=> b!1258839 (= res!839068 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28258))))

(declare-fun b!1258841 () Bool)

(declare-fun e!716064 () Bool)

(declare-fun tp_is_empty!32177 () Bool)

(assert (=> b!1258841 (= e!716064 tp_is_empty!32177)))

(declare-fun b!1258842 () Bool)

(assert (=> b!1258842 (= e!716067 tp_is_empty!32177)))

(declare-fun b!1258843 () Bool)

(declare-fun e!716068 () Bool)

(assert (=> b!1258843 (= e!716068 (and e!716064 mapRes!50062))))

(declare-fun condMapEmpty!50062 () Bool)

(declare-fun mapDefault!50062 () ValueCell!15325)

