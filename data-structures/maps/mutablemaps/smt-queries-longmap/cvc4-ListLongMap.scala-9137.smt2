; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109646 () Bool)

(assert start!109646)

(declare-fun b_free!29099 () Bool)

(declare-fun b_next!29099 () Bool)

(assert (=> start!109646 (= b_free!29099 (not b_next!29099))))

(declare-fun tp!102417 () Bool)

(declare-fun b_and!47199 () Bool)

(assert (=> start!109646 (= tp!102417 b_and!47199)))

(declare-fun b!1298249 () Bool)

(declare-fun res!862878 () Bool)

(declare-fun e!740689 () Bool)

(assert (=> b!1298249 (=> (not res!862878) (not e!740689))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((V!51421 0))(
  ( (V!51422 (val!17444 Int)) )
))
(declare-datatypes ((ValueCell!16471 0))(
  ( (ValueCellFull!16471 (v!20045 V!51421)) (EmptyCell!16471) )
))
(declare-datatypes ((array!86447 0))(
  ( (array!86448 (arr!41720 (Array (_ BitVec 32) ValueCell!16471)) (size!42271 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86447)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!86449 0))(
  ( (array!86450 (arr!41721 (Array (_ BitVec 32) (_ BitVec 64))) (size!42272 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86449)

(assert (=> b!1298249 (= res!862878 (and (= (size!42271 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42272 _keys!1741) (size!42271 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1298250 () Bool)

(declare-fun res!862884 () Bool)

(assert (=> b!1298250 (=> (not res!862884) (not e!740689))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun k!1205 () (_ BitVec 64))

(assert (=> b!1298250 (= res!862884 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvslt (bvadd #b00000000000000000000000000000001 from!2144) (size!42272 _keys!1741)) (not (= (select (arr!41721 _keys!1741) from!2144) k!1205))))))

(declare-fun mapIsEmpty!53669 () Bool)

(declare-fun mapRes!53669 () Bool)

(assert (=> mapIsEmpty!53669 mapRes!53669))

(declare-fun b!1298251 () Bool)

(declare-fun res!862881 () Bool)

(assert (=> b!1298251 (=> (not res!862881) (not e!740689))))

(declare-fun minValue!1387 () V!51421)

(declare-fun zeroValue!1387 () V!51421)

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!22638 0))(
  ( (tuple2!22639 (_1!11329 (_ BitVec 64)) (_2!11329 V!51421)) )
))
(declare-datatypes ((List!29800 0))(
  ( (Nil!29797) (Cons!29796 (h!31005 tuple2!22638) (t!43371 List!29800)) )
))
(declare-datatypes ((ListLongMap!20307 0))(
  ( (ListLongMap!20308 (toList!10169 List!29800)) )
))
(declare-fun contains!8223 (ListLongMap!20307 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5143 (array!86449 array!86447 (_ BitVec 32) (_ BitVec 32) V!51421 V!51421 (_ BitVec 32) Int) ListLongMap!20307)

(assert (=> b!1298251 (= res!862881 (contains!8223 (getCurrentListMap!5143 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1298252 () Bool)

(declare-fun res!862880 () Bool)

(assert (=> b!1298252 (=> (not res!862880) (not e!740689))))

(declare-datatypes ((List!29801 0))(
  ( (Nil!29798) (Cons!29797 (h!31006 (_ BitVec 64)) (t!43372 List!29801)) )
))
(declare-fun arrayNoDuplicates!0 (array!86449 (_ BitVec 32) List!29801) Bool)

(assert (=> b!1298252 (= res!862880 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29798))))

(declare-fun b!1298253 () Bool)

(assert (=> b!1298253 (= e!740689 (not true))))

(assert (=> b!1298253 (contains!8223 (getCurrentListMap!5143 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 (bvadd #b00000000000000000000000000000001 from!2144) defaultEntry!1448) k!1205)))

(declare-datatypes ((Unit!42932 0))(
  ( (Unit!42933) )
))
(declare-fun lt!580630 () Unit!42932)

(declare-fun lemmaInListMapFromThenFromPlsOneIfNotEqToFst!41 (array!86449 array!86447 (_ BitVec 32) (_ BitVec 32) V!51421 V!51421 (_ BitVec 64) (_ BitVec 32) Int) Unit!42932)

(assert (=> b!1298253 (= lt!580630 (lemmaInListMapFromThenFromPlsOneIfNotEqToFst!41 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 k!1205 from!2144 defaultEntry!1448))))

(declare-fun b!1298254 () Bool)

(declare-fun e!740690 () Bool)

(declare-fun e!740691 () Bool)

(assert (=> b!1298254 (= e!740690 (and e!740691 mapRes!53669))))

(declare-fun condMapEmpty!53669 () Bool)

(declare-fun mapDefault!53669 () ValueCell!16471)

