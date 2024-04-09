; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109376 () Bool)

(assert start!109376)

(declare-fun b_free!28829 () Bool)

(declare-fun b_next!28829 () Bool)

(assert (=> start!109376 (= b_free!28829 (not b_next!28829))))

(declare-fun tp!101607 () Bool)

(declare-fun b_and!46929 () Bool)

(assert (=> start!109376 (= tp!101607 b_and!46929)))

(declare-fun b!1294009 () Bool)

(declare-fun e!738475 () Bool)

(declare-fun tp_is_empty!34469 () Bool)

(assert (=> b!1294009 (= e!738475 tp_is_empty!34469)))

(declare-fun b!1294010 () Bool)

(declare-fun res!860019 () Bool)

(declare-fun e!738478 () Bool)

(assert (=> b!1294010 (=> (not res!860019) (not e!738478))))

(declare-datatypes ((array!85925 0))(
  ( (array!85926 (arr!41459 (Array (_ BitVec 32) (_ BitVec 64))) (size!42010 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85925)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!85925 (_ BitVec 32)) Bool)

(assert (=> b!1294010 (= res!860019 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1294011 () Bool)

(declare-fun res!860022 () Bool)

(assert (=> b!1294011 (=> (not res!860022) (not e!738478))))

(declare-datatypes ((List!29601 0))(
  ( (Nil!29598) (Cons!29597 (h!30806 (_ BitVec 64)) (t!43172 List!29601)) )
))
(declare-fun arrayNoDuplicates!0 (array!85925 (_ BitVec 32) List!29601) Bool)

(assert (=> b!1294011 (= res!860022 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29598))))

(declare-fun b!1294012 () Bool)

(declare-fun res!860018 () Bool)

(assert (=> b!1294012 (=> (not res!860018) (not e!738478))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1294012 (= res!860018 (not (validKeyInArray!0 (select (arr!41459 _keys!1741) from!2144))))))

(declare-fun b!1294013 () Bool)

(assert (=> b!1294013 (= e!738478 (not true))))

(declare-fun k!1205 () (_ BitVec 64))

(declare-datatypes ((V!51061 0))(
  ( (V!51062 (val!17309 Int)) )
))
(declare-datatypes ((tuple2!22422 0))(
  ( (tuple2!22423 (_1!11221 (_ BitVec 64)) (_2!11221 V!51061)) )
))
(declare-datatypes ((List!29602 0))(
  ( (Nil!29599) (Cons!29598 (h!30807 tuple2!22422) (t!43173 List!29602)) )
))
(declare-datatypes ((ListLongMap!20091 0))(
  ( (ListLongMap!20092 (toList!10061 List!29602)) )
))
(declare-fun contains!8117 (ListLongMap!20091 (_ BitVec 64)) Bool)

(assert (=> b!1294013 (not (contains!8117 (ListLongMap!20092 Nil!29599) k!1205))))

(declare-datatypes ((Unit!42797 0))(
  ( (Unit!42798) )
))
(declare-fun lt!579622 () Unit!42797)

(declare-fun emptyContainsNothing!155 ((_ BitVec 64)) Unit!42797)

(assert (=> b!1294013 (= lt!579622 (emptyContainsNothing!155 k!1205))))

(declare-fun b!1294014 () Bool)

(declare-fun res!860017 () Bool)

(assert (=> b!1294014 (=> (not res!860017) (not e!738478))))

(declare-fun minValue!1387 () V!51061)

(declare-fun zeroValue!1387 () V!51061)

(declare-datatypes ((ValueCell!16336 0))(
  ( (ValueCellFull!16336 (v!19910 V!51061)) (EmptyCell!16336) )
))
(declare-datatypes ((array!85927 0))(
  ( (array!85928 (arr!41460 (Array (_ BitVec 32) ValueCell!16336)) (size!42011 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85927)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-fun getCurrentListMap!5046 (array!85925 array!85927 (_ BitVec 32) (_ BitVec 32) V!51061 V!51061 (_ BitVec 32) Int) ListLongMap!20091)

(assert (=> b!1294014 (= res!860017 (contains!8117 (getCurrentListMap!5046 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1294015 () Bool)

(declare-fun e!738476 () Bool)

(assert (=> b!1294015 (= e!738476 tp_is_empty!34469)))

(declare-fun res!860020 () Bool)

(assert (=> start!109376 (=> (not res!860020) (not e!738478))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109376 (= res!860020 (validMask!0 mask!2175))))

(assert (=> start!109376 e!738478))

(assert (=> start!109376 tp_is_empty!34469))

(assert (=> start!109376 true))

(declare-fun e!738474 () Bool)

(declare-fun array_inv!31379 (array!85927) Bool)

(assert (=> start!109376 (and (array_inv!31379 _values!1445) e!738474)))

(declare-fun array_inv!31380 (array!85925) Bool)

(assert (=> start!109376 (array_inv!31380 _keys!1741)))

(assert (=> start!109376 tp!101607))

(declare-fun b!1294016 () Bool)

(declare-fun res!860021 () Bool)

(assert (=> b!1294016 (=> (not res!860021) (not e!738478))))

(assert (=> b!1294016 (= res!860021 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!42010 _keys!1741))))))

(declare-fun b!1294017 () Bool)

(declare-fun res!860016 () Bool)

(assert (=> b!1294017 (=> (not res!860016) (not e!738478))))

(assert (=> b!1294017 (= res!860016 (and (= (size!42011 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42010 _keys!1741) (size!42011 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1294018 () Bool)

(declare-fun mapRes!53264 () Bool)

(assert (=> b!1294018 (= e!738474 (and e!738476 mapRes!53264))))

(declare-fun condMapEmpty!53264 () Bool)

(declare-fun mapDefault!53264 () ValueCell!16336)

