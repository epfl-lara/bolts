; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73086 () Bool)

(assert start!73086)

(declare-fun b_free!13973 () Bool)

(declare-fun b_next!13973 () Bool)

(assert (=> start!73086 (= b_free!13973 (not b_next!13973))))

(declare-fun tp!49423 () Bool)

(declare-fun b_and!23123 () Bool)

(assert (=> start!73086 (= tp!49423 b_and!23123)))

(declare-fun mapNonEmpty!25763 () Bool)

(declare-fun mapRes!25763 () Bool)

(declare-fun tp!49424 () Bool)

(declare-fun e!473890 () Bool)

(assert (=> mapNonEmpty!25763 (= mapRes!25763 (and tp!49424 e!473890))))

(declare-fun mapKey!25763 () (_ BitVec 32))

(declare-datatypes ((V!26525 0))(
  ( (V!26526 (val!8102 Int)) )
))
(declare-datatypes ((ValueCell!7615 0))(
  ( (ValueCellFull!7615 (v!10523 V!26525)) (EmptyCell!7615) )
))
(declare-fun mapRest!25763 () (Array (_ BitVec 32) ValueCell!7615))

(declare-datatypes ((array!48410 0))(
  ( (array!48411 (arr!23232 (Array (_ BitVec 32) ValueCell!7615)) (size!23673 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48410)

(declare-fun mapValue!25763 () ValueCell!7615)

(assert (=> mapNonEmpty!25763 (= (arr!23232 _values!688) (store mapRest!25763 mapKey!25763 mapValue!25763))))

(declare-fun mapIsEmpty!25763 () Bool)

(assert (=> mapIsEmpty!25763 mapRes!25763))

(declare-fun b!849370 () Bool)

(declare-fun res!577135 () Bool)

(declare-fun e!473891 () Bool)

(assert (=> b!849370 (=> (not res!577135) (not e!473891))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((array!48412 0))(
  ( (array!48413 (arr!23233 (Array (_ BitVec 32) (_ BitVec 64))) (size!23674 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48412)

(assert (=> b!849370 (= res!577135 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23674 _keys!868))))))

(declare-fun defaultEntry!696 () Int)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((tuple2!10622 0))(
  ( (tuple2!10623 (_1!5321 (_ BitVec 64)) (_2!5321 V!26525)) )
))
(declare-datatypes ((List!16521 0))(
  ( (Nil!16518) (Cons!16517 (h!17648 tuple2!10622) (t!22948 List!16521)) )
))
(declare-datatypes ((ListLongMap!9405 0))(
  ( (ListLongMap!9406 (toList!4718 List!16521)) )
))
(declare-fun call!37775 () ListLongMap!9405)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun minValue!654 () V!26525)

(declare-fun zeroValue!654 () V!26525)

(declare-fun bm!37771 () Bool)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!2706 (array!48412 array!48410 (_ BitVec 32) (_ BitVec 32) V!26525 V!26525 (_ BitVec 32) Int) ListLongMap!9405)

(assert (=> bm!37771 (= call!37775 (getCurrentListMapNoExtraKeys!2706 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!849371 () Bool)

(declare-fun e!473885 () Bool)

(assert (=> b!849371 (= e!473891 e!473885)))

(declare-fun res!577139 () Bool)

(assert (=> b!849371 (=> (not res!577139) (not e!473885))))

(assert (=> b!849371 (= res!577139 (= from!1053 i!612))))

(declare-fun lt!382242 () ListLongMap!9405)

(declare-fun lt!382241 () array!48410)

(assert (=> b!849371 (= lt!382242 (getCurrentListMapNoExtraKeys!2706 _keys!868 lt!382241 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!26525)

(assert (=> b!849371 (= lt!382241 (array!48411 (store (arr!23232 _values!688) i!612 (ValueCellFull!7615 v!557)) (size!23673 _values!688)))))

(declare-fun lt!382239 () ListLongMap!9405)

(assert (=> b!849371 (= lt!382239 (getCurrentListMapNoExtraKeys!2706 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun e!473892 () Bool)

(declare-fun b!849372 () Bool)

(declare-fun call!37774 () ListLongMap!9405)

(declare-fun k!854 () (_ BitVec 64))

(declare-fun +!2063 (ListLongMap!9405 tuple2!10622) ListLongMap!9405)

(assert (=> b!849372 (= e!473892 (= call!37774 (+!2063 call!37775 (tuple2!10623 k!854 v!557))))))

(declare-fun b!849374 () Bool)

(declare-fun res!577132 () Bool)

(assert (=> b!849374 (=> (not res!577132) (not e!473891))))

(assert (=> b!849374 (= res!577132 (and (= (select (arr!23233 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!849375 () Bool)

(declare-fun e!473888 () Bool)

(assert (=> b!849375 (= e!473885 (not e!473888))))

(declare-fun res!577131 () Bool)

(assert (=> b!849375 (=> res!577131 e!473888)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!849375 (= res!577131 (not (validKeyInArray!0 (select (arr!23233 _keys!868) from!1053))))))

(assert (=> b!849375 e!473892))

(declare-fun c!91548 () Bool)

(assert (=> b!849375 (= c!91548 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-datatypes ((Unit!28976 0))(
  ( (Unit!28977) )
))
(declare-fun lt!382240 () Unit!28976)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!337 (array!48412 array!48410 (_ BitVec 32) (_ BitVec 32) V!26525 V!26525 (_ BitVec 32) (_ BitVec 64) V!26525 (_ BitVec 32) Int) Unit!28976)

(assert (=> b!849375 (= lt!382240 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!337 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!849376 () Bool)

(assert (=> b!849376 (= e!473888 true)))

(declare-fun get!12239 (ValueCell!7615 V!26525) V!26525)

(declare-fun dynLambda!999 (Int (_ BitVec 64)) V!26525)

(assert (=> b!849376 (= lt!382242 (+!2063 (getCurrentListMapNoExtraKeys!2706 _keys!868 lt!382241 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (tuple2!10623 (select (arr!23233 _keys!868) from!1053) (get!12239 (select (arr!23232 lt!382241) from!1053) (dynLambda!999 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!849377 () Bool)

(declare-fun res!577136 () Bool)

(assert (=> b!849377 (=> (not res!577136) (not e!473891))))

(declare-datatypes ((List!16522 0))(
  ( (Nil!16519) (Cons!16518 (h!17649 (_ BitVec 64)) (t!22949 List!16522)) )
))
(declare-fun arrayNoDuplicates!0 (array!48412 (_ BitVec 32) List!16522) Bool)

(assert (=> b!849377 (= res!577136 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16519))))

(declare-fun b!849378 () Bool)

(declare-fun res!577134 () Bool)

(assert (=> b!849378 (=> (not res!577134) (not e!473891))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48412 (_ BitVec 32)) Bool)

(assert (=> b!849378 (= res!577134 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun bm!37772 () Bool)

(assert (=> bm!37772 (= call!37774 (getCurrentListMapNoExtraKeys!2706 _keys!868 lt!382241 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!849379 () Bool)

(declare-fun res!577137 () Bool)

(assert (=> b!849379 (=> (not res!577137) (not e!473891))))

(assert (=> b!849379 (= res!577137 (validKeyInArray!0 k!854))))

(declare-fun res!577133 () Bool)

(assert (=> start!73086 (=> (not res!577133) (not e!473891))))

(assert (=> start!73086 (= res!577133 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23674 _keys!868))))))

(assert (=> start!73086 e!473891))

(declare-fun tp_is_empty!16109 () Bool)

(assert (=> start!73086 tp_is_empty!16109))

(assert (=> start!73086 true))

(assert (=> start!73086 tp!49423))

(declare-fun array_inv!18424 (array!48412) Bool)

(assert (=> start!73086 (array_inv!18424 _keys!868)))

(declare-fun e!473887 () Bool)

(declare-fun array_inv!18425 (array!48410) Bool)

(assert (=> start!73086 (and (array_inv!18425 _values!688) e!473887)))

(declare-fun b!849373 () Bool)

(declare-fun e!473889 () Bool)

(assert (=> b!849373 (= e!473889 tp_is_empty!16109)))

(declare-fun b!849380 () Bool)

(assert (=> b!849380 (= e!473887 (and e!473889 mapRes!25763))))

(declare-fun condMapEmpty!25763 () Bool)

(declare-fun mapDefault!25763 () ValueCell!7615)

