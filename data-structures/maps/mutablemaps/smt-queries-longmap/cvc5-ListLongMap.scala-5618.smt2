; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73520 () Bool)

(assert start!73520)

(declare-fun b_free!14407 () Bool)

(declare-fun b_next!14407 () Bool)

(assert (=> start!73520 (= b_free!14407 (not b_next!14407))))

(declare-fun tp!50725 () Bool)

(declare-fun b_and!23811 () Bool)

(assert (=> start!73520 (= tp!50725 b_and!23811)))

(declare-fun b!858388 () Bool)

(declare-fun e!478413 () Bool)

(declare-fun e!478411 () Bool)

(assert (=> b!858388 (= e!478413 e!478411)))

(declare-fun res!583274 () Bool)

(assert (=> b!858388 (=> (not res!583274) (not e!478411))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!858388 (= res!583274 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-datatypes ((V!27105 0))(
  ( (V!27106 (val!8319 Int)) )
))
(declare-datatypes ((ValueCell!7832 0))(
  ( (ValueCellFull!7832 (v!10740 V!27105)) (EmptyCell!7832) )
))
(declare-datatypes ((array!49246 0))(
  ( (array!49247 (arr!23650 (Array (_ BitVec 32) ValueCell!7832)) (size!24091 (_ BitVec 32))) )
))
(declare-fun lt!386716 () array!49246)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((tuple2!10964 0))(
  ( (tuple2!10965 (_1!5492 (_ BitVec 64)) (_2!5492 V!27105)) )
))
(declare-datatypes ((List!16836 0))(
  ( (Nil!16833) (Cons!16832 (h!17963 tuple2!10964) (t!23517 List!16836)) )
))
(declare-datatypes ((ListLongMap!9747 0))(
  ( (ListLongMap!9748 (toList!4889 List!16836)) )
))
(declare-fun lt!386720 () ListLongMap!9747)

(declare-datatypes ((array!49248 0))(
  ( (array!49249 (arr!23651 (Array (_ BitVec 32) (_ BitVec 64))) (size!24092 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49248)

(declare-fun minValue!654 () V!27105)

(declare-fun zeroValue!654 () V!27105)

(declare-fun getCurrentListMapNoExtraKeys!2871 (array!49248 array!49246 (_ BitVec 32) (_ BitVec 32) V!27105 V!27105 (_ BitVec 32) Int) ListLongMap!9747)

(assert (=> b!858388 (= lt!386720 (getCurrentListMapNoExtraKeys!2871 _keys!868 lt!386716 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!27105)

(declare-fun _values!688 () array!49246)

(assert (=> b!858388 (= lt!386716 (array!49247 (store (arr!23650 _values!688) i!612 (ValueCellFull!7832 v!557)) (size!24091 _values!688)))))

(declare-fun lt!386719 () ListLongMap!9747)

(assert (=> b!858388 (= lt!386719 (getCurrentListMapNoExtraKeys!2871 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!858389 () Bool)

(declare-fun res!583284 () Bool)

(assert (=> b!858389 (=> (not res!583284) (not e!478413))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!858389 (= res!583284 (validKeyInArray!0 k!854))))

(declare-fun mapNonEmpty!26414 () Bool)

(declare-fun mapRes!26414 () Bool)

(declare-fun tp!50726 () Bool)

(declare-fun e!478412 () Bool)

(assert (=> mapNonEmpty!26414 (= mapRes!26414 (and tp!50726 e!478412))))

(declare-fun mapKey!26414 () (_ BitVec 32))

(declare-fun mapRest!26414 () (Array (_ BitVec 32) ValueCell!7832))

(declare-fun mapValue!26414 () ValueCell!7832)

(assert (=> mapNonEmpty!26414 (= (arr!23650 _values!688) (store mapRest!26414 mapKey!26414 mapValue!26414))))

(declare-fun b!858390 () Bool)

(declare-fun res!583278 () Bool)

(assert (=> b!858390 (=> (not res!583278) (not e!478413))))

(declare-datatypes ((List!16837 0))(
  ( (Nil!16834) (Cons!16833 (h!17964 (_ BitVec 64)) (t!23518 List!16837)) )
))
(declare-fun arrayNoDuplicates!0 (array!49248 (_ BitVec 32) List!16837) Bool)

(assert (=> b!858390 (= res!583278 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16834))))

(declare-fun b!858391 () Bool)

(declare-fun e!478414 () Bool)

(declare-fun tp_is_empty!16543 () Bool)

(assert (=> b!858391 (= e!478414 tp_is_empty!16543)))

(declare-fun b!858392 () Bool)

(declare-fun e!478409 () Bool)

(assert (=> b!858392 (= e!478409 true)))

(assert (=> b!858392 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!16834)))

(declare-datatypes ((Unit!29230 0))(
  ( (Unit!29231) )
))
(declare-fun lt!386714 () Unit!29230)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!49248 (_ BitVec 32) (_ BitVec 32)) Unit!29230)

(assert (=> b!858392 (= lt!386714 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(declare-fun b!858393 () Bool)

(declare-fun res!583279 () Bool)

(assert (=> b!858393 (=> (not res!583279) (not e!478413))))

(assert (=> b!858393 (= res!583279 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24092 _keys!868))))))

(declare-fun b!858394 () Bool)

(declare-fun res!583283 () Bool)

(assert (=> b!858394 (=> (not res!583283) (not e!478413))))

(assert (=> b!858394 (= res!583283 (and (= (size!24091 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24092 _keys!868) (size!24091 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!858395 () Bool)

(declare-fun res!583280 () Bool)

(assert (=> b!858395 (=> (not res!583280) (not e!478413))))

(assert (=> b!858395 (= res!583280 (and (= (select (arr!23651 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun mapIsEmpty!26414 () Bool)

(assert (=> mapIsEmpty!26414 mapRes!26414))

(declare-fun b!858397 () Bool)

(declare-fun e!478416 () Bool)

(assert (=> b!858397 (= e!478416 (and e!478414 mapRes!26414))))

(declare-fun condMapEmpty!26414 () Bool)

(declare-fun mapDefault!26414 () ValueCell!7832)

