; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!109008 () Bool)

(assert start!109008)

(declare-fun b_free!28461 () Bool)

(declare-fun b_next!28461 () Bool)

(assert (=> start!109008 (= b_free!28461 (not b_next!28461))))

(declare-fun tp!100503 () Bool)

(declare-fun b_and!46561 () Bool)

(assert (=> start!109008 (= tp!100503 b_and!46561)))

(declare-fun b!1287532 () Bool)

(declare-fun res!855196 () Bool)

(declare-fun e!735310 () Bool)

(assert (=> b!1287532 (=> (not res!855196) (not e!735310))))

(declare-datatypes ((array!85207 0))(
  ( (array!85208 (arr!41100 (Array (_ BitVec 32) (_ BitVec 64))) (size!41651 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85207)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1287532 (= res!855196 (not (validKeyInArray!0 (select (arr!41100 _keys!1741) from!2144))))))

(declare-fun b!1287533 () Bool)

(declare-fun res!855198 () Bool)

(assert (=> b!1287533 (=> (not res!855198) (not e!735310))))

(assert (=> b!1287533 (= res!855198 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41651 _keys!1741))))))

(declare-fun mapNonEmpty!52712 () Bool)

(declare-fun mapRes!52712 () Bool)

(declare-fun tp!100502 () Bool)

(declare-fun e!735309 () Bool)

(assert (=> mapNonEmpty!52712 (= mapRes!52712 (and tp!100502 e!735309))))

(declare-fun mapKey!52712 () (_ BitVec 32))

(declare-datatypes ((V!50571 0))(
  ( (V!50572 (val!17125 Int)) )
))
(declare-datatypes ((ValueCell!16152 0))(
  ( (ValueCellFull!16152 (v!19726 V!50571)) (EmptyCell!16152) )
))
(declare-fun mapValue!52712 () ValueCell!16152)

(declare-fun mapRest!52712 () (Array (_ BitVec 32) ValueCell!16152))

