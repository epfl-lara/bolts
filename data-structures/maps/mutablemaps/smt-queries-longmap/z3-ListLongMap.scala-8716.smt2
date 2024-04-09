; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!105806 () Bool)

(assert start!105806)

(declare-fun b_free!27333 () Bool)

(declare-fun b_next!27333 () Bool)

(assert (=> start!105806 (= b_free!27333 (not b_next!27333))))

(declare-fun tp!95529 () Bool)

(declare-fun b_and!45239 () Bool)

(assert (=> start!105806 (= tp!95529 b_and!45239)))

(declare-fun b!1259806 () Bool)

(declare-fun res!839673 () Bool)

(declare-fun e!716795 () Bool)

(assert (=> b!1259806 (=> (not res!839673) (not e!716795))))

(declare-datatypes ((array!82085 0))(
  ( (array!82086 (arr!39592 (Array (_ BitVec 32) (_ BitVec 64))) (size!40129 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!82085)

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82085 (_ BitVec 32)) Bool)

(assert (=> b!1259806 (= res!839673 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun mapNonEmpty!50152 () Bool)

(declare-fun mapRes!50152 () Bool)

(declare-fun tp!95528 () Bool)

(declare-fun e!716798 () Bool)

(assert (=> mapNonEmpty!50152 (= mapRes!50152 (and tp!95528 e!716798))))

(declare-datatypes ((V!48345 0))(
  ( (V!48346 (val!16180 Int)) )
))
(declare-datatypes ((ValueCell!15354 0))(
  ( (ValueCellFull!15354 (v!18883 V!48345)) (EmptyCell!15354) )
))
(declare-fun mapRest!50152 () (Array (_ BitVec 32) ValueCell!15354))

(declare-datatypes ((array!82087 0))(
  ( (array!82088 (arr!39593 (Array (_ BitVec 32) ValueCell!15354)) (size!40130 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!82087)

(declare-fun mapKey!50152 () (_ BitVec 32))

(declare-fun mapValue!50152 () ValueCell!15354)

(assert (=> mapNonEmpty!50152 (= (arr!39593 _values!914) (store mapRest!50152 mapKey!50152 mapValue!50152))))

(declare-fun b!1259807 () Bool)

(declare-fun res!839677 () Bool)

(assert (=> b!1259807 (=> (not res!839677) (not e!716795))))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(assert (=> b!1259807 (= res!839677 (and (= (size!40130 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!40129 _keys!1118) (size!40130 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1259808 () Bool)

(declare-fun e!716797 () Bool)

(assert (=> b!1259808 (= e!716795 (not e!716797))))

(declare-fun res!839678 () Bool)

(assert (=> b!1259808 (=> res!839678 e!716797)))

(assert (=> b!1259808 (= res!839678 (or (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!21082 0))(
  ( (tuple2!21083 (_1!10551 (_ BitVec 64)) (_2!10551 V!48345)) )
))
(declare-datatypes ((List!28307 0))(
  ( (Nil!28304) (Cons!28303 (h!29512 tuple2!21082) (t!41811 List!28307)) )
))
(declare-datatypes ((ListLongMap!18967 0))(
  ( (ListLongMap!18968 (toList!9499 List!28307)) )
))
(declare-fun lt!570463 () ListLongMap!18967)

(declare-fun lt!570468 () ListLongMap!18967)

(assert (=> b!1259808 (= lt!570463 lt!570468)))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!48345)

(declare-datatypes ((Unit!41967 0))(
  ( (Unit!41968) )
))
(declare-fun lt!570459 () Unit!41967)

(declare-fun zeroValue!871 () V!48345)

(declare-fun minValueBefore!43 () V!48345)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1162 (array!82085 array!82087 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48345 V!48345 V!48345 V!48345 (_ BitVec 32) Int) Unit!41967)

(assert (=> b!1259808 (= lt!570459 (lemmaNoChangeToArrayThenSameMapNoExtras!1162 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5844 (array!82085 array!82087 (_ BitVec 32) (_ BitVec 32) V!48345 V!48345 (_ BitVec 32) Int) ListLongMap!18967)

(assert (=> b!1259808 (= lt!570468 (getCurrentListMapNoExtraKeys!5844 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1259808 (= lt!570463 (getCurrentListMapNoExtraKeys!5844 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1259809 () Bool)

(declare-fun tp_is_empty!32235 () Bool)

(assert (=> b!1259809 (= e!716798 tp_is_empty!32235)))

(declare-fun b!1259810 () Bool)

(declare-fun res!839676 () Bool)

(assert (=> b!1259810 (=> (not res!839676) (not e!716795))))

(declare-datatypes ((List!28308 0))(
  ( (Nil!28305) (Cons!28304 (h!29513 (_ BitVec 64)) (t!41812 List!28308)) )
))
(declare-fun arrayNoDuplicates!0 (array!82085 (_ BitVec 32) List!28308) Bool)

(assert (=> b!1259810 (= res!839676 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28305))))

(declare-fun b!1259811 () Bool)

(declare-fun e!716793 () Bool)

(assert (=> b!1259811 (= e!716793 tp_is_empty!32235)))

(declare-fun b!1259812 () Bool)

(declare-fun e!716799 () Bool)

(assert (=> b!1259812 (= e!716799 (and e!716793 mapRes!50152))))

(declare-fun condMapEmpty!50152 () Bool)

(declare-fun mapDefault!50152 () ValueCell!15354)

(assert (=> b!1259812 (= condMapEmpty!50152 (= (arr!39593 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15354)) mapDefault!50152)))))

(declare-fun lt!570462 () tuple2!21082)

(declare-fun e!716796 () Bool)

(declare-fun lt!570461 () ListLongMap!18967)

(declare-fun b!1259813 () Bool)

(declare-fun +!4196 (ListLongMap!18967 tuple2!21082) ListLongMap!18967)

(assert (=> b!1259813 (= e!716796 (= lt!570461 (+!4196 lt!570468 lt!570462)))))

(declare-fun b!1259814 () Bool)

(assert (=> b!1259814 (= e!716797 true)))

(declare-fun lt!570460 () ListLongMap!18967)

(declare-fun lt!570466 () ListLongMap!18967)

(declare-fun -!2129 (ListLongMap!18967 (_ BitVec 64)) ListLongMap!18967)

(assert (=> b!1259814 (= lt!570460 (-!2129 lt!570466 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!570467 () ListLongMap!18967)

(declare-fun lt!570465 () ListLongMap!18967)

(assert (=> b!1259814 (= (-!2129 lt!570467 #b1000000000000000000000000000000000000000000000000000000000000000) lt!570465)))

(declare-fun lt!570464 () Unit!41967)

(declare-fun addThenRemoveForNewKeyIsSame!354 (ListLongMap!18967 (_ BitVec 64) V!48345) Unit!41967)

(assert (=> b!1259814 (= lt!570464 (addThenRemoveForNewKeyIsSame!354 lt!570465 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))

(assert (=> b!1259814 e!716796))

(declare-fun res!839675 () Bool)

(assert (=> b!1259814 (=> (not res!839675) (not e!716796))))

(assert (=> b!1259814 (= res!839675 (= lt!570466 lt!570467))))

(assert (=> b!1259814 (= lt!570467 (+!4196 lt!570465 (tuple2!21083 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43)))))

(assert (=> b!1259814 (= lt!570465 (+!4196 lt!570463 lt!570462))))

(assert (=> b!1259814 (= lt!570462 (tuple2!21083 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!871))))

(declare-fun getCurrentListMap!4633 (array!82085 array!82087 (_ BitVec 32) (_ BitVec 32) V!48345 V!48345 (_ BitVec 32) Int) ListLongMap!18967)

(assert (=> b!1259814 (= lt!570461 (getCurrentListMap!4633 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1259814 (= lt!570466 (getCurrentListMap!4633 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun mapIsEmpty!50152 () Bool)

(assert (=> mapIsEmpty!50152 mapRes!50152))

(declare-fun res!839674 () Bool)

(assert (=> start!105806 (=> (not res!839674) (not e!716795))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105806 (= res!839674 (validMask!0 mask!1466))))

(assert (=> start!105806 e!716795))

(assert (=> start!105806 true))

(assert (=> start!105806 tp!95529))

(assert (=> start!105806 tp_is_empty!32235))

(declare-fun array_inv!30095 (array!82085) Bool)

(assert (=> start!105806 (array_inv!30095 _keys!1118)))

(declare-fun array_inv!30096 (array!82087) Bool)

(assert (=> start!105806 (and (array_inv!30096 _values!914) e!716799)))

(assert (= (and start!105806 res!839674) b!1259807))

(assert (= (and b!1259807 res!839677) b!1259806))

(assert (= (and b!1259806 res!839673) b!1259810))

(assert (= (and b!1259810 res!839676) b!1259808))

(assert (= (and b!1259808 (not res!839678)) b!1259814))

(assert (= (and b!1259814 res!839675) b!1259813))

(assert (= (and b!1259812 condMapEmpty!50152) mapIsEmpty!50152))

(assert (= (and b!1259812 (not condMapEmpty!50152)) mapNonEmpty!50152))

(get-info :version)

(assert (= (and mapNonEmpty!50152 ((_ is ValueCellFull!15354) mapValue!50152)) b!1259809))

(assert (= (and b!1259812 ((_ is ValueCellFull!15354) mapDefault!50152)) b!1259811))

(assert (= start!105806 b!1259812))

(declare-fun m!1160417 () Bool)

(assert (=> b!1259810 m!1160417))

(declare-fun m!1160419 () Bool)

(assert (=> b!1259806 m!1160419))

(declare-fun m!1160421 () Bool)

(assert (=> b!1259808 m!1160421))

(declare-fun m!1160423 () Bool)

(assert (=> b!1259808 m!1160423))

(declare-fun m!1160425 () Bool)

(assert (=> b!1259808 m!1160425))

(declare-fun m!1160427 () Bool)

(assert (=> b!1259814 m!1160427))

(declare-fun m!1160429 () Bool)

(assert (=> b!1259814 m!1160429))

(declare-fun m!1160431 () Bool)

(assert (=> b!1259814 m!1160431))

(declare-fun m!1160433 () Bool)

(assert (=> b!1259814 m!1160433))

(declare-fun m!1160435 () Bool)

(assert (=> b!1259814 m!1160435))

(declare-fun m!1160437 () Bool)

(assert (=> b!1259814 m!1160437))

(declare-fun m!1160439 () Bool)

(assert (=> b!1259814 m!1160439))

(declare-fun m!1160441 () Bool)

(assert (=> mapNonEmpty!50152 m!1160441))

(declare-fun m!1160443 () Bool)

(assert (=> b!1259813 m!1160443))

(declare-fun m!1160445 () Bool)

(assert (=> start!105806 m!1160445))

(declare-fun m!1160447 () Bool)

(assert (=> start!105806 m!1160447))

(declare-fun m!1160449 () Bool)

(assert (=> start!105806 m!1160449))

(check-sat (not start!105806) tp_is_empty!32235 (not b!1259813) (not b!1259808) (not b_next!27333) b_and!45239 (not b!1259814) (not b!1259810) (not b!1259806) (not mapNonEmpty!50152))
(check-sat b_and!45239 (not b_next!27333))
