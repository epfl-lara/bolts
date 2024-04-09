; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105722 () Bool)

(assert start!105722)

(declare-fun b_free!27271 () Bool)

(declare-fun b_next!27271 () Bool)

(assert (=> start!105722 (= b_free!27271 (not b_next!27271))))

(declare-fun tp!95340 () Bool)

(declare-fun b_and!45165 () Bool)

(assert (=> start!105722 (= tp!95340 b_and!45165)))

(declare-fun b!1258781 () Bool)

(declare-fun e!716026 () Bool)

(declare-fun e!716023 () Bool)

(assert (=> b!1258781 (= e!716026 (not e!716023))))

(declare-fun res!839034 () Bool)

(assert (=> b!1258781 (=> res!839034 e!716023)))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(assert (=> b!1258781 (= res!839034 (or (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!48263 0))(
  ( (V!48264 (val!16149 Int)) )
))
(declare-datatypes ((tuple2!21026 0))(
  ( (tuple2!21027 (_1!10523 (_ BitVec 64)) (_2!10523 V!48263)) )
))
(declare-datatypes ((List!28257 0))(
  ( (Nil!28254) (Cons!28253 (h!29462 tuple2!21026) (t!41759 List!28257)) )
))
(declare-datatypes ((ListLongMap!18911 0))(
  ( (ListLongMap!18912 (toList!9471 List!28257)) )
))
(declare-fun lt!569403 () ListLongMap!18911)

(declare-fun lt!569401 () ListLongMap!18911)

(assert (=> b!1258781 (= lt!569403 lt!569401)))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!48263)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!48263)

(declare-datatypes ((array!81963 0))(
  ( (array!81964 (arr!39532 (Array (_ BitVec 32) (_ BitVec 64))) (size!40069 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81963)

(declare-datatypes ((ValueCell!15323 0))(
  ( (ValueCellFull!15323 (v!18851 V!48263)) (EmptyCell!15323) )
))
(declare-datatypes ((array!81965 0))(
  ( (array!81966 (arr!39533 (Array (_ BitVec 32) ValueCell!15323)) (size!40070 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81965)

(declare-fun minValueBefore!43 () V!48263)

(declare-datatypes ((Unit!41913 0))(
  ( (Unit!41914) )
))
(declare-fun lt!569404 () Unit!41913)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1139 (array!81963 array!81965 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48263 V!48263 V!48263 V!48263 (_ BitVec 32) Int) Unit!41913)

(assert (=> b!1258781 (= lt!569404 (lemmaNoChangeToArrayThenSameMapNoExtras!1139 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5821 (array!81963 array!81965 (_ BitVec 32) (_ BitVec 32) V!48263 V!48263 (_ BitVec 32) Int) ListLongMap!18911)

(assert (=> b!1258781 (= lt!569401 (getCurrentListMapNoExtraKeys!5821 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1258781 (= lt!569403 (getCurrentListMapNoExtraKeys!5821 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1258782 () Bool)

(declare-fun e!716024 () Bool)

(declare-fun tp_is_empty!32173 () Bool)

(assert (=> b!1258782 (= e!716024 tp_is_empty!32173)))

(declare-fun b!1258783 () Bool)

(assert (=> b!1258783 (= e!716023 true)))

(declare-fun lt!569402 () Bool)

(declare-fun lt!569400 () ListLongMap!18911)

(declare-fun contains!7593 (ListLongMap!18911 (_ BitVec 64)) Bool)

(assert (=> b!1258783 (= lt!569402 (contains!7593 lt!569400 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!716025 () Bool)

(assert (=> b!1258783 e!716025))

(declare-fun res!839031 () Bool)

(assert (=> b!1258783 (=> (not res!839031) (not e!716025))))

(declare-fun lt!569399 () ListLongMap!18911)

(declare-fun +!4170 (ListLongMap!18911 tuple2!21026) ListLongMap!18911)

(assert (=> b!1258783 (= res!839031 (= lt!569399 (+!4170 lt!569400 (tuple2!21027 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))))

(declare-fun lt!569398 () tuple2!21026)

(assert (=> b!1258783 (= lt!569400 (+!4170 lt!569403 lt!569398))))

(assert (=> b!1258783 (= lt!569398 (tuple2!21027 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!871))))

(declare-fun lt!569397 () ListLongMap!18911)

(declare-fun getCurrentListMap!4610 (array!81963 array!81965 (_ BitVec 32) (_ BitVec 32) V!48263 V!48263 (_ BitVec 32) Int) ListLongMap!18911)

(assert (=> b!1258783 (= lt!569397 (getCurrentListMap!4610 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1258783 (= lt!569399 (getCurrentListMap!4610 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun mapNonEmpty!50056 () Bool)

(declare-fun mapRes!50056 () Bool)

(declare-fun tp!95339 () Bool)

(declare-fun e!716027 () Bool)

(assert (=> mapNonEmpty!50056 (= mapRes!50056 (and tp!95339 e!716027))))

(declare-fun mapRest!50056 () (Array (_ BitVec 32) ValueCell!15323))

(declare-fun mapKey!50056 () (_ BitVec 32))

(declare-fun mapValue!50056 () ValueCell!15323)

(assert (=> mapNonEmpty!50056 (= (arr!39533 _values!914) (store mapRest!50056 mapKey!50056 mapValue!50056))))

(declare-fun mapIsEmpty!50056 () Bool)

(assert (=> mapIsEmpty!50056 mapRes!50056))

(declare-fun b!1258784 () Bool)

(declare-fun e!716022 () Bool)

(assert (=> b!1258784 (= e!716022 (and e!716024 mapRes!50056))))

(declare-fun condMapEmpty!50056 () Bool)

(declare-fun mapDefault!50056 () ValueCell!15323)

