; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109636 () Bool)

(assert start!109636)

(declare-fun b_free!29089 () Bool)

(declare-fun b_next!29089 () Bool)

(assert (=> start!109636 (= b_free!29089 (not b_next!29089))))

(declare-fun tp!102386 () Bool)

(declare-fun b_and!47189 () Bool)

(assert (=> start!109636 (= tp!102386 b_and!47189)))

(declare-fun b!1298099 () Bool)

(declare-fun res!862779 () Bool)

(declare-fun e!740616 () Bool)

(assert (=> b!1298099 (=> (not res!862779) (not e!740616))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((V!51409 0))(
  ( (V!51410 (val!17439 Int)) )
))
(declare-datatypes ((ValueCell!16466 0))(
  ( (ValueCellFull!16466 (v!20040 V!51409)) (EmptyCell!16466) )
))
(declare-datatypes ((array!86427 0))(
  ( (array!86428 (arr!41710 (Array (_ BitVec 32) ValueCell!16466)) (size!42261 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86427)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!86429 0))(
  ( (array!86430 (arr!41711 (Array (_ BitVec 32) (_ BitVec 64))) (size!42262 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86429)

(assert (=> b!1298099 (= res!862779 (and (= (size!42261 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42262 _keys!1741) (size!42261 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1298100 () Bool)

(declare-fun e!740614 () Bool)

(declare-fun tp_is_empty!34729 () Bool)

(assert (=> b!1298100 (= e!740614 tp_is_empty!34729)))

(declare-fun b!1298101 () Bool)

(assert (=> b!1298101 (= e!740616 (not true))))

(declare-fun zeroValue!1387 () V!51409)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun minValue!1387 () V!51409)

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!22630 0))(
  ( (tuple2!22631 (_1!11325 (_ BitVec 64)) (_2!11325 V!51409)) )
))
(declare-datatypes ((List!29791 0))(
  ( (Nil!29788) (Cons!29787 (h!30996 tuple2!22630) (t!43362 List!29791)) )
))
(declare-datatypes ((ListLongMap!20299 0))(
  ( (ListLongMap!20300 (toList!10165 List!29791)) )
))
(declare-fun contains!8219 (ListLongMap!20299 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5139 (array!86429 array!86427 (_ BitVec 32) (_ BitVec 32) V!51409 V!51409 (_ BitVec 32) Int) ListLongMap!20299)

(assert (=> b!1298101 (contains!8219 (getCurrentListMap!5139 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 (bvadd #b00000000000000000000000000000001 from!2144) defaultEntry!1448) k!1205)))

(declare-datatypes ((Unit!42924 0))(
  ( (Unit!42925) )
))
(declare-fun lt!580615 () Unit!42924)

(declare-fun lemmaInListMapFromThenFromPlsOneIfNotEqToFst!37 (array!86429 array!86427 (_ BitVec 32) (_ BitVec 32) V!51409 V!51409 (_ BitVec 64) (_ BitVec 32) Int) Unit!42924)

(assert (=> b!1298101 (= lt!580615 (lemmaInListMapFromThenFromPlsOneIfNotEqToFst!37 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 k!1205 from!2144 defaultEntry!1448))))

(declare-fun res!862773 () Bool)

(assert (=> start!109636 (=> (not res!862773) (not e!740616))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109636 (= res!862773 (validMask!0 mask!2175))))

(assert (=> start!109636 e!740616))

(assert (=> start!109636 tp_is_empty!34729))

(assert (=> start!109636 true))

(declare-fun e!740613 () Bool)

(declare-fun array_inv!31561 (array!86427) Bool)

(assert (=> start!109636 (and (array_inv!31561 _values!1445) e!740613)))

(declare-fun array_inv!31562 (array!86429) Bool)

(assert (=> start!109636 (array_inv!31562 _keys!1741)))

(assert (=> start!109636 tp!102386))

(declare-fun b!1298102 () Bool)

(declare-fun res!862777 () Bool)

(assert (=> b!1298102 (=> (not res!862777) (not e!740616))))

(assert (=> b!1298102 (= res!862777 (contains!8219 (getCurrentListMap!5139 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun mapIsEmpty!53654 () Bool)

(declare-fun mapRes!53654 () Bool)

(assert (=> mapIsEmpty!53654 mapRes!53654))

(declare-fun b!1298103 () Bool)

(declare-fun res!862776 () Bool)

(assert (=> b!1298103 (=> (not res!862776) (not e!740616))))

(assert (=> b!1298103 (= res!862776 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvslt (bvadd #b00000000000000000000000000000001 from!2144) (size!42262 _keys!1741)) (not (= (select (arr!41711 _keys!1741) from!2144) k!1205))))))

(declare-fun b!1298104 () Bool)

(declare-fun res!862778 () Bool)

(assert (=> b!1298104 (=> (not res!862778) (not e!740616))))

(assert (=> b!1298104 (= res!862778 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42262 _keys!1741))))))

(declare-fun b!1298105 () Bool)

(declare-fun res!862775 () Bool)

(assert (=> b!1298105 (=> (not res!862775) (not e!740616))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86429 (_ BitVec 32)) Bool)

(assert (=> b!1298105 (= res!862775 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1298106 () Bool)

(declare-fun res!862774 () Bool)

(assert (=> b!1298106 (=> (not res!862774) (not e!740616))))

(declare-datatypes ((List!29792 0))(
  ( (Nil!29789) (Cons!29788 (h!30997 (_ BitVec 64)) (t!43363 List!29792)) )
))
(declare-fun arrayNoDuplicates!0 (array!86429 (_ BitVec 32) List!29792) Bool)

(assert (=> b!1298106 (= res!862774 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29789))))

(declare-fun b!1298107 () Bool)

(assert (=> b!1298107 (= e!740613 (and e!740614 mapRes!53654))))

(declare-fun condMapEmpty!53654 () Bool)

(declare-fun mapDefault!53654 () ValueCell!16466)

