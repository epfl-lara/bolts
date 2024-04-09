; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!109410 () Bool)

(assert start!109410)

(declare-fun b_free!28863 () Bool)

(declare-fun b_next!28863 () Bool)

(assert (=> start!109410 (= b_free!28863 (not b_next!28863))))

(declare-fun tp!101709 () Bool)

(declare-fun b_and!46963 () Bool)

(assert (=> start!109410 (= tp!101709 b_and!46963)))

(declare-fun mapNonEmpty!53315 () Bool)

(declare-fun mapRes!53315 () Bool)

(declare-fun tp!101708 () Bool)

(declare-fun e!738731 () Bool)

(assert (=> mapNonEmpty!53315 (= mapRes!53315 (and tp!101708 e!738731))))

(declare-datatypes ((V!51107 0))(
  ( (V!51108 (val!17326 Int)) )
))
(declare-datatypes ((ValueCell!16353 0))(
  ( (ValueCellFull!16353 (v!19927 V!51107)) (EmptyCell!16353) )
))
(declare-fun mapValue!53315 () ValueCell!16353)

(declare-datatypes ((array!85991 0))(
  ( (array!85992 (arr!41492 (Array (_ BitVec 32) ValueCell!16353)) (size!42043 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85991)

(declare-fun mapRest!53315 () (Array (_ BitVec 32) ValueCell!16353))

(declare-fun mapKey!53315 () (_ BitVec 32))

(assert (=> mapNonEmpty!53315 (= (arr!41492 _values!1445) (store mapRest!53315 mapKey!53315 mapValue!53315))))

(declare-fun mapIsEmpty!53315 () Bool)

(assert (=> mapIsEmpty!53315 mapRes!53315))

(declare-fun b!1294570 () Bool)

(declare-fun res!860424 () Bool)

(declare-fun e!738730 () Bool)

(assert (=> b!1294570 (=> (not res!860424) (not e!738730))))

(declare-datatypes ((array!85993 0))(
  ( (array!85994 (arr!41493 (Array (_ BitVec 32) (_ BitVec 64))) (size!42044 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85993)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1294570 (= res!860424 (not (validKeyInArray!0 (select (arr!41493 _keys!1741) from!2144))))))

(declare-fun b!1294571 () Bool)

(declare-fun res!860430 () Bool)

(assert (=> b!1294571 (=> (not res!860430) (not e!738730))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85993 (_ BitVec 32)) Bool)

(assert (=> b!1294571 (= res!860430 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1294572 () Bool)

(declare-fun tp_is_empty!34503 () Bool)

(assert (=> b!1294572 (= e!738731 tp_is_empty!34503)))

(declare-fun b!1294573 () Bool)

(declare-fun res!860427 () Bool)

(assert (=> b!1294573 (=> (not res!860427) (not e!738730))))

(declare-fun k0!1205 () (_ BitVec 64))

(assert (=> b!1294573 (= res!860427 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!42044 _keys!1741))))))

(declare-fun res!860423 () Bool)

(assert (=> start!109410 (=> (not res!860423) (not e!738730))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109410 (= res!860423 (validMask!0 mask!2175))))

(assert (=> start!109410 e!738730))

(assert (=> start!109410 tp_is_empty!34503))

(assert (=> start!109410 true))

(declare-fun e!738729 () Bool)

(declare-fun array_inv!31397 (array!85991) Bool)

(assert (=> start!109410 (and (array_inv!31397 _values!1445) e!738729)))

(declare-fun array_inv!31398 (array!85993) Bool)

(assert (=> start!109410 (array_inv!31398 _keys!1741)))

(assert (=> start!109410 tp!101709))

(declare-fun b!1294574 () Bool)

(declare-fun e!738733 () Bool)

(assert (=> b!1294574 (= e!738729 (and e!738733 mapRes!53315))))

(declare-fun condMapEmpty!53315 () Bool)

(declare-fun mapDefault!53315 () ValueCell!16353)

(assert (=> b!1294574 (= condMapEmpty!53315 (= (arr!41492 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16353)) mapDefault!53315)))))

(declare-fun b!1294575 () Bool)

(assert (=> b!1294575 (= e!738730 (not true))))

(declare-datatypes ((tuple2!22448 0))(
  ( (tuple2!22449 (_1!11234 (_ BitVec 64)) (_2!11234 V!51107)) )
))
(declare-datatypes ((List!29622 0))(
  ( (Nil!29619) (Cons!29618 (h!30827 tuple2!22448) (t!43193 List!29622)) )
))
(declare-datatypes ((ListLongMap!20117 0))(
  ( (ListLongMap!20118 (toList!10074 List!29622)) )
))
(declare-fun contains!8130 (ListLongMap!20117 (_ BitVec 64)) Bool)

(assert (=> b!1294575 (not (contains!8130 (ListLongMap!20118 Nil!29619) k0!1205))))

(declare-datatypes ((Unit!42819 0))(
  ( (Unit!42820) )
))
(declare-fun lt!579673 () Unit!42819)

(declare-fun emptyContainsNothing!166 ((_ BitVec 64)) Unit!42819)

(assert (=> b!1294575 (= lt!579673 (emptyContainsNothing!166 k0!1205))))

(declare-fun b!1294576 () Bool)

(declare-fun res!860429 () Bool)

(assert (=> b!1294576 (=> (not res!860429) (not e!738730))))

(assert (=> b!1294576 (= res!860429 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42044 _keys!1741))))))

