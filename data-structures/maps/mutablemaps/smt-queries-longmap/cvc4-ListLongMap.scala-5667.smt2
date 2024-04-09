; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73818 () Bool)

(assert start!73818)

(declare-fun b_free!14705 () Bool)

(declare-fun b_next!14705 () Bool)

(assert (=> start!73818 (= b_free!14705 (not b_next!14705))))

(declare-fun tp!51619 () Bool)

(declare-fun b_and!24407 () Bool)

(assert (=> start!73818 (= tp!51619 b_and!24407)))

(declare-fun b!865725 () Bool)

(declare-fun res!588346 () Bool)

(declare-fun e!482295 () Bool)

(assert (=> b!865725 (=> (not res!588346) (not e!482295))))

(declare-datatypes ((array!49826 0))(
  ( (array!49827 (arr!23940 (Array (_ BitVec 32) (_ BitVec 64))) (size!24381 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49826)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49826 (_ BitVec 32)) Bool)

(assert (=> b!865725 (= res!588346 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun res!588352 () Bool)

(assert (=> start!73818 (=> (not res!588352) (not e!482295))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!73818 (= res!588352 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24381 _keys!868))))))

(assert (=> start!73818 e!482295))

(declare-fun tp_is_empty!16841 () Bool)

(assert (=> start!73818 tp_is_empty!16841))

(assert (=> start!73818 true))

(assert (=> start!73818 tp!51619))

(declare-fun array_inv!18906 (array!49826) Bool)

(assert (=> start!73818 (array_inv!18906 _keys!868)))

(declare-datatypes ((V!27501 0))(
  ( (V!27502 (val!8468 Int)) )
))
(declare-datatypes ((ValueCell!7981 0))(
  ( (ValueCellFull!7981 (v!10889 V!27501)) (EmptyCell!7981) )
))
(declare-datatypes ((array!49828 0))(
  ( (array!49829 (arr!23941 (Array (_ BitVec 32) ValueCell!7981)) (size!24382 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49828)

(declare-fun e!482292 () Bool)

(declare-fun array_inv!18907 (array!49828) Bool)

(assert (=> start!73818 (and (array_inv!18907 _values!688) e!482292)))

(declare-fun b!865726 () Bool)

(declare-fun res!588345 () Bool)

(assert (=> b!865726 (=> (not res!588345) (not e!482295))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!865726 (= res!588345 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24381 _keys!868))))))

(declare-fun mapIsEmpty!26861 () Bool)

(declare-fun mapRes!26861 () Bool)

(assert (=> mapIsEmpty!26861 mapRes!26861))

(declare-fun b!865727 () Bool)

(declare-fun e!482296 () Bool)

(declare-fun e!482293 () Bool)

(assert (=> b!865727 (= e!482296 e!482293)))

(declare-fun res!588353 () Bool)

(assert (=> b!865727 (=> res!588353 e!482293)))

(declare-fun k!854 () (_ BitVec 64))

(assert (=> b!865727 (= res!588353 (= k!854 (select (arr!23940 _keys!868) from!1053)))))

(assert (=> b!865727 (not (= (select (arr!23940 _keys!868) from!1053) k!854))))

(declare-datatypes ((Unit!29640 0))(
  ( (Unit!29641) )
))
(declare-fun lt!392515 () Unit!29640)

(declare-fun e!482291 () Unit!29640)

(assert (=> b!865727 (= lt!392515 e!482291)))

(declare-fun c!92196 () Bool)

(assert (=> b!865727 (= c!92196 (= (select (arr!23940 _keys!868) from!1053) k!854))))

(declare-datatypes ((tuple2!11228 0))(
  ( (tuple2!11229 (_1!5624 (_ BitVec 64)) (_2!5624 V!27501)) )
))
(declare-datatypes ((List!17093 0))(
  ( (Nil!17090) (Cons!17089 (h!18220 tuple2!11228) (t!24072 List!17093)) )
))
(declare-datatypes ((ListLongMap!10011 0))(
  ( (ListLongMap!10012 (toList!5021 List!17093)) )
))
(declare-fun lt!392516 () ListLongMap!10011)

(declare-fun lt!392519 () ListLongMap!10011)

(assert (=> b!865727 (= lt!392516 lt!392519)))

(declare-fun lt!392521 () ListLongMap!10011)

(declare-fun lt!392528 () tuple2!11228)

(declare-fun +!2317 (ListLongMap!10011 tuple2!11228) ListLongMap!10011)

(assert (=> b!865727 (= lt!392519 (+!2317 lt!392521 lt!392528))))

(declare-fun lt!392526 () V!27501)

(assert (=> b!865727 (= lt!392528 (tuple2!11229 (select (arr!23940 _keys!868) from!1053) lt!392526))))

(declare-fun defaultEntry!696 () Int)

(declare-fun get!12669 (ValueCell!7981 V!27501) V!27501)

(declare-fun dynLambda!1185 (Int (_ BitVec 64)) V!27501)

(assert (=> b!865727 (= lt!392526 (get!12669 (select (arr!23941 _values!688) from!1053) (dynLambda!1185 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!865728 () Bool)

(declare-fun Unit!29642 () Unit!29640)

(assert (=> b!865728 (= e!482291 Unit!29642)))

(declare-fun b!865729 () Bool)

(declare-fun e!482298 () Bool)

(assert (=> b!865729 (= e!482298 (not e!482296))))

(declare-fun res!588349 () Bool)

(assert (=> b!865729 (=> res!588349 e!482296)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!865729 (= res!588349 (not (validKeyInArray!0 (select (arr!23940 _keys!868) from!1053))))))

(declare-fun lt!392524 () ListLongMap!10011)

(assert (=> b!865729 (= lt!392524 lt!392521)))

(declare-fun lt!392514 () ListLongMap!10011)

(declare-fun lt!392520 () tuple2!11228)

(assert (=> b!865729 (= lt!392521 (+!2317 lt!392514 lt!392520))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun minValue!654 () V!27501)

(declare-fun zeroValue!654 () V!27501)

(declare-fun lt!392518 () array!49828)

(declare-fun getCurrentListMapNoExtraKeys!2989 (array!49826 array!49828 (_ BitVec 32) (_ BitVec 32) V!27501 V!27501 (_ BitVec 32) Int) ListLongMap!10011)

(assert (=> b!865729 (= lt!392524 (getCurrentListMapNoExtraKeys!2989 _keys!868 lt!392518 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun v!557 () V!27501)

(assert (=> b!865729 (= lt!392520 (tuple2!11229 k!854 v!557))))

(assert (=> b!865729 (= lt!392514 (getCurrentListMapNoExtraKeys!2989 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun lt!392525 () Unit!29640)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!555 (array!49826 array!49828 (_ BitVec 32) (_ BitVec 32) V!27501 V!27501 (_ BitVec 32) (_ BitVec 64) V!27501 (_ BitVec 32) Int) Unit!29640)

(assert (=> b!865729 (= lt!392525 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!555 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!865730 () Bool)

(declare-fun Unit!29643 () Unit!29640)

(assert (=> b!865730 (= e!482291 Unit!29643)))

(declare-fun lt!392522 () Unit!29640)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!49826 (_ BitVec 32) (_ BitVec 32)) Unit!29640)

(assert (=> b!865730 (= lt!392522 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(declare-datatypes ((List!17094 0))(
  ( (Nil!17091) (Cons!17090 (h!18221 (_ BitVec 64)) (t!24073 List!17094)) )
))
(declare-fun arrayNoDuplicates!0 (array!49826 (_ BitVec 32) List!17094) Bool)

(assert (=> b!865730 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!17091)))

(declare-fun lt!392517 () Unit!29640)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!49826 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!29640)

(assert (=> b!865730 (= lt!392517 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!868 k!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)))))

(declare-fun arrayContainsKey!0 (array!49826 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!865730 (arrayContainsKey!0 _keys!868 k!854 (bvadd #b00000000000000000000000000000001 from!1053))))

(declare-fun lt!392529 () Unit!29640)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!49826 (_ BitVec 64) (_ BitVec 32) List!17094) Unit!29640)

(assert (=> b!865730 (= lt!392529 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!868 k!854 from!1053 Nil!17091))))

(assert (=> b!865730 false))

(declare-fun b!865731 () Bool)

(declare-fun e!482290 () Bool)

(assert (=> b!865731 (= e!482292 (and e!482290 mapRes!26861))))

(declare-fun condMapEmpty!26861 () Bool)

(declare-fun mapDefault!26861 () ValueCell!7981)

