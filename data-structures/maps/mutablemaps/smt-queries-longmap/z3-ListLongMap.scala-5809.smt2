; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!74956 () Bool)

(assert start!74956)

(declare-fun b_free!15447 () Bool)

(declare-fun b_next!15447 () Bool)

(assert (=> start!74956 (= b_free!15447 (not b_next!15447))))

(declare-fun tp!54045 () Bool)

(declare-fun b_and!25611 () Bool)

(assert (=> start!74956 (= tp!54045 b_and!25611)))

(declare-fun b!883546 () Bool)

(declare-fun res!600368 () Bool)

(declare-fun e!491748 () Bool)

(assert (=> b!883546 (=> (not res!600368) (not e!491748))))

(declare-datatypes ((array!51492 0))(
  ( (array!51493 (arr!24761 (Array (_ BitVec 32) (_ BitVec 64))) (size!25202 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!51492)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!51492 (_ BitVec 32)) Bool)

(assert (=> b!883546 (= res!600368 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun res!600375 () Bool)

(assert (=> start!74956 (=> (not res!600375) (not e!491748))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!74956 (= res!600375 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!25202 _keys!868))))))

(assert (=> start!74956 e!491748))

(declare-fun tp_is_empty!17691 () Bool)

(assert (=> start!74956 tp_is_empty!17691))

(assert (=> start!74956 true))

(assert (=> start!74956 tp!54045))

(declare-fun array_inv!19476 (array!51492) Bool)

(assert (=> start!74956 (array_inv!19476 _keys!868)))

(declare-datatypes ((V!28635 0))(
  ( (V!28636 (val!8893 Int)) )
))
(declare-datatypes ((ValueCell!8406 0))(
  ( (ValueCellFull!8406 (v!11358 V!28635)) (EmptyCell!8406) )
))
(declare-datatypes ((array!51494 0))(
  ( (array!51495 (arr!24762 (Array (_ BitVec 32) ValueCell!8406)) (size!25203 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!51494)

(declare-fun e!491744 () Bool)

(declare-fun array_inv!19477 (array!51494) Bool)

(assert (=> start!74956 (and (array_inv!19477 _values!688) e!491744)))

(declare-fun b!883547 () Bool)

(declare-fun e!491743 () Bool)

(assert (=> b!883547 (= e!491743 tp_is_empty!17691)))

(declare-fun b!883548 () Bool)

(declare-fun res!600376 () Bool)

(assert (=> b!883548 (=> (not res!600376) (not e!491748))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!883548 (= res!600376 (validMask!0 mask!1196))))

(declare-fun b!883549 () Bool)

(declare-fun e!491750 () Bool)

(declare-fun e!491745 () Bool)

(assert (=> b!883549 (= e!491750 (not e!491745))))

(declare-fun res!600372 () Bool)

(assert (=> b!883549 (=> res!600372 e!491745)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!883549 (= res!600372 (not (validKeyInArray!0 (select (arr!24761 _keys!868) from!1053))))))

(declare-datatypes ((tuple2!11818 0))(
  ( (tuple2!11819 (_1!5919 (_ BitVec 64)) (_2!5919 V!28635)) )
))
(declare-datatypes ((List!17681 0))(
  ( (Nil!17678) (Cons!17677 (h!18808 tuple2!11818) (t!24938 List!17681)) )
))
(declare-datatypes ((ListLongMap!10601 0))(
  ( (ListLongMap!10602 (toList!5316 List!17681)) )
))
(declare-fun lt!399979 () ListLongMap!10601)

(declare-fun lt!399973 () ListLongMap!10601)

(assert (=> b!883549 (= lt!399979 lt!399973)))

(declare-fun v!557 () V!28635)

(declare-fun lt!399975 () ListLongMap!10601)

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun +!2520 (ListLongMap!10601 tuple2!11818) ListLongMap!10601)

(assert (=> b!883549 (= lt!399973 (+!2520 lt!399975 (tuple2!11819 k0!854 v!557)))))

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun lt!399977 () array!51494)

(declare-fun minValue!654 () V!28635)

(declare-fun zeroValue!654 () V!28635)

(declare-fun getCurrentListMapNoExtraKeys!3271 (array!51492 array!51494 (_ BitVec 32) (_ BitVec 32) V!28635 V!28635 (_ BitVec 32) Int) ListLongMap!10601)

(assert (=> b!883549 (= lt!399979 (getCurrentListMapNoExtraKeys!3271 _keys!868 lt!399977 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> b!883549 (= lt!399975 (getCurrentListMapNoExtraKeys!3271 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((Unit!30129 0))(
  ( (Unit!30130) )
))
(declare-fun lt!399976 () Unit!30129)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!742 (array!51492 array!51494 (_ BitVec 32) (_ BitVec 32) V!28635 V!28635 (_ BitVec 32) (_ BitVec 64) V!28635 (_ BitVec 32) Int) Unit!30129)

(assert (=> b!883549 (= lt!399976 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!742 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!883550 () Bool)

(declare-fun e!491749 () Bool)

(declare-fun mapRes!28173 () Bool)

(assert (=> b!883550 (= e!491744 (and e!491749 mapRes!28173))))

(declare-fun condMapEmpty!28173 () Bool)

(declare-fun mapDefault!28173 () ValueCell!8406)

(assert (=> b!883550 (= condMapEmpty!28173 (= (arr!24762 _values!688) ((as const (Array (_ BitVec 32) ValueCell!8406)) mapDefault!28173)))))

(declare-fun b!883551 () Bool)

(assert (=> b!883551 (= e!491745 (bvslt from!1053 (size!25203 _values!688)))))

(assert (=> b!883551 (not (= (select (arr!24761 _keys!868) from!1053) k0!854))))

(declare-fun lt!399974 () Unit!30129)

(declare-fun e!491746 () Unit!30129)

(assert (=> b!883551 (= lt!399974 e!491746)))

(declare-fun c!92994 () Bool)

(assert (=> b!883551 (= c!92994 (= (select (arr!24761 _keys!868) from!1053) k0!854))))

(declare-fun lt!399970 () ListLongMap!10601)

(declare-fun get!13061 (ValueCell!8406 V!28635) V!28635)

(declare-fun dynLambda!1274 (Int (_ BitVec 64)) V!28635)

(assert (=> b!883551 (= lt!399970 (+!2520 lt!399973 (tuple2!11819 (select (arr!24761 _keys!868) from!1053) (get!13061 (select (arr!24762 _values!688) from!1053) (dynLambda!1274 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!883552 () Bool)

(declare-fun res!600373 () Bool)

(assert (=> b!883552 (=> (not res!600373) (not e!491748))))

(assert (=> b!883552 (= res!600373 (and (= (select (arr!24761 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun mapIsEmpty!28173 () Bool)

(assert (=> mapIsEmpty!28173 mapRes!28173))

(declare-fun b!883553 () Bool)

(assert (=> b!883553 (= e!491749 tp_is_empty!17691)))

(declare-fun b!883554 () Bool)

(declare-fun Unit!30131 () Unit!30129)

(assert (=> b!883554 (= e!491746 Unit!30131)))

(declare-fun lt!399969 () Unit!30129)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!51492 (_ BitVec 32) (_ BitVec 32)) Unit!30129)

(assert (=> b!883554 (= lt!399969 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(declare-datatypes ((List!17682 0))(
  ( (Nil!17679) (Cons!17678 (h!18809 (_ BitVec 64)) (t!24939 List!17682)) )
))
(declare-fun arrayNoDuplicates!0 (array!51492 (_ BitVec 32) List!17682) Bool)

(assert (=> b!883554 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!17679)))

(declare-fun lt!399972 () Unit!30129)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!51492 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!30129)

(assert (=> b!883554 (= lt!399972 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!868 k0!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)))))

(declare-fun arrayContainsKey!0 (array!51492 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!883554 (arrayContainsKey!0 _keys!868 k0!854 (bvadd #b00000000000000000000000000000001 from!1053))))

(declare-fun lt!399978 () Unit!30129)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!51492 (_ BitVec 64) (_ BitVec 32) List!17682) Unit!30129)

(assert (=> b!883554 (= lt!399978 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!868 k0!854 from!1053 Nil!17679))))

(assert (=> b!883554 false))

(declare-fun b!883555 () Bool)

(declare-fun res!600370 () Bool)

(assert (=> b!883555 (=> (not res!600370) (not e!491748))))

(assert (=> b!883555 (= res!600370 (validKeyInArray!0 k0!854))))

(declare-fun b!883556 () Bool)

(declare-fun res!600374 () Bool)

(assert (=> b!883556 (=> (not res!600374) (not e!491748))))

(assert (=> b!883556 (= res!600374 (and (= (size!25203 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!25202 _keys!868) (size!25203 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!883557 () Bool)

(declare-fun Unit!30132 () Unit!30129)

(assert (=> b!883557 (= e!491746 Unit!30132)))

(declare-fun mapNonEmpty!28173 () Bool)

(declare-fun tp!54044 () Bool)

(assert (=> mapNonEmpty!28173 (= mapRes!28173 (and tp!54044 e!491743))))

(declare-fun mapValue!28173 () ValueCell!8406)

(declare-fun mapRest!28173 () (Array (_ BitVec 32) ValueCell!8406))

(declare-fun mapKey!28173 () (_ BitVec 32))

(assert (=> mapNonEmpty!28173 (= (arr!24762 _values!688) (store mapRest!28173 mapKey!28173 mapValue!28173))))

(declare-fun b!883558 () Bool)

(assert (=> b!883558 (= e!491748 e!491750)))

(declare-fun res!600371 () Bool)

(assert (=> b!883558 (=> (not res!600371) (not e!491750))))

(assert (=> b!883558 (= res!600371 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(assert (=> b!883558 (= lt!399970 (getCurrentListMapNoExtraKeys!3271 _keys!868 lt!399977 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!883558 (= lt!399977 (array!51495 (store (arr!24762 _values!688) i!612 (ValueCellFull!8406 v!557)) (size!25203 _values!688)))))

(declare-fun lt!399971 () ListLongMap!10601)

(assert (=> b!883558 (= lt!399971 (getCurrentListMapNoExtraKeys!3271 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!883559 () Bool)

(declare-fun res!600367 () Bool)

(assert (=> b!883559 (=> (not res!600367) (not e!491748))))

(assert (=> b!883559 (= res!600367 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17679))))

(declare-fun b!883560 () Bool)

(declare-fun res!600369 () Bool)

(assert (=> b!883560 (=> (not res!600369) (not e!491748))))

(assert (=> b!883560 (= res!600369 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!25202 _keys!868))))))

(assert (= (and start!74956 res!600375) b!883548))

(assert (= (and b!883548 res!600376) b!883556))

(assert (= (and b!883556 res!600374) b!883546))

(assert (= (and b!883546 res!600368) b!883559))

(assert (= (and b!883559 res!600367) b!883560))

(assert (= (and b!883560 res!600369) b!883555))

(assert (= (and b!883555 res!600370) b!883552))

(assert (= (and b!883552 res!600373) b!883558))

(assert (= (and b!883558 res!600371) b!883549))

(assert (= (and b!883549 (not res!600372)) b!883551))

(assert (= (and b!883551 c!92994) b!883554))

(assert (= (and b!883551 (not c!92994)) b!883557))

(assert (= (and b!883550 condMapEmpty!28173) mapIsEmpty!28173))

(assert (= (and b!883550 (not condMapEmpty!28173)) mapNonEmpty!28173))

(get-info :version)

(assert (= (and mapNonEmpty!28173 ((_ is ValueCellFull!8406) mapValue!28173)) b!883547))

(assert (= (and b!883550 ((_ is ValueCellFull!8406) mapDefault!28173)) b!883553))

(assert (= start!74956 b!883550))

(declare-fun b_lambda!12755 () Bool)

(assert (=> (not b_lambda!12755) (not b!883551)))

(declare-fun t!24937 () Bool)

(declare-fun tb!5113 () Bool)

(assert (=> (and start!74956 (= defaultEntry!696 defaultEntry!696) t!24937) tb!5113))

(declare-fun result!9853 () Bool)

(assert (=> tb!5113 (= result!9853 tp_is_empty!17691)))

(assert (=> b!883551 t!24937))

(declare-fun b_and!25613 () Bool)

(assert (= b_and!25611 (and (=> t!24937 result!9853) b_and!25613)))

(declare-fun m!823741 () Bool)

(assert (=> mapNonEmpty!28173 m!823741))

(declare-fun m!823743 () Bool)

(assert (=> b!883559 m!823743))

(declare-fun m!823745 () Bool)

(assert (=> b!883552 m!823745))

(declare-fun m!823747 () Bool)

(assert (=> b!883546 m!823747))

(declare-fun m!823749 () Bool)

(assert (=> b!883551 m!823749))

(declare-fun m!823751 () Bool)

(assert (=> b!883551 m!823751))

(declare-fun m!823753 () Bool)

(assert (=> b!883551 m!823753))

(declare-fun m!823755 () Bool)

(assert (=> b!883551 m!823755))

(assert (=> b!883551 m!823751))

(declare-fun m!823757 () Bool)

(assert (=> b!883551 m!823757))

(assert (=> b!883551 m!823753))

(declare-fun m!823759 () Bool)

(assert (=> b!883558 m!823759))

(declare-fun m!823761 () Bool)

(assert (=> b!883558 m!823761))

(declare-fun m!823763 () Bool)

(assert (=> b!883558 m!823763))

(declare-fun m!823765 () Bool)

(assert (=> b!883555 m!823765))

(declare-fun m!823767 () Bool)

(assert (=> b!883548 m!823767))

(declare-fun m!823769 () Bool)

(assert (=> b!883554 m!823769))

(declare-fun m!823771 () Bool)

(assert (=> b!883554 m!823771))

(declare-fun m!823773 () Bool)

(assert (=> b!883554 m!823773))

(declare-fun m!823775 () Bool)

(assert (=> b!883554 m!823775))

(declare-fun m!823777 () Bool)

(assert (=> b!883554 m!823777))

(declare-fun m!823779 () Bool)

(assert (=> b!883549 m!823779))

(declare-fun m!823781 () Bool)

(assert (=> b!883549 m!823781))

(assert (=> b!883549 m!823757))

(declare-fun m!823783 () Bool)

(assert (=> b!883549 m!823783))

(assert (=> b!883549 m!823757))

(declare-fun m!823785 () Bool)

(assert (=> b!883549 m!823785))

(declare-fun m!823787 () Bool)

(assert (=> b!883549 m!823787))

(declare-fun m!823789 () Bool)

(assert (=> start!74956 m!823789))

(declare-fun m!823791 () Bool)

(assert (=> start!74956 m!823791))

(check-sat (not b!883554) (not b!883548) (not b!883549) tp_is_empty!17691 (not b!883551) (not b!883559) (not mapNonEmpty!28173) (not b!883558) (not b!883555) b_and!25613 (not start!74956) (not b_lambda!12755) (not b_next!15447) (not b!883546))
(check-sat b_and!25613 (not b_next!15447))
