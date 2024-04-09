; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109648 () Bool)

(assert start!109648)

(declare-fun b_free!29101 () Bool)

(declare-fun b_next!29101 () Bool)

(assert (=> start!109648 (= b_free!29101 (not b_next!29101))))

(declare-fun tp!102422 () Bool)

(declare-fun b_and!47201 () Bool)

(assert (=> start!109648 (= tp!102422 b_and!47201)))

(declare-fun b!1298279 () Bool)

(declare-fun res!862901 () Bool)

(declare-fun e!740704 () Bool)

(assert (=> b!1298279 (=> (not res!862901) (not e!740704))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun k!1205 () (_ BitVec 64))

(declare-datatypes ((array!86451 0))(
  ( (array!86452 (arr!41722 (Array (_ BitVec 32) (_ BitVec 64))) (size!42273 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86451)

(assert (=> b!1298279 (= res!862901 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvslt (bvadd #b00000000000000000000000000000001 from!2144) (size!42273 _keys!1741)) (not (= (select (arr!41722 _keys!1741) from!2144) k!1205))))))

(declare-fun mapNonEmpty!53672 () Bool)

(declare-fun mapRes!53672 () Bool)

(declare-fun tp!102423 () Bool)

(declare-fun e!740705 () Bool)

(assert (=> mapNonEmpty!53672 (= mapRes!53672 (and tp!102423 e!740705))))

(declare-datatypes ((V!51425 0))(
  ( (V!51426 (val!17445 Int)) )
))
(declare-datatypes ((ValueCell!16472 0))(
  ( (ValueCellFull!16472 (v!20046 V!51425)) (EmptyCell!16472) )
))
(declare-fun mapValue!53672 () ValueCell!16472)

(declare-fun mapRest!53672 () (Array (_ BitVec 32) ValueCell!16472))

(declare-fun mapKey!53672 () (_ BitVec 32))

(declare-datatypes ((array!86453 0))(
  ( (array!86454 (arr!41723 (Array (_ BitVec 32) ValueCell!16472)) (size!42274 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86453)

(assert (=> mapNonEmpty!53672 (= (arr!41723 _values!1445) (store mapRest!53672 mapKey!53672 mapValue!53672))))

(declare-fun b!1298280 () Bool)

(assert (=> b!1298280 (= e!740704 (not true))))

(declare-fun minValue!1387 () V!51425)

(declare-fun zeroValue!1387 () V!51425)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((tuple2!22640 0))(
  ( (tuple2!22641 (_1!11330 (_ BitVec 64)) (_2!11330 V!51425)) )
))
(declare-datatypes ((List!29802 0))(
  ( (Nil!29799) (Cons!29798 (h!31007 tuple2!22640) (t!43373 List!29802)) )
))
(declare-datatypes ((ListLongMap!20309 0))(
  ( (ListLongMap!20310 (toList!10170 List!29802)) )
))
(declare-fun contains!8224 (ListLongMap!20309 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5144 (array!86451 array!86453 (_ BitVec 32) (_ BitVec 32) V!51425 V!51425 (_ BitVec 32) Int) ListLongMap!20309)

(assert (=> b!1298280 (contains!8224 (getCurrentListMap!5144 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 (bvadd #b00000000000000000000000000000001 from!2144) defaultEntry!1448) k!1205)))

(declare-datatypes ((Unit!42934 0))(
  ( (Unit!42935) )
))
(declare-fun lt!580633 () Unit!42934)

(declare-fun lemmaInListMapFromThenFromPlsOneIfNotEqToFst!42 (array!86451 array!86453 (_ BitVec 32) (_ BitVec 32) V!51425 V!51425 (_ BitVec 64) (_ BitVec 32) Int) Unit!42934)

(assert (=> b!1298280 (= lt!580633 (lemmaInListMapFromThenFromPlsOneIfNotEqToFst!42 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 k!1205 from!2144 defaultEntry!1448))))

(declare-fun b!1298281 () Bool)

(declare-fun res!862902 () Bool)

(assert (=> b!1298281 (=> (not res!862902) (not e!740704))))

(assert (=> b!1298281 (= res!862902 (contains!8224 (getCurrentListMap!5144 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun res!862905 () Bool)

(assert (=> start!109648 (=> (not res!862905) (not e!740704))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109648 (= res!862905 (validMask!0 mask!2175))))

(assert (=> start!109648 e!740704))

(declare-fun tp_is_empty!34741 () Bool)

(assert (=> start!109648 tp_is_empty!34741))

(assert (=> start!109648 true))

(declare-fun e!740707 () Bool)

(declare-fun array_inv!31569 (array!86453) Bool)

(assert (=> start!109648 (and (array_inv!31569 _values!1445) e!740707)))

(declare-fun array_inv!31570 (array!86451) Bool)

(assert (=> start!109648 (array_inv!31570 _keys!1741)))

(assert (=> start!109648 tp!102422))

(declare-fun b!1298282 () Bool)

(assert (=> b!1298282 (= e!740705 tp_is_empty!34741)))

(declare-fun b!1298283 () Bool)

(declare-fun e!740706 () Bool)

(assert (=> b!1298283 (= e!740707 (and e!740706 mapRes!53672))))

(declare-fun condMapEmpty!53672 () Bool)

(declare-fun mapDefault!53672 () ValueCell!16472)

