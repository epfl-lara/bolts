; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!111496 () Bool)

(assert start!111496)

(declare-fun b_free!30117 () Bool)

(declare-fun b_next!30117 () Bool)

(assert (=> start!111496 (= b_free!30117 (not b_next!30117))))

(declare-fun tp!105827 () Bool)

(declare-fun b_and!48403 () Bool)

(assert (=> start!111496 (= tp!105827 b_and!48403)))

(declare-fun b!1319164 () Bool)

(declare-fun res!875607 () Bool)

(declare-fun e!752690 () Bool)

(assert (=> b!1319164 (=> (not res!875607) (not e!752690))))

(declare-datatypes ((array!88773 0))(
  ( (array!88774 (arr!42856 (Array (_ BitVec 32) (_ BitVec 64))) (size!43407 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!88773)

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1319164 (= res!875607 (validKeyInArray!0 (select (arr!42856 _keys!1609) from!2000)))))

(declare-fun mapIsEmpty!55553 () Bool)

(declare-fun mapRes!55553 () Bool)

(assert (=> mapIsEmpty!55553 mapRes!55553))

(declare-fun b!1319165 () Bool)

(declare-fun res!875602 () Bool)

(assert (=> b!1319165 (=> (not res!875602) (not e!752690))))

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-datatypes ((V!53019 0))(
  ( (V!53020 (val!18043 Int)) )
))
(declare-fun zeroValue!1279 () V!53019)

(declare-datatypes ((ValueCell!17070 0))(
  ( (ValueCellFull!17070 (v!20671 V!53019)) (EmptyCell!17070) )
))
(declare-datatypes ((array!88775 0))(
  ( (array!88776 (arr!42857 (Array (_ BitVec 32) ValueCell!17070)) (size!43408 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88775)

(declare-fun minValue!1279 () V!53019)

(declare-fun k0!1164 () (_ BitVec 64))

(declare-fun defaultEntry!1340 () Int)

(declare-fun mask!2019 () (_ BitVec 32))

(declare-datatypes ((tuple2!23380 0))(
  ( (tuple2!23381 (_1!11700 (_ BitVec 64)) (_2!11700 V!53019)) )
))
(declare-datatypes ((List!30567 0))(
  ( (Nil!30564) (Cons!30563 (h!31772 tuple2!23380) (t!44240 List!30567)) )
))
(declare-datatypes ((ListLongMap!21049 0))(
  ( (ListLongMap!21050 (toList!10540 List!30567)) )
))
(declare-fun contains!8631 (ListLongMap!21049 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5490 (array!88773 array!88775 (_ BitVec 32) (_ BitVec 32) V!53019 V!53019 (_ BitVec 32) Int) ListLongMap!21049)

(assert (=> b!1319165 (= res!875602 (contains!8631 (getCurrentListMap!5490 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k0!1164))))

(declare-fun b!1319166 () Bool)

(declare-fun res!875601 () Bool)

(assert (=> b!1319166 (=> (not res!875601) (not e!752690))))

(assert (=> b!1319166 (= res!875601 (not (= (select (arr!42856 _keys!1609) from!2000) k0!1164)))))

(declare-fun b!1319167 () Bool)

(assert (=> b!1319167 (= e!752690 (not true))))

(declare-fun lt!586543 () ListLongMap!21049)

(assert (=> b!1319167 (contains!8631 lt!586543 k0!1164)))

(declare-datatypes ((Unit!43396 0))(
  ( (Unit!43397) )
))
(declare-fun lt!586542 () Unit!43396)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!113 ((_ BitVec 64) (_ BitVec 64) V!53019 ListLongMap!21049) Unit!43396)

(assert (=> b!1319167 (= lt!586542 (lemmaInListMapAfterAddingDiffThenInBefore!113 k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 lt!586543))))

(declare-fun +!4498 (ListLongMap!21049 tuple2!23380) ListLongMap!21049)

(declare-fun getCurrentListMapNoExtraKeys!6213 (array!88773 array!88775 (_ BitVec 32) (_ BitVec 32) V!53019 V!53019 (_ BitVec 32) Int) ListLongMap!21049)

(declare-fun get!21584 (ValueCell!17070 V!53019) V!53019)

(declare-fun dynLambda!3535 (Int (_ BitVec 64)) V!53019)

(assert (=> b!1319167 (= lt!586543 (+!4498 (+!4498 (getCurrentListMapNoExtraKeys!6213 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340) (tuple2!23381 (select (arr!42856 _keys!1609) from!2000) (get!21584 (select (arr!42857 _values!1337) from!2000) (dynLambda!3535 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!23381 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)))))

(declare-fun b!1319168 () Bool)

(declare-fun res!875606 () Bool)

(assert (=> b!1319168 (=> (not res!875606) (not e!752690))))

(assert (=> b!1319168 (= res!875606 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43407 _keys!1609)) (not (= k0!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapNonEmpty!55553 () Bool)

(declare-fun tp!105828 () Bool)

(declare-fun e!752689 () Bool)

(assert (=> mapNonEmpty!55553 (= mapRes!55553 (and tp!105828 e!752689))))

(declare-fun mapValue!55553 () ValueCell!17070)

(declare-fun mapKey!55553 () (_ BitVec 32))

(declare-fun mapRest!55553 () (Array (_ BitVec 32) ValueCell!17070))

(assert (=> mapNonEmpty!55553 (= (arr!42857 _values!1337) (store mapRest!55553 mapKey!55553 mapValue!55553))))

(declare-fun b!1319169 () Bool)

(declare-fun res!875603 () Bool)

(assert (=> b!1319169 (=> (not res!875603) (not e!752690))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88773 (_ BitVec 32)) Bool)

(assert (=> b!1319169 (= res!875603 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun b!1319170 () Bool)

(declare-fun res!875604 () Bool)

(assert (=> b!1319170 (=> (not res!875604) (not e!752690))))

(declare-datatypes ((List!30568 0))(
  ( (Nil!30565) (Cons!30564 (h!31773 (_ BitVec 64)) (t!44241 List!30568)) )
))
(declare-fun arrayNoDuplicates!0 (array!88773 (_ BitVec 32) List!30568) Bool)

(assert (=> b!1319170 (= res!875604 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30565))))

(declare-fun b!1319171 () Bool)

(declare-fun tp_is_empty!35937 () Bool)

(assert (=> b!1319171 (= e!752689 tp_is_empty!35937)))

(declare-fun res!875608 () Bool)

(assert (=> start!111496 (=> (not res!875608) (not e!752690))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111496 (= res!875608 (validMask!0 mask!2019))))

(assert (=> start!111496 e!752690))

(declare-fun array_inv!32309 (array!88773) Bool)

(assert (=> start!111496 (array_inv!32309 _keys!1609)))

(assert (=> start!111496 true))

(assert (=> start!111496 tp_is_empty!35937))

(declare-fun e!752692 () Bool)

(declare-fun array_inv!32310 (array!88775) Bool)

(assert (=> start!111496 (and (array_inv!32310 _values!1337) e!752692)))

(assert (=> start!111496 tp!105827))

(declare-fun b!1319172 () Bool)

(declare-fun e!752688 () Bool)

(assert (=> b!1319172 (= e!752692 (and e!752688 mapRes!55553))))

(declare-fun condMapEmpty!55553 () Bool)

(declare-fun mapDefault!55553 () ValueCell!17070)

(assert (=> b!1319172 (= condMapEmpty!55553 (= (arr!42857 _values!1337) ((as const (Array (_ BitVec 32) ValueCell!17070)) mapDefault!55553)))))

(declare-fun b!1319173 () Bool)

(declare-fun res!875605 () Bool)

(assert (=> b!1319173 (=> (not res!875605) (not e!752690))))

(assert (=> b!1319173 (= res!875605 (and (= (size!43408 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43407 _keys!1609) (size!43408 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun b!1319174 () Bool)

(assert (=> b!1319174 (= e!752688 tp_is_empty!35937)))

(assert (= (and start!111496 res!875608) b!1319173))

(assert (= (and b!1319173 res!875605) b!1319169))

(assert (= (and b!1319169 res!875603) b!1319170))

(assert (= (and b!1319170 res!875604) b!1319168))

(assert (= (and b!1319168 res!875606) b!1319165))

(assert (= (and b!1319165 res!875602) b!1319166))

(assert (= (and b!1319166 res!875601) b!1319164))

(assert (= (and b!1319164 res!875607) b!1319167))

(assert (= (and b!1319172 condMapEmpty!55553) mapIsEmpty!55553))

(assert (= (and b!1319172 (not condMapEmpty!55553)) mapNonEmpty!55553))

(get-info :version)

(assert (= (and mapNonEmpty!55553 ((_ is ValueCellFull!17070) mapValue!55553)) b!1319171))

(assert (= (and b!1319172 ((_ is ValueCellFull!17070) mapDefault!55553)) b!1319174))

(assert (= start!111496 b!1319172))

(declare-fun b_lambda!23453 () Bool)

(assert (=> (not b_lambda!23453) (not b!1319167)))

(declare-fun t!44239 () Bool)

(declare-fun tb!11477 () Bool)

(assert (=> (and start!111496 (= defaultEntry!1340 defaultEntry!1340) t!44239) tb!11477))

(declare-fun result!24001 () Bool)

(assert (=> tb!11477 (= result!24001 tp_is_empty!35937)))

(assert (=> b!1319167 t!44239))

(declare-fun b_and!48405 () Bool)

(assert (= b_and!48403 (and (=> t!44239 result!24001) b_and!48405)))

(declare-fun m!1206795 () Bool)

(assert (=> b!1319164 m!1206795))

(assert (=> b!1319164 m!1206795))

(declare-fun m!1206797 () Bool)

(assert (=> b!1319164 m!1206797))

(assert (=> b!1319166 m!1206795))

(declare-fun m!1206799 () Bool)

(assert (=> start!111496 m!1206799))

(declare-fun m!1206801 () Bool)

(assert (=> start!111496 m!1206801))

(declare-fun m!1206803 () Bool)

(assert (=> start!111496 m!1206803))

(declare-fun m!1206805 () Bool)

(assert (=> mapNonEmpty!55553 m!1206805))

(declare-fun m!1206807 () Bool)

(assert (=> b!1319169 m!1206807))

(declare-fun m!1206809 () Bool)

(assert (=> b!1319165 m!1206809))

(assert (=> b!1319165 m!1206809))

(declare-fun m!1206811 () Bool)

(assert (=> b!1319165 m!1206811))

(declare-fun m!1206813 () Bool)

(assert (=> b!1319167 m!1206813))

(declare-fun m!1206815 () Bool)

(assert (=> b!1319167 m!1206815))

(assert (=> b!1319167 m!1206813))

(declare-fun m!1206817 () Bool)

(assert (=> b!1319167 m!1206817))

(declare-fun m!1206819 () Bool)

(assert (=> b!1319167 m!1206819))

(assert (=> b!1319167 m!1206817))

(declare-fun m!1206821 () Bool)

(assert (=> b!1319167 m!1206821))

(assert (=> b!1319167 m!1206819))

(assert (=> b!1319167 m!1206815))

(declare-fun m!1206823 () Bool)

(assert (=> b!1319167 m!1206823))

(declare-fun m!1206825 () Bool)

(assert (=> b!1319167 m!1206825))

(assert (=> b!1319167 m!1206795))

(declare-fun m!1206827 () Bool)

(assert (=> b!1319167 m!1206827))

(declare-fun m!1206829 () Bool)

(assert (=> b!1319170 m!1206829))

(check-sat (not start!111496) tp_is_empty!35937 (not b!1319167) (not b!1319169) (not b!1319164) (not b_next!30117) (not b!1319165) b_and!48405 (not b_lambda!23453) (not b!1319170) (not mapNonEmpty!55553))
(check-sat b_and!48405 (not b_next!30117))
