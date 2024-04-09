; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!105470 () Bool)

(assert start!105470)

(declare-fun b_free!27093 () Bool)

(declare-fun b_next!27093 () Bool)

(assert (=> start!105470 (= b_free!27093 (not b_next!27093))))

(declare-fun tp!94793 () Bool)

(declare-fun b_and!44949 () Bool)

(assert (=> start!105470 (= tp!94793 b_and!44949)))

(declare-fun b!1256075 () Bool)

(declare-fun res!837460 () Bool)

(declare-fun e!714046 () Bool)

(assert (=> b!1256075 (=> (not res!837460) (not e!714046))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((array!81623 0))(
  ( (array!81624 (arr!39366 (Array (_ BitVec 32) (_ BitVec 64))) (size!39903 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81623)

(declare-datatypes ((V!48025 0))(
  ( (V!48026 (val!16060 Int)) )
))
(declare-datatypes ((ValueCell!15234 0))(
  ( (ValueCellFull!15234 (v!18760 V!48025)) (EmptyCell!15234) )
))
(declare-datatypes ((array!81625 0))(
  ( (array!81626 (arr!39367 (Array (_ BitVec 32) ValueCell!15234)) (size!39904 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81625)

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(assert (=> b!1256075 (= res!837460 (and (= (size!39904 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39903 _keys!1118) (size!39904 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!49777 () Bool)

(declare-fun mapRes!49777 () Bool)

(declare-fun tp!94794 () Bool)

(declare-fun e!714051 () Bool)

(assert (=> mapNonEmpty!49777 (= mapRes!49777 (and tp!94794 e!714051))))

(declare-fun mapRest!49777 () (Array (_ BitVec 32) ValueCell!15234))

(declare-fun mapValue!49777 () ValueCell!15234)

(declare-fun mapKey!49777 () (_ BitVec 32))

(assert (=> mapNonEmpty!49777 (= (arr!39367 _values!914) (store mapRest!49777 mapKey!49777 mapValue!49777))))

(declare-fun b!1256076 () Bool)

(declare-fun res!837459 () Bool)

(assert (=> b!1256076 (=> (not res!837459) (not e!714046))))

(declare-datatypes ((List!28129 0))(
  ( (Nil!28126) (Cons!28125 (h!29334 (_ BitVec 64)) (t!41623 List!28129)) )
))
(declare-fun arrayNoDuplicates!0 (array!81623 (_ BitVec 32) List!28129) Bool)

(assert (=> b!1256076 (= res!837459 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28126))))

(declare-fun b!1256077 () Bool)

(declare-fun e!714047 () Bool)

(declare-fun e!714049 () Bool)

(assert (=> b!1256077 (= e!714047 e!714049)))

(declare-fun res!837461 () Bool)

(assert (=> b!1256077 (=> res!837461 e!714049)))

(declare-datatypes ((tuple2!20894 0))(
  ( (tuple2!20895 (_1!10457 (_ BitVec 64)) (_2!10457 V!48025)) )
))
(declare-datatypes ((List!28130 0))(
  ( (Nil!28127) (Cons!28126 (h!29335 tuple2!20894) (t!41624 List!28130)) )
))
(declare-datatypes ((ListLongMap!18779 0))(
  ( (ListLongMap!18780 (toList!9405 List!28130)) )
))
(declare-fun lt!567905 () ListLongMap!18779)

(declare-fun contains!7561 (ListLongMap!18779 (_ BitVec 64)) Bool)

(assert (=> b!1256077 (= res!837461 (contains!7561 lt!567905 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun defaultEntry!922 () Int)

(declare-fun zeroValue!871 () V!48025)

(declare-fun minValueBefore!43 () V!48025)

(declare-fun getCurrentListMap!4566 (array!81623 array!81625 (_ BitVec 32) (_ BitVec 32) V!48025 V!48025 (_ BitVec 32) Int) ListLongMap!18779)

(assert (=> b!1256077 (= lt!567905 (getCurrentListMap!4566 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1256078 () Bool)

(declare-fun e!714050 () Bool)

(declare-fun tp_is_empty!31995 () Bool)

(assert (=> b!1256078 (= e!714050 tp_is_empty!31995)))

(declare-fun mapIsEmpty!49777 () Bool)

(assert (=> mapIsEmpty!49777 mapRes!49777))

(declare-fun b!1256079 () Bool)

(assert (=> b!1256079 (= e!714051 tp_is_empty!31995)))

(declare-fun b!1256080 () Bool)

(assert (=> b!1256080 (= e!714046 (not e!714047))))

(declare-fun res!837462 () Bool)

(assert (=> b!1256080 (=> res!837462 e!714047)))

(assert (=> b!1256080 (= res!837462 (or (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!567906 () ListLongMap!18779)

(declare-fun lt!567908 () ListLongMap!18779)

(assert (=> b!1256080 (= lt!567906 lt!567908)))

(declare-datatypes ((Unit!41782 0))(
  ( (Unit!41783) )
))
(declare-fun lt!567909 () Unit!41782)

(declare-fun minValueAfter!43 () V!48025)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1079 (array!81623 array!81625 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48025 V!48025 V!48025 V!48025 (_ BitVec 32) Int) Unit!41782)

(assert (=> b!1256080 (= lt!567909 (lemmaNoChangeToArrayThenSameMapNoExtras!1079 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5761 (array!81623 array!81625 (_ BitVec 32) (_ BitVec 32) V!48025 V!48025 (_ BitVec 32) Int) ListLongMap!18779)

(assert (=> b!1256080 (= lt!567908 (getCurrentListMapNoExtraKeys!5761 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1256080 (= lt!567906 (getCurrentListMapNoExtraKeys!5761 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun res!837463 () Bool)

(assert (=> start!105470 (=> (not res!837463) (not e!714046))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105470 (= res!837463 (validMask!0 mask!1466))))

(assert (=> start!105470 e!714046))

(assert (=> start!105470 true))

(assert (=> start!105470 tp!94793))

(assert (=> start!105470 tp_is_empty!31995))

(declare-fun array_inv!29935 (array!81623) Bool)

(assert (=> start!105470 (array_inv!29935 _keys!1118)))

(declare-fun e!714048 () Bool)

(declare-fun array_inv!29936 (array!81625) Bool)

(assert (=> start!105470 (and (array_inv!29936 _values!914) e!714048)))

(declare-fun b!1256074 () Bool)

(assert (=> b!1256074 (= e!714048 (and e!714050 mapRes!49777))))

(declare-fun condMapEmpty!49777 () Bool)

(declare-fun mapDefault!49777 () ValueCell!15234)

(assert (=> b!1256074 (= condMapEmpty!49777 (= (arr!39367 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15234)) mapDefault!49777)))))

(declare-fun b!1256081 () Bool)

(assert (=> b!1256081 (= e!714049 true)))

(declare-fun -!2086 (ListLongMap!18779 (_ BitVec 64)) ListLongMap!18779)

(assert (=> b!1256081 (= (-!2086 lt!567905 #b1000000000000000000000000000000000000000000000000000000000000000) lt!567905)))

(declare-fun lt!567907 () Unit!41782)

(declare-fun removeNotPresentStillSame!119 (ListLongMap!18779 (_ BitVec 64)) Unit!41782)

(assert (=> b!1256081 (= lt!567907 (removeNotPresentStillSame!119 lt!567905 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1256082 () Bool)

(declare-fun res!837464 () Bool)

(assert (=> b!1256082 (=> (not res!837464) (not e!714046))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81623 (_ BitVec 32)) Bool)

(assert (=> b!1256082 (= res!837464 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(assert (= (and start!105470 res!837463) b!1256075))

(assert (= (and b!1256075 res!837460) b!1256082))

(assert (= (and b!1256082 res!837464) b!1256076))

(assert (= (and b!1256076 res!837459) b!1256080))

(assert (= (and b!1256080 (not res!837462)) b!1256077))

(assert (= (and b!1256077 (not res!837461)) b!1256081))

(assert (= (and b!1256074 condMapEmpty!49777) mapIsEmpty!49777))

(assert (= (and b!1256074 (not condMapEmpty!49777)) mapNonEmpty!49777))

(get-info :version)

(assert (= (and mapNonEmpty!49777 ((_ is ValueCellFull!15234) mapValue!49777)) b!1256079))

(assert (= (and b!1256074 ((_ is ValueCellFull!15234) mapDefault!49777)) b!1256078))

(assert (= start!105470 b!1256074))

(declare-fun m!1156801 () Bool)

(assert (=> mapNonEmpty!49777 m!1156801))

(declare-fun m!1156803 () Bool)

(assert (=> start!105470 m!1156803))

(declare-fun m!1156805 () Bool)

(assert (=> start!105470 m!1156805))

(declare-fun m!1156807 () Bool)

(assert (=> start!105470 m!1156807))

(declare-fun m!1156809 () Bool)

(assert (=> b!1256082 m!1156809))

(declare-fun m!1156811 () Bool)

(assert (=> b!1256077 m!1156811))

(declare-fun m!1156813 () Bool)

(assert (=> b!1256077 m!1156813))

(declare-fun m!1156815 () Bool)

(assert (=> b!1256081 m!1156815))

(declare-fun m!1156817 () Bool)

(assert (=> b!1256081 m!1156817))

(declare-fun m!1156819 () Bool)

(assert (=> b!1256080 m!1156819))

(declare-fun m!1156821 () Bool)

(assert (=> b!1256080 m!1156821))

(declare-fun m!1156823 () Bool)

(assert (=> b!1256080 m!1156823))

(declare-fun m!1156825 () Bool)

(assert (=> b!1256076 m!1156825))

(check-sat b_and!44949 (not b!1256080) (not b!1256077) (not b!1256076) tp_is_empty!31995 (not start!105470) (not b_next!27093) (not mapNonEmpty!49777) (not b!1256081) (not b!1256082))
(check-sat b_and!44949 (not b_next!27093))
