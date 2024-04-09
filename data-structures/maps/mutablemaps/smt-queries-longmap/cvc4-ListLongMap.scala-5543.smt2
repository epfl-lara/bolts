; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73074 () Bool)

(assert start!73074)

(declare-fun b_free!13961 () Bool)

(declare-fun b_next!13961 () Bool)

(assert (=> start!73074 (= b_free!13961 (not b_next!13961))))

(declare-fun tp!49388 () Bool)

(declare-fun b_and!23099 () Bool)

(assert (=> start!73074 (= tp!49388 b_and!23099)))

(declare-fun b!849088 () Bool)

(declare-fun res!576958 () Bool)

(declare-fun e!473745 () Bool)

(assert (=> b!849088 (=> (not res!576958) (not e!473745))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((array!48386 0))(
  ( (array!48387 (arr!23220 (Array (_ BitVec 32) (_ BitVec 64))) (size!23661 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48386)

(assert (=> b!849088 (= res!576958 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23661 _keys!868))))))

(declare-fun b!849089 () Bool)

(declare-fun e!473748 () Bool)

(assert (=> b!849089 (= e!473745 e!473748)))

(declare-fun res!576957 () Bool)

(assert (=> b!849089 (=> (not res!576957) (not e!473748))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!849089 (= res!576957 (= from!1053 i!612))))

(declare-datatypes ((V!26509 0))(
  ( (V!26510 (val!8096 Int)) )
))
(declare-datatypes ((tuple2!10610 0))(
  ( (tuple2!10611 (_1!5315 (_ BitVec 64)) (_2!5315 V!26509)) )
))
(declare-datatypes ((List!16512 0))(
  ( (Nil!16509) (Cons!16508 (h!17639 tuple2!10610) (t!22927 List!16512)) )
))
(declare-datatypes ((ListLongMap!9393 0))(
  ( (ListLongMap!9394 (toList!4712 List!16512)) )
))
(declare-fun lt!382169 () ListLongMap!9393)

(declare-fun defaultEntry!696 () Int)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun minValue!654 () V!26509)

(declare-fun zeroValue!654 () V!26509)

(declare-datatypes ((ValueCell!7609 0))(
  ( (ValueCellFull!7609 (v!10517 V!26509)) (EmptyCell!7609) )
))
(declare-datatypes ((array!48388 0))(
  ( (array!48389 (arr!23221 (Array (_ BitVec 32) ValueCell!7609)) (size!23662 (_ BitVec 32))) )
))
(declare-fun lt!382168 () array!48388)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!2700 (array!48386 array!48388 (_ BitVec 32) (_ BitVec 32) V!26509 V!26509 (_ BitVec 32) Int) ListLongMap!9393)

(assert (=> b!849089 (= lt!382169 (getCurrentListMapNoExtraKeys!2700 _keys!868 lt!382168 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!26509)

(declare-fun _values!688 () array!48388)

(assert (=> b!849089 (= lt!382168 (array!48389 (store (arr!23221 _values!688) i!612 (ValueCellFull!7609 v!557)) (size!23662 _values!688)))))

(declare-fun lt!382167 () ListLongMap!9393)

(assert (=> b!849089 (= lt!382167 (getCurrentListMapNoExtraKeys!2700 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun bm!37735 () Bool)

(declare-fun call!37739 () ListLongMap!9393)

(assert (=> bm!37735 (= call!37739 (getCurrentListMapNoExtraKeys!2700 _keys!868 lt!382168 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!849090 () Bool)

(declare-fun res!576954 () Bool)

(assert (=> b!849090 (=> (not res!576954) (not e!473745))))

(declare-fun k!854 () (_ BitVec 64))

(assert (=> b!849090 (= res!576954 (and (= (select (arr!23220 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!849091 () Bool)

(declare-fun e!473742 () Bool)

(declare-fun e!473747 () Bool)

(declare-fun mapRes!25745 () Bool)

(assert (=> b!849091 (= e!473742 (and e!473747 mapRes!25745))))

(declare-fun condMapEmpty!25745 () Bool)

(declare-fun mapDefault!25745 () ValueCell!7609)

