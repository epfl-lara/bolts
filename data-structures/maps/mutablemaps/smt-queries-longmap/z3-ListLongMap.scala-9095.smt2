; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!109392 () Bool)

(assert start!109392)

(declare-fun b_free!28845 () Bool)

(declare-fun b_next!28845 () Bool)

(assert (=> start!109392 (= b_free!28845 (not b_next!28845))))

(declare-fun tp!101654 () Bool)

(declare-fun b_and!46945 () Bool)

(assert (=> start!109392 (= tp!101654 b_and!46945)))

(declare-fun mapIsEmpty!53288 () Bool)

(declare-fun mapRes!53288 () Bool)

(assert (=> mapIsEmpty!53288 mapRes!53288))

(declare-fun b!1294273 () Bool)

(declare-fun res!860208 () Bool)

(declare-fun e!738597 () Bool)

(assert (=> b!1294273 (=> (not res!860208) (not e!738597))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun k0!1205 () (_ BitVec 64))

(declare-datatypes ((array!85957 0))(
  ( (array!85958 (arr!41475 (Array (_ BitVec 32) (_ BitVec 64))) (size!42026 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85957)

(assert (=> b!1294273 (= res!860208 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!42026 _keys!1741))))))

(declare-fun b!1294274 () Bool)

(declare-fun res!860212 () Bool)

(assert (=> b!1294274 (=> (not res!860212) (not e!738597))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((V!51083 0))(
  ( (V!51084 (val!17317 Int)) )
))
(declare-datatypes ((ValueCell!16344 0))(
  ( (ValueCellFull!16344 (v!19918 V!51083)) (EmptyCell!16344) )
))
(declare-datatypes ((array!85959 0))(
  ( (array!85960 (arr!41476 (Array (_ BitVec 32) ValueCell!16344)) (size!42027 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85959)

(assert (=> b!1294274 (= res!860212 (and (= (size!42027 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42026 _keys!1741) (size!42027 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!53288 () Bool)

(declare-fun tp!101655 () Bool)

(declare-fun e!738594 () Bool)

(assert (=> mapNonEmpty!53288 (= mapRes!53288 (and tp!101655 e!738594))))

(declare-fun mapValue!53288 () ValueCell!16344)

(declare-fun mapKey!53288 () (_ BitVec 32))

(declare-fun mapRest!53288 () (Array (_ BitVec 32) ValueCell!16344))

(assert (=> mapNonEmpty!53288 (= (arr!41476 _values!1445) (store mapRest!53288 mapKey!53288 mapValue!53288))))

(declare-fun b!1294275 () Bool)

(declare-fun e!738595 () Bool)

(declare-fun e!738596 () Bool)

(assert (=> b!1294275 (= e!738595 (and e!738596 mapRes!53288))))

(declare-fun condMapEmpty!53288 () Bool)

(declare-fun mapDefault!53288 () ValueCell!16344)

(assert (=> b!1294275 (= condMapEmpty!53288 (= (arr!41476 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16344)) mapDefault!53288)))))

(declare-fun b!1294276 () Bool)

(declare-fun tp_is_empty!34485 () Bool)

(assert (=> b!1294276 (= e!738596 tp_is_empty!34485)))

(declare-fun b!1294277 () Bool)

(assert (=> b!1294277 (= e!738597 (not true))))

(declare-datatypes ((tuple2!22436 0))(
  ( (tuple2!22437 (_1!11228 (_ BitVec 64)) (_2!11228 V!51083)) )
))
(declare-datatypes ((List!29611 0))(
  ( (Nil!29608) (Cons!29607 (h!30816 tuple2!22436) (t!43182 List!29611)) )
))
(declare-datatypes ((ListLongMap!20105 0))(
  ( (ListLongMap!20106 (toList!10068 List!29611)) )
))
(declare-fun contains!8124 (ListLongMap!20105 (_ BitVec 64)) Bool)

(assert (=> b!1294277 (not (contains!8124 (ListLongMap!20106 Nil!29608) k0!1205))))

(declare-datatypes ((Unit!42807 0))(
  ( (Unit!42808) )
))
(declare-fun lt!579646 () Unit!42807)

(declare-fun emptyContainsNothing!160 ((_ BitVec 64)) Unit!42807)

(assert (=> b!1294277 (= lt!579646 (emptyContainsNothing!160 k0!1205))))

(declare-fun res!860214 () Bool)

(assert (=> start!109392 (=> (not res!860214) (not e!738597))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109392 (= res!860214 (validMask!0 mask!2175))))

(assert (=> start!109392 e!738597))

(assert (=> start!109392 tp_is_empty!34485))

(assert (=> start!109392 true))

(declare-fun array_inv!31387 (array!85959) Bool)

(assert (=> start!109392 (and (array_inv!31387 _values!1445) e!738595)))

(declare-fun array_inv!31388 (array!85957) Bool)

(assert (=> start!109392 (array_inv!31388 _keys!1741)))

(assert (=> start!109392 tp!101654))

(declare-fun b!1294278 () Bool)

(declare-fun res!860213 () Bool)

(assert (=> b!1294278 (=> (not res!860213) (not e!738597))))

(declare-datatypes ((List!29612 0))(
  ( (Nil!29609) (Cons!29608 (h!30817 (_ BitVec 64)) (t!43183 List!29612)) )
))
(declare-fun arrayNoDuplicates!0 (array!85957 (_ BitVec 32) List!29612) Bool)

(assert (=> b!1294278 (= res!860213 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29609))))

(declare-fun b!1294279 () Bool)

(declare-fun res!860209 () Bool)

(assert (=> b!1294279 (=> (not res!860209) (not e!738597))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85957 (_ BitVec 32)) Bool)

(assert (=> b!1294279 (= res!860209 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1294280 () Bool)

(assert (=> b!1294280 (= e!738594 tp_is_empty!34485)))

(declare-fun b!1294281 () Bool)

(declare-fun res!860210 () Bool)

(assert (=> b!1294281 (=> (not res!860210) (not e!738597))))

(declare-fun minValue!1387 () V!51083)

(declare-fun zeroValue!1387 () V!51083)

(declare-fun defaultEntry!1448 () Int)

(declare-fun getCurrentListMap!5053 (array!85957 array!85959 (_ BitVec 32) (_ BitVec 32) V!51083 V!51083 (_ BitVec 32) Int) ListLongMap!20105)

(assert (=> b!1294281 (= res!860210 (contains!8124 (getCurrentListMap!5053 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1294282 () Bool)

(declare-fun res!860207 () Bool)

(assert (=> b!1294282 (=> (not res!860207) (not e!738597))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1294282 (= res!860207 (not (validKeyInArray!0 (select (arr!41475 _keys!1741) from!2144))))))

(declare-fun b!1294283 () Bool)

(declare-fun res!860211 () Bool)

(assert (=> b!1294283 (=> (not res!860211) (not e!738597))))

(assert (=> b!1294283 (= res!860211 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42026 _keys!1741))))))

(assert (= (and start!109392 res!860214) b!1294274))

(assert (= (and b!1294274 res!860212) b!1294279))

(assert (= (and b!1294279 res!860209) b!1294278))

(assert (= (and b!1294278 res!860213) b!1294283))

(assert (= (and b!1294283 res!860211) b!1294281))

(assert (= (and b!1294281 res!860210) b!1294273))

(assert (= (and b!1294273 res!860208) b!1294282))

(assert (= (and b!1294282 res!860207) b!1294277))

(assert (= (and b!1294275 condMapEmpty!53288) mapIsEmpty!53288))

(assert (= (and b!1294275 (not condMapEmpty!53288)) mapNonEmpty!53288))

(get-info :version)

(assert (= (and mapNonEmpty!53288 ((_ is ValueCellFull!16344) mapValue!53288)) b!1294280))

(assert (= (and b!1294275 ((_ is ValueCellFull!16344) mapDefault!53288)) b!1294276))

(assert (= start!109392 b!1294275))

(declare-fun m!1186541 () Bool)

(assert (=> mapNonEmpty!53288 m!1186541))

(declare-fun m!1186543 () Bool)

(assert (=> start!109392 m!1186543))

(declare-fun m!1186545 () Bool)

(assert (=> start!109392 m!1186545))

(declare-fun m!1186547 () Bool)

(assert (=> start!109392 m!1186547))

(declare-fun m!1186549 () Bool)

(assert (=> b!1294281 m!1186549))

(assert (=> b!1294281 m!1186549))

(declare-fun m!1186551 () Bool)

(assert (=> b!1294281 m!1186551))

(declare-fun m!1186553 () Bool)

(assert (=> b!1294282 m!1186553))

(assert (=> b!1294282 m!1186553))

(declare-fun m!1186555 () Bool)

(assert (=> b!1294282 m!1186555))

(declare-fun m!1186557 () Bool)

(assert (=> b!1294277 m!1186557))

(declare-fun m!1186559 () Bool)

(assert (=> b!1294277 m!1186559))

(declare-fun m!1186561 () Bool)

(assert (=> b!1294278 m!1186561))

(declare-fun m!1186563 () Bool)

(assert (=> b!1294279 m!1186563))

(check-sat (not b_next!28845) (not b!1294277) (not b!1294278) (not b!1294279) (not b!1294281) (not b!1294282) b_and!46945 tp_is_empty!34485 (not mapNonEmpty!53288) (not start!109392))
(check-sat b_and!46945 (not b_next!28845))
