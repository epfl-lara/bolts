; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109256 () Bool)

(assert start!109256)

(declare-fun b_free!28709 () Bool)

(declare-fun b_next!28709 () Bool)

(assert (=> start!109256 (= b_free!28709 (not b_next!28709))))

(declare-fun tp!101247 () Bool)

(declare-fun b_and!46809 () Bool)

(assert (=> start!109256 (= tp!101247 b_and!46809)))

(declare-fun b!1291921 () Bool)

(declare-fun e!737468 () Bool)

(assert (=> b!1291921 (= e!737468 (not true))))

(declare-fun k!1205 () (_ BitVec 64))

(declare-datatypes ((V!50901 0))(
  ( (V!50902 (val!17249 Int)) )
))
(declare-datatypes ((tuple2!22318 0))(
  ( (tuple2!22319 (_1!11169 (_ BitVec 64)) (_2!11169 V!50901)) )
))
(declare-datatypes ((List!29509 0))(
  ( (Nil!29506) (Cons!29505 (h!30714 tuple2!22318) (t!43080 List!29509)) )
))
(declare-datatypes ((ListLongMap!19987 0))(
  ( (ListLongMap!19988 (toList!10009 List!29509)) )
))
(declare-fun contains!8065 (ListLongMap!19987 (_ BitVec 64)) Bool)

(assert (=> b!1291921 (not (contains!8065 (ListLongMap!19988 Nil!29506) k!1205))))

(declare-datatypes ((Unit!42705 0))(
  ( (Unit!42706) )
))
(declare-fun lt!579235 () Unit!42705)

(declare-fun emptyContainsNothing!109 ((_ BitVec 64)) Unit!42705)

(assert (=> b!1291921 (= lt!579235 (emptyContainsNothing!109 k!1205))))

(declare-fun b!1291922 () Bool)

(declare-fun res!858472 () Bool)

(assert (=> b!1291922 (=> (not res!858472) (not e!737468))))

(declare-datatypes ((array!85691 0))(
  ( (array!85692 (arr!41342 (Array (_ BitVec 32) (_ BitVec 64))) (size!41893 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85691)

(declare-datatypes ((List!29510 0))(
  ( (Nil!29507) (Cons!29506 (h!30715 (_ BitVec 64)) (t!43081 List!29510)) )
))
(declare-fun arrayNoDuplicates!0 (array!85691 (_ BitVec 32) List!29510) Bool)

(assert (=> b!1291922 (= res!858472 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29507))))

(declare-fun b!1291923 () Bool)

(declare-fun res!858471 () Bool)

(assert (=> b!1291923 (=> (not res!858471) (not e!737468))))

(declare-fun from!2144 () (_ BitVec 32))

(assert (=> b!1291923 (= res!858471 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41893 _keys!1741))))))

(declare-fun b!1291924 () Bool)

(declare-fun res!858468 () Bool)

(assert (=> b!1291924 (=> (not res!858468) (not e!737468))))

(declare-fun minValue!1387 () V!50901)

(declare-fun zeroValue!1387 () V!50901)

(declare-datatypes ((ValueCell!16276 0))(
  ( (ValueCellFull!16276 (v!19850 V!50901)) (EmptyCell!16276) )
))
(declare-datatypes ((array!85693 0))(
  ( (array!85694 (arr!41343 (Array (_ BitVec 32) ValueCell!16276)) (size!41894 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85693)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-fun defaultEntry!1448 () Int)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun getCurrentListMap!5002 (array!85691 array!85693 (_ BitVec 32) (_ BitVec 32) V!50901 V!50901 (_ BitVec 32) Int) ListLongMap!19987)

(assert (=> b!1291924 (= res!858468 (contains!8065 (getCurrentListMap!5002 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1291925 () Bool)

(declare-fun res!858469 () Bool)

(assert (=> b!1291925 (=> (not res!858469) (not e!737468))))

(assert (=> b!1291925 (= res!858469 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41893 _keys!1741))))))

(declare-fun b!1291926 () Bool)

(declare-fun res!858467 () Bool)

(assert (=> b!1291926 (=> (not res!858467) (not e!737468))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1291926 (= res!858467 (not (validKeyInArray!0 (select (arr!41342 _keys!1741) from!2144))))))

(declare-fun b!1291927 () Bool)

(declare-fun e!737467 () Bool)

(declare-fun e!737469 () Bool)

(declare-fun mapRes!53084 () Bool)

(assert (=> b!1291927 (= e!737467 (and e!737469 mapRes!53084))))

(declare-fun condMapEmpty!53084 () Bool)

(declare-fun mapDefault!53084 () ValueCell!16276)

