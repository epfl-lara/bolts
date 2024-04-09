; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105704 () Bool)

(assert start!105704)

(declare-fun b_free!27269 () Bool)

(declare-fun b_next!27269 () Bool)

(assert (=> start!105704 (= b_free!27269 (not b_next!27269))))

(declare-fun tp!95331 () Bool)

(declare-fun b_and!45153 () Bool)

(assert (=> start!105704 (= tp!95331 b_and!45153)))

(declare-fun mapNonEmpty!50050 () Bool)

(declare-fun mapRes!50050 () Bool)

(declare-fun tp!95330 () Bool)

(declare-fun e!715910 () Bool)

(assert (=> mapNonEmpty!50050 (= mapRes!50050 (and tp!95330 e!715910))))

(declare-datatypes ((V!48259 0))(
  ( (V!48260 (val!16148 Int)) )
))
(declare-datatypes ((ValueCell!15322 0))(
  ( (ValueCellFull!15322 (v!18850 V!48259)) (EmptyCell!15322) )
))
(declare-fun mapRest!50050 () (Array (_ BitVec 32) ValueCell!15322))

(declare-fun mapValue!50050 () ValueCell!15322)

(declare-datatypes ((array!81957 0))(
  ( (array!81958 (arr!39530 (Array (_ BitVec 32) ValueCell!15322)) (size!40067 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81957)

(declare-fun mapKey!50050 () (_ BitVec 32))

(assert (=> mapNonEmpty!50050 (= (arr!39530 _values!914) (store mapRest!50050 mapKey!50050 mapValue!50050))))

(declare-fun b!1258607 () Bool)

(declare-fun tp_is_empty!32171 () Bool)

(assert (=> b!1258607 (= e!715910 tp_is_empty!32171)))

(declare-fun b!1258608 () Bool)

(declare-fun e!715912 () Bool)

(declare-datatypes ((array!81959 0))(
  ( (array!81960 (arr!39531 (Array (_ BitVec 32) (_ BitVec 64))) (size!40068 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81959)

(assert (=> b!1258608 (= e!715912 (bvsle #b00000000000000000000000000000000 (size!40068 _keys!1118)))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun defaultEntry!922 () Int)

(declare-datatypes ((tuple2!21024 0))(
  ( (tuple2!21025 (_1!10522 (_ BitVec 64)) (_2!10522 V!48259)) )
))
(declare-datatypes ((List!28256 0))(
  ( (Nil!28253) (Cons!28252 (h!29461 tuple2!21024) (t!41756 List!28256)) )
))
(declare-datatypes ((ListLongMap!18909 0))(
  ( (ListLongMap!18910 (toList!9470 List!28256)) )
))
(declare-fun lt!569274 () ListLongMap!18909)

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!48259)

(declare-fun minValueBefore!43 () V!48259)

(declare-fun getCurrentListMap!4609 (array!81959 array!81957 (_ BitVec 32) (_ BitVec 32) V!48259 V!48259 (_ BitVec 32) Int) ListLongMap!18909)

(assert (=> b!1258608 (= lt!569274 (getCurrentListMap!4609 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun res!838954 () Bool)

(declare-fun e!715911 () Bool)

(assert (=> start!105704 (=> (not res!838954) (not e!715911))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105704 (= res!838954 (validMask!0 mask!1466))))

(assert (=> start!105704 e!715911))

(assert (=> start!105704 true))

(assert (=> start!105704 tp!95331))

(assert (=> start!105704 tp_is_empty!32171))

(declare-fun array_inv!30057 (array!81959) Bool)

(assert (=> start!105704 (array_inv!30057 _keys!1118)))

(declare-fun e!715909 () Bool)

(declare-fun array_inv!30058 (array!81957) Bool)

(assert (=> start!105704 (and (array_inv!30058 _values!914) e!715909)))

(declare-fun b!1258609 () Bool)

(assert (=> b!1258609 (= e!715911 (not e!715912))))

(declare-fun res!838955 () Bool)

(assert (=> b!1258609 (=> res!838955 e!715912)))

(assert (=> b!1258609 (= res!838955 (or (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun lt!569271 () ListLongMap!18909)

(declare-fun lt!569272 () ListLongMap!18909)

(assert (=> b!1258609 (= lt!569271 lt!569272)))

(declare-fun minValueAfter!43 () V!48259)

(declare-datatypes ((Unit!41910 0))(
  ( (Unit!41911) )
))
(declare-fun lt!569273 () Unit!41910)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1138 (array!81959 array!81957 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48259 V!48259 V!48259 V!48259 (_ BitVec 32) Int) Unit!41910)

(assert (=> b!1258609 (= lt!569273 (lemmaNoChangeToArrayThenSameMapNoExtras!1138 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5820 (array!81959 array!81957 (_ BitVec 32) (_ BitVec 32) V!48259 V!48259 (_ BitVec 32) Int) ListLongMap!18909)

(assert (=> b!1258609 (= lt!569272 (getCurrentListMapNoExtraKeys!5820 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1258609 (= lt!569271 (getCurrentListMapNoExtraKeys!5820 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1258610 () Bool)

(declare-fun e!715907 () Bool)

(assert (=> b!1258610 (= e!715907 tp_is_empty!32171)))

(declare-fun b!1258611 () Bool)

(declare-fun res!838957 () Bool)

(assert (=> b!1258611 (=> (not res!838957) (not e!715911))))

(assert (=> b!1258611 (= res!838957 (and (= (size!40067 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!40068 _keys!1118) (size!40067 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1258612 () Bool)

(declare-fun res!838958 () Bool)

(assert (=> b!1258612 (=> (not res!838958) (not e!715911))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81959 (_ BitVec 32)) Bool)

(assert (=> b!1258612 (= res!838958 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1258613 () Bool)

(assert (=> b!1258613 (= e!715909 (and e!715907 mapRes!50050))))

(declare-fun condMapEmpty!50050 () Bool)

(declare-fun mapDefault!50050 () ValueCell!15322)

