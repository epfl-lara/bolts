; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!109254 () Bool)

(assert start!109254)

(declare-fun b_free!28707 () Bool)

(declare-fun b_next!28707 () Bool)

(assert (=> start!109254 (= b_free!28707 (not b_next!28707))))

(declare-fun tp!101241 () Bool)

(declare-fun b_and!46807 () Bool)

(assert (=> start!109254 (= tp!101241 b_and!46807)))

(declare-fun mapNonEmpty!53081 () Bool)

(declare-fun mapRes!53081 () Bool)

(declare-fun tp!101240 () Bool)

(declare-fun e!737451 () Bool)

(assert (=> mapNonEmpty!53081 (= mapRes!53081 (and tp!101240 e!737451))))

(declare-datatypes ((V!50899 0))(
  ( (V!50900 (val!17248 Int)) )
))
(declare-datatypes ((ValueCell!16275 0))(
  ( (ValueCellFull!16275 (v!19849 V!50899)) (EmptyCell!16275) )
))
(declare-fun mapRest!53081 () (Array (_ BitVec 32) ValueCell!16275))

(declare-fun mapKey!53081 () (_ BitVec 32))

(declare-fun mapValue!53081 () ValueCell!16275)

(declare-datatypes ((array!85687 0))(
  ( (array!85688 (arr!41340 (Array (_ BitVec 32) ValueCell!16275)) (size!41891 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85687)

(assert (=> mapNonEmpty!53081 (= (arr!41340 _values!1445) (store mapRest!53081 mapKey!53081 mapValue!53081))))

(declare-fun b!1291888 () Bool)

(declare-fun res!858446 () Bool)

(declare-fun e!737454 () Bool)

(assert (=> b!1291888 (=> (not res!858446) (not e!737454))))

(declare-datatypes ((array!85689 0))(
  ( (array!85690 (arr!41341 (Array (_ BitVec 32) (_ BitVec 64))) (size!41892 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85689)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1291888 (= res!858446 (not (validKeyInArray!0 (select (arr!41341 _keys!1741) from!2144))))))

(declare-fun mapIsEmpty!53081 () Bool)

(assert (=> mapIsEmpty!53081 mapRes!53081))

(declare-fun b!1291889 () Bool)

(declare-fun e!737453 () Bool)

(declare-fun tp_is_empty!34347 () Bool)

(assert (=> b!1291889 (= e!737453 tp_is_empty!34347)))

(declare-fun b!1291890 () Bool)

(assert (=> b!1291890 (= e!737454 (not true))))

(declare-fun k0!1205 () (_ BitVec 64))

(declare-datatypes ((tuple2!22316 0))(
  ( (tuple2!22317 (_1!11168 (_ BitVec 64)) (_2!11168 V!50899)) )
))
(declare-datatypes ((List!29507 0))(
  ( (Nil!29504) (Cons!29503 (h!30712 tuple2!22316) (t!43078 List!29507)) )
))
(declare-datatypes ((ListLongMap!19985 0))(
  ( (ListLongMap!19986 (toList!10008 List!29507)) )
))
(declare-fun contains!8064 (ListLongMap!19985 (_ BitVec 64)) Bool)

(assert (=> b!1291890 (not (contains!8064 (ListLongMap!19986 Nil!29504) k0!1205))))

(declare-datatypes ((Unit!42703 0))(
  ( (Unit!42704) )
))
(declare-fun lt!579232 () Unit!42703)

(declare-fun emptyContainsNothing!108 ((_ BitVec 64)) Unit!42703)

(assert (=> b!1291890 (= lt!579232 (emptyContainsNothing!108 k0!1205))))

(declare-fun b!1291891 () Bool)

(declare-fun res!858445 () Bool)

(assert (=> b!1291891 (=> (not res!858445) (not e!737454))))

(declare-datatypes ((List!29508 0))(
  ( (Nil!29505) (Cons!29504 (h!30713 (_ BitVec 64)) (t!43079 List!29508)) )
))
(declare-fun arrayNoDuplicates!0 (array!85689 (_ BitVec 32) List!29508) Bool)

(assert (=> b!1291891 (= res!858445 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29505))))

(declare-fun res!858449 () Bool)

(assert (=> start!109254 (=> (not res!858449) (not e!737454))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109254 (= res!858449 (validMask!0 mask!2175))))

(assert (=> start!109254 e!737454))

(assert (=> start!109254 tp_is_empty!34347))

(assert (=> start!109254 true))

(declare-fun e!737455 () Bool)

(declare-fun array_inv!31295 (array!85687) Bool)

(assert (=> start!109254 (and (array_inv!31295 _values!1445) e!737455)))

(declare-fun array_inv!31296 (array!85689) Bool)

(assert (=> start!109254 (array_inv!31296 _keys!1741)))

(assert (=> start!109254 tp!101241))

(declare-fun b!1291892 () Bool)

(declare-fun res!858447 () Bool)

(assert (=> b!1291892 (=> (not res!858447) (not e!737454))))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1291892 (= res!858447 (and (= (size!41891 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41892 _keys!1741) (size!41891 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1291893 () Bool)

(declare-fun res!858443 () Bool)

(assert (=> b!1291893 (=> (not res!858443) (not e!737454))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85689 (_ BitVec 32)) Bool)

(assert (=> b!1291893 (= res!858443 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1291894 () Bool)

(declare-fun res!858444 () Bool)

(assert (=> b!1291894 (=> (not res!858444) (not e!737454))))

(assert (=> b!1291894 (= res!858444 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41892 _keys!1741))))))

(declare-fun b!1291895 () Bool)

(declare-fun res!858450 () Bool)

(assert (=> b!1291895 (=> (not res!858450) (not e!737454))))

(declare-fun minValue!1387 () V!50899)

(declare-fun zeroValue!1387 () V!50899)

(declare-fun defaultEntry!1448 () Int)

(declare-fun getCurrentListMap!5001 (array!85689 array!85687 (_ BitVec 32) (_ BitVec 32) V!50899 V!50899 (_ BitVec 32) Int) ListLongMap!19985)

(assert (=> b!1291895 (= res!858450 (contains!8064 (getCurrentListMap!5001 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1291896 () Bool)

(assert (=> b!1291896 (= e!737455 (and e!737453 mapRes!53081))))

(declare-fun condMapEmpty!53081 () Bool)

(declare-fun mapDefault!53081 () ValueCell!16275)

(assert (=> b!1291896 (= condMapEmpty!53081 (= (arr!41340 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16275)) mapDefault!53081)))))

(declare-fun b!1291897 () Bool)

(declare-fun res!858448 () Bool)

(assert (=> b!1291897 (=> (not res!858448) (not e!737454))))

(assert (=> b!1291897 (= res!858448 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41892 _keys!1741))))))

(declare-fun b!1291898 () Bool)

(assert (=> b!1291898 (= e!737451 tp_is_empty!34347)))

(assert (= (and start!109254 res!858449) b!1291892))

(assert (= (and b!1291892 res!858447) b!1291893))

(assert (= (and b!1291893 res!858443) b!1291891))

(assert (= (and b!1291891 res!858445) b!1291897))

(assert (= (and b!1291897 res!858448) b!1291895))

(assert (= (and b!1291895 res!858450) b!1291894))

(assert (= (and b!1291894 res!858444) b!1291888))

(assert (= (and b!1291888 res!858446) b!1291890))

(assert (= (and b!1291896 condMapEmpty!53081) mapIsEmpty!53081))

(assert (= (and b!1291896 (not condMapEmpty!53081)) mapNonEmpty!53081))

(get-info :version)

(assert (= (and mapNonEmpty!53081 ((_ is ValueCellFull!16275) mapValue!53081)) b!1291898))

(assert (= (and b!1291896 ((_ is ValueCellFull!16275) mapDefault!53081)) b!1291889))

(assert (= start!109254 b!1291896))

(declare-fun m!1184609 () Bool)

(assert (=> mapNonEmpty!53081 m!1184609))

(declare-fun m!1184611 () Bool)

(assert (=> b!1291893 m!1184611))

(declare-fun m!1184613 () Bool)

(assert (=> b!1291890 m!1184613))

(declare-fun m!1184615 () Bool)

(assert (=> b!1291890 m!1184615))

(declare-fun m!1184617 () Bool)

(assert (=> b!1291888 m!1184617))

(assert (=> b!1291888 m!1184617))

(declare-fun m!1184619 () Bool)

(assert (=> b!1291888 m!1184619))

(declare-fun m!1184621 () Bool)

(assert (=> start!109254 m!1184621))

(declare-fun m!1184623 () Bool)

(assert (=> start!109254 m!1184623))

(declare-fun m!1184625 () Bool)

(assert (=> start!109254 m!1184625))

(declare-fun m!1184627 () Bool)

(assert (=> b!1291895 m!1184627))

(assert (=> b!1291895 m!1184627))

(declare-fun m!1184629 () Bool)

(assert (=> b!1291895 m!1184629))

(declare-fun m!1184631 () Bool)

(assert (=> b!1291891 m!1184631))

(check-sat (not start!109254) (not b!1291888) (not b!1291891) (not b!1291890) (not b!1291895) (not b_next!28707) tp_is_empty!34347 (not b!1291893) b_and!46807 (not mapNonEmpty!53081))
(check-sat b_and!46807 (not b_next!28707))
