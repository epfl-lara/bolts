; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73174 () Bool)

(assert start!73174)

(declare-fun b_free!14061 () Bool)

(declare-fun b_next!14061 () Bool)

(assert (=> start!73174 (= b_free!14061 (not b_next!14061))))

(declare-fun tp!49687 () Bool)

(declare-fun b_and!23299 () Bool)

(assert (=> start!73174 (= tp!49687 b_and!23299)))

(declare-datatypes ((V!26643 0))(
  ( (V!26644 (val!8146 Int)) )
))
(declare-datatypes ((tuple2!10702 0))(
  ( (tuple2!10703 (_1!5361 (_ BitVec 64)) (_2!5361 V!26643)) )
))
(declare-datatypes ((List!16588 0))(
  ( (Nil!16585) (Cons!16584 (h!17715 tuple2!10702) (t!23103 List!16588)) )
))
(declare-datatypes ((ListLongMap!9485 0))(
  ( (ListLongMap!9486 (toList!4758 List!16588)) )
))
(declare-fun call!38038 () ListLongMap!9485)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((ValueCell!7659 0))(
  ( (ValueCellFull!7659 (v!10567 V!26643)) (EmptyCell!7659) )
))
(declare-datatypes ((array!48582 0))(
  ( (array!48583 (arr!23318 (Array (_ BitVec 32) ValueCell!7659)) (size!23759 (_ BitVec 32))) )
))
(declare-fun lt!383500 () array!48582)

