; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105556 () Bool)

(assert start!105556)

(declare-fun b_free!27157 () Bool)

(declare-fun b_next!27157 () Bool)

(assert (=> start!105556 (= b_free!27157 (not b_next!27157))))

(declare-fun tp!94989 () Bool)

(declare-fun b_and!45023 () Bool)

(assert (=> start!105556 (= tp!94989 b_and!45023)))

(declare-fun b!1257095 () Bool)

(declare-fun e!714821 () Bool)

(declare-datatypes ((array!81751 0))(
  ( (array!81752 (arr!39429 (Array (_ BitVec 32) (_ BitVec 64))) (size!39966 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81751)

(assert (=> b!1257095 (= e!714821 (bvsle #b00000000000000000000000000000000 (size!39966 _keys!1118)))))

(declare-datatypes ((V!48111 0))(
  ( (V!48112 (val!16092 Int)) )
))
(declare-datatypes ((tuple2!20948 0))(
  ( (tuple2!20949 (_1!10484 (_ BitVec 64)) (_2!10484 V!48111)) )
))
(declare-datatypes ((List!28180 0))(
  ( (Nil!28177) (Cons!28176 (h!29385 tuple2!20948) (t!41676 List!28180)) )
))
(declare-datatypes ((ListLongMap!18833 0))(
  ( (ListLongMap!18834 (toList!9432 List!28180)) )
))
(declare-fun lt!568511 () ListLongMap!18833)

(declare-fun -!2107 (ListLongMap!18833 (_ BitVec 64)) ListLongMap!18833)

(assert (=> b!1257095 (= (-!2107 lt!568511 #b1000000000000000000000000000000000000000000000000000000000000000) lt!568511)))

(declare-datatypes ((Unit!41836 0))(
  ( (Unit!41837) )
))
(declare-fun lt!568510 () Unit!41836)

(declare-fun removeNotPresentStillSame!140 (ListLongMap!18833 (_ BitVec 64)) Unit!41836)

(assert (=> b!1257095 (= lt!568510 (removeNotPresentStillSame!140 lt!568511 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mapNonEmpty!49876 () Bool)

(declare-fun mapRes!49876 () Bool)

(declare-fun tp!94988 () Bool)

(declare-fun e!714822 () Bool)

(assert (=> mapNonEmpty!49876 (= mapRes!49876 (and tp!94988 e!714822))))

(declare-datatypes ((ValueCell!15266 0))(
  ( (ValueCellFull!15266 (v!18793 V!48111)) (EmptyCell!15266) )
))
(declare-fun mapRest!49876 () (Array (_ BitVec 32) ValueCell!15266))

(declare-fun mapValue!49876 () ValueCell!15266)

(declare-datatypes ((array!81753 0))(
  ( (array!81754 (arr!39430 (Array (_ BitVec 32) ValueCell!15266)) (size!39967 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81753)

(declare-fun mapKey!49876 () (_ BitVec 32))

(assert (=> mapNonEmpty!49876 (= (arr!39430 _values!914) (store mapRest!49876 mapKey!49876 mapValue!49876))))

(declare-fun b!1257096 () Bool)

(declare-fun res!838099 () Bool)

(declare-fun e!714819 () Bool)

(assert (=> b!1257096 (=> (not res!838099) (not e!714819))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81751 (_ BitVec 32)) Bool)

(assert (=> b!1257096 (= res!838099 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1257097 () Bool)

(declare-fun e!714820 () Bool)

(assert (=> b!1257097 (= e!714820 e!714821)))

(declare-fun res!838096 () Bool)

(assert (=> b!1257097 (=> res!838096 e!714821)))

(declare-fun contains!7585 (ListLongMap!18833 (_ BitVec 64)) Bool)

(assert (=> b!1257097 (= res!838096 (contains!7585 lt!568511 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun defaultEntry!922 () Int)

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun minValueBefore!43 () V!48111)

(declare-fun zeroValue!871 () V!48111)

(declare-fun getCurrentListMap!4589 (array!81751 array!81753 (_ BitVec 32) (_ BitVec 32) V!48111 V!48111 (_ BitVec 32) Int) ListLongMap!18833)

(assert (=> b!1257097 (= lt!568511 (getCurrentListMap!4589 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun res!838098 () Bool)

(assert (=> start!105556 (=> (not res!838098) (not e!714819))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105556 (= res!838098 (validMask!0 mask!1466))))

(assert (=> start!105556 e!714819))

(assert (=> start!105556 true))

(assert (=> start!105556 tp!94989))

(declare-fun tp_is_empty!32059 () Bool)

(assert (=> start!105556 tp_is_empty!32059))

(declare-fun array_inv!29983 (array!81751) Bool)

(assert (=> start!105556 (array_inv!29983 _keys!1118)))

(declare-fun e!714824 () Bool)

(declare-fun array_inv!29984 (array!81753) Bool)

(assert (=> start!105556 (and (array_inv!29984 _values!914) e!714824)))

(declare-fun b!1257098 () Bool)

(assert (=> b!1257098 (= e!714819 (not e!714820))))

(declare-fun res!838101 () Bool)

(assert (=> b!1257098 (=> res!838101 e!714820)))

(assert (=> b!1257098 (= res!838101 (or (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!568509 () ListLongMap!18833)

(declare-fun lt!568512 () ListLongMap!18833)

(assert (=> b!1257098 (= lt!568509 lt!568512)))

(declare-fun minValueAfter!43 () V!48111)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun lt!568513 () Unit!41836)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1102 (array!81751 array!81753 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48111 V!48111 V!48111 V!48111 (_ BitVec 32) Int) Unit!41836)

(assert (=> b!1257098 (= lt!568513 (lemmaNoChangeToArrayThenSameMapNoExtras!1102 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5784 (array!81751 array!81753 (_ BitVec 32) (_ BitVec 32) V!48111 V!48111 (_ BitVec 32) Int) ListLongMap!18833)

(assert (=> b!1257098 (= lt!568512 (getCurrentListMapNoExtraKeys!5784 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1257098 (= lt!568509 (getCurrentListMapNoExtraKeys!5784 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1257099 () Bool)

(declare-fun res!838100 () Bool)

(assert (=> b!1257099 (=> (not res!838100) (not e!714819))))

(assert (=> b!1257099 (= res!838100 (and (= (size!39967 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39966 _keys!1118) (size!39967 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1257100 () Bool)

(assert (=> b!1257100 (= e!714822 tp_is_empty!32059)))

(declare-fun b!1257101 () Bool)

(declare-fun res!838097 () Bool)

(assert (=> b!1257101 (=> (not res!838097) (not e!714819))))

(declare-datatypes ((List!28181 0))(
  ( (Nil!28178) (Cons!28177 (h!29386 (_ BitVec 64)) (t!41677 List!28181)) )
))
(declare-fun arrayNoDuplicates!0 (array!81751 (_ BitVec 32) List!28181) Bool)

(assert (=> b!1257101 (= res!838097 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28178))))

(declare-fun mapIsEmpty!49876 () Bool)

(assert (=> mapIsEmpty!49876 mapRes!49876))

(declare-fun b!1257102 () Bool)

(declare-fun e!714823 () Bool)

(assert (=> b!1257102 (= e!714823 tp_is_empty!32059)))

(declare-fun b!1257103 () Bool)

(assert (=> b!1257103 (= e!714824 (and e!714823 mapRes!49876))))

(declare-fun condMapEmpty!49876 () Bool)

(declare-fun mapDefault!49876 () ValueCell!15266)

