; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109000 () Bool)

(assert start!109000)

(declare-fun b_free!28453 () Bool)

(declare-fun b_next!28453 () Bool)

(assert (=> start!109000 (= b_free!28453 (not b_next!28453))))

(declare-fun tp!100478 () Bool)

(declare-fun b_and!46553 () Bool)

(assert (=> start!109000 (= tp!100478 b_and!46553)))

(declare-fun b!1287400 () Bool)

(declare-fun res!855099 () Bool)

(declare-fun e!735251 () Bool)

(assert (=> b!1287400 (=> (not res!855099) (not e!735251))))

(declare-datatypes ((V!50561 0))(
  ( (V!50562 (val!17121 Int)) )
))
(declare-fun minValue!1387 () V!50561)

(declare-fun zeroValue!1387 () V!50561)

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((ValueCell!16148 0))(
  ( (ValueCellFull!16148 (v!19722 V!50561)) (EmptyCell!16148) )
))
(declare-datatypes ((array!85191 0))(
  ( (array!85192 (arr!41092 (Array (_ BitVec 32) ValueCell!16148)) (size!41643 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85191)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!85193 0))(
  ( (array!85194 (arr!41093 (Array (_ BitVec 32) (_ BitVec 64))) (size!41644 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85193)

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((tuple2!22100 0))(
  ( (tuple2!22101 (_1!11060 (_ BitVec 64)) (_2!11060 V!50561)) )
))
(declare-datatypes ((List!29301 0))(
  ( (Nil!29298) (Cons!29297 (h!30506 tuple2!22100) (t!42872 List!29301)) )
))
(declare-datatypes ((ListLongMap!19769 0))(
  ( (ListLongMap!19770 (toList!9900 List!29301)) )
))
(declare-fun contains!7956 (ListLongMap!19769 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4907 (array!85193 array!85191 (_ BitVec 32) (_ BitVec 32) V!50561 V!50561 (_ BitVec 32) Int) ListLongMap!19769)

(assert (=> b!1287400 (= res!855099 (contains!7956 (getCurrentListMap!4907 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1287401 () Bool)

(declare-fun res!855100 () Bool)

(assert (=> b!1287401 (=> (not res!855100) (not e!735251))))

(declare-datatypes ((List!29302 0))(
  ( (Nil!29299) (Cons!29298 (h!30507 (_ BitVec 64)) (t!42873 List!29302)) )
))
(declare-fun arrayNoDuplicates!0 (array!85193 (_ BitVec 32) List!29302) Bool)

(assert (=> b!1287401 (= res!855100 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29299))))

(declare-fun b!1287402 () Bool)

(assert (=> b!1287402 (= e!735251 (not true))))

(assert (=> b!1287402 (not (contains!7956 (ListLongMap!19770 Nil!29298) k!1205))))

(declare-datatypes ((Unit!42505 0))(
  ( (Unit!42506) )
))
(declare-fun lt!577807 () Unit!42505)

(declare-fun emptyContainsNothing!20 ((_ BitVec 64)) Unit!42505)

(assert (=> b!1287402 (= lt!577807 (emptyContainsNothing!20 k!1205))))

(declare-fun b!1287403 () Bool)

(declare-fun e!735253 () Bool)

(declare-fun e!735252 () Bool)

(declare-fun mapRes!52700 () Bool)

(assert (=> b!1287403 (= e!735253 (and e!735252 mapRes!52700))))

(declare-fun condMapEmpty!52700 () Bool)

(declare-fun mapDefault!52700 () ValueCell!16148)

