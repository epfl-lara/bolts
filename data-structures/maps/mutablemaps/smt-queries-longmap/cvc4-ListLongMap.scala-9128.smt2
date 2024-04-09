; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109592 () Bool)

(assert start!109592)

(declare-fun b_free!29045 () Bool)

(declare-fun b_next!29045 () Bool)

(assert (=> start!109592 (= b_free!29045 (not b_next!29045))))

(declare-fun tp!102254 () Bool)

(declare-fun b_and!47145 () Bool)

(assert (=> start!109592 (= tp!102254 b_and!47145)))

(declare-fun b!1297477 () Bool)

(declare-fun res!862349 () Bool)

(declare-fun e!740286 () Bool)

(assert (=> b!1297477 (=> (not res!862349) (not e!740286))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((V!51349 0))(
  ( (V!51350 (val!17417 Int)) )
))
(declare-datatypes ((ValueCell!16444 0))(
  ( (ValueCellFull!16444 (v!20018 V!51349)) (EmptyCell!16444) )
))
(declare-datatypes ((array!86343 0))(
  ( (array!86344 (arr!41668 (Array (_ BitVec 32) ValueCell!16444)) (size!42219 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86343)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!86345 0))(
  ( (array!86346 (arr!41669 (Array (_ BitVec 32) (_ BitVec 64))) (size!42220 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86345)

(assert (=> b!1297477 (= res!862349 (and (= (size!42219 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42220 _keys!1741) (size!42219 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!53588 () Bool)

(declare-fun mapRes!53588 () Bool)

(declare-fun tp!102255 () Bool)

(declare-fun e!740287 () Bool)

(assert (=> mapNonEmpty!53588 (= mapRes!53588 (and tp!102255 e!740287))))

(declare-fun mapValue!53588 () ValueCell!16444)

(declare-fun mapKey!53588 () (_ BitVec 32))

(declare-fun mapRest!53588 () (Array (_ BitVec 32) ValueCell!16444))

(assert (=> mapNonEmpty!53588 (= (arr!41668 _values!1445) (store mapRest!53588 mapKey!53588 mapValue!53588))))

(declare-fun b!1297478 () Bool)

(assert (=> b!1297478 (= e!740286 false)))

(declare-fun minValue!1387 () V!51349)

(declare-fun zeroValue!1387 () V!51349)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun lt!580549 () Bool)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun defaultEntry!1448 () Int)

(declare-datatypes ((tuple2!22592 0))(
  ( (tuple2!22593 (_1!11306 (_ BitVec 64)) (_2!11306 V!51349)) )
))
(declare-datatypes ((List!29756 0))(
  ( (Nil!29753) (Cons!29752 (h!30961 tuple2!22592) (t!43327 List!29756)) )
))
(declare-datatypes ((ListLongMap!20261 0))(
  ( (ListLongMap!20262 (toList!10146 List!29756)) )
))
(declare-fun contains!8200 (ListLongMap!20261 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5120 (array!86345 array!86343 (_ BitVec 32) (_ BitVec 32) V!51349 V!51349 (_ BitVec 32) Int) ListLongMap!20261)

(assert (=> b!1297478 (= lt!580549 (contains!8200 (getCurrentListMap!5120 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1297479 () Bool)

(declare-fun e!740283 () Bool)

(declare-fun e!740285 () Bool)

(assert (=> b!1297479 (= e!740283 (and e!740285 mapRes!53588))))

(declare-fun condMapEmpty!53588 () Bool)

(declare-fun mapDefault!53588 () ValueCell!16444)

