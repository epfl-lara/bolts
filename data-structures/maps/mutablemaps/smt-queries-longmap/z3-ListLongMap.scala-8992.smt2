; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108750 () Bool)

(assert start!108750)

(declare-fun b_free!28227 () Bool)

(declare-fun b_next!28227 () Bool)

(assert (=> start!108750 (= b_free!28227 (not b_next!28227))))

(declare-fun tp!99797 () Bool)

(declare-fun b_and!46303 () Bool)

(assert (=> start!108750 (= tp!99797 b_and!46303)))

(declare-fun b!1283426 () Bool)

(declare-fun res!852639 () Bool)

(declare-fun e!733239 () Bool)

(assert (=> b!1283426 (=> (not res!852639) (not e!733239))))

(declare-datatypes ((array!84753 0))(
  ( (array!84754 (arr!40874 (Array (_ BitVec 32) (_ BitVec 64))) (size!41425 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84753)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84753 (_ BitVec 32)) Bool)

(assert (=> b!1283426 (= res!852639 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1283427 () Bool)

(declare-fun res!852633 () Bool)

(assert (=> b!1283427 (=> (not res!852633) (not e!733239))))

(declare-datatypes ((V!50259 0))(
  ( (V!50260 (val!17008 Int)) )
))
(declare-fun minValue!1387 () V!50259)

(declare-fun zeroValue!1387 () V!50259)

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((ValueCell!16035 0))(
  ( (ValueCellFull!16035 (v!19608 V!50259)) (EmptyCell!16035) )
))
(declare-datatypes ((array!84755 0))(
  ( (array!84756 (arr!40875 (Array (_ BitVec 32) ValueCell!16035)) (size!41426 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84755)

(declare-fun k0!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!21926 0))(
  ( (tuple2!21927 (_1!10973 (_ BitVec 64)) (_2!10973 V!50259)) )
))
(declare-datatypes ((List!29135 0))(
  ( (Nil!29132) (Cons!29131 (h!30340 tuple2!21926) (t!42686 List!29135)) )
))
(declare-datatypes ((ListLongMap!19595 0))(
  ( (ListLongMap!19596 (toList!9813 List!29135)) )
))
(declare-fun contains!7868 (ListLongMap!19595 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4831 (array!84753 array!84755 (_ BitVec 32) (_ BitVec 32) V!50259 V!50259 (_ BitVec 32) Int) ListLongMap!19595)

(assert (=> b!1283427 (= res!852633 (contains!7868 (getCurrentListMap!4831 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1283428 () Bool)

(assert (=> b!1283428 (= e!733239 (not true))))

(declare-fun lt!576606 () ListLongMap!19595)

(assert (=> b!1283428 (contains!7868 lt!576606 k0!1205)))

(declare-datatypes ((Unit!42415 0))(
  ( (Unit!42416) )
))
(declare-fun lt!576605 () Unit!42415)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!9 ((_ BitVec 64) (_ BitVec 64) V!50259 ListLongMap!19595) Unit!42415)

(assert (=> b!1283428 (= lt!576605 (lemmaInListMapAfterAddingDiffThenInBefore!9 k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387 lt!576606))))

(declare-fun +!4260 (ListLongMap!19595 tuple2!21926) ListLongMap!19595)

(declare-fun getCurrentListMapNoExtraKeys!5971 (array!84753 array!84755 (_ BitVec 32) (_ BitVec 32) V!50259 V!50259 (_ BitVec 32) Int) ListLongMap!19595)

(assert (=> b!1283428 (= lt!576606 (+!4260 (getCurrentListMapNoExtraKeys!5971 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) (tuple2!21927 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)))))

(declare-fun b!1283429 () Bool)

(declare-fun res!852637 () Bool)

(assert (=> b!1283429 (=> (not res!852637) (not e!733239))))

(assert (=> b!1283429 (= res!852637 (and (= (size!41426 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41425 _keys!1741) (size!41426 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1283430 () Bool)

(declare-fun res!852634 () Bool)

(assert (=> b!1283430 (=> (not res!852634) (not e!733239))))

(assert (=> b!1283430 (= res!852634 (and (not (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1283431 () Bool)

(declare-fun e!733236 () Bool)

(declare-fun tp_is_empty!33867 () Bool)

(assert (=> b!1283431 (= e!733236 tp_is_empty!33867)))

(declare-fun b!1283432 () Bool)

(declare-fun e!733240 () Bool)

(declare-fun mapRes!52358 () Bool)

(assert (=> b!1283432 (= e!733240 (and e!733236 mapRes!52358))))

(declare-fun condMapEmpty!52358 () Bool)

(declare-fun mapDefault!52358 () ValueCell!16035)

(assert (=> b!1283432 (= condMapEmpty!52358 (= (arr!40875 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16035)) mapDefault!52358)))))

(declare-fun b!1283433 () Bool)

(declare-fun res!852632 () Bool)

(assert (=> b!1283433 (=> (not res!852632) (not e!733239))))

(assert (=> b!1283433 (= res!852632 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41425 _keys!1741))))))

(declare-fun mapIsEmpty!52358 () Bool)

(assert (=> mapIsEmpty!52358 mapRes!52358))

(declare-fun b!1283434 () Bool)

(declare-fun res!852636 () Bool)

(assert (=> b!1283434 (=> (not res!852636) (not e!733239))))

(assert (=> b!1283434 (= res!852636 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41425 _keys!1741))))))

(declare-fun mapNonEmpty!52358 () Bool)

(declare-fun tp!99798 () Bool)

(declare-fun e!733237 () Bool)

(assert (=> mapNonEmpty!52358 (= mapRes!52358 (and tp!99798 e!733237))))

(declare-fun mapKey!52358 () (_ BitVec 32))

(declare-fun mapRest!52358 () (Array (_ BitVec 32) ValueCell!16035))

(declare-fun mapValue!52358 () ValueCell!16035)

(assert (=> mapNonEmpty!52358 (= (arr!40875 _values!1445) (store mapRest!52358 mapKey!52358 mapValue!52358))))

(declare-fun b!1283435 () Bool)

(assert (=> b!1283435 (= e!733237 tp_is_empty!33867)))

(declare-fun res!852635 () Bool)

(assert (=> start!108750 (=> (not res!852635) (not e!733239))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108750 (= res!852635 (validMask!0 mask!2175))))

(assert (=> start!108750 e!733239))

(assert (=> start!108750 tp_is_empty!33867))

(assert (=> start!108750 true))

(declare-fun array_inv!30987 (array!84755) Bool)

(assert (=> start!108750 (and (array_inv!30987 _values!1445) e!733240)))

(declare-fun array_inv!30988 (array!84753) Bool)

(assert (=> start!108750 (array_inv!30988 _keys!1741)))

(assert (=> start!108750 tp!99797))

(declare-fun b!1283436 () Bool)

(declare-fun res!852631 () Bool)

(assert (=> b!1283436 (=> (not res!852631) (not e!733239))))

(declare-datatypes ((List!29136 0))(
  ( (Nil!29133) (Cons!29132 (h!30341 (_ BitVec 64)) (t!42687 List!29136)) )
))
(declare-fun arrayNoDuplicates!0 (array!84753 (_ BitVec 32) List!29136) Bool)

(assert (=> b!1283436 (= res!852631 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29133))))

(declare-fun b!1283437 () Bool)

(declare-fun res!852638 () Bool)

(assert (=> b!1283437 (=> (not res!852638) (not e!733239))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1283437 (= res!852638 (validKeyInArray!0 (select (arr!40874 _keys!1741) from!2144)))))

(assert (= (and start!108750 res!852635) b!1283429))

(assert (= (and b!1283429 res!852637) b!1283426))

(assert (= (and b!1283426 res!852639) b!1283436))

(assert (= (and b!1283436 res!852631) b!1283434))

(assert (= (and b!1283434 res!852636) b!1283427))

(assert (= (and b!1283427 res!852633) b!1283433))

(assert (= (and b!1283433 res!852632) b!1283437))

(assert (= (and b!1283437 res!852638) b!1283430))

(assert (= (and b!1283430 res!852634) b!1283428))

(assert (= (and b!1283432 condMapEmpty!52358) mapIsEmpty!52358))

(assert (= (and b!1283432 (not condMapEmpty!52358)) mapNonEmpty!52358))

(get-info :version)

(assert (= (and mapNonEmpty!52358 ((_ is ValueCellFull!16035) mapValue!52358)) b!1283435))

(assert (= (and b!1283432 ((_ is ValueCellFull!16035) mapDefault!52358)) b!1283431))

(assert (= start!108750 b!1283432))

(declare-fun m!1177375 () Bool)

(assert (=> b!1283436 m!1177375))

(declare-fun m!1177377 () Bool)

(assert (=> b!1283426 m!1177377))

(declare-fun m!1177379 () Bool)

(assert (=> b!1283427 m!1177379))

(assert (=> b!1283427 m!1177379))

(declare-fun m!1177381 () Bool)

(assert (=> b!1283427 m!1177381))

(declare-fun m!1177383 () Bool)

(assert (=> b!1283437 m!1177383))

(assert (=> b!1283437 m!1177383))

(declare-fun m!1177385 () Bool)

(assert (=> b!1283437 m!1177385))

(declare-fun m!1177387 () Bool)

(assert (=> mapNonEmpty!52358 m!1177387))

(declare-fun m!1177389 () Bool)

(assert (=> b!1283428 m!1177389))

(declare-fun m!1177391 () Bool)

(assert (=> b!1283428 m!1177391))

(declare-fun m!1177393 () Bool)

(assert (=> b!1283428 m!1177393))

(assert (=> b!1283428 m!1177393))

(declare-fun m!1177395 () Bool)

(assert (=> b!1283428 m!1177395))

(declare-fun m!1177397 () Bool)

(assert (=> start!108750 m!1177397))

(declare-fun m!1177399 () Bool)

(assert (=> start!108750 m!1177399))

(declare-fun m!1177401 () Bool)

(assert (=> start!108750 m!1177401))

(check-sat (not b!1283428) (not b!1283436) tp_is_empty!33867 (not start!108750) (not mapNonEmpty!52358) b_and!46303 (not b!1283426) (not b_next!28227) (not b!1283437) (not b!1283427))
(check-sat b_and!46303 (not b_next!28227))
