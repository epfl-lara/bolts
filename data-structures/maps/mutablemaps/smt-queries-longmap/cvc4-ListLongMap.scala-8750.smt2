; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!106238 () Bool)

(assert start!106238)

(declare-fun b_free!27539 () Bool)

(declare-fun b_next!27539 () Bool)

(assert (=> start!106238 (= b_free!27539 (not b_next!27539))))

(declare-fun tp!96183 () Bool)

(declare-fun b_and!45581 () Bool)

(assert (=> start!106238 (= tp!96183 b_and!45581)))

(declare-fun b!1264356 () Bool)

(declare-fun e!719989 () Bool)

(declare-fun tp_is_empty!32441 () Bool)

(assert (=> b!1264356 (= e!719989 tp_is_empty!32441)))

(declare-fun b!1264357 () Bool)

(declare-fun e!719987 () Bool)

(assert (=> b!1264357 (= e!719987 tp_is_empty!32441)))

(declare-fun mapIsEmpty!50497 () Bool)

(declare-fun mapRes!50497 () Bool)

(assert (=> mapIsEmpty!50497 mapRes!50497))

(declare-fun b!1264358 () Bool)

(declare-datatypes ((V!48619 0))(
  ( (V!48620 (val!16283 Int)) )
))
(declare-datatypes ((tuple2!21234 0))(
  ( (tuple2!21235 (_1!10627 (_ BitVec 64)) (_2!10627 V!48619)) )
))
(declare-datatypes ((List!28449 0))(
  ( (Nil!28446) (Cons!28445 (h!29654 tuple2!21234) (t!41977 List!28449)) )
))
(declare-datatypes ((ListLongMap!19119 0))(
  ( (ListLongMap!19120 (toList!9575 List!28449)) )
))
(declare-fun lt!573738 () ListLongMap!19119)

(declare-fun lt!573733 () tuple2!21234)

(declare-fun e!719985 () Bool)

(declare-fun lt!573736 () ListLongMap!19119)

(declare-fun +!4238 (ListLongMap!19119 tuple2!21234) ListLongMap!19119)

(assert (=> b!1264358 (= e!719985 (= lt!573738 (+!4238 lt!573736 lt!573733)))))

(declare-fun mapNonEmpty!50497 () Bool)

(declare-fun tp!96182 () Bool)

(assert (=> mapNonEmpty!50497 (= mapRes!50497 (and tp!96182 e!719987))))

(declare-datatypes ((ValueCell!15457 0))(
  ( (ValueCellFull!15457 (v!18997 V!48619)) (EmptyCell!15457) )
))
(declare-fun mapRest!50497 () (Array (_ BitVec 32) ValueCell!15457))

