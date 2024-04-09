; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!112220 () Bool)

(assert start!112220)

(declare-fun b_free!30579 () Bool)

(declare-fun b_next!30579 () Bool)

(assert (=> start!112220 (= b_free!30579 (not b_next!30579))))

(declare-fun tp!107375 () Bool)

(declare-fun b_and!49239 () Bool)

(assert (=> start!112220 (= tp!107375 b_and!49239)))

(declare-fun b!1328539 () Bool)

(declare-fun e!757516 () Bool)

(declare-fun e!757517 () Bool)

(declare-fun mapRes!56407 () Bool)

(assert (=> b!1328539 (= e!757516 (and e!757517 mapRes!56407))))

(declare-fun condMapEmpty!56407 () Bool)

(declare-datatypes ((V!53755 0))(
  ( (V!53756 (val!18319 Int)) )
))
(declare-datatypes ((ValueCell!17346 0))(
  ( (ValueCellFull!17346 (v!20954 V!53755)) (EmptyCell!17346) )
))
(declare-datatypes ((array!89837 0))(
  ( (array!89838 (arr!43380 (Array (_ BitVec 32) ValueCell!17346)) (size!43931 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!89837)

(declare-fun mapDefault!56407 () ValueCell!17346)

(assert (=> b!1328539 (= condMapEmpty!56407 (= (arr!43380 _values!1320) ((as const (Array (_ BitVec 32) ValueCell!17346)) mapDefault!56407)))))

(declare-fun b!1328540 () Bool)

(declare-fun tp_is_empty!36489 () Bool)

(assert (=> b!1328540 (= e!757517 tp_is_empty!36489)))

(declare-fun b!1328541 () Bool)

(declare-fun res!881556 () Bool)

(declare-fun e!757518 () Bool)

(assert (=> b!1328541 (=> (not res!881556) (not e!757518))))

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-datatypes ((array!89839 0))(
  ( (array!89840 (arr!43381 (Array (_ BitVec 32) (_ BitVec 64))) (size!43932 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!89839)

(assert (=> b!1328541 (= res!881556 (and (= (size!43931 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!43932 _keys!1590) (size!43931 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun res!881558 () Bool)

(assert (=> start!112220 (=> (not res!881558) (not e!757518))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112220 (= res!881558 (validMask!0 mask!1998))))

(assert (=> start!112220 e!757518))

(declare-fun array_inv!32685 (array!89837) Bool)

(assert (=> start!112220 (and (array_inv!32685 _values!1320) e!757516)))

(assert (=> start!112220 true))

(declare-fun array_inv!32686 (array!89839) Bool)

(assert (=> start!112220 (array_inv!32686 _keys!1590)))

(assert (=> start!112220 tp!107375))

(assert (=> start!112220 tp_is_empty!36489))

(declare-fun b!1328542 () Bool)

(assert (=> b!1328542 (= e!757518 false)))

(declare-fun defaultEntry!1323 () Int)

(declare-fun k0!1153 () (_ BitVec 64))

(declare-fun minValue!1262 () V!53755)

(declare-fun zeroValue!1262 () V!53755)

(declare-fun from!1980 () (_ BitVec 32))

(declare-fun lt!590798 () Bool)

(declare-datatypes ((tuple2!23728 0))(
  ( (tuple2!23729 (_1!11874 (_ BitVec 64)) (_2!11874 V!53755)) )
))
(declare-datatypes ((List!30915 0))(
  ( (Nil!30912) (Cons!30911 (h!32120 tuple2!23728) (t!44928 List!30915)) )
))
(declare-datatypes ((ListLongMap!21397 0))(
  ( (ListLongMap!21398 (toList!10714 List!30915)) )
))
(declare-fun contains!8814 (ListLongMap!21397 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5646 (array!89839 array!89837 (_ BitVec 32) (_ BitVec 32) V!53755 V!53755 (_ BitVec 32) Int) ListLongMap!21397)

(assert (=> b!1328542 (= lt!590798 (contains!8814 (getCurrentListMap!5646 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k0!1153))))

(declare-fun b!1328543 () Bool)

(declare-fun res!881555 () Bool)

(assert (=> b!1328543 (=> (not res!881555) (not e!757518))))

(assert (=> b!1328543 (= res!881555 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!43932 _keys!1590)) (not (= k0!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1328544 () Bool)

(declare-fun res!881554 () Bool)

(assert (=> b!1328544 (=> (not res!881554) (not e!757518))))

(declare-datatypes ((List!30916 0))(
  ( (Nil!30913) (Cons!30912 (h!32121 (_ BitVec 64)) (t!44929 List!30916)) )
))
(declare-fun arrayNoDuplicates!0 (array!89839 (_ BitVec 32) List!30916) Bool)

(assert (=> b!1328544 (= res!881554 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!30913))))

(declare-fun b!1328545 () Bool)

(declare-fun res!881557 () Bool)

(assert (=> b!1328545 (=> (not res!881557) (not e!757518))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89839 (_ BitVec 32)) Bool)

(assert (=> b!1328545 (= res!881557 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun b!1328546 () Bool)

(declare-fun e!757515 () Bool)

(assert (=> b!1328546 (= e!757515 tp_is_empty!36489)))

(declare-fun mapIsEmpty!56407 () Bool)

(assert (=> mapIsEmpty!56407 mapRes!56407))

(declare-fun mapNonEmpty!56407 () Bool)

(declare-fun tp!107374 () Bool)

(assert (=> mapNonEmpty!56407 (= mapRes!56407 (and tp!107374 e!757515))))

(declare-fun mapKey!56407 () (_ BitVec 32))

(declare-fun mapValue!56407 () ValueCell!17346)

(declare-fun mapRest!56407 () (Array (_ BitVec 32) ValueCell!17346))

(assert (=> mapNonEmpty!56407 (= (arr!43380 _values!1320) (store mapRest!56407 mapKey!56407 mapValue!56407))))

(assert (= (and start!112220 res!881558) b!1328541))

(assert (= (and b!1328541 res!881556) b!1328545))

(assert (= (and b!1328545 res!881557) b!1328544))

(assert (= (and b!1328544 res!881554) b!1328543))

(assert (= (and b!1328543 res!881555) b!1328542))

(assert (= (and b!1328539 condMapEmpty!56407) mapIsEmpty!56407))

(assert (= (and b!1328539 (not condMapEmpty!56407)) mapNonEmpty!56407))

(get-info :version)

(assert (= (and mapNonEmpty!56407 ((_ is ValueCellFull!17346) mapValue!56407)) b!1328546))

(assert (= (and b!1328539 ((_ is ValueCellFull!17346) mapDefault!56407)) b!1328540))

(assert (= start!112220 b!1328539))

(declare-fun m!1217485 () Bool)

(assert (=> b!1328542 m!1217485))

(assert (=> b!1328542 m!1217485))

(declare-fun m!1217487 () Bool)

(assert (=> b!1328542 m!1217487))

(declare-fun m!1217489 () Bool)

(assert (=> b!1328544 m!1217489))

(declare-fun m!1217491 () Bool)

(assert (=> start!112220 m!1217491))

(declare-fun m!1217493 () Bool)

(assert (=> start!112220 m!1217493))

(declare-fun m!1217495 () Bool)

(assert (=> start!112220 m!1217495))

(declare-fun m!1217497 () Bool)

(assert (=> b!1328545 m!1217497))

(declare-fun m!1217499 () Bool)

(assert (=> mapNonEmpty!56407 m!1217499))

(check-sat (not b!1328545) (not b_next!30579) (not mapNonEmpty!56407) (not b!1328544) tp_is_empty!36489 (not start!112220) b_and!49239 (not b!1328542))
(check-sat b_and!49239 (not b_next!30579))
