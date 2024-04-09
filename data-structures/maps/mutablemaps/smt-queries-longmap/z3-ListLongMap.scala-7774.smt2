; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97426 () Bool)

(assert start!97426)

(declare-fun b_free!23361 () Bool)

(declare-fun b_next!23361 () Bool)

(assert (=> start!97426 (= b_free!23361 (not b_next!23361))))

(declare-fun tp!82382 () Bool)

(declare-fun b_and!37579 () Bool)

(assert (=> start!97426 (= tp!82382 b_and!37579)))

(declare-fun res!741081 () Bool)

(declare-fun e!633309 () Bool)

(assert (=> start!97426 (=> (not res!741081) (not e!633309))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!72108 0))(
  ( (array!72109 (arr!34703 (Array (_ BitVec 32) (_ BitVec 64))) (size!35240 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72108)

(assert (=> start!97426 (= res!741081 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35240 _keys!1208))))))

(assert (=> start!97426 e!633309))

(declare-fun tp_is_empty!27621 () Bool)

(assert (=> start!97426 tp_is_empty!27621))

(declare-fun array_inv!26568 (array!72108) Bool)

(assert (=> start!97426 (array_inv!26568 _keys!1208)))

(assert (=> start!97426 true))

(assert (=> start!97426 tp!82382))