(declare-datatypes ((array!82495 0))(
  ( (array!82496 (arr!39785 (Array (_ BitVec 32) ValueCell!15457)) (size!40322 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!82495)

(declare-fun mapKey!50497 () (_ BitVec 32))

(declare-fun mapValue!50497 () ValueCell!15457)

(assert (=> mapNonEmpty!50497 (= (arr!39785 _values!914) (store mapRest!50497 mapKey!50497 mapValue!50497))))

(declare-fun b!1264360 () Bool)

(declare-fun e!719984 () Bool)

(assert (=> b!1264360 (= e!719984 true)))

(declare-fun lt!573732 () ListLongMap!19119)

(declare-fun lt!573739 () ListLongMap!19119)

(declare-fun -!2153 (ListLongMap!19119 (_ BitVec 64)) ListLongMap!19119)

(assert (=> b!1264360 (= lt!573732 (-!2153 lt!573739 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!573735 () ListLongMap!19119)

(declare-fun lt!573731 () ListLongMap!19119)

(assert (=> b!1264360 (= (-!2153 lt!573735 #b1000000000000000000000000000000000000000000000000000000000000000) lt!573731)))

(declare-datatypes ((Unit!42097 0))(
  ( (Unit!42098) )
))
(declare-fun lt!573737 () Unit!42097)

(declare-fun minValueBefore!43 () V!48619)

(declare-fun addThenRemoveForNewKeyIsSame!374 (ListLongMap!19119 (_ BitVec 64) V!48619) Unit!42097)

(assert (=> b!1264360 (= lt!573737 (addThenRemoveForNewKeyIsSame!374 lt!573731 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))

(assert (=> b!1264360 e!719985))

(declare-fun res!842112 () Bool)

(assert (=> b!1264360 (=> (not res!842112) (not e!719985))))

(assert (=> b!1264360 (= res!842112 (= lt!573739 lt!573735))))

(assert (=> b!1264360 (= lt!573735 (+!4238 lt!573731 (tuple2!21235 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43)))))

(declare-fun lt!573734 () ListLongMap!19119)

(assert (=> b!1264360 (= lt!573731 (+!4238 lt!573734 lt!573733))))

(declare-fun zeroValue!871 () V!48619)

(assert (=> b!1264360 (= lt!573733 (tuple2!21235 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!871))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!48619)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((array!82497 0))(
  ( (array!82498 (arr!39786 (Array (_ BitVec 32) (_ BitVec 64))) (size!40323 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!82497)

(declare-fun getCurrentListMap!4675 (array!82497 array!82495 (_ BitVec 32) (_ BitVec 32) V!48619 V!48619 (_ BitVec 32) Int) ListLongMap!19119)

(assert (=> b!1264360 (= lt!573738 (getCurrentListMap!4675 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(assert (=> b!1264360 (= lt!573739 (getCurrentListMap!4675 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1264361 () Bool)

(declare-fun res!842110 () Bool)

(declare-fun e!719986 () Bool)

(assert (=> b!1264361 (=> (not res!842110) (not e!719986))))

(assert (=> b!1264361 (= res!842110 (and (= (size!40322 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!40323 _keys!1118) (size!40322 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1264362 () Bool)

(declare-fun res!842109 () Bool)

(assert (=> b!1264362 (=> (not res!842109) (not e!719986))))

(declare-datatypes ((List!28450 0))(
  ( (Nil!28447) (Cons!28446 (h!29655 (_ BitVec 64)) (t!41978 List!28450)) )
))
(declare-fun arrayNoDuplicates!0 (array!82497 (_ BitVec 32) List!28450) Bool)

(assert (=> b!1264362 (= res!842109 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28447))))

(declare-fun b!1264363 () Bool)

(declare-fun res!842108 () Bool)

(assert (=> b!1264363 (=> (not res!842108) (not e!719986))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82497 (_ BitVec 32)) Bool)

(assert (=> b!1264363 (= res!842108 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1264364 () Bool)

(assert (=> b!1264364 (= e!719986 (not e!719984))))

(declare-fun res!842111 () Bool)

(assert (=> b!1264364 (=> res!842111 e!719984)))

(assert (=> b!1264364 (= res!842111 (or (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1264364 (= lt!573734 lt!573736)))

(declare-fun lt!573740 () Unit!42097)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1209 (array!82497 array!82495 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48619 V!48619 V!48619 V!48619 (_ BitVec 32) Int) Unit!42097)

(assert (=> b!1264364 (= lt!573740 (lemmaNoChangeToArrayThenSameMapNoExtras!1209 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5913 (array!82497 array!82495 (_ BitVec 32) (_ BitVec 32) V!48619 V!48619 (_ BitVec 32) Int) ListLongMap!19119)

(assert (=> b!1264364 (= lt!573736 (getCurrentListMapNoExtraKeys!5913 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1264364 (= lt!573734 (getCurrentListMapNoExtraKeys!5913 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun res!842113 () Bool)

(assert (=> start!106238 (=> (not res!842113) (not e!719986))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!106238 (= res!842113 (validMask!0 mask!1466))))

(assert (=> start!106238 e!719986))

(assert (=> start!106238 true))

(assert (=> start!106238 tp!96183))

(assert (=> start!106238 tp_is_empty!32441))

(declare-fun array_inv!30235 (array!82497) Bool)

(assert (=> start!106238 (array_inv!30235 _keys!1118)))

(declare-fun e!719988 () Bool)

(declare-fun array_inv!30236 (array!82495) Bool)

(assert (=> start!106238 (and (array_inv!30236 _values!914) e!719988)))

(declare-fun b!1264359 () Bool)

(assert (=> b!1264359 (= e!719988 (and e!719989 mapRes!50497))))

(declare-fun condMapEmpty!50497 () Bool)

(declare-fun mapDefault!50497 () ValueCell!15457)

