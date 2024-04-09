; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73112 () Bool)

(assert start!73112)

(declare-fun b_free!13999 () Bool)

(declare-fun b_next!13999 () Bool)

(assert (=> start!73112 (= b_free!13999 (not b_next!13999))))

(declare-fun tp!49502 () Bool)

(declare-fun b_and!23175 () Bool)

(assert (=> start!73112 (= tp!49502 b_and!23175)))

(declare-fun b!849981 () Bool)

(declare-fun res!577527 () Bool)

(declare-fun e!474204 () Bool)

(assert (=> b!849981 (=> (not res!577527) (not e!474204))))

(declare-datatypes ((array!48462 0))(
  ( (array!48463 (arr!23258 (Array (_ BitVec 32) (_ BitVec 64))) (size!23699 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48462)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48462 (_ BitVec 32)) Bool)

(assert (=> b!849981 (= res!577527 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!849982 () Bool)

(declare-fun res!577523 () Bool)

(assert (=> b!849982 (=> (not res!577523) (not e!474204))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!849982 (= res!577523 (validMask!0 mask!1196))))

(declare-fun b!849983 () Bool)

(declare-fun e!474201 () Bool)

(declare-datatypes ((V!26561 0))(
  ( (V!26562 (val!8115 Int)) )
))
(declare-datatypes ((tuple2!10646 0))(
  ( (tuple2!10647 (_1!5333 (_ BitVec 64)) (_2!5333 V!26561)) )
))
(declare-datatypes ((List!16544 0))(
  ( (Nil!16541) (Cons!16540 (h!17671 tuple2!10646) (t!22997 List!16544)) )
))
(declare-datatypes ((ListLongMap!9429 0))(
  ( (ListLongMap!9430 (toList!4730 List!16544)) )
))
(declare-fun call!37853 () ListLongMap!9429)

(declare-fun call!37852 () ListLongMap!9429)

(assert (=> b!849983 (= e!474201 (= call!37853 call!37852))))

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((ValueCell!7628 0))(
  ( (ValueCellFull!7628 (v!10536 V!26561)) (EmptyCell!7628) )
))
(declare-datatypes ((array!48464 0))(
  ( (array!48465 (arr!23259 (Array (_ BitVec 32) ValueCell!7628)) (size!23700 (_ BitVec 32))) )
))
(declare-fun lt!382573 () array!48464)

(declare-fun minValue!654 () V!26561)

(declare-fun zeroValue!654 () V!26561)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun bm!37849 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!2717 (array!48462 array!48464 (_ BitVec 32) (_ BitVec 32) V!26561 V!26561 (_ BitVec 32) Int) ListLongMap!9429)

(assert (=> bm!37849 (= call!37853 (getCurrentListMapNoExtraKeys!2717 _keys!868 lt!382573 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun mapNonEmpty!25802 () Bool)

(declare-fun mapRes!25802 () Bool)

(declare-fun tp!49501 () Bool)

(declare-fun e!474199 () Bool)

(assert (=> mapNonEmpty!25802 (= mapRes!25802 (and tp!49501 e!474199))))

(declare-fun mapRest!25802 () (Array (_ BitVec 32) ValueCell!7628))

(declare-fun mapValue!25802 () ValueCell!7628)

(declare-fun _values!688 () array!48464)

(declare-fun mapKey!25802 () (_ BitVec 32))

(assert (=> mapNonEmpty!25802 (= (arr!23259 _values!688) (store mapRest!25802 mapKey!25802 mapValue!25802))))

(declare-fun res!577530 () Bool)

(assert (=> start!73112 (=> (not res!577530) (not e!474204))))

(assert (=> start!73112 (= res!577530 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23699 _keys!868))))))

(assert (=> start!73112 e!474204))

(declare-fun tp_is_empty!16135 () Bool)

(assert (=> start!73112 tp_is_empty!16135))

(assert (=> start!73112 true))

(assert (=> start!73112 tp!49502))

(declare-fun array_inv!18444 (array!48462) Bool)

(assert (=> start!73112 (array_inv!18444 _keys!868)))

(declare-fun e!474197 () Bool)

(declare-fun array_inv!18445 (array!48464) Bool)

(assert (=> start!73112 (and (array_inv!18445 _values!688) e!474197)))

(declare-fun b!849984 () Bool)

(declare-fun e!474202 () Bool)

(declare-fun e!474200 () Bool)

(assert (=> b!849984 (= e!474202 (not e!474200))))

(declare-fun res!577525 () Bool)

(assert (=> b!849984 (=> res!577525 e!474200)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!849984 (= res!577525 (not (validKeyInArray!0 (select (arr!23258 _keys!868) from!1053))))))

(assert (=> b!849984 e!474201))

(declare-fun c!91587 () Bool)

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!849984 (= c!91587 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-fun v!557 () V!26561)

(declare-datatypes ((Unit!28998 0))(
  ( (Unit!28999) )
))
(declare-fun lt!382574 () Unit!28998)

(declare-fun k!854 () (_ BitVec 64))

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!346 (array!48462 array!48464 (_ BitVec 32) (_ BitVec 32) V!26561 V!26561 (_ BitVec 32) (_ BitVec 64) V!26561 (_ BitVec 32) Int) Unit!28998)

(assert (=> b!849984 (= lt!382574 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!346 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!849985 () Bool)

(declare-fun res!577529 () Bool)

(assert (=> b!849985 (=> (not res!577529) (not e!474204))))

(assert (=> b!849985 (= res!577529 (validKeyInArray!0 k!854))))

(declare-fun b!849986 () Bool)

(declare-fun e!474203 () Bool)

(assert (=> b!849986 (= e!474203 tp_is_empty!16135)))

(declare-fun b!849987 () Bool)

(assert (=> b!849987 (= e!474200 true)))

(declare-fun lt!382578 () ListLongMap!9429)

(declare-fun lt!382577 () tuple2!10646)

(declare-fun lt!382572 () V!26561)

(declare-fun +!2075 (ListLongMap!9429 tuple2!10646) ListLongMap!9429)

(assert (=> b!849987 (= (+!2075 lt!382578 lt!382577) (+!2075 (+!2075 lt!382578 (tuple2!10647 k!854 lt!382572)) lt!382577))))

(declare-fun lt!382570 () V!26561)

(assert (=> b!849987 (= lt!382577 (tuple2!10647 k!854 lt!382570))))

(declare-fun lt!382571 () Unit!28998)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!262 (ListLongMap!9429 (_ BitVec 64) V!26561 V!26561) Unit!28998)

(assert (=> b!849987 (= lt!382571 (addSameAsAddTwiceSameKeyDiffValues!262 lt!382578 k!854 lt!382572 lt!382570))))

(declare-fun lt!382569 () V!26561)

(declare-fun get!12260 (ValueCell!7628 V!26561) V!26561)

(assert (=> b!849987 (= lt!382572 (get!12260 (select (arr!23259 _values!688) from!1053) lt!382569))))

(declare-fun lt!382575 () ListLongMap!9429)

(assert (=> b!849987 (= lt!382575 (+!2075 lt!382578 (tuple2!10647 (select (arr!23258 _keys!868) from!1053) lt!382570)))))

(assert (=> b!849987 (= lt!382570 (get!12260 (select (store (arr!23259 _values!688) i!612 (ValueCellFull!7628 v!557)) from!1053) lt!382569))))

(declare-fun dynLambda!1010 (Int (_ BitVec 64)) V!26561)

(assert (=> b!849987 (= lt!382569 (dynLambda!1010 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!849987 (= lt!382578 (getCurrentListMapNoExtraKeys!2717 _keys!868 lt!382573 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!849988 () Bool)

(assert (=> b!849988 (= e!474201 (= call!37853 (+!2075 call!37852 (tuple2!10647 k!854 v!557))))))

(declare-fun b!849989 () Bool)

(declare-fun res!577522 () Bool)

(assert (=> b!849989 (=> (not res!577522) (not e!474204))))

(assert (=> b!849989 (= res!577522 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23699 _keys!868))))))

(declare-fun b!849990 () Bool)

(assert (=> b!849990 (= e!474197 (and e!474203 mapRes!25802))))

(declare-fun condMapEmpty!25802 () Bool)

(declare-fun mapDefault!25802 () ValueCell!7628)

