; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73506 () Bool)

(assert start!73506)

(declare-fun b_free!14393 () Bool)

(declare-fun b_next!14393 () Bool)

(assert (=> start!73506 (= b_free!14393 (not b_next!14393))))

(declare-fun tp!50684 () Bool)

(declare-fun b_and!23783 () Bool)

(assert (=> start!73506 (= tp!50684 b_and!23783)))

(declare-fun b!858099 () Bool)

(declare-fun res!583067 () Bool)

(declare-fun e!478260 () Bool)

(assert (=> b!858099 (=> (not res!583067) (not e!478260))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((array!49218 0))(
  ( (array!49219 (arr!23636 (Array (_ BitVec 32) (_ BitVec 64))) (size!24077 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49218)

(assert (=> b!858099 (= res!583067 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24077 _keys!868))))))

(declare-fun res!583064 () Bool)

(assert (=> start!73506 (=> (not res!583064) (not e!478260))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!73506 (= res!583064 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24077 _keys!868))))))

(assert (=> start!73506 e!478260))

(declare-fun tp_is_empty!16529 () Bool)

(assert (=> start!73506 tp_is_empty!16529))

(assert (=> start!73506 true))

(assert (=> start!73506 tp!50684))

(declare-fun array_inv!18698 (array!49218) Bool)

(assert (=> start!73506 (array_inv!18698 _keys!868)))

