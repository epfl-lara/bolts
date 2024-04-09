; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!105516 () Bool)

(assert start!105516)

(declare-fun b_free!27117 () Bool)

(declare-fun b_next!27117 () Bool)

(assert (=> start!105516 (= b_free!27117 (not b_next!27117))))

(declare-fun tp!94868 () Bool)

(declare-fun b_and!44983 () Bool)

(assert (=> start!105516 (= tp!94868 b_and!44983)))

(declare-fun b!1256555 () Bool)

(declare-fun e!714403 () Bool)

(declare-fun e!714401 () Bool)

(declare-fun mapRes!49816 () Bool)

(assert (=> b!1256555 (= e!714403 (and e!714401 mapRes!49816))))

(declare-fun condMapEmpty!49816 () Bool)

(declare-datatypes ((V!48057 0))(
  ( (V!48058 (val!16072 Int)) )
))
(declare-datatypes ((ValueCell!15246 0))(
  ( (ValueCellFull!15246 (v!18773 V!48057)) (EmptyCell!15246) )
))
(declare-datatypes ((array!81673 0))(
  ( (array!81674 (arr!39390 (Array (_ BitVec 32) ValueCell!15246)) (size!39927 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81673)

(declare-fun mapDefault!49816 () ValueCell!15246)

(assert (=> b!1256555 (= condMapEmpty!49816 (= (arr!39390 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15246)) mapDefault!49816)))))

(declare-fun b!1256556 () Bool)

(declare-fun res!837738 () Bool)

(declare-fun e!714399 () Bool)

(assert (=> b!1256556 (=> (not res!837738) (not e!714399))))

(declare-datatypes ((array!81675 0))(
  ( (array!81676 (arr!39391 (Array (_ BitVec 32) (_ BitVec 64))) (size!39928 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81675)

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81675 (_ BitVec 32)) Bool)

(assert (=> b!1256556 (= res!837738 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1256557 () Bool)

(declare-fun e!714404 () Bool)

(assert (=> b!1256557 (= e!714404 true)))

(declare-datatypes ((tuple2!20914 0))(
  ( (tuple2!20915 (_1!10467 (_ BitVec 64)) (_2!10467 V!48057)) )
))
(declare-datatypes ((List!28148 0))(
  ( (Nil!28145) (Cons!28144 (h!29353 tuple2!20914) (t!41644 List!28148)) )
))
(declare-datatypes ((ListLongMap!18799 0))(
  ( (ListLongMap!18800 (toList!9415 List!28148)) )
))
(declare-fun lt!568209 () ListLongMap!18799)

(declare-fun -!2093 (ListLongMap!18799 (_ BitVec 64)) ListLongMap!18799)

(assert (=> b!1256557 (= (-!2093 lt!568209 #b1000000000000000000000000000000000000000000000000000000000000000) lt!568209)))

(declare-datatypes ((Unit!41802 0))(
  ( (Unit!41803) )
))
(declare-fun lt!568212 () Unit!41802)

(declare-fun removeNotPresentStillSame!126 (ListLongMap!18799 (_ BitVec 64)) Unit!41802)

(assert (=> b!1256557 (= lt!568212 (removeNotPresentStillSame!126 lt!568209 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1256558 () Bool)

(declare-fun e!714402 () Bool)

(assert (=> b!1256558 (= e!714399 (not e!714402))))

(declare-fun res!837740 () Bool)

(assert (=> b!1256558 (=> res!837740 e!714402)))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(assert (=> b!1256558 (= res!837740 (or (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!568211 () ListLongMap!18799)

(declare-fun lt!568210 () ListLongMap!18799)

(assert (=> b!1256558 (= lt!568211 lt!568210)))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!48057)

(declare-fun lt!568213 () Unit!41802)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!48057)

(declare-fun minValueBefore!43 () V!48057)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1088 (array!81675 array!81673 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48057 V!48057 V!48057 V!48057 (_ BitVec 32) Int) Unit!41802)

(assert (=> b!1256558 (= lt!568213 (lemmaNoChangeToArrayThenSameMapNoExtras!1088 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5770 (array!81675 array!81673 (_ BitVec 32) (_ BitVec 32) V!48057 V!48057 (_ BitVec 32) Int) ListLongMap!18799)

(assert (=> b!1256558 (= lt!568210 (getCurrentListMapNoExtraKeys!5770 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1256558 (= lt!568211 (getCurrentListMapNoExtraKeys!5770 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1256559 () Bool)

(declare-fun res!837741 () Bool)

(assert (=> b!1256559 (=> (not res!837741) (not e!714399))))

(declare-datatypes ((List!28149 0))(
  ( (Nil!28146) (Cons!28145 (h!29354 (_ BitVec 64)) (t!41645 List!28149)) )
))
(declare-fun arrayNoDuplicates!0 (array!81675 (_ BitVec 32) List!28149) Bool)

(assert (=> b!1256559 (= res!837741 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28146))))

(declare-fun res!837736 () Bool)

(assert (=> start!105516 (=> (not res!837736) (not e!714399))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105516 (= res!837736 (validMask!0 mask!1466))))

(assert (=> start!105516 e!714399))

(assert (=> start!105516 true))

(assert (=> start!105516 tp!94868))

(declare-fun tp_is_empty!32019 () Bool)

(assert (=> start!105516 tp_is_empty!32019))

(declare-fun array_inv!29955 (array!81675) Bool)

(assert (=> start!105516 (array_inv!29955 _keys!1118)))

(declare-fun array_inv!29956 (array!81673) Bool)

(assert (=> start!105516 (and (array_inv!29956 _values!914) e!714403)))

(declare-fun mapIsEmpty!49816 () Bool)

(assert (=> mapIsEmpty!49816 mapRes!49816))

(declare-fun mapNonEmpty!49816 () Bool)

(declare-fun tp!94869 () Bool)

(declare-fun e!714400 () Bool)

(assert (=> mapNonEmpty!49816 (= mapRes!49816 (and tp!94869 e!714400))))

(declare-fun mapRest!49816 () (Array (_ BitVec 32) ValueCell!15246))

(declare-fun mapValue!49816 () ValueCell!15246)

(declare-fun mapKey!49816 () (_ BitVec 32))

(assert (=> mapNonEmpty!49816 (= (arr!39390 _values!914) (store mapRest!49816 mapKey!49816 mapValue!49816))))

(declare-fun b!1256560 () Bool)

(assert (=> b!1256560 (= e!714401 tp_is_empty!32019)))

(declare-fun b!1256561 () Bool)

(declare-fun res!837739 () Bool)

(assert (=> b!1256561 (=> (not res!837739) (not e!714399))))

(assert (=> b!1256561 (= res!837739 (and (= (size!39927 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39928 _keys!1118) (size!39927 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1256562 () Bool)

(assert (=> b!1256562 (= e!714402 e!714404)))

(declare-fun res!837737 () Bool)

(assert (=> b!1256562 (=> res!837737 e!714404)))

(declare-fun contains!7571 (ListLongMap!18799 (_ BitVec 64)) Bool)

(assert (=> b!1256562 (= res!837737 (contains!7571 lt!568209 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun getCurrentListMap!4575 (array!81675 array!81673 (_ BitVec 32) (_ BitVec 32) V!48057 V!48057 (_ BitVec 32) Int) ListLongMap!18799)

(assert (=> b!1256562 (= lt!568209 (getCurrentListMap!4575 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1256563 () Bool)

(assert (=> b!1256563 (= e!714400 tp_is_empty!32019)))

(assert (= (and start!105516 res!837736) b!1256561))

(assert (= (and b!1256561 res!837739) b!1256556))

(assert (= (and b!1256556 res!837738) b!1256559))

(assert (= (and b!1256559 res!837741) b!1256558))

(assert (= (and b!1256558 (not res!837740)) b!1256562))

(assert (= (and b!1256562 (not res!837737)) b!1256557))

(assert (= (and b!1256555 condMapEmpty!49816) mapIsEmpty!49816))

(assert (= (and b!1256555 (not condMapEmpty!49816)) mapNonEmpty!49816))

(get-info :version)

(assert (= (and mapNonEmpty!49816 ((_ is ValueCellFull!15246) mapValue!49816)) b!1256563))

(assert (= (and b!1256555 ((_ is ValueCellFull!15246) mapDefault!49816)) b!1256560))

(assert (= start!105516 b!1256555))

(declare-fun m!1157239 () Bool)

(assert (=> b!1256562 m!1157239))

(declare-fun m!1157241 () Bool)

(assert (=> b!1256562 m!1157241))

(declare-fun m!1157243 () Bool)

(assert (=> mapNonEmpty!49816 m!1157243))

(declare-fun m!1157245 () Bool)

(assert (=> b!1256559 m!1157245))

(declare-fun m!1157247 () Bool)

(assert (=> b!1256558 m!1157247))

(declare-fun m!1157249 () Bool)

(assert (=> b!1256558 m!1157249))

(declare-fun m!1157251 () Bool)

(assert (=> b!1256558 m!1157251))

(declare-fun m!1157253 () Bool)

(assert (=> b!1256556 m!1157253))

(declare-fun m!1157255 () Bool)

(assert (=> start!105516 m!1157255))

(declare-fun m!1157257 () Bool)

(assert (=> start!105516 m!1157257))

(declare-fun m!1157259 () Bool)

(assert (=> start!105516 m!1157259))

(declare-fun m!1157261 () Bool)

(assert (=> b!1256557 m!1157261))

(declare-fun m!1157263 () Bool)

(assert (=> b!1256557 m!1157263))

(check-sat (not b_next!27117) b_and!44983 (not mapNonEmpty!49816) (not b!1256557) (not b!1256562) (not b!1256556) (not b!1256558) (not start!105516) (not b!1256559) tp_is_empty!32019)
(check-sat b_and!44983 (not b_next!27117))
