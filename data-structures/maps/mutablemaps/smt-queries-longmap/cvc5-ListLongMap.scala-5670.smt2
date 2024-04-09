; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73832 () Bool)

(assert start!73832)

(declare-fun b_free!14719 () Bool)

(declare-fun b_next!14719 () Bool)

(assert (=> start!73832 (= b_free!14719 (not b_next!14719))))

(declare-fun tp!51661 () Bool)

(declare-fun b_and!24435 () Bool)

(assert (=> start!73832 (= tp!51661 b_and!24435)))

(declare-fun b!866075 () Bool)

(declare-fun res!588580 () Bool)

(declare-fun e!482486 () Bool)

(assert (=> b!866075 (=> (not res!588580) (not e!482486))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!49852 0))(
  ( (array!49853 (arr!23953 (Array (_ BitVec 32) (_ BitVec 64))) (size!24394 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49852)

(declare-datatypes ((V!27521 0))(
  ( (V!27522 (val!8475 Int)) )
))
(declare-datatypes ((ValueCell!7988 0))(
  ( (ValueCellFull!7988 (v!10896 V!27521)) (EmptyCell!7988) )
))
(declare-datatypes ((array!49854 0))(
  ( (array!49855 (arr!23954 (Array (_ BitVec 32) ValueCell!7988)) (size!24395 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49854)

(assert (=> b!866075 (= res!588580 (and (= (size!24395 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24394 _keys!868) (size!24395 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!866076 () Bool)

(declare-fun e!482481 () Bool)

(declare-fun tp_is_empty!16855 () Bool)

(assert (=> b!866076 (= e!482481 tp_is_empty!16855)))

(declare-fun b!866077 () Bool)

(declare-fun res!588577 () Bool)

(assert (=> b!866077 (=> (not res!588577) (not e!482486))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49852 (_ BitVec 32)) Bool)

(assert (=> b!866077 (= res!588577 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!866078 () Bool)

(declare-fun res!588576 () Bool)

(assert (=> b!866078 (=> (not res!588576) (not e!482486))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!866078 (= res!588576 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24394 _keys!868))))))

(declare-fun mapNonEmpty!26882 () Bool)

(declare-fun mapRes!26882 () Bool)

(declare-fun tp!51662 () Bool)

(assert (=> mapNonEmpty!26882 (= mapRes!26882 (and tp!51662 e!482481))))

(declare-fun mapKey!26882 () (_ BitVec 32))

(declare-fun mapValue!26882 () ValueCell!7988)

(declare-fun mapRest!26882 () (Array (_ BitVec 32) ValueCell!7988))

(assert (=> mapNonEmpty!26882 (= (arr!23954 _values!688) (store mapRest!26882 mapKey!26882 mapValue!26882))))

(declare-fun b!866079 () Bool)

(declare-fun e!482485 () Bool)

(declare-fun e!482482 () Bool)

(assert (=> b!866079 (= e!482485 e!482482)))

(declare-fun res!588581 () Bool)

(assert (=> b!866079 (=> res!588581 e!482482)))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!866079 (= res!588581 (= k!854 (select (arr!23953 _keys!868) from!1053)))))

(assert (=> b!866079 (not (= (select (arr!23953 _keys!868) from!1053) k!854))))

(declare-datatypes ((Unit!29659 0))(
  ( (Unit!29660) )
))
(declare-fun lt!392864 () Unit!29659)

(declare-fun e!482483 () Unit!29659)

(assert (=> b!866079 (= lt!392864 e!482483)))

(declare-fun c!92217 () Bool)

(assert (=> b!866079 (= c!92217 (= (select (arr!23953 _keys!868) from!1053) k!854))))

(declare-datatypes ((tuple2!11240 0))(
  ( (tuple2!11241 (_1!5630 (_ BitVec 64)) (_2!5630 V!27521)) )
))
(declare-datatypes ((List!17104 0))(
  ( (Nil!17101) (Cons!17100 (h!18231 tuple2!11240) (t!24097 List!17104)) )
))
(declare-datatypes ((ListLongMap!10023 0))(
  ( (ListLongMap!10024 (toList!5027 List!17104)) )
))
(declare-fun lt!392859 () ListLongMap!10023)

(declare-fun lt!392854 () ListLongMap!10023)

(assert (=> b!866079 (= lt!392859 lt!392854)))

(declare-fun lt!392860 () ListLongMap!10023)

(declare-fun lt!392858 () tuple2!11240)

(declare-fun +!2323 (ListLongMap!10023 tuple2!11240) ListLongMap!10023)

(assert (=> b!866079 (= lt!392854 (+!2323 lt!392860 lt!392858))))

(declare-fun lt!392861 () V!27521)

(assert (=> b!866079 (= lt!392858 (tuple2!11241 (select (arr!23953 _keys!868) from!1053) lt!392861))))

(declare-fun defaultEntry!696 () Int)

(declare-fun get!12680 (ValueCell!7988 V!27521) V!27521)

(declare-fun dynLambda!1190 (Int (_ BitVec 64)) V!27521)

(assert (=> b!866079 (= lt!392861 (get!12680 (select (arr!23954 _values!688) from!1053) (dynLambda!1190 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!866080 () Bool)

(declare-fun res!588578 () Bool)

(assert (=> b!866080 (=> (not res!588578) (not e!482486))))

(declare-datatypes ((List!17105 0))(
  ( (Nil!17102) (Cons!17101 (h!18232 (_ BitVec 64)) (t!24098 List!17105)) )
))
(declare-fun arrayNoDuplicates!0 (array!49852 (_ BitVec 32) List!17105) Bool)

(assert (=> b!866080 (= res!588578 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17102))))

(declare-fun b!866081 () Bool)

(assert (=> b!866081 (= e!482482 true)))

(declare-fun lt!392857 () tuple2!11240)

(declare-fun lt!392855 () ListLongMap!10023)

(assert (=> b!866081 (= lt!392854 (+!2323 (+!2323 lt!392855 lt!392858) lt!392857))))

(declare-fun v!557 () V!27521)

(declare-fun lt!392862 () Unit!29659)

(declare-fun addCommutativeForDiffKeys!528 (ListLongMap!10023 (_ BitVec 64) V!27521 (_ BitVec 64) V!27521) Unit!29659)

(assert (=> b!866081 (= lt!392862 (addCommutativeForDiffKeys!528 lt!392855 k!854 v!557 (select (arr!23953 _keys!868) from!1053) lt!392861))))

(declare-fun b!866082 () Bool)

(declare-fun e!482487 () Bool)

(assert (=> b!866082 (= e!482487 tp_is_empty!16855)))

(declare-fun res!588575 () Bool)

(assert (=> start!73832 (=> (not res!588575) (not e!482486))))

(assert (=> start!73832 (= res!588575 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24394 _keys!868))))))

(assert (=> start!73832 e!482486))

(assert (=> start!73832 tp_is_empty!16855))

(assert (=> start!73832 true))

(assert (=> start!73832 tp!51661))

(declare-fun array_inv!18916 (array!49852) Bool)

(assert (=> start!73832 (array_inv!18916 _keys!868)))

(declare-fun e!482480 () Bool)

(declare-fun array_inv!18917 (array!49854) Bool)

(assert (=> start!73832 (and (array_inv!18917 _values!688) e!482480)))

(declare-fun b!866083 () Bool)

(declare-fun res!588585 () Bool)

(assert (=> b!866083 (=> (not res!588585) (not e!482486))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!866083 (= res!588585 (validMask!0 mask!1196))))

(declare-fun b!866084 () Bool)

(declare-fun res!588583 () Bool)

(assert (=> b!866084 (=> (not res!588583) (not e!482486))))

(assert (=> b!866084 (= res!588583 (and (= (select (arr!23953 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!866085 () Bool)

(declare-fun Unit!29661 () Unit!29659)

(assert (=> b!866085 (= e!482483 Unit!29661)))

(declare-fun b!866086 () Bool)

(declare-fun res!588579 () Bool)

(assert (=> b!866086 (=> (not res!588579) (not e!482486))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!866086 (= res!588579 (validKeyInArray!0 k!854))))

(declare-fun b!866087 () Bool)

(declare-fun Unit!29662 () Unit!29659)

(assert (=> b!866087 (= e!482483 Unit!29662)))

(declare-fun lt!392851 () Unit!29659)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!49852 (_ BitVec 32) (_ BitVec 32)) Unit!29659)

(assert (=> b!866087 (= lt!392851 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(assert (=> b!866087 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!17102)))

(declare-fun lt!392850 () Unit!29659)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!49852 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!29659)

(assert (=> b!866087 (= lt!392850 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!868 k!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)))))

(declare-fun arrayContainsKey!0 (array!49852 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!866087 (arrayContainsKey!0 _keys!868 k!854 (bvadd #b00000000000000000000000000000001 from!1053))))

(declare-fun lt!392853 () Unit!29659)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!49852 (_ BitVec 64) (_ BitVec 32) List!17105) Unit!29659)

(assert (=> b!866087 (= lt!392853 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!868 k!854 from!1053 Nil!17102))))

(assert (=> b!866087 false))

(declare-fun b!866088 () Bool)

(declare-fun e!482479 () Bool)

(assert (=> b!866088 (= e!482486 e!482479)))

(declare-fun res!588584 () Bool)

(assert (=> b!866088 (=> (not res!588584) (not e!482479))))

(assert (=> b!866088 (= res!588584 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun lt!392865 () array!49854)

(declare-fun minValue!654 () V!27521)

(declare-fun zeroValue!654 () V!27521)

(declare-fun getCurrentListMapNoExtraKeys!2994 (array!49852 array!49854 (_ BitVec 32) (_ BitVec 32) V!27521 V!27521 (_ BitVec 32) Int) ListLongMap!10023)

(assert (=> b!866088 (= lt!392859 (getCurrentListMapNoExtraKeys!2994 _keys!868 lt!392865 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!866088 (= lt!392865 (array!49855 (store (arr!23954 _values!688) i!612 (ValueCellFull!7988 v!557)) (size!24395 _values!688)))))

(declare-fun lt!392852 () ListLongMap!10023)

(assert (=> b!866088 (= lt!392852 (getCurrentListMapNoExtraKeys!2994 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!866089 () Bool)

(assert (=> b!866089 (= e!482479 (not e!482485))))

(declare-fun res!588582 () Bool)

(assert (=> b!866089 (=> res!588582 e!482485)))

(assert (=> b!866089 (= res!588582 (not (validKeyInArray!0 (select (arr!23953 _keys!868) from!1053))))))

(declare-fun lt!392856 () ListLongMap!10023)

(assert (=> b!866089 (= lt!392856 lt!392860)))

(assert (=> b!866089 (= lt!392860 (+!2323 lt!392855 lt!392857))))

(assert (=> b!866089 (= lt!392856 (getCurrentListMapNoExtraKeys!2994 _keys!868 lt!392865 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> b!866089 (= lt!392857 (tuple2!11241 k!854 v!557))))

(assert (=> b!866089 (= lt!392855 (getCurrentListMapNoExtraKeys!2994 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun lt!392863 () Unit!29659)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!559 (array!49852 array!49854 (_ BitVec 32) (_ BitVec 32) V!27521 V!27521 (_ BitVec 32) (_ BitVec 64) V!27521 (_ BitVec 32) Int) Unit!29659)

(assert (=> b!866089 (= lt!392863 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!559 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!866090 () Bool)

(assert (=> b!866090 (= e!482480 (and e!482487 mapRes!26882))))

(declare-fun condMapEmpty!26882 () Bool)

(declare-fun mapDefault!26882 () ValueCell!7988)

