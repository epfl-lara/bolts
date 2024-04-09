; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109004 () Bool)

(assert start!109004)

(declare-fun b_free!28457 () Bool)

(declare-fun b_next!28457 () Bool)

(assert (=> start!109004 (= b_free!28457 (not b_next!28457))))

(declare-fun tp!100491 () Bool)

(declare-fun b_and!46557 () Bool)

(assert (=> start!109004 (= tp!100491 b_and!46557)))

(declare-fun b!1287466 () Bool)

(declare-fun e!735282 () Bool)

(declare-fun tp_is_empty!34097 () Bool)

(assert (=> b!1287466 (= e!735282 tp_is_empty!34097)))

(declare-fun b!1287467 () Bool)

(declare-fun res!855147 () Bool)

(declare-fun e!735281 () Bool)

(assert (=> b!1287467 (=> (not res!855147) (not e!735281))))

(declare-datatypes ((V!50565 0))(
  ( (V!50566 (val!17123 Int)) )
))
(declare-fun minValue!1387 () V!50565)

(declare-fun zeroValue!1387 () V!50565)

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((ValueCell!16150 0))(
  ( (ValueCellFull!16150 (v!19724 V!50565)) (EmptyCell!16150) )
))
(declare-datatypes ((array!85199 0))(
  ( (array!85200 (arr!41096 (Array (_ BitVec 32) ValueCell!16150)) (size!41647 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85199)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!85201 0))(
  ( (array!85202 (arr!41097 (Array (_ BitVec 32) (_ BitVec 64))) (size!41648 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85201)

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((tuple2!22104 0))(
  ( (tuple2!22105 (_1!11062 (_ BitVec 64)) (_2!11062 V!50565)) )
))
(declare-datatypes ((List!29305 0))(
  ( (Nil!29302) (Cons!29301 (h!30510 tuple2!22104) (t!42876 List!29305)) )
))
(declare-datatypes ((ListLongMap!19773 0))(
  ( (ListLongMap!19774 (toList!9902 List!29305)) )
))
(declare-fun contains!7958 (ListLongMap!19773 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4909 (array!85201 array!85199 (_ BitVec 32) (_ BitVec 32) V!50565 V!50565 (_ BitVec 32) Int) ListLongMap!19773)

(assert (=> b!1287467 (= res!855147 (contains!7958 (getCurrentListMap!4909 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1287468 () Bool)

(declare-fun e!735283 () Bool)

(declare-fun e!735279 () Bool)

(declare-fun mapRes!52706 () Bool)

(assert (=> b!1287468 (= e!735283 (and e!735279 mapRes!52706))))

(declare-fun condMapEmpty!52706 () Bool)

(declare-fun mapDefault!52706 () ValueCell!16150)

