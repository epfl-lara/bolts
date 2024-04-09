; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109354 () Bool)

(assert start!109354)

(declare-fun b_free!28807 () Bool)

(declare-fun b_next!28807 () Bool)

(assert (=> start!109354 (= b_free!28807 (not b_next!28807))))

(declare-fun tp!101541 () Bool)

(declare-fun b_and!46907 () Bool)

(assert (=> start!109354 (= tp!101541 b_and!46907)))

(declare-fun mapNonEmpty!53231 () Bool)

(declare-fun mapRes!53231 () Bool)

(declare-fun tp!101540 () Bool)

(declare-fun e!738297 () Bool)

(assert (=> mapNonEmpty!53231 (= mapRes!53231 (and tp!101540 e!738297))))

(declare-datatypes ((V!51033 0))(
  ( (V!51034 (val!17298 Int)) )
))
(declare-datatypes ((ValueCell!16325 0))(
  ( (ValueCellFull!16325 (v!19899 V!51033)) (EmptyCell!16325) )
))
(declare-fun mapValue!53231 () ValueCell!16325)

(declare-datatypes ((array!85881 0))(
  ( (array!85882 (arr!41437 (Array (_ BitVec 32) ValueCell!16325)) (size!41988 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85881)

(declare-fun mapRest!53231 () (Array (_ BitVec 32) ValueCell!16325))

(declare-fun mapKey!53231 () (_ BitVec 32))

(assert (=> mapNonEmpty!53231 (= (arr!41437 _values!1445) (store mapRest!53231 mapKey!53231 mapValue!53231))))

(declare-fun b!1293630 () Bool)

(declare-fun res!859737 () Bool)

(declare-fun e!738294 () Bool)

(assert (=> b!1293630 (=> (not res!859737) (not e!738294))))

(declare-fun minValue!1387 () V!51033)

(declare-fun zeroValue!1387 () V!51033)

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun k!1205 () (_ BitVec 64))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!85883 0))(
  ( (array!85884 (arr!41438 (Array (_ BitVec 32) (_ BitVec 64))) (size!41989 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85883)

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((tuple2!22406 0))(
  ( (tuple2!22407 (_1!11213 (_ BitVec 64)) (_2!11213 V!51033)) )
))
(declare-datatypes ((List!29588 0))(
  ( (Nil!29585) (Cons!29584 (h!30793 tuple2!22406) (t!43159 List!29588)) )
))
(declare-datatypes ((ListLongMap!20075 0))(
  ( (ListLongMap!20076 (toList!10053 List!29588)) )
))
(declare-fun contains!8109 (ListLongMap!20075 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5039 (array!85883 array!85881 (_ BitVec 32) (_ BitVec 32) V!51033 V!51033 (_ BitVec 32) Int) ListLongMap!20075)

(assert (=> b!1293630 (= res!859737 (contains!8109 (getCurrentListMap!5039 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1293631 () Bool)

(declare-fun e!738293 () Bool)

(declare-fun e!738295 () Bool)

(assert (=> b!1293631 (= e!738293 (and e!738295 mapRes!53231))))

(declare-fun condMapEmpty!53231 () Bool)

(declare-fun mapDefault!53231 () ValueCell!16325)

