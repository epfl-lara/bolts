; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109658 () Bool)

(assert start!109658)

(declare-fun b_free!29111 () Bool)

(declare-fun b_next!29111 () Bool)

(assert (=> start!109658 (= b_free!29111 (not b_next!29111))))

(declare-fun tp!102452 () Bool)

(declare-fun b_and!47211 () Bool)

(assert (=> start!109658 (= tp!102452 b_and!47211)))

(declare-fun mapIsEmpty!53687 () Bool)

(declare-fun mapRes!53687 () Bool)

(assert (=> mapIsEmpty!53687 mapRes!53687))

(declare-fun b!1298430 () Bool)

(declare-fun e!740778 () Bool)

(declare-fun tp_is_empty!34751 () Bool)

(assert (=> b!1298430 (= e!740778 tp_is_empty!34751)))

(declare-fun b!1298431 () Bool)

(declare-fun res!863009 () Bool)

(declare-fun e!740779 () Bool)

(assert (=> b!1298431 (=> (not res!863009) (not e!740779))))

(declare-datatypes ((array!86471 0))(
  ( (array!86472 (arr!41732 (Array (_ BitVec 32) (_ BitVec 64))) (size!42283 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86471)

(declare-datatypes ((List!29808 0))(
  ( (Nil!29805) (Cons!29804 (h!31013 (_ BitVec 64)) (t!43379 List!29808)) )
))
(declare-fun arrayNoDuplicates!0 (array!86471 (_ BitVec 32) List!29808) Bool)

(assert (=> b!1298431 (= res!863009 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29805))))

(declare-fun b!1298432 () Bool)

(declare-fun res!863007 () Bool)

(assert (=> b!1298432 (=> (not res!863007) (not e!740779))))

(declare-datatypes ((V!51437 0))(
  ( (V!51438 (val!17450 Int)) )
))
(declare-fun minValue!1387 () V!51437)

(declare-fun zeroValue!1387 () V!51437)

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((ValueCell!16477 0))(
  ( (ValueCellFull!16477 (v!20051 V!51437)) (EmptyCell!16477) )
))
(declare-datatypes ((array!86473 0))(
  ( (array!86474 (arr!41733 (Array (_ BitVec 32) ValueCell!16477)) (size!42284 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86473)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((tuple2!22648 0))(
  ( (tuple2!22649 (_1!11334 (_ BitVec 64)) (_2!11334 V!51437)) )
))
(declare-datatypes ((List!29809 0))(
  ( (Nil!29806) (Cons!29805 (h!31014 tuple2!22648) (t!43380 List!29809)) )
))
(declare-datatypes ((ListLongMap!20317 0))(
  ( (ListLongMap!20318 (toList!10174 List!29809)) )
))
(declare-fun contains!8228 (ListLongMap!20317 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5148 (array!86471 array!86473 (_ BitVec 32) (_ BitVec 32) V!51437 V!51437 (_ BitVec 32) Int) ListLongMap!20317)

(assert (=> b!1298432 (= res!863007 (contains!8228 (getCurrentListMap!5148 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1298433 () Bool)

(declare-fun res!863005 () Bool)

(assert (=> b!1298433 (=> (not res!863005) (not e!740779))))

(assert (=> b!1298433 (= res!863005 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42283 _keys!1741))))))

(declare-fun res!863006 () Bool)

(assert (=> start!109658 (=> (not res!863006) (not e!740779))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109658 (= res!863006 (validMask!0 mask!2175))))

(assert (=> start!109658 e!740779))

(assert (=> start!109658 tp_is_empty!34751))

(assert (=> start!109658 true))

(declare-fun e!740782 () Bool)

(declare-fun array_inv!31577 (array!86473) Bool)

(assert (=> start!109658 (and (array_inv!31577 _values!1445) e!740782)))

(declare-fun array_inv!31578 (array!86471) Bool)

(assert (=> start!109658 (array_inv!31578 _keys!1741)))

(assert (=> start!109658 tp!102452))

(declare-fun b!1298429 () Bool)

(assert (=> b!1298429 (= e!740779 (not (bvsge (bvadd #b00000000000000000000000000000001 from!2144) #b00000000000000000000000000000000)))))

(assert (=> b!1298429 (contains!8228 (getCurrentListMap!5148 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 (bvadd #b00000000000000000000000000000001 from!2144) defaultEntry!1448) k!1205)))

(declare-datatypes ((Unit!42942 0))(
  ( (Unit!42943) )
))
(declare-fun lt!580648 () Unit!42942)

(declare-fun lemmaInListMapFromThenFromPlsOneIfNotEqToFst!46 (array!86471 array!86473 (_ BitVec 32) (_ BitVec 32) V!51437 V!51437 (_ BitVec 64) (_ BitVec 32) Int) Unit!42942)

(assert (=> b!1298429 (= lt!580648 (lemmaInListMapFromThenFromPlsOneIfNotEqToFst!46 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 k!1205 from!2144 defaultEntry!1448))))

(declare-fun b!1298434 () Bool)

(assert (=> b!1298434 (= e!740782 (and e!740778 mapRes!53687))))

(declare-fun condMapEmpty!53687 () Bool)

(declare-fun mapDefault!53687 () ValueCell!16477)

