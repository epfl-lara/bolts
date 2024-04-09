; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!72430 () Bool)

(assert start!72430)

(declare-fun b_free!13587 () Bool)

(declare-fun b_next!13587 () Bool)

(assert (=> start!72430 (= b_free!13587 (not b_next!13587))))

(declare-fun tp!47860 () Bool)

(declare-fun b_and!22691 () Bool)

(assert (=> start!72430 (= tp!47860 b_and!22691)))

(declare-fun b!839108 () Bool)

(declare-fun res!570651 () Bool)

(declare-fun e!468347 () Bool)

(assert (=> b!839108 (=> (not res!570651) (not e!468347))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!839108 (= res!570651 (validMask!0 mask!1196))))

(declare-datatypes ((V!25651 0))(
  ( (V!25652 (val!7774 Int)) )
))
(declare-fun v!557 () V!25651)

(declare-fun b!839109 () Bool)

(declare-fun e!468343 () Bool)

(declare-datatypes ((tuple2!10310 0))(
  ( (tuple2!10311 (_1!5165 (_ BitVec 64)) (_2!5165 V!25651)) )
))
(declare-datatypes ((List!16143 0))(
  ( (Nil!16140) (Cons!16139 (h!17270 tuple2!10310) (t!22522 List!16143)) )
))
(declare-datatypes ((ListLongMap!9093 0))(
  ( (ListLongMap!9094 (toList!4562 List!16143)) )
))
(declare-fun call!36995 () ListLongMap!9093)

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun call!36994 () ListLongMap!9093)

(declare-fun +!1981 (ListLongMap!9093 tuple2!10310) ListLongMap!9093)

(assert (=> b!839109 (= e!468343 (= call!36995 (+!1981 call!36994 (tuple2!10311 k0!854 v!557))))))

(declare-fun b!839110 () Bool)

(declare-fun res!570652 () Bool)

