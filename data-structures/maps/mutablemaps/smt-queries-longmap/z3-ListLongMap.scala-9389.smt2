; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!111808 () Bool)

(assert start!111808)

(declare-fun b_free!30429 () Bool)

(declare-fun b_next!30429 () Bool)

(assert (=> start!111808 (= b_free!30429 (not b_next!30429))))

(declare-fun tp!106764 () Bool)

(declare-fun b_and!48977 () Bool)

(assert (=> start!111808 (= tp!106764 b_and!48977)))

(declare-fun b!1324358 () Bool)

(declare-fun res!879136 () Bool)

(declare-fun e!755029 () Bool)

(assert (=> b!1324358 (=> (not res!879136) (not e!755029))))

(declare-datatypes ((array!89367 0))(
  ( (array!89368 (arr!43153 (Array (_ BitVec 32) (_ BitVec 64))) (size!43704 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!89367)

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun k0!1164 () (_ BitVec 64))

(assert (=> b!1324358 (= res!879136 (not (= (select (arr!43153 _keys!1609) from!2000) k0!1164)))))

(declare-fun b!1324359 () Bool)

(declare-fun res!879133 () Bool)

(assert (=> b!1324359 (=> (not res!879133) (not e!755029))))

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-datatypes ((V!53435 0))(
  ( (V!53436 (val!18199 Int)) )
))
(declare-fun zeroValue!1279 () V!53435)

(declare-datatypes ((ValueCell!17226 0))(
  ( (ValueCellFull!17226 (v!20827 V!53435)) (EmptyCell!17226) )
))
(declare-datatypes ((array!89369 0))(
  ( (array!89370 (arr!43154 (Array (_ BitVec 32) ValueCell!17226)) (size!43705 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89369)

(declare-fun minValue!1279 () V!53435)

(declare-fun defaultEntry!1340 () Int)

(declare-fun mask!2019 () (_ BitVec 32))

(declare-datatypes ((tuple2!23616 0))(
  ( (tuple2!23617 (_1!11818 (_ BitVec 64)) (_2!11818 V!53435)) )
))
(declare-datatypes ((List!30788 0))(
  ( (Nil!30785) (Cons!30784 (h!31993 tuple2!23616) (t!44721 List!30788)) )
))
(declare-datatypes ((ListLongMap!21285 0))(
  ( (ListLongMap!21286 (toList!10658 List!30788)) )
))
(declare-fun contains!8749 (ListLongMap!21285 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5595 (array!89367 array!89369 (_ BitVec 32) (_ BitVec 32) V!53435 V!53435 (_ BitVec 32) Int) ListLongMap!21285)

(assert (=> b!1324359 (= res!879133 (contains!8749 (getCurrentListMap!5595 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k0!1164))))

(declare-fun b!1324360 () Bool)

(declare-fun e!755028 () Bool)

(declare-fun e!755031 () Bool)

(declare-fun mapRes!56021 () Bool)

(assert (=> b!1324360 (= e!755028 (and e!755031 mapRes!56021))))

(declare-fun condMapEmpty!56021 () Bool)

(declare-fun mapDefault!56021 () ValueCell!17226)

(assert (=> b!1324360 (= condMapEmpty!56021 (= (arr!43154 _values!1337) ((as const (Array (_ BitVec 32) ValueCell!17226)) mapDefault!56021)))))

(declare-fun b!1324361 () Bool)

(declare-fun res!879135 () Bool)

(assert (=> b!1324361 (=> (not res!879135) (not e!755029))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89367 (_ BitVec 32)) Bool)

(assert (=> b!1324361 (= res!879135 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun b!1324362 () Bool)

(declare-fun res!879130 () Bool)

(assert (=> b!1324362 (=> (not res!879130) (not e!755029))))

(declare-datatypes ((List!30789 0))(
  ( (Nil!30786) (Cons!30785 (h!31994 (_ BitVec 64)) (t!44722 List!30789)) )
))
(declare-fun arrayNoDuplicates!0 (array!89367 (_ BitVec 32) List!30789) Bool)

(assert (=> b!1324362 (= res!879130 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30786))))

(declare-fun b!1324363 () Bool)

(declare-fun res!879129 () Bool)

(assert (=> b!1324363 (=> (not res!879129) (not e!755029))))

(assert (=> b!1324363 (= res!879129 (and (= (size!43705 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43704 _keys!1609) (size!43705 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun b!1324364 () Bool)

(declare-fun res!879132 () Bool)

(assert (=> b!1324364 (=> (not res!879132) (not e!755029))))

(assert (=> b!1324364 (= res!879132 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43704 _keys!1609)) (not (= k0!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapNonEmpty!56021 () Bool)

(declare-fun tp!106763 () Bool)

(declare-fun e!755032 () Bool)

(assert (=> mapNonEmpty!56021 (= mapRes!56021 (and tp!106763 e!755032))))

(declare-fun mapRest!56021 () (Array (_ BitVec 32) ValueCell!17226))

(declare-fun mapKey!56021 () (_ BitVec 32))

(declare-fun mapValue!56021 () ValueCell!17226)

(assert (=> mapNonEmpty!56021 (= (arr!43154 _values!1337) (store mapRest!56021 mapKey!56021 mapValue!56021))))

(declare-fun res!879134 () Bool)

(assert (=> start!111808 (=> (not res!879134) (not e!755029))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111808 (= res!879134 (validMask!0 mask!2019))))

(assert (=> start!111808 e!755029))

(declare-fun array_inv!32517 (array!89367) Bool)

(assert (=> start!111808 (array_inv!32517 _keys!1609)))

(assert (=> start!111808 true))

(declare-fun tp_is_empty!36249 () Bool)

(assert (=> start!111808 tp_is_empty!36249))

(declare-fun array_inv!32518 (array!89369) Bool)

(assert (=> start!111808 (and (array_inv!32518 _values!1337) e!755028)))

(assert (=> start!111808 tp!106764))

(declare-fun b!1324365 () Bool)

(assert (=> b!1324365 (= e!755029 (bvslt (bvadd #b00000000000000000000000000000001 from!2000) #b00000000000000000000000000000000))))

(declare-fun mapIsEmpty!56021 () Bool)

(assert (=> mapIsEmpty!56021 mapRes!56021))

(declare-fun b!1324366 () Bool)

(assert (=> b!1324366 (= e!755032 tp_is_empty!36249)))

(declare-fun b!1324367 () Bool)

(assert (=> b!1324367 (= e!755031 tp_is_empty!36249)))

(declare-fun b!1324368 () Bool)

(declare-fun res!879131 () Bool)

(assert (=> b!1324368 (=> (not res!879131) (not e!755029))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1324368 (= res!879131 (not (validKeyInArray!0 (select (arr!43153 _keys!1609) from!2000))))))

(assert (= (and start!111808 res!879134) b!1324363))

(assert (= (and b!1324363 res!879129) b!1324361))

(assert (= (and b!1324361 res!879135) b!1324362))

(assert (= (and b!1324362 res!879130) b!1324364))

(assert (= (and b!1324364 res!879132) b!1324359))

(assert (= (and b!1324359 res!879133) b!1324358))

(assert (= (and b!1324358 res!879136) b!1324368))

(assert (= (and b!1324368 res!879131) b!1324365))

(assert (= (and b!1324360 condMapEmpty!56021) mapIsEmpty!56021))

(assert (= (and b!1324360 (not condMapEmpty!56021)) mapNonEmpty!56021))

(get-info :version)

(assert (= (and mapNonEmpty!56021 ((_ is ValueCellFull!17226) mapValue!56021)) b!1324366))

(assert (= (and b!1324360 ((_ is ValueCellFull!17226) mapDefault!56021)) b!1324367))

(assert (= start!111808 b!1324360))

(declare-fun m!1213247 () Bool)

(assert (=> b!1324368 m!1213247))

(assert (=> b!1324368 m!1213247))

(declare-fun m!1213249 () Bool)

(assert (=> b!1324368 m!1213249))

(declare-fun m!1213251 () Bool)

(assert (=> b!1324361 m!1213251))

(declare-fun m!1213253 () Bool)

(assert (=> b!1324362 m!1213253))

(declare-fun m!1213255 () Bool)

(assert (=> b!1324359 m!1213255))

(assert (=> b!1324359 m!1213255))

(declare-fun m!1213257 () Bool)

(assert (=> b!1324359 m!1213257))

(declare-fun m!1213259 () Bool)

(assert (=> mapNonEmpty!56021 m!1213259))

(assert (=> b!1324358 m!1213247))

(declare-fun m!1213261 () Bool)

(assert (=> start!111808 m!1213261))

(declare-fun m!1213263 () Bool)

(assert (=> start!111808 m!1213263))

(declare-fun m!1213265 () Bool)

(assert (=> start!111808 m!1213265))

(check-sat (not mapNonEmpty!56021) (not b_next!30429) (not b!1324362) (not start!111808) (not b!1324359) (not b!1324361) b_and!48977 tp_is_empty!36249 (not b!1324368))
(check-sat b_and!48977 (not b_next!30429))
