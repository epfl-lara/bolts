; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!74462 () Bool)

(assert start!74462)

(declare-fun b_free!15177 () Bool)

(declare-fun b_next!15177 () Bool)

(assert (=> start!74462 (= b_free!15177 (not b_next!15177))))

(declare-fun tp!53210 () Bool)

(declare-fun b_and!25025 () Bool)

(assert (=> start!74462 (= tp!53210 b_and!25025)))

(declare-fun b!876520 () Bool)

(declare-fun res!595716 () Bool)

(declare-fun e!487957 () Bool)

(assert (=> b!876520 (=> (not res!595716) (not e!487957))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!876520 (= res!595716 (validMask!0 mask!1196))))

(declare-fun b!876521 () Bool)

(declare-fun res!595719 () Bool)

(assert (=> b!876521 (=> (not res!595719) (not e!487957))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((array!50950 0))(
  ( (array!50951 (arr!24498 (Array (_ BitVec 32) (_ BitVec 64))) (size!24939 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50950)

(assert (=> b!876521 (= res!595719 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24939 _keys!868))))))

(declare-fun res!595717 () Bool)

(assert (=> start!74462 (=> (not res!595717) (not e!487957))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!74462 (= res!595717 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24939 _keys!868))))))

(assert (=> start!74462 e!487957))

(declare-fun tp_is_empty!17421 () Bool)

(assert (=> start!74462 tp_is_empty!17421))

(assert (=> start!74462 true))

(assert (=> start!74462 tp!53210))

(declare-fun array_inv!19296 (array!50950) Bool)

(assert (=> start!74462 (array_inv!19296 _keys!868)))

