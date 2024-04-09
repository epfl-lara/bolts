; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73034 () Bool)

(assert start!73034)

(declare-fun b_free!13921 () Bool)

(declare-fun b_next!13921 () Bool)

(assert (=> start!73034 (= b_free!13921 (not b_next!13921))))

(declare-fun tp!49267 () Bool)

(declare-fun b_and!23025 () Bool)

(assert (=> start!73034 (= tp!49267 b_and!23025)))

(declare-fun defaultEntry!696 () Int)

(declare-fun bm!37615 () Bool)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((V!26457 0))(
  ( (V!26458 (val!8076 Int)) )
))
(declare-datatypes ((tuple2!10572 0))(
  ( (tuple2!10573 (_1!5296 (_ BitVec 64)) (_2!5296 V!26457)) )
))
(declare-datatypes ((List!16480 0))(
  ( (Nil!16477) (Cons!16476 (h!17607 tuple2!10572) (t!22859 List!16480)) )
))
(declare-datatypes ((ListLongMap!9355 0))(
  ( (ListLongMap!9356 (toList!4693 List!16480)) )
))
(declare-fun call!37618 () ListLongMap!9355)

(declare-datatypes ((array!48306 0))(
  ( (array!48307 (arr!23180 (Array (_ BitVec 32) (_ BitVec 64))) (size!23621 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48306)

(declare-datatypes ((ValueCell!7589 0))(
  ( (ValueCellFull!7589 (v!10497 V!26457)) (EmptyCell!7589) )
))
(declare-datatypes ((array!48308 0))(
  ( (array!48309 (arr!23181 (Array (_ BitVec 32) ValueCell!7589)) (size!23622 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48308)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun minValue!654 () V!26457)

(declare-fun zeroValue!654 () V!26457)

(declare-fun getCurrentListMapNoExtraKeys!2682 (array!48306 array!48308 (_ BitVec 32) (_ BitVec 32) V!26457 V!26457 (_ BitVec 32) Int) ListLongMap!9355)

(assert (=> bm!37615 (= call!37618 (getCurrentListMapNoExtraKeys!2682 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!848154 () Bool)

(declare-fun e!473268 () Bool)

(declare-fun e!473267 () Bool)

(assert (=> b!848154 (= e!473268 (not e!473267))))

(declare-fun res!576356 () Bool)

(assert (=> b!848154 (=> res!576356 e!473267)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!848154 (= res!576356 (not (validKeyInArray!0 (select (arr!23180 _keys!868) from!1053))))))

(declare-fun e!473264 () Bool)

(assert (=> b!848154 e!473264))

(declare-fun c!91470 () Bool)

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!848154 (= c!91470 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-fun v!557 () V!26457)

(declare-fun k!854 () (_ BitVec 64))

(declare-datatypes ((Unit!28948 0))(
  ( (Unit!28949) )
))
(declare-fun lt!381929 () Unit!28948)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!323 (array!48306 array!48308 (_ BitVec 32) (_ BitVec 32) V!26457 V!26457 (_ BitVec 32) (_ BitVec 64) V!26457 (_ BitVec 32) Int) Unit!28948)

(assert (=> b!848154 (= lt!381929 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!323 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun mapIsEmpty!25685 () Bool)

(declare-fun mapRes!25685 () Bool)

(assert (=> mapIsEmpty!25685 mapRes!25685))

(declare-fun b!848155 () Bool)

(declare-fun e!473263 () Bool)

(declare-fun tp_is_empty!16057 () Bool)

(assert (=> b!848155 (= e!473263 tp_is_empty!16057)))

(declare-fun b!848157 () Bool)

(declare-fun res!576354 () Bool)

(declare-fun e!473265 () Bool)

(assert (=> b!848157 (=> (not res!576354) (not e!473265))))

(assert (=> b!848157 (= res!576354 (and (= (select (arr!23180 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!848158 () Bool)

(assert (=> b!848158 (= e!473265 e!473268)))

(declare-fun res!576360 () Bool)

(assert (=> b!848158 (=> (not res!576360) (not e!473268))))

(assert (=> b!848158 (= res!576360 (= from!1053 i!612))))

(declare-fun lt!381930 () ListLongMap!9355)

(declare-fun lt!381927 () array!48308)

(assert (=> b!848158 (= lt!381930 (getCurrentListMapNoExtraKeys!2682 _keys!868 lt!381927 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!848158 (= lt!381927 (array!48309 (store (arr!23181 _values!688) i!612 (ValueCellFull!7589 v!557)) (size!23622 _values!688)))))

(declare-fun lt!381928 () ListLongMap!9355)

(assert (=> b!848158 (= lt!381928 (getCurrentListMapNoExtraKeys!2682 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun call!37619 () ListLongMap!9355)

(declare-fun bm!37616 () Bool)

(assert (=> bm!37616 (= call!37619 (getCurrentListMapNoExtraKeys!2682 _keys!868 lt!381927 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!848159 () Bool)

(declare-fun e!473262 () Bool)

(assert (=> b!848159 (= e!473262 (and e!473263 mapRes!25685))))

(declare-fun condMapEmpty!25685 () Bool)

(declare-fun mapDefault!25685 () ValueCell!7589)

