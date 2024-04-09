; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108590 () Bool)

(assert start!108590)

(declare-fun b_free!28101 () Bool)

(declare-fun b_next!28101 () Bool)

(assert (=> start!108590 (= b_free!28101 (not b_next!28101))))

(declare-fun tp!99414 () Bool)

(declare-fun b_and!46171 () Bool)

(assert (=> start!108590 (= tp!99414 b_and!46171)))

(declare-fun b!1281322 () Bool)

(declare-fun e!732101 () Bool)

(assert (=> b!1281322 (= e!732101 true)))

(declare-datatypes ((array!84505 0))(
  ( (array!84506 (arr!40752 (Array (_ BitVec 32) (_ BitVec 64))) (size!41303 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84505)

(declare-fun k0!1205 () (_ BitVec 64))

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!84505 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1281322 (arrayContainsKey!0 _keys!1741 k0!1205 (bvadd #b00000000000000000000000000000001 from!2144))))

(declare-datatypes ((V!50091 0))(
  ( (V!50092 (val!16945 Int)) )
))
(declare-fun minValue!1387 () V!50091)

(declare-datatypes ((ValueCell!15972 0))(
  ( (ValueCellFull!15972 (v!19543 V!50091)) (EmptyCell!15972) )
))
(declare-datatypes ((array!84507 0))(
  ( (array!84508 (arr!40753 (Array (_ BitVec 32) ValueCell!15972)) (size!41304 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84507)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((Unit!42377 0))(
  ( (Unit!42378) )
))
(declare-fun lt!576165 () Unit!42377)

(declare-fun zeroValue!1387 () V!50091)

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun lemmaListMapContainsThenArrayContainsFrom!634 (array!84505 array!84507 (_ BitVec 32) (_ BitVec 32) V!50091 V!50091 (_ BitVec 64) (_ BitVec 32) Int) Unit!42377)

(assert (=> b!1281322 (= lt!576165 (lemmaListMapContainsThenArrayContainsFrom!634 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 k0!1205 (bvadd #b00000000000000000000000000000001 from!2144) defaultEntry!1448))))

(declare-fun b!1281323 () Bool)

(declare-fun res!851243 () Bool)

(declare-fun e!732104 () Bool)

(assert (=> b!1281323 (=> (not res!851243) (not e!732104))))

(assert (=> b!1281323 (= res!851243 (and (= (size!41304 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41303 _keys!1741) (size!41304 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1281324 () Bool)

(assert (=> b!1281324 (= e!732104 (not e!732101))))

(declare-fun res!851248 () Bool)

(assert (=> b!1281324 (=> res!851248 e!732101)))

(assert (=> b!1281324 (= res!851248 (bvslt (bvadd #b00000000000000000000000000000001 from!2144) #b00000000000000000000000000000000))))

(declare-datatypes ((tuple2!21842 0))(
  ( (tuple2!21843 (_1!10931 (_ BitVec 64)) (_2!10931 V!50091)) )
))
(declare-datatypes ((List!29050 0))(
  ( (Nil!29047) (Cons!29046 (h!30255 tuple2!21842) (t!42597 List!29050)) )
))
(declare-datatypes ((ListLongMap!19511 0))(
  ( (ListLongMap!19512 (toList!9771 List!29050)) )
))
(declare-fun contains!7824 (ListLongMap!19511 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4791 (array!84505 array!84507 (_ BitVec 32) (_ BitVec 32) V!50091 V!50091 (_ BitVec 32) Int) ListLongMap!19511)

(assert (=> b!1281324 (contains!7824 (getCurrentListMap!4791 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 (bvadd #b00000000000000000000000000000001 from!2144) defaultEntry!1448) k0!1205)))

(declare-fun lt!576166 () Unit!42377)

(declare-fun lemmaInListMapFromThenFromPlsOneIfNotEqToFst!21 (array!84505 array!84507 (_ BitVec 32) (_ BitVec 32) V!50091 V!50091 (_ BitVec 64) (_ BitVec 32) Int) Unit!42377)

(assert (=> b!1281324 (= lt!576166 (lemmaInListMapFromThenFromPlsOneIfNotEqToFst!21 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 k0!1205 from!2144 defaultEntry!1448))))

(declare-fun res!851246 () Bool)

(assert (=> start!108590 (=> (not res!851246) (not e!732104))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108590 (= res!851246 (validMask!0 mask!2175))))

(assert (=> start!108590 e!732104))

(declare-fun tp_is_empty!33741 () Bool)

(assert (=> start!108590 tp_is_empty!33741))

(assert (=> start!108590 true))

(declare-fun e!732106 () Bool)

(declare-fun array_inv!30909 (array!84507) Bool)

(assert (=> start!108590 (and (array_inv!30909 _values!1445) e!732106)))

(declare-fun array_inv!30910 (array!84505) Bool)

(assert (=> start!108590 (array_inv!30910 _keys!1741)))

(assert (=> start!108590 tp!99414))

(declare-fun mapIsEmpty!52163 () Bool)

(declare-fun mapRes!52163 () Bool)

(assert (=> mapIsEmpty!52163 mapRes!52163))

(declare-fun mapNonEmpty!52163 () Bool)

(declare-fun tp!99413 () Bool)

(declare-fun e!732102 () Bool)

(assert (=> mapNonEmpty!52163 (= mapRes!52163 (and tp!99413 e!732102))))

(declare-fun mapValue!52163 () ValueCell!15972)

(declare-fun mapRest!52163 () (Array (_ BitVec 32) ValueCell!15972))

(declare-fun mapKey!52163 () (_ BitVec 32))

(assert (=> mapNonEmpty!52163 (= (arr!40753 _values!1445) (store mapRest!52163 mapKey!52163 mapValue!52163))))

(declare-fun b!1281325 () Bool)

(assert (=> b!1281325 (= e!732102 tp_is_empty!33741)))

(declare-fun b!1281326 () Bool)

(declare-fun res!851242 () Bool)

(assert (=> b!1281326 (=> (not res!851242) (not e!732104))))

(assert (=> b!1281326 (= res!851242 (contains!7824 (getCurrentListMap!4791 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun b!1281327 () Bool)

(declare-fun res!851245 () Bool)

(assert (=> b!1281327 (=> (not res!851245) (not e!732104))))

(declare-datatypes ((List!29051 0))(
  ( (Nil!29048) (Cons!29047 (h!30256 (_ BitVec 64)) (t!42598 List!29051)) )
))
(declare-fun arrayNoDuplicates!0 (array!84505 (_ BitVec 32) List!29051) Bool)

(assert (=> b!1281327 (= res!851245 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29048))))

(declare-fun b!1281328 () Bool)

(declare-fun e!732103 () Bool)

(assert (=> b!1281328 (= e!732106 (and e!732103 mapRes!52163))))

(declare-fun condMapEmpty!52163 () Bool)

(declare-fun mapDefault!52163 () ValueCell!15972)

(assert (=> b!1281328 (= condMapEmpty!52163 (= (arr!40753 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!15972)) mapDefault!52163)))))

(declare-fun b!1281329 () Bool)

(declare-fun res!851247 () Bool)

(assert (=> b!1281329 (=> (not res!851247) (not e!732104))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84505 (_ BitVec 32)) Bool)

(assert (=> b!1281329 (= res!851247 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1281330 () Bool)

(assert (=> b!1281330 (= e!732103 tp_is_empty!33741)))

(declare-fun b!1281331 () Bool)

(declare-fun res!851249 () Bool)

(assert (=> b!1281331 (=> (not res!851249) (not e!732104))))

(assert (=> b!1281331 (= res!851249 (and (not (= k0!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvslt (bvadd #b00000000000000000000000000000001 from!2144) (size!41303 _keys!1741)) (not (= (select (arr!40752 _keys!1741) from!2144) k0!1205))))))

(declare-fun b!1281332 () Bool)

(declare-fun res!851244 () Bool)

(assert (=> b!1281332 (=> (not res!851244) (not e!732104))))

(assert (=> b!1281332 (= res!851244 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41303 _keys!1741))))))

(assert (= (and start!108590 res!851246) b!1281323))

(assert (= (and b!1281323 res!851243) b!1281329))

(assert (= (and b!1281329 res!851247) b!1281327))

(assert (= (and b!1281327 res!851245) b!1281332))

(assert (= (and b!1281332 res!851244) b!1281326))

(assert (= (and b!1281326 res!851242) b!1281331))

(assert (= (and b!1281331 res!851249) b!1281324))

(assert (= (and b!1281324 (not res!851248)) b!1281322))

(assert (= (and b!1281328 condMapEmpty!52163) mapIsEmpty!52163))

(assert (= (and b!1281328 (not condMapEmpty!52163)) mapNonEmpty!52163))

(get-info :version)

(assert (= (and mapNonEmpty!52163 ((_ is ValueCellFull!15972) mapValue!52163)) b!1281325))

(assert (= (and b!1281328 ((_ is ValueCellFull!15972) mapDefault!52163)) b!1281330))

(assert (= start!108590 b!1281328))

(declare-fun m!1175787 () Bool)

(assert (=> mapNonEmpty!52163 m!1175787))

(declare-fun m!1175789 () Bool)

(assert (=> b!1281324 m!1175789))

(assert (=> b!1281324 m!1175789))

(declare-fun m!1175791 () Bool)

(assert (=> b!1281324 m!1175791))

(declare-fun m!1175793 () Bool)

(assert (=> b!1281324 m!1175793))

(declare-fun m!1175795 () Bool)

(assert (=> b!1281331 m!1175795))

(declare-fun m!1175797 () Bool)

(assert (=> start!108590 m!1175797))

(declare-fun m!1175799 () Bool)

(assert (=> start!108590 m!1175799))

(declare-fun m!1175801 () Bool)

(assert (=> start!108590 m!1175801))

(declare-fun m!1175803 () Bool)

(assert (=> b!1281327 m!1175803))

(declare-fun m!1175805 () Bool)

(assert (=> b!1281329 m!1175805))

(declare-fun m!1175807 () Bool)

(assert (=> b!1281322 m!1175807))

(declare-fun m!1175809 () Bool)

(assert (=> b!1281322 m!1175809))

(declare-fun m!1175811 () Bool)

(assert (=> b!1281326 m!1175811))

(assert (=> b!1281326 m!1175811))

(declare-fun m!1175813 () Bool)

(assert (=> b!1281326 m!1175813))

(check-sat (not b_next!28101) b_and!46171 (not start!108590) (not b!1281327) (not mapNonEmpty!52163) (not b!1281324) (not b!1281329) (not b!1281326) (not b!1281322) tp_is_empty!33741)
(check-sat b_and!46171 (not b_next!28101))
