; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109612 () Bool)

(assert start!109612)

(declare-fun b_free!29065 () Bool)

(declare-fun b_next!29065 () Bool)

(assert (=> start!109612 (= b_free!29065 (not b_next!29065))))

(declare-fun tp!102314 () Bool)

(declare-fun b_and!47165 () Bool)

(assert (=> start!109612 (= tp!102314 b_and!47165)))

(declare-fun b!1297739 () Bool)

(declare-fun e!740437 () Bool)

(declare-fun tp_is_empty!34705 () Bool)

(assert (=> b!1297739 (= e!740437 tp_is_empty!34705)))

(declare-fun b!1297740 () Bool)

(declare-fun e!740434 () Bool)

(assert (=> b!1297740 (= e!740434 (not true))))

(declare-datatypes ((V!51377 0))(
  ( (V!51378 (val!17427 Int)) )
))
(declare-fun minValue!1387 () V!51377)

(declare-fun zeroValue!1387 () V!51377)

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((ValueCell!16454 0))(
  ( (ValueCellFull!16454 (v!20028 V!51377)) (EmptyCell!16454) )
))
(declare-datatypes ((array!86383 0))(
  ( (array!86384 (arr!41688 (Array (_ BitVec 32) ValueCell!16454)) (size!42239 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86383)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!86385 0))(
  ( (array!86386 (arr!41689 (Array (_ BitVec 32) (_ BitVec 64))) (size!42240 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86385)

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((tuple2!22610 0))(
  ( (tuple2!22611 (_1!11315 (_ BitVec 64)) (_2!11315 V!51377)) )
))
(declare-datatypes ((List!29773 0))(
  ( (Nil!29770) (Cons!29769 (h!30978 tuple2!22610) (t!43344 List!29773)) )
))
(declare-datatypes ((ListLongMap!20279 0))(
  ( (ListLongMap!20280 (toList!10155 List!29773)) )
))
(declare-fun contains!8209 (ListLongMap!20279 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5129 (array!86385 array!86383 (_ BitVec 32) (_ BitVec 32) V!51377 V!51377 (_ BitVec 32) Int) ListLongMap!20279)

(assert (=> b!1297740 (contains!8209 (getCurrentListMap!5129 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 (bvadd #b00000000000000000000000000000001 from!2144) defaultEntry!1448) k!1205)))

(declare-datatypes ((Unit!42908 0))(
  ( (Unit!42909) )
))
(declare-fun lt!580579 () Unit!42908)

(declare-fun lemmaInListMapFromThenFromPlsOneIfNotEqToFst!29 (array!86385 array!86383 (_ BitVec 32) (_ BitVec 32) V!51377 V!51377 (_ BitVec 64) (_ BitVec 32) Int) Unit!42908)

(assert (=> b!1297740 (= lt!580579 (lemmaInListMapFromThenFromPlsOneIfNotEqToFst!29 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 k!1205 from!2144 defaultEntry!1448))))

(declare-fun b!1297741 () Bool)

(declare-fun res!862527 () Bool)

(assert (=> b!1297741 (=> (not res!862527) (not e!740434))))

(assert (=> b!1297741 (= res!862527 (and (= (size!42239 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42240 _keys!1741) (size!42239 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1297742 () Bool)

(declare-fun res!862523 () Bool)

(assert (=> b!1297742 (=> (not res!862523) (not e!740434))))

(assert (=> b!1297742 (= res!862523 (contains!8209 (getCurrentListMap!5129 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun res!862521 () Bool)

(assert (=> start!109612 (=> (not res!862521) (not e!740434))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109612 (= res!862521 (validMask!0 mask!2175))))

(assert (=> start!109612 e!740434))

(assert (=> start!109612 tp_is_empty!34705))

(assert (=> start!109612 true))

(declare-fun e!740433 () Bool)

(declare-fun array_inv!31547 (array!86383) Bool)

(assert (=> start!109612 (and (array_inv!31547 _values!1445) e!740433)))

(declare-fun array_inv!31548 (array!86385) Bool)

(assert (=> start!109612 (array_inv!31548 _keys!1741)))

(assert (=> start!109612 tp!102314))

(declare-fun b!1297743 () Bool)

(declare-fun res!862524 () Bool)

(assert (=> b!1297743 (=> (not res!862524) (not e!740434))))

(assert (=> b!1297743 (= res!862524 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvslt (bvadd #b00000000000000000000000000000001 from!2144) (size!42240 _keys!1741)) (not (= (select (arr!41689 _keys!1741) from!2144) k!1205))))))

(declare-fun b!1297744 () Bool)

(declare-fun mapRes!53618 () Bool)

(assert (=> b!1297744 (= e!740433 (and e!740437 mapRes!53618))))

(declare-fun condMapEmpty!53618 () Bool)

(declare-fun mapDefault!53618 () ValueCell!16454)

