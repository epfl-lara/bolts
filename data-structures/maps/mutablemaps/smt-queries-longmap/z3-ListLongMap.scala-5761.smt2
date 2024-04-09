; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!74444 () Bool)

(assert start!74444)

(declare-fun b_free!15159 () Bool)

(declare-fun b_next!15159 () Bool)

(assert (=> start!74444 (= b_free!15159 (not b_next!15159))))

(declare-fun tp!53156 () Bool)

(declare-fun b_and!24989 () Bool)

(assert (=> start!74444 (= tp!53156 b_and!24989)))

(declare-fun b!876097 () Bool)

(declare-fun e!487740 () Bool)

(declare-fun tp_is_empty!17403 () Bool)

(assert (=> b!876097 (= e!487740 tp_is_empty!17403)))

(declare-fun mapNonEmpty!27716 () Bool)

(declare-fun mapRes!27716 () Bool)

(declare-fun tp!53155 () Bool)

(assert (=> mapNonEmpty!27716 (= mapRes!27716 (and tp!53155 e!487740))))

(declare-datatypes ((V!28251 0))(
  ( (V!28252 (val!8749 Int)) )
))
(declare-datatypes ((ValueCell!8262 0))(
  ( (ValueCellFull!8262 (v!11178 V!28251)) (EmptyCell!8262) )
))
(declare-fun mapValue!27716 () ValueCell!8262)

(declare-fun mapRest!27716 () (Array (_ BitVec 32) ValueCell!8262))

