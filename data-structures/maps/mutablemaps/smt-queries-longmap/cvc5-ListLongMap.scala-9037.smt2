; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109042 () Bool)

(assert start!109042)

(declare-fun b_free!28495 () Bool)

(declare-fun b_next!28495 () Bool)

(assert (=> start!109042 (= b_free!28495 (not b_next!28495))))

(declare-fun tp!100605 () Bool)

(declare-fun b_and!46595 () Bool)

(assert (=> start!109042 (= tp!100605 b_and!46595)))

(declare-fun b!1288095 () Bool)

(declare-fun res!855610 () Bool)

(declare-fun e!735567 () Bool)

(assert (=> b!1288095 (=> (not res!855610) (not e!735567))))

(declare-datatypes ((array!85271 0))(
  ( (array!85272 (arr!41132 (Array (_ BitVec 32) (_ BitVec 64))) (size!41683 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85271)

(declare-datatypes ((List!29337 0))(
  ( (Nil!29334) (Cons!29333 (h!30542 (_ BitVec 64)) (t!42908 List!29337)) )
))
(declare-fun arrayNoDuplicates!0 (array!85271 (_ BitVec 32) List!29337) Bool)

(assert (=> b!1288095 (= res!855610 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29334))))

(declare-fun b!1288096 () Bool)

(declare-fun res!855605 () Bool)

(assert (=> b!1288096 (=> (not res!855605) (not e!735567))))

(declare-datatypes ((V!50617 0))(
  ( (V!50618 (val!17142 Int)) )
))
(declare-fun minValue!1387 () V!50617)

(declare-fun zeroValue!1387 () V!50617)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((ValueCell!16169 0))(
  ( (ValueCellFull!16169 (v!19743 V!50617)) (EmptyCell!16169) )
))
(declare-datatypes ((array!85273 0))(
  ( (array!85274 (arr!41133 (Array (_ BitVec 32) ValueCell!16169)) (size!41684 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85273)

(declare-datatypes ((tuple2!22138 0))(
  ( (tuple2!22139 (_1!11079 (_ BitVec 64)) (_2!11079 V!50617)) )
))
(declare-datatypes ((List!29338 0))(
  ( (Nil!29335) (Cons!29334 (h!30543 tuple2!22138) (t!42909 List!29338)) )
))
(declare-datatypes ((ListLongMap!19807 0))(
  ( (ListLongMap!19808 (toList!9919 List!29338)) )
))
(declare-fun contains!7975 (ListLongMap!19807 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4923 (array!85271 array!85273 (_ BitVec 32) (_ BitVec 32) V!50617 V!50617 (_ BitVec 32) Int) ListLongMap!19807)

(assert (=> b!1288096 (= res!855605 (contains!7975 (getCurrentListMap!4923 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1288097 () Bool)

(declare-fun e!735570 () Bool)

(declare-fun e!735569 () Bool)

(declare-fun mapRes!52763 () Bool)

(assert (=> b!1288097 (= e!735570 (and e!735569 mapRes!52763))))

(declare-fun condMapEmpty!52763 () Bool)

(declare-fun mapDefault!52763 () ValueCell!16169)

