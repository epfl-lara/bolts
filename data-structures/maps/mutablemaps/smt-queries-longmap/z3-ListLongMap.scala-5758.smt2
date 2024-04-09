; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!74406 () Bool)

(assert start!74406)

(declare-fun b_free!15141 () Bool)

(declare-fun b_next!15141 () Bool)

(assert (=> start!74406 (= b_free!15141 (not b_next!15141))))

(declare-fun tp!53098 () Bool)

(declare-fun b_and!24937 () Bool)

(assert (=> start!74406 (= tp!53098 b_and!24937)))

(declare-fun b!875544 () Bool)

(declare-fun e!487442 () Bool)

(declare-fun e!487445 () Bool)

(assert (=> b!875544 (= e!487442 e!487445)))

(declare-fun res!595132 () Bool)

(assert (=> b!875544 (=> (not res!595132) (not e!487445))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!875544 (= res!595132 (= from!1053 i!612))))

(declare-datatypes ((V!28227 0))(
  ( (V!28228 (val!8740 Int)) )
))
(declare-datatypes ((tuple2!11556 0))(
  ( (tuple2!11557 (_1!5788 (_ BitVec 64)) (_2!5788 V!28227)) )
))
(declare-datatypes ((List!17442 0))(
  ( (Nil!17439) (Cons!17438 (h!18569 tuple2!11556) (t!24495 List!17442)) )
))
(declare-datatypes ((ListLongMap!10339 0))(
  ( (ListLongMap!10340 (toList!5185 List!17442)) )
))
(declare-fun lt!396200 () ListLongMap!10339)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!50878 0))(
  ( (array!50879 (arr!24463 (Array (_ BitVec 32) (_ BitVec 64))) (size!24904 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50878)

(declare-datatypes ((ValueCell!8253 0))(
  ( (ValueCellFull!8253 (v!11165 V!28227)) (EmptyCell!8253) )
))
(declare-datatypes ((array!50880 0))(
  ( (array!50881 (arr!24464 (Array (_ BitVec 32) ValueCell!8253)) (size!24905 (_ BitVec 32))) )
))
(declare-fun lt!396202 () array!50880)

(declare-fun minValue!654 () V!28227)

(declare-fun zeroValue!654 () V!28227)

(declare-fun getCurrentListMapNoExtraKeys!3148 (array!50878 array!50880 (_ BitVec 32) (_ BitVec 32) V!28227 V!28227 (_ BitVec 32) Int) ListLongMap!10339)

(assert (=> b!875544 (= lt!396200 (getCurrentListMapNoExtraKeys!3148 _keys!868 lt!396202 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!28227)

(declare-fun _values!688 () array!50880)

(assert (=> b!875544 (= lt!396202 (array!50881 (store (arr!24464 _values!688) i!612 (ValueCellFull!8253 v!557)) (size!24905 _values!688)))))

(declare-fun lt!396201 () ListLongMap!10339)

(assert (=> b!875544 (= lt!396201 (getCurrentListMapNoExtraKeys!3148 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!875545 () Bool)

(declare-fun e!487440 () Bool)

(declare-fun e!487444 () Bool)

(declare-fun mapRes!27686 () Bool)

(assert (=> b!875545 (= e!487440 (and e!487444 mapRes!27686))))

(declare-fun condMapEmpty!27686 () Bool)

(declare-fun mapDefault!27686 () ValueCell!8253)

(assert (=> b!875545 (= condMapEmpty!27686 (= (arr!24464 _values!688) ((as const (Array (_ BitVec 32) ValueCell!8253)) mapDefault!27686)))))

(declare-fun b!875546 () Bool)

(declare-fun res!595129 () Bool)

(assert (=> b!875546 (=> (not res!595129) (not e!487442))))

(declare-fun k0!854 () (_ BitVec 64))

(assert (=> b!875546 (= res!595129 (and (= (select (arr!24463 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun mapNonEmpty!27686 () Bool)

(declare-fun tp!53099 () Bool)

(declare-fun e!487447 () Bool)

(assert (=> mapNonEmpty!27686 (= mapRes!27686 (and tp!53099 e!487447))))

(declare-fun mapRest!27686 () (Array (_ BitVec 32) ValueCell!8253))

(declare-fun mapValue!27686 () ValueCell!8253)

(declare-fun mapKey!27686 () (_ BitVec 32))

(assert (=> mapNonEmpty!27686 (= (arr!24464 _values!688) (store mapRest!27686 mapKey!27686 mapValue!27686))))

(declare-fun b!875547 () Bool)

(declare-fun res!595125 () Bool)

(assert (=> b!875547 (=> (not res!595125) (not e!487442))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!875547 (= res!595125 (validMask!0 mask!1196))))

(declare-fun b!875548 () Bool)

(declare-fun res!595127 () Bool)

(assert (=> b!875548 (=> (not res!595127) (not e!487442))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!875548 (= res!595127 (validKeyInArray!0 k0!854))))

(declare-fun call!38648 () ListLongMap!10339)

(declare-fun bm!38645 () Bool)

(assert (=> bm!38645 (= call!38648 (getCurrentListMapNoExtraKeys!3148 _keys!868 lt!396202 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!875549 () Bool)

(declare-fun res!595128 () Bool)

(assert (=> b!875549 (=> (not res!595128) (not e!487442))))

(declare-datatypes ((List!17443 0))(
  ( (Nil!17440) (Cons!17439 (h!18570 (_ BitVec 64)) (t!24496 List!17443)) )
))
(declare-fun arrayNoDuplicates!0 (array!50878 (_ BitVec 32) List!17443) Bool)

(assert (=> b!875549 (= res!595128 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17440))))

(declare-fun b!875550 () Bool)

(declare-fun res!595124 () Bool)

(assert (=> b!875550 (=> (not res!595124) (not e!487442))))

(assert (=> b!875550 (= res!595124 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24904 _keys!868))))))

(declare-fun b!875551 () Bool)

(declare-fun e!487443 () Bool)

(assert (=> b!875551 (= e!487445 (not e!487443))))

(declare-fun res!595126 () Bool)

(assert (=> b!875551 (=> res!595126 e!487443)))

(assert (=> b!875551 (= res!595126 (not (validKeyInArray!0 (select (arr!24463 _keys!868) from!1053))))))

(declare-fun e!487441 () Bool)

(assert (=> b!875551 e!487441))

(declare-fun c!92443 () Bool)

(assert (=> b!875551 (= c!92443 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-datatypes ((Unit!29910 0))(
  ( (Unit!29911) )
))
(declare-fun lt!396199 () Unit!29910)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!659 (array!50878 array!50880 (_ BitVec 32) (_ BitVec 32) V!28227 V!28227 (_ BitVec 32) (_ BitVec 64) V!28227 (_ BitVec 32) Int) Unit!29910)

(assert (=> b!875551 (= lt!396199 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!659 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun bm!38646 () Bool)

(declare-fun call!38649 () ListLongMap!10339)

(assert (=> bm!38646 (= call!38649 (getCurrentListMapNoExtraKeys!3148 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!875552 () Bool)

(declare-fun +!2425 (ListLongMap!10339 tuple2!11556) ListLongMap!10339)

(assert (=> b!875552 (= e!487441 (= call!38648 (+!2425 call!38649 (tuple2!11557 k0!854 v!557))))))

(declare-fun b!875553 () Bool)

(assert (=> b!875553 (= e!487441 (= call!38648 call!38649))))

(declare-fun b!875554 () Bool)

(declare-fun tp_is_empty!17385 () Bool)

(assert (=> b!875554 (= e!487447 tp_is_empty!17385)))

(declare-fun b!875555 () Bool)

(declare-fun get!12875 (ValueCell!8253 V!28227) V!28227)

(declare-fun dynLambda!1209 (Int (_ BitVec 64)) V!28227)

(assert (=> b!875555 (= e!487443 (= lt!396200 (+!2425 (getCurrentListMapNoExtraKeys!3148 _keys!868 lt!396202 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (tuple2!11557 (select (arr!24463 _keys!868) from!1053) (get!12875 (select (arr!24464 lt!396202) from!1053) (dynLambda!1209 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun res!595131 () Bool)

(assert (=> start!74406 (=> (not res!595131) (not e!487442))))

(assert (=> start!74406 (= res!595131 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24904 _keys!868))))))

(assert (=> start!74406 e!487442))

(assert (=> start!74406 tp_is_empty!17385))

(assert (=> start!74406 true))

(assert (=> start!74406 tp!53098))

(declare-fun array_inv!19268 (array!50878) Bool)

(assert (=> start!74406 (array_inv!19268 _keys!868)))

(declare-fun array_inv!19269 (array!50880) Bool)

(assert (=> start!74406 (and (array_inv!19269 _values!688) e!487440)))

(declare-fun b!875556 () Bool)

(assert (=> b!875556 (= e!487444 tp_is_empty!17385)))

(declare-fun b!875557 () Bool)

(declare-fun res!595123 () Bool)

(assert (=> b!875557 (=> (not res!595123) (not e!487442))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50878 (_ BitVec 32)) Bool)

(assert (=> b!875557 (= res!595123 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!875558 () Bool)

(declare-fun res!595130 () Bool)

(assert (=> b!875558 (=> (not res!595130) (not e!487442))))

(assert (=> b!875558 (= res!595130 (and (= (size!24905 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24904 _keys!868) (size!24905 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!27686 () Bool)

(assert (=> mapIsEmpty!27686 mapRes!27686))

(assert (= (and start!74406 res!595131) b!875547))

(assert (= (and b!875547 res!595125) b!875558))

(assert (= (and b!875558 res!595130) b!875557))

(assert (= (and b!875557 res!595123) b!875549))

(assert (= (and b!875549 res!595128) b!875550))

(assert (= (and b!875550 res!595124) b!875548))

(assert (= (and b!875548 res!595127) b!875546))

(assert (= (and b!875546 res!595129) b!875544))

(assert (= (and b!875544 res!595132) b!875551))

(assert (= (and b!875551 c!92443) b!875552))

(assert (= (and b!875551 (not c!92443)) b!875553))

(assert (= (or b!875552 b!875553) bm!38645))

(assert (= (or b!875552 b!875553) bm!38646))

(assert (= (and b!875551 (not res!595126)) b!875555))

(assert (= (and b!875545 condMapEmpty!27686) mapIsEmpty!27686))

(assert (= (and b!875545 (not condMapEmpty!27686)) mapNonEmpty!27686))

(get-info :version)

(assert (= (and mapNonEmpty!27686 ((_ is ValueCellFull!8253) mapValue!27686)) b!875554))

(assert (= (and b!875545 ((_ is ValueCellFull!8253) mapDefault!27686)) b!875556))

(assert (= start!74406 b!875545))

(declare-fun b_lambda!12205 () Bool)

(assert (=> (not b_lambda!12205) (not b!875555)))

(declare-fun t!24494 () Bool)

(declare-fun tb!4909 () Bool)

(assert (=> (and start!74406 (= defaultEntry!696 defaultEntry!696) t!24494) tb!4909))

(declare-fun result!9427 () Bool)

(assert (=> tb!4909 (= result!9427 tp_is_empty!17385)))

(assert (=> b!875555 t!24494))

(declare-fun b_and!24939 () Bool)

(assert (= b_and!24937 (and (=> t!24494 result!9427) b_and!24939)))

(declare-fun m!815457 () Bool)

(assert (=> start!74406 m!815457))

(declare-fun m!815459 () Bool)

(assert (=> start!74406 m!815459))

(declare-fun m!815461 () Bool)

(assert (=> b!875544 m!815461))

(declare-fun m!815463 () Bool)

(assert (=> b!875544 m!815463))

(declare-fun m!815465 () Bool)

(assert (=> b!875544 m!815465))

(declare-fun m!815467 () Bool)

(assert (=> mapNonEmpty!27686 m!815467))

(declare-fun m!815469 () Bool)

(assert (=> bm!38646 m!815469))

(declare-fun m!815471 () Bool)

(assert (=> b!875548 m!815471))

(declare-fun m!815473 () Bool)

(assert (=> bm!38645 m!815473))

(declare-fun m!815475 () Bool)

(assert (=> b!875551 m!815475))

(assert (=> b!875551 m!815475))

(declare-fun m!815477 () Bool)

(assert (=> b!875551 m!815477))

(declare-fun m!815479 () Bool)

(assert (=> b!875551 m!815479))

(declare-fun m!815481 () Bool)

(assert (=> b!875552 m!815481))

(declare-fun m!815483 () Bool)

(assert (=> b!875555 m!815483))

(assert (=> b!875555 m!815473))

(declare-fun m!815485 () Bool)

(assert (=> b!875555 m!815485))

(assert (=> b!875555 m!815483))

(declare-fun m!815487 () Bool)

(assert (=> b!875555 m!815487))

(declare-fun m!815489 () Bool)

(assert (=> b!875555 m!815489))

(assert (=> b!875555 m!815473))

(assert (=> b!875555 m!815475))

(assert (=> b!875555 m!815487))

(declare-fun m!815491 () Bool)

(assert (=> b!875549 m!815491))

(declare-fun m!815493 () Bool)

(assert (=> b!875557 m!815493))

(declare-fun m!815495 () Bool)

(assert (=> b!875547 m!815495))

(declare-fun m!815497 () Bool)

(assert (=> b!875546 m!815497))

(check-sat (not b_next!15141) (not b_lambda!12205) (not b!875549) (not b!875548) (not mapNonEmpty!27686) (not start!74406) (not b!875555) (not b!875544) b_and!24939 (not b!875551) tp_is_empty!17385 (not bm!38645) (not b!875547) (not bm!38646) (not b!875552) (not b!875557))
(check-sat b_and!24939 (not b_next!15141))
(get-model)

(declare-fun b_lambda!12209 () Bool)

(assert (= b_lambda!12205 (or (and start!74406 b_free!15141) b_lambda!12209)))

(check-sat (not b_next!15141) (not b!875549) (not b!875548) (not mapNonEmpty!27686) (not start!74406) (not b!875555) (not b!875544) (not b!875551) tp_is_empty!17385 (not bm!38645) (not b!875547) (not bm!38646) b_and!24939 (not b_lambda!12209) (not b!875552) (not b!875557))
(check-sat b_and!24939 (not b_next!15141))
(get-model)

(declare-fun d!108499 () Bool)

(assert (=> d!108499 (= (validKeyInArray!0 k0!854) (and (not (= k0!854 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!854 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!875548 d!108499))

(declare-fun d!108501 () Bool)

(assert (=> d!108501 (= (validMask!0 mask!1196) (and (or (= mask!1196 #b00000000000000000000000000000111) (= mask!1196 #b00000000000000000000000000001111) (= mask!1196 #b00000000000000000000000000011111) (= mask!1196 #b00000000000000000000000000111111) (= mask!1196 #b00000000000000000000000001111111) (= mask!1196 #b00000000000000000000000011111111) (= mask!1196 #b00000000000000000000000111111111) (= mask!1196 #b00000000000000000000001111111111) (= mask!1196 #b00000000000000000000011111111111) (= mask!1196 #b00000000000000000000111111111111) (= mask!1196 #b00000000000000000001111111111111) (= mask!1196 #b00000000000000000011111111111111) (= mask!1196 #b00000000000000000111111111111111) (= mask!1196 #b00000000000000001111111111111111) (= mask!1196 #b00000000000000011111111111111111) (= mask!1196 #b00000000000000111111111111111111) (= mask!1196 #b00000000000001111111111111111111) (= mask!1196 #b00000000000011111111111111111111) (= mask!1196 #b00000000000111111111111111111111) (= mask!1196 #b00000000001111111111111111111111) (= mask!1196 #b00000000011111111111111111111111) (= mask!1196 #b00000000111111111111111111111111) (= mask!1196 #b00000001111111111111111111111111) (= mask!1196 #b00000011111111111111111111111111) (= mask!1196 #b00000111111111111111111111111111) (= mask!1196 #b00001111111111111111111111111111) (= mask!1196 #b00011111111111111111111111111111) (= mask!1196 #b00111111111111111111111111111111)) (bvsle mask!1196 #b00111111111111111111111111111111)))))

(assert (=> b!875547 d!108501))

(declare-fun b!875632 () Bool)

(declare-fun e!487490 () Bool)

(declare-fun lt!396231 () ListLongMap!10339)

(declare-fun isEmpty!667 (ListLongMap!10339) Bool)

(assert (=> b!875632 (= e!487490 (isEmpty!667 lt!396231))))

(declare-fun b!875633 () Bool)

(declare-fun e!487487 () ListLongMap!10339)

(declare-fun e!487491 () ListLongMap!10339)

(assert (=> b!875633 (= e!487487 e!487491)))

(declare-fun c!92457 () Bool)

(assert (=> b!875633 (= c!92457 (validKeyInArray!0 (select (arr!24463 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053))))))

(declare-fun b!875634 () Bool)

(declare-fun e!487486 () Bool)

(declare-fun e!487488 () Bool)

(assert (=> b!875634 (= e!487486 e!487488)))

(assert (=> b!875634 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1053) (size!24904 _keys!868)))))

(declare-fun res!595171 () Bool)

(declare-fun contains!4241 (ListLongMap!10339 (_ BitVec 64)) Bool)

(assert (=> b!875634 (= res!595171 (contains!4241 lt!396231 (select (arr!24463 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053))))))

(assert (=> b!875634 (=> (not res!595171) (not e!487488))))

(declare-fun b!875635 () Bool)

(declare-fun e!487489 () Bool)

(assert (=> b!875635 (= e!487489 e!487486)))

(declare-fun c!92456 () Bool)

(declare-fun e!487492 () Bool)

(assert (=> b!875635 (= c!92456 e!487492)))

(declare-fun res!595173 () Bool)

(assert (=> b!875635 (=> (not res!595173) (not e!487492))))

(assert (=> b!875635 (= res!595173 (bvslt (bvadd #b00000000000000000000000000000001 from!1053) (size!24904 _keys!868)))))

(declare-fun b!875636 () Bool)

(assert (=> b!875636 (= e!487486 e!487490)))

(declare-fun c!92458 () Bool)

(assert (=> b!875636 (= c!92458 (bvslt (bvadd #b00000000000000000000000000000001 from!1053) (size!24904 _keys!868)))))

(declare-fun b!875637 () Bool)

(assert (=> b!875637 (= e!487492 (validKeyInArray!0 (select (arr!24463 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053))))))

(assert (=> b!875637 (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000)))

(declare-fun bm!38655 () Bool)

(declare-fun call!38658 () ListLongMap!10339)

(assert (=> bm!38655 (= call!38658 (getCurrentListMapNoExtraKeys!3148 _keys!868 lt!396202 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053 #b00000000000000000000000000000001) defaultEntry!696))))

(declare-fun b!875638 () Bool)

(assert (=> b!875638 (= e!487491 call!38658)))

(declare-fun b!875640 () Bool)

(declare-fun lt!396233 () Unit!29910)

(declare-fun lt!396229 () Unit!29910)

(assert (=> b!875640 (= lt!396233 lt!396229)))

(declare-fun lt!396232 () (_ BitVec 64))

(declare-fun lt!396234 () ListLongMap!10339)

(declare-fun lt!396235 () (_ BitVec 64))

(declare-fun lt!396230 () V!28227)

(assert (=> b!875640 (not (contains!4241 (+!2425 lt!396234 (tuple2!11557 lt!396232 lt!396230)) lt!396235))))

(declare-fun addStillNotContains!203 (ListLongMap!10339 (_ BitVec 64) V!28227 (_ BitVec 64)) Unit!29910)

(assert (=> b!875640 (= lt!396229 (addStillNotContains!203 lt!396234 lt!396232 lt!396230 lt!396235))))

(assert (=> b!875640 (= lt!396235 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!875640 (= lt!396230 (get!12875 (select (arr!24464 lt!396202) (bvadd #b00000000000000000000000000000001 from!1053)) (dynLambda!1209 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!875640 (= lt!396232 (select (arr!24463 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053)))))

(assert (=> b!875640 (= lt!396234 call!38658)))

(assert (=> b!875640 (= e!487491 (+!2425 call!38658 (tuple2!11557 (select (arr!24463 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053)) (get!12875 (select (arr!24464 lt!396202) (bvadd #b00000000000000000000000000000001 from!1053)) (dynLambda!1209 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!875641 () Bool)

(assert (=> b!875641 (= e!487487 (ListLongMap!10340 Nil!17439))))

(declare-fun b!875642 () Bool)

(declare-fun res!595172 () Bool)

(assert (=> b!875642 (=> (not res!595172) (not e!487489))))

(assert (=> b!875642 (= res!595172 (not (contains!4241 lt!396231 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!875643 () Bool)

(assert (=> b!875643 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1053) (size!24904 _keys!868)))))

(assert (=> b!875643 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1053) (size!24905 lt!396202)))))

(declare-fun apply!376 (ListLongMap!10339 (_ BitVec 64)) V!28227)

(assert (=> b!875643 (= e!487488 (= (apply!376 lt!396231 (select (arr!24463 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053))) (get!12875 (select (arr!24464 lt!396202) (bvadd #b00000000000000000000000000000001 from!1053)) (dynLambda!1209 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!875639 () Bool)

(assert (=> b!875639 (= e!487490 (= lt!396231 (getCurrentListMapNoExtraKeys!3148 _keys!868 lt!396202 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053 #b00000000000000000000000000000001) defaultEntry!696)))))

(declare-fun d!108503 () Bool)

(assert (=> d!108503 e!487489))

(declare-fun res!595174 () Bool)

(assert (=> d!108503 (=> (not res!595174) (not e!487489))))

(assert (=> d!108503 (= res!595174 (not (contains!4241 lt!396231 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!108503 (= lt!396231 e!487487)))

(declare-fun c!92455 () Bool)

(assert (=> d!108503 (= c!92455 (bvsge (bvadd #b00000000000000000000000000000001 from!1053) (size!24904 _keys!868)))))

(assert (=> d!108503 (validMask!0 mask!1196)))

(assert (=> d!108503 (= (getCurrentListMapNoExtraKeys!3148 _keys!868 lt!396202 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) lt!396231)))

(assert (= (and d!108503 c!92455) b!875641))

(assert (= (and d!108503 (not c!92455)) b!875633))

(assert (= (and b!875633 c!92457) b!875640))

(assert (= (and b!875633 (not c!92457)) b!875638))

(assert (= (or b!875640 b!875638) bm!38655))

(assert (= (and d!108503 res!595174) b!875642))

(assert (= (and b!875642 res!595172) b!875635))

(assert (= (and b!875635 res!595173) b!875637))

(assert (= (and b!875635 c!92456) b!875634))

(assert (= (and b!875635 (not c!92456)) b!875636))

(assert (= (and b!875634 res!595171) b!875643))

(assert (= (and b!875636 c!92458) b!875639))

(assert (= (and b!875636 (not c!92458)) b!875632))

(declare-fun b_lambda!12211 () Bool)

(assert (=> (not b_lambda!12211) (not b!875640)))

(assert (=> b!875640 t!24494))

(declare-fun b_and!24945 () Bool)

(assert (= b_and!24939 (and (=> t!24494 result!9427) b_and!24945)))

(declare-fun b_lambda!12213 () Bool)

(assert (=> (not b_lambda!12213) (not b!875643)))

(assert (=> b!875643 t!24494))

(declare-fun b_and!24947 () Bool)

(assert (= b_and!24945 (and (=> t!24494 result!9427) b_and!24947)))

(declare-fun m!815541 () Bool)

(assert (=> b!875640 m!815541))

(assert (=> b!875640 m!815487))

(declare-fun m!815543 () Bool)

(assert (=> b!875640 m!815543))

(declare-fun m!815545 () Bool)

(assert (=> b!875640 m!815545))

(declare-fun m!815547 () Bool)

(assert (=> b!875640 m!815547))

(assert (=> b!875640 m!815487))

(declare-fun m!815549 () Bool)

(assert (=> b!875640 m!815549))

(declare-fun m!815551 () Bool)

(assert (=> b!875640 m!815551))

(assert (=> b!875640 m!815551))

(declare-fun m!815553 () Bool)

(assert (=> b!875640 m!815553))

(assert (=> b!875640 m!815547))

(assert (=> b!875637 m!815543))

(assert (=> b!875637 m!815543))

(declare-fun m!815555 () Bool)

(assert (=> b!875637 m!815555))

(declare-fun m!815557 () Bool)

(assert (=> bm!38655 m!815557))

(assert (=> b!875643 m!815547))

(assert (=> b!875643 m!815487))

(assert (=> b!875643 m!815543))

(assert (=> b!875643 m!815543))

(declare-fun m!815559 () Bool)

(assert (=> b!875643 m!815559))

(assert (=> b!875643 m!815547))

(assert (=> b!875643 m!815487))

(assert (=> b!875643 m!815549))

(assert (=> b!875639 m!815557))

(declare-fun m!815561 () Bool)

(assert (=> b!875632 m!815561))

(assert (=> b!875633 m!815543))

(assert (=> b!875633 m!815543))

(assert (=> b!875633 m!815555))

(declare-fun m!815563 () Bool)

(assert (=> d!108503 m!815563))

(assert (=> d!108503 m!815495))

(assert (=> b!875634 m!815543))

(assert (=> b!875634 m!815543))

(declare-fun m!815565 () Bool)

(assert (=> b!875634 m!815565))

(declare-fun m!815567 () Bool)

(assert (=> b!875642 m!815567))

(assert (=> bm!38645 d!108503))

(declare-fun b!875652 () Bool)

(declare-fun e!487499 () Bool)

(declare-fun call!38661 () Bool)

(assert (=> b!875652 (= e!487499 call!38661)))

(declare-fun b!875653 () Bool)

(declare-fun e!487501 () Bool)

(assert (=> b!875653 (= e!487501 e!487499)))

(declare-fun c!92461 () Bool)

(assert (=> b!875653 (= c!92461 (validKeyInArray!0 (select (arr!24463 _keys!868) #b00000000000000000000000000000000)))))

(declare-fun bm!38658 () Bool)

(assert (=> bm!38658 (= call!38661 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!868 mask!1196))))

(declare-fun d!108505 () Bool)

(declare-fun res!595179 () Bool)

(assert (=> d!108505 (=> res!595179 e!487501)))

(assert (=> d!108505 (= res!595179 (bvsge #b00000000000000000000000000000000 (size!24904 _keys!868)))))

(assert (=> d!108505 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196) e!487501)))

(declare-fun b!875654 () Bool)

(declare-fun e!487500 () Bool)

(assert (=> b!875654 (= e!487499 e!487500)))

(declare-fun lt!396242 () (_ BitVec 64))

(assert (=> b!875654 (= lt!396242 (select (arr!24463 _keys!868) #b00000000000000000000000000000000))))

(declare-fun lt!396244 () Unit!29910)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!50878 (_ BitVec 64) (_ BitVec 32)) Unit!29910)

(assert (=> b!875654 (= lt!396244 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!868 lt!396242 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!50878 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!875654 (arrayContainsKey!0 _keys!868 lt!396242 #b00000000000000000000000000000000)))

(declare-fun lt!396243 () Unit!29910)

(assert (=> b!875654 (= lt!396243 lt!396244)))

(declare-fun res!595180 () Bool)

(declare-datatypes ((SeekEntryResult!8741 0))(
  ( (MissingZero!8741 (index!37334 (_ BitVec 32))) (Found!8741 (index!37335 (_ BitVec 32))) (Intermediate!8741 (undefined!9553 Bool) (index!37336 (_ BitVec 32)) (x!74178 (_ BitVec 32))) (Undefined!8741) (MissingVacant!8741 (index!37337 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!50878 (_ BitVec 32)) SeekEntryResult!8741)

(assert (=> b!875654 (= res!595180 (= (seekEntryOrOpen!0 (select (arr!24463 _keys!868) #b00000000000000000000000000000000) _keys!868 mask!1196) (Found!8741 #b00000000000000000000000000000000)))))

(assert (=> b!875654 (=> (not res!595180) (not e!487500))))

(declare-fun b!875655 () Bool)

(assert (=> b!875655 (= e!487500 call!38661)))

(assert (= (and d!108505 (not res!595179)) b!875653))

(assert (= (and b!875653 c!92461) b!875654))

(assert (= (and b!875653 (not c!92461)) b!875652))

(assert (= (and b!875654 res!595180) b!875655))

(assert (= (or b!875655 b!875652) bm!38658))

(declare-fun m!815569 () Bool)

(assert (=> b!875653 m!815569))

(assert (=> b!875653 m!815569))

(declare-fun m!815571 () Bool)

(assert (=> b!875653 m!815571))

(declare-fun m!815573 () Bool)

(assert (=> bm!38658 m!815573))

(assert (=> b!875654 m!815569))

(declare-fun m!815575 () Bool)

(assert (=> b!875654 m!815575))

(declare-fun m!815577 () Bool)

(assert (=> b!875654 m!815577))

(assert (=> b!875654 m!815569))

(declare-fun m!815579 () Bool)

(assert (=> b!875654 m!815579))

(assert (=> b!875557 d!108505))

(declare-fun b!875666 () Bool)

(declare-fun e!487511 () Bool)

(declare-fun call!38664 () Bool)

(assert (=> b!875666 (= e!487511 call!38664)))

(declare-fun b!875667 () Bool)

(declare-fun e!487512 () Bool)

(declare-fun contains!4242 (List!17443 (_ BitVec 64)) Bool)

(assert (=> b!875667 (= e!487512 (contains!4242 Nil!17440 (select (arr!24463 _keys!868) #b00000000000000000000000000000000)))))

(declare-fun b!875668 () Bool)

(assert (=> b!875668 (= e!487511 call!38664)))

(declare-fun bm!38661 () Bool)

(declare-fun c!92464 () Bool)

(assert (=> bm!38661 (= call!38664 (arrayNoDuplicates!0 _keys!868 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!92464 (Cons!17439 (select (arr!24463 _keys!868) #b00000000000000000000000000000000) Nil!17440) Nil!17440)))))

(declare-fun b!875669 () Bool)

(declare-fun e!487513 () Bool)

(assert (=> b!875669 (= e!487513 e!487511)))

(assert (=> b!875669 (= c!92464 (validKeyInArray!0 (select (arr!24463 _keys!868) #b00000000000000000000000000000000)))))

(declare-fun d!108507 () Bool)

(declare-fun res!595187 () Bool)

(declare-fun e!487510 () Bool)

(assert (=> d!108507 (=> res!595187 e!487510)))

(assert (=> d!108507 (= res!595187 (bvsge #b00000000000000000000000000000000 (size!24904 _keys!868)))))

(assert (=> d!108507 (= (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17440) e!487510)))

(declare-fun b!875670 () Bool)

(assert (=> b!875670 (= e!487510 e!487513)))

(declare-fun res!595188 () Bool)

(assert (=> b!875670 (=> (not res!595188) (not e!487513))))

(assert (=> b!875670 (= res!595188 (not e!487512))))

(declare-fun res!595189 () Bool)

(assert (=> b!875670 (=> (not res!595189) (not e!487512))))

(assert (=> b!875670 (= res!595189 (validKeyInArray!0 (select (arr!24463 _keys!868) #b00000000000000000000000000000000)))))

(assert (= (and d!108507 (not res!595187)) b!875670))

(assert (= (and b!875670 res!595189) b!875667))

(assert (= (and b!875670 res!595188) b!875669))

(assert (= (and b!875669 c!92464) b!875666))

(assert (= (and b!875669 (not c!92464)) b!875668))

(assert (= (or b!875666 b!875668) bm!38661))

(assert (=> b!875667 m!815569))

(assert (=> b!875667 m!815569))

(declare-fun m!815581 () Bool)

(assert (=> b!875667 m!815581))

(assert (=> bm!38661 m!815569))

(declare-fun m!815583 () Bool)

(assert (=> bm!38661 m!815583))

(assert (=> b!875669 m!815569))

(assert (=> b!875669 m!815569))

(assert (=> b!875669 m!815571))

(assert (=> b!875670 m!815569))

(assert (=> b!875670 m!815569))

(assert (=> b!875670 m!815571))

(assert (=> b!875549 d!108507))

(declare-fun d!108509 () Bool)

(assert (=> d!108509 (= (validKeyInArray!0 (select (arr!24463 _keys!868) from!1053)) (and (not (= (select (arr!24463 _keys!868) from!1053) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!24463 _keys!868) from!1053) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!875551 d!108509))

(declare-fun call!38670 () ListLongMap!10339)

(declare-fun bm!38666 () Bool)

(assert (=> bm!38666 (= call!38670 (getCurrentListMapNoExtraKeys!3148 _keys!868 (array!50881 (store (arr!24464 _values!688) i!612 (ValueCellFull!8253 v!557)) (size!24905 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!875677 () Bool)

(declare-fun e!487519 () Bool)

(declare-fun e!487518 () Bool)

(assert (=> b!875677 (= e!487519 e!487518)))

(declare-fun c!92467 () Bool)

(assert (=> b!875677 (= c!92467 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-fun call!38669 () ListLongMap!10339)

(declare-fun bm!38667 () Bool)

(assert (=> bm!38667 (= call!38669 (getCurrentListMapNoExtraKeys!3148 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!875679 () Bool)

(assert (=> b!875679 (= e!487518 (= call!38670 call!38669))))

(declare-fun d!108511 () Bool)

(assert (=> d!108511 e!487519))

(declare-fun res!595192 () Bool)

(assert (=> d!108511 (=> (not res!595192) (not e!487519))))

(assert (=> d!108511 (= res!595192 (and (or (not (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612)) (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24905 _values!688)))) (or (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612) (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24905 _values!688))))))))

(declare-fun lt!396247 () Unit!29910)

(declare-fun choose!1437 (array!50878 array!50880 (_ BitVec 32) (_ BitVec 32) V!28227 V!28227 (_ BitVec 32) (_ BitVec 64) V!28227 (_ BitVec 32) Int) Unit!29910)

(assert (=> d!108511 (= lt!396247 (choose!1437 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> d!108511 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!1053) (size!24904 _keys!868)))))

(assert (=> d!108511 (= (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!659 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) lt!396247)))

(declare-fun b!875678 () Bool)

(assert (=> b!875678 (= e!487518 (= call!38670 (+!2425 call!38669 (tuple2!11557 k0!854 v!557))))))

(assert (= (and d!108511 res!595192) b!875677))

(assert (= (and b!875677 c!92467) b!875678))

(assert (= (and b!875677 (not c!92467)) b!875679))

(assert (= (or b!875678 b!875679) bm!38667))

(assert (= (or b!875678 b!875679) bm!38666))

(assert (=> bm!38666 m!815463))

(declare-fun m!815585 () Bool)

(assert (=> bm!38666 m!815585))

(assert (=> bm!38667 m!815469))

(declare-fun m!815587 () Bool)

(assert (=> d!108511 m!815587))

(declare-fun m!815589 () Bool)

(assert (=> b!875678 m!815589))

(assert (=> b!875551 d!108511))

(declare-fun b!875680 () Bool)

(declare-fun e!487524 () Bool)

(declare-fun lt!396250 () ListLongMap!10339)

(assert (=> b!875680 (= e!487524 (isEmpty!667 lt!396250))))

(declare-fun b!875681 () Bool)

(declare-fun e!487521 () ListLongMap!10339)

(declare-fun e!487525 () ListLongMap!10339)

(assert (=> b!875681 (= e!487521 e!487525)))

(declare-fun c!92470 () Bool)

(assert (=> b!875681 (= c!92470 (validKeyInArray!0 (select (arr!24463 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053))))))

(declare-fun b!875682 () Bool)

(declare-fun e!487520 () Bool)

(declare-fun e!487522 () Bool)

(assert (=> b!875682 (= e!487520 e!487522)))

(assert (=> b!875682 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1053) (size!24904 _keys!868)))))

(declare-fun res!595193 () Bool)

(assert (=> b!875682 (= res!595193 (contains!4241 lt!396250 (select (arr!24463 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053))))))

(assert (=> b!875682 (=> (not res!595193) (not e!487522))))

(declare-fun b!875683 () Bool)

(declare-fun e!487523 () Bool)

(assert (=> b!875683 (= e!487523 e!487520)))

(declare-fun c!92469 () Bool)

(declare-fun e!487526 () Bool)

(assert (=> b!875683 (= c!92469 e!487526)))

(declare-fun res!595195 () Bool)

(assert (=> b!875683 (=> (not res!595195) (not e!487526))))

(assert (=> b!875683 (= res!595195 (bvslt (bvadd #b00000000000000000000000000000001 from!1053) (size!24904 _keys!868)))))

(declare-fun b!875684 () Bool)

(assert (=> b!875684 (= e!487520 e!487524)))

(declare-fun c!92471 () Bool)

(assert (=> b!875684 (= c!92471 (bvslt (bvadd #b00000000000000000000000000000001 from!1053) (size!24904 _keys!868)))))

(declare-fun b!875685 () Bool)

(assert (=> b!875685 (= e!487526 (validKeyInArray!0 (select (arr!24463 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053))))))

(assert (=> b!875685 (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000)))

(declare-fun call!38671 () ListLongMap!10339)

(declare-fun bm!38668 () Bool)

(assert (=> bm!38668 (= call!38671 (getCurrentListMapNoExtraKeys!3148 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053 #b00000000000000000000000000000001) defaultEntry!696))))

(declare-fun b!875686 () Bool)

(assert (=> b!875686 (= e!487525 call!38671)))

(declare-fun b!875688 () Bool)

(declare-fun lt!396252 () Unit!29910)

(declare-fun lt!396248 () Unit!29910)

(assert (=> b!875688 (= lt!396252 lt!396248)))

(declare-fun lt!396253 () ListLongMap!10339)

(declare-fun lt!396254 () (_ BitVec 64))

(declare-fun lt!396249 () V!28227)

(declare-fun lt!396251 () (_ BitVec 64))

(assert (=> b!875688 (not (contains!4241 (+!2425 lt!396253 (tuple2!11557 lt!396251 lt!396249)) lt!396254))))

(assert (=> b!875688 (= lt!396248 (addStillNotContains!203 lt!396253 lt!396251 lt!396249 lt!396254))))

(assert (=> b!875688 (= lt!396254 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!875688 (= lt!396249 (get!12875 (select (arr!24464 _values!688) (bvadd #b00000000000000000000000000000001 from!1053)) (dynLambda!1209 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!875688 (= lt!396251 (select (arr!24463 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053)))))

(assert (=> b!875688 (= lt!396253 call!38671)))

(assert (=> b!875688 (= e!487525 (+!2425 call!38671 (tuple2!11557 (select (arr!24463 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053)) (get!12875 (select (arr!24464 _values!688) (bvadd #b00000000000000000000000000000001 from!1053)) (dynLambda!1209 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!875689 () Bool)

(assert (=> b!875689 (= e!487521 (ListLongMap!10340 Nil!17439))))

(declare-fun b!875690 () Bool)

(declare-fun res!595194 () Bool)

(assert (=> b!875690 (=> (not res!595194) (not e!487523))))

(assert (=> b!875690 (= res!595194 (not (contains!4241 lt!396250 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!875691 () Bool)

(assert (=> b!875691 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1053) (size!24904 _keys!868)))))

(assert (=> b!875691 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1053) (size!24905 _values!688)))))

(assert (=> b!875691 (= e!487522 (= (apply!376 lt!396250 (select (arr!24463 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053))) (get!12875 (select (arr!24464 _values!688) (bvadd #b00000000000000000000000000000001 from!1053)) (dynLambda!1209 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!875687 () Bool)

(assert (=> b!875687 (= e!487524 (= lt!396250 (getCurrentListMapNoExtraKeys!3148 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053 #b00000000000000000000000000000001) defaultEntry!696)))))

(declare-fun d!108513 () Bool)

(assert (=> d!108513 e!487523))

(declare-fun res!595196 () Bool)

(assert (=> d!108513 (=> (not res!595196) (not e!487523))))

(assert (=> d!108513 (= res!595196 (not (contains!4241 lt!396250 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!108513 (= lt!396250 e!487521)))

(declare-fun c!92468 () Bool)

(assert (=> d!108513 (= c!92468 (bvsge (bvadd #b00000000000000000000000000000001 from!1053) (size!24904 _keys!868)))))

(assert (=> d!108513 (validMask!0 mask!1196)))

(assert (=> d!108513 (= (getCurrentListMapNoExtraKeys!3148 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) lt!396250)))

(assert (= (and d!108513 c!92468) b!875689))

(assert (= (and d!108513 (not c!92468)) b!875681))

(assert (= (and b!875681 c!92470) b!875688))

(assert (= (and b!875681 (not c!92470)) b!875686))

(assert (= (or b!875688 b!875686) bm!38668))

(assert (= (and d!108513 res!595196) b!875690))

(assert (= (and b!875690 res!595194) b!875683))

(assert (= (and b!875683 res!595195) b!875685))

(assert (= (and b!875683 c!92469) b!875682))

(assert (= (and b!875683 (not c!92469)) b!875684))

(assert (= (and b!875682 res!595193) b!875691))

(assert (= (and b!875684 c!92471) b!875687))

(assert (= (and b!875684 (not c!92471)) b!875680))

(declare-fun b_lambda!12215 () Bool)

(assert (=> (not b_lambda!12215) (not b!875688)))

(assert (=> b!875688 t!24494))

(declare-fun b_and!24949 () Bool)

(assert (= b_and!24947 (and (=> t!24494 result!9427) b_and!24949)))

(declare-fun b_lambda!12217 () Bool)

(assert (=> (not b_lambda!12217) (not b!875691)))

(assert (=> b!875691 t!24494))

(declare-fun b_and!24951 () Bool)

(assert (= b_and!24949 (and (=> t!24494 result!9427) b_and!24951)))

(declare-fun m!815591 () Bool)

(assert (=> b!875688 m!815591))

(assert (=> b!875688 m!815487))

(assert (=> b!875688 m!815543))

(declare-fun m!815593 () Bool)

(assert (=> b!875688 m!815593))

(declare-fun m!815595 () Bool)

(assert (=> b!875688 m!815595))

(assert (=> b!875688 m!815487))

(declare-fun m!815597 () Bool)

(assert (=> b!875688 m!815597))

(declare-fun m!815599 () Bool)

(assert (=> b!875688 m!815599))

(assert (=> b!875688 m!815599))

(declare-fun m!815601 () Bool)

(assert (=> b!875688 m!815601))

(assert (=> b!875688 m!815595))

(assert (=> b!875685 m!815543))

(assert (=> b!875685 m!815543))

(assert (=> b!875685 m!815555))

(declare-fun m!815603 () Bool)

(assert (=> bm!38668 m!815603))

(assert (=> b!875691 m!815595))

(assert (=> b!875691 m!815487))

(assert (=> b!875691 m!815543))

(assert (=> b!875691 m!815543))

(declare-fun m!815605 () Bool)

(assert (=> b!875691 m!815605))

(assert (=> b!875691 m!815595))

(assert (=> b!875691 m!815487))

(assert (=> b!875691 m!815597))

(assert (=> b!875687 m!815603))

(declare-fun m!815607 () Bool)

(assert (=> b!875680 m!815607))

(assert (=> b!875681 m!815543))

(assert (=> b!875681 m!815543))

(assert (=> b!875681 m!815555))

(declare-fun m!815609 () Bool)

(assert (=> d!108513 m!815609))

(assert (=> d!108513 m!815495))

(assert (=> b!875682 m!815543))

(assert (=> b!875682 m!815543))

(declare-fun m!815611 () Bool)

(assert (=> b!875682 m!815611))

(declare-fun m!815613 () Bool)

(assert (=> b!875690 m!815613))

(assert (=> bm!38646 d!108513))

(declare-fun d!108515 () Bool)

(assert (=> d!108515 (= (array_inv!19268 _keys!868) (bvsge (size!24904 _keys!868) #b00000000000000000000000000000000))))

(assert (=> start!74406 d!108515))

(declare-fun d!108517 () Bool)

(assert (=> d!108517 (= (array_inv!19269 _values!688) (bvsge (size!24905 _values!688) #b00000000000000000000000000000000))))

(assert (=> start!74406 d!108517))

(declare-fun b!875692 () Bool)

(declare-fun e!487531 () Bool)

(declare-fun lt!396257 () ListLongMap!10339)

(assert (=> b!875692 (= e!487531 (isEmpty!667 lt!396257))))

(declare-fun b!875693 () Bool)

(declare-fun e!487528 () ListLongMap!10339)

(declare-fun e!487532 () ListLongMap!10339)

(assert (=> b!875693 (= e!487528 e!487532)))

(declare-fun c!92474 () Bool)

(assert (=> b!875693 (= c!92474 (validKeyInArray!0 (select (arr!24463 _keys!868) from!1053)))))

(declare-fun b!875694 () Bool)

(declare-fun e!487527 () Bool)

(declare-fun e!487529 () Bool)

(assert (=> b!875694 (= e!487527 e!487529)))

(assert (=> b!875694 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvslt from!1053 (size!24904 _keys!868)))))

(declare-fun res!595197 () Bool)

(assert (=> b!875694 (= res!595197 (contains!4241 lt!396257 (select (arr!24463 _keys!868) from!1053)))))

(assert (=> b!875694 (=> (not res!595197) (not e!487529))))

(declare-fun b!875695 () Bool)

(declare-fun e!487530 () Bool)

(assert (=> b!875695 (= e!487530 e!487527)))

(declare-fun c!92473 () Bool)

(declare-fun e!487533 () Bool)

(assert (=> b!875695 (= c!92473 e!487533)))

(declare-fun res!595199 () Bool)

(assert (=> b!875695 (=> (not res!595199) (not e!487533))))

(assert (=> b!875695 (= res!595199 (bvslt from!1053 (size!24904 _keys!868)))))

(declare-fun b!875696 () Bool)

(assert (=> b!875696 (= e!487527 e!487531)))

(declare-fun c!92475 () Bool)

(assert (=> b!875696 (= c!92475 (bvslt from!1053 (size!24904 _keys!868)))))

(declare-fun b!875697 () Bool)

(assert (=> b!875697 (= e!487533 (validKeyInArray!0 (select (arr!24463 _keys!868) from!1053)))))

(assert (=> b!875697 (bvsge from!1053 #b00000000000000000000000000000000)))

(declare-fun call!38672 () ListLongMap!10339)

(declare-fun bm!38669 () Bool)

(assert (=> bm!38669 (= call!38672 (getCurrentListMapNoExtraKeys!3148 _keys!868 lt!396202 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd from!1053 #b00000000000000000000000000000001) defaultEntry!696))))

(declare-fun b!875698 () Bool)

(assert (=> b!875698 (= e!487532 call!38672)))

(declare-fun b!875700 () Bool)

(declare-fun lt!396259 () Unit!29910)

(declare-fun lt!396255 () Unit!29910)

(assert (=> b!875700 (= lt!396259 lt!396255)))

(declare-fun lt!396261 () (_ BitVec 64))

(declare-fun lt!396256 () V!28227)

(declare-fun lt!396258 () (_ BitVec 64))

(declare-fun lt!396260 () ListLongMap!10339)

(assert (=> b!875700 (not (contains!4241 (+!2425 lt!396260 (tuple2!11557 lt!396258 lt!396256)) lt!396261))))

(assert (=> b!875700 (= lt!396255 (addStillNotContains!203 lt!396260 lt!396258 lt!396256 lt!396261))))

(assert (=> b!875700 (= lt!396261 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!875700 (= lt!396256 (get!12875 (select (arr!24464 lt!396202) from!1053) (dynLambda!1209 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!875700 (= lt!396258 (select (arr!24463 _keys!868) from!1053))))

(assert (=> b!875700 (= lt!396260 call!38672)))

(assert (=> b!875700 (= e!487532 (+!2425 call!38672 (tuple2!11557 (select (arr!24463 _keys!868) from!1053) (get!12875 (select (arr!24464 lt!396202) from!1053) (dynLambda!1209 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!875701 () Bool)

(assert (=> b!875701 (= e!487528 (ListLongMap!10340 Nil!17439))))

(declare-fun b!875702 () Bool)

(declare-fun res!595198 () Bool)

(assert (=> b!875702 (=> (not res!595198) (not e!487530))))

(assert (=> b!875702 (= res!595198 (not (contains!4241 lt!396257 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!875703 () Bool)

(assert (=> b!875703 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvslt from!1053 (size!24904 _keys!868)))))

(assert (=> b!875703 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvslt from!1053 (size!24905 lt!396202)))))

(assert (=> b!875703 (= e!487529 (= (apply!376 lt!396257 (select (arr!24463 _keys!868) from!1053)) (get!12875 (select (arr!24464 lt!396202) from!1053) (dynLambda!1209 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!875699 () Bool)

(assert (=> b!875699 (= e!487531 (= lt!396257 (getCurrentListMapNoExtraKeys!3148 _keys!868 lt!396202 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd from!1053 #b00000000000000000000000000000001) defaultEntry!696)))))

(declare-fun d!108519 () Bool)

(assert (=> d!108519 e!487530))

(declare-fun res!595200 () Bool)

(assert (=> d!108519 (=> (not res!595200) (not e!487530))))

(assert (=> d!108519 (= res!595200 (not (contains!4241 lt!396257 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!108519 (= lt!396257 e!487528)))

(declare-fun c!92472 () Bool)

(assert (=> d!108519 (= c!92472 (bvsge from!1053 (size!24904 _keys!868)))))

(assert (=> d!108519 (validMask!0 mask!1196)))

(assert (=> d!108519 (= (getCurrentListMapNoExtraKeys!3148 _keys!868 lt!396202 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696) lt!396257)))

(assert (= (and d!108519 c!92472) b!875701))

(assert (= (and d!108519 (not c!92472)) b!875693))

(assert (= (and b!875693 c!92474) b!875700))

(assert (= (and b!875693 (not c!92474)) b!875698))

(assert (= (or b!875700 b!875698) bm!38669))

(assert (= (and d!108519 res!595200) b!875702))

(assert (= (and b!875702 res!595198) b!875695))

(assert (= (and b!875695 res!595199) b!875697))

(assert (= (and b!875695 c!92473) b!875694))

(assert (= (and b!875695 (not c!92473)) b!875696))

(assert (= (and b!875694 res!595197) b!875703))

(assert (= (and b!875696 c!92475) b!875699))

(assert (= (and b!875696 (not c!92475)) b!875692))

(declare-fun b_lambda!12219 () Bool)

(assert (=> (not b_lambda!12219) (not b!875700)))

(assert (=> b!875700 t!24494))

(declare-fun b_and!24953 () Bool)

(assert (= b_and!24951 (and (=> t!24494 result!9427) b_and!24953)))

(declare-fun b_lambda!12221 () Bool)

(assert (=> (not b_lambda!12221) (not b!875703)))

(assert (=> b!875703 t!24494))

(declare-fun b_and!24955 () Bool)

(assert (= b_and!24953 (and (=> t!24494 result!9427) b_and!24955)))

(declare-fun m!815615 () Bool)

(assert (=> b!875700 m!815615))

(assert (=> b!875700 m!815487))

(assert (=> b!875700 m!815475))

(declare-fun m!815617 () Bool)

(assert (=> b!875700 m!815617))

(assert (=> b!875700 m!815483))

(assert (=> b!875700 m!815487))

(assert (=> b!875700 m!815489))

(declare-fun m!815619 () Bool)

(assert (=> b!875700 m!815619))

(assert (=> b!875700 m!815619))

(declare-fun m!815621 () Bool)

(assert (=> b!875700 m!815621))

(assert (=> b!875700 m!815483))

(assert (=> b!875697 m!815475))

(assert (=> b!875697 m!815475))

(assert (=> b!875697 m!815477))

(declare-fun m!815623 () Bool)

(assert (=> bm!38669 m!815623))

(assert (=> b!875703 m!815483))

(assert (=> b!875703 m!815487))

(assert (=> b!875703 m!815475))

(assert (=> b!875703 m!815475))

(declare-fun m!815625 () Bool)

(assert (=> b!875703 m!815625))

(assert (=> b!875703 m!815483))

(assert (=> b!875703 m!815487))

(assert (=> b!875703 m!815489))

(assert (=> b!875699 m!815623))

(declare-fun m!815627 () Bool)

(assert (=> b!875692 m!815627))

(assert (=> b!875693 m!815475))

(assert (=> b!875693 m!815475))

(assert (=> b!875693 m!815477))

(declare-fun m!815629 () Bool)

(assert (=> d!108519 m!815629))

(assert (=> d!108519 m!815495))

(assert (=> b!875694 m!815475))

(assert (=> b!875694 m!815475))

(declare-fun m!815631 () Bool)

(assert (=> b!875694 m!815631))

(declare-fun m!815633 () Bool)

(assert (=> b!875702 m!815633))

(assert (=> b!875544 d!108519))

(declare-fun b!875704 () Bool)

(declare-fun e!487538 () Bool)

(declare-fun lt!396264 () ListLongMap!10339)

(assert (=> b!875704 (= e!487538 (isEmpty!667 lt!396264))))

(declare-fun b!875705 () Bool)

(declare-fun e!487535 () ListLongMap!10339)

(declare-fun e!487539 () ListLongMap!10339)

(assert (=> b!875705 (= e!487535 e!487539)))

(declare-fun c!92478 () Bool)

(assert (=> b!875705 (= c!92478 (validKeyInArray!0 (select (arr!24463 _keys!868) from!1053)))))

(declare-fun b!875706 () Bool)

(declare-fun e!487534 () Bool)

(declare-fun e!487536 () Bool)

(assert (=> b!875706 (= e!487534 e!487536)))

(assert (=> b!875706 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvslt from!1053 (size!24904 _keys!868)))))

(declare-fun res!595201 () Bool)

(assert (=> b!875706 (= res!595201 (contains!4241 lt!396264 (select (arr!24463 _keys!868) from!1053)))))

(assert (=> b!875706 (=> (not res!595201) (not e!487536))))

(declare-fun b!875707 () Bool)

(declare-fun e!487537 () Bool)

(assert (=> b!875707 (= e!487537 e!487534)))

(declare-fun c!92477 () Bool)

(declare-fun e!487540 () Bool)

(assert (=> b!875707 (= c!92477 e!487540)))

(declare-fun res!595203 () Bool)

(assert (=> b!875707 (=> (not res!595203) (not e!487540))))

(assert (=> b!875707 (= res!595203 (bvslt from!1053 (size!24904 _keys!868)))))

(declare-fun b!875708 () Bool)

(assert (=> b!875708 (= e!487534 e!487538)))

(declare-fun c!92479 () Bool)

(assert (=> b!875708 (= c!92479 (bvslt from!1053 (size!24904 _keys!868)))))

(declare-fun b!875709 () Bool)

(assert (=> b!875709 (= e!487540 (validKeyInArray!0 (select (arr!24463 _keys!868) from!1053)))))

(assert (=> b!875709 (bvsge from!1053 #b00000000000000000000000000000000)))

(declare-fun call!38673 () ListLongMap!10339)

(declare-fun bm!38670 () Bool)

(assert (=> bm!38670 (= call!38673 (getCurrentListMapNoExtraKeys!3148 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd from!1053 #b00000000000000000000000000000001) defaultEntry!696))))

(declare-fun b!875710 () Bool)

(assert (=> b!875710 (= e!487539 call!38673)))

(declare-fun b!875712 () Bool)

(declare-fun lt!396266 () Unit!29910)

(declare-fun lt!396262 () Unit!29910)

(assert (=> b!875712 (= lt!396266 lt!396262)))

(declare-fun lt!396267 () ListLongMap!10339)

(declare-fun lt!396263 () V!28227)

(declare-fun lt!396265 () (_ BitVec 64))

(declare-fun lt!396268 () (_ BitVec 64))

(assert (=> b!875712 (not (contains!4241 (+!2425 lt!396267 (tuple2!11557 lt!396265 lt!396263)) lt!396268))))

(assert (=> b!875712 (= lt!396262 (addStillNotContains!203 lt!396267 lt!396265 lt!396263 lt!396268))))

(assert (=> b!875712 (= lt!396268 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!875712 (= lt!396263 (get!12875 (select (arr!24464 _values!688) from!1053) (dynLambda!1209 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!875712 (= lt!396265 (select (arr!24463 _keys!868) from!1053))))

(assert (=> b!875712 (= lt!396267 call!38673)))

(assert (=> b!875712 (= e!487539 (+!2425 call!38673 (tuple2!11557 (select (arr!24463 _keys!868) from!1053) (get!12875 (select (arr!24464 _values!688) from!1053) (dynLambda!1209 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!875713 () Bool)

(assert (=> b!875713 (= e!487535 (ListLongMap!10340 Nil!17439))))

(declare-fun b!875714 () Bool)

(declare-fun res!595202 () Bool)

(assert (=> b!875714 (=> (not res!595202) (not e!487537))))

(assert (=> b!875714 (= res!595202 (not (contains!4241 lt!396264 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!875715 () Bool)

(assert (=> b!875715 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvslt from!1053 (size!24904 _keys!868)))))

(assert (=> b!875715 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvslt from!1053 (size!24905 _values!688)))))

(assert (=> b!875715 (= e!487536 (= (apply!376 lt!396264 (select (arr!24463 _keys!868) from!1053)) (get!12875 (select (arr!24464 _values!688) from!1053) (dynLambda!1209 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!875711 () Bool)

(assert (=> b!875711 (= e!487538 (= lt!396264 (getCurrentListMapNoExtraKeys!3148 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd from!1053 #b00000000000000000000000000000001) defaultEntry!696)))))

(declare-fun d!108521 () Bool)

(assert (=> d!108521 e!487537))

(declare-fun res!595204 () Bool)

(assert (=> d!108521 (=> (not res!595204) (not e!487537))))

(assert (=> d!108521 (= res!595204 (not (contains!4241 lt!396264 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!108521 (= lt!396264 e!487535)))

(declare-fun c!92476 () Bool)

(assert (=> d!108521 (= c!92476 (bvsge from!1053 (size!24904 _keys!868)))))

(assert (=> d!108521 (validMask!0 mask!1196)))

(assert (=> d!108521 (= (getCurrentListMapNoExtraKeys!3148 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696) lt!396264)))

(assert (= (and d!108521 c!92476) b!875713))

(assert (= (and d!108521 (not c!92476)) b!875705))

(assert (= (and b!875705 c!92478) b!875712))

(assert (= (and b!875705 (not c!92478)) b!875710))

(assert (= (or b!875712 b!875710) bm!38670))

(assert (= (and d!108521 res!595204) b!875714))

(assert (= (and b!875714 res!595202) b!875707))

(assert (= (and b!875707 res!595203) b!875709))

(assert (= (and b!875707 c!92477) b!875706))

(assert (= (and b!875707 (not c!92477)) b!875708))

(assert (= (and b!875706 res!595201) b!875715))

(assert (= (and b!875708 c!92479) b!875711))

(assert (= (and b!875708 (not c!92479)) b!875704))

(declare-fun b_lambda!12223 () Bool)

(assert (=> (not b_lambda!12223) (not b!875712)))

(assert (=> b!875712 t!24494))

(declare-fun b_and!24957 () Bool)

(assert (= b_and!24955 (and (=> t!24494 result!9427) b_and!24957)))

(declare-fun b_lambda!12225 () Bool)

(assert (=> (not b_lambda!12225) (not b!875715)))

(assert (=> b!875715 t!24494))

(declare-fun b_and!24959 () Bool)

(assert (= b_and!24957 (and (=> t!24494 result!9427) b_and!24959)))

(declare-fun m!815635 () Bool)

(assert (=> b!875712 m!815635))

(assert (=> b!875712 m!815487))

(assert (=> b!875712 m!815475))

(declare-fun m!815637 () Bool)

(assert (=> b!875712 m!815637))

(declare-fun m!815639 () Bool)

(assert (=> b!875712 m!815639))

(assert (=> b!875712 m!815487))

(declare-fun m!815641 () Bool)

(assert (=> b!875712 m!815641))

(declare-fun m!815643 () Bool)

(assert (=> b!875712 m!815643))

(assert (=> b!875712 m!815643))

(declare-fun m!815645 () Bool)

(assert (=> b!875712 m!815645))

(assert (=> b!875712 m!815639))

(assert (=> b!875709 m!815475))

(assert (=> b!875709 m!815475))

(assert (=> b!875709 m!815477))

(declare-fun m!815647 () Bool)

(assert (=> bm!38670 m!815647))

(assert (=> b!875715 m!815639))

(assert (=> b!875715 m!815487))

(assert (=> b!875715 m!815475))

(assert (=> b!875715 m!815475))

(declare-fun m!815649 () Bool)

(assert (=> b!875715 m!815649))

(assert (=> b!875715 m!815639))

(assert (=> b!875715 m!815487))

(assert (=> b!875715 m!815641))

(assert (=> b!875711 m!815647))

(declare-fun m!815651 () Bool)

(assert (=> b!875704 m!815651))

(assert (=> b!875705 m!815475))

(assert (=> b!875705 m!815475))

(assert (=> b!875705 m!815477))

(declare-fun m!815653 () Bool)

(assert (=> d!108521 m!815653))

(assert (=> d!108521 m!815495))

(assert (=> b!875706 m!815475))

(assert (=> b!875706 m!815475))

(declare-fun m!815655 () Bool)

(assert (=> b!875706 m!815655))

(declare-fun m!815657 () Bool)

(assert (=> b!875714 m!815657))

(assert (=> b!875544 d!108521))

(declare-fun d!108523 () Bool)

(declare-fun e!487543 () Bool)

(assert (=> d!108523 e!487543))

(declare-fun res!595209 () Bool)

(assert (=> d!108523 (=> (not res!595209) (not e!487543))))

(declare-fun lt!396280 () ListLongMap!10339)

(assert (=> d!108523 (= res!595209 (contains!4241 lt!396280 (_1!5788 (tuple2!11557 k0!854 v!557))))))

(declare-fun lt!396277 () List!17442)

(assert (=> d!108523 (= lt!396280 (ListLongMap!10340 lt!396277))))

(declare-fun lt!396278 () Unit!29910)

(declare-fun lt!396279 () Unit!29910)

(assert (=> d!108523 (= lt!396278 lt!396279)))

(declare-datatypes ((Option!423 0))(
  ( (Some!422 (v!11170 V!28227)) (None!421) )
))
(declare-fun getValueByKey!417 (List!17442 (_ BitVec 64)) Option!423)

(assert (=> d!108523 (= (getValueByKey!417 lt!396277 (_1!5788 (tuple2!11557 k0!854 v!557))) (Some!422 (_2!5788 (tuple2!11557 k0!854 v!557))))))

(declare-fun lemmaContainsTupThenGetReturnValue!233 (List!17442 (_ BitVec 64) V!28227) Unit!29910)

(assert (=> d!108523 (= lt!396279 (lemmaContainsTupThenGetReturnValue!233 lt!396277 (_1!5788 (tuple2!11557 k0!854 v!557)) (_2!5788 (tuple2!11557 k0!854 v!557))))))

(declare-fun insertStrictlySorted!271 (List!17442 (_ BitVec 64) V!28227) List!17442)

(assert (=> d!108523 (= lt!396277 (insertStrictlySorted!271 (toList!5185 call!38649) (_1!5788 (tuple2!11557 k0!854 v!557)) (_2!5788 (tuple2!11557 k0!854 v!557))))))

(assert (=> d!108523 (= (+!2425 call!38649 (tuple2!11557 k0!854 v!557)) lt!396280)))

(declare-fun b!875720 () Bool)

(declare-fun res!595210 () Bool)

(assert (=> b!875720 (=> (not res!595210) (not e!487543))))

(assert (=> b!875720 (= res!595210 (= (getValueByKey!417 (toList!5185 lt!396280) (_1!5788 (tuple2!11557 k0!854 v!557))) (Some!422 (_2!5788 (tuple2!11557 k0!854 v!557)))))))

(declare-fun b!875721 () Bool)

(declare-fun contains!4243 (List!17442 tuple2!11556) Bool)

(assert (=> b!875721 (= e!487543 (contains!4243 (toList!5185 lt!396280) (tuple2!11557 k0!854 v!557)))))

(assert (= (and d!108523 res!595209) b!875720))

(assert (= (and b!875720 res!595210) b!875721))

(declare-fun m!815659 () Bool)

(assert (=> d!108523 m!815659))

(declare-fun m!815661 () Bool)

(assert (=> d!108523 m!815661))

(declare-fun m!815663 () Bool)

(assert (=> d!108523 m!815663))

(declare-fun m!815665 () Bool)

(assert (=> d!108523 m!815665))

(declare-fun m!815667 () Bool)

(assert (=> b!875720 m!815667))

(declare-fun m!815669 () Bool)

(assert (=> b!875721 m!815669))

(assert (=> b!875552 d!108523))

(declare-fun d!108525 () Bool)

(declare-fun e!487544 () Bool)

(assert (=> d!108525 e!487544))

(declare-fun res!595211 () Bool)

(assert (=> d!108525 (=> (not res!595211) (not e!487544))))

(declare-fun lt!396284 () ListLongMap!10339)

(assert (=> d!108525 (= res!595211 (contains!4241 lt!396284 (_1!5788 (tuple2!11557 (select (arr!24463 _keys!868) from!1053) (get!12875 (select (arr!24464 lt!396202) from!1053) (dynLambda!1209 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun lt!396281 () List!17442)

(assert (=> d!108525 (= lt!396284 (ListLongMap!10340 lt!396281))))

(declare-fun lt!396282 () Unit!29910)

(declare-fun lt!396283 () Unit!29910)

(assert (=> d!108525 (= lt!396282 lt!396283)))

(assert (=> d!108525 (= (getValueByKey!417 lt!396281 (_1!5788 (tuple2!11557 (select (arr!24463 _keys!868) from!1053) (get!12875 (select (arr!24464 lt!396202) from!1053) (dynLambda!1209 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!422 (_2!5788 (tuple2!11557 (select (arr!24463 _keys!868) from!1053) (get!12875 (select (arr!24464 lt!396202) from!1053) (dynLambda!1209 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!108525 (= lt!396283 (lemmaContainsTupThenGetReturnValue!233 lt!396281 (_1!5788 (tuple2!11557 (select (arr!24463 _keys!868) from!1053) (get!12875 (select (arr!24464 lt!396202) from!1053) (dynLambda!1209 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!5788 (tuple2!11557 (select (arr!24463 _keys!868) from!1053) (get!12875 (select (arr!24464 lt!396202) from!1053) (dynLambda!1209 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!108525 (= lt!396281 (insertStrictlySorted!271 (toList!5185 (getCurrentListMapNoExtraKeys!3148 _keys!868 lt!396202 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696)) (_1!5788 (tuple2!11557 (select (arr!24463 _keys!868) from!1053) (get!12875 (select (arr!24464 lt!396202) from!1053) (dynLambda!1209 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!5788 (tuple2!11557 (select (arr!24463 _keys!868) from!1053) (get!12875 (select (arr!24464 lt!396202) from!1053) (dynLambda!1209 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!108525 (= (+!2425 (getCurrentListMapNoExtraKeys!3148 _keys!868 lt!396202 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (tuple2!11557 (select (arr!24463 _keys!868) from!1053) (get!12875 (select (arr!24464 lt!396202) from!1053) (dynLambda!1209 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))) lt!396284)))

(declare-fun b!875722 () Bool)

(declare-fun res!595212 () Bool)

(assert (=> b!875722 (=> (not res!595212) (not e!487544))))

(assert (=> b!875722 (= res!595212 (= (getValueByKey!417 (toList!5185 lt!396284) (_1!5788 (tuple2!11557 (select (arr!24463 _keys!868) from!1053) (get!12875 (select (arr!24464 lt!396202) from!1053) (dynLambda!1209 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!422 (_2!5788 (tuple2!11557 (select (arr!24463 _keys!868) from!1053) (get!12875 (select (arr!24464 lt!396202) from!1053) (dynLambda!1209 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun b!875723 () Bool)

(assert (=> b!875723 (= e!487544 (contains!4243 (toList!5185 lt!396284) (tuple2!11557 (select (arr!24463 _keys!868) from!1053) (get!12875 (select (arr!24464 lt!396202) from!1053) (dynLambda!1209 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!108525 res!595211) b!875722))

(assert (= (and b!875722 res!595212) b!875723))

(declare-fun m!815671 () Bool)

(assert (=> d!108525 m!815671))

(declare-fun m!815673 () Bool)

(assert (=> d!108525 m!815673))

(declare-fun m!815675 () Bool)

(assert (=> d!108525 m!815675))

(declare-fun m!815677 () Bool)

(assert (=> d!108525 m!815677))

(declare-fun m!815679 () Bool)

(assert (=> b!875722 m!815679))

(declare-fun m!815681 () Bool)

(assert (=> b!875723 m!815681))

(assert (=> b!875555 d!108525))

(assert (=> b!875555 d!108503))

(declare-fun d!108527 () Bool)

(declare-fun c!92482 () Bool)

(assert (=> d!108527 (= c!92482 ((_ is ValueCellFull!8253) (select (arr!24464 lt!396202) from!1053)))))

(declare-fun e!487547 () V!28227)

(assert (=> d!108527 (= (get!12875 (select (arr!24464 lt!396202) from!1053) (dynLambda!1209 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)) e!487547)))

(declare-fun b!875728 () Bool)

(declare-fun get!12877 (ValueCell!8253 V!28227) V!28227)

(assert (=> b!875728 (= e!487547 (get!12877 (select (arr!24464 lt!396202) from!1053) (dynLambda!1209 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!875729 () Bool)

(declare-fun get!12878 (ValueCell!8253 V!28227) V!28227)

(assert (=> b!875729 (= e!487547 (get!12878 (select (arr!24464 lt!396202) from!1053) (dynLambda!1209 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!108527 c!92482) b!875728))

(assert (= (and d!108527 (not c!92482)) b!875729))

(assert (=> b!875728 m!815483))

(assert (=> b!875728 m!815487))

(declare-fun m!815683 () Bool)

(assert (=> b!875728 m!815683))

(assert (=> b!875729 m!815483))

(assert (=> b!875729 m!815487))

(declare-fun m!815685 () Bool)

(assert (=> b!875729 m!815685))

(assert (=> b!875555 d!108527))

(declare-fun mapNonEmpty!27692 () Bool)

(declare-fun mapRes!27692 () Bool)

(declare-fun tp!53108 () Bool)

(declare-fun e!487552 () Bool)

(assert (=> mapNonEmpty!27692 (= mapRes!27692 (and tp!53108 e!487552))))

(declare-fun mapKey!27692 () (_ BitVec 32))

(declare-fun mapRest!27692 () (Array (_ BitVec 32) ValueCell!8253))

(declare-fun mapValue!27692 () ValueCell!8253)

(assert (=> mapNonEmpty!27692 (= mapRest!27686 (store mapRest!27692 mapKey!27692 mapValue!27692))))

(declare-fun b!875737 () Bool)

(declare-fun e!487553 () Bool)

(assert (=> b!875737 (= e!487553 tp_is_empty!17385)))

(declare-fun b!875736 () Bool)

(assert (=> b!875736 (= e!487552 tp_is_empty!17385)))

(declare-fun condMapEmpty!27692 () Bool)

(declare-fun mapDefault!27692 () ValueCell!8253)

(assert (=> mapNonEmpty!27686 (= condMapEmpty!27692 (= mapRest!27686 ((as const (Array (_ BitVec 32) ValueCell!8253)) mapDefault!27692)))))

(assert (=> mapNonEmpty!27686 (= tp!53099 (and e!487553 mapRes!27692))))

(declare-fun mapIsEmpty!27692 () Bool)

(assert (=> mapIsEmpty!27692 mapRes!27692))

(assert (= (and mapNonEmpty!27686 condMapEmpty!27692) mapIsEmpty!27692))

(assert (= (and mapNonEmpty!27686 (not condMapEmpty!27692)) mapNonEmpty!27692))

(assert (= (and mapNonEmpty!27692 ((_ is ValueCellFull!8253) mapValue!27692)) b!875736))

(assert (= (and mapNonEmpty!27686 ((_ is ValueCellFull!8253) mapDefault!27692)) b!875737))

(declare-fun m!815687 () Bool)

(assert (=> mapNonEmpty!27692 m!815687))

(declare-fun b_lambda!12227 () Bool)

(assert (= b_lambda!12225 (or (and start!74406 b_free!15141) b_lambda!12227)))

(declare-fun b_lambda!12229 () Bool)

(assert (= b_lambda!12217 (or (and start!74406 b_free!15141) b_lambda!12229)))

(declare-fun b_lambda!12231 () Bool)

(assert (= b_lambda!12219 (or (and start!74406 b_free!15141) b_lambda!12231)))

(declare-fun b_lambda!12233 () Bool)

(assert (= b_lambda!12215 (or (and start!74406 b_free!15141) b_lambda!12233)))

(declare-fun b_lambda!12235 () Bool)

(assert (= b_lambda!12223 (or (and start!74406 b_free!15141) b_lambda!12235)))

(declare-fun b_lambda!12237 () Bool)

(assert (= b_lambda!12213 (or (and start!74406 b_free!15141) b_lambda!12237)))

(declare-fun b_lambda!12239 () Bool)

(assert (= b_lambda!12221 (or (and start!74406 b_free!15141) b_lambda!12239)))

(declare-fun b_lambda!12241 () Bool)

(assert (= b_lambda!12211 (or (and start!74406 b_free!15141) b_lambda!12241)))

(check-sat (not b!875721) (not b!875690) (not bm!38670) (not d!108519) (not b!875693) (not b!875670) (not b!875700) (not b!875709) (not b!875639) (not b!875694) (not bm!38655) (not b_lambda!12241) (not b_lambda!12237) (not b!875642) (not d!108523) (not bm!38669) b_and!24959 (not d!108511) (not b_next!15141) (not d!108503) (not b!875711) (not b!875634) (not bm!38668) (not b!875685) (not b!875723) (not b!875637) (not bm!38666) (not b!875706) (not bm!38667) (not bm!38658) (not b!875699) (not mapNonEmpty!27692) (not b!875728) (not d!108513) (not b!875633) (not b_lambda!12239) (not b!875643) (not b_lambda!12235) (not b!875704) (not b!875669) (not b!875653) (not b!875667) (not b_lambda!12231) (not b!875705) (not d!108525) (not b!875729) (not b!875697) (not b_lambda!12209) (not b!875703) (not b!875722) (not b!875692) (not b_lambda!12233) (not b!875688) (not b!875632) (not b!875691) (not bm!38661) (not b!875680) (not b!875715) (not b!875702) (not b!875640) (not b!875678) (not b!875687) (not b!875654) (not d!108521) (not b!875712) (not b!875714) (not b_lambda!12227) tp_is_empty!17385 (not b!875681) (not b!875682) (not b!875720) (not b_lambda!12229))
(check-sat b_and!24959 (not b_next!15141))
