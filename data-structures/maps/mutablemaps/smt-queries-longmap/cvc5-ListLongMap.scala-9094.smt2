; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109384 () Bool)

(assert start!109384)

(declare-fun b_free!28837 () Bool)

(declare-fun b_next!28837 () Bool)

(assert (=> start!109384 (= b_free!28837 (not b_next!28837))))

(declare-fun tp!101630 () Bool)

(declare-fun b_and!46937 () Bool)

(assert (=> start!109384 (= tp!101630 b_and!46937)))

(declare-fun b!1294142 () Bool)

(declare-fun res!860115 () Bool)

(declare-fun e!738536 () Bool)

(assert (=> b!1294142 (=> (not res!860115) (not e!738536))))

(declare-datatypes ((V!51073 0))(
  ( (V!51074 (val!17313 Int)) )
))
(declare-fun minValue!1387 () V!51073)

(declare-fun zeroValue!1387 () V!51073)

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((ValueCell!16340 0))(
  ( (ValueCellFull!16340 (v!19914 V!51073)) (EmptyCell!16340) )
))
(declare-datatypes ((array!85941 0))(
  ( (array!85942 (arr!41467 (Array (_ BitVec 32) ValueCell!16340)) (size!42018 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85941)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!85943 0))(
  ( (array!85944 (arr!41468 (Array (_ BitVec 32) (_ BitVec 64))) (size!42019 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85943)

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((tuple2!22430 0))(
  ( (tuple2!22431 (_1!11225 (_ BitVec 64)) (_2!11225 V!51073)) )
))
(declare-datatypes ((List!29607 0))(
  ( (Nil!29604) (Cons!29603 (h!30812 tuple2!22430) (t!43178 List!29607)) )
))
(declare-datatypes ((ListLongMap!20099 0))(
  ( (ListLongMap!20100 (toList!10065 List!29607)) )
))
(declare-fun contains!8121 (ListLongMap!20099 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5050 (array!85943 array!85941 (_ BitVec 32) (_ BitVec 32) V!51073 V!51073 (_ BitVec 32) Int) ListLongMap!20099)

(assert (=> b!1294142 (= res!860115 (contains!8121 (getCurrentListMap!5050 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1294143 () Bool)

(declare-fun e!738535 () Bool)

(declare-fun tp_is_empty!34477 () Bool)

(assert (=> b!1294143 (= e!738535 tp_is_empty!34477)))

(declare-fun mapIsEmpty!53276 () Bool)

(declare-fun mapRes!53276 () Bool)

(assert (=> mapIsEmpty!53276 mapRes!53276))

(declare-fun b!1294144 () Bool)

(declare-fun res!860113 () Bool)

(assert (=> b!1294144 (=> (not res!860113) (not e!738536))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1294144 (= res!860113 (not (validKeyInArray!0 (select (arr!41468 _keys!1741) from!2144))))))

(declare-fun b!1294145 () Bool)

(declare-fun e!738538 () Bool)

(assert (=> b!1294145 (= e!738538 (and e!738535 mapRes!53276))))

(declare-fun condMapEmpty!53276 () Bool)

(declare-fun mapDefault!53276 () ValueCell!16340)

