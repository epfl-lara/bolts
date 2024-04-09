; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105584 () Bool)

(assert start!105584)

(declare-fun b_free!27163 () Bool)

(declare-fun b_next!27163 () Bool)

(assert (=> start!105584 (= b_free!27163 (not b_next!27163))))

(declare-fun tp!95009 () Bool)

(declare-fun b_and!45039 () Bool)

(assert (=> start!105584 (= tp!95009 b_and!45039)))

(declare-fun b!1257329 () Bool)

(declare-fun e!714978 () Bool)

(assert (=> b!1257329 (= e!714978 (not true))))

(declare-datatypes ((V!48119 0))(
  ( (V!48120 (val!16095 Int)) )
))
(declare-datatypes ((tuple2!20954 0))(
  ( (tuple2!20955 (_1!10487 (_ BitVec 64)) (_2!10487 V!48119)) )
))
(declare-datatypes ((List!28185 0))(
  ( (Nil!28182) (Cons!28181 (h!29390 tuple2!20954) (t!41683 List!28185)) )
))
(declare-datatypes ((ListLongMap!18839 0))(
  ( (ListLongMap!18840 (toList!9435 List!28185)) )
))
(declare-fun lt!568674 () ListLongMap!18839)

(declare-fun lt!568676 () ListLongMap!18839)

(assert (=> b!1257329 (= lt!568674 lt!568676)))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!48119)

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!48119)

(declare-datatypes ((ValueCell!15269 0))(
  ( (ValueCellFull!15269 (v!18797 V!48119)) (EmptyCell!15269) )
))
(declare-datatypes ((array!81765 0))(
  ( (array!81766 (arr!39435 (Array (_ BitVec 32) ValueCell!15269)) (size!39972 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81765)

(declare-fun minValueBefore!43 () V!48119)

(declare-datatypes ((Unit!41844 0))(
  ( (Unit!41845) )
))
(declare-fun lt!568675 () Unit!41844)

(declare-datatypes ((array!81767 0))(
  ( (array!81768 (arr!39436 (Array (_ BitVec 32) (_ BitVec 64))) (size!39973 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81767)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1105 (array!81767 array!81765 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48119 V!48119 V!48119 V!48119 (_ BitVec 32) Int) Unit!41844)

(assert (=> b!1257329 (= lt!568675 (lemmaNoChangeToArrayThenSameMapNoExtras!1105 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5787 (array!81767 array!81765 (_ BitVec 32) (_ BitVec 32) V!48119 V!48119 (_ BitVec 32) Int) ListLongMap!18839)

(assert (=> b!1257329 (= lt!568676 (getCurrentListMapNoExtraKeys!5787 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1257329 (= lt!568674 (getCurrentListMapNoExtraKeys!5787 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1257330 () Bool)

(declare-fun res!838209 () Bool)

(assert (=> b!1257330 (=> (not res!838209) (not e!714978))))

(declare-datatypes ((List!28186 0))(
  ( (Nil!28183) (Cons!28182 (h!29391 (_ BitVec 64)) (t!41684 List!28186)) )
))
(declare-fun arrayNoDuplicates!0 (array!81767 (_ BitVec 32) List!28186) Bool)

(assert (=> b!1257330 (= res!838209 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28183))))

(declare-fun b!1257331 () Bool)

(declare-fun e!714977 () Bool)

(declare-fun tp_is_empty!32065 () Bool)

(assert (=> b!1257331 (= e!714977 tp_is_empty!32065)))

(declare-fun b!1257332 () Bool)

(declare-fun e!714979 () Bool)

(assert (=> b!1257332 (= e!714979 tp_is_empty!32065)))

(declare-fun mapIsEmpty!49888 () Bool)

(declare-fun mapRes!49888 () Bool)

(assert (=> mapIsEmpty!49888 mapRes!49888))

(declare-fun b!1257333 () Bool)

(declare-fun res!838207 () Bool)

(assert (=> b!1257333 (=> (not res!838207) (not e!714978))))

(assert (=> b!1257333 (= res!838207 (and (= (size!39972 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39973 _keys!1118) (size!39972 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1257334 () Bool)

(declare-fun res!838210 () Bool)

(assert (=> b!1257334 (=> (not res!838210) (not e!714978))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81767 (_ BitVec 32)) Bool)

(assert (=> b!1257334 (= res!838210 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1257335 () Bool)

(declare-fun e!714980 () Bool)

(assert (=> b!1257335 (= e!714980 (and e!714979 mapRes!49888))))

(declare-fun condMapEmpty!49888 () Bool)

(declare-fun mapDefault!49888 () ValueCell!15269)

