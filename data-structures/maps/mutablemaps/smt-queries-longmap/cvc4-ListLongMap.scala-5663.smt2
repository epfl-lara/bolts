; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73794 () Bool)

(assert start!73794)

(declare-fun b_free!14681 () Bool)

(declare-fun b_next!14681 () Bool)

(assert (=> start!73794 (= b_free!14681 (not b_next!14681))))

(declare-fun tp!51547 () Bool)

(declare-fun b_and!24359 () Bool)

(assert (=> start!73794 (= tp!51547 b_and!24359)))

(declare-fun b!865125 () Bool)

(declare-fun e!481968 () Bool)

(assert (=> b!865125 (= e!481968 true)))

(declare-datatypes ((V!27469 0))(
  ( (V!27470 (val!8456 Int)) )
))
(declare-datatypes ((tuple2!11208 0))(
  ( (tuple2!11209 (_1!5614 (_ BitVec 64)) (_2!5614 V!27469)) )
))
(declare-datatypes ((List!17071 0))(
  ( (Nil!17068) (Cons!17067 (h!18198 tuple2!11208) (t!24026 List!17071)) )
))
(declare-datatypes ((ListLongMap!9991 0))(
  ( (ListLongMap!9992 (toList!5011 List!17071)) )
))
(declare-fun lt!391945 () ListLongMap!9991)

(declare-fun lt!391943 () tuple2!11208)

(declare-fun lt!391946 () tuple2!11208)

(declare-fun lt!391951 () ListLongMap!9991)

(declare-fun +!2307 (ListLongMap!9991 tuple2!11208) ListLongMap!9991)

(assert (=> b!865125 (= lt!391945 (+!2307 (+!2307 lt!391951 lt!391943) lt!391946))))

(declare-fun lt!391953 () V!27469)

(declare-fun v!557 () V!27469)

(declare-datatypes ((Unit!29596 0))(
  ( (Unit!29597) )
))
(declare-fun lt!391938 () Unit!29596)

(declare-fun k!854 () (_ BitVec 64))

(declare-datatypes ((array!49778 0))(
  ( (array!49779 (arr!23916 (Array (_ BitVec 32) (_ BitVec 64))) (size!24357 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49778)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun addCommutativeForDiffKeys!514 (ListLongMap!9991 (_ BitVec 64) V!27469 (_ BitVec 64) V!27469) Unit!29596)

(assert (=> b!865125 (= lt!391938 (addCommutativeForDiffKeys!514 lt!391951 k!854 v!557 (select (arr!23916 _keys!868) from!1053) lt!391953))))

(declare-fun b!865126 () Bool)

(declare-fun res!587949 () Bool)

(declare-fun e!481966 () Bool)

(assert (=> b!865126 (=> (not res!587949) (not e!481966))))

(declare-datatypes ((List!17072 0))(
  ( (Nil!17069) (Cons!17068 (h!18199 (_ BitVec 64)) (t!24027 List!17072)) )
))
(declare-fun arrayNoDuplicates!0 (array!49778 (_ BitVec 32) List!17072) Bool)

(assert (=> b!865126 (= res!587949 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17069))))

(declare-fun res!587958 () Bool)

(assert (=> start!73794 (=> (not res!587958) (not e!481966))))

(assert (=> start!73794 (= res!587958 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24357 _keys!868))))))

(assert (=> start!73794 e!481966))

(declare-fun tp_is_empty!16817 () Bool)

(assert (=> start!73794 tp_is_empty!16817))

(assert (=> start!73794 true))

(assert (=> start!73794 tp!51547))

(declare-fun array_inv!18892 (array!49778) Bool)

(assert (=> start!73794 (array_inv!18892 _keys!868)))

(declare-datatypes ((ValueCell!7969 0))(
  ( (ValueCellFull!7969 (v!10877 V!27469)) (EmptyCell!7969) )
))
(declare-datatypes ((array!49780 0))(
  ( (array!49781 (arr!23917 (Array (_ BitVec 32) ValueCell!7969)) (size!24358 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49780)

(declare-fun e!481970 () Bool)

(declare-fun array_inv!18893 (array!49780) Bool)

(assert (=> start!73794 (and (array_inv!18893 _values!688) e!481970)))

(declare-fun b!865127 () Bool)

(declare-fun e!481971 () Bool)

(assert (=> b!865127 (= e!481971 tp_is_empty!16817)))

(declare-fun b!865128 () Bool)

(declare-fun res!587948 () Bool)

(assert (=> b!865128 (=> (not res!587948) (not e!481966))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!865128 (= res!587948 (validMask!0 mask!1196))))

(declare-fun mapNonEmpty!26825 () Bool)

(declare-fun mapRes!26825 () Bool)

(declare-fun tp!51548 () Bool)

(declare-fun e!481969 () Bool)

(assert (=> mapNonEmpty!26825 (= mapRes!26825 (and tp!51548 e!481969))))

(declare-fun mapKey!26825 () (_ BitVec 32))

(declare-fun mapValue!26825 () ValueCell!7969)

(declare-fun mapRest!26825 () (Array (_ BitVec 32) ValueCell!7969))

(assert (=> mapNonEmpty!26825 (= (arr!23917 _values!688) (store mapRest!26825 mapKey!26825 mapValue!26825))))

(declare-fun b!865129 () Bool)

(declare-fun e!481974 () Unit!29596)

(declare-fun Unit!29598 () Unit!29596)

(assert (=> b!865129 (= e!481974 Unit!29598)))

(declare-fun b!865130 () Bool)

(declare-fun Unit!29599 () Unit!29596)

(assert (=> b!865130 (= e!481974 Unit!29599)))

(declare-fun lt!391948 () Unit!29596)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!49778 (_ BitVec 32) (_ BitVec 32)) Unit!29596)

(assert (=> b!865130 (= lt!391948 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(assert (=> b!865130 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!17069)))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun lt!391940 () Unit!29596)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!49778 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!29596)

(assert (=> b!865130 (= lt!391940 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!868 k!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)))))

