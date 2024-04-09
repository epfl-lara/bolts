; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109610 () Bool)

(assert start!109610)

(declare-fun b_free!29063 () Bool)

(declare-fun b_next!29063 () Bool)

(assert (=> start!109610 (= b_free!29063 (not b_next!29063))))

(declare-fun tp!102309 () Bool)

(declare-fun b_and!47163 () Bool)

(assert (=> start!109610 (= tp!102309 b_and!47163)))

(declare-fun res!862504 () Bool)

(declare-fun e!740420 () Bool)

(assert (=> start!109610 (=> (not res!862504) (not e!740420))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109610 (= res!862504 (validMask!0 mask!2175))))

(assert (=> start!109610 e!740420))

(declare-fun tp_is_empty!34703 () Bool)

(assert (=> start!109610 tp_is_empty!34703))

(assert (=> start!109610 true))

(declare-datatypes ((V!51373 0))(
  ( (V!51374 (val!17426 Int)) )
))
(declare-datatypes ((ValueCell!16453 0))(
  ( (ValueCellFull!16453 (v!20027 V!51373)) (EmptyCell!16453) )
))
(declare-datatypes ((array!86379 0))(
  ( (array!86380 (arr!41686 (Array (_ BitVec 32) ValueCell!16453)) (size!42237 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86379)

(declare-fun e!740421 () Bool)

(declare-fun array_inv!31545 (array!86379) Bool)

(assert (=> start!109610 (and (array_inv!31545 _values!1445) e!740421)))

(declare-datatypes ((array!86381 0))(
  ( (array!86382 (arr!41687 (Array (_ BitVec 32) (_ BitVec 64))) (size!42238 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86381)

(declare-fun array_inv!31546 (array!86381) Bool)

(assert (=> start!109610 (array_inv!31546 _keys!1741)))

(assert (=> start!109610 tp!102309))

(declare-fun mapNonEmpty!53615 () Bool)

(declare-fun mapRes!53615 () Bool)

(declare-fun tp!102308 () Bool)

(declare-fun e!740419 () Bool)

(assert (=> mapNonEmpty!53615 (= mapRes!53615 (and tp!102308 e!740419))))

(declare-fun mapKey!53615 () (_ BitVec 32))

(declare-fun mapRest!53615 () (Array (_ BitVec 32) ValueCell!16453))

(declare-fun mapValue!53615 () ValueCell!16453)

(assert (=> mapNonEmpty!53615 (= (arr!41686 _values!1445) (store mapRest!53615 mapKey!53615 mapValue!53615))))

(declare-fun b!1297709 () Bool)

(declare-fun res!862500 () Bool)

(assert (=> b!1297709 (=> (not res!862500) (not e!740420))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86381 (_ BitVec 32)) Bool)

(assert (=> b!1297709 (= res!862500 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1297710 () Bool)

(declare-fun res!862503 () Bool)

(assert (=> b!1297710 (=> (not res!862503) (not e!740420))))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1297710 (= res!862503 (and (= (size!42237 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42238 _keys!1741) (size!42237 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1297711 () Bool)

(declare-fun res!862501 () Bool)

(assert (=> b!1297711 (=> (not res!862501) (not e!740420))))

(declare-datatypes ((List!29771 0))(
  ( (Nil!29768) (Cons!29767 (h!30976 (_ BitVec 64)) (t!43342 List!29771)) )
))
(declare-fun arrayNoDuplicates!0 (array!86381 (_ BitVec 32) List!29771) Bool)

(assert (=> b!1297711 (= res!862501 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29768))))

(declare-fun mapIsEmpty!53615 () Bool)

(assert (=> mapIsEmpty!53615 mapRes!53615))

(declare-fun b!1297712 () Bool)

(declare-fun res!862502 () Bool)

(assert (=> b!1297712 (=> (not res!862502) (not e!740420))))

(declare-fun zeroValue!1387 () V!51373)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun minValue!1387 () V!51373)

(declare-fun defaultEntry!1448 () Int)

(declare-fun k!1205 () (_ BitVec 64))

(declare-datatypes ((tuple2!22608 0))(
  ( (tuple2!22609 (_1!11314 (_ BitVec 64)) (_2!11314 V!51373)) )
))
(declare-datatypes ((List!29772 0))(
  ( (Nil!29769) (Cons!29768 (h!30977 tuple2!22608) (t!43343 List!29772)) )
))
(declare-datatypes ((ListLongMap!20277 0))(
  ( (ListLongMap!20278 (toList!10154 List!29772)) )
))
(declare-fun contains!8208 (ListLongMap!20277 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5128 (array!86381 array!86379 (_ BitVec 32) (_ BitVec 32) V!51373 V!51373 (_ BitVec 32) Int) ListLongMap!20277)

(assert (=> b!1297712 (= res!862502 (contains!8208 (getCurrentListMap!5128 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1297713 () Bool)

(assert (=> b!1297713 (= e!740420 (not true))))

(assert (=> b!1297713 (contains!8208 (getCurrentListMap!5128 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 (bvadd #b00000000000000000000000000000001 from!2144) defaultEntry!1448) k!1205)))

(declare-datatypes ((Unit!42906 0))(
  ( (Unit!42907) )
))
(declare-fun lt!580576 () Unit!42906)

(declare-fun lemmaInListMapFromThenFromPlsOneIfNotEqToFst!28 (array!86381 array!86379 (_ BitVec 32) (_ BitVec 32) V!51373 V!51373 (_ BitVec 64) (_ BitVec 32) Int) Unit!42906)

(assert (=> b!1297713 (= lt!580576 (lemmaInListMapFromThenFromPlsOneIfNotEqToFst!28 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 k!1205 from!2144 defaultEntry!1448))))

(declare-fun b!1297714 () Bool)

(declare-fun res!862506 () Bool)

(assert (=> b!1297714 (=> (not res!862506) (not e!740420))))

(assert (=> b!1297714 (= res!862506 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvslt (bvadd #b00000000000000000000000000000001 from!2144) (size!42238 _keys!1741)) (not (= (select (arr!41687 _keys!1741) from!2144) k!1205))))))

(declare-fun b!1297715 () Bool)

(declare-fun e!740422 () Bool)

(assert (=> b!1297715 (= e!740421 (and e!740422 mapRes!53615))))

(declare-fun condMapEmpty!53615 () Bool)

(declare-fun mapDefault!53615 () ValueCell!16453)