(declare-datatypes ((array!85209 0))(
  ( (array!85210 (arr!41101 (Array (_ BitVec 32) ValueCell!16152)) (size!41652 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85209)

(assert (=> mapNonEmpty!52712 (= (arr!41101 _values!1445) (store mapRest!52712 mapKey!52712 mapValue!52712))))

(declare-fun mapIsEmpty!52712 () Bool)

(assert (=> mapIsEmpty!52712 mapRes!52712))

(declare-fun b!1287534 () Bool)

(declare-fun res!855195 () Bool)

(assert (=> b!1287534 (=> (not res!855195) (not e!735310))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1287534 (= res!855195 (and (= (size!41652 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41651 _keys!1741) (size!41652 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1287535 () Bool)

(assert (=> b!1287535 (= e!735310 (not true))))

(declare-fun k0!1205 () (_ BitVec 64))

(declare-datatypes ((tuple2!22108 0))(
  ( (tuple2!22109 (_1!11064 (_ BitVec 64)) (_2!11064 V!50571)) )
))
(declare-datatypes ((List!29308 0))(
  ( (Nil!29305) (Cons!29304 (h!30513 tuple2!22108) (t!42879 List!29308)) )
))
(declare-datatypes ((ListLongMap!19777 0))(
  ( (ListLongMap!19778 (toList!9904 List!29308)) )
))
(declare-fun contains!7960 (ListLongMap!19777 (_ BitVec 64)) Bool)

(assert (=> b!1287535 (not (contains!7960 (ListLongMap!19778 Nil!29305) k0!1205))))

(declare-datatypes ((Unit!42511 0))(
  ( (Unit!42512) )
))
(declare-fun lt!577819 () Unit!42511)

(declare-fun emptyContainsNothing!23 ((_ BitVec 64)) Unit!42511)

(assert (=> b!1287535 (= lt!577819 (emptyContainsNothing!23 k0!1205))))

(declare-fun b!1287536 () Bool)

(declare-fun res!855200 () Bool)

(assert (=> b!1287536 (=> (not res!855200) (not e!735310))))

(declare-datatypes ((List!29309 0))(
  ( (Nil!29306) (Cons!29305 (h!30514 (_ BitVec 64)) (t!42880 List!29309)) )
))
(declare-fun arrayNoDuplicates!0 (array!85207 (_ BitVec 32) List!29309) Bool)

(assert (=> b!1287536 (= res!855200 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29306))))

(declare-fun b!1287537 () Bool)

(declare-fun res!855197 () Bool)

(assert (=> b!1287537 (=> (not res!855197) (not e!735310))))

(assert (=> b!1287537 (= res!855197 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41651 _keys!1741))))))

(declare-fun b!1287538 () Bool)

(declare-fun tp_is_empty!34101 () Bool)

(assert (=> b!1287538 (= e!735309 tp_is_empty!34101)))

(declare-fun res!855199 () Bool)

(assert (=> start!109008 (=> (not res!855199) (not e!735310))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109008 (= res!855199 (validMask!0 mask!2175))))

(assert (=> start!109008 e!735310))

(assert (=> start!109008 tp_is_empty!34101))

(assert (=> start!109008 true))

(declare-fun e!735312 () Bool)

(declare-fun array_inv!31137 (array!85209) Bool)

(assert (=> start!109008 (and (array_inv!31137 _values!1445) e!735312)))

(declare-fun array_inv!31138 (array!85207) Bool)

(assert (=> start!109008 (array_inv!31138 _keys!1741)))

(assert (=> start!109008 tp!100503))

(declare-fun b!1287539 () Bool)

(declare-fun res!855201 () Bool)

(assert (=> b!1287539 (=> (not res!855201) (not e!735310))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85207 (_ BitVec 32)) Bool)

(assert (=> b!1287539 (= res!855201 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1287540 () Bool)

(declare-fun e!735313 () Bool)

(assert (=> b!1287540 (= e!735313 tp_is_empty!34101)))

(declare-fun b!1287541 () Bool)

(declare-fun res!855194 () Bool)

(assert (=> b!1287541 (=> (not res!855194) (not e!735310))))

(declare-fun minValue!1387 () V!50571)

(declare-fun zeroValue!1387 () V!50571)

(declare-fun defaultEntry!1448 () Int)

(declare-fun getCurrentListMap!4911 (array!85207 array!85209 (_ BitVec 32) (_ BitVec 32) V!50571 V!50571 (_ BitVec 32) Int) ListLongMap!19777)

(assert (=> b!1287541 (= res!855194 (contains!7960 (getCurrentListMap!4911 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1287542 () Bool)

(assert (=> b!1287542 (= e!735312 (and e!735313 mapRes!52712))))

(declare-fun condMapEmpty!52712 () Bool)

(declare-fun mapDefault!52712 () ValueCell!16152)

(assert (=> b!1287542 (= condMapEmpty!52712 (= (arr!41101 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16152)) mapDefault!52712)))))

(assert (= (and start!109008 res!855199) b!1287534))

(assert (= (and b!1287534 res!855195) b!1287539))

(assert (= (and b!1287539 res!855201) b!1287536))

(assert (= (and b!1287536 res!855200) b!1287533))

(assert (= (and b!1287533 res!855198) b!1287541))

(assert (= (and b!1287541 res!855194) b!1287537))

(assert (= (and b!1287537 res!855197) b!1287532))

(assert (= (and b!1287532 res!855196) b!1287535))

(assert (= (and b!1287542 condMapEmpty!52712) mapIsEmpty!52712))

(assert (= (and b!1287542 (not condMapEmpty!52712)) mapNonEmpty!52712))

(get-info :version)

(assert (= (and mapNonEmpty!52712 ((_ is ValueCellFull!16152) mapValue!52712)) b!1287538))

(assert (= (and b!1287542 ((_ is ValueCellFull!16152) mapDefault!52712)) b!1287540))

(assert (= start!109008 b!1287542))

(declare-fun m!1180385 () Bool)

(assert (=> start!109008 m!1180385))

(declare-fun m!1180387 () Bool)

(assert (=> start!109008 m!1180387))

(declare-fun m!1180389 () Bool)

(assert (=> start!109008 m!1180389))

(declare-fun m!1180391 () Bool)

(assert (=> b!1287536 m!1180391))

(declare-fun m!1180393 () Bool)

(assert (=> b!1287535 m!1180393))

(declare-fun m!1180395 () Bool)

(assert (=> b!1287535 m!1180395))

(declare-fun m!1180397 () Bool)

(assert (=> b!1287532 m!1180397))

(assert (=> b!1287532 m!1180397))

(declare-fun m!1180399 () Bool)

(assert (=> b!1287532 m!1180399))

(declare-fun m!1180401 () Bool)

(assert (=> mapNonEmpty!52712 m!1180401))

(declare-fun m!1180403 () Bool)

(assert (=> b!1287539 m!1180403))

(declare-fun m!1180405 () Bool)

(assert (=> b!1287541 m!1180405))

(assert (=> b!1287541 m!1180405))

(declare-fun m!1180407 () Bool)

(assert (=> b!1287541 m!1180407))

(check-sat (not b!1287539) b_and!46561 (not b!1287541) (not b!1287535) (not mapNonEmpty!52712) (not b!1287536) (not start!109008) (not b_next!28461) tp_is_empty!34101 (not b!1287532))
(check-sat b_and!46561 (not b_next!28461))
