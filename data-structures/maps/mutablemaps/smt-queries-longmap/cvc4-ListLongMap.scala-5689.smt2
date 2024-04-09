; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73950 () Bool)

(assert start!73950)

(declare-fun b_free!14837 () Bool)

(declare-fun b_next!14837 () Bool)

(assert (=> start!73950 (= b_free!14837 (not b_next!14837))))

(declare-fun tp!52015 () Bool)

(declare-fun b_and!24607 () Bool)

(assert (=> start!73950 (= tp!52015 b_and!24607)))

(declare-fun b!868569 () Bool)

(declare-fun res!590330 () Bool)

(declare-fun e!483782 () Bool)

(assert (=> b!868569 (=> (not res!590330) (not e!483782))))

(declare-datatypes ((array!50080 0))(
  ( (array!50081 (arr!24067 (Array (_ BitVec 32) (_ BitVec 64))) (size!24508 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50080)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50080 (_ BitVec 32)) Bool)

(assert (=> b!868569 (= res!590330 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!868570 () Bool)

(declare-fun res!590333 () Bool)

(assert (=> b!868570 (=> (not res!590333) (not e!483782))))

(declare-datatypes ((List!17188 0))(
  ( (Nil!17185) (Cons!17184 (h!18315 (_ BitVec 64)) (t!24233 List!17188)) )
))
(declare-fun arrayNoDuplicates!0 (array!50080 (_ BitVec 32) List!17188) Bool)

(assert (=> b!868570 (= res!590333 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17185))))

(declare-fun mapNonEmpty!27059 () Bool)

(declare-fun mapRes!27059 () Bool)

(declare-fun tp!52016 () Bool)

(declare-fun e!483781 () Bool)

(assert (=> mapNonEmpty!27059 (= mapRes!27059 (and tp!52016 e!483781))))

(declare-fun mapKey!27059 () (_ BitVec 32))

(declare-datatypes ((V!27677 0))(
  ( (V!27678 (val!8534 Int)) )
))
(declare-datatypes ((ValueCell!8047 0))(
  ( (ValueCellFull!8047 (v!10955 V!27677)) (EmptyCell!8047) )
))
(declare-fun mapValue!27059 () ValueCell!8047)

(declare-fun mapRest!27059 () (Array (_ BitVec 32) ValueCell!8047))

(declare-datatypes ((array!50082 0))(
  ( (array!50083 (arr!24068 (Array (_ BitVec 32) ValueCell!8047)) (size!24509 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50082)

(assert (=> mapNonEmpty!27059 (= (arr!24068 _values!688) (store mapRest!27059 mapKey!27059 mapValue!27059))))

(declare-fun b!868571 () Bool)

(declare-fun tp_is_empty!16973 () Bool)

(assert (=> b!868571 (= e!483781 tp_is_empty!16973)))

(declare-fun b!868572 () Bool)

(declare-fun e!483779 () Bool)

(assert (=> b!868572 (= e!483779 tp_is_empty!16973)))

(declare-fun b!868573 () Bool)

(declare-fun res!590331 () Bool)

(assert (=> b!868573 (=> (not res!590331) (not e!483782))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!868573 (= res!590331 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24508 _keys!868))))))

(declare-fun b!868575 () Bool)

(declare-fun res!590326 () Bool)

(assert (=> b!868575 (=> (not res!590326) (not e!483782))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!868575 (= res!590326 (and (= (select (arr!24067 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!868576 () Bool)

(declare-fun e!483783 () Bool)

(assert (=> b!868576 (= e!483783 (not true))))

(declare-fun v!557 () V!27677)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun lt!394507 () array!50082)

(declare-fun minValue!654 () V!27677)

(declare-fun zeroValue!654 () V!27677)

(declare-datatypes ((tuple2!11328 0))(
  ( (tuple2!11329 (_1!5674 (_ BitVec 64)) (_2!5674 V!27677)) )
))
(declare-datatypes ((List!17189 0))(
  ( (Nil!17186) (Cons!17185 (h!18316 tuple2!11328) (t!24234 List!17189)) )
))
(declare-datatypes ((ListLongMap!10111 0))(
  ( (ListLongMap!10112 (toList!5071 List!17189)) )
))
(declare-fun getCurrentListMapNoExtraKeys!3035 (array!50080 array!50082 (_ BitVec 32) (_ BitVec 32) V!27677 V!27677 (_ BitVec 32) Int) ListLongMap!10111)

(declare-fun +!2361 (ListLongMap!10111 tuple2!11328) ListLongMap!10111)

(assert (=> b!868576 (= (getCurrentListMapNoExtraKeys!3035 _keys!868 lt!394507 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (+!2361 (getCurrentListMapNoExtraKeys!3035 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (tuple2!11329 k!854 v!557)))))

(declare-datatypes ((Unit!29772 0))(
  ( (Unit!29773) )
))
(declare-fun lt!394506 () Unit!29772)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!592 (array!50080 array!50082 (_ BitVec 32) (_ BitVec 32) V!27677 V!27677 (_ BitVec 32) (_ BitVec 64) V!27677 (_ BitVec 32) Int) Unit!29772)

(assert (=> b!868576 (= lt!394506 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!592 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun mapIsEmpty!27059 () Bool)

(assert (=> mapIsEmpty!27059 mapRes!27059))

(declare-fun b!868577 () Bool)

(assert (=> b!868577 (= e!483782 e!483783)))

(declare-fun res!590332 () Bool)

(assert (=> b!868577 (=> (not res!590332) (not e!483783))))

(assert (=> b!868577 (= res!590332 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun lt!394509 () ListLongMap!10111)

(assert (=> b!868577 (= lt!394509 (getCurrentListMapNoExtraKeys!3035 _keys!868 lt!394507 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!868577 (= lt!394507 (array!50083 (store (arr!24068 _values!688) i!612 (ValueCellFull!8047 v!557)) (size!24509 _values!688)))))

(declare-fun lt!394508 () ListLongMap!10111)

(assert (=> b!868577 (= lt!394508 (getCurrentListMapNoExtraKeys!3035 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!868578 () Bool)

(declare-fun res!590328 () Bool)

(assert (=> b!868578 (=> (not res!590328) (not e!483782))))

(assert (=> b!868578 (= res!590328 (and (= (size!24509 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24508 _keys!868) (size!24509 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun res!590329 () Bool)

(assert (=> start!73950 (=> (not res!590329) (not e!483782))))

(assert (=> start!73950 (= res!590329 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24508 _keys!868))))))

(assert (=> start!73950 e!483782))

(assert (=> start!73950 tp_is_empty!16973))

(assert (=> start!73950 true))

(assert (=> start!73950 tp!52015))

(declare-fun array_inv!18988 (array!50080) Bool)

(assert (=> start!73950 (array_inv!18988 _keys!868)))

(declare-fun e!483778 () Bool)

(declare-fun array_inv!18989 (array!50082) Bool)

(assert (=> start!73950 (and (array_inv!18989 _values!688) e!483778)))

(declare-fun b!868574 () Bool)

(assert (=> b!868574 (= e!483778 (and e!483779 mapRes!27059))))

(declare-fun condMapEmpty!27059 () Bool)

(declare-fun mapDefault!27059 () ValueCell!8047)

