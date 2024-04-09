; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!105760 () Bool)

(assert start!105760)

(declare-fun b_free!27309 () Bool)

(declare-fun b_next!27309 () Bool)

(assert (=> start!105760 (= b_free!27309 (not b_next!27309))))

(declare-fun tp!95454 () Bool)

(declare-fun b_and!45203 () Bool)

(assert (=> start!105760 (= tp!95454 b_and!45203)))

(declare-fun b!1259294 () Bool)

(declare-fun e!716421 () Bool)

(assert (=> b!1259294 (= e!716421 true)))

(declare-datatypes ((V!48313 0))(
  ( (V!48314 (val!16168 Int)) )
))
(declare-datatypes ((tuple2!21058 0))(
  ( (tuple2!21059 (_1!10539 (_ BitVec 64)) (_2!10539 V!48313)) )
))
(declare-datatypes ((List!28286 0))(
  ( (Nil!28283) (Cons!28282 (h!29491 tuple2!21058) (t!41788 List!28286)) )
))
(declare-datatypes ((ListLongMap!18943 0))(
  ( (ListLongMap!18944 (toList!9487 List!28286)) )
))
(declare-fun lt!569961 () ListLongMap!18943)

(declare-fun lt!569955 () ListLongMap!18943)

(declare-fun -!2120 (ListLongMap!18943 (_ BitVec 64)) ListLongMap!18943)