(declare-datatypes ((V!41955 0))(
  ( (V!41956 (val!13867 Int)) )
))
(declare-datatypes ((ValueCell!13101 0))(
  ( (ValueCellFull!13101 (v!16501 V!41955)) (EmptyCell!13101) )
))
(declare-datatypes ((array!72110 0))(
  ( (array!72111 (arr!34704 (Array (_ BitVec 32) ValueCell!13101)) (size!35241 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72110)

(declare-fun e!633306 () Bool)

(declare-fun array_inv!26569 (array!72110) Bool)

(assert (=> start!97426 (and (array_inv!26569 _values!996) e!633306)))

(declare-fun b!1110393 () Bool)

(declare-fun res!741087 () Bool)

(assert (=> b!1110393 (=> (not res!741087) (not e!633309))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72108 (_ BitVec 32)) Bool)

(assert (=> b!1110393 (= res!741087 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1110394 () Bool)

(declare-fun e!633311 () Bool)

(assert (=> b!1110394 (= e!633311 tp_is_empty!27621)))

(declare-fun b!1110395 () Bool)

(declare-fun res!741080 () Bool)

(assert (=> b!1110395 (=> (not res!741080) (not e!633309))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1110395 (= res!741080 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35240 _keys!1208))))))

(declare-fun b!1110396 () Bool)

(declare-fun e!633307 () Bool)

(assert (=> b!1110396 (= e!633307 true)))

(declare-fun e!633308 () Bool)

(assert (=> b!1110396 e!633308))

(declare-fun c!109193 () Bool)

(assert (=> b!1110396 (= c!109193 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun zeroValue!944 () V!41955)

(declare-datatypes ((Unit!36359 0))(
  ( (Unit!36360) )
))
(declare-fun lt!496139 () Unit!36359)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun minValue!944 () V!41955)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!286 (array!72108 array!72110 (_ BitVec 32) (_ BitVec 32) V!41955 V!41955 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36359)

(assert (=> b!1110396 (= lt!496139 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!286 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1110397 () Bool)

(declare-fun res!741086 () Bool)

(assert (=> b!1110397 (=> (not res!741086) (not e!633309))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1110397 (= res!741086 (validKeyInArray!0 k0!934))))

(declare-fun b!1110398 () Bool)

(declare-fun e!633310 () Bool)

(assert (=> b!1110398 (= e!633310 tp_is_empty!27621)))

(declare-fun b!1110399 () Bool)

(declare-fun res!741084 () Bool)

(assert (=> b!1110399 (=> (not res!741084) (not e!633309))))

(assert (=> b!1110399 (= res!741084 (= (select (arr!34703 _keys!1208) i!673) k0!934))))

(declare-fun b!1110400 () Bool)

(declare-fun res!741088 () Bool)

(assert (=> b!1110400 (=> (not res!741088) (not e!633309))))

(declare-datatypes ((List!24340 0))(
  ( (Nil!24337) (Cons!24336 (h!25545 (_ BitVec 64)) (t!34754 List!24340)) )
))
(declare-fun arrayNoDuplicates!0 (array!72108 (_ BitVec 32) List!24340) Bool)

(assert (=> b!1110400 (= res!741088 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24337))))

(declare-fun bm!46777 () Bool)

(declare-fun lt!496138 () array!72108)

(declare-datatypes ((tuple2!17604 0))(
  ( (tuple2!17605 (_1!8812 (_ BitVec 64)) (_2!8812 V!41955)) )
))
(declare-datatypes ((List!24341 0))(
  ( (Nil!24338) (Cons!24337 (h!25546 tuple2!17604) (t!34755 List!24341)) )
))
(declare-datatypes ((ListLongMap!15585 0))(
  ( (ListLongMap!15586 (toList!7808 List!24341)) )
))
(declare-fun call!46781 () ListLongMap!15585)

(declare-fun getCurrentListMapNoExtraKeys!4271 (array!72108 array!72110 (_ BitVec 32) (_ BitVec 32) V!41955 V!41955 (_ BitVec 32) Int) ListLongMap!15585)

(declare-fun dynLambda!2393 (Int (_ BitVec 64)) V!41955)

(assert (=> bm!46777 (= call!46781 (getCurrentListMapNoExtraKeys!4271 lt!496138 (array!72111 (store (arr!34704 _values!996) i!673 (ValueCellFull!13101 (dynLambda!2393 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35241 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1110401 () Bool)

(declare-fun call!46780 () ListLongMap!15585)

(assert (=> b!1110401 (= e!633308 (= call!46781 call!46780))))

(declare-fun b!1110402 () Bool)

(declare-fun e!633304 () Bool)

(assert (=> b!1110402 (= e!633304 (not e!633307))))

(declare-fun res!741083 () Bool)

(assert (=> b!1110402 (=> res!741083 e!633307)))

(assert (=> b!1110402 (= res!741083 (or (bvsle from!1455 i!673) (bvsgt (bvadd #b00000000000000000000000000000001 from!1455) (size!35240 _keys!1208)) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000)))))

(declare-fun arrayContainsKey!0 (array!72108 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1110402 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!496140 () Unit!36359)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72108 (_ BitVec 64) (_ BitVec 32)) Unit!36359)

(assert (=> b!1110402 (= lt!496140 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun bm!46778 () Bool)

(assert (=> bm!46778 (= call!46780 (getCurrentListMapNoExtraKeys!4271 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1110403 () Bool)

(assert (=> b!1110403 (= e!633309 e!633304)))

(declare-fun res!741082 () Bool)

(assert (=> b!1110403 (=> (not res!741082) (not e!633304))))

(assert (=> b!1110403 (= res!741082 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!496138 mask!1564))))

(assert (=> b!1110403 (= lt!496138 (array!72109 (store (arr!34703 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35240 _keys!1208)))))

(declare-fun b!1110404 () Bool)

(declare-fun mapRes!43249 () Bool)

(assert (=> b!1110404 (= e!633306 (and e!633311 mapRes!43249))))

(declare-fun condMapEmpty!43249 () Bool)

(declare-fun mapDefault!43249 () ValueCell!13101)

(assert (=> b!1110404 (= condMapEmpty!43249 (= (arr!34704 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13101)) mapDefault!43249)))))

(declare-fun b!1110405 () Bool)

(declare-fun res!741085 () Bool)

(assert (=> b!1110405 (=> (not res!741085) (not e!633309))))

(assert (=> b!1110405 (= res!741085 (and (= (size!35241 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35240 _keys!1208) (size!35241 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!43249 () Bool)

(declare-fun tp!82383 () Bool)

(assert (=> mapNonEmpty!43249 (= mapRes!43249 (and tp!82383 e!633310))))

(declare-fun mapRest!43249 () (Array (_ BitVec 32) ValueCell!13101))

(declare-fun mapKey!43249 () (_ BitVec 32))

(declare-fun mapValue!43249 () ValueCell!13101)

(assert (=> mapNonEmpty!43249 (= (arr!34704 _values!996) (store mapRest!43249 mapKey!43249 mapValue!43249))))

(declare-fun b!1110406 () Bool)

(declare-fun res!741090 () Bool)

(assert (=> b!1110406 (=> (not res!741090) (not e!633309))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1110406 (= res!741090 (validMask!0 mask!1564))))

(declare-fun mapIsEmpty!43249 () Bool)

(assert (=> mapIsEmpty!43249 mapRes!43249))

(declare-fun b!1110407 () Bool)

(declare-fun res!741089 () Bool)

(assert (=> b!1110407 (=> (not res!741089) (not e!633304))))

(assert (=> b!1110407 (= res!741089 (arrayNoDuplicates!0 lt!496138 #b00000000000000000000000000000000 Nil!24337))))

(declare-fun b!1110408 () Bool)

(declare-fun -!1034 (ListLongMap!15585 (_ BitVec 64)) ListLongMap!15585)

(assert (=> b!1110408 (= e!633308 (= call!46781 (-!1034 call!46780 k0!934)))))

(assert (= (and start!97426 res!741081) b!1110406))

(assert (= (and b!1110406 res!741090) b!1110405))

(assert (= (and b!1110405 res!741085) b!1110393))

(assert (= (and b!1110393 res!741087) b!1110400))

(assert (= (and b!1110400 res!741088) b!1110395))

(assert (= (and b!1110395 res!741080) b!1110397))

(assert (= (and b!1110397 res!741086) b!1110399))

(assert (= (and b!1110399 res!741084) b!1110403))

(assert (= (and b!1110403 res!741082) b!1110407))

(assert (= (and b!1110407 res!741089) b!1110402))

(assert (= (and b!1110402 (not res!741083)) b!1110396))

(assert (= (and b!1110396 c!109193) b!1110408))

(assert (= (and b!1110396 (not c!109193)) b!1110401))

(assert (= (or b!1110408 b!1110401) bm!46777))

(assert (= (or b!1110408 b!1110401) bm!46778))

(assert (= (and b!1110404 condMapEmpty!43249) mapIsEmpty!43249))

(assert (= (and b!1110404 (not condMapEmpty!43249)) mapNonEmpty!43249))

(get-info :version)

(assert (= (and mapNonEmpty!43249 ((_ is ValueCellFull!13101) mapValue!43249)) b!1110398))

(assert (= (and b!1110404 ((_ is ValueCellFull!13101) mapDefault!43249)) b!1110394))

(assert (= start!97426 b!1110404))

(declare-fun b_lambda!18417 () Bool)

(assert (=> (not b_lambda!18417) (not bm!46777)))

(declare-fun t!34753 () Bool)

(declare-fun tb!8235 () Bool)

(assert (=> (and start!97426 (= defaultEntry!1004 defaultEntry!1004) t!34753) tb!8235))

(declare-fun result!17023 () Bool)

(assert (=> tb!8235 (= result!17023 tp_is_empty!27621)))

(assert (=> bm!46777 t!34753))

(declare-fun b_and!37581 () Bool)

(assert (= b_and!37579 (and (=> t!34753 result!17023) b_and!37581)))

(declare-fun m!1028547 () Bool)

(assert (=> b!1110407 m!1028547))

(declare-fun m!1028549 () Bool)

(assert (=> bm!46778 m!1028549))

(declare-fun m!1028551 () Bool)

(assert (=> b!1110408 m!1028551))

(declare-fun m!1028553 () Bool)

(assert (=> b!1110399 m!1028553))

(declare-fun m!1028555 () Bool)

(assert (=> b!1110396 m!1028555))

(declare-fun m!1028557 () Bool)

(assert (=> mapNonEmpty!43249 m!1028557))

(declare-fun m!1028559 () Bool)

(assert (=> b!1110393 m!1028559))

(declare-fun m!1028561 () Bool)

(assert (=> b!1110403 m!1028561))

(declare-fun m!1028563 () Bool)

(assert (=> b!1110403 m!1028563))

(declare-fun m!1028565 () Bool)

(assert (=> start!97426 m!1028565))

(declare-fun m!1028567 () Bool)

(assert (=> start!97426 m!1028567))

(declare-fun m!1028569 () Bool)

(assert (=> b!1110400 m!1028569))

(declare-fun m!1028571 () Bool)

(assert (=> b!1110402 m!1028571))

(declare-fun m!1028573 () Bool)

(assert (=> b!1110402 m!1028573))

(declare-fun m!1028575 () Bool)

(assert (=> b!1110397 m!1028575))

(declare-fun m!1028577 () Bool)

(assert (=> b!1110406 m!1028577))

(declare-fun m!1028579 () Bool)

(assert (=> bm!46777 m!1028579))

(declare-fun m!1028581 () Bool)

(assert (=> bm!46777 m!1028581))

(declare-fun m!1028583 () Bool)

(assert (=> bm!46777 m!1028583))

(check-sat (not bm!46778) (not b!1110406) (not b!1110407) (not b!1110393) (not bm!46777) (not b_lambda!18417) (not b!1110400) b_and!37581 (not b!1110408) (not b!1110403) (not b!1110396) (not b!1110397) (not b!1110402) (not mapNonEmpty!43249) (not b_next!23361) tp_is_empty!27621 (not start!97426))
(check-sat b_and!37581 (not b_next!23361))
