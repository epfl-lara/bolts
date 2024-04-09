; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105466 () Bool)

(assert start!105466)

(declare-fun b_free!27089 () Bool)

(declare-fun b_next!27089 () Bool)

(assert (=> start!105466 (= b_free!27089 (not b_next!27089))))

(declare-fun tp!94781 () Bool)

(declare-fun b_and!44945 () Bool)

(assert (=> start!105466 (= tp!94781 b_and!44945)))

(declare-fun b!1256020 () Bool)

(declare-fun e!714007 () Bool)

(assert (=> b!1256020 (= e!714007 true)))

(declare-datatypes ((V!48019 0))(
  ( (V!48020 (val!16058 Int)) )
))
(declare-datatypes ((tuple2!20892 0))(
  ( (tuple2!20893 (_1!10456 (_ BitVec 64)) (_2!10456 V!48019)) )
))
(declare-datatypes ((List!28126 0))(
  ( (Nil!28123) (Cons!28122 (h!29331 tuple2!20892) (t!41620 List!28126)) )
))
(declare-datatypes ((ListLongMap!18777 0))(
  ( (ListLongMap!18778 (toList!9404 List!28126)) )
))
(declare-fun lt!567879 () ListLongMap!18777)

(declare-fun -!2085 (ListLongMap!18777 (_ BitVec 64)) ListLongMap!18777)

(assert (=> b!1256020 (= (-!2085 lt!567879 #b1000000000000000000000000000000000000000000000000000000000000000) lt!567879)))

(declare-datatypes ((Unit!41780 0))(
  ( (Unit!41781) )
))
(declare-fun lt!567875 () Unit!41780)

(declare-fun removeNotPresentStillSame!118 (ListLongMap!18777 (_ BitVec 64)) Unit!41780)

(assert (=> b!1256020 (= lt!567875 (removeNotPresentStillSame!118 lt!567879 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1256021 () Bool)

(declare-fun res!837426 () Bool)

(declare-fun e!714009 () Bool)

(assert (=> b!1256021 (=> (not res!837426) (not e!714009))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((array!81615 0))(
  ( (array!81616 (arr!39362 (Array (_ BitVec 32) (_ BitVec 64))) (size!39899 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81615)

(declare-datatypes ((ValueCell!15232 0))(
  ( (ValueCellFull!15232 (v!18758 V!48019)) (EmptyCell!15232) )
))
(declare-datatypes ((array!81617 0))(
  ( (array!81618 (arr!39363 (Array (_ BitVec 32) ValueCell!15232)) (size!39900 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81617)

(assert (=> b!1256021 (= res!837426 (and (= (size!39900 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39899 _keys!1118) (size!39900 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1256023 () Bool)

(declare-fun e!714008 () Bool)

(assert (=> b!1256023 (= e!714009 (not e!714008))))

(declare-fun res!837425 () Bool)

(assert (=> b!1256023 (=> res!837425 e!714008)))

(assert (=> b!1256023 (= res!837425 (or (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!567876 () ListLongMap!18777)

(declare-fun lt!567877 () ListLongMap!18777)

(assert (=> b!1256023 (= lt!567876 lt!567877)))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!48019)

(declare-fun zeroValue!871 () V!48019)

(declare-fun minValueBefore!43 () V!48019)

(declare-fun lt!567878 () Unit!41780)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1078 (array!81615 array!81617 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48019 V!48019 V!48019 V!48019 (_ BitVec 32) Int) Unit!41780)

(assert (=> b!1256023 (= lt!567878 (lemmaNoChangeToArrayThenSameMapNoExtras!1078 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5760 (array!81615 array!81617 (_ BitVec 32) (_ BitVec 32) V!48019 V!48019 (_ BitVec 32) Int) ListLongMap!18777)

(assert (=> b!1256023 (= lt!567877 (getCurrentListMapNoExtraKeys!5760 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1256023 (= lt!567876 (getCurrentListMapNoExtraKeys!5760 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1256024 () Bool)

(declare-fun res!837428 () Bool)

(assert (=> b!1256024 (=> (not res!837428) (not e!714009))))

(declare-datatypes ((List!28127 0))(
  ( (Nil!28124) (Cons!28123 (h!29332 (_ BitVec 64)) (t!41621 List!28127)) )
))
(declare-fun arrayNoDuplicates!0 (array!81615 (_ BitVec 32) List!28127) Bool)

(assert (=> b!1256024 (= res!837428 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28124))))

(declare-fun mapNonEmpty!49771 () Bool)

(declare-fun mapRes!49771 () Bool)

(declare-fun tp!94782 () Bool)

(declare-fun e!714004 () Bool)

(assert (=> mapNonEmpty!49771 (= mapRes!49771 (and tp!94782 e!714004))))

(declare-fun mapRest!49771 () (Array (_ BitVec 32) ValueCell!15232))

(declare-fun mapKey!49771 () (_ BitVec 32))

(declare-fun mapValue!49771 () ValueCell!15232)

(assert (=> mapNonEmpty!49771 (= (arr!39363 _values!914) (store mapRest!49771 mapKey!49771 mapValue!49771))))

(declare-fun b!1256025 () Bool)

(declare-fun tp_is_empty!31991 () Bool)

(assert (=> b!1256025 (= e!714004 tp_is_empty!31991)))

(declare-fun b!1256026 () Bool)

(declare-fun e!714010 () Bool)

(declare-fun e!714006 () Bool)

(assert (=> b!1256026 (= e!714010 (and e!714006 mapRes!49771))))

(declare-fun condMapEmpty!49771 () Bool)

(declare-fun mapDefault!49771 () ValueCell!15232)