(assert (=> b!839110 (=> (not res!570652) (not e!468347))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((array!47158 0))(
  ( (array!47159 (arr!22606 (Array (_ BitVec 32) (_ BitVec 64))) (size!23047 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47158)

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!839110 (= res!570652 (and (= (select (arr!22606 _keys!868) i!612) k0!854) (bvsgt from!1053 i!612) (bvsle (bvadd #b00000000000000000000000000000001 from!1053) (size!23047 _keys!868)) (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000)))))

(declare-fun b!839111 () Bool)

(declare-fun e!468344 () Bool)

(declare-fun e!468346 () Bool)

(declare-fun mapRes!24779 () Bool)

(assert (=> b!839111 (= e!468344 (and e!468346 mapRes!24779))))

(declare-fun condMapEmpty!24779 () Bool)

(declare-datatypes ((ValueCell!7287 0))(
  ( (ValueCellFull!7287 (v!10195 V!25651)) (EmptyCell!7287) )
))
(declare-datatypes ((array!47160 0))(
  ( (array!47161 (arr!22607 (Array (_ BitVec 32) ValueCell!7287)) (size!23048 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47160)

(declare-fun mapDefault!24779 () ValueCell!7287)

(assert (=> b!839111 (= condMapEmpty!24779 (= (arr!22607 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7287)) mapDefault!24779)))))

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun bm!36991 () Bool)

(declare-fun minValue!654 () V!25651)

(declare-fun zeroValue!654 () V!25651)

(declare-fun getCurrentListMapNoExtraKeys!2556 (array!47158 array!47160 (_ BitVec 32) (_ BitVec 32) V!25651 V!25651 (_ BitVec 32) Int) ListLongMap!9093)

(assert (=> bm!36991 (= call!36994 (getCurrentListMapNoExtraKeys!2556 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!839112 () Bool)

(declare-fun e!468348 () Bool)

(declare-fun tp_is_empty!15453 () Bool)

(assert (=> b!839112 (= e!468348 tp_is_empty!15453)))

(declare-fun res!570654 () Bool)

(assert (=> start!72430 (=> (not res!570654) (not e!468347))))

(assert (=> start!72430 (= res!570654 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23047 _keys!868))))))

(assert (=> start!72430 e!468347))

(assert (=> start!72430 tp_is_empty!15453))

(assert (=> start!72430 true))

(assert (=> start!72430 tp!47860))

(declare-fun array_inv!17984 (array!47158) Bool)

(assert (=> start!72430 (array_inv!17984 _keys!868)))

(declare-fun array_inv!17985 (array!47160) Bool)

(assert (=> start!72430 (and (array_inv!17985 _values!688) e!468344)))

(declare-fun b!839113 () Bool)

(declare-fun res!570653 () Bool)

(assert (=> b!839113 (=> (not res!570653) (not e!468347))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47158 (_ BitVec 32)) Bool)

(assert (=> b!839113 (= res!570653 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun mapIsEmpty!24779 () Bool)

(assert (=> mapIsEmpty!24779 mapRes!24779))

(declare-fun bm!36992 () Bool)

(assert (=> bm!36992 (= call!36995 (getCurrentListMapNoExtraKeys!2556 _keys!868 (array!47161 (store (arr!22607 _values!688) i!612 (ValueCellFull!7287 v!557)) (size!23048 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!839114 () Bool)

(declare-fun res!570647 () Bool)

(assert (=> b!839114 (=> (not res!570647) (not e!468347))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!839114 (= res!570647 (validKeyInArray!0 k0!854))))

(declare-fun b!839115 () Bool)

(assert (=> b!839115 (= e!468343 (= call!36995 call!36994))))

(declare-fun b!839116 () Bool)

(assert (=> b!839116 (= e!468346 tp_is_empty!15453)))

(declare-fun b!839117 () Bool)

(declare-fun res!570648 () Bool)

(assert (=> b!839117 (=> (not res!570648) (not e!468347))))

(assert (=> b!839117 (= res!570648 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23047 _keys!868))))))

(declare-fun b!839118 () Bool)

(declare-fun res!570650 () Bool)

(assert (=> b!839118 (=> (not res!570650) (not e!468347))))

(declare-datatypes ((List!16144 0))(
  ( (Nil!16141) (Cons!16140 (h!17271 (_ BitVec 64)) (t!22523 List!16144)) )
))
(declare-fun arrayNoDuplicates!0 (array!47158 (_ BitVec 32) List!16144) Bool)

(assert (=> b!839118 (= res!570650 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16141))))

(declare-fun b!839119 () Bool)

(declare-fun res!570649 () Bool)

(assert (=> b!839119 (=> (not res!570649) (not e!468347))))

(assert (=> b!839119 (= res!570649 (and (= (size!23048 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23047 _keys!868) (size!23048 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!839120 () Bool)

(assert (=> b!839120 (= e!468347 (not true))))

(assert (=> b!839120 e!468343))

(declare-fun c!91158 () Bool)

(assert (=> b!839120 (= c!91158 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-datatypes ((Unit!28816 0))(
  ( (Unit!28817) )
))
(declare-fun lt!380691 () Unit!28816)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!257 (array!47158 array!47160 (_ BitVec 32) (_ BitVec 32) V!25651 V!25651 (_ BitVec 32) (_ BitVec 64) V!25651 (_ BitVec 32) Int) Unit!28816)

(assert (=> b!839120 (= lt!380691 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!257 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun mapNonEmpty!24779 () Bool)

(declare-fun tp!47861 () Bool)

(assert (=> mapNonEmpty!24779 (= mapRes!24779 (and tp!47861 e!468348))))

(declare-fun mapKey!24779 () (_ BitVec 32))

(declare-fun mapRest!24779 () (Array (_ BitVec 32) ValueCell!7287))

(declare-fun mapValue!24779 () ValueCell!7287)

(assert (=> mapNonEmpty!24779 (= (arr!22607 _values!688) (store mapRest!24779 mapKey!24779 mapValue!24779))))

(assert (= (and start!72430 res!570654) b!839108))

(assert (= (and b!839108 res!570651) b!839119))

(assert (= (and b!839119 res!570649) b!839113))

(assert (= (and b!839113 res!570653) b!839118))

(assert (= (and b!839118 res!570650) b!839117))

(assert (= (and b!839117 res!570648) b!839114))

(assert (= (and b!839114 res!570647) b!839110))

(assert (= (and b!839110 res!570652) b!839120))

(assert (= (and b!839120 c!91158) b!839109))

(assert (= (and b!839120 (not c!91158)) b!839115))

(assert (= (or b!839109 b!839115) bm!36992))

(assert (= (or b!839109 b!839115) bm!36991))

(assert (= (and b!839111 condMapEmpty!24779) mapIsEmpty!24779))

(assert (= (and b!839111 (not condMapEmpty!24779)) mapNonEmpty!24779))

(get-info :version)

(assert (= (and mapNonEmpty!24779 ((_ is ValueCellFull!7287) mapValue!24779)) b!839112))

(assert (= (and b!839111 ((_ is ValueCellFull!7287) mapDefault!24779)) b!839116))

(assert (= start!72430 b!839111))

(declare-fun m!783385 () Bool)

(assert (=> b!839118 m!783385))

(declare-fun m!783387 () Bool)

(assert (=> b!839108 m!783387))

(declare-fun m!783389 () Bool)

(assert (=> b!839120 m!783389))

(declare-fun m!783391 () Bool)

(assert (=> start!72430 m!783391))

(declare-fun m!783393 () Bool)

(assert (=> start!72430 m!783393))

(declare-fun m!783395 () Bool)

(assert (=> b!839114 m!783395))

(declare-fun m!783397 () Bool)

(assert (=> bm!36992 m!783397))

(declare-fun m!783399 () Bool)

(assert (=> bm!36992 m!783399))

(declare-fun m!783401 () Bool)

(assert (=> b!839110 m!783401))

(declare-fun m!783403 () Bool)

(assert (=> b!839109 m!783403))

(declare-fun m!783405 () Bool)

(assert (=> mapNonEmpty!24779 m!783405))

(declare-fun m!783407 () Bool)

(assert (=> bm!36991 m!783407))

(declare-fun m!783409 () Bool)

(assert (=> b!839113 m!783409))

(check-sat (not b!839118) (not bm!36992) (not bm!36991) tp_is_empty!15453 (not b!839109) (not b!839120) (not b!839114) (not mapNonEmpty!24779) (not b!839108) b_and!22691 (not b_next!13587) (not start!72430) (not b!839113))
(check-sat b_and!22691 (not b_next!13587))
