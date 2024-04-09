; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!109020 () Bool)

(assert start!109020)

(declare-fun b_free!28473 () Bool)

(declare-fun b_next!28473 () Bool)

(assert (=> start!109020 (= b_free!28473 (not b_next!28473))))

(declare-fun tp!100539 () Bool)

(declare-fun b_and!46573 () Bool)

(assert (=> start!109020 (= tp!100539 b_and!46573)))

(declare-fun b!1287730 () Bool)

(declare-fun res!855345 () Bool)

(declare-fun e!735400 () Bool)

(assert (=> b!1287730 (=> (not res!855345) (not e!735400))))

(declare-datatypes ((array!85227 0))(
  ( (array!85228 (arr!41110 (Array (_ BitVec 32) (_ BitVec 64))) (size!41661 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85227)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1287730 (= res!855345 (not (validKeyInArray!0 (select (arr!41110 _keys!1741) from!2144))))))

(declare-fun res!855340 () Bool)

(assert (=> start!109020 (=> (not res!855340) (not e!735400))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109020 (= res!855340 (validMask!0 mask!2175))))

(assert (=> start!109020 e!735400))

(declare-fun tp_is_empty!34113 () Bool)

(assert (=> start!109020 tp_is_empty!34113))

(assert (=> start!109020 true))

(declare-datatypes ((V!50587 0))(
  ( (V!50588 (val!17131 Int)) )
))
(declare-datatypes ((ValueCell!16158 0))(
  ( (ValueCellFull!16158 (v!19732 V!50587)) (EmptyCell!16158) )
))
(declare-datatypes ((array!85229 0))(
  ( (array!85230 (arr!41111 (Array (_ BitVec 32) ValueCell!16158)) (size!41662 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85229)

(declare-fun e!735401 () Bool)

(declare-fun array_inv!31145 (array!85229) Bool)

(assert (=> start!109020 (and (array_inv!31145 _values!1445) e!735401)))

(declare-fun array_inv!31146 (array!85227) Bool)

(assert (=> start!109020 (array_inv!31146 _keys!1741)))

(assert (=> start!109020 tp!100539))

(declare-fun b!1287731 () Bool)

(declare-fun e!735402 () Bool)

(declare-fun mapRes!52730 () Bool)

(assert (=> b!1287731 (= e!735401 (and e!735402 mapRes!52730))))

(declare-fun condMapEmpty!52730 () Bool)

(declare-fun mapDefault!52730 () ValueCell!16158)

(assert (=> b!1287731 (= condMapEmpty!52730 (= (arr!41111 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16158)) mapDefault!52730)))))

(declare-fun b!1287732 () Bool)

(declare-fun e!735403 () Bool)

(assert (=> b!1287732 (= e!735403 tp_is_empty!34113)))

(declare-fun b!1287733 () Bool)

(declare-fun res!855344 () Bool)

(assert (=> b!1287733 (=> (not res!855344) (not e!735400))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85227 (_ BitVec 32)) Bool)

(assert (=> b!1287733 (= res!855344 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1287734 () Bool)

(declare-fun res!855343 () Bool)

(assert (=> b!1287734 (=> (not res!855343) (not e!735400))))

(assert (=> b!1287734 (= res!855343 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41661 _keys!1741))))))

(declare-fun b!1287735 () Bool)

(declare-fun res!855338 () Bool)

(assert (=> b!1287735 (=> (not res!855338) (not e!735400))))

(declare-fun minValue!1387 () V!50587)

(declare-fun zeroValue!1387 () V!50587)

(declare-fun k0!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!22118 0))(
  ( (tuple2!22119 (_1!11069 (_ BitVec 64)) (_2!11069 V!50587)) )
))
(declare-datatypes ((List!29317 0))(
  ( (Nil!29314) (Cons!29313 (h!30522 tuple2!22118) (t!42888 List!29317)) )
))
(declare-datatypes ((ListLongMap!19787 0))(
  ( (ListLongMap!19788 (toList!9909 List!29317)) )
))
(declare-fun contains!7965 (ListLongMap!19787 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4915 (array!85227 array!85229 (_ BitVec 32) (_ BitVec 32) V!50587 V!50587 (_ BitVec 32) Int) ListLongMap!19787)

(assert (=> b!1287735 (= res!855338 (contains!7965 (getCurrentListMap!4915 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1287736 () Bool)

(declare-fun res!855341 () Bool)

(assert (=> b!1287736 (=> (not res!855341) (not e!735400))))

(assert (=> b!1287736 (= res!855341 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41661 _keys!1741))))))

(declare-fun mapNonEmpty!52730 () Bool)

(declare-fun tp!100538 () Bool)

(assert (=> mapNonEmpty!52730 (= mapRes!52730 (and tp!100538 e!735403))))

(declare-fun mapValue!52730 () ValueCell!16158)

(declare-fun mapRest!52730 () (Array (_ BitVec 32) ValueCell!16158))

(declare-fun mapKey!52730 () (_ BitVec 32))

(assert (=> mapNonEmpty!52730 (= (arr!41111 _values!1445) (store mapRest!52730 mapKey!52730 mapValue!52730))))

(declare-fun b!1287737 () Bool)

(assert (=> b!1287737 (= e!735400 (not true))))

(assert (=> b!1287737 (not (contains!7965 (ListLongMap!19788 Nil!29314) k0!1205))))

(declare-datatypes ((Unit!42517 0))(
  ( (Unit!42518) )
))
(declare-fun lt!577837 () Unit!42517)

(declare-fun emptyContainsNothing!26 ((_ BitVec 64)) Unit!42517)

(assert (=> b!1287737 (= lt!577837 (emptyContainsNothing!26 k0!1205))))

(declare-fun mapIsEmpty!52730 () Bool)

(assert (=> mapIsEmpty!52730 mapRes!52730))

(declare-fun b!1287738 () Bool)

(declare-fun res!855342 () Bool)

(assert (=> b!1287738 (=> (not res!855342) (not e!735400))))

(declare-datatypes ((List!29318 0))(
  ( (Nil!29315) (Cons!29314 (h!30523 (_ BitVec 64)) (t!42889 List!29318)) )
))
(declare-fun arrayNoDuplicates!0 (array!85227 (_ BitVec 32) List!29318) Bool)

(assert (=> b!1287738 (= res!855342 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29315))))

(declare-fun b!1287739 () Bool)

(assert (=> b!1287739 (= e!735402 tp_is_empty!34113)))

(declare-fun b!1287740 () Bool)

(declare-fun res!855339 () Bool)

(assert (=> b!1287740 (=> (not res!855339) (not e!735400))))

(assert (=> b!1287740 (= res!855339 (and (= (size!41662 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41661 _keys!1741) (size!41662 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(assert (= (and start!109020 res!855340) b!1287740))

(assert (= (and b!1287740 res!855339) b!1287733))

(assert (= (and b!1287733 res!855344) b!1287738))

(assert (= (and b!1287738 res!855342) b!1287734))

(assert (= (and b!1287734 res!855343) b!1287735))

(assert (= (and b!1287735 res!855338) b!1287736))

(assert (= (and b!1287736 res!855341) b!1287730))

(assert (= (and b!1287730 res!855345) b!1287737))

(assert (= (and b!1287731 condMapEmpty!52730) mapIsEmpty!52730))

(assert (= (and b!1287731 (not condMapEmpty!52730)) mapNonEmpty!52730))

(get-info :version)

(assert (= (and mapNonEmpty!52730 ((_ is ValueCellFull!16158) mapValue!52730)) b!1287732))

(assert (= (and b!1287731 ((_ is ValueCellFull!16158) mapDefault!52730)) b!1287739))

(assert (= start!109020 b!1287731))

(declare-fun m!1180529 () Bool)

(assert (=> b!1287735 m!1180529))

(assert (=> b!1287735 m!1180529))

(declare-fun m!1180531 () Bool)

(assert (=> b!1287735 m!1180531))

(declare-fun m!1180533 () Bool)

(assert (=> b!1287738 m!1180533))

(declare-fun m!1180535 () Bool)

(assert (=> mapNonEmpty!52730 m!1180535))

(declare-fun m!1180537 () Bool)

(assert (=> b!1287730 m!1180537))

(assert (=> b!1287730 m!1180537))

(declare-fun m!1180539 () Bool)

(assert (=> b!1287730 m!1180539))

(declare-fun m!1180541 () Bool)

(assert (=> start!109020 m!1180541))

(declare-fun m!1180543 () Bool)

(assert (=> start!109020 m!1180543))

(declare-fun m!1180545 () Bool)

(assert (=> start!109020 m!1180545))

(declare-fun m!1180547 () Bool)

(assert (=> b!1287737 m!1180547))

(declare-fun m!1180549 () Bool)

(assert (=> b!1287737 m!1180549))

(declare-fun m!1180551 () Bool)

(assert (=> b!1287733 m!1180551))

(check-sat (not b!1287738) (not start!109020) (not b!1287737) (not b_next!28473) b_and!46573 (not b!1287735) (not mapNonEmpty!52730) tp_is_empty!34113 (not b!1287733) (not b!1287730))
(check-sat b_and!46573 (not b_next!28473))
