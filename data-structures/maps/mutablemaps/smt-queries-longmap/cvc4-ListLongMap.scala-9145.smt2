; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109730 () Bool)

(assert start!109730)

(declare-fun b_free!29147 () Bool)

(declare-fun b_next!29147 () Bool)

(assert (=> start!109730 (= b_free!29147 (not b_next!29147))))

(declare-fun tp!102566 () Bool)

(declare-fun b_and!47253 () Bool)

(assert (=> start!109730 (= tp!102566 b_and!47253)))

(declare-fun b!1299238 () Bool)

(declare-fun res!863505 () Bool)

(declare-fun e!741236 () Bool)

(assert (=> b!1299238 (=> (not res!863505) (not e!741236))))

(declare-datatypes ((array!86545 0))(
  ( (array!86546 (arr!41767 (Array (_ BitVec 32) (_ BitVec 64))) (size!42318 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86545)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1299238 (= res!863505 (validKeyInArray!0 (select (arr!41767 _keys!1741) from!2144)))))

(declare-fun mapNonEmpty!53747 () Bool)

(declare-fun mapRes!53747 () Bool)

(declare-fun tp!102567 () Bool)

(declare-fun e!741235 () Bool)

(assert (=> mapNonEmpty!53747 (= mapRes!53747 (and tp!102567 e!741235))))

(declare-fun mapKey!53747 () (_ BitVec 32))

(declare-datatypes ((V!51485 0))(
  ( (V!51486 (val!17468 Int)) )
))
(declare-datatypes ((ValueCell!16495 0))(
  ( (ValueCellFull!16495 (v!20071 V!51485)) (EmptyCell!16495) )
))
(declare-fun mapRest!53747 () (Array (_ BitVec 32) ValueCell!16495))

(declare-datatypes ((array!86547 0))(
  ( (array!86548 (arr!41768 (Array (_ BitVec 32) ValueCell!16495)) (size!42319 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86547)

(declare-fun mapValue!53747 () ValueCell!16495)

(assert (=> mapNonEmpty!53747 (= (arr!41768 _values!1445) (store mapRest!53747 mapKey!53747 mapValue!53747))))

(declare-fun b!1299239 () Bool)

(declare-fun res!863503 () Bool)

(assert (=> b!1299239 (=> (not res!863503) (not e!741236))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!86545 (_ BitVec 32)) Bool)

(assert (=> b!1299239 (= res!863503 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun minValue!1387 () V!51485)

(declare-fun zeroValue!1387 () V!51485)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun b!1299240 () Bool)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!22674 0))(
  ( (tuple2!22675 (_1!11347 (_ BitVec 64)) (_2!11347 V!51485)) )
))
(declare-datatypes ((List!29834 0))(
  ( (Nil!29831) (Cons!29830 (h!31039 tuple2!22674) (t!43409 List!29834)) )
))
(declare-datatypes ((ListLongMap!20343 0))(
  ( (ListLongMap!20344 (toList!10187 List!29834)) )
))
(declare-fun contains!8243 (ListLongMap!20343 (_ BitVec 64)) Bool)

(declare-fun +!4419 (ListLongMap!20343 tuple2!22674) ListLongMap!20343)

(declare-fun getCurrentListMapNoExtraKeys!6132 (array!86545 array!86547 (_ BitVec 32) (_ BitVec 32) V!51485 V!51485 (_ BitVec 32) Int) ListLongMap!20343)

(assert (=> b!1299240 (= e!741236 (not (contains!8243 (+!4419 (+!4419 (getCurrentListMapNoExtraKeys!6132 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) (tuple2!22675 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1387)) (tuple2!22675 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1387)) k!1205)))))

(declare-fun b!1299242 () Bool)

(declare-fun res!863504 () Bool)

(assert (=> b!1299242 (=> (not res!863504) (not e!741236))))

(declare-datatypes ((List!29835 0))(
  ( (Nil!29832) (Cons!29831 (h!31040 (_ BitVec 64)) (t!43410 List!29835)) )
))
(declare-fun arrayNoDuplicates!0 (array!86545 (_ BitVec 32) List!29835) Bool)

(assert (=> b!1299242 (= res!863504 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29832))))

(declare-fun b!1299243 () Bool)

(declare-fun res!863509 () Bool)

(assert (=> b!1299243 (=> (not res!863509) (not e!741236))))

(declare-fun getCurrentListMap!5161 (array!86545 array!86547 (_ BitVec 32) (_ BitVec 32) V!51485 V!51485 (_ BitVec 32) Int) ListLongMap!20343)

(assert (=> b!1299243 (= res!863509 (contains!8243 (getCurrentListMap!5161 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1299244 () Bool)

(declare-fun res!863511 () Bool)

(assert (=> b!1299244 (=> (not res!863511) (not e!741236))))

(assert (=> b!1299244 (= res!863511 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42318 _keys!1741))))))

(declare-fun b!1299245 () Bool)

(declare-fun e!741237 () Bool)

(declare-fun e!741234 () Bool)

(assert (=> b!1299245 (= e!741237 (and e!741234 mapRes!53747))))

(declare-fun condMapEmpty!53747 () Bool)

(declare-fun mapDefault!53747 () ValueCell!16495)

