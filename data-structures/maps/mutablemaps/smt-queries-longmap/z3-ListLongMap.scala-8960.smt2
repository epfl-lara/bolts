; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108524 () Bool)

(assert start!108524)

(declare-fun b_free!28035 () Bool)

(declare-fun b_next!28035 () Bool)

(assert (=> start!108524 (= b_free!28035 (not b_next!28035))))

(declare-fun tp!99215 () Bool)

(declare-fun b_and!46105 () Bool)

(assert (=> start!108524 (= tp!99215 b_and!46105)))

(declare-fun b!1280335 () Bool)

(declare-fun e!731601 () Bool)

(assert (=> b!1280335 (= e!731601 false)))

(declare-datatypes ((V!50003 0))(
  ( (V!50004 (val!16912 Int)) )
))
(declare-fun minValue!1387 () V!50003)

(declare-fun zeroValue!1387 () V!50003)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun lt!576061 () Bool)

(declare-datatypes ((ValueCell!15939 0))(
  ( (ValueCellFull!15939 (v!19510 V!50003)) (EmptyCell!15939) )
))
(declare-datatypes ((array!84379 0))(
  ( (array!84380 (arr!40689 (Array (_ BitVec 32) ValueCell!15939)) (size!41240 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84379)

(declare-fun k0!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!84381 0))(
  ( (array!84382 (arr!40690 (Array (_ BitVec 32) (_ BitVec 64))) (size!41241 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84381)

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((tuple2!21790 0))(
  ( (tuple2!21791 (_1!10905 (_ BitVec 64)) (_2!10905 V!50003)) )
))
(declare-datatypes ((List!29000 0))(
  ( (Nil!28997) (Cons!28996 (h!30205 tuple2!21790) (t!42547 List!29000)) )
))
(declare-datatypes ((ListLongMap!19459 0))(
  ( (ListLongMap!19460 (toList!9745 List!29000)) )
))
(declare-fun contains!7798 (ListLongMap!19459 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4765 (array!84381 array!84379 (_ BitVec 32) (_ BitVec 32) V!50003 V!50003 (_ BitVec 32) Int) ListLongMap!19459)

(assert (=> b!1280335 (= lt!576061 (contains!7798 (getCurrentListMap!4765 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1280337 () Bool)

(declare-fun e!731605 () Bool)

(declare-fun tp_is_empty!33675 () Bool)

(assert (=> b!1280337 (= e!731605 tp_is_empty!33675)))

(declare-fun mapNonEmpty!52064 () Bool)

(declare-fun mapRes!52064 () Bool)

(declare-fun tp!99216 () Bool)

(declare-fun e!731603 () Bool)

(assert (=> mapNonEmpty!52064 (= mapRes!52064 (and tp!99216 e!731603))))

(declare-fun mapKey!52064 () (_ BitVec 32))

(declare-fun mapRest!52064 () (Array (_ BitVec 32) ValueCell!15939))

(declare-fun mapValue!52064 () ValueCell!15939)

(assert (=> mapNonEmpty!52064 (= (arr!40689 _values!1445) (store mapRest!52064 mapKey!52064 mapValue!52064))))

(declare-fun b!1280338 () Bool)

(assert (=> b!1280338 (= e!731603 tp_is_empty!33675)))

(declare-fun b!1280339 () Bool)

(declare-fun res!850553 () Bool)

(assert (=> b!1280339 (=> (not res!850553) (not e!731601))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84381 (_ BitVec 32)) Bool)

(assert (=> b!1280339 (= res!850553 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun mapIsEmpty!52064 () Bool)

(assert (=> mapIsEmpty!52064 mapRes!52064))

(declare-fun b!1280340 () Bool)

(declare-fun res!850556 () Bool)

(assert (=> b!1280340 (=> (not res!850556) (not e!731601))))

(assert (=> b!1280340 (= res!850556 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41241 _keys!1741))))))

(declare-fun b!1280341 () Bool)

(declare-fun res!850552 () Bool)

(assert (=> b!1280341 (=> (not res!850552) (not e!731601))))

(assert (=> b!1280341 (= res!850552 (and (= (size!41240 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41241 _keys!1741) (size!41240 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1280342 () Bool)

(declare-fun e!731602 () Bool)

(assert (=> b!1280342 (= e!731602 (and e!731605 mapRes!52064))))

(declare-fun condMapEmpty!52064 () Bool)

(declare-fun mapDefault!52064 () ValueCell!15939)

(assert (=> b!1280342 (= condMapEmpty!52064 (= (arr!40689 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!15939)) mapDefault!52064)))))

(declare-fun b!1280336 () Bool)

(declare-fun res!850555 () Bool)

(assert (=> b!1280336 (=> (not res!850555) (not e!731601))))

(declare-datatypes ((List!29001 0))(
  ( (Nil!28998) (Cons!28997 (h!30206 (_ BitVec 64)) (t!42548 List!29001)) )
))
(declare-fun arrayNoDuplicates!0 (array!84381 (_ BitVec 32) List!29001) Bool)

(assert (=> b!1280336 (= res!850555 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!28998))))

(declare-fun res!850554 () Bool)

(assert (=> start!108524 (=> (not res!850554) (not e!731601))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108524 (= res!850554 (validMask!0 mask!2175))))

(assert (=> start!108524 e!731601))

(assert (=> start!108524 tp_is_empty!33675))

(assert (=> start!108524 true))

(declare-fun array_inv!30871 (array!84379) Bool)

(assert (=> start!108524 (and (array_inv!30871 _values!1445) e!731602)))

(declare-fun array_inv!30872 (array!84381) Bool)

(assert (=> start!108524 (array_inv!30872 _keys!1741)))

(assert (=> start!108524 tp!99215))

(assert (= (and start!108524 res!850554) b!1280341))

(assert (= (and b!1280341 res!850552) b!1280339))

(assert (= (and b!1280339 res!850553) b!1280336))

(assert (= (and b!1280336 res!850555) b!1280340))

(assert (= (and b!1280340 res!850556) b!1280335))

(assert (= (and b!1280342 condMapEmpty!52064) mapIsEmpty!52064))

(assert (= (and b!1280342 (not condMapEmpty!52064)) mapNonEmpty!52064))

(get-info :version)

(assert (= (and mapNonEmpty!52064 ((_ is ValueCellFull!15939) mapValue!52064)) b!1280338))

(assert (= (and b!1280342 ((_ is ValueCellFull!15939) mapDefault!52064)) b!1280337))

(assert (= start!108524 b!1280342))

(declare-fun m!1175007 () Bool)

(assert (=> start!108524 m!1175007))

(declare-fun m!1175009 () Bool)

(assert (=> start!108524 m!1175009))

(declare-fun m!1175011 () Bool)

(assert (=> start!108524 m!1175011))

(declare-fun m!1175013 () Bool)

(assert (=> mapNonEmpty!52064 m!1175013))

(declare-fun m!1175015 () Bool)

(assert (=> b!1280339 m!1175015))

(declare-fun m!1175017 () Bool)

(assert (=> b!1280336 m!1175017))

(declare-fun m!1175019 () Bool)

(assert (=> b!1280335 m!1175019))

(assert (=> b!1280335 m!1175019))

(declare-fun m!1175021 () Bool)

(assert (=> b!1280335 m!1175021))

(check-sat b_and!46105 tp_is_empty!33675 (not b_next!28035) (not b!1280339) (not mapNonEmpty!52064) (not b!1280336) (not b!1280335) (not start!108524))
(check-sat b_and!46105 (not b_next!28035))
