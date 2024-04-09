; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!105232 () Bool)

(assert start!105232)

(declare-fun b_free!26913 () Bool)

(declare-fun b_next!26913 () Bool)

(assert (=> start!105232 (= b_free!26913 (not b_next!26913))))

(declare-fun tp!94245 () Bool)

(declare-fun b_and!44737 () Bool)

(assert (=> start!105232 (= tp!94245 b_and!44737)))

(declare-fun b!1253483 () Bool)

(declare-fun res!835938 () Bool)

(declare-fun e!712156 () Bool)

(assert (=> b!1253483 (=> (not res!835938) (not e!712156))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((array!81271 0))(
  ( (array!81272 (arr!39193 (Array (_ BitVec 32) (_ BitVec 64))) (size!39730 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81271)

(declare-datatypes ((V!47785 0))(
  ( (V!47786 (val!15970 Int)) )
))
(declare-datatypes ((ValueCell!15144 0))(
  ( (ValueCellFull!15144 (v!18668 V!47785)) (EmptyCell!15144) )
))
(declare-datatypes ((array!81273 0))(
  ( (array!81274 (arr!39194 (Array (_ BitVec 32) ValueCell!15144)) (size!39731 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81273)

(assert (=> b!1253483 (= res!835938 (and (= (size!39731 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39730 _keys!1118) (size!39731 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun res!835937 () Bool)

(assert (=> start!105232 (=> (not res!835937) (not e!712156))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105232 (= res!835937 (validMask!0 mask!1466))))

(assert (=> start!105232 e!712156))

(assert (=> start!105232 true))

(assert (=> start!105232 tp!94245))

(declare-fun tp_is_empty!31815 () Bool)

(assert (=> start!105232 tp_is_empty!31815))

(declare-fun array_inv!29819 (array!81271) Bool)

(assert (=> start!105232 (array_inv!29819 _keys!1118)))

(declare-fun e!712159 () Bool)

(declare-fun array_inv!29820 (array!81273) Bool)

(assert (=> start!105232 (and (array_inv!29820 _values!914) e!712159)))

(declare-fun b!1253484 () Bool)

(declare-fun res!835936 () Bool)

(assert (=> b!1253484 (=> (not res!835936) (not e!712156))))

(declare-datatypes ((List!28007 0))(
  ( (Nil!28004) (Cons!28003 (h!29212 (_ BitVec 64)) (t!41495 List!28007)) )
))
(declare-fun arrayNoDuplicates!0 (array!81271 (_ BitVec 32) List!28007) Bool)

(assert (=> b!1253484 (= res!835936 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28004))))

(declare-fun b!1253485 () Bool)

(declare-fun e!712155 () Bool)

(assert (=> b!1253485 (= e!712155 true)))

(declare-datatypes ((tuple2!20760 0))(
  ( (tuple2!20761 (_1!10390 (_ BitVec 64)) (_2!10390 V!47785)) )
))
(declare-datatypes ((List!28008 0))(
  ( (Nil!28005) (Cons!28004 (h!29213 tuple2!20760) (t!41496 List!28008)) )
))
(declare-datatypes ((ListLongMap!18645 0))(
  ( (ListLongMap!18646 (toList!9338 List!28008)) )
))
(declare-fun lt!566048 () ListLongMap!18645)

(declare-fun lt!566053 () ListLongMap!18645)

(declare-fun -!2050 (ListLongMap!18645 (_ BitVec 64)) ListLongMap!18645)

(assert (=> b!1253485 (= lt!566048 (-!2050 lt!566053 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!566052 () ListLongMap!18645)

(declare-fun lt!566047 () ListLongMap!18645)

(assert (=> b!1253485 (= (-!2050 lt!566052 #b1000000000000000000000000000000000000000000000000000000000000000) lt!566047)))

(declare-datatypes ((Unit!41646 0))(
  ( (Unit!41647) )
))
(declare-fun lt!566054 () Unit!41646)

(declare-fun minValueBefore!43 () V!47785)

(declare-fun addThenRemoveForNewKeyIsSame!310 (ListLongMap!18645 (_ BitVec 64) V!47785) Unit!41646)

(assert (=> b!1253485 (= lt!566054 (addThenRemoveForNewKeyIsSame!310 lt!566047 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))

(declare-fun lt!566050 () ListLongMap!18645)

(declare-fun lt!566051 () ListLongMap!18645)

(assert (=> b!1253485 (and (= lt!566053 lt!566052) (= lt!566050 lt!566051))))

(declare-fun +!4141 (ListLongMap!18645 tuple2!20760) ListLongMap!18645)

(assert (=> b!1253485 (= lt!566052 (+!4141 lt!566047 (tuple2!20761 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43)))))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!47785)

(declare-fun zeroValue!871 () V!47785)

(declare-fun getCurrentListMap!4528 (array!81271 array!81273 (_ BitVec 32) (_ BitVec 32) V!47785 V!47785 (_ BitVec 32) Int) ListLongMap!18645)

(assert (=> b!1253485 (= lt!566050 (getCurrentListMap!4528 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1253485 (= lt!566053 (getCurrentListMap!4528 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1253486 () Bool)

(assert (=> b!1253486 (= e!712156 (not e!712155))))

(declare-fun res!835939 () Bool)

(assert (=> b!1253486 (=> res!835939 e!712155)))

(assert (=> b!1253486 (= res!835939 (or (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1253486 (= lt!566047 lt!566051)))

(declare-fun lt!566049 () Unit!41646)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1022 (array!81271 array!81273 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47785 V!47785 V!47785 V!47785 (_ BitVec 32) Int) Unit!41646)

(assert (=> b!1253486 (= lt!566049 (lemmaNoChangeToArrayThenSameMapNoExtras!1022 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5704 (array!81271 array!81273 (_ BitVec 32) (_ BitVec 32) V!47785 V!47785 (_ BitVec 32) Int) ListLongMap!18645)

(assert (=> b!1253486 (= lt!566051 (getCurrentListMapNoExtraKeys!5704 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1253486 (= lt!566047 (getCurrentListMapNoExtraKeys!5704 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1253487 () Bool)

(declare-fun e!712157 () Bool)

(declare-fun mapRes!49498 () Bool)

(assert (=> b!1253487 (= e!712159 (and e!712157 mapRes!49498))))

(declare-fun condMapEmpty!49498 () Bool)

(declare-fun mapDefault!49498 () ValueCell!15144)

(assert (=> b!1253487 (= condMapEmpty!49498 (= (arr!39194 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15144)) mapDefault!49498)))))

(declare-fun b!1253488 () Bool)

(declare-fun e!712160 () Bool)

(assert (=> b!1253488 (= e!712160 tp_is_empty!31815)))

(declare-fun mapIsEmpty!49498 () Bool)

(assert (=> mapIsEmpty!49498 mapRes!49498))

(declare-fun b!1253489 () Bool)

(declare-fun res!835940 () Bool)

(assert (=> b!1253489 (=> (not res!835940) (not e!712156))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81271 (_ BitVec 32)) Bool)

(assert (=> b!1253489 (= res!835940 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1253490 () Bool)

(assert (=> b!1253490 (= e!712157 tp_is_empty!31815)))

(declare-fun mapNonEmpty!49498 () Bool)

(declare-fun tp!94244 () Bool)

(assert (=> mapNonEmpty!49498 (= mapRes!49498 (and tp!94244 e!712160))))

(declare-fun mapRest!49498 () (Array (_ BitVec 32) ValueCell!15144))

(declare-fun mapKey!49498 () (_ BitVec 32))

(declare-fun mapValue!49498 () ValueCell!15144)

(assert (=> mapNonEmpty!49498 (= (arr!39194 _values!914) (store mapRest!49498 mapKey!49498 mapValue!49498))))

(assert (= (and start!105232 res!835937) b!1253483))

(assert (= (and b!1253483 res!835938) b!1253489))

(assert (= (and b!1253489 res!835940) b!1253484))

(assert (= (and b!1253484 res!835936) b!1253486))

(assert (= (and b!1253486 (not res!835939)) b!1253485))

(assert (= (and b!1253487 condMapEmpty!49498) mapIsEmpty!49498))

(assert (= (and b!1253487 (not condMapEmpty!49498)) mapNonEmpty!49498))

(get-info :version)

(assert (= (and mapNonEmpty!49498 ((_ is ValueCellFull!15144) mapValue!49498)) b!1253488))

(assert (= (and b!1253487 ((_ is ValueCellFull!15144) mapDefault!49498)) b!1253490))

(assert (= start!105232 b!1253487))

(declare-fun m!1154091 () Bool)

(assert (=> b!1253486 m!1154091))

(declare-fun m!1154093 () Bool)

(assert (=> b!1253486 m!1154093))

(declare-fun m!1154095 () Bool)

(assert (=> b!1253486 m!1154095))

(declare-fun m!1154097 () Bool)

(assert (=> b!1253485 m!1154097))

(declare-fun m!1154099 () Bool)

(assert (=> b!1253485 m!1154099))

(declare-fun m!1154101 () Bool)

(assert (=> b!1253485 m!1154101))

(declare-fun m!1154103 () Bool)

(assert (=> b!1253485 m!1154103))

(declare-fun m!1154105 () Bool)

(assert (=> b!1253485 m!1154105))

(declare-fun m!1154107 () Bool)

(assert (=> b!1253485 m!1154107))

(declare-fun m!1154109 () Bool)

(assert (=> b!1253489 m!1154109))

(declare-fun m!1154111 () Bool)

(assert (=> b!1253484 m!1154111))

(declare-fun m!1154113 () Bool)

(assert (=> start!105232 m!1154113))

(declare-fun m!1154115 () Bool)

(assert (=> start!105232 m!1154115))

(declare-fun m!1154117 () Bool)

(assert (=> start!105232 m!1154117))

(declare-fun m!1154119 () Bool)

(assert (=> mapNonEmpty!49498 m!1154119))

(check-sat (not start!105232) (not b!1253485) (not b!1253484) (not b!1253486) (not b_next!26913) b_and!44737 tp_is_empty!31815 (not mapNonEmpty!49498) (not b!1253489))
(check-sat b_and!44737 (not b_next!26913))
