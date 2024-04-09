; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73080 () Bool)

(assert start!73080)

(declare-fun b_free!13967 () Bool)

(declare-fun b_next!13967 () Bool)

(assert (=> start!73080 (= b_free!13967 (not b_next!13967))))

(declare-fun tp!49406 () Bool)

(declare-fun b_and!23111 () Bool)

(assert (=> start!73080 (= tp!49406 b_and!23111)))

(declare-fun b!849229 () Bool)

(declare-fun e!473816 () Bool)

(declare-fun e!473815 () Bool)

(assert (=> b!849229 (= e!473816 e!473815)))

(declare-fun res!577048 () Bool)

(assert (=> b!849229 (=> (not res!577048) (not e!473815))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!849229 (= res!577048 (= from!1053 i!612))))

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((V!26517 0))(
  ( (V!26518 (val!8099 Int)) )
))
(declare-datatypes ((tuple2!10616 0))(
  ( (tuple2!10617 (_1!5318 (_ BitVec 64)) (_2!5318 V!26517)) )
))
(declare-datatypes ((List!16517 0))(
  ( (Nil!16514) (Cons!16513 (h!17644 tuple2!10616) (t!22938 List!16517)) )
))
(declare-datatypes ((ListLongMap!9399 0))(
  ( (ListLongMap!9400 (toList!4715 List!16517)) )
))
(declare-fun lt!382205 () ListLongMap!9399)

(declare-datatypes ((array!48398 0))(
  ( (array!48399 (arr!23226 (Array (_ BitVec 32) (_ BitVec 64))) (size!23667 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48398)

(declare-fun minValue!654 () V!26517)

(declare-fun zeroValue!654 () V!26517)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((ValueCell!7612 0))(
  ( (ValueCellFull!7612 (v!10520 V!26517)) (EmptyCell!7612) )
))
(declare-datatypes ((array!48400 0))(
  ( (array!48401 (arr!23227 (Array (_ BitVec 32) ValueCell!7612)) (size!23668 (_ BitVec 32))) )
))
(declare-fun lt!382206 () array!48400)

(declare-fun getCurrentListMapNoExtraKeys!2703 (array!48398 array!48400 (_ BitVec 32) (_ BitVec 32) V!26517 V!26517 (_ BitVec 32) Int) ListLongMap!9399)

(assert (=> b!849229 (= lt!382205 (getCurrentListMapNoExtraKeys!2703 _keys!868 lt!382206 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!26517)

(declare-fun _values!688 () array!48400)

(assert (=> b!849229 (= lt!382206 (array!48401 (store (arr!23227 _values!688) i!612 (ValueCellFull!7612 v!557)) (size!23668 _values!688)))))

(declare-fun lt!382203 () ListLongMap!9399)

(assert (=> b!849229 (= lt!382203 (getCurrentListMapNoExtraKeys!2703 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!849230 () Bool)

(declare-fun res!577044 () Bool)

(assert (=> b!849230 (=> (not res!577044) (not e!473816))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!849230 (= res!577044 (validMask!0 mask!1196))))

(declare-fun b!849231 () Bool)

(declare-fun res!577041 () Bool)

(assert (=> b!849231 (=> (not res!577041) (not e!473816))))

(assert (=> b!849231 (= res!577041 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23667 _keys!868))))))

(declare-fun b!849232 () Bool)

(declare-fun res!577042 () Bool)

(assert (=> b!849232 (=> (not res!577042) (not e!473816))))

(declare-fun k!854 () (_ BitVec 64))

(assert (=> b!849232 (= res!577042 (and (= (select (arr!23226 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!849233 () Bool)

(declare-fun e!473817 () Bool)

(declare-fun call!37757 () ListLongMap!9399)

(declare-fun call!37756 () ListLongMap!9399)

(assert (=> b!849233 (= e!473817 (= call!37757 call!37756))))

(declare-fun bm!37753 () Bool)

(assert (=> bm!37753 (= call!37757 (getCurrentListMapNoExtraKeys!2703 _keys!868 lt!382206 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun mapIsEmpty!25754 () Bool)

(declare-fun mapRes!25754 () Bool)

(assert (=> mapIsEmpty!25754 mapRes!25754))

(declare-fun bm!37754 () Bool)

(assert (=> bm!37754 (= call!37756 (getCurrentListMapNoExtraKeys!2703 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!849235 () Bool)

(declare-fun res!577043 () Bool)

(assert (=> b!849235 (=> (not res!577043) (not e!473816))))

(assert (=> b!849235 (= res!577043 (and (= (size!23668 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23667 _keys!868) (size!23668 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!849236 () Bool)

(declare-fun res!577049 () Bool)

(assert (=> b!849236 (=> (not res!577049) (not e!473816))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48398 (_ BitVec 32)) Bool)

(assert (=> b!849236 (= res!577049 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun mapNonEmpty!25754 () Bool)

(declare-fun tp!49405 () Bool)

(declare-fun e!473818 () Bool)

(assert (=> mapNonEmpty!25754 (= mapRes!25754 (and tp!49405 e!473818))))

(declare-fun mapKey!25754 () (_ BitVec 32))

(declare-fun mapRest!25754 () (Array (_ BitVec 32) ValueCell!7612))

(declare-fun mapValue!25754 () ValueCell!7612)

(assert (=> mapNonEmpty!25754 (= (arr!23227 _values!688) (store mapRest!25754 mapKey!25754 mapValue!25754))))

(declare-fun b!849237 () Bool)

(declare-fun e!473814 () Bool)

(assert (=> b!849237 (= e!473814 true)))

(declare-fun +!2060 (ListLongMap!9399 tuple2!10616) ListLongMap!9399)

(declare-fun get!12234 (ValueCell!7612 V!26517) V!26517)

(declare-fun dynLambda!996 (Int (_ BitVec 64)) V!26517)

(assert (=> b!849237 (= lt!382205 (+!2060 (getCurrentListMapNoExtraKeys!2703 _keys!868 lt!382206 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (tuple2!10617 (select (arr!23226 _keys!868) from!1053) (get!12234 (select (arr!23227 lt!382206) from!1053) (dynLambda!996 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!849238 () Bool)

(assert (=> b!849238 (= e!473817 (= call!37757 (+!2060 call!37756 (tuple2!10617 k!854 v!557))))))

(declare-fun b!849239 () Bool)

(declare-fun res!577047 () Bool)

(assert (=> b!849239 (=> (not res!577047) (not e!473816))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!849239 (= res!577047 (validKeyInArray!0 k!854))))

(declare-fun b!849240 () Bool)

(declare-fun tp_is_empty!16103 () Bool)

(assert (=> b!849240 (= e!473818 tp_is_empty!16103)))

(declare-fun b!849241 () Bool)

(declare-fun e!473813 () Bool)

(declare-fun e!473819 () Bool)

(assert (=> b!849241 (= e!473813 (and e!473819 mapRes!25754))))

(declare-fun condMapEmpty!25754 () Bool)

(declare-fun mapDefault!25754 () ValueCell!7612)

