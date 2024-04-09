; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108542 () Bool)

(assert start!108542)

(declare-fun b_free!28053 () Bool)

(declare-fun b_next!28053 () Bool)

(assert (=> start!108542 (= b_free!28053 (not b_next!28053))))

(declare-fun tp!99269 () Bool)

(declare-fun b_and!46123 () Bool)

(assert (=> start!108542 (= tp!99269 b_and!46123)))

(declare-fun b!1280597 () Bool)

(declare-fun res!850737 () Bool)

(declare-fun e!731736 () Bool)

(assert (=> b!1280597 (=> (not res!850737) (not e!731736))))

(declare-datatypes ((V!50027 0))(
  ( (V!50028 (val!16921 Int)) )
))
(declare-fun minValue!1387 () V!50027)

(declare-fun zeroValue!1387 () V!50027)

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((ValueCell!15948 0))(
  ( (ValueCellFull!15948 (v!19519 V!50027)) (EmptyCell!15948) )
))
(declare-datatypes ((array!84415 0))(
  ( (array!84416 (arr!40707 (Array (_ BitVec 32) ValueCell!15948)) (size!41258 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84415)

(declare-fun k0!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!84417 0))(
  ( (array!84418 (arr!40708 (Array (_ BitVec 32) (_ BitVec 64))) (size!41259 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84417)

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((tuple2!21806 0))(
  ( (tuple2!21807 (_1!10913 (_ BitVec 64)) (_2!10913 V!50027)) )
))
(declare-datatypes ((List!29016 0))(
  ( (Nil!29013) (Cons!29012 (h!30221 tuple2!21806) (t!42563 List!29016)) )
))
(declare-datatypes ((ListLongMap!19475 0))(
  ( (ListLongMap!19476 (toList!9753 List!29016)) )
))
(declare-fun contains!7806 (ListLongMap!19475 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4773 (array!84417 array!84415 (_ BitVec 32) (_ BitVec 32) V!50027 V!50027 (_ BitVec 32) Int) ListLongMap!19475)

(assert (=> b!1280597 (= res!850737 (contains!7806 (getCurrentListMap!4773 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1280598 () Bool)

(declare-fun e!731737 () Bool)

(declare-fun tp_is_empty!33693 () Bool)

(assert (=> b!1280598 (= e!731737 tp_is_empty!33693)))

(declare-fun b!1280599 () Bool)

(declare-fun res!850739 () Bool)

(assert (=> b!1280599 (=> (not res!850739) (not e!731736))))

(assert (=> b!1280599 (= res!850739 (and (= (size!41258 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41259 _keys!1741) (size!41258 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1280600 () Bool)

(declare-fun e!731740 () Bool)

(declare-fun mapRes!52091 () Bool)

(assert (=> b!1280600 (= e!731740 (and e!731737 mapRes!52091))))

(declare-fun condMapEmpty!52091 () Bool)

(declare-fun mapDefault!52091 () ValueCell!15948)

(assert (=> b!1280600 (= condMapEmpty!52091 (= (arr!40707 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!15948)) mapDefault!52091)))))

(declare-fun b!1280601 () Bool)

(declare-fun res!850738 () Bool)

(assert (=> b!1280601 (=> (not res!850738) (not e!731736))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84417 (_ BitVec 32)) Bool)

(assert (=> b!1280601 (= res!850738 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun mapIsEmpty!52091 () Bool)

(assert (=> mapIsEmpty!52091 mapRes!52091))

(declare-fun b!1280602 () Bool)

(declare-fun res!850736 () Bool)

(assert (=> b!1280602 (=> (not res!850736) (not e!731736))))

(assert (=> b!1280602 (= res!850736 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvslt (bvadd #b00000000000000000000000000000001 from!2144) (size!41259 _keys!1741)) (not (= (select (arr!40708 _keys!1741) from!2144) k0!1205))))))

(declare-fun b!1280603 () Bool)

(declare-fun res!850735 () Bool)

(assert (=> b!1280603 (=> (not res!850735) (not e!731736))))

(declare-datatypes ((List!29017 0))(
  ( (Nil!29014) (Cons!29013 (h!30222 (_ BitVec 64)) (t!42564 List!29017)) )
))
(declare-fun arrayNoDuplicates!0 (array!84417 (_ BitVec 32) List!29017) Bool)

(assert (=> b!1280603 (= res!850735 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29014))))

(declare-fun res!850734 () Bool)

(assert (=> start!108542 (=> (not res!850734) (not e!731736))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108542 (= res!850734 (validMask!0 mask!2175))))

(assert (=> start!108542 e!731736))

(assert (=> start!108542 tp_is_empty!33693))

(assert (=> start!108542 true))

(declare-fun array_inv!30879 (array!84415) Bool)

(assert (=> start!108542 (and (array_inv!30879 _values!1445) e!731740)))

(declare-fun array_inv!30880 (array!84417) Bool)

(assert (=> start!108542 (array_inv!30880 _keys!1741)))

(assert (=> start!108542 tp!99269))

(declare-fun b!1280604 () Bool)

(assert (=> b!1280604 (= e!731736 (not true))))

(assert (=> b!1280604 (contains!7806 (getCurrentListMap!4773 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 (bvadd #b00000000000000000000000000000001 from!2144) defaultEntry!1448) k0!1205)))

(declare-datatypes ((Unit!42347 0))(
  ( (Unit!42348) )
))
(declare-fun lt!576088 () Unit!42347)

(declare-fun lemmaInListMapFromThenFromPlsOneIfNotEqToFst!6 (array!84417 array!84415 (_ BitVec 32) (_ BitVec 32) V!50027 V!50027 (_ BitVec 64) (_ BitVec 32) Int) Unit!42347)

(assert (=> b!1280604 (= lt!576088 (lemmaInListMapFromThenFromPlsOneIfNotEqToFst!6 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 k0!1205 from!2144 defaultEntry!1448))))

(declare-fun b!1280605 () Bool)

(declare-fun res!850733 () Bool)

(assert (=> b!1280605 (=> (not res!850733) (not e!731736))))

(assert (=> b!1280605 (= res!850733 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41259 _keys!1741))))))

(declare-fun b!1280606 () Bool)

(declare-fun e!731739 () Bool)

(assert (=> b!1280606 (= e!731739 tp_is_empty!33693)))

(declare-fun mapNonEmpty!52091 () Bool)

(declare-fun tp!99270 () Bool)

(assert (=> mapNonEmpty!52091 (= mapRes!52091 (and tp!99270 e!731739))))

(declare-fun mapKey!52091 () (_ BitVec 32))

(declare-fun mapValue!52091 () ValueCell!15948)

(declare-fun mapRest!52091 () (Array (_ BitVec 32) ValueCell!15948))

(assert (=> mapNonEmpty!52091 (= (arr!40707 _values!1445) (store mapRest!52091 mapKey!52091 mapValue!52091))))

(assert (= (and start!108542 res!850734) b!1280599))

(assert (= (and b!1280599 res!850739) b!1280601))

(assert (= (and b!1280601 res!850738) b!1280603))

(assert (= (and b!1280603 res!850735) b!1280605))

(assert (= (and b!1280605 res!850733) b!1280597))

(assert (= (and b!1280597 res!850737) b!1280602))

(assert (= (and b!1280602 res!850736) b!1280604))

(assert (= (and b!1280600 condMapEmpty!52091) mapIsEmpty!52091))

(assert (= (and b!1280600 (not condMapEmpty!52091)) mapNonEmpty!52091))

(get-info :version)

(assert (= (and mapNonEmpty!52091 ((_ is ValueCellFull!15948) mapValue!52091)) b!1280606))

(assert (= (and b!1280600 ((_ is ValueCellFull!15948) mapDefault!52091)) b!1280598))

(assert (= start!108542 b!1280600))

(declare-fun m!1175207 () Bool)

(assert (=> b!1280601 m!1175207))

(declare-fun m!1175209 () Bool)

(assert (=> b!1280602 m!1175209))

(declare-fun m!1175211 () Bool)

(assert (=> start!108542 m!1175211))

(declare-fun m!1175213 () Bool)

(assert (=> start!108542 m!1175213))

(declare-fun m!1175215 () Bool)

(assert (=> start!108542 m!1175215))

(declare-fun m!1175217 () Bool)

(assert (=> b!1280603 m!1175217))

(declare-fun m!1175219 () Bool)

(assert (=> b!1280604 m!1175219))

(assert (=> b!1280604 m!1175219))

(declare-fun m!1175221 () Bool)

(assert (=> b!1280604 m!1175221))

(declare-fun m!1175223 () Bool)

(assert (=> b!1280604 m!1175223))

(declare-fun m!1175225 () Bool)

(assert (=> b!1280597 m!1175225))

(assert (=> b!1280597 m!1175225))

(declare-fun m!1175227 () Bool)

(assert (=> b!1280597 m!1175227))

(declare-fun m!1175229 () Bool)

(assert (=> mapNonEmpty!52091 m!1175229))

(check-sat (not b!1280603) tp_is_empty!33693 (not start!108542) (not b!1280597) (not b!1280601) (not mapNonEmpty!52091) (not b_next!28053) b_and!46123 (not b!1280604))
(check-sat b_and!46123 (not b_next!28053))
