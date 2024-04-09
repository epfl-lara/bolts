; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105756 () Bool)

(assert start!105756)

(declare-fun b_free!27305 () Bool)

(declare-fun b_next!27305 () Bool)

(assert (=> start!105756 (= b_free!27305 (not b_next!27305))))

(declare-fun tp!95441 () Bool)

(declare-fun b_and!45199 () Bool)

(assert (=> start!105756 (= tp!95441 b_and!45199)))

(declare-fun e!716382 () Bool)

(declare-datatypes ((V!48307 0))(
  ( (V!48308 (val!16166 Int)) )
))
(declare-datatypes ((tuple2!21054 0))(
  ( (tuple2!21055 (_1!10537 (_ BitVec 64)) (_2!10537 V!48307)) )
))
(declare-datatypes ((List!28282 0))(
  ( (Nil!28279) (Cons!28278 (h!29487 tuple2!21054) (t!41784 List!28282)) )
))
(declare-datatypes ((ListLongMap!18939 0))(
  ( (ListLongMap!18940 (toList!9485 List!28282)) )
))
(declare-fun lt!569899 () ListLongMap!18939)

(declare-fun lt!569898 () tuple2!21054)

(declare-fun lt!569897 () ListLongMap!18939)

(declare-fun b!1259240 () Bool)

(declare-fun +!4183 (ListLongMap!18939 tuple2!21054) ListLongMap!18939)

(assert (=> b!1259240 (= e!716382 (= lt!569899 (+!4183 lt!569897 lt!569898)))))

(declare-fun b!1259241 () Bool)

(declare-fun e!716381 () Bool)

(assert (=> b!1259241 (= e!716381 true)))

(declare-fun lt!569902 () ListLongMap!18939)

(declare-fun lt!569894 () ListLongMap!18939)

(declare-fun -!2118 (ListLongMap!18939 (_ BitVec 64)) ListLongMap!18939)

