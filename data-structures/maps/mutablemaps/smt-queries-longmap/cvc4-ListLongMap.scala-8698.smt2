; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105662 () Bool)

(assert start!105662)

(declare-fun b_free!27227 () Bool)

(declare-fun b_next!27227 () Bool)

(assert (=> start!105662 (= b_free!27227 (not b_next!27227))))

(declare-fun tp!95205 () Bool)

(declare-fun b_and!45111 () Bool)

(assert (=> start!105662 (= tp!95205 b_and!45111)))

(declare-fun b!1258103 () Bool)

(declare-fun res!838643 () Bool)

(declare-fun e!715529 () Bool)

(assert (=> b!1258103 (=> (not res!838643) (not e!715529))))

(declare-datatypes ((array!81881 0))(
  ( (array!81882 (arr!39492 (Array (_ BitVec 32) (_ BitVec 64))) (size!40029 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81881)

(declare-datatypes ((List!28226 0))(
  ( (Nil!28223) (Cons!28222 (h!29431 (_ BitVec 64)) (t!41726 List!28226)) )
))
(declare-fun arrayNoDuplicates!0 (array!81881 (_ BitVec 32) List!28226) Bool)

(assert (=> b!1258103 (= res!838643 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28223))))

(declare-fun b!1258104 () Bool)

(declare-fun e!715533 () Bool)

(declare-fun tp_is_empty!32129 () Bool)

(assert (=> b!1258104 (= e!715533 tp_is_empty!32129)))

(declare-fun mapIsEmpty!49987 () Bool)

(declare-fun mapRes!49987 () Bool)

(assert (=> mapIsEmpty!49987 mapRes!49987))

(declare-fun b!1258105 () Bool)

(declare-fun e!715530 () Bool)

(assert (=> b!1258105 (= e!715530 true)))

(declare-fun defaultEntry!922 () Int)

(declare-datatypes ((V!48203 0))(
  ( (V!48204 (val!16127 Int)) )
))
(declare-datatypes ((tuple2!20994 0))(
  ( (tuple2!20995 (_1!10507 (_ BitVec 64)) (_2!10507 V!48203)) )
))
(declare-datatypes ((List!28227 0))(
  ( (Nil!28224) (Cons!28223 (h!29432 tuple2!20994) (t!41727 List!28227)) )
))
(declare-datatypes ((ListLongMap!18879 0))(
  ( (ListLongMap!18880 (toList!9455 List!28227)) )
))
(declare-fun lt!569022 () ListLongMap!18879)

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!48203)

(declare-datatypes ((ValueCell!15301 0))(
  ( (ValueCellFull!15301 (v!18829 V!48203)) (EmptyCell!15301) )
))
(declare-datatypes ((array!81883 0))(
  ( (array!81884 (arr!39493 (Array (_ BitVec 32) ValueCell!15301)) (size!40030 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81883)

(declare-fun minValueBefore!43 () V!48203)

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun getCurrentListMap!4595 (array!81881 array!81883 (_ BitVec 32) (_ BitVec 32) V!48203 V!48203 (_ BitVec 32) Int) ListLongMap!18879)

(assert (=> b!1258105 (= lt!569022 (getCurrentListMap!4595 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1258106 () Bool)

(assert (=> b!1258106 (= e!715529 (not e!715530))))

(declare-fun res!838642 () Bool)

(assert (=> b!1258106 (=> res!838642 e!715530)))

(assert (=> b!1258106 (= res!838642 (or (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun lt!569019 () ListLongMap!18879)

(declare-fun lt!569021 () ListLongMap!18879)

(assert (=> b!1258106 (= lt!569019 lt!569021)))

(declare-datatypes ((Unit!41884 0))(
  ( (Unit!41885) )
))
(declare-fun lt!569020 () Unit!41884)

(declare-fun minValueAfter!43 () V!48203)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1125 (array!81881 array!81883 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48203 V!48203 V!48203 V!48203 (_ BitVec 32) Int) Unit!41884)

(assert (=> b!1258106 (= lt!569020 (lemmaNoChangeToArrayThenSameMapNoExtras!1125 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5807 (array!81881 array!81883 (_ BitVec 32) (_ BitVec 32) V!48203 V!48203 (_ BitVec 32) Int) ListLongMap!18879)

(assert (=> b!1258106 (= lt!569021 (getCurrentListMapNoExtraKeys!5807 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1258106 (= lt!569019 (getCurrentListMapNoExtraKeys!5807 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1258107 () Bool)

(declare-fun res!838640 () Bool)

(assert (=> b!1258107 (=> (not res!838640) (not e!715529))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81881 (_ BitVec 32)) Bool)

(assert (=> b!1258107 (= res!838640 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1258108 () Bool)

(declare-fun res!838639 () Bool)

(assert (=> b!1258108 (=> (not res!838639) (not e!715529))))

(assert (=> b!1258108 (= res!838639 (and (= (size!40030 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!40029 _keys!1118) (size!40030 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!49987 () Bool)

(declare-fun tp!95204 () Bool)

(assert (=> mapNonEmpty!49987 (= mapRes!49987 (and tp!95204 e!715533))))

(declare-fun mapValue!49987 () ValueCell!15301)

(declare-fun mapRest!49987 () (Array (_ BitVec 32) ValueCell!15301))

(declare-fun mapKey!49987 () (_ BitVec 32))

(assert (=> mapNonEmpty!49987 (= (arr!39493 _values!914) (store mapRest!49987 mapKey!49987 mapValue!49987))))

(declare-fun res!838641 () Bool)

(assert (=> start!105662 (=> (not res!838641) (not e!715529))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105662 (= res!838641 (validMask!0 mask!1466))))

(assert (=> start!105662 e!715529))

(assert (=> start!105662 true))

(assert (=> start!105662 tp!95205))

(assert (=> start!105662 tp_is_empty!32129))

(declare-fun array_inv!30031 (array!81881) Bool)

(assert (=> start!105662 (array_inv!30031 _keys!1118)))

(declare-fun e!715534 () Bool)

(declare-fun array_inv!30032 (array!81883) Bool)

(assert (=> start!105662 (and (array_inv!30032 _values!914) e!715534)))

(declare-fun b!1258109 () Bool)

(declare-fun e!715532 () Bool)

(assert (=> b!1258109 (= e!715534 (and e!715532 mapRes!49987))))

(declare-fun condMapEmpty!49987 () Bool)

(declare-fun mapDefault!49987 () ValueCell!15301)

