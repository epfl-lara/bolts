; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105828 () Bool)

(assert start!105828)

(declare-fun b_free!27355 () Bool)

(declare-fun b_next!27355 () Bool)

(assert (=> start!105828 (= b_free!27355 (not b_next!27355))))

(declare-fun tp!95594 () Bool)

(declare-fun b_and!45261 () Bool)

(assert (=> start!105828 (= tp!95594 b_and!45261)))

(declare-fun b!1260103 () Bool)

(declare-fun res!839873 () Bool)

(declare-fun e!717029 () Bool)

(assert (=> b!1260103 (=> (not res!839873) (not e!717029))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((array!82123 0))(
  ( (array!82124 (arr!39611 (Array (_ BitVec 32) (_ BitVec 64))) (size!40148 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!82123)

(declare-datatypes ((V!48375 0))(
  ( (V!48376 (val!16191 Int)) )
))
(declare-datatypes ((ValueCell!15365 0))(
  ( (ValueCellFull!15365 (v!18894 V!48375)) (EmptyCell!15365) )
))
(declare-datatypes ((array!82125 0))(
  ( (array!82126 (arr!39612 (Array (_ BitVec 32) ValueCell!15365)) (size!40149 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!82125)

(assert (=> b!1260103 (= res!839873 (and (= (size!40149 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!40148 _keys!1118) (size!40149 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1260104 () Bool)

(declare-datatypes ((tuple2!21094 0))(
  ( (tuple2!21095 (_1!10557 (_ BitVec 64)) (_2!10557 V!48375)) )
))
(declare-datatypes ((List!28318 0))(
  ( (Nil!28315) (Cons!28314 (h!29523 tuple2!21094) (t!41822 List!28318)) )
))
(declare-datatypes ((ListLongMap!18979 0))(
  ( (ListLongMap!18980 (toList!9505 List!28318)) )
))
(declare-fun lt!570798 () ListLongMap!18979)

(declare-fun lt!570792 () ListLongMap!18979)

(declare-fun lt!570797 () tuple2!21094)

(declare-fun e!717024 () Bool)

(declare-fun +!4202 (ListLongMap!18979 tuple2!21094) ListLongMap!18979)

(assert (=> b!1260104 (= e!717024 (= lt!570792 (+!4202 lt!570798 lt!570797)))))

(declare-fun b!1260105 () Bool)

(declare-fun e!717025 () Bool)

(assert (=> b!1260105 (= e!717029 (not e!717025))))

(declare-fun res!839874 () Bool)

(assert (=> b!1260105 (=> res!839874 e!717025)))

(assert (=> b!1260105 (= res!839874 (or (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun lt!570794 () ListLongMap!18979)

(assert (=> b!1260105 (= lt!570794 lt!570798)))

(declare-fun defaultEntry!922 () Int)

(declare-datatypes ((Unit!41977 0))(
  ( (Unit!41978) )
))
(declare-fun lt!570791 () Unit!41977)

(declare-fun minValueAfter!43 () V!48375)

(declare-fun zeroValue!871 () V!48375)

(declare-fun minValueBefore!43 () V!48375)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1166 (array!82123 array!82125 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48375 V!48375 V!48375 V!48375 (_ BitVec 32) Int) Unit!41977)

(assert (=> b!1260105 (= lt!570791 (lemmaNoChangeToArrayThenSameMapNoExtras!1166 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5848 (array!82123 array!82125 (_ BitVec 32) (_ BitVec 32) V!48375 V!48375 (_ BitVec 32) Int) ListLongMap!18979)

(assert (=> b!1260105 (= lt!570798 (getCurrentListMapNoExtraKeys!5848 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1260105 (= lt!570794 (getCurrentListMapNoExtraKeys!5848 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1260107 () Bool)

(assert (=> b!1260107 (= e!717025 true)))

(declare-fun lt!570789 () ListLongMap!18979)

(declare-fun lt!570795 () ListLongMap!18979)

(declare-fun -!2134 (ListLongMap!18979 (_ BitVec 64)) ListLongMap!18979)

(assert (=> b!1260107 (= lt!570789 (-!2134 lt!570795 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!570790 () ListLongMap!18979)

(declare-fun lt!570793 () ListLongMap!18979)

(assert (=> b!1260107 (= (-!2134 lt!570790 #b1000000000000000000000000000000000000000000000000000000000000000) lt!570793)))

(declare-fun lt!570796 () Unit!41977)

(declare-fun addThenRemoveForNewKeyIsSame!359 (ListLongMap!18979 (_ BitVec 64) V!48375) Unit!41977)

(assert (=> b!1260107 (= lt!570796 (addThenRemoveForNewKeyIsSame!359 lt!570793 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))

(assert (=> b!1260107 e!717024))

(declare-fun res!839872 () Bool)

(assert (=> b!1260107 (=> (not res!839872) (not e!717024))))

(assert (=> b!1260107 (= res!839872 (= lt!570795 lt!570790))))

(assert (=> b!1260107 (= lt!570790 (+!4202 lt!570793 (tuple2!21095 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43)))))

(assert (=> b!1260107 (= lt!570793 (+!4202 lt!570794 lt!570797))))

(assert (=> b!1260107 (= lt!570797 (tuple2!21095 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!871))))

(declare-fun getCurrentListMap!4638 (array!82123 array!82125 (_ BitVec 32) (_ BitVec 32) V!48375 V!48375 (_ BitVec 32) Int) ListLongMap!18979)

(assert (=> b!1260107 (= lt!570792 (getCurrentListMap!4638 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1260107 (= lt!570795 (getCurrentListMap!4638 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1260108 () Bool)

(declare-fun e!717027 () Bool)

(declare-fun tp_is_empty!32257 () Bool)

(assert (=> b!1260108 (= e!717027 tp_is_empty!32257)))

(declare-fun b!1260109 () Bool)

(declare-fun res!839871 () Bool)

(assert (=> b!1260109 (=> (not res!839871) (not e!717029))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82123 (_ BitVec 32)) Bool)

(assert (=> b!1260109 (= res!839871 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1260110 () Bool)

(declare-fun e!717026 () Bool)

(declare-fun e!717030 () Bool)

(declare-fun mapRes!50185 () Bool)

(assert (=> b!1260110 (= e!717026 (and e!717030 mapRes!50185))))

(declare-fun condMapEmpty!50185 () Bool)

(declare-fun mapDefault!50185 () ValueCell!15365)

