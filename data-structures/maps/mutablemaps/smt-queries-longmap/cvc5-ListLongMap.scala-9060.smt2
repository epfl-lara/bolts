; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109180 () Bool)

(assert start!109180)

(declare-fun b_free!28633 () Bool)

(declare-fun b_next!28633 () Bool)

(assert (=> start!109180 (= b_free!28633 (not b_next!28633))))

(declare-fun tp!101018 () Bool)

(declare-fun b_and!46733 () Bool)

(assert (=> start!109180 (= tp!101018 b_and!46733)))

(declare-fun b!1290579 () Bool)

(declare-fun res!857473 () Bool)

(declare-fun e!736809 () Bool)

(assert (=> b!1290579 (=> (not res!857473) (not e!736809))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((V!50801 0))(
  ( (V!50802 (val!17211 Int)) )
))
(declare-datatypes ((ValueCell!16238 0))(
  ( (ValueCellFull!16238 (v!19812 V!50801)) (EmptyCell!16238) )
))
(declare-datatypes ((array!85543 0))(
  ( (array!85544 (arr!41268 (Array (_ BitVec 32) ValueCell!16238)) (size!41819 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85543)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!85545 0))(
  ( (array!85546 (arr!41269 (Array (_ BitVec 32) (_ BitVec 64))) (size!41820 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85545)

(assert (=> b!1290579 (= res!857473 (and (= (size!41819 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41820 _keys!1741) (size!41819 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!52970 () Bool)

(declare-fun mapRes!52970 () Bool)

(assert (=> mapIsEmpty!52970 mapRes!52970))

(declare-fun res!857468 () Bool)

(assert (=> start!109180 (=> (not res!857468) (not e!736809))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109180 (= res!857468 (validMask!0 mask!2175))))

(assert (=> start!109180 e!736809))

(declare-fun tp_is_empty!34273 () Bool)

(assert (=> start!109180 tp_is_empty!34273))

(assert (=> start!109180 true))

(declare-fun e!736812 () Bool)

(declare-fun array_inv!31249 (array!85543) Bool)

(assert (=> start!109180 (and (array_inv!31249 _values!1445) e!736812)))

(declare-fun array_inv!31250 (array!85545) Bool)

(assert (=> start!109180 (array_inv!31250 _keys!1741)))

(assert (=> start!109180 tp!101018))

(declare-fun b!1290580 () Bool)

(declare-fun e!736808 () Bool)

(assert (=> b!1290580 (= e!736809 (not e!736808))))

(declare-fun res!857470 () Bool)

(assert (=> b!1290580 (=> res!857470 e!736808)))

(assert (=> b!1290580 (= res!857470 (or (= (bvand extraKeys!1366 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!1366 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun k!1205 () (_ BitVec 64))

(declare-datatypes ((tuple2!22254 0))(
  ( (tuple2!22255 (_1!11137 (_ BitVec 64)) (_2!11137 V!50801)) )
))
(declare-datatypes ((List!29451 0))(
  ( (Nil!29448) (Cons!29447 (h!30656 tuple2!22254) (t!43022 List!29451)) )
))
(declare-datatypes ((ListLongMap!19923 0))(
  ( (ListLongMap!19924 (toList!9977 List!29451)) )
))
(declare-fun contains!8033 (ListLongMap!19923 (_ BitVec 64)) Bool)

(assert (=> b!1290580 (not (contains!8033 (ListLongMap!19924 Nil!29448) k!1205))))

(declare-datatypes ((Unit!42643 0))(
  ( (Unit!42644) )
))
(declare-fun lt!578681 () Unit!42643)

(declare-fun emptyContainsNothing!82 ((_ BitVec 64)) Unit!42643)

(assert (=> b!1290580 (= lt!578681 (emptyContainsNothing!82 k!1205))))

(declare-fun b!1290581 () Bool)

(declare-fun res!857467 () Bool)

(assert (=> b!1290581 (=> (not res!857467) (not e!736809))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1290581 (= res!857467 (not (validKeyInArray!0 (select (arr!41269 _keys!1741) from!2144))))))

(declare-fun b!1290582 () Bool)

(declare-fun e!736813 () Bool)

(assert (=> b!1290582 (= e!736813 tp_is_empty!34273)))

(declare-fun b!1290583 () Bool)

(declare-fun res!857475 () Bool)

(assert (=> b!1290583 (=> (not res!857475) (not e!736809))))

(assert (=> b!1290583 (= res!857475 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41820 _keys!1741))))))

(declare-fun b!1290584 () Bool)

(declare-fun res!857472 () Bool)

(assert (=> b!1290584 (=> (not res!857472) (not e!736809))))

(declare-fun minValue!1387 () V!50801)

(declare-fun zeroValue!1387 () V!50801)

(declare-fun defaultEntry!1448 () Int)

(declare-fun getCurrentListMap!4977 (array!85545 array!85543 (_ BitVec 32) (_ BitVec 32) V!50801 V!50801 (_ BitVec 32) Int) ListLongMap!19923)

(assert (=> b!1290584 (= res!857472 (contains!8033 (getCurrentListMap!4977 _keys!1741 _values!1445 mask!2175 extraKeys!1366 zeroValue!1387 minValue!1387 from!2144 defaultEntry!1448) k!1205))))

(declare-fun b!1290585 () Bool)

(declare-fun res!857471 () Bool)

(assert (=> b!1290585 (=> (not res!857471) (not e!736809))))

(assert (=> b!1290585 (= res!857471 (and (not (= k!1205 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1205 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge (bvadd #b00000000000000000000000000000001 from!2144) (size!41820 _keys!1741))))))

(declare-fun b!1290586 () Bool)

(assert (=> b!1290586 (= e!736812 (and e!736813 mapRes!52970))))

(declare-fun condMapEmpty!52970 () Bool)

(declare-fun mapDefault!52970 () ValueCell!16238)

