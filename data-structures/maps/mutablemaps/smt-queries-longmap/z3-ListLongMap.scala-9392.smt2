; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!111826 () Bool)

(assert start!111826)

(declare-fun b_free!30447 () Bool)

(declare-fun b_next!30447 () Bool)

(assert (=> start!111826 (= b_free!30447 (not b_next!30447))))

(declare-fun tp!106817 () Bool)

(declare-fun b_and!48995 () Bool)

(assert (=> start!111826 (= tp!106817 b_and!48995)))

(declare-fun b!1324601 () Bool)

(declare-fun e!755167 () Bool)

(declare-fun tp_is_empty!36267 () Bool)

(assert (=> b!1324601 (= e!755167 tp_is_empty!36267)))

(declare-fun b!1324602 () Bool)

(declare-fun e!755166 () Bool)

(assert (=> b!1324602 (= e!755166 false)))

(declare-datatypes ((array!89403 0))(
  ( (array!89404 (arr!43171 (Array (_ BitVec 32) (_ BitVec 64))) (size!43722 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!89403)

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun from!2000 () (_ BitVec 32))

(declare-datatypes ((V!53459 0))(
  ( (V!53460 (val!18208 Int)) )
))
(declare-fun zeroValue!1279 () V!53459)

(declare-datatypes ((ValueCell!17235 0))(
  ( (ValueCellFull!17235 (v!20836 V!53459)) (EmptyCell!17235) )
))
(declare-datatypes ((array!89405 0))(
  ( (array!89406 (arr!43172 (Array (_ BitVec 32) ValueCell!17235)) (size!43723 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89405)

(declare-fun minValue!1279 () V!53459)

(declare-datatypes ((tuple2!23632 0))(
  ( (tuple2!23633 (_1!11826 (_ BitVec 64)) (_2!11826 V!53459)) )
))
(declare-datatypes ((List!30802 0))(
  ( (Nil!30799) (Cons!30798 (h!32007 tuple2!23632) (t!44735 List!30802)) )
))
(declare-datatypes ((ListLongMap!21301 0))(
  ( (ListLongMap!21302 (toList!10666 List!30802)) )
))
(declare-fun lt!589426 () ListLongMap!21301)

(declare-fun defaultEntry!1340 () Int)

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!6301 (array!89403 array!89405 (_ BitVec 32) (_ BitVec 32) V!53459 V!53459 (_ BitVec 32) Int) ListLongMap!21301)

(assert (=> b!1324602 (= lt!589426 (getCurrentListMapNoExtraKeys!6301 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340))))

(declare-fun mapNonEmpty!56048 () Bool)

(declare-fun mapRes!56048 () Bool)

(declare-fun tp!106818 () Bool)

(assert (=> mapNonEmpty!56048 (= mapRes!56048 (and tp!106818 e!755167))))

(declare-fun mapRest!56048 () (Array (_ BitVec 32) ValueCell!17235))

(declare-fun mapValue!56048 () ValueCell!17235)

(declare-fun mapKey!56048 () (_ BitVec 32))

(assert (=> mapNonEmpty!56048 (= (arr!43172 _values!1337) (store mapRest!56048 mapKey!56048 mapValue!56048))))

(declare-fun b!1324603 () Bool)

(declare-fun res!879298 () Bool)

(assert (=> b!1324603 (=> (not res!879298) (not e!755166))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89403 (_ BitVec 32)) Bool)

(assert (=> b!1324603 (= res!879298 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun b!1324604 () Bool)

(declare-fun e!755165 () Bool)

(declare-fun e!755164 () Bool)

(assert (=> b!1324604 (= e!755165 (and e!755164 mapRes!56048))))

(declare-fun condMapEmpty!56048 () Bool)

(declare-fun mapDefault!56048 () ValueCell!17235)

(assert (=> b!1324604 (= condMapEmpty!56048 (= (arr!43172 _values!1337) ((as const (Array (_ BitVec 32) ValueCell!17235)) mapDefault!56048)))))

(declare-fun b!1324605 () Bool)

(assert (=> b!1324605 (= e!755164 tp_is_empty!36267)))

(declare-fun b!1324606 () Bool)

(declare-fun res!879296 () Bool)

(assert (=> b!1324606 (=> (not res!879296) (not e!755166))))

(declare-fun k0!1164 () (_ BitVec 64))

(assert (=> b!1324606 (= res!879296 (not (= (select (arr!43171 _keys!1609) from!2000) k0!1164)))))

(declare-fun mapIsEmpty!56048 () Bool)

(assert (=> mapIsEmpty!56048 mapRes!56048))

(declare-fun b!1324607 () Bool)

(declare-fun res!879297 () Bool)

(assert (=> b!1324607 (=> (not res!879297) (not e!755166))))

(assert (=> b!1324607 (= res!879297 (and (= (size!43723 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43722 _keys!1609) (size!43723 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun res!879294 () Bool)

(assert (=> start!111826 (=> (not res!879294) (not e!755166))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111826 (= res!879294 (validMask!0 mask!2019))))

(assert (=> start!111826 e!755166))

(declare-fun array_inv!32531 (array!89403) Bool)

(assert (=> start!111826 (array_inv!32531 _keys!1609)))

(assert (=> start!111826 true))

(assert (=> start!111826 tp_is_empty!36267))

(declare-fun array_inv!32532 (array!89405) Bool)

(assert (=> start!111826 (and (array_inv!32532 _values!1337) e!755165)))

(assert (=> start!111826 tp!106817))

(declare-fun b!1324608 () Bool)

(declare-fun res!879291 () Bool)

(assert (=> b!1324608 (=> (not res!879291) (not e!755166))))

(declare-fun contains!8757 (ListLongMap!21301 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5603 (array!89403 array!89405 (_ BitVec 32) (_ BitVec 32) V!53459 V!53459 (_ BitVec 32) Int) ListLongMap!21301)

(assert (=> b!1324608 (= res!879291 (contains!8757 (getCurrentListMap!5603 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k0!1164))))

(declare-fun b!1324609 () Bool)

(declare-fun res!879293 () Bool)

(assert (=> b!1324609 (=> (not res!879293) (not e!755166))))

(assert (=> b!1324609 (= res!879293 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43722 _keys!1609)) (not (= k0!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1324610 () Bool)

(declare-fun res!879295 () Bool)

(assert (=> b!1324610 (=> (not res!879295) (not e!755166))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1324610 (= res!879295 (validKeyInArray!0 (select (arr!43171 _keys!1609) from!2000)))))

(declare-fun b!1324611 () Bool)

(declare-fun res!879292 () Bool)

(assert (=> b!1324611 (=> (not res!879292) (not e!755166))))

(declare-datatypes ((List!30803 0))(
  ( (Nil!30800) (Cons!30799 (h!32008 (_ BitVec 64)) (t!44736 List!30803)) )
))
(declare-fun arrayNoDuplicates!0 (array!89403 (_ BitVec 32) List!30803) Bool)

(assert (=> b!1324611 (= res!879292 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30800))))

(assert (= (and start!111826 res!879294) b!1324607))

(assert (= (and b!1324607 res!879297) b!1324603))

(assert (= (and b!1324603 res!879298) b!1324611))

(assert (= (and b!1324611 res!879292) b!1324609))

(assert (= (and b!1324609 res!879293) b!1324608))

(assert (= (and b!1324608 res!879291) b!1324606))

(assert (= (and b!1324606 res!879296) b!1324610))

(assert (= (and b!1324610 res!879295) b!1324602))

(assert (= (and b!1324604 condMapEmpty!56048) mapIsEmpty!56048))

(assert (= (and b!1324604 (not condMapEmpty!56048)) mapNonEmpty!56048))

(get-info :version)

(assert (= (and mapNonEmpty!56048 ((_ is ValueCellFull!17235) mapValue!56048)) b!1324601))

(assert (= (and b!1324604 ((_ is ValueCellFull!17235) mapDefault!56048)) b!1324605))

(assert (= start!111826 b!1324604))

(declare-fun m!1213405 () Bool)

(assert (=> b!1324611 m!1213405))

(declare-fun m!1213407 () Bool)

(assert (=> start!111826 m!1213407))

(declare-fun m!1213409 () Bool)

(assert (=> start!111826 m!1213409))

(declare-fun m!1213411 () Bool)

(assert (=> start!111826 m!1213411))

(declare-fun m!1213413 () Bool)

(assert (=> b!1324602 m!1213413))

(declare-fun m!1213415 () Bool)

(assert (=> b!1324610 m!1213415))

(assert (=> b!1324610 m!1213415))

(declare-fun m!1213417 () Bool)

(assert (=> b!1324610 m!1213417))

(assert (=> b!1324606 m!1213415))

(declare-fun m!1213419 () Bool)

(assert (=> mapNonEmpty!56048 m!1213419))

(declare-fun m!1213421 () Bool)

(assert (=> b!1324608 m!1213421))

(assert (=> b!1324608 m!1213421))

(declare-fun m!1213423 () Bool)

(assert (=> b!1324608 m!1213423))

(declare-fun m!1213425 () Bool)

(assert (=> b!1324603 m!1213425))

(check-sat (not mapNonEmpty!56048) (not start!111826) (not b!1324610) (not b!1324603) (not b!1324611) tp_is_empty!36267 b_and!48995 (not b_next!30447) (not b!1324608) (not b!1324602))
(check-sat b_and!48995 (not b_next!30447))
