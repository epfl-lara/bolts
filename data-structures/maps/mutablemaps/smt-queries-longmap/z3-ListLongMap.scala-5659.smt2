; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73768 () Bool)

(assert start!73768)

(declare-fun b_free!14655 () Bool)

(declare-fun b_next!14655 () Bool)

(assert (=> start!73768 (= b_free!14655 (not b_next!14655))))

(declare-fun tp!51470 () Bool)

(declare-fun b_and!24307 () Bool)

(assert (=> start!73768 (= tp!51470 b_and!24307)))

(declare-fun mapIsEmpty!26786 () Bool)

(declare-fun mapRes!26786 () Bool)

(assert (=> mapIsEmpty!26786 mapRes!26786))

(declare-fun b!864475 () Bool)

(declare-fun res!587522 () Bool)

(declare-fun e!481615 () Bool)

(assert (=> b!864475 (=> (not res!587522) (not e!481615))))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!864475 (= res!587522 (validKeyInArray!0 k0!854))))

(declare-fun b!864476 () Bool)

(declare-fun e!481622 () Bool)

(declare-fun e!481618 () Bool)

(assert (=> b!864476 (= e!481622 (and e!481618 mapRes!26786))))

(declare-fun condMapEmpty!26786 () Bool)

(declare-datatypes ((V!27435 0))(
  ( (V!27436 (val!8443 Int)) )
))
(declare-datatypes ((ValueCell!7956 0))(
  ( (ValueCellFull!7956 (v!10864 V!27435)) (EmptyCell!7956) )
))
(declare-datatypes ((array!49726 0))(
  ( (array!49727 (arr!23890 (Array (_ BitVec 32) ValueCell!7956)) (size!24331 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49726)

(declare-fun mapDefault!26786 () ValueCell!7956)

(assert (=> b!864476 (= condMapEmpty!26786 (= (arr!23890 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7956)) mapDefault!26786)))))

(declare-fun b!864477 () Bool)

(declare-fun res!587525 () Bool)

(assert (=> b!864477 (=> (not res!587525) (not e!481615))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((array!49728 0))(
  ( (array!49729 (arr!23891 (Array (_ BitVec 32) (_ BitVec 64))) (size!24332 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49728)

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!864477 (= res!587525 (and (= (select (arr!23891 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!864478 () Bool)

(declare-fun res!587520 () Bool)

(assert (=> b!864478 (=> (not res!587520) (not e!481615))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49728 (_ BitVec 32)) Bool)

(assert (=> b!864478 (= res!587520 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!864479 () Bool)

(declare-fun res!587527 () Bool)

(assert (=> b!864479 (=> (not res!587527) (not e!481615))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(assert (=> b!864479 (= res!587527 (and (= (size!24331 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24332 _keys!868) (size!24331 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!864480 () Bool)

(declare-fun e!481617 () Bool)

(assert (=> b!864480 (= e!481615 e!481617)))

(declare-fun res!587528 () Bool)

(assert (=> b!864480 (=> (not res!587528) (not e!481617))))

(assert (=> b!864480 (= res!587528 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-datatypes ((tuple2!11182 0))(
  ( (tuple2!11183 (_1!5601 (_ BitVec 64)) (_2!5601 V!27435)) )
))
(declare-datatypes ((List!17048 0))(
  ( (Nil!17045) (Cons!17044 (h!18175 tuple2!11182) (t!23977 List!17048)) )
))
(declare-datatypes ((ListLongMap!9965 0))(
  ( (ListLongMap!9966 (toList!4998 List!17048)) )
))
(declare-fun lt!391316 () ListLongMap!9965)

(declare-fun defaultEntry!696 () Int)

(declare-fun minValue!654 () V!27435)

(declare-fun zeroValue!654 () V!27435)

(declare-fun lt!391324 () array!49726)

(declare-fun getCurrentListMapNoExtraKeys!2971 (array!49728 array!49726 (_ BitVec 32) (_ BitVec 32) V!27435 V!27435 (_ BitVec 32) Int) ListLongMap!9965)

(assert (=> b!864480 (= lt!391316 (getCurrentListMapNoExtraKeys!2971 _keys!868 lt!391324 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!27435)

(assert (=> b!864480 (= lt!391324 (array!49727 (store (arr!23890 _values!688) i!612 (ValueCellFull!7956 v!557)) (size!24331 _values!688)))))

(declare-fun lt!391321 () ListLongMap!9965)

(assert (=> b!864480 (= lt!391321 (getCurrentListMapNoExtraKeys!2971 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun res!587524 () Bool)

(assert (=> start!73768 (=> (not res!587524) (not e!481615))))

(assert (=> start!73768 (= res!587524 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24332 _keys!868))))))

(assert (=> start!73768 e!481615))

(declare-fun tp_is_empty!16791 () Bool)

(assert (=> start!73768 tp_is_empty!16791))

(assert (=> start!73768 true))

(assert (=> start!73768 tp!51470))

(declare-fun array_inv!18872 (array!49728) Bool)

(assert (=> start!73768 (array_inv!18872 _keys!868)))

(declare-fun array_inv!18873 (array!49726) Bool)

(assert (=> start!73768 (and (array_inv!18873 _values!688) e!481622)))

(declare-fun b!864481 () Bool)

(assert (=> b!864481 (= e!481618 tp_is_empty!16791)))

(declare-fun b!864482 () Bool)

(declare-fun res!587526 () Bool)

(assert (=> b!864482 (=> (not res!587526) (not e!481615))))

(assert (=> b!864482 (= res!587526 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24332 _keys!868))))))

(declare-fun b!864483 () Bool)

(declare-datatypes ((Unit!29549 0))(
  ( (Unit!29550) )
))
(declare-fun e!481619 () Unit!29549)

(declare-fun Unit!29551 () Unit!29549)

(assert (=> b!864483 (= e!481619 Unit!29551)))

(declare-fun lt!391320 () Unit!29549)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!49728 (_ BitVec 32) (_ BitVec 32)) Unit!29549)

(assert (=> b!864483 (= lt!391320 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(declare-datatypes ((List!17049 0))(
  ( (Nil!17046) (Cons!17045 (h!18176 (_ BitVec 64)) (t!23978 List!17049)) )
))
(declare-fun arrayNoDuplicates!0 (array!49728 (_ BitVec 32) List!17049) Bool)

(assert (=> b!864483 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!17046)))

(declare-fun lt!391317 () Unit!29549)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!49728 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!29549)

(assert (=> b!864483 (= lt!391317 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!868 k0!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)))))

(declare-fun arrayContainsKey!0 (array!49728 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!864483 (arrayContainsKey!0 _keys!868 k0!854 (bvadd #b00000000000000000000000000000001 from!1053))))

(declare-fun lt!391323 () Unit!29549)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!49728 (_ BitVec 64) (_ BitVec 32) List!17049) Unit!29549)

(assert (=> b!864483 (= lt!391323 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!868 k0!854 from!1053 Nil!17046))))

(assert (=> b!864483 false))

(declare-fun b!864484 () Bool)

(declare-fun e!481620 () Bool)

(assert (=> b!864484 (= e!481617 (not e!481620))))

(declare-fun res!587521 () Bool)

(assert (=> b!864484 (=> res!587521 e!481620)))

(assert (=> b!864484 (= res!587521 (not (validKeyInArray!0 (select (arr!23891 _keys!868) from!1053))))))

(declare-fun lt!391326 () ListLongMap!9965)

(declare-fun lt!391329 () ListLongMap!9965)

(assert (=> b!864484 (= lt!391326 lt!391329)))

(declare-fun lt!391328 () ListLongMap!9965)

(declare-fun lt!391325 () tuple2!11182)

(declare-fun +!2294 (ListLongMap!9965 tuple2!11182) ListLongMap!9965)

(assert (=> b!864484 (= lt!391329 (+!2294 lt!391328 lt!391325))))

(assert (=> b!864484 (= lt!391326 (getCurrentListMapNoExtraKeys!2971 _keys!868 lt!391324 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> b!864484 (= lt!391325 (tuple2!11183 k0!854 v!557))))

(assert (=> b!864484 (= lt!391328 (getCurrentListMapNoExtraKeys!2971 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun lt!391319 () Unit!29549)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!538 (array!49728 array!49726 (_ BitVec 32) (_ BitVec 32) V!27435 V!27435 (_ BitVec 32) (_ BitVec 64) V!27435 (_ BitVec 32) Int) Unit!29549)

(assert (=> b!864484 (= lt!391319 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!538 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!864485 () Bool)

(declare-fun e!481621 () Bool)

(assert (=> b!864485 (= e!481621 true)))

(declare-fun lt!391314 () tuple2!11182)

(declare-fun lt!391322 () ListLongMap!9965)

(assert (=> b!864485 (= lt!391322 (+!2294 (+!2294 lt!391328 lt!391314) lt!391325))))

(declare-fun lt!391315 () Unit!29549)

(declare-fun lt!391318 () V!27435)

(declare-fun addCommutativeForDiffKeys!503 (ListLongMap!9965 (_ BitVec 64) V!27435 (_ BitVec 64) V!27435) Unit!29549)

(assert (=> b!864485 (= lt!391315 (addCommutativeForDiffKeys!503 lt!391328 k0!854 v!557 (select (arr!23891 _keys!868) from!1053) lt!391318))))

(declare-fun b!864486 () Bool)

(declare-fun e!481616 () Bool)

(assert (=> b!864486 (= e!481616 tp_is_empty!16791)))

(declare-fun b!864487 () Bool)

(assert (=> b!864487 (= e!481620 e!481621)))

(declare-fun res!587523 () Bool)

(assert (=> b!864487 (=> res!587523 e!481621)))

(assert (=> b!864487 (= res!587523 (= k0!854 (select (arr!23891 _keys!868) from!1053)))))

(assert (=> b!864487 (not (= (select (arr!23891 _keys!868) from!1053) k0!854))))

(declare-fun lt!391327 () Unit!29549)

(assert (=> b!864487 (= lt!391327 e!481619)))

(declare-fun c!92121 () Bool)

(assert (=> b!864487 (= c!92121 (= (select (arr!23891 _keys!868) from!1053) k0!854))))

(assert (=> b!864487 (= lt!391316 lt!391322)))

(assert (=> b!864487 (= lt!391322 (+!2294 lt!391329 lt!391314))))

(assert (=> b!864487 (= lt!391314 (tuple2!11183 (select (arr!23891 _keys!868) from!1053) lt!391318))))

(declare-fun get!12632 (ValueCell!7956 V!27435) V!27435)

(declare-fun dynLambda!1164 (Int (_ BitVec 64)) V!27435)

(assert (=> b!864487 (= lt!391318 (get!12632 (select (arr!23890 _values!688) from!1053) (dynLambda!1164 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!864488 () Bool)

(declare-fun res!587529 () Bool)

(assert (=> b!864488 (=> (not res!587529) (not e!481615))))

(assert (=> b!864488 (= res!587529 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17046))))

(declare-fun mapNonEmpty!26786 () Bool)

(declare-fun tp!51469 () Bool)

(assert (=> mapNonEmpty!26786 (= mapRes!26786 (and tp!51469 e!481616))))

(declare-fun mapRest!26786 () (Array (_ BitVec 32) ValueCell!7956))

(declare-fun mapKey!26786 () (_ BitVec 32))

(declare-fun mapValue!26786 () ValueCell!7956)

(assert (=> mapNonEmpty!26786 (= (arr!23890 _values!688) (store mapRest!26786 mapKey!26786 mapValue!26786))))

(declare-fun b!864489 () Bool)

(declare-fun Unit!29552 () Unit!29549)

(assert (=> b!864489 (= e!481619 Unit!29552)))

(declare-fun b!864490 () Bool)

(declare-fun res!587519 () Bool)

(assert (=> b!864490 (=> (not res!587519) (not e!481615))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!864490 (= res!587519 (validMask!0 mask!1196))))

(assert (= (and start!73768 res!587524) b!864490))

(assert (= (and b!864490 res!587519) b!864479))

(assert (= (and b!864479 res!587527) b!864478))

(assert (= (and b!864478 res!587520) b!864488))

(assert (= (and b!864488 res!587529) b!864482))

(assert (= (and b!864482 res!587526) b!864475))

(assert (= (and b!864475 res!587522) b!864477))

(assert (= (and b!864477 res!587525) b!864480))

(assert (= (and b!864480 res!587528) b!864484))

(assert (= (and b!864484 (not res!587521)) b!864487))

(assert (= (and b!864487 c!92121) b!864483))

(assert (= (and b!864487 (not c!92121)) b!864489))

(assert (= (and b!864487 (not res!587523)) b!864485))

(assert (= (and b!864476 condMapEmpty!26786) mapIsEmpty!26786))

(assert (= (and b!864476 (not condMapEmpty!26786)) mapNonEmpty!26786))

(get-info :version)

(assert (= (and mapNonEmpty!26786 ((_ is ValueCellFull!7956) mapValue!26786)) b!864486))

(assert (= (and b!864476 ((_ is ValueCellFull!7956) mapDefault!26786)) b!864481))

(assert (= start!73768 b!864476))

(declare-fun b_lambda!12037 () Bool)

(assert (=> (not b_lambda!12037) (not b!864487)))

(declare-fun t!23976 () Bool)

(declare-fun tb!4785 () Bool)

(assert (=> (and start!73768 (= defaultEntry!696 defaultEntry!696) t!23976) tb!4785))

(declare-fun result!9173 () Bool)

(assert (=> tb!4785 (= result!9173 tp_is_empty!16791)))

(assert (=> b!864487 t!23976))

(declare-fun b_and!24309 () Bool)

(assert (= b_and!24307 (and (=> t!23976 result!9173) b_and!24309)))

(declare-fun m!805949 () Bool)

(assert (=> b!864475 m!805949))

(declare-fun m!805951 () Bool)

(assert (=> b!864484 m!805951))

(declare-fun m!805953 () Bool)

(assert (=> b!864484 m!805953))

(declare-fun m!805955 () Bool)

(assert (=> b!864484 m!805955))

(assert (=> b!864484 m!805953))

(declare-fun m!805957 () Bool)

(assert (=> b!864484 m!805957))

(declare-fun m!805959 () Bool)

(assert (=> b!864484 m!805959))

(declare-fun m!805961 () Bool)

(assert (=> b!864484 m!805961))

(declare-fun m!805963 () Bool)

(assert (=> b!864490 m!805963))

(declare-fun m!805965 () Bool)

(assert (=> b!864483 m!805965))

(declare-fun m!805967 () Bool)

(assert (=> b!864483 m!805967))

(declare-fun m!805969 () Bool)

(assert (=> b!864483 m!805969))

(declare-fun m!805971 () Bool)

(assert (=> b!864483 m!805971))

(declare-fun m!805973 () Bool)

(assert (=> b!864483 m!805973))

(declare-fun m!805975 () Bool)

(assert (=> b!864487 m!805975))

(declare-fun m!805977 () Bool)

(assert (=> b!864487 m!805977))

(declare-fun m!805979 () Bool)

(assert (=> b!864487 m!805979))

(declare-fun m!805981 () Bool)

(assert (=> b!864487 m!805981))

(assert (=> b!864487 m!805977))

(assert (=> b!864487 m!805953))

(assert (=> b!864487 m!805979))

(declare-fun m!805983 () Bool)

(assert (=> b!864485 m!805983))

(assert (=> b!864485 m!805983))

(declare-fun m!805985 () Bool)

(assert (=> b!864485 m!805985))

(assert (=> b!864485 m!805953))

(assert (=> b!864485 m!805953))

(declare-fun m!805987 () Bool)

(assert (=> b!864485 m!805987))

(declare-fun m!805989 () Bool)

(assert (=> b!864478 m!805989))

(declare-fun m!805991 () Bool)

(assert (=> b!864480 m!805991))

(declare-fun m!805993 () Bool)

(assert (=> b!864480 m!805993))

(declare-fun m!805995 () Bool)

(assert (=> b!864480 m!805995))

(declare-fun m!805997 () Bool)

(assert (=> b!864477 m!805997))

(declare-fun m!805999 () Bool)

(assert (=> mapNonEmpty!26786 m!805999))

(declare-fun m!806001 () Bool)

(assert (=> start!73768 m!806001))

(declare-fun m!806003 () Bool)

(assert (=> start!73768 m!806003))

(declare-fun m!806005 () Bool)

(assert (=> b!864488 m!806005))

(check-sat (not b!864478) tp_is_empty!16791 (not b_lambda!12037) (not b_next!14655) (not b!864490) (not mapNonEmpty!26786) (not b!864484) (not b!864483) (not b!864480) (not b!864488) b_and!24309 (not b!864475) (not b!864487) (not b!864485) (not start!73768))
(check-sat b_and!24309 (not b_next!14655))