(declare-fun arrayContainsKey!0 (array!49778 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!865130 (arrayContainsKey!0 _keys!868 k!854 (bvadd #b00000000000000000000000000000001 from!1053))))

(declare-fun lt!391950 () Unit!29596)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!49778 (_ BitVec 64) (_ BitVec 32) List!17072) Unit!29596)

(assert (=> b!865130 (= lt!391950 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!868 k!854 from!1053 Nil!17069))))

(assert (=> b!865130 false))

(declare-fun b!865131 () Bool)

(declare-fun res!587950 () Bool)

(assert (=> b!865131 (=> (not res!587950) (not e!481966))))

(assert (=> b!865131 (= res!587950 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24357 _keys!868))))))

(declare-fun b!865132 () Bool)

(declare-fun e!481967 () Bool)

(declare-fun e!481972 () Bool)

(assert (=> b!865132 (= e!481967 (not e!481972))))

(declare-fun res!587951 () Bool)

(assert (=> b!865132 (=> res!587951 e!481972)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!865132 (= res!587951 (not (validKeyInArray!0 (select (arr!23916 _keys!868) from!1053))))))

(declare-fun lt!391944 () ListLongMap!9991)

(declare-fun lt!391949 () ListLongMap!9991)

(assert (=> b!865132 (= lt!391944 lt!391949)))

(assert (=> b!865132 (= lt!391949 (+!2307 lt!391951 lt!391946))))

(declare-fun lt!391942 () array!49780)

(declare-fun minValue!654 () V!27469)

(declare-fun zeroValue!654 () V!27469)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!2981 (array!49778 array!49780 (_ BitVec 32) (_ BitVec 32) V!27469 V!27469 (_ BitVec 32) Int) ListLongMap!9991)

(assert (=> b!865132 (= lt!391944 (getCurrentListMapNoExtraKeys!2981 _keys!868 lt!391942 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> b!865132 (= lt!391946 (tuple2!11209 k!854 v!557))))

(assert (=> b!865132 (= lt!391951 (getCurrentListMapNoExtraKeys!2981 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun lt!391952 () Unit!29596)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!547 (array!49778 array!49780 (_ BitVec 32) (_ BitVec 32) V!27469 V!27469 (_ BitVec 32) (_ BitVec 64) V!27469 (_ BitVec 32) Int) Unit!29596)

(assert (=> b!865132 (= lt!391952 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!547 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!865133 () Bool)

(declare-fun res!587954 () Bool)

(assert (=> b!865133 (=> (not res!587954) (not e!481966))))

(assert (=> b!865133 (= res!587954 (and (= (select (arr!23916 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!865134 () Bool)

(assert (=> b!865134 (= e!481972 e!481968)))

(declare-fun res!587953 () Bool)

(assert (=> b!865134 (=> res!587953 e!481968)))

(assert (=> b!865134 (= res!587953 (= k!854 (select (arr!23916 _keys!868) from!1053)))))

(assert (=> b!865134 (not (= (select (arr!23916 _keys!868) from!1053) k!854))))

(declare-fun lt!391939 () Unit!29596)

(assert (=> b!865134 (= lt!391939 e!481974)))

(declare-fun c!92160 () Bool)

(assert (=> b!865134 (= c!92160 (= (select (arr!23916 _keys!868) from!1053) k!854))))

(declare-fun lt!391941 () ListLongMap!9991)

(assert (=> b!865134 (= lt!391941 lt!391945)))

(assert (=> b!865134 (= lt!391945 (+!2307 lt!391949 lt!391943))))

(assert (=> b!865134 (= lt!391943 (tuple2!11209 (select (arr!23916 _keys!868) from!1053) lt!391953))))

(declare-fun get!12651 (ValueCell!7969 V!27469) V!27469)

(declare-fun dynLambda!1175 (Int (_ BitVec 64)) V!27469)

(assert (=> b!865134 (= lt!391953 (get!12651 (select (arr!23917 _values!688) from!1053) (dynLambda!1175 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!865135 () Bool)

(assert (=> b!865135 (= e!481966 e!481967)))

(declare-fun res!587955 () Bool)

(assert (=> b!865135 (=> (not res!587955) (not e!481967))))

(assert (=> b!865135 (= res!587955 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(assert (=> b!865135 (= lt!391941 (getCurrentListMapNoExtraKeys!2981 _keys!868 lt!391942 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!865135 (= lt!391942 (array!49781 (store (arr!23917 _values!688) i!612 (ValueCellFull!7969 v!557)) (size!24358 _values!688)))))

(declare-fun lt!391947 () ListLongMap!9991)

(assert (=> b!865135 (= lt!391947 (getCurrentListMapNoExtraKeys!2981 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun mapIsEmpty!26825 () Bool)

(assert (=> mapIsEmpty!26825 mapRes!26825))

(declare-fun b!865136 () Bool)

(assert (=> b!865136 (= e!481970 (and e!481971 mapRes!26825))))

(declare-fun condMapEmpty!26825 () Bool)

(declare-fun mapDefault!26825 () ValueCell!7969)