(declare-datatypes ((V!28275 0))(
  ( (V!28276 (val!8758 Int)) )
))
(declare-datatypes ((ValueCell!8271 0))(
  ( (ValueCellFull!8271 (v!11187 V!28275)) (EmptyCell!8271) )
))
(declare-datatypes ((array!50952 0))(
  ( (array!50953 (arr!24499 (Array (_ BitVec 32) ValueCell!8271)) (size!24940 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50952)

(declare-fun e!487954 () Bool)

(declare-fun array_inv!19297 (array!50952) Bool)

(assert (=> start!74462 (and (array_inv!19297 _values!688) e!487954)))

(declare-fun bm!38771 () Bool)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun minValue!654 () V!28275)

(declare-datatypes ((tuple2!11590 0))(
  ( (tuple2!11591 (_1!5805 (_ BitVec 64)) (_2!5805 V!28275)) )
))
(declare-datatypes ((List!17471 0))(
  ( (Nil!17468) (Cons!17467 (h!18598 tuple2!11590) (t!24560 List!17471)) )
))
(declare-datatypes ((ListLongMap!10373 0))(
  ( (ListLongMap!10374 (toList!5202 List!17471)) )
))
(declare-fun call!38775 () ListLongMap!10373)

(declare-fun zeroValue!654 () V!28275)

(declare-fun getCurrentListMapNoExtraKeys!3164 (array!50950 array!50952 (_ BitVec 32) (_ BitVec 32) V!28275 V!28275 (_ BitVec 32) Int) ListLongMap!10373)

(assert (=> bm!38771 (= call!38775 (getCurrentListMapNoExtraKeys!3164 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!876522 () Bool)

(declare-fun e!487961 () Bool)

(assert (=> b!876522 (= e!487961 tp_is_empty!17421)))

(declare-fun b!876523 () Bool)

(declare-fun res!595714 () Bool)

(assert (=> b!876523 (=> (not res!595714) (not e!487957))))

(declare-fun k0!854 () (_ BitVec 64))

(assert (=> b!876523 (= res!595714 (and (= (select (arr!24498 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!876524 () Bool)

(declare-fun res!595721 () Bool)

(assert (=> b!876524 (=> (not res!595721) (not e!487957))))

(assert (=> b!876524 (= res!595721 (and (= (size!24940 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24939 _keys!868) (size!24940 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun lt!396572 () array!50952)

(declare-fun call!38774 () ListLongMap!10373)

(declare-fun bm!38772 () Bool)

(assert (=> bm!38772 (= call!38774 (getCurrentListMapNoExtraKeys!3164 _keys!868 lt!396572 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun mapIsEmpty!27743 () Bool)

(declare-fun mapRes!27743 () Bool)

(assert (=> mapIsEmpty!27743 mapRes!27743))

(declare-fun b!876525 () Bool)

(declare-fun e!487956 () Bool)

(assert (=> b!876525 (= e!487956 (= call!38774 call!38775))))

(declare-fun b!876526 () Bool)

(declare-fun e!487959 () Bool)

(assert (=> b!876526 (= e!487957 e!487959)))

(declare-fun res!595720 () Bool)

(assert (=> b!876526 (=> (not res!595720) (not e!487959))))

(assert (=> b!876526 (= res!595720 (= from!1053 i!612))))

(declare-fun lt!396570 () ListLongMap!10373)

(assert (=> b!876526 (= lt!396570 (getCurrentListMapNoExtraKeys!3164 _keys!868 lt!396572 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!28275)

(assert (=> b!876526 (= lt!396572 (array!50953 (store (arr!24499 _values!688) i!612 (ValueCellFull!8271 v!557)) (size!24940 _values!688)))))

(declare-fun lt!396571 () ListLongMap!10373)

(assert (=> b!876526 (= lt!396571 (getCurrentListMapNoExtraKeys!3164 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!876527 () Bool)

(declare-fun e!487958 () Bool)

(assert (=> b!876527 (= e!487959 (not e!487958))))

(declare-fun res!595718 () Bool)

(assert (=> b!876527 (=> res!595718 e!487958)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!876527 (= res!595718 (not (validKeyInArray!0 (select (arr!24498 _keys!868) from!1053))))))

(assert (=> b!876527 e!487956))

(declare-fun c!92533 () Bool)

(assert (=> b!876527 (= c!92533 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-datatypes ((Unit!29934 0))(
  ( (Unit!29935) )
))
(declare-fun lt!396575 () Unit!29934)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!670 (array!50950 array!50952 (_ BitVec 32) (_ BitVec 32) V!28275 V!28275 (_ BitVec 32) (_ BitVec 64) V!28275 (_ BitVec 32) Int) Unit!29934)

(assert (=> b!876527 (= lt!396575 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!670 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!876528 () Bool)

(declare-fun res!595715 () Bool)

(assert (=> b!876528 (=> (not res!595715) (not e!487957))))

(assert (=> b!876528 (= res!595715 (validKeyInArray!0 k0!854))))

(declare-fun b!876529 () Bool)

(declare-fun +!2438 (ListLongMap!10373 tuple2!11590) ListLongMap!10373)

(assert (=> b!876529 (= e!487956 (= call!38774 (+!2438 call!38775 (tuple2!11591 k0!854 v!557))))))

(declare-fun mapNonEmpty!27743 () Bool)

(declare-fun tp!53209 () Bool)

(assert (=> mapNonEmpty!27743 (= mapRes!27743 (and tp!53209 e!487961))))

(declare-fun mapValue!27743 () ValueCell!8271)

(declare-fun mapKey!27743 () (_ BitVec 32))

(declare-fun mapRest!27743 () (Array (_ BitVec 32) ValueCell!8271))

(assert (=> mapNonEmpty!27743 (= (arr!24499 _values!688) (store mapRest!27743 mapKey!27743 mapValue!27743))))

(declare-fun b!876530 () Bool)

(declare-fun res!595722 () Bool)

(assert (=> b!876530 (=> (not res!595722) (not e!487957))))

(declare-datatypes ((List!17472 0))(
  ( (Nil!17469) (Cons!17468 (h!18599 (_ BitVec 64)) (t!24561 List!17472)) )
))
(declare-fun arrayNoDuplicates!0 (array!50950 (_ BitVec 32) List!17472) Bool)

(assert (=> b!876530 (= res!595722 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17469))))

(declare-fun b!876531 () Bool)

(declare-fun e!487955 () Bool)

(assert (=> b!876531 (= e!487954 (and e!487955 mapRes!27743))))

(declare-fun condMapEmpty!27743 () Bool)

(declare-fun mapDefault!27743 () ValueCell!8271)

(assert (=> b!876531 (= condMapEmpty!27743 (= (arr!24499 _values!688) ((as const (Array (_ BitVec 32) ValueCell!8271)) mapDefault!27743)))))

(declare-fun b!876532 () Bool)

(declare-fun res!595713 () Bool)

(assert (=> b!876532 (=> (not res!595713) (not e!487957))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50950 (_ BitVec 32)) Bool)

(assert (=> b!876532 (= res!595713 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!876533 () Bool)

(assert (=> b!876533 (= e!487955 tp_is_empty!17421)))

(declare-fun b!876534 () Bool)

(assert (=> b!876534 (= e!487958 true)))

(declare-fun lt!396576 () tuple2!11590)

(declare-fun lt!396573 () ListLongMap!10373)

(declare-fun lt!396569 () V!28275)

(assert (=> b!876534 (= (+!2438 lt!396573 lt!396576) (+!2438 (+!2438 lt!396573 (tuple2!11591 k0!854 lt!396569)) lt!396576))))

(declare-fun lt!396574 () V!28275)

(assert (=> b!876534 (= lt!396576 (tuple2!11591 k0!854 lt!396574))))

(declare-fun lt!396578 () Unit!29934)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!330 (ListLongMap!10373 (_ BitVec 64) V!28275 V!28275) Unit!29934)

(assert (=> b!876534 (= lt!396578 (addSameAsAddTwiceSameKeyDiffValues!330 lt!396573 k0!854 lt!396569 lt!396574))))

(declare-fun lt!396577 () V!28275)

(declare-fun get!12900 (ValueCell!8271 V!28275) V!28275)

(assert (=> b!876534 (= lt!396569 (get!12900 (select (arr!24499 _values!688) from!1053) lt!396577))))

(assert (=> b!876534 (= lt!396570 (+!2438 lt!396573 (tuple2!11591 (select (arr!24498 _keys!868) from!1053) lt!396574)))))

(assert (=> b!876534 (= lt!396574 (get!12900 (select (store (arr!24499 _values!688) i!612 (ValueCellFull!8271 v!557)) from!1053) lt!396577))))

(declare-fun dynLambda!1220 (Int (_ BitVec 64)) V!28275)

(assert (=> b!876534 (= lt!396577 (dynLambda!1220 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!876534 (= lt!396573 (getCurrentListMapNoExtraKeys!3164 _keys!868 lt!396572 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (= (and start!74462 res!595717) b!876520))

(assert (= (and b!876520 res!595716) b!876524))

(assert (= (and b!876524 res!595721) b!876532))

(assert (= (and b!876532 res!595713) b!876530))

(assert (= (and b!876530 res!595722) b!876521))

(assert (= (and b!876521 res!595719) b!876528))

(assert (= (and b!876528 res!595715) b!876523))

(assert (= (and b!876523 res!595714) b!876526))

(assert (= (and b!876526 res!595720) b!876527))

(assert (= (and b!876527 c!92533) b!876529))

(assert (= (and b!876527 (not c!92533)) b!876525))

(assert (= (or b!876529 b!876525) bm!38772))

(assert (= (or b!876529 b!876525) bm!38771))

(assert (= (and b!876527 (not res!595718)) b!876534))

(assert (= (and b!876531 condMapEmpty!27743) mapIsEmpty!27743))

(assert (= (and b!876531 (not condMapEmpty!27743)) mapNonEmpty!27743))

(get-info :version)

(assert (= (and mapNonEmpty!27743 ((_ is ValueCellFull!8271) mapValue!27743)) b!876522))

(assert (= (and b!876531 ((_ is ValueCellFull!8271) mapDefault!27743)) b!876533))

(assert (= start!74462 b!876531))

(declare-fun b_lambda!12275 () Bool)

(assert (=> (not b_lambda!12275) (not b!876534)))

(declare-fun t!24559 () Bool)

(declare-fun tb!4945 () Bool)

(assert (=> (and start!74462 (= defaultEntry!696 defaultEntry!696) t!24559) tb!4945))

(declare-fun result!9501 () Bool)

(assert (=> tb!4945 (= result!9501 tp_is_empty!17421)))

(assert (=> b!876534 t!24559))

(declare-fun b_and!25027 () Bool)

(assert (= b_and!25025 (and (=> t!24559 result!9501) b_and!25027)))

(declare-fun m!816411 () Bool)

(assert (=> b!876530 m!816411))

(declare-fun m!816413 () Bool)

(assert (=> b!876528 m!816413))

(declare-fun m!816415 () Bool)

(assert (=> mapNonEmpty!27743 m!816415))

(declare-fun m!816417 () Bool)

(assert (=> bm!38772 m!816417))

(declare-fun m!816419 () Bool)

(assert (=> b!876523 m!816419))

(declare-fun m!816421 () Bool)

(assert (=> b!876534 m!816421))

(declare-fun m!816423 () Bool)

(assert (=> b!876534 m!816423))

(declare-fun m!816425 () Bool)

(assert (=> b!876534 m!816425))

(declare-fun m!816427 () Bool)

(assert (=> b!876534 m!816427))

(declare-fun m!816429 () Bool)

(assert (=> b!876534 m!816429))

(declare-fun m!816431 () Bool)

(assert (=> b!876534 m!816431))

(declare-fun m!816433 () Bool)

(assert (=> b!876534 m!816433))

(assert (=> b!876534 m!816417))

(assert (=> b!876534 m!816421))

(declare-fun m!816435 () Bool)

(assert (=> b!876534 m!816435))

(assert (=> b!876534 m!816431))

(declare-fun m!816437 () Bool)

(assert (=> b!876534 m!816437))

(declare-fun m!816439 () Bool)

(assert (=> b!876534 m!816439))

(assert (=> b!876534 m!816425))

(declare-fun m!816441 () Bool)

(assert (=> b!876534 m!816441))

(declare-fun m!816443 () Bool)

(assert (=> b!876534 m!816443))

(declare-fun m!816445 () Bool)

(assert (=> b!876520 m!816445))

(declare-fun m!816447 () Bool)

(assert (=> b!876526 m!816447))

(assert (=> b!876526 m!816437))

(declare-fun m!816449 () Bool)

(assert (=> b!876526 m!816449))

(assert (=> b!876527 m!816441))

(assert (=> b!876527 m!816441))

(declare-fun m!816451 () Bool)

(assert (=> b!876527 m!816451))

(declare-fun m!816453 () Bool)

(assert (=> b!876527 m!816453))

(declare-fun m!816455 () Bool)

(assert (=> b!876529 m!816455))

(declare-fun m!816457 () Bool)

(assert (=> b!876532 m!816457))

(declare-fun m!816459 () Bool)

(assert (=> bm!38771 m!816459))

(declare-fun m!816461 () Bool)

(assert (=> start!74462 m!816461))

(declare-fun m!816463 () Bool)

(assert (=> start!74462 m!816463))

(check-sat (not start!74462) (not b!876526) (not b_lambda!12275) tp_is_empty!17421 (not b!876520) (not bm!38771) b_and!25027 (not b!876528) (not b!876530) (not b_next!15177) (not b!876529) (not b!876532) (not b!876527) (not mapNonEmpty!27743) (not b!876534) (not bm!38772))
(check-sat b_and!25027 (not b_next!15177))
