; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74766 () Bool)

(assert start!74766)

(declare-fun b_free!15365 () Bool)

(declare-fun b_next!15365 () Bool)

(assert (=> start!74766 (= b_free!15365 (not b_next!15365))))

(declare-fun tp!53786 () Bool)

(declare-fun b_and!25383 () Bool)

(assert (=> start!74766 (= tp!53786 b_and!25383)))

(declare-fun b!881035 () Bool)

(declare-fun e!490328 () Bool)

(declare-fun tp_is_empty!17609 () Bool)

(assert (=> b!881035 (= e!490328 tp_is_empty!17609)))

(declare-fun b!881036 () Bool)

(declare-fun res!598703 () Bool)

(declare-fun e!490329 () Bool)

(assert (=> b!881036 (=> (not res!598703) (not e!490329))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k!854 () (_ BitVec 64))

(declare-datatypes ((array!51326 0))(
  ( (array!51327 (arr!24682 (Array (_ BitVec 32) (_ BitVec 64))) (size!25123 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!51326)

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!881036 (= res!598703 (and (= (select (arr!24682 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!881037 () Bool)

(declare-fun e!490332 () Bool)

(declare-fun e!490331 () Bool)

(assert (=> b!881037 (= e!490332 (not e!490331))))

(declare-fun res!598701 () Bool)

(assert (=> b!881037 (=> res!598701 e!490331)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!881037 (= res!598701 (not (validKeyInArray!0 (select (arr!24682 _keys!868) from!1053))))))

(declare-datatypes ((V!28525 0))(
  ( (V!28526 (val!8852 Int)) )
))
(declare-datatypes ((tuple2!11746 0))(
  ( (tuple2!11747 (_1!5883 (_ BitVec 64)) (_2!5883 V!28525)) )
))
(declare-datatypes ((List!17616 0))(
  ( (Nil!17613) (Cons!17612 (h!18743 tuple2!11746) (t!24791 List!17616)) )
))
(declare-datatypes ((ListLongMap!10529 0))(
  ( (ListLongMap!10530 (toList!5280 List!17616)) )
))
(declare-fun lt!398468 () ListLongMap!10529)

(declare-fun lt!398473 () ListLongMap!10529)

(assert (=> b!881037 (= lt!398468 lt!398473)))

(declare-fun v!557 () V!28525)

(declare-fun lt!398471 () ListLongMap!10529)

(declare-fun +!2486 (ListLongMap!10529 tuple2!11746) ListLongMap!10529)

(assert (=> b!881037 (= lt!398473 (+!2486 lt!398471 (tuple2!11747 k!854 v!557)))))

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((ValueCell!8365 0))(
  ( (ValueCellFull!8365 (v!11300 V!28525)) (EmptyCell!8365) )
))
(declare-datatypes ((array!51328 0))(
  ( (array!51329 (arr!24683 (Array (_ BitVec 32) ValueCell!8365)) (size!25124 (_ BitVec 32))) )
))
(declare-fun lt!398472 () array!51328)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun minValue!654 () V!28525)

(declare-fun zeroValue!654 () V!28525)

(declare-fun getCurrentListMapNoExtraKeys!3240 (array!51326 array!51328 (_ BitVec 32) (_ BitVec 32) V!28525 V!28525 (_ BitVec 32) Int) ListLongMap!10529)

(assert (=> b!881037 (= lt!398468 (getCurrentListMapNoExtraKeys!3240 _keys!868 lt!398472 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun _values!688 () array!51328)

(assert (=> b!881037 (= lt!398471 (getCurrentListMapNoExtraKeys!3240 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-datatypes ((Unit!30048 0))(
  ( (Unit!30049) )
))
(declare-fun lt!398470 () Unit!30048)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!715 (array!51326 array!51328 (_ BitVec 32) (_ BitVec 32) V!28525 V!28525 (_ BitVec 32) (_ BitVec 64) V!28525 (_ BitVec 32) Int) Unit!30048)

(assert (=> b!881037 (= lt!398470 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!715 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!881038 () Bool)

(assert (=> b!881038 (= e!490329 e!490332)))

(declare-fun res!598704 () Bool)

(assert (=> b!881038 (=> (not res!598704) (not e!490332))))

(assert (=> b!881038 (= res!598704 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun lt!398467 () ListLongMap!10529)

(assert (=> b!881038 (= lt!398467 (getCurrentListMapNoExtraKeys!3240 _keys!868 lt!398472 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!881038 (= lt!398472 (array!51329 (store (arr!24683 _values!688) i!612 (ValueCellFull!8365 v!557)) (size!25124 _values!688)))))

(declare-fun lt!398474 () ListLongMap!10529)

(assert (=> b!881038 (= lt!398474 (getCurrentListMapNoExtraKeys!3240 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!881039 () Bool)

(declare-fun e!490325 () Bool)

(declare-fun e!490327 () Bool)

(declare-fun mapRes!28038 () Bool)

(assert (=> b!881039 (= e!490325 (and e!490327 mapRes!28038))))

(declare-fun condMapEmpty!28038 () Bool)

(declare-fun mapDefault!28038 () ValueCell!8365)

