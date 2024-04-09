; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!105936 () Bool)

(assert start!105936)

(declare-fun b_free!27441 () Bool)

(declare-fun b_next!27441 () Bool)

(assert (=> start!105936 (= b_free!27441 (not b_next!27441))))

(declare-fun tp!95855 () Bool)

(declare-fun b_and!45359 () Bool)

(assert (=> start!105936 (= tp!95855 b_and!45359)))

(declare-fun mapIsEmpty!50317 () Bool)

(declare-fun mapRes!50317 () Bool)

(assert (=> mapIsEmpty!50317 mapRes!50317))

(declare-fun b!1261280 () Bool)

(declare-fun res!840559 () Bool)

(declare-fun e!717880 () Bool)

(assert (=> b!1261280 (=> (not res!840559) (not e!717880))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((array!82285 0))(
  ( (array!82286 (arr!39691 (Array (_ BitVec 32) (_ BitVec 64))) (size!40228 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!82285)

(declare-datatypes ((V!48489 0))(
  ( (V!48490 (val!16234 Int)) )
))
(declare-datatypes ((ValueCell!15408 0))(
  ( (ValueCellFull!15408 (v!18938 V!48489)) (EmptyCell!15408) )
))
(declare-datatypes ((array!82287 0))(
  ( (array!82288 (arr!39692 (Array (_ BitVec 32) ValueCell!15408)) (size!40229 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!82287)

(assert (=> b!1261280 (= res!840559 (and (= (size!40229 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!40228 _keys!1118) (size!40229 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1261281 () Bool)

(assert (=> b!1261281 (= e!717880 false)))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!48489)

(declare-fun zeroValue!871 () V!48489)

(declare-datatypes ((tuple2!21154 0))(
  ( (tuple2!21155 (_1!10587 (_ BitVec 64)) (_2!10587 V!48489)) )
))
(declare-datatypes ((List!28375 0))(
  ( (Nil!28372) (Cons!28371 (h!29580 tuple2!21154) (t!41881 List!28375)) )
))
(declare-datatypes ((ListLongMap!19039 0))(
  ( (ListLongMap!19040 (toList!9535 List!28375)) )
))
(declare-fun lt!571546 () ListLongMap!19039)

(declare-fun getCurrentListMapNoExtraKeys!5876 (array!82285 array!82287 (_ BitVec 32) (_ BitVec 32) V!48489 V!48489 (_ BitVec 32) Int) ListLongMap!19039)

(assert (=> b!1261281 (= lt!571546 (getCurrentListMapNoExtraKeys!5876 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun minValueBefore!43 () V!48489)

(declare-fun lt!571547 () ListLongMap!19039)

(assert (=> b!1261281 (= lt!571547 (getCurrentListMapNoExtraKeys!5876 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1261282 () Bool)

(declare-fun res!840562 () Bool)

(assert (=> b!1261282 (=> (not res!840562) (not e!717880))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82285 (_ BitVec 32)) Bool)

(assert (=> b!1261282 (= res!840562 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1261284 () Bool)

(declare-fun e!717876 () Bool)

(declare-fun tp_is_empty!32343 () Bool)

(assert (=> b!1261284 (= e!717876 tp_is_empty!32343)))

(declare-fun b!1261285 () Bool)

(declare-fun e!717877 () Bool)

(declare-fun e!717878 () Bool)

(assert (=> b!1261285 (= e!717877 (and e!717878 mapRes!50317))))

(declare-fun condMapEmpty!50317 () Bool)

(declare-fun mapDefault!50317 () ValueCell!15408)

(assert (=> b!1261285 (= condMapEmpty!50317 (= (arr!39692 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15408)) mapDefault!50317)))))

(declare-fun mapNonEmpty!50317 () Bool)

(declare-fun tp!95856 () Bool)

(assert (=> mapNonEmpty!50317 (= mapRes!50317 (and tp!95856 e!717876))))

(declare-fun mapRest!50317 () (Array (_ BitVec 32) ValueCell!15408))

(declare-fun mapValue!50317 () ValueCell!15408)

(declare-fun mapKey!50317 () (_ BitVec 32))

(assert (=> mapNonEmpty!50317 (= (arr!39692 _values!914) (store mapRest!50317 mapKey!50317 mapValue!50317))))

(declare-fun b!1261286 () Bool)

(assert (=> b!1261286 (= e!717878 tp_is_empty!32343)))

(declare-fun res!840561 () Bool)

(assert (=> start!105936 (=> (not res!840561) (not e!717880))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105936 (= res!840561 (validMask!0 mask!1466))))

(assert (=> start!105936 e!717880))

(assert (=> start!105936 true))

(assert (=> start!105936 tp!95855))

(assert (=> start!105936 tp_is_empty!32343))

(declare-fun array_inv!30167 (array!82285) Bool)

(assert (=> start!105936 (array_inv!30167 _keys!1118)))

(declare-fun array_inv!30168 (array!82287) Bool)

(assert (=> start!105936 (and (array_inv!30168 _values!914) e!717877)))

(declare-fun b!1261283 () Bool)

(declare-fun res!840560 () Bool)

(assert (=> b!1261283 (=> (not res!840560) (not e!717880))))

(declare-datatypes ((List!28376 0))(
  ( (Nil!28373) (Cons!28372 (h!29581 (_ BitVec 64)) (t!41882 List!28376)) )
))
(declare-fun arrayNoDuplicates!0 (array!82285 (_ BitVec 32) List!28376) Bool)

(assert (=> b!1261283 (= res!840560 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28373))))

(assert (= (and start!105936 res!840561) b!1261280))

(assert (= (and b!1261280 res!840559) b!1261282))

(assert (= (and b!1261282 res!840562) b!1261283))

(assert (= (and b!1261283 res!840560) b!1261281))

(assert (= (and b!1261285 condMapEmpty!50317) mapIsEmpty!50317))

(assert (= (and b!1261285 (not condMapEmpty!50317)) mapNonEmpty!50317))

(get-info :version)

(assert (= (and mapNonEmpty!50317 ((_ is ValueCellFull!15408) mapValue!50317)) b!1261284))

(assert (= (and b!1261285 ((_ is ValueCellFull!15408) mapDefault!50317)) b!1261286))

(assert (= start!105936 b!1261285))

(declare-fun m!1161963 () Bool)

(assert (=> b!1261281 m!1161963))

(declare-fun m!1161965 () Bool)

(assert (=> b!1261281 m!1161965))

(declare-fun m!1161967 () Bool)

(assert (=> b!1261283 m!1161967))

(declare-fun m!1161969 () Bool)

(assert (=> b!1261282 m!1161969))

(declare-fun m!1161971 () Bool)

(assert (=> start!105936 m!1161971))

(declare-fun m!1161973 () Bool)

(assert (=> start!105936 m!1161973))

(declare-fun m!1161975 () Bool)

(assert (=> start!105936 m!1161975))

(declare-fun m!1161977 () Bool)

(assert (=> mapNonEmpty!50317 m!1161977))

(check-sat (not mapNonEmpty!50317) (not b_next!27441) tp_is_empty!32343 (not start!105936) b_and!45359 (not b!1261282) (not b!1261283) (not b!1261281))
(check-sat b_and!45359 (not b_next!27441))
