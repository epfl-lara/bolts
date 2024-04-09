; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!105842 () Bool)

(assert start!105842)

(declare-fun b_free!27369 () Bool)

(declare-fun b_next!27369 () Bool)

(assert (=> start!105842 (= b_free!27369 (not b_next!27369))))

(declare-fun tp!95637 () Bool)

(declare-fun b_and!45275 () Bool)

(assert (=> start!105842 (= tp!95637 b_and!45275)))

(declare-fun b!1260292 () Bool)

(declare-fun res!839999 () Bool)

(declare-fun e!717171 () Bool)

(assert (=> b!1260292 (=> (not res!839999) (not e!717171))))

(declare-datatypes ((array!82149 0))(
  ( (array!82150 (arr!39624 (Array (_ BitVec 32) (_ BitVec 64))) (size!40161 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!82149)

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82149 (_ BitVec 32)) Bool)

(assert (=> b!1260292 (= res!839999 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1260293 () Bool)

(declare-fun e!717175 () Bool)

(declare-datatypes ((V!48393 0))(
  ( (V!48394 (val!16198 Int)) )
))
(declare-datatypes ((tuple2!21106 0))(
  ( (tuple2!21107 (_1!10563 (_ BitVec 64)) (_2!10563 V!48393)) )
))
(declare-datatypes ((List!28327 0))(
  ( (Nil!28324) (Cons!28323 (h!29532 tuple2!21106) (t!41831 List!28327)) )
))
(declare-datatypes ((ListLongMap!18991 0))(
  ( (ListLongMap!18992 (toList!9511 List!28327)) )
))
(declare-fun lt!571005 () ListLongMap!18991)

(declare-fun lt!570999 () ListLongMap!18991)

(declare-fun lt!571002 () tuple2!21106)

(declare-fun +!4207 (ListLongMap!18991 tuple2!21106) ListLongMap!18991)

(assert (=> b!1260293 (= e!717175 (= lt!570999 (+!4207 lt!571005 lt!571002)))))

(declare-fun b!1260294 () Bool)

(declare-fun e!717176 () Bool)

(assert (=> b!1260294 (= e!717176 true)))

(declare-fun lt!571004 () ListLongMap!18991)

(declare-fun lt!571001 () ListLongMap!18991)

(declare-fun -!2138 (ListLongMap!18991 (_ BitVec 64)) ListLongMap!18991)

(assert (=> b!1260294 (= lt!571004 (-!2138 lt!571001 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!571008 () ListLongMap!18991)

(declare-fun lt!571006 () ListLongMap!18991)

(assert (=> b!1260294 (= (-!2138 lt!571008 #b1000000000000000000000000000000000000000000000000000000000000000) lt!571006)))

(declare-datatypes ((Unit!41989 0))(
  ( (Unit!41990) )
))
(declare-fun lt!571000 () Unit!41989)

(declare-fun minValueBefore!43 () V!48393)

(declare-fun addThenRemoveForNewKeyIsSame!363 (ListLongMap!18991 (_ BitVec 64) V!48393) Unit!41989)

(assert (=> b!1260294 (= lt!571000 (addThenRemoveForNewKeyIsSame!363 lt!571006 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))

(assert (=> b!1260294 e!717175))

(declare-fun res!840001 () Bool)

(assert (=> b!1260294 (=> (not res!840001) (not e!717175))))

(assert (=> b!1260294 (= res!840001 (= lt!571001 lt!571008))))

(assert (=> b!1260294 (= lt!571008 (+!4207 lt!571006 (tuple2!21107 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43)))))

(declare-fun lt!571007 () ListLongMap!18991)

(assert (=> b!1260294 (= lt!571006 (+!4207 lt!571007 lt!571002))))

(declare-fun zeroValue!871 () V!48393)

(assert (=> b!1260294 (= lt!571002 (tuple2!21107 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!871))))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!48393)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((ValueCell!15372 0))(
  ( (ValueCellFull!15372 (v!18901 V!48393)) (EmptyCell!15372) )
))
(declare-datatypes ((array!82151 0))(
  ( (array!82152 (arr!39625 (Array (_ BitVec 32) ValueCell!15372)) (size!40162 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!82151)

(declare-fun getCurrentListMap!4642 (array!82149 array!82151 (_ BitVec 32) (_ BitVec 32) V!48393 V!48393 (_ BitVec 32) Int) ListLongMap!18991)

(assert (=> b!1260294 (= lt!570999 (getCurrentListMap!4642 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(assert (=> b!1260294 (= lt!571001 (getCurrentListMap!4642 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1260295 () Bool)

(declare-fun e!717172 () Bool)

(declare-fun tp_is_empty!32271 () Bool)

(assert (=> b!1260295 (= e!717172 tp_is_empty!32271)))

(declare-fun b!1260296 () Bool)

(declare-fun e!717177 () Bool)

(declare-fun e!717174 () Bool)

(declare-fun mapRes!50206 () Bool)

(assert (=> b!1260296 (= e!717177 (and e!717174 mapRes!50206))))

(declare-fun condMapEmpty!50206 () Bool)

(declare-fun mapDefault!50206 () ValueCell!15372)

(assert (=> b!1260296 (= condMapEmpty!50206 (= (arr!39625 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15372)) mapDefault!50206)))))

(declare-fun res!839998 () Bool)

(assert (=> start!105842 (=> (not res!839998) (not e!717171))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105842 (= res!839998 (validMask!0 mask!1466))))

(assert (=> start!105842 e!717171))

(assert (=> start!105842 true))

(assert (=> start!105842 tp!95637))

(assert (=> start!105842 tp_is_empty!32271))

(declare-fun array_inv!30117 (array!82149) Bool)

(assert (=> start!105842 (array_inv!30117 _keys!1118)))

(declare-fun array_inv!30118 (array!82151) Bool)

(assert (=> start!105842 (and (array_inv!30118 _values!914) e!717177)))

(declare-fun b!1260297 () Bool)

(assert (=> b!1260297 (= e!717174 tp_is_empty!32271)))

(declare-fun b!1260298 () Bool)

(declare-fun res!840000 () Bool)

(assert (=> b!1260298 (=> (not res!840000) (not e!717171))))

(declare-datatypes ((List!28328 0))(
  ( (Nil!28325) (Cons!28324 (h!29533 (_ BitVec 64)) (t!41832 List!28328)) )
))
(declare-fun arrayNoDuplicates!0 (array!82149 (_ BitVec 32) List!28328) Bool)

(assert (=> b!1260298 (= res!840000 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28325))))

(declare-fun mapNonEmpty!50206 () Bool)

(declare-fun tp!95636 () Bool)

(assert (=> mapNonEmpty!50206 (= mapRes!50206 (and tp!95636 e!717172))))

(declare-fun mapRest!50206 () (Array (_ BitVec 32) ValueCell!15372))

(declare-fun mapValue!50206 () ValueCell!15372)

(declare-fun mapKey!50206 () (_ BitVec 32))

(assert (=> mapNonEmpty!50206 (= (arr!39625 _values!914) (store mapRest!50206 mapKey!50206 mapValue!50206))))

(declare-fun b!1260299 () Bool)

(assert (=> b!1260299 (= e!717171 (not e!717176))))

(declare-fun res!840002 () Bool)

(assert (=> b!1260299 (=> res!840002 e!717176)))

(assert (=> b!1260299 (= res!840002 (or (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1260299 (= lt!571007 lt!571005)))

(declare-fun lt!571003 () Unit!41989)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1171 (array!82149 array!82151 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48393 V!48393 V!48393 V!48393 (_ BitVec 32) Int) Unit!41989)

(assert (=> b!1260299 (= lt!571003 (lemmaNoChangeToArrayThenSameMapNoExtras!1171 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5853 (array!82149 array!82151 (_ BitVec 32) (_ BitVec 32) V!48393 V!48393 (_ BitVec 32) Int) ListLongMap!18991)

(assert (=> b!1260299 (= lt!571005 (getCurrentListMapNoExtraKeys!5853 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1260299 (= lt!571007 (getCurrentListMapNoExtraKeys!5853 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1260300 () Bool)

(declare-fun res!839997 () Bool)

(assert (=> b!1260300 (=> (not res!839997) (not e!717171))))

(assert (=> b!1260300 (= res!839997 (and (= (size!40162 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!40161 _keys!1118) (size!40162 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!50206 () Bool)

(assert (=> mapIsEmpty!50206 mapRes!50206))

(assert (= (and start!105842 res!839998) b!1260300))

(assert (= (and b!1260300 res!839997) b!1260292))

(assert (= (and b!1260292 res!839999) b!1260298))

(assert (= (and b!1260298 res!840000) b!1260299))

(assert (= (and b!1260299 (not res!840002)) b!1260294))

(assert (= (and b!1260294 res!840001) b!1260293))

(assert (= (and b!1260296 condMapEmpty!50206) mapIsEmpty!50206))

(assert (= (and b!1260296 (not condMapEmpty!50206)) mapNonEmpty!50206))

(get-info :version)

(assert (= (and mapNonEmpty!50206 ((_ is ValueCellFull!15372) mapValue!50206)) b!1260295))

(assert (= (and b!1260296 ((_ is ValueCellFull!15372) mapDefault!50206)) b!1260297))

(assert (= start!105842 b!1260296))

(declare-fun m!1161029 () Bool)

(assert (=> start!105842 m!1161029))

(declare-fun m!1161031 () Bool)

(assert (=> start!105842 m!1161031))

(declare-fun m!1161033 () Bool)

(assert (=> start!105842 m!1161033))

(declare-fun m!1161035 () Bool)

(assert (=> b!1260293 m!1161035))

(declare-fun m!1161037 () Bool)

(assert (=> mapNonEmpty!50206 m!1161037))

(declare-fun m!1161039 () Bool)

(assert (=> b!1260292 m!1161039))

(declare-fun m!1161041 () Bool)

(assert (=> b!1260299 m!1161041))

(declare-fun m!1161043 () Bool)

(assert (=> b!1260299 m!1161043))

(declare-fun m!1161045 () Bool)

(assert (=> b!1260299 m!1161045))

(declare-fun m!1161047 () Bool)

(assert (=> b!1260294 m!1161047))

(declare-fun m!1161049 () Bool)

(assert (=> b!1260294 m!1161049))

(declare-fun m!1161051 () Bool)

(assert (=> b!1260294 m!1161051))

(declare-fun m!1161053 () Bool)

(assert (=> b!1260294 m!1161053))

(declare-fun m!1161055 () Bool)

(assert (=> b!1260294 m!1161055))

(declare-fun m!1161057 () Bool)

(assert (=> b!1260294 m!1161057))

(declare-fun m!1161059 () Bool)

(assert (=> b!1260294 m!1161059))

(declare-fun m!1161061 () Bool)

(assert (=> b!1260298 m!1161061))

(check-sat (not b!1260294) (not start!105842) (not mapNonEmpty!50206) (not b_next!27369) (not b!1260292) (not b!1260299) b_and!45275 (not b!1260298) (not b!1260293) tp_is_empty!32271)
(check-sat b_and!45275 (not b_next!27369))
