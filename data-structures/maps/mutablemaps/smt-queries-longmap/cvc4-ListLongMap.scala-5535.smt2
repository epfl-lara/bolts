; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73026 () Bool)

(assert start!73026)

(declare-fun b_free!13913 () Bool)

(declare-fun b_next!13913 () Bool)

(assert (=> start!73026 (= b_free!13913 (not b_next!13913))))

(declare-fun tp!49244 () Bool)

(declare-fun b_and!23017 () Bool)

(assert (=> start!73026 (= tp!49244 b_and!23017)))

(declare-fun b!847984 () Bool)

(declare-fun e!473177 () Bool)

(declare-fun tp_is_empty!16049 () Bool)

(assert (=> b!847984 (= e!473177 tp_is_empty!16049)))

(declare-fun b!847985 () Bool)

(declare-fun res!576247 () Bool)

(declare-fun e!473176 () Bool)

(assert (=> b!847985 (=> (not res!576247) (not e!473176))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((array!48290 0))(
  ( (array!48291 (arr!23172 (Array (_ BitVec 32) (_ BitVec 64))) (size!23613 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48290)

(assert (=> b!847985 (= res!576247 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23613 _keys!868))))))

(declare-fun defaultEntry!696 () Int)

(declare-fun bm!37591 () Bool)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((V!26445 0))(
  ( (V!26446 (val!8072 Int)) )
))
(declare-datatypes ((ValueCell!7585 0))(
  ( (ValueCellFull!7585 (v!10493 V!26445)) (EmptyCell!7585) )
))
(declare-datatypes ((array!48292 0))(
  ( (array!48293 (arr!23173 (Array (_ BitVec 32) ValueCell!7585)) (size!23614 (_ BitVec 32))) )
))
(declare-fun lt!381881 () array!48292)

(declare-datatypes ((tuple2!10566 0))(
  ( (tuple2!10567 (_1!5293 (_ BitVec 64)) (_2!5293 V!26445)) )
))
(declare-datatypes ((List!16474 0))(
  ( (Nil!16471) (Cons!16470 (h!17601 tuple2!10566) (t!22853 List!16474)) )
))
(declare-datatypes ((ListLongMap!9349 0))(
  ( (ListLongMap!9350 (toList!4690 List!16474)) )
))
(declare-fun call!37594 () ListLongMap!9349)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun minValue!654 () V!26445)

(declare-fun zeroValue!654 () V!26445)

(declare-fun getCurrentListMapNoExtraKeys!2679 (array!48290 array!48292 (_ BitVec 32) (_ BitVec 32) V!26445 V!26445 (_ BitVec 32) Int) ListLongMap!9349)

(assert (=> bm!37591 (= call!37594 (getCurrentListMapNoExtraKeys!2679 _keys!868 lt!381881 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!847986 () Bool)

(declare-fun e!473179 () Bool)

(assert (=> b!847986 (= e!473176 e!473179)))

(declare-fun res!576243 () Bool)

(assert (=> b!847986 (=> (not res!576243) (not e!473179))))

(assert (=> b!847986 (= res!576243 (= from!1053 i!612))))

(declare-fun lt!381880 () ListLongMap!9349)

(assert (=> b!847986 (= lt!381880 (getCurrentListMapNoExtraKeys!2679 _keys!868 lt!381881 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!26445)

(declare-fun _values!688 () array!48292)

(assert (=> b!847986 (= lt!381881 (array!48293 (store (arr!23173 _values!688) i!612 (ValueCellFull!7585 v!557)) (size!23614 _values!688)))))

(declare-fun lt!381879 () ListLongMap!9349)

(assert (=> b!847986 (= lt!381879 (getCurrentListMapNoExtraKeys!2679 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!847987 () Bool)

(declare-fun e!473181 () Bool)

(assert (=> b!847987 (= e!473181 tp_is_empty!16049)))

(declare-fun b!847988 () Bool)

(declare-fun res!576244 () Bool)

(assert (=> b!847988 (=> (not res!576244) (not e!473176))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!847988 (= res!576244 (validKeyInArray!0 k!854))))

(declare-fun b!847989 () Bool)

(declare-fun e!473175 () Bool)

(declare-fun mapRes!25673 () Bool)

(assert (=> b!847989 (= e!473175 (and e!473177 mapRes!25673))))

(declare-fun condMapEmpty!25673 () Bool)

(declare-fun mapDefault!25673 () ValueCell!7585)

