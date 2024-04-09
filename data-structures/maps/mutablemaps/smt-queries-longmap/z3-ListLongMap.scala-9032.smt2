; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!109014 () Bool)

(assert start!109014)

(declare-fun b_free!28467 () Bool)

(declare-fun b_next!28467 () Bool)

(assert (=> start!109014 (= b_free!28467 (not b_next!28467))))

(declare-fun tp!100520 () Bool)

(declare-fun b_and!46567 () Bool)

(assert (=> start!109014 (= tp!100520 b_and!46567)))

(declare-fun b!1287631 () Bool)

(declare-fun res!855269 () Bool)

(declare-fun e!735356 () Bool)

(assert (=> b!1287631 (=> (not res!855269) (not e!735356))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun k0!1205 () (_ BitVec 64))

(declare-datatypes ((array!85217 0))(
  ( (array!85218 (arr!41105 (Array (_ BitVec 32) (_ BitVec 64))) (size!41656 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85217)

(assert (=> b!1287631 (= res!855269 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41656 _keys!1741))))))

(declare-fun mapNonEmpty!52721 () Bool)

(declare-fun mapRes!52721 () Bool)

(declare-fun tp!100521 () Bool)

(declare-fun e!735357 () Bool)

(assert (=> mapNonEmpty!52721 (= mapRes!52721 (and tp!100521 e!735357))))

(declare-datatypes ((V!50579 0))(
  ( (V!50580 (val!17128 Int)) )
))
(declare-datatypes ((ValueCell!16155 0))(
  ( (ValueCellFull!16155 (v!19729 V!50579)) (EmptyCell!16155) )
))
(declare-fun mapValue!52721 () ValueCell!16155)

(declare-datatypes ((array!85219 0))(
  ( (array!85220 (arr!41106 (Array (_ BitVec 32) ValueCell!16155)) (size!41657 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85219)

(declare-fun mapKey!52721 () (_ BitVec 32))

(declare-fun mapRest!52721 () (Array (_ BitVec 32) ValueCell!16155))

(assert (=> mapNonEmpty!52721 (= (arr!41106 _values!1445) (store mapRest!52721 mapKey!52721 mapValue!52721))))

(declare-fun b!1287632 () Bool)

(declare-fun res!855271 () Bool)

(assert (=> b!1287632 (=> (not res!855271) (not e!735356))))

(declare-fun minValue!1387 () V!50579)

(declare-fun zeroValue!1387 () V!50579)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((tuple2!22114 0))(
  ( (tuple2!22115 (_1!11067 (_ BitVec 64)) (_2!11067 V!50579)) )
))
(declare-datatypes ((List!29313 0))(
  ( (Nil!29310) (Cons!29309 (h!30518 tuple2!22114) (t!42884 List!29313)) )
))
(declare-datatypes ((ListLongMap!19783 0))(
  ( (ListLongMap!19784 (toList!9907 List!29313)) )
))
(declare-fun contains!7963 (ListLongMap!19783 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4913 (array!85217 array!85219 (_ BitVec 32) (_ BitVec 32) V!50579 V!50579 (_ BitVec 32) Int) ListLongMap!19783)

(assert (=> b!1287632 (= res!855271 (contains!7963 (getCurrentListMap!4913 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1287633 () Bool)

(declare-fun res!855273 () Bool)

(assert (=> b!1287633 (=> (not res!855273) (not e!735356))))

(declare-datatypes ((List!29314 0))(
  ( (Nil!29311) (Cons!29310 (h!30519 (_ BitVec 64)) (t!42885 List!29314)) )
))
(declare-fun arrayNoDuplicates!0 (array!85217 (_ BitVec 32) List!29314) Bool)

(assert (=> b!1287633 (= res!855273 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29311))))

(declare-fun b!1287634 () Bool)

(declare-fun tp_is_empty!34107 () Bool)

(assert (=> b!1287634 (= e!735357 tp_is_empty!34107)))

(declare-fun b!1287635 () Bool)

(declare-fun res!855272 () Bool)

(assert (=> b!1287635 (=> (not res!855272) (not e!735356))))

(assert (=> b!1287635 (= res!855272 (and (= (size!41657 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41656 _keys!1741) (size!41657 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1287636 () Bool)

(assert (=> b!1287636 (= e!735356 (not true))))

(assert (=> b!1287636 (not (contains!7963 (ListLongMap!19784 Nil!29310) k0!1205))))

(declare-datatypes ((Unit!42515 0))(
  ( (Unit!42516) )
))
(declare-fun lt!577828 () Unit!42515)

(declare-fun emptyContainsNothing!25 ((_ BitVec 64)) Unit!42515)

(assert (=> b!1287636 (= lt!577828 (emptyContainsNothing!25 k0!1205))))

(declare-fun b!1287637 () Bool)

(declare-fun e!735355 () Bool)

(declare-fun e!735354 () Bool)

(assert (=> b!1287637 (= e!735355 (and e!735354 mapRes!52721))))

(declare-fun condMapEmpty!52721 () Bool)

(declare-fun mapDefault!52721 () ValueCell!16155)

(assert (=> b!1287637 (= condMapEmpty!52721 (= (arr!41106 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16155)) mapDefault!52721)))))

(declare-fun b!1287638 () Bool)

(declare-fun res!855270 () Bool)

(assert (=> b!1287638 (=> (not res!855270) (not e!735356))))

(assert (=> b!1287638 (= res!855270 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41656 _keys!1741))))))

(declare-fun res!855266 () Bool)

(assert (=> start!109014 (=> (not res!855266) (not e!735356))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109014 (= res!855266 (validMask!0 mask!2175))))

(assert (=> start!109014 e!735356))

(assert (=> start!109014 tp_is_empty!34107))

(assert (=> start!109014 true))

(declare-fun array_inv!31141 (array!85219) Bool)

(assert (=> start!109014 (and (array_inv!31141 _values!1445) e!735355)))

(declare-fun array_inv!31142 (array!85217) Bool)

(assert (=> start!109014 (array_inv!31142 _keys!1741)))

(assert (=> start!109014 tp!100520))

(declare-fun b!1287639 () Bool)

(assert (=> b!1287639 (= e!735354 tp_is_empty!34107)))

(declare-fun b!1287640 () Bool)

(declare-fun res!855267 () Bool)

(assert (=> b!1287640 (=> (not res!855267) (not e!735356))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85217 (_ BitVec 32)) Bool)

(assert (=> b!1287640 (= res!855267 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1287641 () Bool)

(declare-fun res!855268 () Bool)

(assert (=> b!1287641 (=> (not res!855268) (not e!735356))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1287641 (= res!855268 (not (validKeyInArray!0 (select (arr!41105 _keys!1741) from!2144))))))

(declare-fun mapIsEmpty!52721 () Bool)

(assert (=> mapIsEmpty!52721 mapRes!52721))

(assert (= (and start!109014 res!855266) b!1287635))

(assert (= (and b!1287635 res!855272) b!1287640))

(assert (= (and b!1287640 res!855267) b!1287633))

(assert (= (and b!1287633 res!855273) b!1287638))

(assert (= (and b!1287638 res!855270) b!1287632))

(assert (= (and b!1287632 res!855271) b!1287631))

(assert (= (and b!1287631 res!855269) b!1287641))

(assert (= (and b!1287641 res!855268) b!1287636))

(assert (= (and b!1287637 condMapEmpty!52721) mapIsEmpty!52721))

(assert (= (and b!1287637 (not condMapEmpty!52721)) mapNonEmpty!52721))

(get-info :version)

(assert (= (and mapNonEmpty!52721 ((_ is ValueCellFull!16155) mapValue!52721)) b!1287634))

(assert (= (and b!1287637 ((_ is ValueCellFull!16155) mapDefault!52721)) b!1287639))

(assert (= start!109014 b!1287637))

(declare-fun m!1180457 () Bool)

(assert (=> b!1287640 m!1180457))

(declare-fun m!1180459 () Bool)

(assert (=> mapNonEmpty!52721 m!1180459))

(declare-fun m!1180461 () Bool)

(assert (=> b!1287636 m!1180461))

(declare-fun m!1180463 () Bool)

(assert (=> b!1287636 m!1180463))

(declare-fun m!1180465 () Bool)

(assert (=> b!1287632 m!1180465))

(assert (=> b!1287632 m!1180465))

(declare-fun m!1180467 () Bool)

(assert (=> b!1287632 m!1180467))

(declare-fun m!1180469 () Bool)

(assert (=> start!109014 m!1180469))

(declare-fun m!1180471 () Bool)

(assert (=> start!109014 m!1180471))

(declare-fun m!1180473 () Bool)

(assert (=> start!109014 m!1180473))

(declare-fun m!1180475 () Bool)

(assert (=> b!1287641 m!1180475))

(assert (=> b!1287641 m!1180475))

(declare-fun m!1180477 () Bool)

(assert (=> b!1287641 m!1180477))

(declare-fun m!1180479 () Bool)

(assert (=> b!1287633 m!1180479))

(check-sat (not b!1287633) b_and!46567 (not b!1287632) tp_is_empty!34107 (not start!109014) (not b!1287640) (not b!1287636) (not b_next!28467) (not mapNonEmpty!52721) (not b!1287641))
(check-sat b_and!46567 (not b_next!28467))
