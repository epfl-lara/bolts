; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!74938 () Bool)

(assert start!74938)

(declare-fun b_free!15429 () Bool)

(declare-fun b_next!15429 () Bool)

(assert (=> start!74938 (= b_free!15429 (not b_next!15429))))

(declare-fun tp!53990 () Bool)

(declare-fun b_and!25575 () Bool)

(assert (=> start!74938 (= tp!53990 b_and!25575)))

(declare-fun b!883123 () Bool)

(declare-fun res!600100 () Bool)

(declare-fun e!491533 () Bool)

(assert (=> b!883123 (=> (not res!600100) (not e!491533))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((array!51456 0))(
  ( (array!51457 (arr!24743 (Array (_ BitVec 32) (_ BitVec 64))) (size!25184 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!51456)

(assert (=> b!883123 (= res!600100 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!25184 _keys!868))))))

(declare-fun mapIsEmpty!28146 () Bool)

(declare-fun mapRes!28146 () Bool)

(assert (=> mapIsEmpty!28146 mapRes!28146))

(declare-fun b!883124 () Bool)

(declare-fun e!491529 () Bool)

(assert (=> b!883124 (= e!491533 e!491529)))

(declare-fun res!600101 () Bool)

(assert (=> b!883124 (=> (not res!600101) (not e!491529))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!883124 (= res!600101 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((V!28611 0))(
  ( (V!28612 (val!8884 Int)) )
))
(declare-fun minValue!654 () V!28611)

(declare-fun zeroValue!654 () V!28611)

(declare-datatypes ((tuple2!11800 0))(
  ( (tuple2!11801 (_1!5910 (_ BitVec 64)) (_2!5910 V!28611)) )
))
(declare-datatypes ((List!17666 0))(
  ( (Nil!17663) (Cons!17662 (h!18793 tuple2!11800) (t!24905 List!17666)) )
))
(declare-datatypes ((ListLongMap!10583 0))(
  ( (ListLongMap!10584 (toList!5307 List!17666)) )
))
(declare-fun lt!399682 () ListLongMap!10583)

(declare-fun defaultEntry!696 () Int)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((ValueCell!8397 0))(
  ( (ValueCellFull!8397 (v!11349 V!28611)) (EmptyCell!8397) )
))
(declare-datatypes ((array!51458 0))(
  ( (array!51459 (arr!24744 (Array (_ BitVec 32) ValueCell!8397)) (size!25185 (_ BitVec 32))) )
))
(declare-fun lt!399675 () array!51458)

(declare-fun getCurrentListMapNoExtraKeys!3264 (array!51456 array!51458 (_ BitVec 32) (_ BitVec 32) V!28611 V!28611 (_ BitVec 32) Int) ListLongMap!10583)

(assert (=> b!883124 (= lt!399682 (getCurrentListMapNoExtraKeys!3264 _keys!868 lt!399675 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!28611)

(declare-fun _values!688 () array!51458)

(assert (=> b!883124 (= lt!399675 (array!51459 (store (arr!24744 _values!688) i!612 (ValueCellFull!8397 v!557)) (size!25185 _values!688)))))

(declare-fun lt!399677 () ListLongMap!10583)

(assert (=> b!883124 (= lt!399677 (getCurrentListMapNoExtraKeys!3264 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!883125 () Bool)

(declare-fun e!491532 () Bool)

(assert (=> b!883125 (= e!491532 (bvslt from!1053 (size!25184 _keys!868)))))

(declare-datatypes ((Unit!30098 0))(
  ( (Unit!30099) )
))
(declare-fun lt!399674 () Unit!30098)

(declare-fun e!491527 () Unit!30098)

(assert (=> b!883125 (= lt!399674 e!491527)))

(declare-fun c!92967 () Bool)

(declare-fun k0!854 () (_ BitVec 64))

(assert (=> b!883125 (= c!92967 (= (select (arr!24743 _keys!868) from!1053) k0!854))))

(declare-fun lt!399681 () ListLongMap!10583)

(declare-fun +!2512 (ListLongMap!10583 tuple2!11800) ListLongMap!10583)

(declare-fun get!13049 (ValueCell!8397 V!28611) V!28611)

(declare-fun dynLambda!1268 (Int (_ BitVec 64)) V!28611)

(assert (=> b!883125 (= lt!399682 (+!2512 lt!399681 (tuple2!11801 (select (arr!24743 _keys!868) from!1053) (get!13049 (select (arr!24744 _values!688) from!1053) (dynLambda!1268 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun res!600102 () Bool)

(assert (=> start!74938 (=> (not res!600102) (not e!491533))))

(assert (=> start!74938 (= res!600102 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!25184 _keys!868))))))

(assert (=> start!74938 e!491533))

(declare-fun tp_is_empty!17673 () Bool)

(assert (=> start!74938 tp_is_empty!17673))

(assert (=> start!74938 true))

(assert (=> start!74938 tp!53990))

(declare-fun array_inv!19466 (array!51456) Bool)

(assert (=> start!74938 (array_inv!19466 _keys!868)))

(declare-fun e!491530 () Bool)

(declare-fun array_inv!19467 (array!51458) Bool)

(assert (=> start!74938 (and (array_inv!19467 _values!688) e!491530)))

(declare-fun b!883126 () Bool)

(declare-fun Unit!30100 () Unit!30098)

(assert (=> b!883126 (= e!491527 Unit!30100)))

(declare-fun b!883127 () Bool)

(declare-fun res!600097 () Bool)

(assert (=> b!883127 (=> (not res!600097) (not e!491533))))

(assert (=> b!883127 (= res!600097 (and (= (size!25185 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!25184 _keys!868) (size!25185 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!883128 () Bool)

(assert (=> b!883128 (= e!491529 (not e!491532))))

(declare-fun res!600106 () Bool)

(assert (=> b!883128 (=> res!600106 e!491532)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!883128 (= res!600106 (not (validKeyInArray!0 (select (arr!24743 _keys!868) from!1053))))))

(declare-fun lt!399680 () ListLongMap!10583)

(assert (=> b!883128 (= lt!399680 lt!399681)))

(declare-fun lt!399676 () ListLongMap!10583)

(assert (=> b!883128 (= lt!399681 (+!2512 lt!399676 (tuple2!11801 k0!854 v!557)))))

(assert (=> b!883128 (= lt!399680 (getCurrentListMapNoExtraKeys!3264 _keys!868 lt!399675 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> b!883128 (= lt!399676 (getCurrentListMapNoExtraKeys!3264 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun lt!399679 () Unit!30098)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!737 (array!51456 array!51458 (_ BitVec 32) (_ BitVec 32) V!28611 V!28611 (_ BitVec 32) (_ BitVec 64) V!28611 (_ BitVec 32) Int) Unit!30098)

(assert (=> b!883128 (= lt!399679 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!737 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!883129 () Bool)

(declare-fun res!600099 () Bool)

(assert (=> b!883129 (=> (not res!600099) (not e!491533))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!51456 (_ BitVec 32)) Bool)

(assert (=> b!883129 (= res!600099 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!883130 () Bool)

(declare-fun e!491534 () Bool)

(assert (=> b!883130 (= e!491534 tp_is_empty!17673)))

(declare-fun b!883131 () Bool)

(declare-fun e!491528 () Bool)

(assert (=> b!883131 (= e!491528 tp_is_empty!17673)))

(declare-fun b!883132 () Bool)

(declare-fun res!600103 () Bool)

(assert (=> b!883132 (=> (not res!600103) (not e!491533))))

(declare-datatypes ((List!17667 0))(
  ( (Nil!17664) (Cons!17663 (h!18794 (_ BitVec 64)) (t!24906 List!17667)) )
))
(declare-fun arrayNoDuplicates!0 (array!51456 (_ BitVec 32) List!17667) Bool)

(assert (=> b!883132 (= res!600103 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17664))))

(declare-fun b!883133 () Bool)

(declare-fun res!600105 () Bool)

(assert (=> b!883133 (=> (not res!600105) (not e!491533))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!883133 (= res!600105 (validMask!0 mask!1196))))

(declare-fun b!883134 () Bool)

(declare-fun res!600098 () Bool)

(assert (=> b!883134 (=> (not res!600098) (not e!491533))))

(assert (=> b!883134 (= res!600098 (validKeyInArray!0 k0!854))))

(declare-fun b!883135 () Bool)

(declare-fun Unit!30101 () Unit!30098)

(assert (=> b!883135 (= e!491527 Unit!30101)))

(declare-fun lt!399678 () Unit!30098)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!51456 (_ BitVec 32) (_ BitVec 32)) Unit!30098)

(assert (=> b!883135 (= lt!399678 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(assert (=> b!883135 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!17664)))

(declare-fun lt!399672 () Unit!30098)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!51456 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!30098)

(assert (=> b!883135 (= lt!399672 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!868 k0!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)))))

(declare-fun arrayContainsKey!0 (array!51456 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!883135 (arrayContainsKey!0 _keys!868 k0!854 (bvadd #b00000000000000000000000000000001 from!1053))))

(declare-fun lt!399673 () Unit!30098)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!51456 (_ BitVec 64) (_ BitVec 32) List!17667) Unit!30098)

(assert (=> b!883135 (= lt!399673 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!868 k0!854 from!1053 Nil!17664))))

(assert (=> b!883135 false))

(declare-fun b!883136 () Bool)

(assert (=> b!883136 (= e!491530 (and e!491534 mapRes!28146))))

(declare-fun condMapEmpty!28146 () Bool)

(declare-fun mapDefault!28146 () ValueCell!8397)

(assert (=> b!883136 (= condMapEmpty!28146 (= (arr!24744 _values!688) ((as const (Array (_ BitVec 32) ValueCell!8397)) mapDefault!28146)))))

(declare-fun b!883137 () Bool)

(declare-fun res!600104 () Bool)

(assert (=> b!883137 (=> (not res!600104) (not e!491533))))

(assert (=> b!883137 (= res!600104 (and (= (select (arr!24743 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun mapNonEmpty!28146 () Bool)

(declare-fun tp!53991 () Bool)

(assert (=> mapNonEmpty!28146 (= mapRes!28146 (and tp!53991 e!491528))))

(declare-fun mapKey!28146 () (_ BitVec 32))

(declare-fun mapRest!28146 () (Array (_ BitVec 32) ValueCell!8397))

(declare-fun mapValue!28146 () ValueCell!8397)

(assert (=> mapNonEmpty!28146 (= (arr!24744 _values!688) (store mapRest!28146 mapKey!28146 mapValue!28146))))

(assert (= (and start!74938 res!600102) b!883133))

(assert (= (and b!883133 res!600105) b!883127))

(assert (= (and b!883127 res!600097) b!883129))

(assert (= (and b!883129 res!600099) b!883132))

(assert (= (and b!883132 res!600103) b!883123))

(assert (= (and b!883123 res!600100) b!883134))

(assert (= (and b!883134 res!600098) b!883137))

(assert (= (and b!883137 res!600104) b!883124))

(assert (= (and b!883124 res!600101) b!883128))

(assert (= (and b!883128 (not res!600106)) b!883125))

(assert (= (and b!883125 c!92967) b!883135))

(assert (= (and b!883125 (not c!92967)) b!883126))

(assert (= (and b!883136 condMapEmpty!28146) mapIsEmpty!28146))

(assert (= (and b!883136 (not condMapEmpty!28146)) mapNonEmpty!28146))

(get-info :version)

(assert (= (and mapNonEmpty!28146 ((_ is ValueCellFull!8397) mapValue!28146)) b!883131))

(assert (= (and b!883136 ((_ is ValueCellFull!8397) mapDefault!28146)) b!883130))

(assert (= start!74938 b!883136))

(declare-fun b_lambda!12737 () Bool)

(assert (=> (not b_lambda!12737) (not b!883125)))

(declare-fun t!24904 () Bool)

(declare-fun tb!5095 () Bool)

(assert (=> (and start!74938 (= defaultEntry!696 defaultEntry!696) t!24904) tb!5095))

(declare-fun result!9817 () Bool)

(assert (=> tb!5095 (= result!9817 tp_is_empty!17673)))

(assert (=> b!883125 t!24904))

(declare-fun b_and!25577 () Bool)

(assert (= b_and!25575 (and (=> t!24904 result!9817) b_and!25577)))

(declare-fun m!823273 () Bool)

(assert (=> b!883125 m!823273))

(declare-fun m!823275 () Bool)

(assert (=> b!883125 m!823275))

(declare-fun m!823277 () Bool)

(assert (=> b!883125 m!823277))

(declare-fun m!823279 () Bool)

(assert (=> b!883125 m!823279))

(assert (=> b!883125 m!823275))

(declare-fun m!823281 () Bool)

(assert (=> b!883125 m!823281))

(assert (=> b!883125 m!823277))

(declare-fun m!823283 () Bool)

(assert (=> b!883134 m!823283))

(declare-fun m!823285 () Bool)

(assert (=> b!883128 m!823285))

(assert (=> b!883128 m!823281))

(declare-fun m!823287 () Bool)

(assert (=> b!883128 m!823287))

(assert (=> b!883128 m!823281))

(declare-fun m!823289 () Bool)

(assert (=> b!883128 m!823289))

(declare-fun m!823291 () Bool)

(assert (=> b!883128 m!823291))

(declare-fun m!823293 () Bool)

(assert (=> b!883128 m!823293))

(declare-fun m!823295 () Bool)

(assert (=> b!883137 m!823295))

(declare-fun m!823297 () Bool)

(assert (=> mapNonEmpty!28146 m!823297))

(declare-fun m!823299 () Bool)

(assert (=> b!883124 m!823299))

(declare-fun m!823301 () Bool)

(assert (=> b!883124 m!823301))

(declare-fun m!823303 () Bool)

(assert (=> b!883124 m!823303))

(declare-fun m!823305 () Bool)

(assert (=> b!883135 m!823305))

(declare-fun m!823307 () Bool)

(assert (=> b!883135 m!823307))

(declare-fun m!823309 () Bool)

(assert (=> b!883135 m!823309))

(declare-fun m!823311 () Bool)

(assert (=> b!883135 m!823311))

(declare-fun m!823313 () Bool)

(assert (=> b!883135 m!823313))

(declare-fun m!823315 () Bool)

(assert (=> start!74938 m!823315))

(declare-fun m!823317 () Bool)

(assert (=> start!74938 m!823317))

(declare-fun m!823319 () Bool)

(assert (=> b!883132 m!823319))

(declare-fun m!823321 () Bool)

(assert (=> b!883133 m!823321))

(declare-fun m!823323 () Bool)

(assert (=> b!883129 m!823323))

(check-sat (not b_lambda!12737) (not b!883128) (not b!883125) (not b!883129) (not start!74938) (not b!883135) (not b!883132) (not b_next!15429) (not b!883124) b_and!25577 (not mapNonEmpty!28146) (not b!883133) (not b!883134) tp_is_empty!17673)
(check-sat b_and!25577 (not b_next!15429))
