; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108578 () Bool)

(assert start!108578)

(declare-fun b_free!28089 () Bool)

(declare-fun b_next!28089 () Bool)

(assert (=> start!108578 (= b_free!28089 (not b_next!28089))))

(declare-fun tp!99378 () Bool)

(declare-fun b_and!46159 () Bool)

(assert (=> start!108578 (= tp!99378 b_and!46159)))

(declare-fun res!851116 () Bool)

(declare-fun e!732006 () Bool)

(assert (=> start!108578 (=> (not res!851116) (not e!732006))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108578 (= res!851116 (validMask!0 mask!2175))))

(assert (=> start!108578 e!732006))

(declare-fun tp_is_empty!33729 () Bool)

(assert (=> start!108578 tp_is_empty!33729))

(assert (=> start!108578 true))

(declare-datatypes ((V!50075 0))(
  ( (V!50076 (val!16939 Int)) )
))
(declare-datatypes ((ValueCell!15966 0))(
  ( (ValueCellFull!15966 (v!19537 V!50075)) (EmptyCell!15966) )
))
(declare-datatypes ((array!84483 0))(
  ( (array!84484 (arr!40741 (Array (_ BitVec 32) ValueCell!15966)) (size!41292 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84483)

(declare-fun e!732009 () Bool)

(declare-fun array_inv!30901 (array!84483) Bool)

(assert (=> start!108578 (and (array_inv!30901 _values!1445) e!732009)))

(declare-datatypes ((array!84485 0))(
  ( (array!84486 (arr!40742 (Array (_ BitVec 32) (_ BitVec 64))) (size!41293 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84485)

(declare-fun array_inv!30902 (array!84485) Bool)

(assert (=> start!108578 (array_inv!30902 _keys!1741)))

(assert (=> start!108578 tp!99378))

(declare-fun b!1281137 () Bool)

(declare-fun res!851113 () Bool)

(assert (=> b!1281137 (=> (not res!851113) (not e!732006))))

(declare-fun minValue!1387 () V!50075)

(declare-fun zeroValue!1387 () V!50075)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun k0!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!21834 0))(
  ( (tuple2!21835 (_1!10927 (_ BitVec 64)) (_2!10927 V!50075)) )
))
(declare-datatypes ((List!29042 0))(
  ( (Nil!29039) (Cons!29038 (h!30247 tuple2!21834) (t!42589 List!29042)) )
))
(declare-datatypes ((ListLongMap!19503 0))(
  ( (ListLongMap!19504 (toList!9767 List!29042)) )
))
(declare-fun contains!7820 (ListLongMap!19503 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4787 (array!84485 array!84483 (_ BitVec 32) (_ BitVec 32) V!50075 V!50075 (_ BitVec 32) Int) ListLongMap!19503)

(assert (=> b!1281137 (= res!851113 (contains!7820 (getCurrentListMap!4787 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1281138 () Bool)

(declare-fun res!851114 () Bool)

(assert (=> b!1281138 (=> (not res!851114) (not e!732006))))

(declare-datatypes ((List!29043 0))(
  ( (Nil!29040) (Cons!29039 (h!30248 (_ BitVec 64)) (t!42590 List!29043)) )
))
(declare-fun arrayNoDuplicates!0 (array!84485 (_ BitVec 32) List!29043) Bool)

(assert (=> b!1281138 (= res!851114 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29040))))

(declare-fun b!1281139 () Bool)

(declare-fun res!851112 () Bool)

(assert (=> b!1281139 (=> (not res!851112) (not e!732006))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84485 (_ BitVec 32)) Bool)

(assert (=> b!1281139 (= res!851112 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1281140 () Bool)

(declare-fun res!851117 () Bool)

(assert (=> b!1281140 (=> (not res!851117) (not e!732006))))

(assert (=> b!1281140 (= res!851117 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvslt (bvadd #b00000000000000000000000000000001 from!2144) (size!41293 _keys!1741)) (not (= (select (arr!40742 _keys!1741) from!2144) k0!1205))))))

(declare-fun b!1281141 () Bool)

(assert (=> b!1281141 (= e!732006 (not true))))

(assert (=> b!1281141 (contains!7820 (getCurrentListMap!4787 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 (bvadd #b00000000000000000000000000000001 from!2144) defaultEntry!1448) k0!1205)))

(declare-datatypes ((Unit!42373 0))(
  ( (Unit!42374) )
))
(declare-fun lt!576142 () Unit!42373)

(declare-fun lemmaInListMapFromThenFromPlsOneIfNotEqToFst!19 (array!84485 array!84483 (_ BitVec 32) (_ BitVec 32) V!50075 V!50075 (_ BitVec 64) (_ BitVec 32) Int) Unit!42373)

(assert (=> b!1281141 (= lt!576142 (lemmaInListMapFromThenFromPlsOneIfNotEqToFst!19 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 k0!1205 from!2144 defaultEntry!1448))))

(declare-fun b!1281142 () Bool)

(declare-fun res!851115 () Bool)

(assert (=> b!1281142 (=> (not res!851115) (not e!732006))))

(assert (=> b!1281142 (= res!851115 (and (= (size!41292 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41293 _keys!1741) (size!41292 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1281143 () Bool)

(declare-fun e!732008 () Bool)

(assert (=> b!1281143 (= e!732008 tp_is_empty!33729)))

(declare-fun b!1281144 () Bool)

(declare-fun res!851111 () Bool)

(assert (=> b!1281144 (=> (not res!851111) (not e!732006))))

(assert (=> b!1281144 (= res!851111 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41293 _keys!1741))))))

(declare-fun mapNonEmpty!52145 () Bool)

(declare-fun mapRes!52145 () Bool)

(declare-fun tp!99377 () Bool)

(declare-fun e!732007 () Bool)

(assert (=> mapNonEmpty!52145 (= mapRes!52145 (and tp!99377 e!732007))))

(declare-fun mapKey!52145 () (_ BitVec 32))

(declare-fun mapValue!52145 () ValueCell!15966)

(declare-fun mapRest!52145 () (Array (_ BitVec 32) ValueCell!15966))

(assert (=> mapNonEmpty!52145 (= (arr!40741 _values!1445) (store mapRest!52145 mapKey!52145 mapValue!52145))))

(declare-fun b!1281145 () Bool)

(assert (=> b!1281145 (= e!732009 (and e!732008 mapRes!52145))))

(declare-fun condMapEmpty!52145 () Bool)

(declare-fun mapDefault!52145 () ValueCell!15966)

(assert (=> b!1281145 (= condMapEmpty!52145 (= (arr!40741 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!15966)) mapDefault!52145)))))

(declare-fun b!1281146 () Bool)

(assert (=> b!1281146 (= e!732007 tp_is_empty!33729)))

(declare-fun mapIsEmpty!52145 () Bool)

(assert (=> mapIsEmpty!52145 mapRes!52145))

(assert (= (and start!108578 res!851116) b!1281142))

(assert (= (and b!1281142 res!851115) b!1281139))

(assert (= (and b!1281139 res!851112) b!1281138))

(assert (= (and b!1281138 res!851114) b!1281144))

(assert (= (and b!1281144 res!851111) b!1281137))

(assert (= (and b!1281137 res!851113) b!1281140))

(assert (= (and b!1281140 res!851117) b!1281141))

(assert (= (and b!1281145 condMapEmpty!52145) mapIsEmpty!52145))

(assert (= (and b!1281145 (not condMapEmpty!52145)) mapNonEmpty!52145))

(get-info :version)

(assert (= (and mapNonEmpty!52145 ((_ is ValueCellFull!15966) mapValue!52145)) b!1281146))

(assert (= (and b!1281145 ((_ is ValueCellFull!15966) mapDefault!52145)) b!1281143))

(assert (= start!108578 b!1281145))

(declare-fun m!1175639 () Bool)

(assert (=> b!1281138 m!1175639))

(declare-fun m!1175641 () Bool)

(assert (=> mapNonEmpty!52145 m!1175641))

(declare-fun m!1175643 () Bool)

(assert (=> b!1281140 m!1175643))

(declare-fun m!1175645 () Bool)

(assert (=> b!1281141 m!1175645))

(assert (=> b!1281141 m!1175645))

(declare-fun m!1175647 () Bool)

(assert (=> b!1281141 m!1175647))

(declare-fun m!1175649 () Bool)

(assert (=> b!1281141 m!1175649))

(declare-fun m!1175651 () Bool)

(assert (=> start!108578 m!1175651))

(declare-fun m!1175653 () Bool)

(assert (=> start!108578 m!1175653))

(declare-fun m!1175655 () Bool)

(assert (=> start!108578 m!1175655))

(declare-fun m!1175657 () Bool)

(assert (=> b!1281137 m!1175657))

(assert (=> b!1281137 m!1175657))

(declare-fun m!1175659 () Bool)

(assert (=> b!1281137 m!1175659))

(declare-fun m!1175661 () Bool)

(assert (=> b!1281139 m!1175661))

(check-sat (not b!1281139) (not start!108578) (not b!1281138) (not b!1281141) (not b_next!28089) (not b!1281137) b_and!46159 (not mapNonEmpty!52145) tp_is_empty!33729)
(check-sat b_and!46159 (not b_next!28089))
