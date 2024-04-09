; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!111418 () Bool)

(assert start!111418)

(declare-fun b_free!30039 () Bool)

(declare-fun b_next!30039 () Bool)

(assert (=> start!111418 (= b_free!30039 (not b_next!30039))))

(declare-fun tp!105593 () Bool)

(declare-fun b_and!48269 () Bool)

(assert (=> start!111418 (= tp!105593 b_and!48269)))

(declare-fun b!1317887 () Bool)

(declare-fun e!752105 () Bool)

(declare-fun tp_is_empty!35859 () Bool)

(assert (=> b!1317887 (= e!752105 tp_is_empty!35859)))

(declare-fun b!1317888 () Bool)

(declare-fun res!874731 () Bool)

(declare-fun e!752103 () Bool)

(assert (=> b!1317888 (=> (not res!874731) (not e!752103))))

(declare-datatypes ((array!88621 0))(
  ( (array!88622 (arr!42780 (Array (_ BitVec 32) (_ BitVec 64))) (size!43331 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!88621)

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88621 (_ BitVec 32)) Bool)

(assert (=> b!1317888 (= res!874731 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun b!1317889 () Bool)

(declare-fun res!874735 () Bool)

(assert (=> b!1317889 (=> (not res!874735) (not e!752103))))

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun k0!1164 () (_ BitVec 64))

(assert (=> b!1317889 (= res!874735 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43331 _keys!1609)) (not (= k0!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapNonEmpty!55436 () Bool)

(declare-fun mapRes!55436 () Bool)

(declare-fun tp!105594 () Bool)

(declare-fun e!752106 () Bool)

(assert (=> mapNonEmpty!55436 (= mapRes!55436 (and tp!105594 e!752106))))

(declare-datatypes ((V!52915 0))(
  ( (V!52916 (val!18004 Int)) )
))
(declare-datatypes ((ValueCell!17031 0))(
  ( (ValueCellFull!17031 (v!20632 V!52915)) (EmptyCell!17031) )
))
(declare-datatypes ((array!88623 0))(
  ( (array!88624 (arr!42781 (Array (_ BitVec 32) ValueCell!17031)) (size!43332 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88623)

(declare-fun mapRest!55436 () (Array (_ BitVec 32) ValueCell!17031))

(declare-fun mapKey!55436 () (_ BitVec 32))

(declare-fun mapValue!55436 () ValueCell!17031)

(assert (=> mapNonEmpty!55436 (= (arr!42781 _values!1337) (store mapRest!55436 mapKey!55436 mapValue!55436))))

(declare-fun mapIsEmpty!55436 () Bool)

(assert (=> mapIsEmpty!55436 mapRes!55436))

(declare-fun b!1317891 () Bool)

(declare-fun res!874732 () Bool)

(assert (=> b!1317891 (=> (not res!874732) (not e!752103))))

(assert (=> b!1317891 (= res!874732 (and (= (size!43332 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43331 _keys!1609) (size!43332 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun b!1317892 () Bool)

(declare-fun e!752104 () Bool)

(assert (=> b!1317892 (= e!752104 (and e!752105 mapRes!55436))))

(declare-fun condMapEmpty!55436 () Bool)

(declare-fun mapDefault!55436 () ValueCell!17031)

(assert (=> b!1317892 (= condMapEmpty!55436 (= (arr!42781 _values!1337) ((as const (Array (_ BitVec 32) ValueCell!17031)) mapDefault!55436)))))

(declare-fun b!1317893 () Bool)

(assert (=> b!1317893 (= e!752106 tp_is_empty!35859)))

(declare-fun b!1317894 () Bool)

(declare-fun res!874734 () Bool)

(assert (=> b!1317894 (=> (not res!874734) (not e!752103))))

(declare-datatypes ((List!30508 0))(
  ( (Nil!30505) (Cons!30504 (h!31713 (_ BitVec 64)) (t!44123 List!30508)) )
))
(declare-fun arrayNoDuplicates!0 (array!88621 (_ BitVec 32) List!30508) Bool)

(assert (=> b!1317894 (= res!874734 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30505))))

(declare-fun res!874733 () Bool)

(assert (=> start!111418 (=> (not res!874733) (not e!752103))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111418 (= res!874733 (validMask!0 mask!2019))))

(assert (=> start!111418 e!752103))

(declare-fun array_inv!32261 (array!88621) Bool)

(assert (=> start!111418 (array_inv!32261 _keys!1609)))

(assert (=> start!111418 true))

(assert (=> start!111418 tp_is_empty!35859))

(declare-fun array_inv!32262 (array!88623) Bool)

(assert (=> start!111418 (and (array_inv!32262 _values!1337) e!752104)))

(assert (=> start!111418 tp!105593))

(declare-fun b!1317890 () Bool)

(assert (=> b!1317890 (= e!752103 false)))

(declare-fun lt!586366 () Bool)

(declare-fun zeroValue!1279 () V!52915)

(declare-fun minValue!1279 () V!52915)

(declare-fun defaultEntry!1340 () Int)

(declare-datatypes ((tuple2!23318 0))(
  ( (tuple2!23319 (_1!11669 (_ BitVec 64)) (_2!11669 V!52915)) )
))
(declare-datatypes ((List!30509 0))(
  ( (Nil!30506) (Cons!30505 (h!31714 tuple2!23318) (t!44124 List!30509)) )
))
(declare-datatypes ((ListLongMap!20987 0))(
  ( (ListLongMap!20988 (toList!10509 List!30509)) )
))
(declare-fun contains!8600 (ListLongMap!20987 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5465 (array!88621 array!88623 (_ BitVec 32) (_ BitVec 32) V!52915 V!52915 (_ BitVec 32) Int) ListLongMap!20987)

(assert (=> b!1317890 (= lt!586366 (contains!8600 (getCurrentListMap!5465 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k0!1164))))

(assert (= (and start!111418 res!874733) b!1317891))

(assert (= (and b!1317891 res!874732) b!1317888))

(assert (= (and b!1317888 res!874731) b!1317894))

(assert (= (and b!1317894 res!874734) b!1317889))

(assert (= (and b!1317889 res!874735) b!1317890))

(assert (= (and b!1317892 condMapEmpty!55436) mapIsEmpty!55436))

(assert (= (and b!1317892 (not condMapEmpty!55436)) mapNonEmpty!55436))

(get-info :version)

(assert (= (and mapNonEmpty!55436 ((_ is ValueCellFull!17031) mapValue!55436)) b!1317893))

(assert (= (and b!1317892 ((_ is ValueCellFull!17031) mapDefault!55436)) b!1317887))

(assert (= start!111418 b!1317892))

(declare-fun m!1205599 () Bool)

(assert (=> b!1317888 m!1205599))

(declare-fun m!1205601 () Bool)

(assert (=> mapNonEmpty!55436 m!1205601))

(declare-fun m!1205603 () Bool)

(assert (=> b!1317890 m!1205603))

(assert (=> b!1317890 m!1205603))

(declare-fun m!1205605 () Bool)

(assert (=> b!1317890 m!1205605))

(declare-fun m!1205607 () Bool)

(assert (=> start!111418 m!1205607))

(declare-fun m!1205609 () Bool)

(assert (=> start!111418 m!1205609))

(declare-fun m!1205611 () Bool)

(assert (=> start!111418 m!1205611))

(declare-fun m!1205613 () Bool)

(assert (=> b!1317894 m!1205613))

(check-sat (not b!1317890) (not b!1317894) tp_is_empty!35859 (not b!1317888) (not start!111418) b_and!48269 (not mapNonEmpty!55436) (not b_next!30039))
(check-sat b_and!48269 (not b_next!30039))
