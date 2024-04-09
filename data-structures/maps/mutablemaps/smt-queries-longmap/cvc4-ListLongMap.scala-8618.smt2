; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105014 () Bool)

(assert start!105014)

(declare-fun b_free!26747 () Bool)

(declare-fun b_next!26747 () Bool)

(assert (=> start!105014 (= b_free!26747 (not b_next!26747))))

(declare-fun tp!93738 () Bool)

(declare-fun b_and!44543 () Bool)

(assert (=> start!105014 (= tp!93738 b_and!44543)))

(declare-fun b!1251136 () Bool)

(declare-fun e!710449 () Bool)

(declare-fun e!710451 () Bool)

(assert (=> b!1251136 (= e!710449 e!710451)))

(declare-fun res!834579 () Bool)

(assert (=> b!1251136 (=> res!834579 e!710451)))

(declare-datatypes ((V!47563 0))(
  ( (V!47564 (val!15887 Int)) )
))
(declare-datatypes ((tuple2!20628 0))(
  ( (tuple2!20629 (_1!10324 (_ BitVec 64)) (_2!10324 V!47563)) )
))
(declare-datatypes ((List!27881 0))(
  ( (Nil!27878) (Cons!27877 (h!29086 tuple2!20628) (t!41363 List!27881)) )
))
(declare-datatypes ((ListLongMap!18513 0))(
  ( (ListLongMap!18514 (toList!9272 List!27881)) )
))
(declare-fun lt!564646 () ListLongMap!18513)

(declare-fun contains!7523 (ListLongMap!18513 (_ BitVec 64)) Bool)

(assert (=> b!1251136 (= res!834579 (contains!7523 lt!564646 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun defaultEntry!922 () Int)

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!47563)

(declare-datatypes ((array!80945 0))(
  ( (array!80946 (arr!39033 (Array (_ BitVec 32) (_ BitVec 64))) (size!39570 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80945)

(declare-datatypes ((ValueCell!15061 0))(
  ( (ValueCellFull!15061 (v!18584 V!47563)) (EmptyCell!15061) )
))
(declare-datatypes ((array!80947 0))(
  ( (array!80948 (arr!39034 (Array (_ BitVec 32) ValueCell!15061)) (size!39571 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80947)

(declare-fun minValueBefore!43 () V!47563)

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun getCurrentListMap!4488 (array!80945 array!80947 (_ BitVec 32) (_ BitVec 32) V!47563 V!47563 (_ BitVec 32) Int) ListLongMap!18513)

(assert (=> b!1251136 (= lt!564646 (getCurrentListMap!4488 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun mapIsEmpty!49240 () Bool)

(declare-fun mapRes!49240 () Bool)

(assert (=> mapIsEmpty!49240 mapRes!49240))

(declare-fun mapNonEmpty!49240 () Bool)

(declare-fun tp!93737 () Bool)

(declare-fun e!710448 () Bool)

(assert (=> mapNonEmpty!49240 (= mapRes!49240 (and tp!93737 e!710448))))

(declare-fun mapRest!49240 () (Array (_ BitVec 32) ValueCell!15061))

(declare-fun mapKey!49240 () (_ BitVec 32))

(declare-fun mapValue!49240 () ValueCell!15061)

(assert (=> mapNonEmpty!49240 (= (arr!39034 _values!914) (store mapRest!49240 mapKey!49240 mapValue!49240))))

(declare-fun b!1251137 () Bool)

(declare-fun e!710447 () Bool)

(assert (=> b!1251137 (= e!710447 (not e!710449))))

(declare-fun res!834580 () Bool)

(assert (=> b!1251137 (=> res!834580 e!710449)))

(assert (=> b!1251137 (= res!834580 (or (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!564645 () ListLongMap!18513)

(declare-fun lt!564647 () ListLongMap!18513)

(assert (=> b!1251137 (= lt!564645 lt!564647)))

(declare-fun minValueAfter!43 () V!47563)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((Unit!41519 0))(
  ( (Unit!41520) )
))
(declare-fun lt!564644 () Unit!41519)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!965 (array!80945 array!80947 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47563 V!47563 V!47563 V!47563 (_ BitVec 32) Int) Unit!41519)

(assert (=> b!1251137 (= lt!564644 (lemmaNoChangeToArrayThenSameMapNoExtras!965 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5647 (array!80945 array!80947 (_ BitVec 32) (_ BitVec 32) V!47563 V!47563 (_ BitVec 32) Int) ListLongMap!18513)

(assert (=> b!1251137 (= lt!564647 (getCurrentListMapNoExtraKeys!5647 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1251137 (= lt!564645 (getCurrentListMapNoExtraKeys!5647 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1251138 () Bool)

(declare-fun res!834576 () Bool)

(assert (=> b!1251138 (=> (not res!834576) (not e!710447))))

(declare-datatypes ((List!27882 0))(
  ( (Nil!27879) (Cons!27878 (h!29087 (_ BitVec 64)) (t!41364 List!27882)) )
))
(declare-fun arrayNoDuplicates!0 (array!80945 (_ BitVec 32) List!27882) Bool)

(assert (=> b!1251138 (= res!834576 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27879))))

(declare-fun b!1251139 () Bool)

(declare-fun res!834578 () Bool)

(assert (=> b!1251139 (=> (not res!834578) (not e!710447))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!80945 (_ BitVec 32)) Bool)

(assert (=> b!1251139 (= res!834578 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1251140 () Bool)

(declare-fun tp_is_empty!31649 () Bool)

(assert (=> b!1251140 (= e!710448 tp_is_empty!31649)))

(declare-fun b!1251141 () Bool)

(declare-fun e!710453 () Bool)

(declare-fun e!710452 () Bool)

(assert (=> b!1251141 (= e!710453 (and e!710452 mapRes!49240))))

(declare-fun condMapEmpty!49240 () Bool)

(declare-fun mapDefault!49240 () ValueCell!15061)

