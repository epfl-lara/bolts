; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!74884 () Bool)

(assert start!74884)

(declare-fun b_free!15405 () Bool)

(declare-fun b_next!15405 () Bool)

(assert (=> start!74884 (= b_free!15405 (not b_next!15405))))

(declare-fun tp!53916 () Bool)

(declare-fun b_and!25511 () Bool)

(assert (=> start!74884 (= tp!53916 b_and!25511)))

(declare-fun b!882369 () Bool)

(declare-fun res!599579 () Bool)

(declare-fun e!491114 () Bool)

(assert (=> b!882369 (=> (not res!599579) (not e!491114))))

(declare-datatypes ((array!51408 0))(
  ( (array!51409 (arr!24720 (Array (_ BitVec 32) (_ BitVec 64))) (size!25161 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!51408)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!51408 (_ BitVec 32)) Bool)

(assert (=> b!882369 (= res!599579 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun mapIsEmpty!28107 () Bool)

(declare-fun mapRes!28107 () Bool)

(assert (=> mapIsEmpty!28107 mapRes!28107))

(declare-fun b!882370 () Bool)

(declare-fun e!491113 () Bool)

(declare-fun e!491111 () Bool)

(assert (=> b!882370 (= e!491113 e!491111)))

(declare-fun res!599580 () Bool)

(assert (=> b!882370 (=> (not res!599580) (not e!491111))))

(declare-datatypes ((List!17647 0))(
  ( (Nil!17644) (Cons!17643 (h!18774 (_ BitVec 64)) (t!24862 List!17647)) )
))
(declare-fun contains!4266 (List!17647 (_ BitVec 64)) Bool)

(assert (=> b!882370 (= res!599580 (not (contains!4266 Nil!17644 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!882371 () Bool)

(declare-fun e!491110 () Bool)

(declare-fun e!491112 () Bool)

(assert (=> b!882371 (= e!491110 e!491112)))

(declare-fun res!599576 () Bool)

(assert (=> b!882371 (=> res!599576 e!491112)))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!882371 (= res!599576 (not (= (select (arr!24720 _keys!868) from!1053) k0!854)))))

(declare-datatypes ((V!28579 0))(
  ( (V!28580 (val!8872 Int)) )
))
(declare-datatypes ((tuple2!11780 0))(
  ( (tuple2!11781 (_1!5900 (_ BitVec 64)) (_2!5900 V!28579)) )
))
(declare-datatypes ((List!17648 0))(
  ( (Nil!17645) (Cons!17644 (h!18775 tuple2!11780) (t!24863 List!17648)) )
))
(declare-datatypes ((ListLongMap!10563 0))(
  ( (ListLongMap!10564 (toList!5297 List!17648)) )
))
(declare-fun lt!399236 () ListLongMap!10563)

(declare-fun defaultEntry!696 () Int)

(declare-fun lt!399237 () ListLongMap!10563)

(declare-datatypes ((ValueCell!8385 0))(
  ( (ValueCellFull!8385 (v!11332 V!28579)) (EmptyCell!8385) )
))
(declare-datatypes ((array!51410 0))(
  ( (array!51411 (arr!24721 (Array (_ BitVec 32) ValueCell!8385)) (size!25162 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!51410)

(declare-fun +!2503 (ListLongMap!10563 tuple2!11780) ListLongMap!10563)

(declare-fun get!13033 (ValueCell!8385 V!28579) V!28579)

(declare-fun dynLambda!1262 (Int (_ BitVec 64)) V!28579)

(assert (=> b!882371 (= lt!399237 (+!2503 lt!399236 (tuple2!11781 (select (arr!24720 _keys!868) from!1053) (get!13033 (select (arr!24721 _values!688) from!1053) (dynLambda!1262 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!882372 () Bool)

(declare-fun res!599578 () Bool)

(assert (=> b!882372 (=> (not res!599578) (not e!491114))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!882372 (= res!599578 (and (= (select (arr!24720 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!882373 () Bool)

(declare-fun res!599568 () Bool)

(assert (=> b!882373 (=> res!599568 e!491113)))

(declare-fun noDuplicate!1320 (List!17647) Bool)

(assert (=> b!882373 (= res!599568 (not (noDuplicate!1320 Nil!17644)))))

(declare-fun b!882374 () Bool)

(assert (=> b!882374 (= e!491112 e!491113)))

(declare-fun res!599577 () Bool)

(assert (=> b!882374 (=> res!599577 e!491113)))

(assert (=> b!882374 (= res!599577 (or (bvsge (size!25161 _keys!868) #b01111111111111111111111111111111) (bvsge (bvadd #b00000000000000000000000000000001 from!1053) (size!25161 _keys!868)) (bvsge from!1053 (size!25161 _keys!868))))))

(declare-fun arrayContainsKey!0 (array!51408 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!882374 (arrayContainsKey!0 _keys!868 k0!854 (bvadd #b00000000000000000000000000000001 from!1053))))

(declare-datatypes ((Unit!30082 0))(
  ( (Unit!30083) )
))
(declare-fun lt!399234 () Unit!30082)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!51408 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!30082)

(assert (=> b!882374 (= lt!399234 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!868 k0!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)))))

(declare-fun arrayNoDuplicates!0 (array!51408 (_ BitVec 32) List!17647) Bool)

(assert (=> b!882374 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!17644)))

(declare-fun lt!399239 () Unit!30082)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!51408 (_ BitVec 32) (_ BitVec 32)) Unit!30082)

(assert (=> b!882374 (= lt!399239 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(declare-fun b!882375 () Bool)

(declare-fun res!599574 () Bool)

(assert (=> b!882375 (=> (not res!599574) (not e!491114))))

(assert (=> b!882375 (= res!599574 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17644))))

(declare-fun b!882376 () Bool)

(declare-fun res!599573 () Bool)

(assert (=> b!882376 (=> (not res!599573) (not e!491114))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!882376 (= res!599573 (validMask!0 mask!1196))))

(declare-fun res!599569 () Bool)

(assert (=> start!74884 (=> (not res!599569) (not e!491114))))

(assert (=> start!74884 (= res!599569 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!25161 _keys!868))))))

(assert (=> start!74884 e!491114))

(declare-fun tp_is_empty!17649 () Bool)

(assert (=> start!74884 tp_is_empty!17649))

(assert (=> start!74884 true))

(assert (=> start!74884 tp!53916))

(declare-fun array_inv!19452 (array!51408) Bool)

(assert (=> start!74884 (array_inv!19452 _keys!868)))

(declare-fun e!491116 () Bool)

(declare-fun array_inv!19453 (array!51410) Bool)

(assert (=> start!74884 (and (array_inv!19453 _values!688) e!491116)))

(declare-fun b!882377 () Bool)

(declare-fun e!491109 () Bool)

(assert (=> b!882377 (= e!491109 tp_is_empty!17649)))

(declare-fun b!882378 () Bool)

(assert (=> b!882378 (= e!491111 (not (contains!4266 Nil!17644 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!882379 () Bool)

(declare-fun e!491115 () Bool)

(assert (=> b!882379 (= e!491115 (not e!491110))))

(declare-fun res!599571 () Bool)

(assert (=> b!882379 (=> res!599571 e!491110)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!882379 (= res!599571 (not (validKeyInArray!0 (select (arr!24720 _keys!868) from!1053))))))

(declare-fun lt!399238 () ListLongMap!10563)

(assert (=> b!882379 (= lt!399238 lt!399236)))

(declare-fun v!557 () V!28579)

(declare-fun lt!399233 () ListLongMap!10563)

(assert (=> b!882379 (= lt!399236 (+!2503 lt!399233 (tuple2!11781 k0!854 v!557)))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun minValue!654 () V!28579)

(declare-fun zeroValue!654 () V!28579)

(declare-fun lt!399232 () array!51410)

(declare-fun getCurrentListMapNoExtraKeys!3255 (array!51408 array!51410 (_ BitVec 32) (_ BitVec 32) V!28579 V!28579 (_ BitVec 32) Int) ListLongMap!10563)

(assert (=> b!882379 (= lt!399238 (getCurrentListMapNoExtraKeys!3255 _keys!868 lt!399232 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> b!882379 (= lt!399233 (getCurrentListMapNoExtraKeys!3255 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun lt!399235 () Unit!30082)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!729 (array!51408 array!51410 (_ BitVec 32) (_ BitVec 32) V!28579 V!28579 (_ BitVec 32) (_ BitVec 64) V!28579 (_ BitVec 32) Int) Unit!30082)

(assert (=> b!882379 (= lt!399235 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!729 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!882380 () Bool)

(declare-fun res!599575 () Bool)

(assert (=> b!882380 (=> (not res!599575) (not e!491114))))

(assert (=> b!882380 (= res!599575 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!25161 _keys!868))))))

(declare-fun mapNonEmpty!28107 () Bool)

(declare-fun tp!53915 () Bool)

(assert (=> mapNonEmpty!28107 (= mapRes!28107 (and tp!53915 e!491109))))

(declare-fun mapKey!28107 () (_ BitVec 32))

(declare-fun mapRest!28107 () (Array (_ BitVec 32) ValueCell!8385))

(declare-fun mapValue!28107 () ValueCell!8385)

(assert (=> mapNonEmpty!28107 (= (arr!24721 _values!688) (store mapRest!28107 mapKey!28107 mapValue!28107))))

(declare-fun b!882381 () Bool)

(declare-fun res!599567 () Bool)

(assert (=> b!882381 (=> (not res!599567) (not e!491114))))

(assert (=> b!882381 (= res!599567 (validKeyInArray!0 k0!854))))

(declare-fun b!882382 () Bool)

(declare-fun e!491108 () Bool)

(assert (=> b!882382 (= e!491116 (and e!491108 mapRes!28107))))

(declare-fun condMapEmpty!28107 () Bool)

(declare-fun mapDefault!28107 () ValueCell!8385)

(assert (=> b!882382 (= condMapEmpty!28107 (= (arr!24721 _values!688) ((as const (Array (_ BitVec 32) ValueCell!8385)) mapDefault!28107)))))

(declare-fun b!882383 () Bool)

(assert (=> b!882383 (= e!491108 tp_is_empty!17649)))

(declare-fun b!882384 () Bool)

(declare-fun res!599572 () Bool)

(assert (=> b!882384 (=> (not res!599572) (not e!491114))))

(assert (=> b!882384 (= res!599572 (and (= (size!25162 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!25161 _keys!868) (size!25162 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!882385 () Bool)

(assert (=> b!882385 (= e!491114 e!491115)))

(declare-fun res!599570 () Bool)

(assert (=> b!882385 (=> (not res!599570) (not e!491115))))

(assert (=> b!882385 (= res!599570 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(assert (=> b!882385 (= lt!399237 (getCurrentListMapNoExtraKeys!3255 _keys!868 lt!399232 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!882385 (= lt!399232 (array!51411 (store (arr!24721 _values!688) i!612 (ValueCellFull!8385 v!557)) (size!25162 _values!688)))))

(declare-fun lt!399231 () ListLongMap!10563)

(assert (=> b!882385 (= lt!399231 (getCurrentListMapNoExtraKeys!3255 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (= (and start!74884 res!599569) b!882376))

(assert (= (and b!882376 res!599573) b!882384))

(assert (= (and b!882384 res!599572) b!882369))

(assert (= (and b!882369 res!599579) b!882375))

(assert (= (and b!882375 res!599574) b!882380))

(assert (= (and b!882380 res!599575) b!882381))

(assert (= (and b!882381 res!599567) b!882372))

(assert (= (and b!882372 res!599578) b!882385))

(assert (= (and b!882385 res!599570) b!882379))

(assert (= (and b!882379 (not res!599571)) b!882371))

(assert (= (and b!882371 (not res!599576)) b!882374))

(assert (= (and b!882374 (not res!599577)) b!882373))

(assert (= (and b!882373 (not res!599568)) b!882370))

(assert (= (and b!882370 res!599580) b!882378))

(assert (= (and b!882382 condMapEmpty!28107) mapIsEmpty!28107))

(assert (= (and b!882382 (not condMapEmpty!28107)) mapNonEmpty!28107))

(get-info :version)

(assert (= (and mapNonEmpty!28107 ((_ is ValueCellFull!8385) mapValue!28107)) b!882377))

(assert (= (and b!882382 ((_ is ValueCellFull!8385) mapDefault!28107)) b!882383))

(assert (= start!74884 b!882382))

(declare-fun b_lambda!12679 () Bool)

(assert (=> (not b_lambda!12679) (not b!882371)))

(declare-fun t!24861 () Bool)

(declare-fun tb!5071 () Bool)

(assert (=> (and start!74884 (= defaultEntry!696 defaultEntry!696) t!24861) tb!5071))

(declare-fun result!9767 () Bool)

(assert (=> tb!5071 (= result!9767 tp_is_empty!17649)))

(assert (=> b!882371 t!24861))

(declare-fun b_and!25513 () Bool)

(assert (= b_and!25511 (and (=> t!24861 result!9767) b_and!25513)))

(declare-fun m!822445 () Bool)

(assert (=> start!74884 m!822445))

(declare-fun m!822447 () Bool)

(assert (=> start!74884 m!822447))

(declare-fun m!822449 () Bool)

(assert (=> b!882374 m!822449))

(declare-fun m!822451 () Bool)

(assert (=> b!882374 m!822451))

(declare-fun m!822453 () Bool)

(assert (=> b!882374 m!822453))

(declare-fun m!822455 () Bool)

(assert (=> b!882374 m!822455))

(declare-fun m!822457 () Bool)

(assert (=> b!882379 m!822457))

(declare-fun m!822459 () Bool)

(assert (=> b!882379 m!822459))

(declare-fun m!822461 () Bool)

(assert (=> b!882379 m!822461))

(declare-fun m!822463 () Bool)

(assert (=> b!882379 m!822463))

(assert (=> b!882379 m!822461))

(declare-fun m!822465 () Bool)

(assert (=> b!882379 m!822465))

(declare-fun m!822467 () Bool)

(assert (=> b!882379 m!822467))

(declare-fun m!822469 () Bool)

(assert (=> b!882369 m!822469))

(declare-fun m!822471 () Bool)

(assert (=> b!882376 m!822471))

(declare-fun m!822473 () Bool)

(assert (=> b!882378 m!822473))

(declare-fun m!822475 () Bool)

(assert (=> b!882370 m!822475))

(declare-fun m!822477 () Bool)

(assert (=> mapNonEmpty!28107 m!822477))

(declare-fun m!822479 () Bool)

(assert (=> b!882381 m!822479))

(declare-fun m!822481 () Bool)

(assert (=> b!882372 m!822481))

(declare-fun m!822483 () Bool)

(assert (=> b!882385 m!822483))

(declare-fun m!822485 () Bool)

(assert (=> b!882385 m!822485))

(declare-fun m!822487 () Bool)

(assert (=> b!882385 m!822487))

(declare-fun m!822489 () Bool)

(assert (=> b!882373 m!822489))

(declare-fun m!822491 () Bool)

(assert (=> b!882375 m!822491))

(declare-fun m!822493 () Bool)

(assert (=> b!882371 m!822493))

(declare-fun m!822495 () Bool)

(assert (=> b!882371 m!822495))

(declare-fun m!822497 () Bool)

(assert (=> b!882371 m!822497))

(declare-fun m!822499 () Bool)

(assert (=> b!882371 m!822499))

(assert (=> b!882371 m!822495))

(assert (=> b!882371 m!822461))

(assert (=> b!882371 m!822497))

(check-sat (not b!882381) (not start!74884) (not b!882374) (not b_next!15405) (not b!882378) (not b!882371) (not b!882369) (not b_lambda!12679) (not mapNonEmpty!28107) (not b!882379) (not b!882373) tp_is_empty!17649 (not b!882370) (not b!882376) (not b!882375) b_and!25513 (not b!882385))
(check-sat b_and!25513 (not b_next!15405))
(get-model)

(declare-fun b_lambda!12683 () Bool)

(assert (= b_lambda!12679 (or (and start!74884 b_free!15405) b_lambda!12683)))

(check-sat (not b!882381) (not start!74884) (not b!882374) (not b_next!15405) (not b!882378) (not b!882371) (not b!882369) (not b_lambda!12683) (not mapNonEmpty!28107) (not b!882379) (not b!882373) tp_is_empty!17649 (not b!882370) (not b!882376) (not b!882375) b_and!25513 (not b!882385))
(check-sat b_and!25513 (not b_next!15405))
(get-model)

(declare-fun d!109063 () Bool)

(declare-fun lt!399269 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!395 (List!17647) (InoxSet (_ BitVec 64)))

(assert (=> d!109063 (= lt!399269 (select (content!395 Nil!17644) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!491152 () Bool)

(assert (=> d!109063 (= lt!399269 e!491152)))

(declare-fun res!599627 () Bool)

(assert (=> d!109063 (=> (not res!599627) (not e!491152))))

(assert (=> d!109063 (= res!599627 ((_ is Cons!17643) Nil!17644))))

(assert (=> d!109063 (= (contains!4266 Nil!17644 #b1000000000000000000000000000000000000000000000000000000000000000) lt!399269)))

(declare-fun b!882445 () Bool)

(declare-fun e!491151 () Bool)

(assert (=> b!882445 (= e!491152 e!491151)))

(declare-fun res!599628 () Bool)

(assert (=> b!882445 (=> res!599628 e!491151)))

(assert (=> b!882445 (= res!599628 (= (h!18774 Nil!17644) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!882446 () Bool)

(assert (=> b!882446 (= e!491151 (contains!4266 (t!24862 Nil!17644) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!109063 res!599627) b!882445))

(assert (= (and b!882445 (not res!599628)) b!882446))

(declare-fun m!822557 () Bool)

(assert (=> d!109063 m!822557))

(declare-fun m!822559 () Bool)

(assert (=> d!109063 m!822559))

(declare-fun m!822561 () Bool)

(assert (=> b!882446 m!822561))

(assert (=> b!882378 d!109063))

(declare-fun d!109065 () Bool)

(assert (=> d!109065 (= (validMask!0 mask!1196) (and (or (= mask!1196 #b00000000000000000000000000000111) (= mask!1196 #b00000000000000000000000000001111) (= mask!1196 #b00000000000000000000000000011111) (= mask!1196 #b00000000000000000000000000111111) (= mask!1196 #b00000000000000000000000001111111) (= mask!1196 #b00000000000000000000000011111111) (= mask!1196 #b00000000000000000000000111111111) (= mask!1196 #b00000000000000000000001111111111) (= mask!1196 #b00000000000000000000011111111111) (= mask!1196 #b00000000000000000000111111111111) (= mask!1196 #b00000000000000000001111111111111) (= mask!1196 #b00000000000000000011111111111111) (= mask!1196 #b00000000000000000111111111111111) (= mask!1196 #b00000000000000001111111111111111) (= mask!1196 #b00000000000000011111111111111111) (= mask!1196 #b00000000000000111111111111111111) (= mask!1196 #b00000000000001111111111111111111) (= mask!1196 #b00000000000011111111111111111111) (= mask!1196 #b00000000000111111111111111111111) (= mask!1196 #b00000000001111111111111111111111) (= mask!1196 #b00000000011111111111111111111111) (= mask!1196 #b00000000111111111111111111111111) (= mask!1196 #b00000001111111111111111111111111) (= mask!1196 #b00000011111111111111111111111111) (= mask!1196 #b00000111111111111111111111111111) (= mask!1196 #b00001111111111111111111111111111) (= mask!1196 #b00011111111111111111111111111111) (= mask!1196 #b00111111111111111111111111111111)) (bvsle mask!1196 #b00111111111111111111111111111111)))))

(assert (=> b!882376 d!109065))

(declare-fun d!109067 () Bool)

(declare-fun lt!399270 () Bool)

(assert (=> d!109067 (= lt!399270 (select (content!395 Nil!17644) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!491154 () Bool)

(assert (=> d!109067 (= lt!399270 e!491154)))

(declare-fun res!599629 () Bool)

(assert (=> d!109067 (=> (not res!599629) (not e!491154))))

(assert (=> d!109067 (= res!599629 ((_ is Cons!17643) Nil!17644))))

(assert (=> d!109067 (= (contains!4266 Nil!17644 #b0000000000000000000000000000000000000000000000000000000000000000) lt!399270)))

(declare-fun b!882447 () Bool)

(declare-fun e!491153 () Bool)

(assert (=> b!882447 (= e!491154 e!491153)))

(declare-fun res!599630 () Bool)

(assert (=> b!882447 (=> res!599630 e!491153)))

(assert (=> b!882447 (= res!599630 (= (h!18774 Nil!17644) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!882448 () Bool)

(assert (=> b!882448 (= e!491153 (contains!4266 (t!24862 Nil!17644) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!109067 res!599629) b!882447))

(assert (= (and b!882447 (not res!599630)) b!882448))

(assert (=> d!109067 m!822557))

(declare-fun m!822563 () Bool)

(assert (=> d!109067 m!822563))

(declare-fun m!822565 () Bool)

(assert (=> b!882448 m!822565))

(assert (=> b!882370 d!109067))

(declare-fun b!882473 () Bool)

(assert (=> b!882473 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1053) (size!25161 _keys!868)))))

(assert (=> b!882473 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1053) (size!25162 _values!688)))))

(declare-fun lt!399287 () ListLongMap!10563)

(declare-fun e!491174 () Bool)

(declare-fun apply!384 (ListLongMap!10563 (_ BitVec 64)) V!28579)

(assert (=> b!882473 (= e!491174 (= (apply!384 lt!399287 (select (arr!24720 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053))) (get!13033 (select (arr!24721 _values!688) (bvadd #b00000000000000000000000000000001 from!1053)) (dynLambda!1262 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!882474 () Bool)

(declare-fun e!491169 () Bool)

(declare-fun isEmpty!676 (ListLongMap!10563) Bool)

(assert (=> b!882474 (= e!491169 (isEmpty!676 lt!399287))))

(declare-fun b!882475 () Bool)

(declare-fun e!491171 () ListLongMap!10563)

(assert (=> b!882475 (= e!491171 (ListLongMap!10564 Nil!17645))))

(declare-fun b!882476 () Bool)

(declare-fun lt!399289 () Unit!30082)

(declare-fun lt!399286 () Unit!30082)

(assert (=> b!882476 (= lt!399289 lt!399286)))

(declare-fun lt!399291 () ListLongMap!10563)

(declare-fun lt!399288 () (_ BitVec 64))

(declare-fun lt!399285 () (_ BitVec 64))

(declare-fun lt!399290 () V!28579)

(declare-fun contains!4268 (ListLongMap!10563 (_ BitVec 64)) Bool)

(assert (=> b!882476 (not (contains!4268 (+!2503 lt!399291 (tuple2!11781 lt!399288 lt!399290)) lt!399285))))

(declare-fun addStillNotContains!211 (ListLongMap!10563 (_ BitVec 64) V!28579 (_ BitVec 64)) Unit!30082)

(assert (=> b!882476 (= lt!399286 (addStillNotContains!211 lt!399291 lt!399288 lt!399290 lt!399285))))

(assert (=> b!882476 (= lt!399285 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!882476 (= lt!399290 (get!13033 (select (arr!24721 _values!688) (bvadd #b00000000000000000000000000000001 from!1053)) (dynLambda!1262 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!882476 (= lt!399288 (select (arr!24720 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053)))))

(declare-fun call!38969 () ListLongMap!10563)

(assert (=> b!882476 (= lt!399291 call!38969)))

(declare-fun e!491170 () ListLongMap!10563)

(assert (=> b!882476 (= e!491170 (+!2503 call!38969 (tuple2!11781 (select (arr!24720 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053)) (get!13033 (select (arr!24721 _values!688) (bvadd #b00000000000000000000000000000001 from!1053)) (dynLambda!1262 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!882477 () Bool)

(declare-fun e!491175 () Bool)

(declare-fun e!491173 () Bool)

(assert (=> b!882477 (= e!491175 e!491173)))

(declare-fun c!92936 () Bool)

(declare-fun e!491172 () Bool)

(assert (=> b!882477 (= c!92936 e!491172)))

(declare-fun res!599641 () Bool)

(assert (=> b!882477 (=> (not res!599641) (not e!491172))))

(assert (=> b!882477 (= res!599641 (bvslt (bvadd #b00000000000000000000000000000001 from!1053) (size!25161 _keys!868)))))

(declare-fun b!882478 () Bool)

(assert (=> b!882478 (= e!491170 call!38969)))

(declare-fun b!882479 () Bool)

(assert (=> b!882479 (= e!491169 (= lt!399287 (getCurrentListMapNoExtraKeys!3255 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053 #b00000000000000000000000000000001) defaultEntry!696)))))

(declare-fun b!882480 () Bool)

(declare-fun res!599639 () Bool)

(assert (=> b!882480 (=> (not res!599639) (not e!491175))))

(assert (=> b!882480 (= res!599639 (not (contains!4268 lt!399287 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!109069 () Bool)

(assert (=> d!109069 e!491175))

(declare-fun res!599642 () Bool)

(assert (=> d!109069 (=> (not res!599642) (not e!491175))))

(assert (=> d!109069 (= res!599642 (not (contains!4268 lt!399287 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!109069 (= lt!399287 e!491171)))

(declare-fun c!92935 () Bool)

(assert (=> d!109069 (= c!92935 (bvsge (bvadd #b00000000000000000000000000000001 from!1053) (size!25161 _keys!868)))))

(assert (=> d!109069 (validMask!0 mask!1196)))

(assert (=> d!109069 (= (getCurrentListMapNoExtraKeys!3255 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) lt!399287)))

(declare-fun b!882481 () Bool)

(assert (=> b!882481 (= e!491171 e!491170)))

(declare-fun c!92934 () Bool)

(assert (=> b!882481 (= c!92934 (validKeyInArray!0 (select (arr!24720 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053))))))

(declare-fun b!882482 () Bool)

(assert (=> b!882482 (= e!491172 (validKeyInArray!0 (select (arr!24720 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053))))))

(assert (=> b!882482 (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000)))

(declare-fun bm!38966 () Bool)

(assert (=> bm!38966 (= call!38969 (getCurrentListMapNoExtraKeys!3255 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053 #b00000000000000000000000000000001) defaultEntry!696))))

(declare-fun b!882483 () Bool)

(assert (=> b!882483 (= e!491173 e!491169)))

(declare-fun c!92933 () Bool)

(assert (=> b!882483 (= c!92933 (bvslt (bvadd #b00000000000000000000000000000001 from!1053) (size!25161 _keys!868)))))

(declare-fun b!882484 () Bool)

(assert (=> b!882484 (= e!491173 e!491174)))

(assert (=> b!882484 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1053) (size!25161 _keys!868)))))

(declare-fun res!599640 () Bool)

(assert (=> b!882484 (= res!599640 (contains!4268 lt!399287 (select (arr!24720 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053))))))

(assert (=> b!882484 (=> (not res!599640) (not e!491174))))

(assert (= (and d!109069 c!92935) b!882475))

(assert (= (and d!109069 (not c!92935)) b!882481))

(assert (= (and b!882481 c!92934) b!882476))

(assert (= (and b!882481 (not c!92934)) b!882478))

(assert (= (or b!882476 b!882478) bm!38966))

(assert (= (and d!109069 res!599642) b!882480))

(assert (= (and b!882480 res!599639) b!882477))

(assert (= (and b!882477 res!599641) b!882482))

(assert (= (and b!882477 c!92936) b!882484))

(assert (= (and b!882477 (not c!92936)) b!882483))

(assert (= (and b!882484 res!599640) b!882473))

(assert (= (and b!882483 c!92933) b!882479))

(assert (= (and b!882483 (not c!92933)) b!882474))

(declare-fun b_lambda!12685 () Bool)

(assert (=> (not b_lambda!12685) (not b!882473)))

(assert (=> b!882473 t!24861))

(declare-fun b_and!25519 () Bool)

(assert (= b_and!25513 (and (=> t!24861 result!9767) b_and!25519)))

(declare-fun b_lambda!12687 () Bool)

(assert (=> (not b_lambda!12687) (not b!882476)))

(assert (=> b!882476 t!24861))

(declare-fun b_and!25521 () Bool)

(assert (= b_and!25519 (and (=> t!24861 result!9767) b_and!25521)))

(declare-fun m!822567 () Bool)

(assert (=> d!109069 m!822567))

(assert (=> d!109069 m!822471))

(declare-fun m!822569 () Bool)

(assert (=> b!882480 m!822569))

(declare-fun m!822571 () Bool)

(assert (=> b!882482 m!822571))

(assert (=> b!882482 m!822571))

(declare-fun m!822573 () Bool)

(assert (=> b!882482 m!822573))

(declare-fun m!822575 () Bool)

(assert (=> bm!38966 m!822575))

(declare-fun m!822577 () Bool)

(assert (=> b!882476 m!822577))

(declare-fun m!822579 () Bool)

(assert (=> b!882476 m!822579))

(declare-fun m!822581 () Bool)

(assert (=> b!882476 m!822581))

(declare-fun m!822583 () Bool)

(assert (=> b!882476 m!822583))

(declare-fun m!822585 () Bool)

(assert (=> b!882476 m!822585))

(assert (=> b!882476 m!822577))

(assert (=> b!882476 m!822571))

(assert (=> b!882476 m!822497))

(assert (=> b!882476 m!822583))

(assert (=> b!882476 m!822497))

(declare-fun m!822587 () Bool)

(assert (=> b!882476 m!822587))

(declare-fun m!822589 () Bool)

(assert (=> b!882474 m!822589))

(assert (=> b!882481 m!822571))

(assert (=> b!882481 m!822571))

(assert (=> b!882481 m!822573))

(assert (=> b!882484 m!822571))

(assert (=> b!882484 m!822571))

(declare-fun m!822591 () Bool)

(assert (=> b!882484 m!822591))

(assert (=> b!882479 m!822575))

(assert (=> b!882473 m!822583))

(assert (=> b!882473 m!822571))

(assert (=> b!882473 m!822571))

(declare-fun m!822593 () Bool)

(assert (=> b!882473 m!822593))

(assert (=> b!882473 m!822497))

(assert (=> b!882473 m!822583))

(assert (=> b!882473 m!822497))

(assert (=> b!882473 m!822587))

(assert (=> b!882379 d!109069))

(declare-fun b!882485 () Bool)

(assert (=> b!882485 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1053) (size!25161 _keys!868)))))

(assert (=> b!882485 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1053) (size!25162 lt!399232)))))

(declare-fun e!491181 () Bool)

(declare-fun lt!399294 () ListLongMap!10563)

(assert (=> b!882485 (= e!491181 (= (apply!384 lt!399294 (select (arr!24720 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053))) (get!13033 (select (arr!24721 lt!399232) (bvadd #b00000000000000000000000000000001 from!1053)) (dynLambda!1262 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!882486 () Bool)

(declare-fun e!491176 () Bool)

(assert (=> b!882486 (= e!491176 (isEmpty!676 lt!399294))))

(declare-fun b!882487 () Bool)

(declare-fun e!491178 () ListLongMap!10563)

(assert (=> b!882487 (= e!491178 (ListLongMap!10564 Nil!17645))))

(declare-fun b!882488 () Bool)

(declare-fun lt!399296 () Unit!30082)

(declare-fun lt!399293 () Unit!30082)

(assert (=> b!882488 (= lt!399296 lt!399293)))

(declare-fun lt!399297 () V!28579)

(declare-fun lt!399298 () ListLongMap!10563)

(declare-fun lt!399295 () (_ BitVec 64))

(declare-fun lt!399292 () (_ BitVec 64))

(assert (=> b!882488 (not (contains!4268 (+!2503 lt!399298 (tuple2!11781 lt!399295 lt!399297)) lt!399292))))

(assert (=> b!882488 (= lt!399293 (addStillNotContains!211 lt!399298 lt!399295 lt!399297 lt!399292))))

(assert (=> b!882488 (= lt!399292 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!882488 (= lt!399297 (get!13033 (select (arr!24721 lt!399232) (bvadd #b00000000000000000000000000000001 from!1053)) (dynLambda!1262 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!882488 (= lt!399295 (select (arr!24720 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053)))))

(declare-fun call!38970 () ListLongMap!10563)

(assert (=> b!882488 (= lt!399298 call!38970)))

(declare-fun e!491177 () ListLongMap!10563)

(assert (=> b!882488 (= e!491177 (+!2503 call!38970 (tuple2!11781 (select (arr!24720 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053)) (get!13033 (select (arr!24721 lt!399232) (bvadd #b00000000000000000000000000000001 from!1053)) (dynLambda!1262 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!882489 () Bool)

(declare-fun e!491182 () Bool)

(declare-fun e!491180 () Bool)

(assert (=> b!882489 (= e!491182 e!491180)))

(declare-fun c!92940 () Bool)

(declare-fun e!491179 () Bool)

(assert (=> b!882489 (= c!92940 e!491179)))

(declare-fun res!599645 () Bool)

(assert (=> b!882489 (=> (not res!599645) (not e!491179))))

(assert (=> b!882489 (= res!599645 (bvslt (bvadd #b00000000000000000000000000000001 from!1053) (size!25161 _keys!868)))))

(declare-fun b!882490 () Bool)

(assert (=> b!882490 (= e!491177 call!38970)))

(declare-fun b!882491 () Bool)

(assert (=> b!882491 (= e!491176 (= lt!399294 (getCurrentListMapNoExtraKeys!3255 _keys!868 lt!399232 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053 #b00000000000000000000000000000001) defaultEntry!696)))))

(declare-fun b!882492 () Bool)

(declare-fun res!599643 () Bool)

(assert (=> b!882492 (=> (not res!599643) (not e!491182))))

(assert (=> b!882492 (= res!599643 (not (contains!4268 lt!399294 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!109071 () Bool)

(assert (=> d!109071 e!491182))

(declare-fun res!599646 () Bool)

(assert (=> d!109071 (=> (not res!599646) (not e!491182))))

(assert (=> d!109071 (= res!599646 (not (contains!4268 lt!399294 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!109071 (= lt!399294 e!491178)))

(declare-fun c!92939 () Bool)

(assert (=> d!109071 (= c!92939 (bvsge (bvadd #b00000000000000000000000000000001 from!1053) (size!25161 _keys!868)))))

(assert (=> d!109071 (validMask!0 mask!1196)))

(assert (=> d!109071 (= (getCurrentListMapNoExtraKeys!3255 _keys!868 lt!399232 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) lt!399294)))

(declare-fun b!882493 () Bool)

(assert (=> b!882493 (= e!491178 e!491177)))

(declare-fun c!92938 () Bool)

(assert (=> b!882493 (= c!92938 (validKeyInArray!0 (select (arr!24720 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053))))))

(declare-fun b!882494 () Bool)

(assert (=> b!882494 (= e!491179 (validKeyInArray!0 (select (arr!24720 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053))))))

(assert (=> b!882494 (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000)))

(declare-fun bm!38967 () Bool)

(assert (=> bm!38967 (= call!38970 (getCurrentListMapNoExtraKeys!3255 _keys!868 lt!399232 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053 #b00000000000000000000000000000001) defaultEntry!696))))

(declare-fun b!882495 () Bool)

(assert (=> b!882495 (= e!491180 e!491176)))

(declare-fun c!92937 () Bool)

(assert (=> b!882495 (= c!92937 (bvslt (bvadd #b00000000000000000000000000000001 from!1053) (size!25161 _keys!868)))))

(declare-fun b!882496 () Bool)

(assert (=> b!882496 (= e!491180 e!491181)))

(assert (=> b!882496 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1053) (size!25161 _keys!868)))))

(declare-fun res!599644 () Bool)

(assert (=> b!882496 (= res!599644 (contains!4268 lt!399294 (select (arr!24720 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053))))))

(assert (=> b!882496 (=> (not res!599644) (not e!491181))))

(assert (= (and d!109071 c!92939) b!882487))

(assert (= (and d!109071 (not c!92939)) b!882493))

(assert (= (and b!882493 c!92938) b!882488))

(assert (= (and b!882493 (not c!92938)) b!882490))

(assert (= (or b!882488 b!882490) bm!38967))

(assert (= (and d!109071 res!599646) b!882492))

(assert (= (and b!882492 res!599643) b!882489))

(assert (= (and b!882489 res!599645) b!882494))

(assert (= (and b!882489 c!92940) b!882496))

(assert (= (and b!882489 (not c!92940)) b!882495))

(assert (= (and b!882496 res!599644) b!882485))

(assert (= (and b!882495 c!92937) b!882491))

(assert (= (and b!882495 (not c!92937)) b!882486))

(declare-fun b_lambda!12689 () Bool)

(assert (=> (not b_lambda!12689) (not b!882485)))

(assert (=> b!882485 t!24861))

(declare-fun b_and!25523 () Bool)

(assert (= b_and!25521 (and (=> t!24861 result!9767) b_and!25523)))

(declare-fun b_lambda!12691 () Bool)

(assert (=> (not b_lambda!12691) (not b!882488)))

(assert (=> b!882488 t!24861))

(declare-fun b_and!25525 () Bool)

(assert (= b_and!25523 (and (=> t!24861 result!9767) b_and!25525)))

(declare-fun m!822595 () Bool)

(assert (=> d!109071 m!822595))

(assert (=> d!109071 m!822471))

(declare-fun m!822597 () Bool)

(assert (=> b!882492 m!822597))

(assert (=> b!882494 m!822571))

(assert (=> b!882494 m!822571))

(assert (=> b!882494 m!822573))

(declare-fun m!822599 () Bool)

(assert (=> bm!38967 m!822599))

(declare-fun m!822601 () Bool)

(assert (=> b!882488 m!822601))

(declare-fun m!822603 () Bool)

(assert (=> b!882488 m!822603))

(declare-fun m!822605 () Bool)

(assert (=> b!882488 m!822605))

(declare-fun m!822607 () Bool)

(assert (=> b!882488 m!822607))

(declare-fun m!822609 () Bool)

(assert (=> b!882488 m!822609))

(assert (=> b!882488 m!822601))

(assert (=> b!882488 m!822571))

(assert (=> b!882488 m!822497))

(assert (=> b!882488 m!822607))

(assert (=> b!882488 m!822497))

(declare-fun m!822611 () Bool)

(assert (=> b!882488 m!822611))

(declare-fun m!822613 () Bool)

(assert (=> b!882486 m!822613))

(assert (=> b!882493 m!822571))

(assert (=> b!882493 m!822571))

(assert (=> b!882493 m!822573))

(assert (=> b!882496 m!822571))

(assert (=> b!882496 m!822571))

(declare-fun m!822615 () Bool)

(assert (=> b!882496 m!822615))

(assert (=> b!882491 m!822599))

(assert (=> b!882485 m!822607))

(assert (=> b!882485 m!822571))

(assert (=> b!882485 m!822571))

(declare-fun m!822617 () Bool)

(assert (=> b!882485 m!822617))

(assert (=> b!882485 m!822497))

(assert (=> b!882485 m!822607))

(assert (=> b!882485 m!822497))

(assert (=> b!882485 m!822611))

(assert (=> b!882379 d!109071))

(declare-fun d!109073 () Bool)

(assert (=> d!109073 (= (validKeyInArray!0 (select (arr!24720 _keys!868) from!1053)) (and (not (= (select (arr!24720 _keys!868) from!1053) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!24720 _keys!868) from!1053) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!882379 d!109073))

(declare-fun d!109075 () Bool)

(declare-fun e!491187 () Bool)

(assert (=> d!109075 e!491187))

(declare-fun res!599649 () Bool)

(assert (=> d!109075 (=> (not res!599649) (not e!491187))))

(assert (=> d!109075 (= res!599649 (and (or (not (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612)) (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!25162 _values!688)))) (or (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612) (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!25162 _values!688))))))))

(declare-fun lt!399301 () Unit!30082)

(declare-fun choose!1448 (array!51408 array!51410 (_ BitVec 32) (_ BitVec 32) V!28579 V!28579 (_ BitVec 32) (_ BitVec 64) V!28579 (_ BitVec 32) Int) Unit!30082)

(assert (=> d!109075 (= lt!399301 (choose!1448 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> d!109075 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!1053) (size!25161 _keys!868)))))

(assert (=> d!109075 (= (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!729 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) lt!399301)))

(declare-fun e!491188 () Bool)

(declare-fun call!38976 () ListLongMap!10563)

(declare-fun b!882503 () Bool)

(declare-fun call!38975 () ListLongMap!10563)

(assert (=> b!882503 (= e!491188 (= call!38976 (+!2503 call!38975 (tuple2!11781 k0!854 v!557))))))

(declare-fun bm!38972 () Bool)

(assert (=> bm!38972 (= call!38976 (getCurrentListMapNoExtraKeys!3255 _keys!868 (array!51411 (store (arr!24721 _values!688) i!612 (ValueCellFull!8385 v!557)) (size!25162 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun bm!38973 () Bool)

(assert (=> bm!38973 (= call!38975 (getCurrentListMapNoExtraKeys!3255 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!882504 () Bool)

(assert (=> b!882504 (= e!491188 (= call!38976 call!38975))))

(declare-fun b!882505 () Bool)

(assert (=> b!882505 (= e!491187 e!491188)))

(declare-fun c!92943 () Bool)

(assert (=> b!882505 (= c!92943 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(assert (= (and d!109075 res!599649) b!882505))

(assert (= (and b!882505 c!92943) b!882503))

(assert (= (and b!882505 (not c!92943)) b!882504))

(assert (= (or b!882503 b!882504) bm!38973))

(assert (= (or b!882503 b!882504) bm!38972))

(declare-fun m!822619 () Bool)

(assert (=> d!109075 m!822619))

(declare-fun m!822621 () Bool)

(assert (=> b!882503 m!822621))

(assert (=> bm!38972 m!822485))

(declare-fun m!822623 () Bool)

(assert (=> bm!38972 m!822623))

(assert (=> bm!38973 m!822459))

(assert (=> b!882379 d!109075))

(declare-fun d!109077 () Bool)

(declare-fun e!491191 () Bool)

(assert (=> d!109077 e!491191))

(declare-fun res!599655 () Bool)

(assert (=> d!109077 (=> (not res!599655) (not e!491191))))

(declare-fun lt!399312 () ListLongMap!10563)

(assert (=> d!109077 (= res!599655 (contains!4268 lt!399312 (_1!5900 (tuple2!11781 k0!854 v!557))))))

(declare-fun lt!399310 () List!17648)

(assert (=> d!109077 (= lt!399312 (ListLongMap!10564 lt!399310))))

(declare-fun lt!399313 () Unit!30082)

(declare-fun lt!399311 () Unit!30082)

(assert (=> d!109077 (= lt!399313 lt!399311)))

(declare-datatypes ((Option!431 0))(
  ( (Some!430 (v!11338 V!28579)) (None!429) )
))
(declare-fun getValueByKey!425 (List!17648 (_ BitVec 64)) Option!431)

(assert (=> d!109077 (= (getValueByKey!425 lt!399310 (_1!5900 (tuple2!11781 k0!854 v!557))) (Some!430 (_2!5900 (tuple2!11781 k0!854 v!557))))))

(declare-fun lemmaContainsTupThenGetReturnValue!241 (List!17648 (_ BitVec 64) V!28579) Unit!30082)

(assert (=> d!109077 (= lt!399311 (lemmaContainsTupThenGetReturnValue!241 lt!399310 (_1!5900 (tuple2!11781 k0!854 v!557)) (_2!5900 (tuple2!11781 k0!854 v!557))))))

(declare-fun insertStrictlySorted!279 (List!17648 (_ BitVec 64) V!28579) List!17648)

(assert (=> d!109077 (= lt!399310 (insertStrictlySorted!279 (toList!5297 lt!399233) (_1!5900 (tuple2!11781 k0!854 v!557)) (_2!5900 (tuple2!11781 k0!854 v!557))))))

(assert (=> d!109077 (= (+!2503 lt!399233 (tuple2!11781 k0!854 v!557)) lt!399312)))

(declare-fun b!882510 () Bool)

(declare-fun res!599654 () Bool)

(assert (=> b!882510 (=> (not res!599654) (not e!491191))))

(assert (=> b!882510 (= res!599654 (= (getValueByKey!425 (toList!5297 lt!399312) (_1!5900 (tuple2!11781 k0!854 v!557))) (Some!430 (_2!5900 (tuple2!11781 k0!854 v!557)))))))

(declare-fun b!882511 () Bool)

(declare-fun contains!4269 (List!17648 tuple2!11780) Bool)

(assert (=> b!882511 (= e!491191 (contains!4269 (toList!5297 lt!399312) (tuple2!11781 k0!854 v!557)))))

(assert (= (and d!109077 res!599655) b!882510))

(assert (= (and b!882510 res!599654) b!882511))

(declare-fun m!822625 () Bool)

(assert (=> d!109077 m!822625))

(declare-fun m!822627 () Bool)

(assert (=> d!109077 m!822627))

(declare-fun m!822629 () Bool)

(assert (=> d!109077 m!822629))

(declare-fun m!822631 () Bool)

(assert (=> d!109077 m!822631))

(declare-fun m!822633 () Bool)

(assert (=> b!882510 m!822633))

(declare-fun m!822635 () Bool)

(assert (=> b!882511 m!822635))

(assert (=> b!882379 d!109077))

(declare-fun b!882520 () Bool)

(declare-fun e!491200 () Bool)

(declare-fun call!38979 () Bool)

(assert (=> b!882520 (= e!491200 call!38979)))

(declare-fun d!109079 () Bool)

(declare-fun res!599661 () Bool)

(declare-fun e!491198 () Bool)

(assert (=> d!109079 (=> res!599661 e!491198)))

(assert (=> d!109079 (= res!599661 (bvsge #b00000000000000000000000000000000 (size!25161 _keys!868)))))

(assert (=> d!109079 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196) e!491198)))

(declare-fun b!882521 () Bool)

(declare-fun e!491199 () Bool)

(assert (=> b!882521 (= e!491198 e!491199)))

(declare-fun c!92946 () Bool)

(assert (=> b!882521 (= c!92946 (validKeyInArray!0 (select (arr!24720 _keys!868) #b00000000000000000000000000000000)))))

(declare-fun b!882522 () Bool)

(assert (=> b!882522 (= e!491199 call!38979)))

(declare-fun b!882523 () Bool)

(assert (=> b!882523 (= e!491199 e!491200)))

(declare-fun lt!399322 () (_ BitVec 64))

(assert (=> b!882523 (= lt!399322 (select (arr!24720 _keys!868) #b00000000000000000000000000000000))))

(declare-fun lt!399320 () Unit!30082)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!51408 (_ BitVec 64) (_ BitVec 32)) Unit!30082)

(assert (=> b!882523 (= lt!399320 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!868 lt!399322 #b00000000000000000000000000000000))))

(assert (=> b!882523 (arrayContainsKey!0 _keys!868 lt!399322 #b00000000000000000000000000000000)))

(declare-fun lt!399321 () Unit!30082)

(assert (=> b!882523 (= lt!399321 lt!399320)))

(declare-fun res!599660 () Bool)

(declare-datatypes ((SeekEntryResult!8749 0))(
  ( (MissingZero!8749 (index!37366 (_ BitVec 32))) (Found!8749 (index!37367 (_ BitVec 32))) (Intermediate!8749 (undefined!9561 Bool) (index!37368 (_ BitVec 32)) (x!74792 (_ BitVec 32))) (Undefined!8749) (MissingVacant!8749 (index!37369 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!51408 (_ BitVec 32)) SeekEntryResult!8749)

(assert (=> b!882523 (= res!599660 (= (seekEntryOrOpen!0 (select (arr!24720 _keys!868) #b00000000000000000000000000000000) _keys!868 mask!1196) (Found!8749 #b00000000000000000000000000000000)))))

(assert (=> b!882523 (=> (not res!599660) (not e!491200))))

(declare-fun bm!38976 () Bool)

(assert (=> bm!38976 (= call!38979 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!868 mask!1196))))

(assert (= (and d!109079 (not res!599661)) b!882521))

(assert (= (and b!882521 c!92946) b!882523))

(assert (= (and b!882521 (not c!92946)) b!882522))

(assert (= (and b!882523 res!599660) b!882520))

(assert (= (or b!882520 b!882522) bm!38976))

(declare-fun m!822637 () Bool)

(assert (=> b!882521 m!822637))

(assert (=> b!882521 m!822637))

(declare-fun m!822639 () Bool)

(assert (=> b!882521 m!822639))

(assert (=> b!882523 m!822637))

(declare-fun m!822641 () Bool)

(assert (=> b!882523 m!822641))

(declare-fun m!822643 () Bool)

(assert (=> b!882523 m!822643))

(assert (=> b!882523 m!822637))

(declare-fun m!822645 () Bool)

(assert (=> b!882523 m!822645))

(declare-fun m!822647 () Bool)

(assert (=> bm!38976 m!822647))

(assert (=> b!882369 d!109079))

(declare-fun d!109081 () Bool)

(declare-fun res!599666 () Bool)

(declare-fun e!491205 () Bool)

(assert (=> d!109081 (=> res!599666 e!491205)))

(assert (=> d!109081 (= res!599666 ((_ is Nil!17644) Nil!17644))))

(assert (=> d!109081 (= (noDuplicate!1320 Nil!17644) e!491205)))

(declare-fun b!882528 () Bool)

(declare-fun e!491206 () Bool)

(assert (=> b!882528 (= e!491205 e!491206)))

(declare-fun res!599667 () Bool)

(assert (=> b!882528 (=> (not res!599667) (not e!491206))))

(assert (=> b!882528 (= res!599667 (not (contains!4266 (t!24862 Nil!17644) (h!18774 Nil!17644))))))

(declare-fun b!882529 () Bool)

(assert (=> b!882529 (= e!491206 (noDuplicate!1320 (t!24862 Nil!17644)))))

(assert (= (and d!109081 (not res!599666)) b!882528))

(assert (= (and b!882528 res!599667) b!882529))

(declare-fun m!822649 () Bool)

(assert (=> b!882528 m!822649))

(declare-fun m!822651 () Bool)

(assert (=> b!882529 m!822651))

(assert (=> b!882373 d!109081))

(declare-fun d!109083 () Bool)

(assert (=> d!109083 (= (validKeyInArray!0 k0!854) (and (not (= k0!854 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!854 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!882381 d!109083))

(declare-fun d!109085 () Bool)

(declare-fun e!491207 () Bool)

(assert (=> d!109085 e!491207))

(declare-fun res!599669 () Bool)

(assert (=> d!109085 (=> (not res!599669) (not e!491207))))

(declare-fun lt!399325 () ListLongMap!10563)

(assert (=> d!109085 (= res!599669 (contains!4268 lt!399325 (_1!5900 (tuple2!11781 (select (arr!24720 _keys!868) from!1053) (get!13033 (select (arr!24721 _values!688) from!1053) (dynLambda!1262 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun lt!399323 () List!17648)

(assert (=> d!109085 (= lt!399325 (ListLongMap!10564 lt!399323))))

(declare-fun lt!399326 () Unit!30082)

(declare-fun lt!399324 () Unit!30082)

(assert (=> d!109085 (= lt!399326 lt!399324)))

(assert (=> d!109085 (= (getValueByKey!425 lt!399323 (_1!5900 (tuple2!11781 (select (arr!24720 _keys!868) from!1053) (get!13033 (select (arr!24721 _values!688) from!1053) (dynLambda!1262 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!430 (_2!5900 (tuple2!11781 (select (arr!24720 _keys!868) from!1053) (get!13033 (select (arr!24721 _values!688) from!1053) (dynLambda!1262 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!109085 (= lt!399324 (lemmaContainsTupThenGetReturnValue!241 lt!399323 (_1!5900 (tuple2!11781 (select (arr!24720 _keys!868) from!1053) (get!13033 (select (arr!24721 _values!688) from!1053) (dynLambda!1262 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!5900 (tuple2!11781 (select (arr!24720 _keys!868) from!1053) (get!13033 (select (arr!24721 _values!688) from!1053) (dynLambda!1262 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!109085 (= lt!399323 (insertStrictlySorted!279 (toList!5297 lt!399236) (_1!5900 (tuple2!11781 (select (arr!24720 _keys!868) from!1053) (get!13033 (select (arr!24721 _values!688) from!1053) (dynLambda!1262 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!5900 (tuple2!11781 (select (arr!24720 _keys!868) from!1053) (get!13033 (select (arr!24721 _values!688) from!1053) (dynLambda!1262 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!109085 (= (+!2503 lt!399236 (tuple2!11781 (select (arr!24720 _keys!868) from!1053) (get!13033 (select (arr!24721 _values!688) from!1053) (dynLambda!1262 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))) lt!399325)))

(declare-fun b!882530 () Bool)

(declare-fun res!599668 () Bool)

(assert (=> b!882530 (=> (not res!599668) (not e!491207))))

(assert (=> b!882530 (= res!599668 (= (getValueByKey!425 (toList!5297 lt!399325) (_1!5900 (tuple2!11781 (select (arr!24720 _keys!868) from!1053) (get!13033 (select (arr!24721 _values!688) from!1053) (dynLambda!1262 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!430 (_2!5900 (tuple2!11781 (select (arr!24720 _keys!868) from!1053) (get!13033 (select (arr!24721 _values!688) from!1053) (dynLambda!1262 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun b!882531 () Bool)

(assert (=> b!882531 (= e!491207 (contains!4269 (toList!5297 lt!399325) (tuple2!11781 (select (arr!24720 _keys!868) from!1053) (get!13033 (select (arr!24721 _values!688) from!1053) (dynLambda!1262 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!109085 res!599669) b!882530))

(assert (= (and b!882530 res!599668) b!882531))

(declare-fun m!822653 () Bool)

(assert (=> d!109085 m!822653))

(declare-fun m!822655 () Bool)

(assert (=> d!109085 m!822655))

(declare-fun m!822657 () Bool)

(assert (=> d!109085 m!822657))

(declare-fun m!822659 () Bool)

(assert (=> d!109085 m!822659))

(declare-fun m!822661 () Bool)

(assert (=> b!882530 m!822661))

(declare-fun m!822663 () Bool)

(assert (=> b!882531 m!822663))

(assert (=> b!882371 d!109085))

(declare-fun d!109087 () Bool)

(declare-fun c!92949 () Bool)

(assert (=> d!109087 (= c!92949 ((_ is ValueCellFull!8385) (select (arr!24721 _values!688) from!1053)))))

(declare-fun e!491210 () V!28579)

(assert (=> d!109087 (= (get!13033 (select (arr!24721 _values!688) from!1053) (dynLambda!1262 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)) e!491210)))

(declare-fun b!882536 () Bool)

(declare-fun get!13034 (ValueCell!8385 V!28579) V!28579)

(assert (=> b!882536 (= e!491210 (get!13034 (select (arr!24721 _values!688) from!1053) (dynLambda!1262 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!882537 () Bool)

(declare-fun get!13035 (ValueCell!8385 V!28579) V!28579)

(assert (=> b!882537 (= e!491210 (get!13035 (select (arr!24721 _values!688) from!1053) (dynLambda!1262 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!109087 c!92949) b!882536))

(assert (= (and d!109087 (not c!92949)) b!882537))

(assert (=> b!882536 m!822495))

(assert (=> b!882536 m!822497))

(declare-fun m!822665 () Bool)

(assert (=> b!882536 m!822665))

(assert (=> b!882537 m!822495))

(assert (=> b!882537 m!822497))

(declare-fun m!822667 () Bool)

(assert (=> b!882537 m!822667))

(assert (=> b!882371 d!109087))

(declare-fun b!882538 () Bool)

(assert (=> b!882538 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvslt from!1053 (size!25161 _keys!868)))))

(assert (=> b!882538 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvslt from!1053 (size!25162 lt!399232)))))

(declare-fun e!491216 () Bool)

(declare-fun lt!399329 () ListLongMap!10563)

(assert (=> b!882538 (= e!491216 (= (apply!384 lt!399329 (select (arr!24720 _keys!868) from!1053)) (get!13033 (select (arr!24721 lt!399232) from!1053) (dynLambda!1262 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!882539 () Bool)

(declare-fun e!491211 () Bool)

(assert (=> b!882539 (= e!491211 (isEmpty!676 lt!399329))))

(declare-fun b!882540 () Bool)

(declare-fun e!491213 () ListLongMap!10563)

(assert (=> b!882540 (= e!491213 (ListLongMap!10564 Nil!17645))))

(declare-fun b!882541 () Bool)

(declare-fun lt!399331 () Unit!30082)

(declare-fun lt!399328 () Unit!30082)

(assert (=> b!882541 (= lt!399331 lt!399328)))

(declare-fun lt!399333 () ListLongMap!10563)

(declare-fun lt!399330 () (_ BitVec 64))

(declare-fun lt!399332 () V!28579)

(declare-fun lt!399327 () (_ BitVec 64))

(assert (=> b!882541 (not (contains!4268 (+!2503 lt!399333 (tuple2!11781 lt!399330 lt!399332)) lt!399327))))

(assert (=> b!882541 (= lt!399328 (addStillNotContains!211 lt!399333 lt!399330 lt!399332 lt!399327))))

(assert (=> b!882541 (= lt!399327 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!882541 (= lt!399332 (get!13033 (select (arr!24721 lt!399232) from!1053) (dynLambda!1262 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!882541 (= lt!399330 (select (arr!24720 _keys!868) from!1053))))

(declare-fun call!38980 () ListLongMap!10563)

(assert (=> b!882541 (= lt!399333 call!38980)))

(declare-fun e!491212 () ListLongMap!10563)

(assert (=> b!882541 (= e!491212 (+!2503 call!38980 (tuple2!11781 (select (arr!24720 _keys!868) from!1053) (get!13033 (select (arr!24721 lt!399232) from!1053) (dynLambda!1262 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!882542 () Bool)

(declare-fun e!491217 () Bool)

(declare-fun e!491215 () Bool)

(assert (=> b!882542 (= e!491217 e!491215)))

(declare-fun c!92953 () Bool)

(declare-fun e!491214 () Bool)

(assert (=> b!882542 (= c!92953 e!491214)))

(declare-fun res!599672 () Bool)

(assert (=> b!882542 (=> (not res!599672) (not e!491214))))

(assert (=> b!882542 (= res!599672 (bvslt from!1053 (size!25161 _keys!868)))))

(declare-fun b!882543 () Bool)

(assert (=> b!882543 (= e!491212 call!38980)))

(declare-fun b!882544 () Bool)

(assert (=> b!882544 (= e!491211 (= lt!399329 (getCurrentListMapNoExtraKeys!3255 _keys!868 lt!399232 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd from!1053 #b00000000000000000000000000000001) defaultEntry!696)))))

(declare-fun b!882545 () Bool)

(declare-fun res!599670 () Bool)

(assert (=> b!882545 (=> (not res!599670) (not e!491217))))

(assert (=> b!882545 (= res!599670 (not (contains!4268 lt!399329 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!109089 () Bool)

(assert (=> d!109089 e!491217))

(declare-fun res!599673 () Bool)

(assert (=> d!109089 (=> (not res!599673) (not e!491217))))

(assert (=> d!109089 (= res!599673 (not (contains!4268 lt!399329 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!109089 (= lt!399329 e!491213)))

(declare-fun c!92952 () Bool)

(assert (=> d!109089 (= c!92952 (bvsge from!1053 (size!25161 _keys!868)))))

(assert (=> d!109089 (validMask!0 mask!1196)))

(assert (=> d!109089 (= (getCurrentListMapNoExtraKeys!3255 _keys!868 lt!399232 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696) lt!399329)))

(declare-fun b!882546 () Bool)

(assert (=> b!882546 (= e!491213 e!491212)))

(declare-fun c!92951 () Bool)

(assert (=> b!882546 (= c!92951 (validKeyInArray!0 (select (arr!24720 _keys!868) from!1053)))))

(declare-fun b!882547 () Bool)

(assert (=> b!882547 (= e!491214 (validKeyInArray!0 (select (arr!24720 _keys!868) from!1053)))))

(assert (=> b!882547 (bvsge from!1053 #b00000000000000000000000000000000)))

(declare-fun bm!38977 () Bool)

(assert (=> bm!38977 (= call!38980 (getCurrentListMapNoExtraKeys!3255 _keys!868 lt!399232 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd from!1053 #b00000000000000000000000000000001) defaultEntry!696))))

(declare-fun b!882548 () Bool)

(assert (=> b!882548 (= e!491215 e!491211)))

(declare-fun c!92950 () Bool)

(assert (=> b!882548 (= c!92950 (bvslt from!1053 (size!25161 _keys!868)))))

(declare-fun b!882549 () Bool)

(assert (=> b!882549 (= e!491215 e!491216)))

(assert (=> b!882549 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvslt from!1053 (size!25161 _keys!868)))))

(declare-fun res!599671 () Bool)

(assert (=> b!882549 (= res!599671 (contains!4268 lt!399329 (select (arr!24720 _keys!868) from!1053)))))

(assert (=> b!882549 (=> (not res!599671) (not e!491216))))

(assert (= (and d!109089 c!92952) b!882540))

(assert (= (and d!109089 (not c!92952)) b!882546))

(assert (= (and b!882546 c!92951) b!882541))

(assert (= (and b!882546 (not c!92951)) b!882543))

(assert (= (or b!882541 b!882543) bm!38977))

(assert (= (and d!109089 res!599673) b!882545))

(assert (= (and b!882545 res!599670) b!882542))

(assert (= (and b!882542 res!599672) b!882547))

(assert (= (and b!882542 c!92953) b!882549))

(assert (= (and b!882542 (not c!92953)) b!882548))

(assert (= (and b!882549 res!599671) b!882538))

(assert (= (and b!882548 c!92950) b!882544))

(assert (= (and b!882548 (not c!92950)) b!882539))

(declare-fun b_lambda!12693 () Bool)

(assert (=> (not b_lambda!12693) (not b!882538)))

(assert (=> b!882538 t!24861))

(declare-fun b_and!25527 () Bool)

(assert (= b_and!25525 (and (=> t!24861 result!9767) b_and!25527)))

(declare-fun b_lambda!12695 () Bool)

(assert (=> (not b_lambda!12695) (not b!882541)))

(assert (=> b!882541 t!24861))

(declare-fun b_and!25529 () Bool)

(assert (= b_and!25527 (and (=> t!24861 result!9767) b_and!25529)))

(declare-fun m!822669 () Bool)

(assert (=> d!109089 m!822669))

(assert (=> d!109089 m!822471))

(declare-fun m!822671 () Bool)

(assert (=> b!882545 m!822671))

(assert (=> b!882547 m!822461))

(assert (=> b!882547 m!822461))

(assert (=> b!882547 m!822463))

(declare-fun m!822673 () Bool)

(assert (=> bm!38977 m!822673))

(declare-fun m!822675 () Bool)

(assert (=> b!882541 m!822675))

(declare-fun m!822677 () Bool)

(assert (=> b!882541 m!822677))

(declare-fun m!822679 () Bool)

(assert (=> b!882541 m!822679))

(declare-fun m!822681 () Bool)

(assert (=> b!882541 m!822681))

(declare-fun m!822683 () Bool)

(assert (=> b!882541 m!822683))

(assert (=> b!882541 m!822675))

(assert (=> b!882541 m!822461))

(assert (=> b!882541 m!822497))

(assert (=> b!882541 m!822681))

(assert (=> b!882541 m!822497))

(declare-fun m!822685 () Bool)

(assert (=> b!882541 m!822685))

(declare-fun m!822687 () Bool)

(assert (=> b!882539 m!822687))

(assert (=> b!882546 m!822461))

(assert (=> b!882546 m!822461))

(assert (=> b!882546 m!822463))

(assert (=> b!882549 m!822461))

(assert (=> b!882549 m!822461))

(declare-fun m!822689 () Bool)

(assert (=> b!882549 m!822689))

(assert (=> b!882544 m!822673))

(assert (=> b!882538 m!822681))

(assert (=> b!882538 m!822461))

(assert (=> b!882538 m!822461))

(declare-fun m!822691 () Bool)

(assert (=> b!882538 m!822691))

(assert (=> b!882538 m!822497))

(assert (=> b!882538 m!822681))

(assert (=> b!882538 m!822497))

(assert (=> b!882538 m!822685))

(assert (=> b!882385 d!109089))

(declare-fun b!882550 () Bool)

(assert (=> b!882550 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvslt from!1053 (size!25161 _keys!868)))))

(assert (=> b!882550 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvslt from!1053 (size!25162 _values!688)))))

(declare-fun e!491223 () Bool)

(declare-fun lt!399336 () ListLongMap!10563)

(assert (=> b!882550 (= e!491223 (= (apply!384 lt!399336 (select (arr!24720 _keys!868) from!1053)) (get!13033 (select (arr!24721 _values!688) from!1053) (dynLambda!1262 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!882551 () Bool)

(declare-fun e!491218 () Bool)

(assert (=> b!882551 (= e!491218 (isEmpty!676 lt!399336))))

(declare-fun b!882552 () Bool)

(declare-fun e!491220 () ListLongMap!10563)

(assert (=> b!882552 (= e!491220 (ListLongMap!10564 Nil!17645))))

(declare-fun b!882553 () Bool)

(declare-fun lt!399338 () Unit!30082)

(declare-fun lt!399335 () Unit!30082)

(assert (=> b!882553 (= lt!399338 lt!399335)))

(declare-fun lt!399340 () ListLongMap!10563)

(declare-fun lt!399334 () (_ BitVec 64))

(declare-fun lt!399339 () V!28579)

(declare-fun lt!399337 () (_ BitVec 64))

(assert (=> b!882553 (not (contains!4268 (+!2503 lt!399340 (tuple2!11781 lt!399337 lt!399339)) lt!399334))))

(assert (=> b!882553 (= lt!399335 (addStillNotContains!211 lt!399340 lt!399337 lt!399339 lt!399334))))

(assert (=> b!882553 (= lt!399334 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!882553 (= lt!399339 (get!13033 (select (arr!24721 _values!688) from!1053) (dynLambda!1262 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!882553 (= lt!399337 (select (arr!24720 _keys!868) from!1053))))

(declare-fun call!38981 () ListLongMap!10563)

(assert (=> b!882553 (= lt!399340 call!38981)))

(declare-fun e!491219 () ListLongMap!10563)

(assert (=> b!882553 (= e!491219 (+!2503 call!38981 (tuple2!11781 (select (arr!24720 _keys!868) from!1053) (get!13033 (select (arr!24721 _values!688) from!1053) (dynLambda!1262 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!882554 () Bool)

(declare-fun e!491224 () Bool)

(declare-fun e!491222 () Bool)

(assert (=> b!882554 (= e!491224 e!491222)))

(declare-fun c!92957 () Bool)

(declare-fun e!491221 () Bool)

(assert (=> b!882554 (= c!92957 e!491221)))

(declare-fun res!599676 () Bool)

(assert (=> b!882554 (=> (not res!599676) (not e!491221))))

(assert (=> b!882554 (= res!599676 (bvslt from!1053 (size!25161 _keys!868)))))

(declare-fun b!882555 () Bool)

(assert (=> b!882555 (= e!491219 call!38981)))

(declare-fun b!882556 () Bool)

(assert (=> b!882556 (= e!491218 (= lt!399336 (getCurrentListMapNoExtraKeys!3255 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd from!1053 #b00000000000000000000000000000001) defaultEntry!696)))))

(declare-fun b!882557 () Bool)

(declare-fun res!599674 () Bool)

(assert (=> b!882557 (=> (not res!599674) (not e!491224))))

(assert (=> b!882557 (= res!599674 (not (contains!4268 lt!399336 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!109091 () Bool)

(assert (=> d!109091 e!491224))

(declare-fun res!599677 () Bool)

(assert (=> d!109091 (=> (not res!599677) (not e!491224))))

(assert (=> d!109091 (= res!599677 (not (contains!4268 lt!399336 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!109091 (= lt!399336 e!491220)))

(declare-fun c!92956 () Bool)

(assert (=> d!109091 (= c!92956 (bvsge from!1053 (size!25161 _keys!868)))))

(assert (=> d!109091 (validMask!0 mask!1196)))

(assert (=> d!109091 (= (getCurrentListMapNoExtraKeys!3255 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696) lt!399336)))

(declare-fun b!882558 () Bool)

(assert (=> b!882558 (= e!491220 e!491219)))

(declare-fun c!92955 () Bool)

(assert (=> b!882558 (= c!92955 (validKeyInArray!0 (select (arr!24720 _keys!868) from!1053)))))

(declare-fun b!882559 () Bool)

(assert (=> b!882559 (= e!491221 (validKeyInArray!0 (select (arr!24720 _keys!868) from!1053)))))

(assert (=> b!882559 (bvsge from!1053 #b00000000000000000000000000000000)))

(declare-fun bm!38978 () Bool)

(assert (=> bm!38978 (= call!38981 (getCurrentListMapNoExtraKeys!3255 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd from!1053 #b00000000000000000000000000000001) defaultEntry!696))))

(declare-fun b!882560 () Bool)

(assert (=> b!882560 (= e!491222 e!491218)))

(declare-fun c!92954 () Bool)

(assert (=> b!882560 (= c!92954 (bvslt from!1053 (size!25161 _keys!868)))))

(declare-fun b!882561 () Bool)

(assert (=> b!882561 (= e!491222 e!491223)))

(assert (=> b!882561 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvslt from!1053 (size!25161 _keys!868)))))

(declare-fun res!599675 () Bool)

(assert (=> b!882561 (= res!599675 (contains!4268 lt!399336 (select (arr!24720 _keys!868) from!1053)))))

(assert (=> b!882561 (=> (not res!599675) (not e!491223))))

(assert (= (and d!109091 c!92956) b!882552))

(assert (= (and d!109091 (not c!92956)) b!882558))

(assert (= (and b!882558 c!92955) b!882553))

(assert (= (and b!882558 (not c!92955)) b!882555))

(assert (= (or b!882553 b!882555) bm!38978))

(assert (= (and d!109091 res!599677) b!882557))

(assert (= (and b!882557 res!599674) b!882554))

(assert (= (and b!882554 res!599676) b!882559))

(assert (= (and b!882554 c!92957) b!882561))

(assert (= (and b!882554 (not c!92957)) b!882560))

(assert (= (and b!882561 res!599675) b!882550))

(assert (= (and b!882560 c!92954) b!882556))

(assert (= (and b!882560 (not c!92954)) b!882551))

(declare-fun b_lambda!12697 () Bool)

(assert (=> (not b_lambda!12697) (not b!882550)))

(assert (=> b!882550 t!24861))

(declare-fun b_and!25531 () Bool)

(assert (= b_and!25529 (and (=> t!24861 result!9767) b_and!25531)))

(declare-fun b_lambda!12699 () Bool)

(assert (=> (not b_lambda!12699) (not b!882553)))

(assert (=> b!882553 t!24861))

(declare-fun b_and!25533 () Bool)

(assert (= b_and!25531 (and (=> t!24861 result!9767) b_and!25533)))

(declare-fun m!822693 () Bool)

(assert (=> d!109091 m!822693))

(assert (=> d!109091 m!822471))

(declare-fun m!822695 () Bool)

(assert (=> b!882557 m!822695))

(assert (=> b!882559 m!822461))

(assert (=> b!882559 m!822461))

(assert (=> b!882559 m!822463))

(declare-fun m!822697 () Bool)

(assert (=> bm!38978 m!822697))

(declare-fun m!822699 () Bool)

(assert (=> b!882553 m!822699))

(declare-fun m!822701 () Bool)

(assert (=> b!882553 m!822701))

(declare-fun m!822703 () Bool)

(assert (=> b!882553 m!822703))

(assert (=> b!882553 m!822495))

(declare-fun m!822705 () Bool)

(assert (=> b!882553 m!822705))

(assert (=> b!882553 m!822699))

(assert (=> b!882553 m!822461))

(assert (=> b!882553 m!822497))

(assert (=> b!882553 m!822495))

(assert (=> b!882553 m!822497))

(assert (=> b!882553 m!822499))

(declare-fun m!822707 () Bool)

(assert (=> b!882551 m!822707))

(assert (=> b!882558 m!822461))

(assert (=> b!882558 m!822461))

(assert (=> b!882558 m!822463))

(assert (=> b!882561 m!822461))

(assert (=> b!882561 m!822461))

(declare-fun m!822709 () Bool)

(assert (=> b!882561 m!822709))

(assert (=> b!882556 m!822697))

(assert (=> b!882550 m!822495))

(assert (=> b!882550 m!822461))

(assert (=> b!882550 m!822461))

(declare-fun m!822711 () Bool)

(assert (=> b!882550 m!822711))

(assert (=> b!882550 m!822497))

(assert (=> b!882550 m!822495))

(assert (=> b!882550 m!822497))

(assert (=> b!882550 m!822499))

(assert (=> b!882385 d!109091))

(declare-fun b!882572 () Bool)

(declare-fun e!491235 () Bool)

(assert (=> b!882572 (= e!491235 (contains!4266 Nil!17644 (select (arr!24720 _keys!868) #b00000000000000000000000000000000)))))

(declare-fun d!109093 () Bool)

(declare-fun res!599686 () Bool)

(declare-fun e!491236 () Bool)

(assert (=> d!109093 (=> res!599686 e!491236)))

(assert (=> d!109093 (= res!599686 (bvsge #b00000000000000000000000000000000 (size!25161 _keys!868)))))

(assert (=> d!109093 (= (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17644) e!491236)))

(declare-fun b!882573 () Bool)

(declare-fun e!491234 () Bool)

(declare-fun call!38984 () Bool)

(assert (=> b!882573 (= e!491234 call!38984)))

(declare-fun b!882574 () Bool)

(declare-fun e!491233 () Bool)

(assert (=> b!882574 (= e!491233 e!491234)))

(declare-fun c!92960 () Bool)

(assert (=> b!882574 (= c!92960 (validKeyInArray!0 (select (arr!24720 _keys!868) #b00000000000000000000000000000000)))))

(declare-fun b!882575 () Bool)

(assert (=> b!882575 (= e!491236 e!491233)))

(declare-fun res!599685 () Bool)

(assert (=> b!882575 (=> (not res!599685) (not e!491233))))

(assert (=> b!882575 (= res!599685 (not e!491235))))

(declare-fun res!599684 () Bool)

(assert (=> b!882575 (=> (not res!599684) (not e!491235))))

(assert (=> b!882575 (= res!599684 (validKeyInArray!0 (select (arr!24720 _keys!868) #b00000000000000000000000000000000)))))

(declare-fun bm!38981 () Bool)

(assert (=> bm!38981 (= call!38984 (arrayNoDuplicates!0 _keys!868 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!92960 (Cons!17643 (select (arr!24720 _keys!868) #b00000000000000000000000000000000) Nil!17644) Nil!17644)))))

(declare-fun b!882576 () Bool)

(assert (=> b!882576 (= e!491234 call!38984)))

(assert (= (and d!109093 (not res!599686)) b!882575))

(assert (= (and b!882575 res!599684) b!882572))

(assert (= (and b!882575 res!599685) b!882574))

(assert (= (and b!882574 c!92960) b!882573))

(assert (= (and b!882574 (not c!92960)) b!882576))

(assert (= (or b!882573 b!882576) bm!38981))

(assert (=> b!882572 m!822637))

(assert (=> b!882572 m!822637))

(declare-fun m!822713 () Bool)

(assert (=> b!882572 m!822713))

(assert (=> b!882574 m!822637))

(assert (=> b!882574 m!822637))

(assert (=> b!882574 m!822639))

(assert (=> b!882575 m!822637))

(assert (=> b!882575 m!822637))

(assert (=> b!882575 m!822639))

(assert (=> bm!38981 m!822637))

(declare-fun m!822715 () Bool)

(assert (=> bm!38981 m!822715))

(assert (=> b!882375 d!109093))

(declare-fun d!109095 () Bool)

(assert (=> d!109095 (= (array_inv!19452 _keys!868) (bvsge (size!25161 _keys!868) #b00000000000000000000000000000000))))

(assert (=> start!74884 d!109095))

(declare-fun d!109097 () Bool)

(assert (=> d!109097 (= (array_inv!19453 _values!688) (bvsge (size!25162 _values!688) #b00000000000000000000000000000000))))

(assert (=> start!74884 d!109097))

(declare-fun d!109099 () Bool)

(declare-fun res!599691 () Bool)

(declare-fun e!491241 () Bool)

(assert (=> d!109099 (=> res!599691 e!491241)))

(assert (=> d!109099 (= res!599691 (= (select (arr!24720 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053)) k0!854))))

(assert (=> d!109099 (= (arrayContainsKey!0 _keys!868 k0!854 (bvadd #b00000000000000000000000000000001 from!1053)) e!491241)))

(declare-fun b!882581 () Bool)

(declare-fun e!491242 () Bool)

(assert (=> b!882581 (= e!491241 e!491242)))

(declare-fun res!599692 () Bool)

(assert (=> b!882581 (=> (not res!599692) (not e!491242))))

(assert (=> b!882581 (= res!599692 (bvslt (bvadd #b00000000000000000000000000000001 from!1053 #b00000000000000000000000000000001) (size!25161 _keys!868)))))

(declare-fun b!882582 () Bool)

(assert (=> b!882582 (= e!491242 (arrayContainsKey!0 _keys!868 k0!854 (bvadd #b00000000000000000000000000000001 from!1053 #b00000000000000000000000000000001)))))

(assert (= (and d!109099 (not res!599691)) b!882581))

(assert (= (and b!882581 res!599692) b!882582))

(assert (=> d!109099 m!822571))

(declare-fun m!822717 () Bool)

(assert (=> b!882582 m!822717))

(assert (=> b!882374 d!109099))

(declare-fun d!109101 () Bool)

(assert (=> d!109101 (arrayContainsKey!0 _keys!868 k0!854 (bvadd #b00000000000000000000000000000001 from!1053))))

(declare-fun lt!399343 () Unit!30082)

(declare-fun choose!114 (array!51408 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!30082)

(assert (=> d!109101 (= lt!399343 (choose!114 _keys!868 k0!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)))))

(assert (=> d!109101 (bvsge i!612 #b00000000000000000000000000000000)))

(assert (=> d!109101 (= (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!868 k0!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)) lt!399343)))

(declare-fun bs!24739 () Bool)

(assert (= bs!24739 d!109101))

(assert (=> bs!24739 m!822449))

(declare-fun m!822719 () Bool)

(assert (=> bs!24739 m!822719))

(assert (=> b!882374 d!109101))

(declare-fun b!882583 () Bool)

(declare-fun e!491245 () Bool)

(assert (=> b!882583 (= e!491245 (contains!4266 Nil!17644 (select (arr!24720 _keys!868) from!1053)))))

(declare-fun d!109103 () Bool)

(declare-fun res!599695 () Bool)

(declare-fun e!491246 () Bool)

(assert (=> d!109103 (=> res!599695 e!491246)))

(assert (=> d!109103 (= res!599695 (bvsge from!1053 (size!25161 _keys!868)))))

(assert (=> d!109103 (= (arrayNoDuplicates!0 _keys!868 from!1053 Nil!17644) e!491246)))

(declare-fun b!882584 () Bool)

(declare-fun e!491244 () Bool)

(declare-fun call!38985 () Bool)

(assert (=> b!882584 (= e!491244 call!38985)))

(declare-fun b!882585 () Bool)

(declare-fun e!491243 () Bool)

(assert (=> b!882585 (= e!491243 e!491244)))

(declare-fun c!92961 () Bool)

(assert (=> b!882585 (= c!92961 (validKeyInArray!0 (select (arr!24720 _keys!868) from!1053)))))

(declare-fun b!882586 () Bool)

(assert (=> b!882586 (= e!491246 e!491243)))

(declare-fun res!599694 () Bool)

(assert (=> b!882586 (=> (not res!599694) (not e!491243))))

(assert (=> b!882586 (= res!599694 (not e!491245))))

(declare-fun res!599693 () Bool)

(assert (=> b!882586 (=> (not res!599693) (not e!491245))))

(assert (=> b!882586 (= res!599693 (validKeyInArray!0 (select (arr!24720 _keys!868) from!1053)))))

(declare-fun bm!38982 () Bool)

(assert (=> bm!38982 (= call!38985 (arrayNoDuplicates!0 _keys!868 (bvadd from!1053 #b00000000000000000000000000000001) (ite c!92961 (Cons!17643 (select (arr!24720 _keys!868) from!1053) Nil!17644) Nil!17644)))))

(declare-fun b!882587 () Bool)

(assert (=> b!882587 (= e!491244 call!38985)))

(assert (= (and d!109103 (not res!599695)) b!882586))

(assert (= (and b!882586 res!599693) b!882583))

(assert (= (and b!882586 res!599694) b!882585))

(assert (= (and b!882585 c!92961) b!882584))

(assert (= (and b!882585 (not c!92961)) b!882587))

(assert (= (or b!882584 b!882587) bm!38982))

(assert (=> b!882583 m!822461))

(assert (=> b!882583 m!822461))

(declare-fun m!822721 () Bool)

(assert (=> b!882583 m!822721))

(assert (=> b!882585 m!822461))

(assert (=> b!882585 m!822461))

(assert (=> b!882585 m!822463))

(assert (=> b!882586 m!822461))

(assert (=> b!882586 m!822461))

(assert (=> b!882586 m!822463))

(assert (=> bm!38982 m!822461))

(declare-fun m!822723 () Bool)

(assert (=> bm!38982 m!822723))

(assert (=> b!882374 d!109103))

(declare-fun d!109105 () Bool)

(assert (=> d!109105 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!17644)))

(declare-fun lt!399346 () Unit!30082)

(declare-fun choose!39 (array!51408 (_ BitVec 32) (_ BitVec 32)) Unit!30082)

(assert (=> d!109105 (= lt!399346 (choose!39 _keys!868 #b00000000000000000000000000000000 from!1053))))

(assert (=> d!109105 (bvslt (size!25161 _keys!868) #b01111111111111111111111111111111)))

(assert (=> d!109105 (= (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053) lt!399346)))

(declare-fun bs!24740 () Bool)

(assert (= bs!24740 d!109105))

(assert (=> bs!24740 m!822453))

(declare-fun m!822725 () Bool)

(assert (=> bs!24740 m!822725))

(assert (=> b!882374 d!109105))

(declare-fun mapNonEmpty!28113 () Bool)

(declare-fun mapRes!28113 () Bool)

(declare-fun tp!53925 () Bool)

(declare-fun e!491252 () Bool)

(assert (=> mapNonEmpty!28113 (= mapRes!28113 (and tp!53925 e!491252))))

(declare-fun mapRest!28113 () (Array (_ BitVec 32) ValueCell!8385))

(declare-fun mapValue!28113 () ValueCell!8385)

(declare-fun mapKey!28113 () (_ BitVec 32))

(assert (=> mapNonEmpty!28113 (= mapRest!28107 (store mapRest!28113 mapKey!28113 mapValue!28113))))

(declare-fun b!882595 () Bool)

(declare-fun e!491251 () Bool)

(assert (=> b!882595 (= e!491251 tp_is_empty!17649)))

(declare-fun b!882594 () Bool)

(assert (=> b!882594 (= e!491252 tp_is_empty!17649)))

(declare-fun mapIsEmpty!28113 () Bool)

(assert (=> mapIsEmpty!28113 mapRes!28113))

(declare-fun condMapEmpty!28113 () Bool)

(declare-fun mapDefault!28113 () ValueCell!8385)

(assert (=> mapNonEmpty!28107 (= condMapEmpty!28113 (= mapRest!28107 ((as const (Array (_ BitVec 32) ValueCell!8385)) mapDefault!28113)))))

(assert (=> mapNonEmpty!28107 (= tp!53915 (and e!491251 mapRes!28113))))

(assert (= (and mapNonEmpty!28107 condMapEmpty!28113) mapIsEmpty!28113))

(assert (= (and mapNonEmpty!28107 (not condMapEmpty!28113)) mapNonEmpty!28113))

(assert (= (and mapNonEmpty!28113 ((_ is ValueCellFull!8385) mapValue!28113)) b!882594))

(assert (= (and mapNonEmpty!28107 ((_ is ValueCellFull!8385) mapDefault!28113)) b!882595))

(declare-fun m!822727 () Bool)

(assert (=> mapNonEmpty!28113 m!822727))

(declare-fun b_lambda!12701 () Bool)

(assert (= b_lambda!12685 (or (and start!74884 b_free!15405) b_lambda!12701)))

(declare-fun b_lambda!12703 () Bool)

(assert (= b_lambda!12699 (or (and start!74884 b_free!15405) b_lambda!12703)))

(declare-fun b_lambda!12705 () Bool)

(assert (= b_lambda!12687 (or (and start!74884 b_free!15405) b_lambda!12705)))

(declare-fun b_lambda!12707 () Bool)

(assert (= b_lambda!12691 (or (and start!74884 b_free!15405) b_lambda!12707)))

(declare-fun b_lambda!12709 () Bool)

(assert (= b_lambda!12689 (or (and start!74884 b_free!15405) b_lambda!12709)))

(declare-fun b_lambda!12711 () Bool)

(assert (= b_lambda!12693 (or (and start!74884 b_free!15405) b_lambda!12711)))

(declare-fun b_lambda!12713 () Bool)

(assert (= b_lambda!12695 (or (and start!74884 b_free!15405) b_lambda!12713)))

(declare-fun b_lambda!12715 () Bool)

(assert (= b_lambda!12697 (or (and start!74884 b_free!15405) b_lambda!12715)))

(check-sat (not b!882538) (not bm!38967) (not b!882556) (not b!882480) (not d!109091) (not b!882482) (not d!109101) (not b!882561) (not mapNonEmpty!28113) (not b!882545) (not b_lambda!12703) (not b!882476) (not bm!38966) (not bm!38982) b_and!25533 (not bm!38972) (not b!882547) (not b!882530) (not b!882574) (not b!882494) (not b!882479) (not b!882446) (not b_lambda!12715) (not b!882583) (not d!109077) (not b_lambda!12713) (not b!882546) (not b!882474) (not b_next!15405) (not bm!38973) tp_is_empty!17649 (not d!109071) (not bm!38977) (not bm!38981) (not b!882481) (not b!882486) (not b!882511) (not b_lambda!12705) (not b!882544) (not d!109089) (not b!882572) (not b!882448) (not b!882537) (not d!109067) (not b!882559) (not b!882493) (not b!882523) (not b!882485) (not b_lambda!12709) (not b!882558) (not b_lambda!12711) (not b!882550) (not d!109075) (not b!882491) (not b!882529) (not b!882557) (not b!882521) (not d!109063) (not b!882586) (not b_lambda!12707) (not b!882539) (not b_lambda!12683) (not d!109105) (not d!109069) (not d!109085) (not b!882575) (not b_lambda!12701) (not b!882528) (not b!882553) (not b!882510) (not b!882536) (not b!882549) (not b!882488) (not b!882551) (not bm!38978) (not b!882503) (not b!882582) (not b!882496) (not bm!38976) (not b!882541) (not b!882492) (not b!882473) (not b!882484) (not b!882531) (not b!882585))
(check-sat b_and!25533 (not b_next!15405))
