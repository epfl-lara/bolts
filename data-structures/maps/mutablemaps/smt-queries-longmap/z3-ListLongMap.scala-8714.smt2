; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!105772 () Bool)

(assert start!105772)

(declare-fun b_free!27321 () Bool)

(declare-fun b_next!27321 () Bool)

(assert (=> start!105772 (= b_free!27321 (not b_next!27321))))

(declare-fun tp!95489 () Bool)

(declare-fun b_and!45215 () Bool)

(assert (=> start!105772 (= tp!95489 b_and!45215)))

(declare-fun b!1259456 () Bool)

(declare-fun res!839482 () Bool)

(declare-fun e!716550 () Bool)

(assert (=> b!1259456 (=> (not res!839482) (not e!716550))))

(declare-datatypes ((array!82059 0))(
  ( (array!82060 (arr!39580 (Array (_ BitVec 32) (_ BitVec 64))) (size!40117 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!82059)

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82059 (_ BitVec 32)) Bool)

(assert (=> b!1259456 (= res!839482 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1259457 () Bool)

(declare-fun e!716552 () Bool)

(assert (=> b!1259457 (= e!716552 true)))

(declare-datatypes ((V!48329 0))(
  ( (V!48330 (val!16174 Int)) )
))
(declare-datatypes ((tuple2!21070 0))(
  ( (tuple2!21071 (_1!10545 (_ BitVec 64)) (_2!10545 V!48329)) )
))
(declare-datatypes ((List!28297 0))(
  ( (Nil!28294) (Cons!28293 (h!29502 tuple2!21070) (t!41799 List!28297)) )
))
(declare-datatypes ((ListLongMap!18955 0))(
  ( (ListLongMap!18956 (toList!9493 List!28297)) )
))
(declare-fun lt!570141 () ListLongMap!18955)

(declare-fun lt!570134 () ListLongMap!18955)

(declare-fun -!2124 (ListLongMap!18955 (_ BitVec 64)) ListLongMap!18955)

(assert (=> b!1259457 (= lt!570141 (-!2124 lt!570134 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!570139 () ListLongMap!18955)

(declare-fun lt!570137 () ListLongMap!18955)

(assert (=> b!1259457 (= (-!2124 lt!570139 #b1000000000000000000000000000000000000000000000000000000000000000) lt!570137)))

(declare-datatypes ((Unit!41953 0))(
  ( (Unit!41954) )
))
(declare-fun lt!570135 () Unit!41953)

(declare-fun minValueBefore!43 () V!48329)

(declare-fun addThenRemoveForNewKeyIsSame!349 (ListLongMap!18955 (_ BitVec 64) V!48329) Unit!41953)

(assert (=> b!1259457 (= lt!570135 (addThenRemoveForNewKeyIsSame!349 lt!570137 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))

(declare-fun e!716551 () Bool)

(assert (=> b!1259457 e!716551))

(declare-fun res!839481 () Bool)

(assert (=> b!1259457 (=> (not res!839481) (not e!716551))))

(assert (=> b!1259457 (= res!839481 (= lt!570134 lt!570139))))

(declare-fun +!4190 (ListLongMap!18955 tuple2!21070) ListLongMap!18955)

(assert (=> b!1259457 (= lt!570139 (+!4190 lt!570137 (tuple2!21071 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43)))))

(declare-fun lt!570140 () ListLongMap!18955)

(declare-fun lt!570133 () tuple2!21070)

(assert (=> b!1259457 (= lt!570137 (+!4190 lt!570140 lt!570133))))

(declare-fun zeroValue!871 () V!48329)

(assert (=> b!1259457 (= lt!570133 (tuple2!21071 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!871))))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!48329)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun lt!570136 () ListLongMap!18955)

(declare-datatypes ((ValueCell!15348 0))(
  ( (ValueCellFull!15348 (v!18876 V!48329)) (EmptyCell!15348) )
))
(declare-datatypes ((array!82061 0))(
  ( (array!82062 (arr!39581 (Array (_ BitVec 32) ValueCell!15348)) (size!40118 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!82061)

(declare-fun getCurrentListMap!4628 (array!82059 array!82061 (_ BitVec 32) (_ BitVec 32) V!48329 V!48329 (_ BitVec 32) Int) ListLongMap!18955)

(assert (=> b!1259457 (= lt!570136 (getCurrentListMap!4628 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(assert (=> b!1259457 (= lt!570134 (getCurrentListMap!4628 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun res!839479 () Bool)

(assert (=> start!105772 (=> (not res!839479) (not e!716550))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105772 (= res!839479 (validMask!0 mask!1466))))

(assert (=> start!105772 e!716550))

(assert (=> start!105772 true))

(assert (=> start!105772 tp!95489))

(declare-fun tp_is_empty!32223 () Bool)

(assert (=> start!105772 tp_is_empty!32223))

(declare-fun array_inv!30089 (array!82059) Bool)

(assert (=> start!105772 (array_inv!30089 _keys!1118)))

(declare-fun e!716546 () Bool)

(declare-fun array_inv!30090 (array!82061) Bool)

(assert (=> start!105772 (and (array_inv!30090 _values!914) e!716546)))

(declare-fun b!1259458 () Bool)

(declare-fun e!716548 () Bool)

(assert (=> b!1259458 (= e!716548 tp_is_empty!32223)))

(declare-fun mapNonEmpty!50131 () Bool)

(declare-fun mapRes!50131 () Bool)

(declare-fun tp!95490 () Bool)

(declare-fun e!716549 () Bool)

(assert (=> mapNonEmpty!50131 (= mapRes!50131 (and tp!95490 e!716549))))

(declare-fun mapRest!50131 () (Array (_ BitVec 32) ValueCell!15348))

(declare-fun mapValue!50131 () ValueCell!15348)

(declare-fun mapKey!50131 () (_ BitVec 32))

(assert (=> mapNonEmpty!50131 (= (arr!39581 _values!914) (store mapRest!50131 mapKey!50131 mapValue!50131))))

(declare-fun b!1259459 () Bool)

(declare-fun lt!570138 () ListLongMap!18955)

(assert (=> b!1259459 (= e!716551 (= lt!570136 (+!4190 lt!570138 lt!570133)))))

(declare-fun b!1259460 () Bool)

(declare-fun res!839483 () Bool)

(assert (=> b!1259460 (=> (not res!839483) (not e!716550))))

(assert (=> b!1259460 (= res!839483 (and (= (size!40118 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!40117 _keys!1118) (size!40118 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!50131 () Bool)

(assert (=> mapIsEmpty!50131 mapRes!50131))

(declare-fun b!1259461 () Bool)

(assert (=> b!1259461 (= e!716549 tp_is_empty!32223)))

(declare-fun b!1259462 () Bool)

(assert (=> b!1259462 (= e!716546 (and e!716548 mapRes!50131))))

(declare-fun condMapEmpty!50131 () Bool)

(declare-fun mapDefault!50131 () ValueCell!15348)

(assert (=> b!1259462 (= condMapEmpty!50131 (= (arr!39581 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15348)) mapDefault!50131)))))

(declare-fun b!1259463 () Bool)

(declare-fun res!839480 () Bool)

(assert (=> b!1259463 (=> (not res!839480) (not e!716550))))

(declare-datatypes ((List!28298 0))(
  ( (Nil!28295) (Cons!28294 (h!29503 (_ BitVec 64)) (t!41800 List!28298)) )
))
(declare-fun arrayNoDuplicates!0 (array!82059 (_ BitVec 32) List!28298) Bool)

(assert (=> b!1259463 (= res!839480 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28295))))

(declare-fun b!1259464 () Bool)

(assert (=> b!1259464 (= e!716550 (not e!716552))))

(declare-fun res!839484 () Bool)

(assert (=> b!1259464 (=> res!839484 e!716552)))

(assert (=> b!1259464 (= res!839484 (or (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1259464 (= lt!570140 lt!570138)))

(declare-fun lt!570142 () Unit!41953)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1158 (array!82059 array!82061 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48329 V!48329 V!48329 V!48329 (_ BitVec 32) Int) Unit!41953)

(assert (=> b!1259464 (= lt!570142 (lemmaNoChangeToArrayThenSameMapNoExtras!1158 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5840 (array!82059 array!82061 (_ BitVec 32) (_ BitVec 32) V!48329 V!48329 (_ BitVec 32) Int) ListLongMap!18955)

(assert (=> b!1259464 (= lt!570138 (getCurrentListMapNoExtraKeys!5840 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1259464 (= lt!570140 (getCurrentListMapNoExtraKeys!5840 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (= (and start!105772 res!839479) b!1259460))

(assert (= (and b!1259460 res!839483) b!1259456))

(assert (= (and b!1259456 res!839482) b!1259463))

(assert (= (and b!1259463 res!839480) b!1259464))

(assert (= (and b!1259464 (not res!839484)) b!1259457))

(assert (= (and b!1259457 res!839481) b!1259459))

(assert (= (and b!1259462 condMapEmpty!50131) mapIsEmpty!50131))

(assert (= (and b!1259462 (not condMapEmpty!50131)) mapNonEmpty!50131))

(get-info :version)

(assert (= (and mapNonEmpty!50131 ((_ is ValueCellFull!15348) mapValue!50131)) b!1259461))

(assert (= (and b!1259462 ((_ is ValueCellFull!15348) mapDefault!50131)) b!1259458))

(assert (= start!105772 b!1259462))

(declare-fun m!1160005 () Bool)

(assert (=> b!1259457 m!1160005))

(declare-fun m!1160007 () Bool)

(assert (=> b!1259457 m!1160007))

(declare-fun m!1160009 () Bool)

(assert (=> b!1259457 m!1160009))

(declare-fun m!1160011 () Bool)

(assert (=> b!1259457 m!1160011))

(declare-fun m!1160013 () Bool)

(assert (=> b!1259457 m!1160013))

(declare-fun m!1160015 () Bool)

(assert (=> b!1259457 m!1160015))

(declare-fun m!1160017 () Bool)

(assert (=> b!1259457 m!1160017))

(declare-fun m!1160019 () Bool)

(assert (=> b!1259456 m!1160019))

(declare-fun m!1160021 () Bool)

(assert (=> mapNonEmpty!50131 m!1160021))

(declare-fun m!1160023 () Bool)

(assert (=> b!1259464 m!1160023))

(declare-fun m!1160025 () Bool)

(assert (=> b!1259464 m!1160025))

(declare-fun m!1160027 () Bool)

(assert (=> b!1259464 m!1160027))

(declare-fun m!1160029 () Bool)

(assert (=> b!1259463 m!1160029))

(declare-fun m!1160031 () Bool)

(assert (=> b!1259459 m!1160031))

(declare-fun m!1160033 () Bool)

(assert (=> start!105772 m!1160033))

(declare-fun m!1160035 () Bool)

(assert (=> start!105772 m!1160035))

(declare-fun m!1160037 () Bool)

(assert (=> start!105772 m!1160037))

(check-sat (not b!1259459) b_and!45215 (not b!1259457) (not b!1259464) (not b!1259456) (not b!1259463) tp_is_empty!32223 (not b_next!27321) (not mapNonEmpty!50131) (not start!105772))
(check-sat b_and!45215 (not b_next!27321))
