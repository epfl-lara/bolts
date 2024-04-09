; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73958 () Bool)

(assert start!73958)

(declare-fun b_free!14845 () Bool)

(declare-fun b_next!14845 () Bool)

(assert (=> start!73958 (= b_free!14845 (not b_next!14845))))

(declare-fun tp!52039 () Bool)

(declare-fun b_and!24615 () Bool)

(assert (=> start!73958 (= tp!52039 b_and!24615)))

(declare-fun b!868713 () Bool)

(declare-fun res!590440 () Bool)

(declare-fun e!483855 () Bool)

(assert (=> b!868713 (=> (not res!590440) (not e!483855))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k!854 () (_ BitVec 64))

(declare-datatypes ((array!50096 0))(
  ( (array!50097 (arr!24075 (Array (_ BitVec 32) (_ BitVec 64))) (size!24516 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50096)

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!868713 (= res!590440 (and (= (select (arr!24075 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!868714 () Bool)

(declare-fun e!483852 () Bool)

(assert (=> b!868714 (= e!483852 (not true))))

(declare-datatypes ((V!27689 0))(
  ( (V!27690 (val!8538 Int)) )
))
(declare-fun v!557 () V!27689)

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((ValueCell!8051 0))(
  ( (ValueCellFull!8051 (v!10959 V!27689)) (EmptyCell!8051) )
))
(declare-datatypes ((array!50098 0))(
  ( (array!50099 (arr!24076 (Array (_ BitVec 32) ValueCell!8051)) (size!24517 (_ BitVec 32))) )
))
(declare-fun lt!394556 () array!50098)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun _values!688 () array!50098)

(declare-fun minValue!654 () V!27689)

(declare-fun zeroValue!654 () V!27689)

(declare-datatypes ((tuple2!11336 0))(
  ( (tuple2!11337 (_1!5678 (_ BitVec 64)) (_2!5678 V!27689)) )
))
(declare-datatypes ((List!17195 0))(
  ( (Nil!17192) (Cons!17191 (h!18322 tuple2!11336) (t!24240 List!17195)) )
))
(declare-datatypes ((ListLongMap!10119 0))(
  ( (ListLongMap!10120 (toList!5075 List!17195)) )
))
(declare-fun getCurrentListMapNoExtraKeys!3039 (array!50096 array!50098 (_ BitVec 32) (_ BitVec 32) V!27689 V!27689 (_ BitVec 32) Int) ListLongMap!10119)

(declare-fun +!2363 (ListLongMap!10119 tuple2!11336) ListLongMap!10119)

(assert (=> b!868714 (= (getCurrentListMapNoExtraKeys!3039 _keys!868 lt!394556 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (+!2363 (getCurrentListMapNoExtraKeys!3039 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (tuple2!11337 k!854 v!557)))))

(declare-datatypes ((Unit!29776 0))(
  ( (Unit!29777) )
))
(declare-fun lt!394557 () Unit!29776)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!594 (array!50096 array!50098 (_ BitVec 32) (_ BitVec 32) V!27689 V!27689 (_ BitVec 32) (_ BitVec 64) V!27689 (_ BitVec 32) Int) Unit!29776)

(assert (=> b!868714 (= lt!394557 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!594 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!868715 () Bool)

(declare-fun res!590438 () Bool)

(assert (=> b!868715 (=> (not res!590438) (not e!483855))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!868715 (= res!590438 (validMask!0 mask!1196))))

(declare-fun b!868716 () Bool)

(declare-fun e!483853 () Bool)

(declare-fun tp_is_empty!16981 () Bool)

(assert (=> b!868716 (= e!483853 tp_is_empty!16981)))

(declare-fun b!868717 () Bool)

(declare-fun e!483851 () Bool)

(declare-fun e!483850 () Bool)

(declare-fun mapRes!27071 () Bool)

(assert (=> b!868717 (= e!483851 (and e!483850 mapRes!27071))))

(declare-fun condMapEmpty!27071 () Bool)

(declare-fun mapDefault!27071 () ValueCell!8051)

