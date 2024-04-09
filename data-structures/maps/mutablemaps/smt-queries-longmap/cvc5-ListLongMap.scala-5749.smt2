; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74350 () Bool)

(assert start!74350)

(declare-fun b_free!15085 () Bool)

(declare-fun b_next!15085 () Bool)

(assert (=> start!74350 (= b_free!15085 (not b_next!15085))))

(declare-fun tp!52931 () Bool)

(declare-fun b_and!24879 () Bool)

(assert (=> start!74350 (= tp!52931 b_and!24879)))

(declare-fun b!874427 () Bool)

(declare-fun res!594362 () Bool)

(declare-fun e!486881 () Bool)

(assert (=> b!874427 (=> (not res!594362) (not e!486881))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!50770 0))(
  ( (array!50771 (arr!24409 (Array (_ BitVec 32) (_ BitVec 64))) (size!24850 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50770)

(declare-datatypes ((V!28153 0))(
  ( (V!28154 (val!8712 Int)) )
))
(declare-datatypes ((ValueCell!8225 0))(
  ( (ValueCellFull!8225 (v!11137 V!28153)) (EmptyCell!8225) )
))
(declare-datatypes ((array!50772 0))(
  ( (array!50773 (arr!24410 (Array (_ BitVec 32) ValueCell!8225)) (size!24851 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50772)

(assert (=> b!874427 (= res!594362 (and (= (size!24851 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24850 _keys!868) (size!24851 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!874428 () Bool)

(assert (=> b!874428 (= e!486881 false)))

(declare-datatypes ((tuple2!11510 0))(
  ( (tuple2!11511 (_1!5765 (_ BitVec 64)) (_2!5765 V!28153)) )
))
(declare-datatypes ((List!17399 0))(
  ( (Nil!17396) (Cons!17395 (h!18526 tuple2!11510) (t!24448 List!17399)) )
))
(declare-datatypes ((ListLongMap!10293 0))(
  ( (ListLongMap!10294 (toList!5162 List!17399)) )
))
(declare-fun lt!395913 () ListLongMap!10293)

(declare-fun v!557 () V!28153)

(declare-fun i!612 () (_ BitVec 32))

(declare-fun defaultEntry!696 () Int)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun minValue!654 () V!28153)

(declare-fun zeroValue!654 () V!28153)

(declare-fun getCurrentListMapNoExtraKeys!3126 (array!50770 array!50772 (_ BitVec 32) (_ BitVec 32) V!28153 V!28153 (_ BitVec 32) Int) ListLongMap!10293)

(assert (=> b!874428 (= lt!395913 (getCurrentListMapNoExtraKeys!3126 _keys!868 (array!50773 (store (arr!24410 _values!688) i!612 (ValueCellFull!8225 v!557)) (size!24851 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun lt!395914 () ListLongMap!10293)

(assert (=> b!874428 (= lt!395914 (getCurrentListMapNoExtraKeys!3126 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!874429 () Bool)

(declare-fun res!594364 () Bool)

(assert (=> b!874429 (=> (not res!594364) (not e!486881))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!874429 (= res!594364 (validKeyInArray!0 k!854))))

(declare-fun b!874430 () Bool)

(declare-fun res!594366 () Bool)

(assert (=> b!874430 (=> (not res!594366) (not e!486881))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50770 (_ BitVec 32)) Bool)

(assert (=> b!874430 (= res!594366 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!874431 () Bool)

(declare-fun res!594360 () Bool)

(assert (=> b!874431 (=> (not res!594360) (not e!486881))))

(assert (=> b!874431 (= res!594360 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24850 _keys!868))))))

(declare-fun b!874432 () Bool)

(declare-fun res!594363 () Bool)

(assert (=> b!874432 (=> (not res!594363) (not e!486881))))

(assert (=> b!874432 (= res!594363 (and (= (select (arr!24409 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!874433 () Bool)

(declare-fun res!594367 () Bool)

(assert (=> b!874433 (=> (not res!594367) (not e!486881))))

(declare-datatypes ((List!17400 0))(
  ( (Nil!17397) (Cons!17396 (h!18527 (_ BitVec 64)) (t!24449 List!17400)) )
))
(declare-fun arrayNoDuplicates!0 (array!50770 (_ BitVec 32) List!17400) Bool)

(assert (=> b!874433 (= res!594367 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17397))))

(declare-fun b!874434 () Bool)

(declare-fun e!486883 () Bool)

(declare-fun e!486879 () Bool)

(declare-fun mapRes!27602 () Bool)

(assert (=> b!874434 (= e!486883 (and e!486879 mapRes!27602))))

(declare-fun condMapEmpty!27602 () Bool)

(declare-fun mapDefault!27602 () ValueCell!8225)

