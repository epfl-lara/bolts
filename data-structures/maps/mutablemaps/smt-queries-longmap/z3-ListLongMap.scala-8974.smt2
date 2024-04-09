; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108628 () Bool)

(assert start!108628)

(declare-fun b_free!28119 () Bool)

(declare-fun b_next!28119 () Bool)

(assert (=> start!108628 (= b_free!28119 (not b_next!28119))))

(declare-fun tp!99471 () Bool)

(declare-fun b_and!46193 () Bool)

(assert (=> start!108628 (= tp!99471 b_and!46193)))

(declare-fun b!1281749 () Bool)

(declare-fun res!851506 () Bool)

(declare-fun e!732358 () Bool)

(assert (=> b!1281749 (=> (not res!851506) (not e!732358))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((V!50115 0))(
  ( (V!50116 (val!16954 Int)) )
))
(declare-datatypes ((ValueCell!15981 0))(
  ( (ValueCellFull!15981 (v!19553 V!50115)) (EmptyCell!15981) )
))
(declare-datatypes ((array!84543 0))(
  ( (array!84544 (arr!40770 (Array (_ BitVec 32) ValueCell!15981)) (size!41321 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84543)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!84545 0))(
  ( (array!84546 (arr!40771 (Array (_ BitVec 32) (_ BitVec 64))) (size!41322 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84545)

(assert (=> b!1281749 (= res!851506 (and (= (size!41321 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41322 _keys!1741) (size!41321 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1281750 () Bool)

(declare-fun res!851505 () Bool)

(assert (=> b!1281750 (=> (not res!851505) (not e!732358))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84545 (_ BitVec 32)) Bool)

(assert (=> b!1281750 (= res!851505 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1281751 () Bool)

(declare-fun e!732355 () Bool)

(declare-fun e!732356 () Bool)

(declare-fun mapRes!52193 () Bool)

(assert (=> b!1281751 (= e!732355 (and e!732356 mapRes!52193))))

(declare-fun condMapEmpty!52193 () Bool)

(declare-fun mapDefault!52193 () ValueCell!15981)

(assert (=> b!1281751 (= condMapEmpty!52193 (= (arr!40770 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!15981)) mapDefault!52193)))))

(declare-fun b!1281752 () Bool)

(declare-fun res!851507 () Bool)

(assert (=> b!1281752 (=> (not res!851507) (not e!732358))))

(declare-datatypes ((List!29064 0))(
  ( (Nil!29061) (Cons!29060 (h!30269 (_ BitVec 64)) (t!42613 List!29064)) )
))
(declare-fun arrayNoDuplicates!0 (array!84545 (_ BitVec 32) List!29064) Bool)

(assert (=> b!1281752 (= res!851507 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29061))))

(declare-fun b!1281753 () Bool)

(declare-fun res!851504 () Bool)

(assert (=> b!1281753 (=> (not res!851504) (not e!732358))))

(declare-fun from!2144 () (_ BitVec 32))

(assert (=> b!1281753 (= res!851504 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41322 _keys!1741))))))

(declare-fun res!851508 () Bool)

(assert (=> start!108628 (=> (not res!851508) (not e!732358))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108628 (= res!851508 (validMask!0 mask!2175))))

(assert (=> start!108628 e!732358))

(declare-fun tp_is_empty!33759 () Bool)

(assert (=> start!108628 tp_is_empty!33759))

(assert (=> start!108628 true))

(declare-fun array_inv!30919 (array!84543) Bool)

(assert (=> start!108628 (and (array_inv!30919 _values!1445) e!732355)))

(declare-fun array_inv!30920 (array!84545) Bool)

(assert (=> start!108628 (array_inv!30920 _keys!1741)))

(assert (=> start!108628 tp!99471))

(declare-fun mapNonEmpty!52193 () Bool)

(declare-fun tp!99470 () Bool)

(declare-fun e!732357 () Bool)

(assert (=> mapNonEmpty!52193 (= mapRes!52193 (and tp!99470 e!732357))))

(declare-fun mapKey!52193 () (_ BitVec 32))

(declare-fun mapValue!52193 () ValueCell!15981)

(declare-fun mapRest!52193 () (Array (_ BitVec 32) ValueCell!15981))

(assert (=> mapNonEmpty!52193 (= (arr!40770 _values!1445) (store mapRest!52193 mapKey!52193 mapValue!52193))))

(declare-fun b!1281754 () Bool)

(assert (=> b!1281754 (= e!732356 tp_is_empty!33759)))

(declare-fun mapIsEmpty!52193 () Bool)

(assert (=> mapIsEmpty!52193 mapRes!52193))

(declare-fun b!1281755 () Bool)

(assert (=> b!1281755 (= e!732357 tp_is_empty!33759)))

(declare-fun b!1281756 () Bool)

(assert (=> b!1281756 (= e!732358 false)))

(declare-fun minValue!1387 () V!50115)

(declare-fun zeroValue!1387 () V!50115)

(declare-fun lt!576333 () Bool)

(declare-fun k0!1205 () (_ BitVec 64))

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!21856 0))(
  ( (tuple2!21857 (_1!10938 (_ BitVec 64)) (_2!10938 V!50115)) )
))
(declare-datatypes ((List!29065 0))(
  ( (Nil!29062) (Cons!29061 (h!30270 tuple2!21856) (t!42614 List!29065)) )
))
(declare-datatypes ((ListLongMap!19525 0))(
  ( (ListLongMap!19526 (toList!9778 List!29065)) )
))
(declare-fun contains!7832 (ListLongMap!19525 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4798 (array!84545 array!84543 (_ BitVec 32) (_ BitVec 32) V!50115 V!50115 (_ BitVec 32) Int) ListLongMap!19525)

(assert (=> b!1281756 (= lt!576333 (contains!7832 (getCurrentListMap!4798 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(assert (= (and start!108628 res!851508) b!1281749))

(assert (= (and b!1281749 res!851506) b!1281750))

(assert (= (and b!1281750 res!851505) b!1281752))

(assert (= (and b!1281752 res!851507) b!1281753))

(assert (= (and b!1281753 res!851504) b!1281756))

(assert (= (and b!1281751 condMapEmpty!52193) mapIsEmpty!52193))

(assert (= (and b!1281751 (not condMapEmpty!52193)) mapNonEmpty!52193))

(get-info :version)

(assert (= (and mapNonEmpty!52193 ((_ is ValueCellFull!15981) mapValue!52193)) b!1281755))

(assert (= (and b!1281751 ((_ is ValueCellFull!15981) mapDefault!52193)) b!1281754))

(assert (= start!108628 b!1281751))

(declare-fun m!1176183 () Bool)

(assert (=> start!108628 m!1176183))

(declare-fun m!1176185 () Bool)

(assert (=> start!108628 m!1176185))

(declare-fun m!1176187 () Bool)

(assert (=> start!108628 m!1176187))

(declare-fun m!1176189 () Bool)

(assert (=> b!1281756 m!1176189))

(assert (=> b!1281756 m!1176189))

(declare-fun m!1176191 () Bool)

(assert (=> b!1281756 m!1176191))

(declare-fun m!1176193 () Bool)

(assert (=> b!1281750 m!1176193))

(declare-fun m!1176195 () Bool)

(assert (=> mapNonEmpty!52193 m!1176195))

(declare-fun m!1176197 () Bool)

(assert (=> b!1281752 m!1176197))

(check-sat (not b_next!28119) (not b!1281750) (not mapNonEmpty!52193) (not b!1281752) b_and!46193 (not start!108628) tp_is_empty!33759 (not b!1281756))
(check-sat b_and!46193 (not b_next!28119))