(assert (=> b!1259294 (= lt!569961 (-!2120 lt!569955 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!569957 () ListLongMap!18943)

(declare-fun lt!569956 () ListLongMap!18943)

(assert (=> b!1259294 (= (-!2120 lt!569957 #b1000000000000000000000000000000000000000000000000000000000000000) lt!569956)))

(declare-datatypes ((Unit!41943 0))(
  ( (Unit!41944) )
))
(declare-fun lt!569954 () Unit!41943)

(declare-fun minValueBefore!43 () V!48313)

(declare-fun addThenRemoveForNewKeyIsSame!345 (ListLongMap!18943 (_ BitVec 64) V!48313) Unit!41943)

(assert (=> b!1259294 (= lt!569954 (addThenRemoveForNewKeyIsSame!345 lt!569956 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))

(declare-fun e!716424 () Bool)

(assert (=> b!1259294 e!716424))

(declare-fun res!839376 () Bool)

(assert (=> b!1259294 (=> (not res!839376) (not e!716424))))

(assert (=> b!1259294 (= res!839376 (= lt!569955 lt!569957))))

(declare-fun +!4185 (ListLongMap!18943 tuple2!21058) ListLongMap!18943)

(assert (=> b!1259294 (= lt!569957 (+!4185 lt!569956 (tuple2!21059 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43)))))

(declare-fun lt!569962 () ListLongMap!18943)

(declare-fun lt!569960 () tuple2!21058)

(assert (=> b!1259294 (= lt!569956 (+!4185 lt!569962 lt!569960))))

(declare-fun zeroValue!871 () V!48313)

(assert (=> b!1259294 (= lt!569960 (tuple2!21059 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!871))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!48313)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((array!82035 0))(
  ( (array!82036 (arr!39568 (Array (_ BitVec 32) (_ BitVec 64))) (size!40105 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!82035)

(declare-datatypes ((ValueCell!15342 0))(
  ( (ValueCellFull!15342 (v!18870 V!48313)) (EmptyCell!15342) )
))
(declare-datatypes ((array!82037 0))(
  ( (array!82038 (arr!39569 (Array (_ BitVec 32) ValueCell!15342)) (size!40106 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!82037)

(declare-fun lt!569959 () ListLongMap!18943)

(declare-fun getCurrentListMap!4624 (array!82035 array!82037 (_ BitVec 32) (_ BitVec 32) V!48313 V!48313 (_ BitVec 32) Int) ListLongMap!18943)

(assert (=> b!1259294 (= lt!569959 (getCurrentListMap!4624 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(assert (=> b!1259294 (= lt!569955 (getCurrentListMap!4624 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun mapNonEmpty!50113 () Bool)

(declare-fun mapRes!50113 () Bool)

(declare-fun tp!95453 () Bool)

(declare-fun e!716425 () Bool)

(assert (=> mapNonEmpty!50113 (= mapRes!50113 (and tp!95453 e!716425))))

(declare-fun mapValue!50113 () ValueCell!15342)

(declare-fun mapKey!50113 () (_ BitVec 32))

(declare-fun mapRest!50113 () (Array (_ BitVec 32) ValueCell!15342))

(assert (=> mapNonEmpty!50113 (= (arr!39569 _values!914) (store mapRest!50113 mapKey!50113 mapValue!50113))))

(declare-fun mapIsEmpty!50113 () Bool)

(assert (=> mapIsEmpty!50113 mapRes!50113))

(declare-fun b!1259295 () Bool)

(declare-fun e!716420 () Bool)

(declare-fun tp_is_empty!32211 () Bool)

(assert (=> b!1259295 (= e!716420 tp_is_empty!32211)))

(declare-fun b!1259296 () Bool)

(assert (=> b!1259296 (= e!716425 tp_is_empty!32211)))

(declare-fun b!1259297 () Bool)

(declare-fun res!839375 () Bool)

(declare-fun e!716423 () Bool)

(assert (=> b!1259297 (=> (not res!839375) (not e!716423))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82035 (_ BitVec 32)) Bool)

(assert (=> b!1259297 (= res!839375 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1259298 () Bool)

(declare-fun lt!569958 () ListLongMap!18943)

(assert (=> b!1259298 (= e!716424 (= lt!569959 (+!4185 lt!569958 lt!569960)))))

(declare-fun b!1259299 () Bool)

(assert (=> b!1259299 (= e!716423 (not e!716421))))

(declare-fun res!839374 () Bool)

(assert (=> b!1259299 (=> res!839374 e!716421)))

(assert (=> b!1259299 (= res!839374 (or (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1259299 (= lt!569962 lt!569958)))

(declare-fun lt!569953 () Unit!41943)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1153 (array!82035 array!82037 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48313 V!48313 V!48313 V!48313 (_ BitVec 32) Int) Unit!41943)

(assert (=> b!1259299 (= lt!569953 (lemmaNoChangeToArrayThenSameMapNoExtras!1153 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5835 (array!82035 array!82037 (_ BitVec 32) (_ BitVec 32) V!48313 V!48313 (_ BitVec 32) Int) ListLongMap!18943)

(assert (=> b!1259299 (= lt!569958 (getCurrentListMapNoExtraKeys!5835 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1259299 (= lt!569962 (getCurrentListMapNoExtraKeys!5835 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun res!839372 () Bool)

(assert (=> start!105760 (=> (not res!839372) (not e!716423))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105760 (= res!839372 (validMask!0 mask!1466))))

(assert (=> start!105760 e!716423))

(assert (=> start!105760 true))

(assert (=> start!105760 tp!95454))

(assert (=> start!105760 tp_is_empty!32211))

(declare-fun array_inv!30083 (array!82035) Bool)

(assert (=> start!105760 (array_inv!30083 _keys!1118)))

(declare-fun e!716422 () Bool)

(declare-fun array_inv!30084 (array!82037) Bool)

(assert (=> start!105760 (and (array_inv!30084 _values!914) e!716422)))

(declare-fun b!1259300 () Bool)

(assert (=> b!1259300 (= e!716422 (and e!716420 mapRes!50113))))

(declare-fun condMapEmpty!50113 () Bool)

(declare-fun mapDefault!50113 () ValueCell!15342)

(assert (=> b!1259300 (= condMapEmpty!50113 (= (arr!39569 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15342)) mapDefault!50113)))))

(declare-fun b!1259301 () Bool)

(declare-fun res!839371 () Bool)

(assert (=> b!1259301 (=> (not res!839371) (not e!716423))))

(declare-datatypes ((List!28287 0))(
  ( (Nil!28284) (Cons!28283 (h!29492 (_ BitVec 64)) (t!41789 List!28287)) )
))
(declare-fun arrayNoDuplicates!0 (array!82035 (_ BitVec 32) List!28287) Bool)

(assert (=> b!1259301 (= res!839371 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28284))))

(declare-fun b!1259302 () Bool)

(declare-fun res!839373 () Bool)

(assert (=> b!1259302 (=> (not res!839373) (not e!716423))))

(assert (=> b!1259302 (= res!839373 (and (= (size!40106 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!40105 _keys!1118) (size!40106 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (= (and start!105760 res!839372) b!1259302))

(assert (= (and b!1259302 res!839373) b!1259297))

(assert (= (and b!1259297 res!839375) b!1259301))

(assert (= (and b!1259301 res!839371) b!1259299))

(assert (= (and b!1259299 (not res!839374)) b!1259294))

(assert (= (and b!1259294 res!839376) b!1259298))

(assert (= (and b!1259300 condMapEmpty!50113) mapIsEmpty!50113))

(assert (= (and b!1259300 (not condMapEmpty!50113)) mapNonEmpty!50113))

(get-info :version)

(assert (= (and mapNonEmpty!50113 ((_ is ValueCellFull!15342) mapValue!50113)) b!1259296))

(assert (= (and b!1259300 ((_ is ValueCellFull!15342) mapDefault!50113)) b!1259295))

(assert (= start!105760 b!1259300))

(declare-fun m!1159801 () Bool)

(assert (=> start!105760 m!1159801))

(declare-fun m!1159803 () Bool)

(assert (=> start!105760 m!1159803))

(declare-fun m!1159805 () Bool)

(assert (=> start!105760 m!1159805))

(declare-fun m!1159807 () Bool)

(assert (=> b!1259297 m!1159807))

(declare-fun m!1159809 () Bool)

(assert (=> b!1259298 m!1159809))

(declare-fun m!1159811 () Bool)

(assert (=> b!1259294 m!1159811))

(declare-fun m!1159813 () Bool)

(assert (=> b!1259294 m!1159813))

(declare-fun m!1159815 () Bool)

(assert (=> b!1259294 m!1159815))

(declare-fun m!1159817 () Bool)

(assert (=> b!1259294 m!1159817))

(declare-fun m!1159819 () Bool)

(assert (=> b!1259294 m!1159819))

(declare-fun m!1159821 () Bool)

(assert (=> b!1259294 m!1159821))

(declare-fun m!1159823 () Bool)

(assert (=> b!1259294 m!1159823))

(declare-fun m!1159825 () Bool)

(assert (=> b!1259301 m!1159825))

(declare-fun m!1159827 () Bool)

(assert (=> b!1259299 m!1159827))

(declare-fun m!1159829 () Bool)

(assert (=> b!1259299 m!1159829))

(declare-fun m!1159831 () Bool)

(assert (=> b!1259299 m!1159831))

(declare-fun m!1159833 () Bool)

(assert (=> mapNonEmpty!50113 m!1159833))

(check-sat (not b_next!27309) (not b!1259299) tp_is_empty!32211 b_and!45203 (not b!1259298) (not b!1259297) (not start!105760) (not b!1259294) (not b!1259301) (not mapNonEmpty!50113))
(check-sat b_and!45203 (not b_next!27309))
