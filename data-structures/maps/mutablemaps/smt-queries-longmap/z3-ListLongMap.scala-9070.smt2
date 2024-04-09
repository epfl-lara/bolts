; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!109242 () Bool)

(assert start!109242)

(declare-fun b_free!28695 () Bool)

(declare-fun b_next!28695 () Bool)

(assert (=> start!109242 (= b_free!28695 (not b_next!28695))))

(declare-fun tp!101205 () Bool)

(declare-fun b_and!46795 () Bool)

(assert (=> start!109242 (= tp!101205 b_and!46795)))

(declare-fun b!1291690 () Bool)

(declare-fun e!737363 () Bool)

(declare-fun tp_is_empty!34335 () Bool)

(assert (=> b!1291690 (= e!737363 tp_is_empty!34335)))

(declare-fun b!1291691 () Bool)

(declare-fun e!737365 () Bool)

(assert (=> b!1291691 (= e!737365 tp_is_empty!34335)))

(declare-fun b!1291692 () Bool)

(declare-fun res!858306 () Bool)

(declare-fun e!737361 () Bool)

(assert (=> b!1291692 (=> (not res!858306) (not e!737361))))

(declare-datatypes ((array!85663 0))(
  ( (array!85664 (arr!41328 (Array (_ BitVec 32) (_ BitVec 64))) (size!41879 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85663)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85663 (_ BitVec 32)) Bool)

(assert (=> b!1291692 (= res!858306 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun res!858300 () Bool)

(assert (=> start!109242 (=> (not res!858300) (not e!737361))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109242 (= res!858300 (validMask!0 mask!2175))))

(assert (=> start!109242 e!737361))

(assert (=> start!109242 tp_is_empty!34335))

(assert (=> start!109242 true))

(declare-datatypes ((V!50883 0))(
  ( (V!50884 (val!17242 Int)) )
))
(declare-datatypes ((ValueCell!16269 0))(
  ( (ValueCellFull!16269 (v!19843 V!50883)) (EmptyCell!16269) )
))
(declare-datatypes ((array!85665 0))(
  ( (array!85666 (arr!41329 (Array (_ BitVec 32) ValueCell!16269)) (size!41880 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85665)

(declare-fun e!737362 () Bool)

(declare-fun array_inv!31287 (array!85665) Bool)

(assert (=> start!109242 (and (array_inv!31287 _values!1445) e!737362)))

(declare-fun array_inv!31288 (array!85663) Bool)

(assert (=> start!109242 (array_inv!31288 _keys!1741)))

(assert (=> start!109242 tp!101205))

(declare-fun mapIsEmpty!53063 () Bool)

(declare-fun mapRes!53063 () Bool)

(assert (=> mapIsEmpty!53063 mapRes!53063))

(declare-fun b!1291693 () Bool)

(assert (=> b!1291693 (= e!737361 (not true))))

(declare-fun k0!1205 () (_ BitVec 64))

(declare-datatypes ((tuple2!22306 0))(
  ( (tuple2!22307 (_1!11163 (_ BitVec 64)) (_2!11163 V!50883)) )
))
(declare-datatypes ((List!29496 0))(
  ( (Nil!29493) (Cons!29492 (h!30701 tuple2!22306) (t!43067 List!29496)) )
))
(declare-datatypes ((ListLongMap!19975 0))(
  ( (ListLongMap!19976 (toList!10003 List!29496)) )
))
(declare-fun contains!8059 (ListLongMap!19975 (_ BitVec 64)) Bool)

(assert (=> b!1291693 (not (contains!8059 (ListLongMap!19976 Nil!29493) k0!1205))))

(declare-datatypes ((Unit!42695 0))(
  ( (Unit!42696) )
))
(declare-fun lt!579214 () Unit!42695)

(declare-fun emptyContainsNothing!104 ((_ BitVec 64)) Unit!42695)

(assert (=> b!1291693 (= lt!579214 (emptyContainsNothing!104 k0!1205))))

(declare-fun b!1291694 () Bool)

(assert (=> b!1291694 (= e!737362 (and e!737365 mapRes!53063))))

(declare-fun condMapEmpty!53063 () Bool)

(declare-fun mapDefault!53063 () ValueCell!16269)

(assert (=> b!1291694 (= condMapEmpty!53063 (= (arr!41329 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16269)) mapDefault!53063)))))

(declare-fun b!1291695 () Bool)

(declare-fun res!858302 () Bool)

(assert (=> b!1291695 (=> (not res!858302) (not e!737361))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1291695 (= res!858302 (not (validKeyInArray!0 (select (arr!41328 _keys!1741) from!2144))))))

(declare-fun mapNonEmpty!53063 () Bool)

(declare-fun tp!101204 () Bool)

(assert (=> mapNonEmpty!53063 (= mapRes!53063 (and tp!101204 e!737363))))

(declare-fun mapValue!53063 () ValueCell!16269)

(declare-fun mapKey!53063 () (_ BitVec 32))

(declare-fun mapRest!53063 () (Array (_ BitVec 32) ValueCell!16269))

(assert (=> mapNonEmpty!53063 (= (arr!41329 _values!1445) (store mapRest!53063 mapKey!53063 mapValue!53063))))

(declare-fun b!1291696 () Bool)

(declare-fun res!858299 () Bool)

(assert (=> b!1291696 (=> (not res!858299) (not e!737361))))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1291696 (= res!858299 (and (= (size!41880 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41879 _keys!1741) (size!41880 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1291697 () Bool)

(declare-fun res!858301 () Bool)

(assert (=> b!1291697 (=> (not res!858301) (not e!737361))))

(assert (=> b!1291697 (= res!858301 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41879 _keys!1741))))))

(declare-fun b!1291698 () Bool)

(declare-fun res!858304 () Bool)

(assert (=> b!1291698 (=> (not res!858304) (not e!737361))))

(declare-datatypes ((List!29497 0))(
  ( (Nil!29494) (Cons!29493 (h!30702 (_ BitVec 64)) (t!43068 List!29497)) )
))
(declare-fun arrayNoDuplicates!0 (array!85663 (_ BitVec 32) List!29497) Bool)

(assert (=> b!1291698 (= res!858304 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29494))))

(declare-fun b!1291699 () Bool)

(declare-fun res!858303 () Bool)

(assert (=> b!1291699 (=> (not res!858303) (not e!737361))))

(declare-fun minValue!1387 () V!50883)

(declare-fun zeroValue!1387 () V!50883)

(declare-fun defaultEntry!1448 () Int)

(declare-fun getCurrentListMap!4996 (array!85663 array!85665 (_ BitVec 32) (_ BitVec 32) V!50883 V!50883 (_ BitVec 32) Int) ListLongMap!19975)

(assert (=> b!1291699 (= res!858303 (contains!8059 (getCurrentListMap!4996 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1291700 () Bool)

(declare-fun res!858305 () Bool)

(assert (=> b!1291700 (=> (not res!858305) (not e!737361))))

(assert (=> b!1291700 (= res!858305 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41879 _keys!1741))))))

(assert (= (and start!109242 res!858300) b!1291696))

(assert (= (and b!1291696 res!858299) b!1291692))

(assert (= (and b!1291692 res!858306) b!1291698))

(assert (= (and b!1291698 res!858304) b!1291700))

(assert (= (and b!1291700 res!858305) b!1291699))

(assert (= (and b!1291699 res!858303) b!1291697))

(assert (= (and b!1291697 res!858301) b!1291695))

(assert (= (and b!1291695 res!858302) b!1291693))

(assert (= (and b!1291694 condMapEmpty!53063) mapIsEmpty!53063))

(assert (= (and b!1291694 (not condMapEmpty!53063)) mapNonEmpty!53063))

(get-info :version)

(assert (= (and mapNonEmpty!53063 ((_ is ValueCellFull!16269) mapValue!53063)) b!1291690))

(assert (= (and b!1291694 ((_ is ValueCellFull!16269) mapDefault!53063)) b!1291691))

(assert (= start!109242 b!1291694))

(declare-fun m!1184465 () Bool)

(assert (=> mapNonEmpty!53063 m!1184465))

(declare-fun m!1184467 () Bool)

(assert (=> b!1291698 m!1184467))

(declare-fun m!1184469 () Bool)

(assert (=> b!1291693 m!1184469))

(declare-fun m!1184471 () Bool)

(assert (=> b!1291693 m!1184471))

(declare-fun m!1184473 () Bool)

(assert (=> b!1291699 m!1184473))

(assert (=> b!1291699 m!1184473))

(declare-fun m!1184475 () Bool)

(assert (=> b!1291699 m!1184475))

(declare-fun m!1184477 () Bool)

(assert (=> b!1291692 m!1184477))

(declare-fun m!1184479 () Bool)

(assert (=> b!1291695 m!1184479))

(assert (=> b!1291695 m!1184479))

(declare-fun m!1184481 () Bool)

(assert (=> b!1291695 m!1184481))

(declare-fun m!1184483 () Bool)

(assert (=> start!109242 m!1184483))

(declare-fun m!1184485 () Bool)

(assert (=> start!109242 m!1184485))

(declare-fun m!1184487 () Bool)

(assert (=> start!109242 m!1184487))

(check-sat (not b!1291692) (not b_next!28695) (not b!1291693) b_and!46795 (not mapNonEmpty!53063) (not b!1291698) (not start!109242) (not b!1291699) (not b!1291695) tp_is_empty!34335)
(check-sat b_and!46795 (not b_next!28695))