(declare-datatypes ((array!50914 0))(
  ( (array!50915 (arr!24480 (Array (_ BitVec 32) ValueCell!8262)) (size!24921 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50914)

(declare-fun mapKey!27716 () (_ BitVec 32))

(assert (=> mapNonEmpty!27716 (= (arr!24480 _values!688) (store mapRest!27716 mapKey!27716 mapValue!27716))))

(declare-fun b!876098 () Bool)

(declare-fun res!595448 () Bool)

(declare-fun e!487738 () Bool)

(assert (=> b!876098 (=> (not res!595448) (not e!487738))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!876098 (= res!595448 (validMask!0 mask!1196))))

(declare-fun v!557 () V!28251)

(declare-fun b!876099 () Bool)

(declare-fun e!487745 () Bool)

(declare-datatypes ((tuple2!11572 0))(
  ( (tuple2!11573 (_1!5796 (_ BitVec 64)) (_2!5796 V!28251)) )
))
(declare-datatypes ((List!17455 0))(
  ( (Nil!17452) (Cons!17451 (h!18582 tuple2!11572) (t!24526 List!17455)) )
))
(declare-datatypes ((ListLongMap!10355 0))(
  ( (ListLongMap!10356 (toList!5193 List!17455)) )
))
(declare-fun call!38721 () ListLongMap!10355)

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun call!38720 () ListLongMap!10355)

(declare-fun +!2430 (ListLongMap!10355 tuple2!11572) ListLongMap!10355)

(assert (=> b!876099 (= e!487745 (= call!38720 (+!2430 call!38721 (tuple2!11573 k0!854 v!557))))))

(declare-fun res!595446 () Bool)

(assert (=> start!74444 (=> (not res!595446) (not e!487738))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!50916 0))(
  ( (array!50917 (arr!24481 (Array (_ BitVec 32) (_ BitVec 64))) (size!24922 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50916)

(assert (=> start!74444 (= res!595446 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24922 _keys!868))))))

(assert (=> start!74444 e!487738))

(assert (=> start!74444 tp_is_empty!17403))

(assert (=> start!74444 true))

(assert (=> start!74444 tp!53156))

(declare-fun array_inv!19280 (array!50916) Bool)

(assert (=> start!74444 (array_inv!19280 _keys!868)))

(declare-fun e!487743 () Bool)

(declare-fun array_inv!19281 (array!50914) Bool)

(assert (=> start!74444 (and (array_inv!19281 _values!688) e!487743)))

(declare-fun b!876100 () Bool)

(declare-fun e!487739 () Bool)

(assert (=> b!876100 (= e!487739 (bvslt from!1053 (size!24921 _values!688)))))

(declare-fun lt!396378 () array!50914)

(declare-fun defaultEntry!696 () Int)

(declare-fun lt!396380 () ListLongMap!10355)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun minValue!654 () V!28251)

(declare-fun zeroValue!654 () V!28251)

(declare-fun getCurrentListMapNoExtraKeys!3155 (array!50916 array!50914 (_ BitVec 32) (_ BitVec 32) V!28251 V!28251 (_ BitVec 32) Int) ListLongMap!10355)

(declare-fun get!12887 (ValueCell!8262 V!28251) V!28251)

(declare-fun dynLambda!1213 (Int (_ BitVec 64)) V!28251)

(assert (=> b!876100 (= lt!396380 (+!2430 (getCurrentListMapNoExtraKeys!3155 _keys!868 lt!396378 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (tuple2!11573 (select (arr!24481 _keys!868) from!1053) (get!12887 (select (arr!24480 lt!396378) from!1053) (dynLambda!1213 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun bm!38717 () Bool)

(assert (=> bm!38717 (= call!38720 (getCurrentListMapNoExtraKeys!3155 _keys!868 lt!396378 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!876101 () Bool)

(declare-fun res!595445 () Bool)

(assert (=> b!876101 (=> (not res!595445) (not e!487738))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!876101 (= res!595445 (and (= (select (arr!24481 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!876102 () Bool)

(declare-fun e!487744 () Bool)

(assert (=> b!876102 (= e!487744 tp_is_empty!17403)))

(declare-fun b!876103 () Bool)

(declare-fun res!595451 () Bool)

(assert (=> b!876103 (=> (not res!595451) (not e!487738))))

(assert (=> b!876103 (= res!595451 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24922 _keys!868))))))

(declare-fun b!876104 () Bool)

(declare-fun res!595443 () Bool)

(assert (=> b!876104 (=> (not res!595443) (not e!487738))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50916 (_ BitVec 32)) Bool)

(assert (=> b!876104 (= res!595443 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!876105 () Bool)

(declare-fun e!487742 () Bool)

(assert (=> b!876105 (= e!487738 e!487742)))

(declare-fun res!595452 () Bool)

(assert (=> b!876105 (=> (not res!595452) (not e!487742))))

(assert (=> b!876105 (= res!595452 (= from!1053 i!612))))

(assert (=> b!876105 (= lt!396380 (getCurrentListMapNoExtraKeys!3155 _keys!868 lt!396378 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!876105 (= lt!396378 (array!50915 (store (arr!24480 _values!688) i!612 (ValueCellFull!8262 v!557)) (size!24921 _values!688)))))

(declare-fun lt!396379 () ListLongMap!10355)

(assert (=> b!876105 (= lt!396379 (getCurrentListMapNoExtraKeys!3155 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun bm!38718 () Bool)

(assert (=> bm!38718 (= call!38721 (getCurrentListMapNoExtraKeys!3155 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!876106 () Bool)

(declare-fun res!595444 () Bool)

(assert (=> b!876106 (=> (not res!595444) (not e!487738))))

(assert (=> b!876106 (= res!595444 (and (= (size!24921 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24922 _keys!868) (size!24921 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!876107 () Bool)

(declare-fun res!595449 () Bool)

(assert (=> b!876107 (=> (not res!595449) (not e!487738))))

(declare-datatypes ((List!17456 0))(
  ( (Nil!17453) (Cons!17452 (h!18583 (_ BitVec 64)) (t!24527 List!17456)) )
))
(declare-fun arrayNoDuplicates!0 (array!50916 (_ BitVec 32) List!17456) Bool)

(assert (=> b!876107 (= res!595449 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17453))))

(declare-fun b!876108 () Bool)

(declare-fun res!595450 () Bool)

(assert (=> b!876108 (=> (not res!595450) (not e!487738))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!876108 (= res!595450 (validKeyInArray!0 k0!854))))

(declare-fun b!876109 () Bool)

(assert (=> b!876109 (= e!487742 (not e!487739))))

(declare-fun res!595447 () Bool)

(assert (=> b!876109 (=> res!595447 e!487739)))

(assert (=> b!876109 (= res!595447 (not (validKeyInArray!0 (select (arr!24481 _keys!868) from!1053))))))

(assert (=> b!876109 e!487745))

(declare-fun c!92506 () Bool)

(assert (=> b!876109 (= c!92506 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-datatypes ((Unit!29922 0))(
  ( (Unit!29923) )
))
(declare-fun lt!396377 () Unit!29922)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!665 (array!50916 array!50914 (_ BitVec 32) (_ BitVec 32) V!28251 V!28251 (_ BitVec 32) (_ BitVec 64) V!28251 (_ BitVec 32) Int) Unit!29922)

(assert (=> b!876109 (= lt!396377 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!665 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!876110 () Bool)

(assert (=> b!876110 (= e!487745 (= call!38720 call!38721))))

(declare-fun mapIsEmpty!27716 () Bool)

(assert (=> mapIsEmpty!27716 mapRes!27716))

(declare-fun b!876111 () Bool)

(assert (=> b!876111 (= e!487743 (and e!487744 mapRes!27716))))

(declare-fun condMapEmpty!27716 () Bool)

(declare-fun mapDefault!27716 () ValueCell!8262)

(assert (=> b!876111 (= condMapEmpty!27716 (= (arr!24480 _values!688) ((as const (Array (_ BitVec 32) ValueCell!8262)) mapDefault!27716)))))

(assert (= (and start!74444 res!595446) b!876098))

(assert (= (and b!876098 res!595448) b!876106))

(assert (= (and b!876106 res!595444) b!876104))

(assert (= (and b!876104 res!595443) b!876107))

(assert (= (and b!876107 res!595449) b!876103))

(assert (= (and b!876103 res!595451) b!876108))

(assert (= (and b!876108 res!595450) b!876101))

(assert (= (and b!876101 res!595445) b!876105))

(assert (= (and b!876105 res!595452) b!876109))

(assert (= (and b!876109 c!92506) b!876099))

(assert (= (and b!876109 (not c!92506)) b!876110))

(assert (= (or b!876099 b!876110) bm!38717))

(assert (= (or b!876099 b!876110) bm!38718))

(assert (= (and b!876109 (not res!595447)) b!876100))

(assert (= (and b!876111 condMapEmpty!27716) mapIsEmpty!27716))

(assert (= (and b!876111 (not condMapEmpty!27716)) mapNonEmpty!27716))

(get-info :version)

(assert (= (and mapNonEmpty!27716 ((_ is ValueCellFull!8262) mapValue!27716)) b!876097))

(assert (= (and b!876111 ((_ is ValueCellFull!8262) mapDefault!27716)) b!876102))

(assert (= start!74444 b!876111))

(declare-fun b_lambda!12257 () Bool)

(assert (=> (not b_lambda!12257) (not b!876100)))

(declare-fun t!24525 () Bool)

(declare-fun tb!4927 () Bool)

(assert (=> (and start!74444 (= defaultEntry!696 defaultEntry!696) t!24525) tb!4927))

(declare-fun result!9465 () Bool)

(assert (=> tb!4927 (= result!9465 tp_is_empty!17403)))

(assert (=> b!876100 t!24525))

(declare-fun b_and!24991 () Bool)

(assert (= b_and!24989 (and (=> t!24525 result!9465) b_and!24991)))

(declare-fun m!815983 () Bool)

(assert (=> b!876098 m!815983))

(declare-fun m!815985 () Bool)

(assert (=> b!876100 m!815985))

(declare-fun m!815987 () Bool)

(assert (=> b!876100 m!815987))

(assert (=> b!876100 m!815985))

(declare-fun m!815989 () Bool)

(assert (=> b!876100 m!815989))

(assert (=> b!876100 m!815987))

(declare-fun m!815991 () Bool)

(assert (=> b!876100 m!815991))

(declare-fun m!815993 () Bool)

(assert (=> b!876100 m!815993))

(declare-fun m!815995 () Bool)

(assert (=> b!876100 m!815995))

(assert (=> b!876100 m!815991))

(declare-fun m!815997 () Bool)

(assert (=> mapNonEmpty!27716 m!815997))

(assert (=> bm!38717 m!815985))

(declare-fun m!815999 () Bool)

(assert (=> bm!38718 m!815999))

(declare-fun m!816001 () Bool)

(assert (=> b!876099 m!816001))

(declare-fun m!816003 () Bool)

(assert (=> b!876105 m!816003))

(declare-fun m!816005 () Bool)

(assert (=> b!876105 m!816005))

(declare-fun m!816007 () Bool)

(assert (=> b!876105 m!816007))

(declare-fun m!816009 () Bool)

(assert (=> b!876104 m!816009))

(declare-fun m!816011 () Bool)

(assert (=> b!876107 m!816011))

(declare-fun m!816013 () Bool)

(assert (=> start!74444 m!816013))

(declare-fun m!816015 () Bool)

(assert (=> start!74444 m!816015))

(declare-fun m!816017 () Bool)

(assert (=> b!876108 m!816017))

(assert (=> b!876109 m!815995))

(assert (=> b!876109 m!815995))

(declare-fun m!816019 () Bool)

(assert (=> b!876109 m!816019))

(declare-fun m!816021 () Bool)

(assert (=> b!876109 m!816021))

(declare-fun m!816023 () Bool)

(assert (=> b!876101 m!816023))

(check-sat b_and!24991 (not b!876109) (not b!876105) (not start!74444) (not b!876099) tp_is_empty!17403 (not b_next!15159) (not b!876104) (not b!876098) (not b!876108) (not b!876100) (not bm!38718) (not b_lambda!12257) (not mapNonEmpty!27716) (not b!876107) (not bm!38717))
(check-sat b_and!24991 (not b_next!15159))
