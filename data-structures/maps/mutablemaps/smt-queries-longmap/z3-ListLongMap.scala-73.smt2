; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1016 () Bool)

(assert start!1016)

(declare-fun b_free!345 () Bool)

(declare-fun b_next!345 () Bool)

(assert (=> start!1016 (= b_free!345 (not b_next!345))))

(declare-fun tp!1273 () Bool)

(declare-fun b_and!497 () Bool)

(assert (=> start!1016 (= tp!1273 b_and!497)))

(declare-fun b!8727 () Bool)

(declare-fun e!4975 () Bool)

(declare-fun k0!1278 () (_ BitVec 64))

(declare-fun extraKeys!1413 () (_ BitVec 32))

(assert (=> b!8727 (= e!4975 (ite (= k0!1278 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!8728 () Bool)

(declare-fun res!8110 () Bool)

(declare-fun e!4976 () Bool)

(assert (=> b!8728 (=> (not res!8110) (not e!4976))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!8728 (= res!8110 (validKeyInArray!0 k0!1278))))

(declare-fun b!8729 () Bool)

(declare-fun e!4977 () Bool)

(assert (=> b!8729 (= e!4976 (not e!4977))))

(declare-fun res!8105 () Bool)

(assert (=> b!8729 (=> res!8105 e!4977)))

(declare-datatypes ((array!771 0))(
  ( (array!772 (arr!371 (Array (_ BitVec 32) (_ BitVec 64))) (size!433 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!771)

(declare-fun arrayContainsKey!0 (array!771 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!8729 (= res!8105 (not (arrayContainsKey!0 _keys!1806 k0!1278 #b00000000000000000000000000000000)))))

(assert (=> b!8729 e!4975))

(declare-fun c!665 () Bool)

(assert (=> b!8729 (= c!665 (and (not (= k0!1278 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1278 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun defaultEntry!1495 () Int)

(declare-fun mask!2250 () (_ BitVec 32))

(declare-datatypes ((V!741 0))(
  ( (V!742 (val!217 Int)) )
))
(declare-datatypes ((ValueCell!195 0))(
  ( (ValueCellFull!195 (v!1311 V!741)) (EmptyCell!195) )
))
(declare-datatypes ((array!773 0))(
  ( (array!774 (arr!372 (Array (_ BitVec 32) ValueCell!195)) (size!434 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!773)

(declare-fun minValue!1434 () V!741)

(declare-datatypes ((Unit!165 0))(
  ( (Unit!166) )
))
(declare-fun lt!1884 () Unit!165)

(declare-fun zeroValue!1434 () V!741)

(declare-fun lemmaKeyInListMapIsInArray!61 (array!771 array!773 (_ BitVec 32) (_ BitVec 32) V!741 V!741 (_ BitVec 64) Int) Unit!165)

(assert (=> b!8729 (= lt!1884 (lemmaKeyInListMapIsInArray!61 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 k0!1278 defaultEntry!1495))))

(declare-fun b!8730 () Bool)

(declare-fun res!8107 () Bool)

(assert (=> b!8730 (=> (not res!8107) (not e!4976))))

(assert (=> b!8730 (= res!8107 (and (= (size!434 _values!1492) (bvadd #b00000000000000000000000000000001 mask!2250)) (= (size!433 _keys!1806) (size!434 _values!1492)) (bvsge mask!2250 #b00000000000000000000000000000000) (bvsge extraKeys!1413 #b00000000000000000000000000000000) (bvsle extraKeys!1413 #b00000000000000000000000000000011)))))

(declare-fun b!8731 () Bool)

(declare-fun e!4973 () Bool)

(declare-fun tp_is_empty!423 () Bool)

(assert (=> b!8731 (= e!4973 tp_is_empty!423)))

(declare-fun b!8732 () Bool)

(assert (=> b!8732 (= e!4975 (arrayContainsKey!0 _keys!1806 k0!1278 #b00000000000000000000000000000000))))

(declare-fun mapNonEmpty!614 () Bool)

(declare-fun mapRes!614 () Bool)

(declare-fun tp!1274 () Bool)

(assert (=> mapNonEmpty!614 (= mapRes!614 (and tp!1274 e!4973))))

(declare-fun mapValue!614 () ValueCell!195)

(declare-fun mapRest!614 () (Array (_ BitVec 32) ValueCell!195))

(declare-fun mapKey!614 () (_ BitVec 32))

(assert (=> mapNonEmpty!614 (= (arr!372 _values!1492) (store mapRest!614 mapKey!614 mapValue!614))))

(declare-fun res!8106 () Bool)

(assert (=> start!1016 (=> (not res!8106) (not e!4976))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!1016 (= res!8106 (validMask!0 mask!2250))))

(assert (=> start!1016 e!4976))

(assert (=> start!1016 tp!1273))

(assert (=> start!1016 true))

(declare-fun e!4979 () Bool)

(declare-fun array_inv!271 (array!773) Bool)

(assert (=> start!1016 (and (array_inv!271 _values!1492) e!4979)))

(assert (=> start!1016 tp_is_empty!423))

(declare-fun array_inv!272 (array!771) Bool)

(assert (=> start!1016 (array_inv!272 _keys!1806)))

(declare-fun b!8733 () Bool)

(declare-fun res!8104 () Bool)

(assert (=> b!8733 (=> (not res!8104) (not e!4976))))

(declare-datatypes ((tuple2!228 0))(
  ( (tuple2!229 (_1!114 (_ BitVec 64)) (_2!114 V!741)) )
))
(declare-datatypes ((List!252 0))(
  ( (Nil!249) (Cons!248 (h!814 tuple2!228) (t!2393 List!252)) )
))
(declare-datatypes ((ListLongMap!233 0))(
  ( (ListLongMap!234 (toList!132 List!252)) )
))
(declare-fun contains!109 (ListLongMap!233 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!91 (array!771 array!773 (_ BitVec 32) (_ BitVec 32) V!741 V!741 (_ BitVec 32) Int) ListLongMap!233)

(assert (=> b!8733 (= res!8104 (contains!109 (getCurrentListMap!91 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495) k0!1278))))

(declare-fun b!8734 () Bool)

(declare-fun res!8108 () Bool)

(assert (=> b!8734 (=> (not res!8108) (not e!4976))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!771 (_ BitVec 32)) Bool)

(assert (=> b!8734 (= res!8108 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1806 mask!2250))))

(declare-fun mapIsEmpty!614 () Bool)

(assert (=> mapIsEmpty!614 mapRes!614))

(declare-fun b!8735 () Bool)

(declare-fun e!4974 () Bool)

(assert (=> b!8735 (= e!4974 tp_is_empty!423)))

(declare-fun b!8736 () Bool)

(assert (=> b!8736 (= e!4977 true)))

(declare-fun lt!1883 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!771 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!8736 (= lt!1883 (arrayScanForKey!0 _keys!1806 k0!1278 #b00000000000000000000000000000000))))

(declare-fun b!8737 () Bool)

(assert (=> b!8737 (= e!4979 (and e!4974 mapRes!614))))

(declare-fun condMapEmpty!614 () Bool)

(declare-fun mapDefault!614 () ValueCell!195)

(assert (=> b!8737 (= condMapEmpty!614 (= (arr!372 _values!1492) ((as const (Array (_ BitVec 32) ValueCell!195)) mapDefault!614)))))

(declare-fun b!8738 () Bool)

(declare-fun res!8109 () Bool)

(assert (=> b!8738 (=> (not res!8109) (not e!4976))))

(declare-datatypes ((List!253 0))(
  ( (Nil!250) (Cons!249 (h!815 (_ BitVec 64)) (t!2394 List!253)) )
))
(declare-fun arrayNoDuplicates!0 (array!771 (_ BitVec 32) List!253) Bool)

(assert (=> b!8738 (= res!8109 (arrayNoDuplicates!0 _keys!1806 #b00000000000000000000000000000000 Nil!250))))

(assert (= (and start!1016 res!8106) b!8730))

(assert (= (and b!8730 res!8107) b!8734))

(assert (= (and b!8734 res!8108) b!8738))

(assert (= (and b!8738 res!8109) b!8733))

(assert (= (and b!8733 res!8104) b!8728))

(assert (= (and b!8728 res!8110) b!8729))

(assert (= (and b!8729 c!665) b!8732))

(assert (= (and b!8729 (not c!665)) b!8727))

(assert (= (and b!8729 (not res!8105)) b!8736))

(assert (= (and b!8737 condMapEmpty!614) mapIsEmpty!614))

(assert (= (and b!8737 (not condMapEmpty!614)) mapNonEmpty!614))

(get-info :version)

(assert (= (and mapNonEmpty!614 ((_ is ValueCellFull!195) mapValue!614)) b!8731))

(assert (= (and b!8737 ((_ is ValueCellFull!195) mapDefault!614)) b!8735))

(assert (= start!1016 b!8737))

(declare-fun m!5389 () Bool)

(assert (=> start!1016 m!5389))

(declare-fun m!5391 () Bool)

(assert (=> start!1016 m!5391))

(declare-fun m!5393 () Bool)

(assert (=> start!1016 m!5393))

(declare-fun m!5395 () Bool)

(assert (=> b!8728 m!5395))

(declare-fun m!5397 () Bool)

(assert (=> b!8732 m!5397))

(declare-fun m!5399 () Bool)

(assert (=> b!8738 m!5399))

(declare-fun m!5401 () Bool)

(assert (=> b!8733 m!5401))

(assert (=> b!8733 m!5401))

(declare-fun m!5403 () Bool)

(assert (=> b!8733 m!5403))

(assert (=> b!8729 m!5397))

(declare-fun m!5405 () Bool)

(assert (=> b!8729 m!5405))

(declare-fun m!5407 () Bool)

(assert (=> b!8736 m!5407))

(declare-fun m!5409 () Bool)

(assert (=> mapNonEmpty!614 m!5409))

(declare-fun m!5411 () Bool)

(assert (=> b!8734 m!5411))

(check-sat (not b!8734) b_and!497 (not b!8729) (not b!8738) (not b!8728) (not mapNonEmpty!614) (not b!8736) (not b!8733) (not b_next!345) tp_is_empty!423 (not start!1016) (not b!8732))
(check-sat b_and!497 (not b_next!345))