(assert (=> b!1259241 (= lt!569902 (-!2118 lt!569894 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!569895 () ListLongMap!18939)

(declare-fun lt!569893 () ListLongMap!18939)

(assert (=> b!1259241 (= (-!2118 lt!569895 #b1000000000000000000000000000000000000000000000000000000000000000) lt!569893)))

(declare-datatypes ((Unit!41939 0))(
  ( (Unit!41940) )
))
(declare-fun lt!569896 () Unit!41939)

(declare-fun minValueBefore!43 () V!48307)

(declare-fun addThenRemoveForNewKeyIsSame!343 (ListLongMap!18939 (_ BitVec 64) V!48307) Unit!41939)

(assert (=> b!1259241 (= lt!569896 (addThenRemoveForNewKeyIsSame!343 lt!569893 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))

(assert (=> b!1259241 e!716382))

(declare-fun res!839336 () Bool)

(assert (=> b!1259241 (=> (not res!839336) (not e!716382))))

(assert (=> b!1259241 (= res!839336 (= lt!569894 lt!569895))))

(assert (=> b!1259241 (= lt!569895 (+!4183 lt!569893 (tuple2!21055 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43)))))

(declare-fun lt!569900 () ListLongMap!18939)

(assert (=> b!1259241 (= lt!569893 (+!4183 lt!569900 lt!569898))))

(declare-fun zeroValue!871 () V!48307)

(assert (=> b!1259241 (= lt!569898 (tuple2!21055 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!871))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!48307)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((array!82027 0))(
  ( (array!82028 (arr!39564 (Array (_ BitVec 32) (_ BitVec 64))) (size!40101 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!82027)

(declare-datatypes ((ValueCell!15340 0))(
  ( (ValueCellFull!15340 (v!18868 V!48307)) (EmptyCell!15340) )
))
(declare-datatypes ((array!82029 0))(
  ( (array!82030 (arr!39565 (Array (_ BitVec 32) ValueCell!15340)) (size!40102 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!82029)

(declare-fun getCurrentListMap!4622 (array!82027 array!82029 (_ BitVec 32) (_ BitVec 32) V!48307 V!48307 (_ BitVec 32) Int) ListLongMap!18939)

(assert (=> b!1259241 (= lt!569899 (getCurrentListMap!4622 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(assert (=> b!1259241 (= lt!569894 (getCurrentListMap!4622 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1259242 () Bool)

(declare-fun res!839337 () Bool)

(declare-fun e!716380 () Bool)

(assert (=> b!1259242 (=> (not res!839337) (not e!716380))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82027 (_ BitVec 32)) Bool)

(assert (=> b!1259242 (= res!839337 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1259243 () Bool)

(declare-fun res!839338 () Bool)

(assert (=> b!1259243 (=> (not res!839338) (not e!716380))))

(declare-datatypes ((List!28283 0))(
  ( (Nil!28280) (Cons!28279 (h!29488 (_ BitVec 64)) (t!41785 List!28283)) )
))
(declare-fun arrayNoDuplicates!0 (array!82027 (_ BitVec 32) List!28283) Bool)

(assert (=> b!1259243 (= res!839338 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28280))))

(declare-fun b!1259244 () Bool)

(declare-fun res!839339 () Bool)

(assert (=> b!1259244 (=> (not res!839339) (not e!716380))))

(assert (=> b!1259244 (= res!839339 (and (= (size!40102 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!40101 _keys!1118) (size!40102 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!50107 () Bool)

(declare-fun mapRes!50107 () Bool)

(declare-fun tp!95442 () Bool)

(declare-fun e!716384 () Bool)

(assert (=> mapNonEmpty!50107 (= mapRes!50107 (and tp!95442 e!716384))))

(declare-fun mapKey!50107 () (_ BitVec 32))

(declare-fun mapRest!50107 () (Array (_ BitVec 32) ValueCell!15340))

(declare-fun mapValue!50107 () ValueCell!15340)

(assert (=> mapNonEmpty!50107 (= (arr!39565 _values!914) (store mapRest!50107 mapKey!50107 mapValue!50107))))

(declare-fun res!839335 () Bool)

(assert (=> start!105756 (=> (not res!839335) (not e!716380))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105756 (= res!839335 (validMask!0 mask!1466))))

(assert (=> start!105756 e!716380))

(assert (=> start!105756 true))

(assert (=> start!105756 tp!95441))

(declare-fun tp_is_empty!32207 () Bool)

(assert (=> start!105756 tp_is_empty!32207))

(declare-fun array_inv!30079 (array!82027) Bool)

(assert (=> start!105756 (array_inv!30079 _keys!1118)))

(declare-fun e!716378 () Bool)

(declare-fun array_inv!30080 (array!82029) Bool)

(assert (=> start!105756 (and (array_inv!30080 _values!914) e!716378)))

(declare-fun mapIsEmpty!50107 () Bool)

(assert (=> mapIsEmpty!50107 mapRes!50107))

(declare-fun b!1259245 () Bool)

(assert (=> b!1259245 (= e!716380 (not e!716381))))

(declare-fun res!839340 () Bool)

(assert (=> b!1259245 (=> res!839340 e!716381)))

(assert (=> b!1259245 (= res!839340 (or (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1259245 (= lt!569900 lt!569897)))

(declare-fun lt!569901 () Unit!41939)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1151 (array!82027 array!82029 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48307 V!48307 V!48307 V!48307 (_ BitVec 32) Int) Unit!41939)

(assert (=> b!1259245 (= lt!569901 (lemmaNoChangeToArrayThenSameMapNoExtras!1151 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5833 (array!82027 array!82029 (_ BitVec 32) (_ BitVec 32) V!48307 V!48307 (_ BitVec 32) Int) ListLongMap!18939)

(assert (=> b!1259245 (= lt!569897 (getCurrentListMapNoExtraKeys!5833 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1259245 (= lt!569900 (getCurrentListMapNoExtraKeys!5833 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1259246 () Bool)

(declare-fun e!716383 () Bool)

(assert (=> b!1259246 (= e!716378 (and e!716383 mapRes!50107))))

(declare-fun condMapEmpty!50107 () Bool)

(declare-fun mapDefault!50107 () ValueCell!15340)

