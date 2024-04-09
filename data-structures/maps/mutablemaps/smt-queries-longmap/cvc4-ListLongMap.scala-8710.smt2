; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105750 () Bool)

(assert start!105750)

(declare-fun b_free!27299 () Bool)

(declare-fun b_next!27299 () Bool)

(assert (=> start!105750 (= b_free!27299 (not b_next!27299))))

(declare-fun tp!95423 () Bool)

(declare-fun b_and!45193 () Bool)

(assert (=> start!105750 (= tp!95423 b_and!45193)))

(declare-fun b!1259159 () Bool)

(declare-fun e!716317 () Bool)

(declare-fun tp_is_empty!32201 () Bool)

(assert (=> b!1259159 (= e!716317 tp_is_empty!32201)))

(declare-fun mapIsEmpty!50098 () Bool)

(declare-fun mapRes!50098 () Bool)

(assert (=> mapIsEmpty!50098 mapRes!50098))

(declare-fun b!1259160 () Bool)

(declare-fun e!716320 () Bool)

(declare-fun e!716316 () Bool)

(assert (=> b!1259160 (= e!716320 (not e!716316))))

(declare-fun res!839281 () Bool)

(assert (=> b!1259160 (=> res!839281 e!716316)))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(assert (=> b!1259160 (= res!839281 (or (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!48299 0))(
  ( (V!48300 (val!16163 Int)) )
))
(declare-datatypes ((tuple2!21050 0))(
  ( (tuple2!21051 (_1!10535 (_ BitVec 64)) (_2!10535 V!48299)) )
))
(declare-datatypes ((List!28278 0))(
  ( (Nil!28275) (Cons!28274 (h!29483 tuple2!21050) (t!41780 List!28278)) )
))
(declare-datatypes ((ListLongMap!18935 0))(
  ( (ListLongMap!18936 (toList!9483 List!28278)) )
))
(declare-fun lt!569810 () ListLongMap!18935)

(declare-fun lt!569804 () ListLongMap!18935)

(assert (=> b!1259160 (= lt!569810 lt!569804)))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!48299)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!48299)

(declare-datatypes ((array!82015 0))(
  ( (array!82016 (arr!39558 (Array (_ BitVec 32) (_ BitVec 64))) (size!40095 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!82015)

(declare-datatypes ((ValueCell!15337 0))(
  ( (ValueCellFull!15337 (v!18865 V!48299)) (EmptyCell!15337) )
))
(declare-datatypes ((array!82017 0))(
  ( (array!82018 (arr!39559 (Array (_ BitVec 32) ValueCell!15337)) (size!40096 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!82017)

(declare-datatypes ((Unit!41935 0))(
  ( (Unit!41936) )
))
(declare-fun lt!569811 () Unit!41935)

(declare-fun minValueBefore!43 () V!48299)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1149 (array!82015 array!82017 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48299 V!48299 V!48299 V!48299 (_ BitVec 32) Int) Unit!41935)

(assert (=> b!1259160 (= lt!569811 (lemmaNoChangeToArrayThenSameMapNoExtras!1149 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5831 (array!82015 array!82017 (_ BitVec 32) (_ BitVec 32) V!48299 V!48299 (_ BitVec 32) Int) ListLongMap!18935)

(assert (=> b!1259160 (= lt!569804 (getCurrentListMapNoExtraKeys!5831 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1259160 (= lt!569810 (getCurrentListMapNoExtraKeys!5831 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1259161 () Bool)

(declare-fun res!839286 () Bool)

(assert (=> b!1259161 (=> (not res!839286) (not e!716320))))

(assert (=> b!1259161 (= res!839286 (and (= (size!40096 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!40095 _keys!1118) (size!40096 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1259162 () Bool)

(assert (=> b!1259162 (= e!716316 true)))

(declare-fun lt!569812 () ListLongMap!18935)

(declare-fun lt!569807 () ListLongMap!18935)

(declare-fun -!2116 (ListLongMap!18935 (_ BitVec 64)) ListLongMap!18935)

(assert (=> b!1259162 (= lt!569812 (-!2116 lt!569807 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!569808 () ListLongMap!18935)

(declare-fun lt!569803 () ListLongMap!18935)

(assert (=> b!1259162 (= (-!2116 lt!569808 #b1000000000000000000000000000000000000000000000000000000000000000) lt!569803)))

(declare-fun lt!569809 () Unit!41935)

(declare-fun addThenRemoveForNewKeyIsSame!341 (ListLongMap!18935 (_ BitVec 64) V!48299) Unit!41935)

(assert (=> b!1259162 (= lt!569809 (addThenRemoveForNewKeyIsSame!341 lt!569803 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))

(declare-fun e!716319 () Bool)

(assert (=> b!1259162 e!716319))

(declare-fun res!839282 () Bool)

(assert (=> b!1259162 (=> (not res!839282) (not e!716319))))

(assert (=> b!1259162 (= res!839282 (= lt!569807 lt!569808))))

(declare-fun +!4181 (ListLongMap!18935 tuple2!21050) ListLongMap!18935)

(assert (=> b!1259162 (= lt!569808 (+!4181 lt!569803 (tuple2!21051 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43)))))

(declare-fun lt!569806 () tuple2!21050)

(assert (=> b!1259162 (= lt!569803 (+!4181 lt!569810 lt!569806))))

(assert (=> b!1259162 (= lt!569806 (tuple2!21051 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!871))))

(declare-fun lt!569805 () ListLongMap!18935)

(declare-fun getCurrentListMap!4620 (array!82015 array!82017 (_ BitVec 32) (_ BitVec 32) V!48299 V!48299 (_ BitVec 32) Int) ListLongMap!18935)

(assert (=> b!1259162 (= lt!569805 (getCurrentListMap!4620 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1259162 (= lt!569807 (getCurrentListMap!4620 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1259163 () Bool)

(assert (=> b!1259163 (= e!716319 (= lt!569805 (+!4181 lt!569804 lt!569806)))))

(declare-fun b!1259164 () Bool)

(declare-fun res!839283 () Bool)

(assert (=> b!1259164 (=> (not res!839283) (not e!716320))))

(declare-datatypes ((List!28279 0))(
  ( (Nil!28276) (Cons!28275 (h!29484 (_ BitVec 64)) (t!41781 List!28279)) )
))
(declare-fun arrayNoDuplicates!0 (array!82015 (_ BitVec 32) List!28279) Bool)

(assert (=> b!1259164 (= res!839283 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28276))))

(declare-fun res!839285 () Bool)

(assert (=> start!105750 (=> (not res!839285) (not e!716320))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105750 (= res!839285 (validMask!0 mask!1466))))

(assert (=> start!105750 e!716320))

(assert (=> start!105750 true))

(assert (=> start!105750 tp!95423))

(assert (=> start!105750 tp_is_empty!32201))

(declare-fun array_inv!30075 (array!82015) Bool)

(assert (=> start!105750 (array_inv!30075 _keys!1118)))

(declare-fun e!716315 () Bool)

(declare-fun array_inv!30076 (array!82017) Bool)

(assert (=> start!105750 (and (array_inv!30076 _values!914) e!716315)))

(declare-fun b!1259165 () Bool)

(declare-fun e!716318 () Bool)

(assert (=> b!1259165 (= e!716315 (and e!716318 mapRes!50098))))

(declare-fun condMapEmpty!50098 () Bool)

(declare-fun mapDefault!50098 () ValueCell!15337)

