; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108690 () Bool)

(assert start!108690)

(declare-fun b_free!28167 () Bool)

(declare-fun b_next!28167 () Bool)

(assert (=> start!108690 (= b_free!28167 (not b_next!28167))))

(declare-fun tp!99618 () Bool)

(declare-fun b_and!46243 () Bool)

(assert (=> start!108690 (= tp!99618 b_and!46243)))

(declare-fun b!1282443 () Bool)

(declare-fun e!732790 () Bool)

(declare-fun tp_is_empty!33807 () Bool)

(assert (=> b!1282443 (= e!732790 tp_is_empty!33807)))

(declare-fun b!1282444 () Bool)

(declare-fun e!732788 () Bool)

(assert (=> b!1282444 (= e!732788 tp_is_empty!33807)))

(declare-fun b!1282445 () Bool)

(declare-fun res!851919 () Bool)

(declare-fun e!732786 () Bool)

(assert (=> b!1282445 (=> (not res!851919) (not e!732786))))

(declare-datatypes ((array!84635 0))(
  ( (array!84636 (arr!40815 (Array (_ BitVec 32) (_ BitVec 64))) (size!41366 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84635)

(declare-datatypes ((List!29093 0))(
  ( (Nil!29090) (Cons!29089 (h!30298 (_ BitVec 64)) (t!42644 List!29093)) )
))
(declare-fun arrayNoDuplicates!0 (array!84635 (_ BitVec 32) List!29093) Bool)

(assert (=> b!1282445 (= res!851919 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29090))))

(declare-fun mapNonEmpty!52268 () Bool)

(declare-fun mapRes!52268 () Bool)

(declare-fun tp!99617 () Bool)

(assert (=> mapNonEmpty!52268 (= mapRes!52268 (and tp!99617 e!732788))))

(declare-datatypes ((V!50179 0))(
  ( (V!50180 (val!16978 Int)) )
))
(declare-datatypes ((ValueCell!16005 0))(
  ( (ValueCellFull!16005 (v!19578 V!50179)) (EmptyCell!16005) )
))
(declare-fun mapValue!52268 () ValueCell!16005)

(declare-fun mapKey!52268 () (_ BitVec 32))

(declare-fun mapRest!52268 () (Array (_ BitVec 32) ValueCell!16005))

(declare-datatypes ((array!84637 0))(
  ( (array!84638 (arr!40816 (Array (_ BitVec 32) ValueCell!16005)) (size!41367 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84637)

(assert (=> mapNonEmpty!52268 (= (arr!40816 _values!1445) (store mapRest!52268 mapKey!52268 mapValue!52268))))

(declare-fun b!1282446 () Bool)

(assert (=> b!1282446 (= e!732786 false)))

(declare-fun minValue!1387 () V!50179)

(declare-fun zeroValue!1387 () V!50179)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun k0!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun lt!576483 () Bool)

(declare-datatypes ((tuple2!21884 0))(
  ( (tuple2!21885 (_1!10952 (_ BitVec 64)) (_2!10952 V!50179)) )
))
(declare-datatypes ((List!29094 0))(
  ( (Nil!29091) (Cons!29090 (h!30299 tuple2!21884) (t!42645 List!29094)) )
))
(declare-datatypes ((ListLongMap!19553 0))(
  ( (ListLongMap!19554 (toList!9792 List!29094)) )
))
(declare-fun contains!7847 (ListLongMap!19553 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4812 (array!84635 array!84637 (_ BitVec 32) (_ BitVec 32) V!50179 V!50179 (_ BitVec 32) Int) ListLongMap!19553)

(assert (=> b!1282446 (= lt!576483 (contains!7847 (getCurrentListMap!4812 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1282447 () Bool)

(declare-fun e!732787 () Bool)

(assert (=> b!1282447 (= e!732787 (and e!732790 mapRes!52268))))

(declare-fun condMapEmpty!52268 () Bool)

(declare-fun mapDefault!52268 () ValueCell!16005)

(assert (=> b!1282447 (= condMapEmpty!52268 (= (arr!40816 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16005)) mapDefault!52268)))))

(declare-fun b!1282448 () Bool)

(declare-fun res!851921 () Bool)

(assert (=> b!1282448 (=> (not res!851921) (not e!732786))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84635 (_ BitVec 32)) Bool)

(assert (=> b!1282448 (= res!851921 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun res!851920 () Bool)

(assert (=> start!108690 (=> (not res!851920) (not e!732786))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108690 (= res!851920 (validMask!0 mask!2175))))

(assert (=> start!108690 e!732786))

(assert (=> start!108690 tp_is_empty!33807))

(assert (=> start!108690 true))

(declare-fun array_inv!30943 (array!84637) Bool)

(assert (=> start!108690 (and (array_inv!30943 _values!1445) e!732787)))

(declare-fun array_inv!30944 (array!84635) Bool)

(assert (=> start!108690 (array_inv!30944 _keys!1741)))

(assert (=> start!108690 tp!99618))

(declare-fun b!1282449 () Bool)

(declare-fun res!851922 () Bool)

(assert (=> b!1282449 (=> (not res!851922) (not e!732786))))

(assert (=> b!1282449 (= res!851922 (and (= (size!41367 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41366 _keys!1741) (size!41367 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1282450 () Bool)

(declare-fun res!851918 () Bool)

(assert (=> b!1282450 (=> (not res!851918) (not e!732786))))

(assert (=> b!1282450 (= res!851918 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41366 _keys!1741))))))

(declare-fun mapIsEmpty!52268 () Bool)

(assert (=> mapIsEmpty!52268 mapRes!52268))

(assert (= (and start!108690 res!851920) b!1282449))

(assert (= (and b!1282449 res!851922) b!1282448))

(assert (= (and b!1282448 res!851921) b!1282445))

(assert (= (and b!1282445 res!851919) b!1282450))

(assert (= (and b!1282450 res!851918) b!1282446))

(assert (= (and b!1282447 condMapEmpty!52268) mapIsEmpty!52268))

(assert (= (and b!1282447 (not condMapEmpty!52268)) mapNonEmpty!52268))

(get-info :version)

(assert (= (and mapNonEmpty!52268 ((_ is ValueCellFull!16005) mapValue!52268)) b!1282444))

(assert (= (and b!1282447 ((_ is ValueCellFull!16005) mapDefault!52268)) b!1282443))

(assert (= start!108690 b!1282447))

(declare-fun m!1176655 () Bool)

(assert (=> b!1282446 m!1176655))

(assert (=> b!1282446 m!1176655))

(declare-fun m!1176657 () Bool)

(assert (=> b!1282446 m!1176657))

(declare-fun m!1176659 () Bool)

(assert (=> b!1282445 m!1176659))

(declare-fun m!1176661 () Bool)

(assert (=> start!108690 m!1176661))

(declare-fun m!1176663 () Bool)

(assert (=> start!108690 m!1176663))

(declare-fun m!1176665 () Bool)

(assert (=> start!108690 m!1176665))

(declare-fun m!1176667 () Bool)

(assert (=> mapNonEmpty!52268 m!1176667))

(declare-fun m!1176669 () Bool)

(assert (=> b!1282448 m!1176669))

(check-sat (not b!1282445) b_and!46243 (not start!108690) (not b!1282448) (not mapNonEmpty!52268) (not b_next!28167) tp_is_empty!33807 (not b!1282446))
(check-sat b_and!46243 (not b_next!28167))
