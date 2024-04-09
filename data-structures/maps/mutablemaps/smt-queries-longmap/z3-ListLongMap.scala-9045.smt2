; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!109092 () Bool)

(assert start!109092)

(declare-fun b_free!28545 () Bool)

(declare-fun b_next!28545 () Bool)

(assert (=> start!109092 (= b_free!28545 (not b_next!28545))))

(declare-fun tp!100754 () Bool)

(declare-fun b_and!46645 () Bool)

(assert (=> start!109092 (= tp!100754 b_and!46645)))

(declare-fun b!1288995 () Bool)

(declare-fun e!736016 () Bool)

(declare-fun e!736019 () Bool)

(declare-fun mapRes!52838 () Bool)

(assert (=> b!1288995 (= e!736016 (and e!736019 mapRes!52838))))

(declare-fun condMapEmpty!52838 () Bool)

(declare-datatypes ((V!50683 0))(
  ( (V!50684 (val!17167 Int)) )
))
(declare-datatypes ((ValueCell!16194 0))(
  ( (ValueCellFull!16194 (v!19768 V!50683)) (EmptyCell!16194) )
))
(declare-datatypes ((array!85369 0))(
  ( (array!85370 (arr!41181 (Array (_ BitVec 32) ValueCell!16194)) (size!41732 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85369)

(declare-fun mapDefault!52838 () ValueCell!16194)

(assert (=> b!1288995 (= condMapEmpty!52838 (= (arr!41181 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16194)) mapDefault!52838)))))

(declare-fun b!1288996 () Bool)

(declare-fun res!856280 () Bool)

(declare-fun e!736017 () Bool)

(assert (=> b!1288996 (=> (not res!856280) (not e!736017))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun k0!1205 () (_ BitVec 64))

(declare-datatypes ((array!85371 0))(
  ( (array!85372 (arr!41182 (Array (_ BitVec 32) (_ BitVec 64))) (size!41733 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85371)

(assert (=> b!1288996 (= res!856280 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41733 _keys!1741))))))

(declare-fun mapIsEmpty!52838 () Bool)

(assert (=> mapIsEmpty!52838 mapRes!52838))

(declare-fun b!1288998 () Bool)

(declare-fun res!856281 () Bool)

(assert (=> b!1288998 (=> (not res!856281) (not e!736017))))

(declare-datatypes ((List!29376 0))(
  ( (Nil!29373) (Cons!29372 (h!30581 (_ BitVec 64)) (t!42947 List!29376)) )
))
(declare-fun arrayNoDuplicates!0 (array!85371 (_ BitVec 32) List!29376) Bool)

(assert (=> b!1288998 (= res!856281 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29373))))

(declare-fun b!1288999 () Bool)

(declare-fun e!736021 () Bool)

(assert (=> b!1288999 (= e!736021 true)))

(declare-datatypes ((tuple2!22176 0))(
  ( (tuple2!22177 (_1!11098 (_ BitVec 64)) (_2!11098 V!50683)) )
))
(declare-datatypes ((List!29377 0))(
  ( (Nil!29374) (Cons!29373 (h!30582 tuple2!22176) (t!42948 List!29377)) )
))
(declare-datatypes ((ListLongMap!19845 0))(
  ( (ListLongMap!19846 (toList!9938 List!29377)) )
))
(declare-fun lt!578091 () ListLongMap!19845)

(declare-fun zeroValue!1387 () V!50683)

(declare-fun contains!7994 (ListLongMap!19845 (_ BitVec 64)) Bool)

(declare-fun +!4313 (ListLongMap!19845 tuple2!22176) ListLongMap!19845)

(assert (=> b!1288999 (not (contains!7994 (+!4313 lt!578091 (tuple2!22177 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)) k0!1205))))

(declare-datatypes ((Unit!42571 0))(
  ( (Unit!42572) )
))
(declare-fun lt!578090 () Unit!42571)

(declare-fun addStillNotContains!358 (ListLongMap!19845 (_ BitVec 64) V!50683 (_ BitVec 64)) Unit!42571)

(assert (=> b!1288999 (= lt!578090 (addStillNotContains!358 lt!578091 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387 k0!1205))))

(declare-fun minValue!1387 () V!50683)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!6025 (array!85371 array!85369 (_ BitVec 32) (_ BitVec 32) V!50683 V!50683 (_ BitVec 32) Int) ListLongMap!19845)

(assert (=> b!1288999 (= lt!578091 (getCurrentListMapNoExtraKeys!6025 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448))))

(declare-fun b!1289000 () Bool)

(declare-fun res!856285 () Bool)

(assert (=> b!1289000 (=> (not res!856285) (not e!736017))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85371 (_ BitVec 32)) Bool)

(assert (=> b!1289000 (= res!856285 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1289001 () Bool)

(declare-fun e!736020 () Bool)

(declare-fun tp_is_empty!34185 () Bool)

(assert (=> b!1289001 (= e!736020 tp_is_empty!34185)))

(declare-fun b!1288997 () Bool)

(declare-fun res!856282 () Bool)

(assert (=> b!1288997 (=> (not res!856282) (not e!736017))))

(assert (=> b!1288997 (= res!856282 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41733 _keys!1741))))))

(declare-fun res!856284 () Bool)

(assert (=> start!109092 (=> (not res!856284) (not e!736017))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109092 (= res!856284 (validMask!0 mask!2175))))

(assert (=> start!109092 e!736017))

(assert (=> start!109092 tp_is_empty!34185))

(assert (=> start!109092 true))

(declare-fun array_inv!31193 (array!85369) Bool)

(assert (=> start!109092 (and (array_inv!31193 _values!1445) e!736016)))

(declare-fun array_inv!31194 (array!85371) Bool)

(assert (=> start!109092 (array_inv!31194 _keys!1741)))

(assert (=> start!109092 tp!100754))

(declare-fun mapNonEmpty!52838 () Bool)

(declare-fun tp!100755 () Bool)

(assert (=> mapNonEmpty!52838 (= mapRes!52838 (and tp!100755 e!736020))))

(declare-fun mapRest!52838 () (Array (_ BitVec 32) ValueCell!16194))

(declare-fun mapValue!52838 () ValueCell!16194)

(declare-fun mapKey!52838 () (_ BitVec 32))

(assert (=> mapNonEmpty!52838 (= (arr!41181 _values!1445) (store mapRest!52838 mapKey!52838 mapValue!52838))))

(declare-fun b!1289002 () Bool)

(declare-fun res!856286 () Bool)

(assert (=> b!1289002 (=> (not res!856286) (not e!736017))))

(declare-fun getCurrentListMap!4941 (array!85371 array!85369 (_ BitVec 32) (_ BitVec 32) V!50683 V!50683 (_ BitVec 32) Int) ListLongMap!19845)

(assert (=> b!1289002 (= res!856286 (contains!7994 (getCurrentListMap!4941 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1289003 () Bool)

(assert (=> b!1289003 (= e!736019 tp_is_empty!34185)))

(declare-fun b!1289004 () Bool)

(declare-fun res!856279 () Bool)

(assert (=> b!1289004 (=> (not res!856279) (not e!736017))))

(assert (=> b!1289004 (= res!856279 (and (= (size!41732 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41733 _keys!1741) (size!41732 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1289005 () Bool)

(assert (=> b!1289005 (= e!736017 (not e!736021))))

(declare-fun res!856287 () Bool)

(assert (=> b!1289005 (=> res!856287 e!736021)))

(assert (=> b!1289005 (= res!856287 (or (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1289005 (not (contains!7994 (ListLongMap!19846 Nil!29374) k0!1205))))

(declare-fun lt!578092 () Unit!42571)

(declare-fun emptyContainsNothing!50 ((_ BitVec 64)) Unit!42571)

(assert (=> b!1289005 (= lt!578092 (emptyContainsNothing!50 k0!1205))))

(declare-fun b!1289006 () Bool)

(declare-fun res!856283 () Bool)

(assert (=> b!1289006 (=> (not res!856283) (not e!736017))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1289006 (= res!856283 (not (validKeyInArray!0 (select (arr!41182 _keys!1741) from!2144))))))

(assert (= (and start!109092 res!856284) b!1289004))

(assert (= (and b!1289004 res!856279) b!1289000))

(assert (= (and b!1289000 res!856285) b!1288998))

(assert (= (and b!1288998 res!856281) b!1288997))

(assert (= (and b!1288997 res!856282) b!1289002))

(assert (= (and b!1289002 res!856286) b!1288996))

(assert (= (and b!1288996 res!856280) b!1289006))

(assert (= (and b!1289006 res!856283) b!1289005))

(assert (= (and b!1289005 (not res!856287)) b!1288999))

(assert (= (and b!1288995 condMapEmpty!52838) mapIsEmpty!52838))

(assert (= (and b!1288995 (not condMapEmpty!52838)) mapNonEmpty!52838))

(get-info :version)

(assert (= (and mapNonEmpty!52838 ((_ is ValueCellFull!16194) mapValue!52838)) b!1289001))

(assert (= (and b!1288995 ((_ is ValueCellFull!16194) mapDefault!52838)) b!1289003))

(assert (= start!109092 b!1288995))

(declare-fun m!1181581 () Bool)

(assert (=> b!1289005 m!1181581))

(declare-fun m!1181583 () Bool)

(assert (=> b!1289005 m!1181583))

(declare-fun m!1181585 () Bool)

(assert (=> b!1288998 m!1181585))

(declare-fun m!1181587 () Bool)

(assert (=> b!1289002 m!1181587))

(assert (=> b!1289002 m!1181587))

(declare-fun m!1181589 () Bool)

(assert (=> b!1289002 m!1181589))

(declare-fun m!1181591 () Bool)

(assert (=> b!1288999 m!1181591))

(assert (=> b!1288999 m!1181591))

(declare-fun m!1181593 () Bool)

(assert (=> b!1288999 m!1181593))

(declare-fun m!1181595 () Bool)

(assert (=> b!1288999 m!1181595))

(declare-fun m!1181597 () Bool)

(assert (=> b!1288999 m!1181597))

(declare-fun m!1181599 () Bool)

(assert (=> b!1289006 m!1181599))

(assert (=> b!1289006 m!1181599))

(declare-fun m!1181601 () Bool)

(assert (=> b!1289006 m!1181601))

(declare-fun m!1181603 () Bool)

(assert (=> mapNonEmpty!52838 m!1181603))

(declare-fun m!1181605 () Bool)

(assert (=> b!1289000 m!1181605))

(declare-fun m!1181607 () Bool)

(assert (=> start!109092 m!1181607))

(declare-fun m!1181609 () Bool)

(assert (=> start!109092 m!1181609))

(declare-fun m!1181611 () Bool)

(assert (=> start!109092 m!1181611))

(check-sat (not b!1289002) (not b!1288999) (not b!1289005) (not b!1289000) (not b_next!28545) (not mapNonEmpty!52838) (not b!1289006) tp_is_empty!34185 (not b!1288998) (not start!109092) b_and!46645)
(check-sat b_and!46645 (not b_next!28545))
