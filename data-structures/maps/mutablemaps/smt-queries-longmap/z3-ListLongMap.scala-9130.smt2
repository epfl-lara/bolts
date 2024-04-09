; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!109602 () Bool)

(assert start!109602)

(declare-fun b_free!29055 () Bool)

(declare-fun b_next!29055 () Bool)

(assert (=> start!109602 (= b_free!29055 (not b_next!29055))))

(declare-fun tp!102285 () Bool)

(declare-fun b_and!47155 () Bool)

(assert (=> start!109602 (= tp!102285 b_and!47155)))

(declare-fun b!1297597 () Bool)

(declare-fun e!740359 () Bool)

(declare-fun tp_is_empty!34695 () Bool)

(assert (=> b!1297597 (= e!740359 tp_is_empty!34695)))

(declare-fun res!862427 () Bool)

(declare-fun e!740361 () Bool)

(assert (=> start!109602 (=> (not res!862427) (not e!740361))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109602 (= res!862427 (validMask!0 mask!2175))))

(assert (=> start!109602 e!740361))

(assert (=> start!109602 tp_is_empty!34695))

(assert (=> start!109602 true))

(declare-datatypes ((V!51363 0))(
  ( (V!51364 (val!17422 Int)) )
))
(declare-datatypes ((ValueCell!16449 0))(
  ( (ValueCellFull!16449 (v!20023 V!51363)) (EmptyCell!16449) )
))
(declare-datatypes ((array!86363 0))(
  ( (array!86364 (arr!41678 (Array (_ BitVec 32) ValueCell!16449)) (size!42229 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86363)

(declare-fun e!740358 () Bool)

(declare-fun array_inv!31537 (array!86363) Bool)

(assert (=> start!109602 (and (array_inv!31537 _values!1445) e!740358)))

(declare-datatypes ((array!86365 0))(
  ( (array!86366 (arr!41679 (Array (_ BitVec 32) (_ BitVec 64))) (size!42230 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86365)

(declare-fun array_inv!31538 (array!86365) Bool)

(assert (=> start!109602 (array_inv!31538 _keys!1741)))

(assert (=> start!109602 tp!102285))

(declare-fun b!1297598 () Bool)

(declare-fun res!862426 () Bool)

(assert (=> b!1297598 (=> (not res!862426) (not e!740361))))

(declare-fun from!2144 () (_ BitVec 32))

(assert (=> b!1297598 (= res!862426 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42230 _keys!1741))))))

(declare-fun b!1297599 () Bool)

(declare-fun res!862428 () Bool)

(assert (=> b!1297599 (=> (not res!862428) (not e!740361))))

(declare-datatypes ((List!29763 0))(
  ( (Nil!29760) (Cons!29759 (h!30968 (_ BitVec 64)) (t!43334 List!29763)) )
))
(declare-fun arrayNoDuplicates!0 (array!86365 (_ BitVec 32) List!29763) Bool)

(assert (=> b!1297599 (= res!862428 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29760))))

(declare-fun mapIsEmpty!53603 () Bool)

(declare-fun mapRes!53603 () Bool)

(assert (=> mapIsEmpty!53603 mapRes!53603))

(declare-fun b!1297600 () Bool)

(declare-fun e!740360 () Bool)

(assert (=> b!1297600 (= e!740360 tp_is_empty!34695)))

(declare-fun b!1297601 () Bool)

(declare-fun res!862425 () Bool)

(assert (=> b!1297601 (=> (not res!862425) (not e!740361))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86365 (_ BitVec 32)) Bool)

(assert (=> b!1297601 (= res!862425 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1297602 () Bool)

(declare-fun res!862424 () Bool)

(assert (=> b!1297602 (=> (not res!862424) (not e!740361))))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1297602 (= res!862424 (and (= (size!42229 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42230 _keys!1741) (size!42229 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1297603 () Bool)

(assert (=> b!1297603 (= e!740361 false)))

(declare-fun minValue!1387 () V!51363)

(declare-fun zeroValue!1387 () V!51363)

(declare-fun lt!580564 () Bool)

(declare-fun defaultEntry!1448 () Int)

(declare-fun k0!1205 () (_ BitVec 64))

(declare-datatypes ((tuple2!22600 0))(
  ( (tuple2!22601 (_1!11310 (_ BitVec 64)) (_2!11310 V!51363)) )
))
(declare-datatypes ((List!29764 0))(
  ( (Nil!29761) (Cons!29760 (h!30969 tuple2!22600) (t!43335 List!29764)) )
))
(declare-datatypes ((ListLongMap!20269 0))(
  ( (ListLongMap!20270 (toList!10150 List!29764)) )
))
(declare-fun contains!8204 (ListLongMap!20269 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5124 (array!86365 array!86363 (_ BitVec 32) (_ BitVec 32) V!51363 V!51363 (_ BitVec 32) Int) ListLongMap!20269)

(assert (=> b!1297603 (= lt!580564 (contains!8204 (getCurrentListMap!5124 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k0!1205))))

(declare-fun mapNonEmpty!53603 () Bool)

(declare-fun tp!102284 () Bool)

(assert (=> mapNonEmpty!53603 (= mapRes!53603 (and tp!102284 e!740360))))

(declare-fun mapValue!53603 () ValueCell!16449)

(declare-fun mapRest!53603 () (Array (_ BitVec 32) ValueCell!16449))

(declare-fun mapKey!53603 () (_ BitVec 32))

(assert (=> mapNonEmpty!53603 (= (arr!41678 _values!1445) (store mapRest!53603 mapKey!53603 mapValue!53603))))

(declare-fun b!1297604 () Bool)

(assert (=> b!1297604 (= e!740358 (and e!740359 mapRes!53603))))

(declare-fun condMapEmpty!53603 () Bool)

(declare-fun mapDefault!53603 () ValueCell!16449)

(assert (=> b!1297604 (= condMapEmpty!53603 (= (arr!41678 _values!1445) ((as const (Array (_ BitVec 32) ValueCell!16449)) mapDefault!53603)))))

(assert (= (and start!109602 res!862427) b!1297602))

(assert (= (and b!1297602 res!862424) b!1297601))

(assert (= (and b!1297601 res!862425) b!1297599))

(assert (= (and b!1297599 res!862428) b!1297598))

(assert (= (and b!1297598 res!862426) b!1297603))

(assert (= (and b!1297604 condMapEmpty!53603) mapIsEmpty!53603))

(assert (= (and b!1297604 (not condMapEmpty!53603)) mapNonEmpty!53603))

(get-info :version)

(assert (= (and mapNonEmpty!53603 ((_ is ValueCellFull!16449) mapValue!53603)) b!1297600))

(assert (= (and b!1297604 ((_ is ValueCellFull!16449) mapDefault!53603)) b!1297597))

(assert (= start!109602 b!1297604))

(declare-fun m!1189149 () Bool)

(assert (=> b!1297601 m!1189149))

(declare-fun m!1189151 () Bool)

(assert (=> start!109602 m!1189151))

(declare-fun m!1189153 () Bool)

(assert (=> start!109602 m!1189153))

(declare-fun m!1189155 () Bool)

(assert (=> start!109602 m!1189155))

(declare-fun m!1189157 () Bool)

(assert (=> mapNonEmpty!53603 m!1189157))

(declare-fun m!1189159 () Bool)

(assert (=> b!1297599 m!1189159))

(declare-fun m!1189161 () Bool)

(assert (=> b!1297603 m!1189161))

(assert (=> b!1297603 m!1189161))

(declare-fun m!1189163 () Bool)

(assert (=> b!1297603 m!1189163))

(check-sat tp_is_empty!34695 (not b!1297601) (not b_next!29055) (not mapNonEmpty!53603) (not b!1297599) b_and!47155 (not start!109602) (not b!1297603))
(check-sat b_and!47155 (not b_next!29055))