(declare-fun b!1294577 () Bool)

(assert (=> b!1294577 (= e!738733 tp_is_empty!34503)))

(declare-fun b!1294578 () Bool)

(declare-fun res!860426 () Bool)

(assert (=> b!1294578 (=> (not res!860426) (not e!738730))))

(declare-fun minValue!1387 () V!51107)

(declare-fun zeroValue!1387 () V!51107)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-fun getCurrentListMap!5058 (array!85993 array!85991 (_ BitVec 32) (_ BitVec 32) V!51107 V!51107 (_ BitVec 32) Int) ListLongMap!20117)

(assert (=> b!1294578 (= res!860426 (contains!8130 (getCurrentListMap!5058 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1294579 () Bool)

(declare-fun res!860425 () Bool)

(assert (=> b!1294579 (=> (not res!860425) (not e!738730))))

(assert (=> b!1294579 (= res!860425 (and (= (size!42043 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42044 _keys!1741) (size!42043 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1294580 () Bool)

(declare-fun res!860428 () Bool)

(assert (=> b!1294580 (=> (not res!860428) (not e!738730))))

(declare-datatypes ((List!29623 0))(
  ( (Nil!29620) (Cons!29619 (h!30828 (_ BitVec 64)) (t!43194 List!29623)) )
))
(declare-fun arrayNoDuplicates!0 (array!85993 (_ BitVec 32) List!29623) Bool)

(assert (=> b!1294580 (= res!860428 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29620))))

(assert (= (and start!109410 res!860423) b!1294579))

(assert (= (and b!1294579 res!860425) b!1294571))

(assert (= (and b!1294571 res!860430) b!1294580))

(assert (= (and b!1294580 res!860428) b!1294576))

(assert (= (and b!1294576 res!860429) b!1294578))

(assert (= (and b!1294578 res!860426) b!1294573))

(assert (= (and b!1294573 res!860427) b!1294570))

(assert (= (and b!1294570 res!860424) b!1294575))

(assert (= (and b!1294574 condMapEmpty!53315) mapIsEmpty!53315))

(assert (= (and b!1294574 (not condMapEmpty!53315)) mapNonEmpty!53315))

(get-info :version)

(assert (= (and mapNonEmpty!53315 ((_ is ValueCellFull!16353) mapValue!53315)) b!1294572))

(assert (= (and b!1294574 ((_ is ValueCellFull!16353) mapDefault!53315)) b!1294577))

(assert (= start!109410 b!1294574))

(declare-fun m!1186757 () Bool)

(assert (=> b!1294570 m!1186757))

(assert (=> b!1294570 m!1186757))

(declare-fun m!1186759 () Bool)

(assert (=> b!1294570 m!1186759))

(declare-fun m!1186761 () Bool)

(assert (=> b!1294578 m!1186761))

(assert (=> b!1294578 m!1186761))

(declare-fun m!1186763 () Bool)

(assert (=> b!1294578 m!1186763))

(declare-fun m!1186765 () Bool)

(assert (=> mapNonEmpty!53315 m!1186765))

(declare-fun m!1186767 () Bool)

(assert (=> b!1294571 m!1186767))

(declare-fun m!1186769 () Bool)

(assert (=> b!1294580 m!1186769))

(declare-fun m!1186771 () Bool)

(assert (=> b!1294575 m!1186771))

(declare-fun m!1186773 () Bool)

(assert (=> b!1294575 m!1186773))

(declare-fun m!1186775 () Bool)

(assert (=> start!109410 m!1186775))

(declare-fun m!1186777 () Bool)

(assert (=> start!109410 m!1186777))

(declare-fun m!1186779 () Bool)

(assert (=> start!109410 m!1186779))

(check-sat (not b!1294570) (not b_next!28863) tp_is_empty!34503 (not start!109410) b_and!46963 (not b!1294580) (not b!1294578) (not mapNonEmpty!53315) (not b!1294575) (not b!1294571))
(check-sat b_and!46963 (not b_next!28863))
