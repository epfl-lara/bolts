; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105776 () Bool)

(assert start!105776)

(declare-fun b_free!27325 () Bool)

(declare-fun b_next!27325 () Bool)

(assert (=> start!105776 (= b_free!27325 (not b_next!27325))))

(declare-fun tp!95502 () Bool)

(declare-fun b_and!45219 () Bool)

(assert (=> start!105776 (= tp!95502 b_and!45219)))

(declare-fun b!1259512 () Bool)

(declare-fun res!839523 () Bool)

(declare-fun e!716591 () Bool)

(assert (=> b!1259512 (=> (not res!839523) (not e!716591))))

(declare-datatypes ((array!82067 0))(
  ( (array!82068 (arr!39584 (Array (_ BitVec 32) (_ BitVec 64))) (size!40121 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!82067)

(declare-datatypes ((List!28300 0))(
  ( (Nil!28297) (Cons!28296 (h!29505 (_ BitVec 64)) (t!41802 List!28300)) )
))
(declare-fun arrayNoDuplicates!0 (array!82067 (_ BitVec 32) List!28300) Bool)

(assert (=> b!1259512 (= res!839523 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28297))))

(declare-fun b!1259513 () Bool)

(declare-fun e!716590 () Bool)

(assert (=> b!1259513 (= e!716591 (not e!716590))))

(declare-fun res!839520 () Bool)

(assert (=> b!1259513 (=> res!839520 e!716590)))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(assert (=> b!1259513 (= res!839520 (or (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!48335 0))(
  ( (V!48336 (val!16176 Int)) )
))
(declare-datatypes ((tuple2!21074 0))(
  ( (tuple2!21075 (_1!10547 (_ BitVec 64)) (_2!10547 V!48335)) )
))
(declare-datatypes ((List!28301 0))(
  ( (Nil!28298) (Cons!28297 (h!29506 tuple2!21074) (t!41803 List!28301)) )
))
(declare-datatypes ((ListLongMap!18959 0))(
  ( (ListLongMap!18960 (toList!9495 List!28301)) )
))
(declare-fun lt!570191 () ListLongMap!18959)

(declare-fun lt!570193 () ListLongMap!18959)

(assert (=> b!1259513 (= lt!570191 lt!570193)))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun defaultEntry!922 () Int)

(declare-datatypes ((Unit!41957 0))(
  ( (Unit!41958) )
))
(declare-fun lt!570199 () Unit!41957)

(declare-fun minValueAfter!43 () V!48335)

(declare-fun zeroValue!871 () V!48335)

(declare-datatypes ((ValueCell!15350 0))(
  ( (ValueCellFull!15350 (v!18878 V!48335)) (EmptyCell!15350) )
))
(declare-datatypes ((array!82069 0))(
  ( (array!82070 (arr!39585 (Array (_ BitVec 32) ValueCell!15350)) (size!40122 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!82069)

(declare-fun minValueBefore!43 () V!48335)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1159 (array!82067 array!82069 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48335 V!48335 V!48335 V!48335 (_ BitVec 32) Int) Unit!41957)

(assert (=> b!1259513 (= lt!570199 (lemmaNoChangeToArrayThenSameMapNoExtras!1159 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5841 (array!82067 array!82069 (_ BitVec 32) (_ BitVec 32) V!48335 V!48335 (_ BitVec 32) Int) ListLongMap!18959)

(assert (=> b!1259513 (= lt!570193 (getCurrentListMapNoExtraKeys!5841 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1259513 (= lt!570191 (getCurrentListMapNoExtraKeys!5841 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun mapIsEmpty!50137 () Bool)

(declare-fun mapRes!50137 () Bool)

(assert (=> mapIsEmpty!50137 mapRes!50137))

(declare-fun b!1259514 () Bool)

(declare-fun e!716597 () Bool)

(declare-fun lt!570194 () ListLongMap!18959)

(declare-fun lt!570197 () tuple2!21074)

(declare-fun +!4192 (ListLongMap!18959 tuple2!21074) ListLongMap!18959)

(assert (=> b!1259514 (= e!716597 (= lt!570194 (+!4192 lt!570193 lt!570197)))))

(declare-fun b!1259515 () Bool)

(declare-fun e!716592 () Bool)

(declare-fun tp_is_empty!32227 () Bool)

(assert (=> b!1259515 (= e!716592 tp_is_empty!32227)))

(declare-fun b!1259516 () Bool)

(declare-fun e!716596 () Bool)

(assert (=> b!1259516 (= e!716596 tp_is_empty!32227)))

(declare-fun b!1259517 () Bool)

(declare-fun res!839518 () Bool)

(assert (=> b!1259517 (=> (not res!839518) (not e!716591))))

(assert (=> b!1259517 (= res!839518 (and (= (size!40122 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!40121 _keys!1118) (size!40122 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!50137 () Bool)

(declare-fun tp!95501 () Bool)

(assert (=> mapNonEmpty!50137 (= mapRes!50137 (and tp!95501 e!716592))))

(declare-fun mapKey!50137 () (_ BitVec 32))

(declare-fun mapValue!50137 () ValueCell!15350)

(declare-fun mapRest!50137 () (Array (_ BitVec 32) ValueCell!15350))

(assert (=> mapNonEmpty!50137 (= (arr!39585 _values!914) (store mapRest!50137 mapKey!50137 mapValue!50137))))

(declare-fun b!1259519 () Bool)

(declare-fun e!716594 () Bool)

(assert (=> b!1259519 (= e!716594 (bvsle #b00000000000000000000000000000000 (size!40121 _keys!1118)))))

(declare-fun b!1259520 () Bool)

(declare-fun e!716595 () Bool)

(assert (=> b!1259520 (= e!716595 (and e!716596 mapRes!50137))))

(declare-fun condMapEmpty!50137 () Bool)

(declare-fun mapDefault!50137 () ValueCell!15350)

