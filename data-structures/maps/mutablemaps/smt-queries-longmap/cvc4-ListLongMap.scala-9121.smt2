; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109550 () Bool)

(assert start!109550)

(declare-fun b_free!29003 () Bool)

(declare-fun b_next!29003 () Bool)

(assert (=> start!109550 (= b_free!29003 (not b_next!29003))))

(declare-fun tp!102128 () Bool)

(declare-fun b_and!47103 () Bool)

(assert (=> start!109550 (= tp!102128 b_and!47103)))

(declare-fun b!1296973 () Bool)

(declare-fun e!739969 () Bool)

(assert (=> b!1296973 (= e!739969 false)))

(declare-datatypes ((V!51293 0))(
  ( (V!51294 (val!17396 Int)) )
))
(declare-fun minValue!1387 () V!51293)

(declare-fun zeroValue!1387 () V!51293)

(declare-datatypes ((ValueCell!16423 0))(
  ( (ValueCellFull!16423 (v!19997 V!51293)) (EmptyCell!16423) )
))
(declare-datatypes ((array!86263 0))(
  ( (array!86264 (arr!41628 (Array (_ BitVec 32) ValueCell!16423)) (size!42179 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86263)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!86265 0))(
  ( (array!86266 (arr!41629 (Array (_ BitVec 32) (_ BitVec 64))) (size!42180 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86265)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun lt!580486 () Bool)

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((tuple2!22566 0))(
  ( (tuple2!22567 (_1!11293 (_ BitVec 64)) (_2!11293 V!51293)) )
))
(declare-datatypes ((List!29730 0))(
  ( (Nil!29727) (Cons!29726 (h!30935 tuple2!22566) (t!43301 List!29730)) )
))
(declare-datatypes ((ListLongMap!20235 0))(
  ( (ListLongMap!20236 (toList!10133 List!29730)) )
))
(declare-fun contains!8187 (ListLongMap!20235 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5107 (array!86265 array!86263 (_ BitVec 32) (_ BitVec 32) V!51293 V!51293 (_ BitVec 32) Int) ListLongMap!20235)

(assert (=> b!1296973 (= lt!580486 (contains!8187 (getCurrentListMap!5107 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun res!862035 () Bool)

(assert (=> start!109550 (=> (not res!862035) (not e!739969))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109550 (= res!862035 (validMask!0 mask!2175))))

(assert (=> start!109550 e!739969))

(declare-fun tp_is_empty!34643 () Bool)

(assert (=> start!109550 tp_is_empty!34643))

(assert (=> start!109550 true))

(declare-fun e!739971 () Bool)

(declare-fun array_inv!31507 (array!86263) Bool)

(assert (=> start!109550 (and (array_inv!31507 _values!1445) e!739971)))

(declare-fun array_inv!31508 (array!86265) Bool)

(assert (=> start!109550 (array_inv!31508 _keys!1741)))

(assert (=> start!109550 tp!102128))

(declare-fun mapIsEmpty!53525 () Bool)

(declare-fun mapRes!53525 () Bool)

(assert (=> mapIsEmpty!53525 mapRes!53525))

(declare-fun mapNonEmpty!53525 () Bool)

(declare-fun tp!102129 () Bool)

(declare-fun e!739968 () Bool)

(assert (=> mapNonEmpty!53525 (= mapRes!53525 (and tp!102129 e!739968))))

(declare-fun mapKey!53525 () (_ BitVec 32))

(declare-fun mapValue!53525 () ValueCell!16423)

(declare-fun mapRest!53525 () (Array (_ BitVec 32) ValueCell!16423))

(assert (=> mapNonEmpty!53525 (= (arr!41628 _values!1445) (store mapRest!53525 mapKey!53525 mapValue!53525))))

(declare-fun b!1296974 () Bool)

(declare-fun res!862034 () Bool)

(assert (=> b!1296974 (=> (not res!862034) (not e!739969))))

(assert (=> b!1296974 (= res!862034 (and (= (size!42179 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42180 _keys!1741) (size!42179 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1296975 () Bool)

(assert (=> b!1296975 (= e!739968 tp_is_empty!34643)))

(declare-fun b!1296976 () Bool)

(declare-fun res!862036 () Bool)

(assert (=> b!1296976 (=> (not res!862036) (not e!739969))))

(declare-datatypes ((List!29731 0))(
  ( (Nil!29728) (Cons!29727 (h!30936 (_ BitVec 64)) (t!43302 List!29731)) )
))
(declare-fun arrayNoDuplicates!0 (array!86265 (_ BitVec 32) List!29731) Bool)

(assert (=> b!1296976 (= res!862036 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29728))))

(declare-fun b!1296977 () Bool)

(declare-fun e!739970 () Bool)

(assert (=> b!1296977 (= e!739971 (and e!739970 mapRes!53525))))

(declare-fun condMapEmpty!53525 () Bool)

(declare-fun mapDefault!53525 () ValueCell!16423)

