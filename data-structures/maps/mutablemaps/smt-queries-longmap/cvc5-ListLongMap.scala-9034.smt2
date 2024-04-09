; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109024 () Bool)

(assert start!109024)

(declare-fun b_free!28477 () Bool)

(declare-fun b_next!28477 () Bool)

(assert (=> start!109024 (= b_free!28477 (not b_next!28477))))

(declare-fun tp!100551 () Bool)

(declare-fun b_and!46577 () Bool)

(assert (=> start!109024 (= tp!100551 b_and!46577)))

(declare-fun b!1287796 () Bool)

(declare-fun res!855386 () Bool)

(declare-fun e!735430 () Bool)

(assert (=> b!1287796 (=> (not res!855386) (not e!735430))))

(declare-datatypes ((V!50593 0))(
  ( (V!50594 (val!17133 Int)) )
))
(declare-fun minValue!1387 () V!50593)

(declare-fun zeroValue!1387 () V!50593)

(declare-fun from!2144 () (_ BitVec 32))

(declare-datatypes ((ValueCell!16160 0))(
  ( (ValueCellFull!16160 (v!19734 V!50593)) (EmptyCell!16160) )
))
(declare-datatypes ((array!85235 0))(
  ( (array!85236 (arr!41114 (Array (_ BitVec 32) ValueCell!16160)) (size!41665 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85235)

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!85237 0))(
  ( (array!85238 (arr!41115 (Array (_ BitVec 32) (_ BitVec 64))) (size!41666 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85237)

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((tuple2!22122 0))(
  ( (tuple2!22123 (_1!11071 (_ BitVec 64)) (_2!11071 V!50593)) )
))
(declare-datatypes ((List!29321 0))(
  ( (Nil!29318) (Cons!29317 (h!30526 tuple2!22122) (t!42892 List!29321)) )
))
(declare-datatypes ((ListLongMap!19791 0))(
  ( (ListLongMap!19792 (toList!9911 List!29321)) )
))
(declare-fun contains!7967 (ListLongMap!19791 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4916 (array!85237 array!85235 (_ BitVec 32) (_ BitVec 32) V!50593 V!50593 (_ BitVec 32) Int) ListLongMap!19791)

(assert (=> b!1287796 (= res!855386 (contains!7967 (getCurrentListMap!4916 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1287797 () Bool)

(declare-fun res!855390 () Bool)

(assert (=> b!1287797 (=> (not res!855390) (not e!735430))))

(declare-datatypes ((List!29322 0))(
  ( (Nil!29319) (Cons!29318 (h!30527 (_ BitVec 64)) (t!42893 List!29322)) )
))
(declare-fun arrayNoDuplicates!0 (array!85237 (_ BitVec 32) List!29322) Bool)

(assert (=> b!1287797 (= res!855390 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29319))))

(declare-fun b!1287798 () Bool)

(declare-fun e!735433 () Bool)

(declare-fun e!735432 () Bool)

(declare-fun mapRes!52736 () Bool)

(assert (=> b!1287798 (= e!735433 (and e!735432 mapRes!52736))))

(declare-fun condMapEmpty!52736 () Bool)

(declare-fun mapDefault!52736 () ValueCell!16160)