(declare-datatypes ((V!27085 0))(
  ( (V!27086 (val!8312 Int)) )
))
(declare-datatypes ((ValueCell!7825 0))(
  ( (ValueCellFull!7825 (v!10733 V!27085)) (EmptyCell!7825) )
))
(declare-datatypes ((array!49220 0))(
  ( (array!49221 (arr!23637 (Array (_ BitVec 32) ValueCell!7825)) (size!24078 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49220)

(declare-fun e!478261 () Bool)

(declare-fun array_inv!18699 (array!49220) Bool)

(assert (=> start!73506 (and (array_inv!18699 _values!688) e!478261)))

(declare-fun b!858100 () Bool)

(declare-fun res!583062 () Bool)

(assert (=> b!858100 (=> (not res!583062) (not e!478260))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(assert (=> b!858100 (= res!583062 (and (= (size!24078 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24077 _keys!868) (size!24078 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!858101 () Bool)

(declare-fun e!478264 () Bool)

(assert (=> b!858101 (= e!478264 tp_is_empty!16529)))

(declare-fun b!858102 () Bool)

(declare-fun res!583071 () Bool)

(assert (=> b!858102 (=> (not res!583071) (not e!478260))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49218 (_ BitVec 32)) Bool)

(assert (=> b!858102 (= res!583071 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!858103 () Bool)

(declare-fun e!478266 () Bool)

(assert (=> b!858103 (= e!478266 true)))

(declare-datatypes ((tuple2!10954 0))(
  ( (tuple2!10955 (_1!5487 (_ BitVec 64)) (_2!5487 V!27085)) )
))
(declare-datatypes ((List!16826 0))(
  ( (Nil!16823) (Cons!16822 (h!17953 tuple2!10954) (t!23493 List!16826)) )
))
(declare-datatypes ((ListLongMap!9737 0))(
  ( (ListLongMap!9738 (toList!4884 List!16826)) )
))
(declare-fun lt!386567 () ListLongMap!9737)

(declare-fun defaultEntry!696 () Int)

(declare-fun lt!386566 () ListLongMap!9737)

(declare-fun +!2190 (ListLongMap!9737 tuple2!10954) ListLongMap!9737)

(declare-fun get!12460 (ValueCell!7825 V!27085) V!27085)

(declare-fun dynLambda!1080 (Int (_ BitVec 64)) V!27085)

(assert (=> b!858103 (= lt!386566 (+!2190 lt!386567 (tuple2!10955 (select (arr!23636 _keys!868) from!1053) (get!12460 (select (arr!23637 _values!688) from!1053) (dynLambda!1080 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!858104 () Bool)

(declare-fun e!478265 () Bool)

(assert (=> b!858104 (= e!478265 (not e!478266))))

(declare-fun res!583068 () Bool)

(assert (=> b!858104 (=> res!583068 e!478266)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!858104 (= res!583068 (not (validKeyInArray!0 (select (arr!23636 _keys!868) from!1053))))))

(declare-fun lt!386570 () ListLongMap!9737)

(assert (=> b!858104 (= lt!386570 lt!386567)))

(declare-fun lt!386571 () ListLongMap!9737)

(declare-fun k!854 () (_ BitVec 64))

(declare-fun v!557 () V!27085)

(assert (=> b!858104 (= lt!386567 (+!2190 lt!386571 (tuple2!10955 k!854 v!557)))))

(declare-fun minValue!654 () V!27085)

(declare-fun zeroValue!654 () V!27085)

(declare-fun lt!386565 () array!49220)

(declare-fun getCurrentListMapNoExtraKeys!2866 (array!49218 array!49220 (_ BitVec 32) (_ BitVec 32) V!27085 V!27085 (_ BitVec 32) Int) ListLongMap!9737)

(assert (=> b!858104 (= lt!386570 (getCurrentListMapNoExtraKeys!2866 _keys!868 lt!386565 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> b!858104 (= lt!386571 (getCurrentListMapNoExtraKeys!2866 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-datatypes ((Unit!29222 0))(
  ( (Unit!29223) )
))
(declare-fun lt!386568 () Unit!29222)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!450 (array!49218 array!49220 (_ BitVec 32) (_ BitVec 32) V!27085 V!27085 (_ BitVec 32) (_ BitVec 64) V!27085 (_ BitVec 32) Int) Unit!29222)

(assert (=> b!858104 (= lt!386568 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!450 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!858105 () Bool)

(declare-fun res!583066 () Bool)

(assert (=> b!858105 (=> (not res!583066) (not e!478260))))

(assert (=> b!858105 (= res!583066 (and (= (select (arr!23636 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!858106 () Bool)

(declare-fun res!583063 () Bool)

(assert (=> b!858106 (=> (not res!583063) (not e!478260))))

(declare-datatypes ((List!16827 0))(
  ( (Nil!16824) (Cons!16823 (h!17954 (_ BitVec 64)) (t!23494 List!16827)) )
))
(declare-fun arrayNoDuplicates!0 (array!49218 (_ BitVec 32) List!16827) Bool)

(assert (=> b!858106 (= res!583063 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16824))))

(declare-fun b!858107 () Bool)

(declare-fun res!583065 () Bool)

(assert (=> b!858107 (=> (not res!583065) (not e!478260))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!858107 (= res!583065 (validMask!0 mask!1196))))

(declare-fun mapIsEmpty!26393 () Bool)

(declare-fun mapRes!26393 () Bool)

(assert (=> mapIsEmpty!26393 mapRes!26393))

(declare-fun mapNonEmpty!26393 () Bool)

(declare-fun tp!50683 () Bool)

(assert (=> mapNonEmpty!26393 (= mapRes!26393 (and tp!50683 e!478264))))

(declare-fun mapRest!26393 () (Array (_ BitVec 32) ValueCell!7825))

(declare-fun mapKey!26393 () (_ BitVec 32))

(declare-fun mapValue!26393 () ValueCell!7825)

(assert (=> mapNonEmpty!26393 (= (arr!23637 _values!688) (store mapRest!26393 mapKey!26393 mapValue!26393))))

(declare-fun b!858108 () Bool)

(declare-fun res!583069 () Bool)

(assert (=> b!858108 (=> (not res!583069) (not e!478260))))

(assert (=> b!858108 (= res!583069 (validKeyInArray!0 k!854))))

(declare-fun b!858109 () Bool)

(assert (=> b!858109 (= e!478260 e!478265)))

(declare-fun res!583070 () Bool)

(assert (=> b!858109 (=> (not res!583070) (not e!478265))))

(assert (=> b!858109 (= res!583070 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(assert (=> b!858109 (= lt!386566 (getCurrentListMapNoExtraKeys!2866 _keys!868 lt!386565 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!858109 (= lt!386565 (array!49221 (store (arr!23637 _values!688) i!612 (ValueCellFull!7825 v!557)) (size!24078 _values!688)))))

(declare-fun lt!386569 () ListLongMap!9737)

(assert (=> b!858109 (= lt!386569 (getCurrentListMapNoExtraKeys!2866 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!858110 () Bool)

(declare-fun e!478263 () Bool)

(assert (=> b!858110 (= e!478261 (and e!478263 mapRes!26393))))

(declare-fun condMapEmpty!26393 () Bool)

(declare-fun mapDefault!26393 () ValueCell!7825)

