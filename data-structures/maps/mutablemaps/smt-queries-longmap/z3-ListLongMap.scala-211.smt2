; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!3948 () Bool)

(assert start!3948)

(declare-fun b_free!855 () Bool)

(declare-fun b_next!855 () Bool)

(assert (=> start!3948 (= b_free!855 (not b_next!855))))

(declare-fun tp!3985 () Bool)

(declare-fun b_and!1667 () Bool)

(assert (=> start!3948 (= tp!3985 b_and!1667)))

(declare-fun b!28235 () Bool)

(declare-fun e!18280 () Bool)

(assert (=> b!28235 (= e!18280 false)))

(declare-fun lt!10767 () (_ BitVec 32))

(declare-datatypes ((array!1643 0))(
  ( (array!1644 (arr!775 (Array (_ BitVec 32) (_ BitVec 64))) (size!876 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1643)

(declare-fun k0!1304 () (_ BitVec 64))

(declare-fun arrayScanForKey!0 (array!1643 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!28235 (= lt!10767 (arrayScanForKey!0 _keys!1833 k0!1304 #b00000000000000000000000000000000))))

(declare-fun b!28236 () Bool)

(declare-fun res!16781 () Bool)

(assert (=> b!28236 (=> (not res!16781) (not e!18280))))

(declare-fun defaultEntry!1504 () Int)

(declare-fun extraKeys!1422 () (_ BitVec 32))

(declare-fun mask!2294 () (_ BitVec 32))

(declare-datatypes ((V!1437 0))(
  ( (V!1438 (val!631 Int)) )
))
(declare-datatypes ((ValueCell!405 0))(
  ( (ValueCellFull!405 (v!1720 V!1437)) (EmptyCell!405) )
))
(declare-datatypes ((array!1645 0))(
  ( (array!1646 (arr!776 (Array (_ BitVec 32) ValueCell!405)) (size!877 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1645)

(declare-fun zeroValue!1443 () V!1437)

(declare-fun minValue!1443 () V!1437)

(declare-datatypes ((tuple2!1034 0))(
  ( (tuple2!1035 (_1!527 (_ BitVec 64)) (_2!527 V!1437)) )
))
(declare-datatypes ((List!649 0))(
  ( (Nil!646) (Cons!645 (h!1212 tuple2!1034) (t!3344 List!649)) )
))
(declare-datatypes ((ListLongMap!615 0))(
  ( (ListLongMap!616 (toList!323 List!649)) )
))
(declare-fun contains!260 (ListLongMap!615 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!151 (array!1643 array!1645 (_ BitVec 32) (_ BitVec 32) V!1437 V!1437 (_ BitVec 32) Int) ListLongMap!615)

(assert (=> b!28236 (= res!16781 (not (contains!260 (getCurrentListMap!151 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504) k0!1304)))))

(declare-fun b!28237 () Bool)

(declare-fun res!16778 () Bool)

(assert (=> b!28237 (=> (not res!16778) (not e!18280))))

(declare-datatypes ((List!650 0))(
  ( (Nil!647) (Cons!646 (h!1213 (_ BitVec 64)) (t!3345 List!650)) )
))
(declare-fun arrayNoDuplicates!0 (array!1643 (_ BitVec 32) List!650) Bool)

(assert (=> b!28237 (= res!16778 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!647))))

(declare-fun res!16783 () Bool)

(assert (=> start!3948 (=> (not res!16783) (not e!18280))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!3948 (= res!16783 (validMask!0 mask!2294))))

(assert (=> start!3948 e!18280))

(assert (=> start!3948 true))

(assert (=> start!3948 tp!3985))

(declare-fun e!18279 () Bool)

(declare-fun array_inv!529 (array!1645) Bool)

(assert (=> start!3948 (and (array_inv!529 _values!1501) e!18279)))

(declare-fun array_inv!530 (array!1643) Bool)

(assert (=> start!3948 (array_inv!530 _keys!1833)))

(declare-fun tp_is_empty!1209 () Bool)

(assert (=> start!3948 tp_is_empty!1209))

(declare-fun b!28238 () Bool)

(declare-fun res!16777 () Bool)

(assert (=> b!28238 (=> (not res!16777) (not e!18280))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!1643 (_ BitVec 32)) Bool)

(assert (=> b!28238 (= res!16777 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun mapNonEmpty!1342 () Bool)

(declare-fun mapRes!1342 () Bool)

(declare-fun tp!3984 () Bool)

(declare-fun e!18278 () Bool)

(assert (=> mapNonEmpty!1342 (= mapRes!1342 (and tp!3984 e!18278))))

(declare-fun mapKey!1342 () (_ BitVec 32))

(declare-fun mapValue!1342 () ValueCell!405)

(declare-fun mapRest!1342 () (Array (_ BitVec 32) ValueCell!405))

(assert (=> mapNonEmpty!1342 (= (arr!776 _values!1501) (store mapRest!1342 mapKey!1342 mapValue!1342))))

(declare-fun b!28239 () Bool)

(declare-fun res!16779 () Bool)

(assert (=> b!28239 (=> (not res!16779) (not e!18280))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!28239 (= res!16779 (validKeyInArray!0 k0!1304))))

(declare-fun mapIsEmpty!1342 () Bool)

(assert (=> mapIsEmpty!1342 mapRes!1342))

(declare-fun b!28240 () Bool)

(declare-fun e!18277 () Bool)

(assert (=> b!28240 (= e!18279 (and e!18277 mapRes!1342))))

(declare-fun condMapEmpty!1342 () Bool)

(declare-fun mapDefault!1342 () ValueCell!405)

(assert (=> b!28240 (= condMapEmpty!1342 (= (arr!776 _values!1501) ((as const (Array (_ BitVec 32) ValueCell!405)) mapDefault!1342)))))

(declare-fun b!28241 () Bool)

(assert (=> b!28241 (= e!18278 tp_is_empty!1209)))

(declare-fun b!28242 () Bool)

(declare-fun res!16780 () Bool)

(assert (=> b!28242 (=> (not res!16780) (not e!18280))))

(declare-fun arrayContainsKey!0 (array!1643 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!28242 (= res!16780 (arrayContainsKey!0 _keys!1833 k0!1304 #b00000000000000000000000000000000))))

(declare-fun b!28243 () Bool)

(assert (=> b!28243 (= e!18277 tp_is_empty!1209)))

(declare-fun b!28244 () Bool)

(declare-fun res!16782 () Bool)

(assert (=> b!28244 (=> (not res!16782) (not e!18280))))

(assert (=> b!28244 (= res!16782 (and (= (size!877 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!876 _keys!1833) (size!877 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(assert (= (and start!3948 res!16783) b!28244))

(assert (= (and b!28244 res!16782) b!28238))

(assert (= (and b!28238 res!16777) b!28237))

(assert (= (and b!28237 res!16778) b!28239))

(assert (= (and b!28239 res!16779) b!28236))

(assert (= (and b!28236 res!16781) b!28242))

(assert (= (and b!28242 res!16780) b!28235))

(assert (= (and b!28240 condMapEmpty!1342) mapIsEmpty!1342))

(assert (= (and b!28240 (not condMapEmpty!1342)) mapNonEmpty!1342))

(get-info :version)

(assert (= (and mapNonEmpty!1342 ((_ is ValueCellFull!405) mapValue!1342)) b!28241))

(assert (= (and b!28240 ((_ is ValueCellFull!405) mapDefault!1342)) b!28243))

(assert (= start!3948 b!28240))

(declare-fun m!22489 () Bool)

(assert (=> b!28237 m!22489))

(declare-fun m!22491 () Bool)

(assert (=> b!28242 m!22491))

(declare-fun m!22493 () Bool)

(assert (=> b!28238 m!22493))

(declare-fun m!22495 () Bool)

(assert (=> start!3948 m!22495))

(declare-fun m!22497 () Bool)

(assert (=> start!3948 m!22497))

(declare-fun m!22499 () Bool)

(assert (=> start!3948 m!22499))

(declare-fun m!22501 () Bool)

(assert (=> b!28239 m!22501))

(declare-fun m!22503 () Bool)

(assert (=> mapNonEmpty!1342 m!22503))

(declare-fun m!22505 () Bool)

(assert (=> b!28235 m!22505))

(declare-fun m!22507 () Bool)

(assert (=> b!28236 m!22507))

(assert (=> b!28236 m!22507))

(declare-fun m!22509 () Bool)

(assert (=> b!28236 m!22509))

(check-sat (not b!28242) tp_is_empty!1209 (not b_next!855) (not b!28239) (not b!28238) (not start!3948) (not mapNonEmpty!1342) b_and!1667 (not b!28235) (not b!28236) (not b!28237))
(check-sat b_and!1667 (not b_next!855))