(declare-datatypes ((array!48584 0))(
  ( (array!48585 (arr!23319 (Array (_ BitVec 32) (_ BitVec 64))) (size!23760 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48584)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun minValue!654 () V!26643)

(declare-fun zeroValue!654 () V!26643)

(declare-fun bm!38035 () Bool)

(declare-fun defaultEntry!696 () Int)

(declare-fun getCurrentListMapNoExtraKeys!2743 (array!48584 array!48582 (_ BitVec 32) (_ BitVec 32) V!26643 V!26643 (_ BitVec 32) Int) ListLongMap!9485)

(assert (=> bm!38035 (= call!38038 (getCurrentListMapNoExtraKeys!2743 _keys!868 lt!383500 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun mapNonEmpty!25895 () Bool)

(declare-fun mapRes!25895 () Bool)

(declare-fun tp!49688 () Bool)

(declare-fun e!474946 () Bool)

(assert (=> mapNonEmpty!25895 (= mapRes!25895 (and tp!49688 e!474946))))

(declare-fun mapRest!25895 () (Array (_ BitVec 32) ValueCell!7659))

(declare-fun mapKey!25895 () (_ BitVec 32))

(declare-fun _values!688 () array!48582)

(declare-fun mapValue!25895 () ValueCell!7659)

(assert (=> mapNonEmpty!25895 (= (arr!23318 _values!688) (store mapRest!25895 mapKey!25895 mapValue!25895))))

(declare-fun b!851438 () Bool)

(declare-fun e!474944 () Bool)

(declare-fun e!474943 () Bool)

(assert (=> b!851438 (= e!474944 e!474943)))

(declare-fun res!578451 () Bool)

(assert (=> b!851438 (=> (not res!578451) (not e!474943))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!851438 (= res!578451 (= from!1053 i!612))))

(declare-fun lt!383502 () ListLongMap!9485)

(assert (=> b!851438 (= lt!383502 (getCurrentListMapNoExtraKeys!2743 _keys!868 lt!383500 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!26643)

(assert (=> b!851438 (= lt!383500 (array!48583 (store (arr!23318 _values!688) i!612 (ValueCellFull!7659 v!557)) (size!23759 _values!688)))))

(declare-fun lt!383508 () ListLongMap!9485)

(assert (=> b!851438 (= lt!383508 (getCurrentListMapNoExtraKeys!2743 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun e!474942 () Bool)

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun b!851439 () Bool)

(declare-fun call!38039 () ListLongMap!9485)

(declare-fun +!2100 (ListLongMap!9485 tuple2!10702) ListLongMap!9485)

(assert (=> b!851439 (= e!474942 (= call!38038 (+!2100 call!38039 (tuple2!10703 k0!854 v!557))))))

(declare-fun b!851440 () Bool)

(declare-fun res!578454 () Bool)

(assert (=> b!851440 (=> (not res!578454) (not e!474944))))

(assert (=> b!851440 (= res!578454 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23760 _keys!868))))))

(declare-fun b!851441 () Bool)

(assert (=> b!851441 (= e!474942 (= call!38038 call!38039))))

(declare-fun b!851442 () Bool)

(declare-fun e!474945 () Bool)

(assert (=> b!851442 (= e!474943 (not e!474945))))

(declare-fun res!578460 () Bool)

(assert (=> b!851442 (=> res!578460 e!474945)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!851442 (= res!578460 (not (validKeyInArray!0 (select (arr!23319 _keys!868) from!1053))))))

(assert (=> b!851442 e!474942))

(declare-fun c!91680 () Bool)

(assert (=> b!851442 (= c!91680 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-datatypes ((Unit!29046 0))(
  ( (Unit!29047) )
))
(declare-fun lt!383503 () Unit!29046)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!367 (array!48584 array!48582 (_ BitVec 32) (_ BitVec 32) V!26643 V!26643 (_ BitVec 32) (_ BitVec 64) V!26643 (_ BitVec 32) Int) Unit!29046)

(assert (=> b!851442 (= lt!383503 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!367 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun res!578453 () Bool)

(assert (=> start!73174 (=> (not res!578453) (not e!474944))))

(assert (=> start!73174 (= res!578453 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23760 _keys!868))))))

(assert (=> start!73174 e!474944))

(declare-fun tp_is_empty!16197 () Bool)

(assert (=> start!73174 tp_is_empty!16197))

(assert (=> start!73174 true))

(assert (=> start!73174 tp!49687))

(declare-fun array_inv!18486 (array!48584) Bool)

(assert (=> start!73174 (array_inv!18486 _keys!868)))

(declare-fun e!474947 () Bool)

(declare-fun array_inv!18487 (array!48582) Bool)

(assert (=> start!73174 (and (array_inv!18487 _values!688) e!474947)))

(declare-fun b!851443 () Bool)

(declare-fun res!578455 () Bool)

(assert (=> b!851443 (=> (not res!578455) (not e!474944))))

(assert (=> b!851443 (= res!578455 (and (= (select (arr!23319 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!851444 () Bool)

(declare-fun e!474948 () Bool)

(assert (=> b!851444 (= e!474947 (and e!474948 mapRes!25895))))

(declare-fun condMapEmpty!25895 () Bool)

(declare-fun mapDefault!25895 () ValueCell!7659)

(assert (=> b!851444 (= condMapEmpty!25895 (= (arr!23318 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7659)) mapDefault!25895)))))

(declare-fun mapIsEmpty!25895 () Bool)

(assert (=> mapIsEmpty!25895 mapRes!25895))

(declare-fun b!851445 () Bool)

(declare-fun res!578456 () Bool)

(assert (=> b!851445 (=> (not res!578456) (not e!474944))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48584 (_ BitVec 32)) Bool)

(assert (=> b!851445 (= res!578456 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!851446 () Bool)

(assert (=> b!851446 (= e!474948 tp_is_empty!16197)))

(declare-fun bm!38036 () Bool)

(assert (=> bm!38036 (= call!38039 (getCurrentListMapNoExtraKeys!2743 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!851447 () Bool)

(declare-fun res!578458 () Bool)

(assert (=> b!851447 (=> (not res!578458) (not e!474944))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!851447 (= res!578458 (validMask!0 mask!1196))))

(declare-fun b!851448 () Bool)

(declare-fun res!578457 () Bool)

(assert (=> b!851448 (=> (not res!578457) (not e!474944))))

(declare-datatypes ((List!16589 0))(
  ( (Nil!16586) (Cons!16585 (h!17716 (_ BitVec 64)) (t!23104 List!16589)) )
))
(declare-fun arrayNoDuplicates!0 (array!48584 (_ BitVec 32) List!16589) Bool)

(assert (=> b!851448 (= res!578457 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16586))))

(declare-fun b!851449 () Bool)

(declare-fun res!578459 () Bool)

(assert (=> b!851449 (=> (not res!578459) (not e!474944))))

(assert (=> b!851449 (= res!578459 (validKeyInArray!0 k0!854))))

(declare-fun b!851450 () Bool)

(assert (=> b!851450 (= e!474946 tp_is_empty!16197)))

(declare-fun b!851451 () Bool)

(declare-fun res!578452 () Bool)

(assert (=> b!851451 (=> (not res!578452) (not e!474944))))

(assert (=> b!851451 (= res!578452 (and (= (size!23759 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23760 _keys!868) (size!23759 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!851452 () Bool)

(assert (=> b!851452 (= e!474945 true)))

(declare-fun lt!383499 () ListLongMap!9485)

(declare-fun lt!383501 () V!26643)

(declare-fun lt!383504 () tuple2!10702)

(assert (=> b!851452 (= (+!2100 lt!383499 lt!383504) (+!2100 (+!2100 lt!383499 (tuple2!10703 k0!854 lt!383501)) lt!383504))))

(declare-fun lt!383506 () V!26643)

(assert (=> b!851452 (= lt!383504 (tuple2!10703 k0!854 lt!383506))))

(declare-fun lt!383507 () Unit!29046)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!284 (ListLongMap!9485 (_ BitVec 64) V!26643 V!26643) Unit!29046)

(assert (=> b!851452 (= lt!383507 (addSameAsAddTwiceSameKeyDiffValues!284 lt!383499 k0!854 lt!383501 lt!383506))))

(declare-fun lt!383505 () V!26643)

(declare-fun get!12302 (ValueCell!7659 V!26643) V!26643)

(assert (=> b!851452 (= lt!383501 (get!12302 (select (arr!23318 _values!688) from!1053) lt!383505))))

(assert (=> b!851452 (= lt!383502 (+!2100 lt!383499 (tuple2!10703 (select (arr!23319 _keys!868) from!1053) lt!383506)))))

(assert (=> b!851452 (= lt!383506 (get!12302 (select (store (arr!23318 _values!688) i!612 (ValueCellFull!7659 v!557)) from!1053) lt!383505))))

(declare-fun dynLambda!1032 (Int (_ BitVec 64)) V!26643)

(assert (=> b!851452 (= lt!383505 (dynLambda!1032 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!851452 (= lt!383499 (getCurrentListMapNoExtraKeys!2743 _keys!868 lt!383500 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (= (and start!73174 res!578453) b!851447))

(assert (= (and b!851447 res!578458) b!851451))

(assert (= (and b!851451 res!578452) b!851445))

(assert (= (and b!851445 res!578456) b!851448))

(assert (= (and b!851448 res!578457) b!851440))

(assert (= (and b!851440 res!578454) b!851449))

(assert (= (and b!851449 res!578459) b!851443))

(assert (= (and b!851443 res!578455) b!851438))

(assert (= (and b!851438 res!578451) b!851442))

(assert (= (and b!851442 c!91680) b!851439))

(assert (= (and b!851442 (not c!91680)) b!851441))

(assert (= (or b!851439 b!851441) bm!38035))

(assert (= (or b!851439 b!851441) bm!38036))

(assert (= (and b!851442 (not res!578460)) b!851452))

(assert (= (and b!851444 condMapEmpty!25895) mapIsEmpty!25895))

(assert (= (and b!851444 (not condMapEmpty!25895)) mapNonEmpty!25895))

(get-info :version)

(assert (= (and mapNonEmpty!25895 ((_ is ValueCellFull!7659) mapValue!25895)) b!851450))

(assert (= (and b!851444 ((_ is ValueCellFull!7659) mapDefault!25895)) b!851446))

(assert (= start!73174 b!851444))

(declare-fun b_lambda!11623 () Bool)

(assert (=> (not b_lambda!11623) (not b!851452)))

(declare-fun t!23102 () Bool)

(declare-fun tb!4371 () Bool)

(assert (=> (and start!73174 (= defaultEntry!696 defaultEntry!696) t!23102) tb!4371))

(declare-fun result!8345 () Bool)

(assert (=> tb!4371 (= result!8345 tp_is_empty!16197)))

(assert (=> b!851452 t!23102))

(declare-fun b_and!23301 () Bool)

(assert (= b_and!23299 (and (=> t!23102 result!8345) b_and!23301)))

(declare-fun m!792479 () Bool)

(assert (=> start!73174 m!792479))

(declare-fun m!792481 () Bool)

(assert (=> start!73174 m!792481))

(declare-fun m!792483 () Bool)

(assert (=> b!851445 m!792483))

(declare-fun m!792485 () Bool)

(assert (=> b!851449 m!792485))

(declare-fun m!792487 () Bool)

(assert (=> b!851442 m!792487))

(assert (=> b!851442 m!792487))

(declare-fun m!792489 () Bool)

(assert (=> b!851442 m!792489))

(declare-fun m!792491 () Bool)

(assert (=> b!851442 m!792491))

(declare-fun m!792493 () Bool)

(assert (=> bm!38035 m!792493))

(declare-fun m!792495 () Bool)

(assert (=> b!851438 m!792495))

(declare-fun m!792497 () Bool)

(assert (=> b!851438 m!792497))

(declare-fun m!792499 () Bool)

(assert (=> b!851438 m!792499))

(declare-fun m!792501 () Bool)

(assert (=> b!851448 m!792501))

(declare-fun m!792503 () Bool)

(assert (=> b!851439 m!792503))

(declare-fun m!792505 () Bool)

(assert (=> mapNonEmpty!25895 m!792505))

(declare-fun m!792507 () Bool)

(assert (=> b!851447 m!792507))

(declare-fun m!792509 () Bool)

(assert (=> bm!38036 m!792509))

(declare-fun m!792511 () Bool)

(assert (=> b!851443 m!792511))

(declare-fun m!792513 () Bool)

(assert (=> b!851452 m!792513))

(declare-fun m!792515 () Bool)

(assert (=> b!851452 m!792515))

(declare-fun m!792517 () Bool)

(assert (=> b!851452 m!792517))

(declare-fun m!792519 () Bool)

(assert (=> b!851452 m!792519))

(declare-fun m!792521 () Bool)

(assert (=> b!851452 m!792521))

(assert (=> b!851452 m!792521))

(declare-fun m!792523 () Bool)

(assert (=> b!851452 m!792523))

(assert (=> b!851452 m!792493))

(declare-fun m!792525 () Bool)

(assert (=> b!851452 m!792525))

(declare-fun m!792527 () Bool)

(assert (=> b!851452 m!792527))

(assert (=> b!851452 m!792527))

(declare-fun m!792529 () Bool)

(assert (=> b!851452 m!792529))

(assert (=> b!851452 m!792517))

(assert (=> b!851452 m!792497))

(assert (=> b!851452 m!792487))

(declare-fun m!792531 () Bool)

(assert (=> b!851452 m!792531))

(check-sat (not b!851449) (not bm!38036) (not b!851439) tp_is_empty!16197 (not b!851438) (not b!851445) (not b_lambda!11623) (not bm!38035) (not mapNonEmpty!25895) (not b!851447) (not b!851442) (not start!73174) b_and!23301 (not b_next!14061) (not b!851448) (not b!851452))
(check-sat b_and!23301 (not b_next!14061))
