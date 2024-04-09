; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73674 () Bool)

(assert start!73674)

(declare-fun b_free!14561 () Bool)

(declare-fun b_next!14561 () Bool)

(assert (=> start!73674 (= b_free!14561 (not b_next!14561))))

(declare-fun tp!51187 () Bool)

(declare-fun b_and!24119 () Bool)

(assert (=> start!73674 (= tp!51187 b_and!24119)))

(declare-fun b!862125 () Bool)

(declare-fun res!585973 () Bool)

(declare-fun e!480351 () Bool)

(assert (=> b!862125 (=> (not res!585973) (not e!480351))))

(declare-datatypes ((array!49540 0))(
  ( (array!49541 (arr!23797 (Array (_ BitVec 32) (_ BitVec 64))) (size!24238 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49540)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49540 (_ BitVec 32)) Bool)

(assert (=> b!862125 (= res!585973 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!862126 () Bool)

(declare-fun res!585977 () Bool)

(assert (=> b!862126 (=> (not res!585977) (not e!480351))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!862126 (= res!585977 (and (= (select (arr!23797 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!862127 () Bool)

(declare-fun e!480354 () Bool)

(declare-fun tp_is_empty!16697 () Bool)

(assert (=> b!862127 (= e!480354 tp_is_empty!16697)))

(declare-fun b!862128 () Bool)

(declare-datatypes ((Unit!29404 0))(
  ( (Unit!29405) )
))
(declare-fun e!480353 () Unit!29404)

(declare-fun Unit!29406 () Unit!29404)

(assert (=> b!862128 (= e!480353 Unit!29406)))

(declare-fun b!862129 () Bool)

(declare-fun res!585969 () Bool)

(assert (=> b!862129 (=> (not res!585969) (not e!480351))))

(declare-datatypes ((List!16969 0))(
  ( (Nil!16966) (Cons!16965 (h!18096 (_ BitVec 64)) (t!23804 List!16969)) )
))
(declare-fun arrayNoDuplicates!0 (array!49540 (_ BitVec 32) List!16969) Bool)

(assert (=> b!862129 (= res!585969 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16966))))

(declare-fun res!585978 () Bool)

(assert (=> start!73674 (=> (not res!585978) (not e!480351))))

(assert (=> start!73674 (= res!585978 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24238 _keys!868))))))

(assert (=> start!73674 e!480351))

(assert (=> start!73674 tp_is_empty!16697))

(assert (=> start!73674 true))

(assert (=> start!73674 tp!51187))

(declare-fun array_inv!18804 (array!49540) Bool)

(assert (=> start!73674 (array_inv!18804 _keys!868)))

(declare-datatypes ((V!27309 0))(
  ( (V!27310 (val!8396 Int)) )
))
(declare-datatypes ((ValueCell!7909 0))(
  ( (ValueCellFull!7909 (v!10817 V!27309)) (EmptyCell!7909) )
))
(declare-datatypes ((array!49542 0))(
  ( (array!49543 (arr!23798 (Array (_ BitVec 32) ValueCell!7909)) (size!24239 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49542)

(declare-fun e!480347 () Bool)

(declare-fun array_inv!18805 (array!49542) Bool)

(assert (=> start!73674 (and (array_inv!18805 _values!688) e!480347)))

(declare-fun mapNonEmpty!26645 () Bool)

(declare-fun mapRes!26645 () Bool)

(declare-fun tp!51188 () Bool)

(assert (=> mapNonEmpty!26645 (= mapRes!26645 (and tp!51188 e!480354))))

(declare-fun mapRest!26645 () (Array (_ BitVec 32) ValueCell!7909))

(declare-fun mapKey!26645 () (_ BitVec 32))

(declare-fun mapValue!26645 () ValueCell!7909)

(assert (=> mapNonEmpty!26645 (= (arr!23798 _values!688) (store mapRest!26645 mapKey!26645 mapValue!26645))))

(declare-fun b!862130 () Bool)

(declare-fun Unit!29407 () Unit!29404)

(assert (=> b!862130 (= e!480353 Unit!29407)))

(declare-fun lt!389070 () Unit!29404)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!49540 (_ BitVec 32) (_ BitVec 32)) Unit!29404)

(assert (=> b!862130 (= lt!389070 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(assert (=> b!862130 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!16966)))

(declare-fun lt!389060 () Unit!29404)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!49540 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!29404)

(assert (=> b!862130 (= lt!389060 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!868 k!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)))))

(declare-fun arrayContainsKey!0 (array!49540 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!862130 (arrayContainsKey!0 _keys!868 k!854 (bvadd #b00000000000000000000000000000001 from!1053))))

(declare-fun lt!389064 () Unit!29404)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!49540 (_ BitVec 64) (_ BitVec 32) List!16969) Unit!29404)

(assert (=> b!862130 (= lt!389064 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!868 k!854 from!1053 Nil!16966))))

(assert (=> b!862130 false))

(declare-fun b!862131 () Bool)

(declare-fun e!480346 () Bool)

(assert (=> b!862131 (= e!480351 e!480346)))

(declare-fun res!585974 () Bool)

(assert (=> b!862131 (=> (not res!585974) (not e!480346))))

(assert (=> b!862131 (= res!585974 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((tuple2!11098 0))(
  ( (tuple2!11099 (_1!5559 (_ BitVec 64)) (_2!5559 V!27309)) )
))
(declare-datatypes ((List!16970 0))(
  ( (Nil!16967) (Cons!16966 (h!18097 tuple2!11098) (t!23805 List!16970)) )
))
(declare-datatypes ((ListLongMap!9881 0))(
  ( (ListLongMap!9882 (toList!4956 List!16970)) )
))
(declare-fun lt!389066 () ListLongMap!9881)

(declare-fun minValue!654 () V!27309)

(declare-fun zeroValue!654 () V!27309)

(declare-fun lt!389062 () array!49542)

(declare-fun getCurrentListMapNoExtraKeys!2933 (array!49540 array!49542 (_ BitVec 32) (_ BitVec 32) V!27309 V!27309 (_ BitVec 32) Int) ListLongMap!9881)

(assert (=> b!862131 (= lt!389066 (getCurrentListMapNoExtraKeys!2933 _keys!868 lt!389062 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!27309)

(assert (=> b!862131 (= lt!389062 (array!49543 (store (arr!23798 _values!688) i!612 (ValueCellFull!7909 v!557)) (size!24239 _values!688)))))

(declare-fun lt!389063 () ListLongMap!9881)

(assert (=> b!862131 (= lt!389063 (getCurrentListMapNoExtraKeys!2933 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!862132 () Bool)

(declare-fun res!585972 () Bool)

(assert (=> b!862132 (=> (not res!585972) (not e!480351))))

(assert (=> b!862132 (= res!585972 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24238 _keys!868))))))

(declare-fun b!862133 () Bool)

(declare-fun e!480349 () Bool)

(assert (=> b!862133 (= e!480349 tp_is_empty!16697)))

(declare-fun mapIsEmpty!26645 () Bool)

(assert (=> mapIsEmpty!26645 mapRes!26645))

(declare-fun b!862134 () Bool)

(declare-fun e!480348 () Bool)

(assert (=> b!862134 (= e!480346 (not e!480348))))

(declare-fun res!585975 () Bool)

(assert (=> b!862134 (=> res!585975 e!480348)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!862134 (= res!585975 (not (validKeyInArray!0 (select (arr!23797 _keys!868) from!1053))))))

(declare-fun lt!389069 () ListLongMap!9881)

(declare-fun lt!389059 () ListLongMap!9881)

(assert (=> b!862134 (= lt!389069 lt!389059)))

(declare-fun lt!389072 () ListLongMap!9881)

(declare-fun lt!389067 () tuple2!11098)

(declare-fun +!2253 (ListLongMap!9881 tuple2!11098) ListLongMap!9881)

(assert (=> b!862134 (= lt!389059 (+!2253 lt!389072 lt!389067))))

(assert (=> b!862134 (= lt!389069 (getCurrentListMapNoExtraKeys!2933 _keys!868 lt!389062 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> b!862134 (= lt!389067 (tuple2!11099 k!854 v!557))))

(assert (=> b!862134 (= lt!389072 (getCurrentListMapNoExtraKeys!2933 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun lt!389073 () Unit!29404)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!503 (array!49540 array!49542 (_ BitVec 32) (_ BitVec 32) V!27309 V!27309 (_ BitVec 32) (_ BitVec 64) V!27309 (_ BitVec 32) Int) Unit!29404)

(assert (=> b!862134 (= lt!389073 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!503 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!862135 () Bool)

(declare-fun res!585970 () Bool)

(assert (=> b!862135 (=> (not res!585970) (not e!480351))))

(assert (=> b!862135 (= res!585970 (validKeyInArray!0 k!854))))

(declare-fun b!862136 () Bool)

(declare-fun res!585976 () Bool)

(assert (=> b!862136 (=> (not res!585976) (not e!480351))))

(assert (=> b!862136 (= res!585976 (and (= (size!24239 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24238 _keys!868) (size!24239 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!862137 () Bool)

(declare-fun res!585968 () Bool)

(assert (=> b!862137 (=> (not res!585968) (not e!480351))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!862137 (= res!585968 (validMask!0 mask!1196))))

(declare-fun b!862138 () Bool)

(declare-fun e!480350 () Bool)

(assert (=> b!862138 (= e!480348 e!480350)))

(declare-fun res!585971 () Bool)

(assert (=> b!862138 (=> res!585971 e!480350)))

(assert (=> b!862138 (= res!585971 (= k!854 (select (arr!23797 _keys!868) from!1053)))))

(assert (=> b!862138 (not (= (select (arr!23797 _keys!868) from!1053) k!854))))

(declare-fun lt!389065 () Unit!29404)

(assert (=> b!862138 (= lt!389065 e!480353)))

(declare-fun c!91980 () Bool)

(assert (=> b!862138 (= c!91980 (= (select (arr!23797 _keys!868) from!1053) k!854))))

(declare-fun lt!389061 () ListLongMap!9881)

(assert (=> b!862138 (= lt!389066 lt!389061)))

(declare-fun lt!389068 () tuple2!11098)

(assert (=> b!862138 (= lt!389061 (+!2253 lt!389059 lt!389068))))

(declare-fun lt!389071 () V!27309)

(assert (=> b!862138 (= lt!389068 (tuple2!11099 (select (arr!23797 _keys!868) from!1053) lt!389071))))

(declare-fun get!12569 (ValueCell!7909 V!27309) V!27309)

(declare-fun dynLambda!1133 (Int (_ BitVec 64)) V!27309)

(assert (=> b!862138 (= lt!389071 (get!12569 (select (arr!23798 _values!688) from!1053) (dynLambda!1133 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!862139 () Bool)

(assert (=> b!862139 (= e!480350 true)))

(assert (=> b!862139 (= lt!389061 (+!2253 (+!2253 lt!389072 lt!389068) lt!389067))))

(declare-fun lt!389058 () Unit!29404)

(declare-fun addCommutativeForDiffKeys!470 (ListLongMap!9881 (_ BitVec 64) V!27309 (_ BitVec 64) V!27309) Unit!29404)

(assert (=> b!862139 (= lt!389058 (addCommutativeForDiffKeys!470 lt!389072 k!854 v!557 (select (arr!23797 _keys!868) from!1053) lt!389071))))

(declare-fun b!862140 () Bool)

(assert (=> b!862140 (= e!480347 (and e!480349 mapRes!26645))))

(declare-fun condMapEmpty!26645 () Bool)

(declare-fun mapDefault!26645 () ValueCell!7909)

