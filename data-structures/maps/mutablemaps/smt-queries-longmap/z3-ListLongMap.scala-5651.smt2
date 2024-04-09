; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73720 () Bool)

(assert start!73720)

(declare-fun b_free!14607 () Bool)

(declare-fun b_next!14607 () Bool)

(assert (=> start!73720 (= b_free!14607 (not b_next!14607))))

(declare-fun tp!51326 () Bool)

(declare-fun b_and!24211 () Bool)

(assert (=> start!73720 (= tp!51326 b_and!24211)))

(declare-fun b!863275 () Bool)

(declare-datatypes ((Unit!29473 0))(
  ( (Unit!29474) )
))
(declare-fun e!480970 () Unit!29473)

(declare-fun Unit!29475 () Unit!29473)

(assert (=> b!863275 (= e!480970 Unit!29475)))

(declare-fun b!863276 () Bool)

(declare-fun e!480972 () Bool)

(declare-fun e!480974 () Bool)

(assert (=> b!863276 (= e!480972 e!480974)))

(declare-fun res!586735 () Bool)

(assert (=> b!863276 (=> (not res!586735) (not e!480974))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!863276 (= res!586735 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-datatypes ((V!27371 0))(
  ( (V!27372 (val!8419 Int)) )
))
(declare-datatypes ((ValueCell!7932 0))(
  ( (ValueCellFull!7932 (v!10840 V!27371)) (EmptyCell!7932) )
))
(declare-datatypes ((array!49630 0))(
  ( (array!49631 (arr!23842 (Array (_ BitVec 32) ValueCell!7932)) (size!24283 (_ BitVec 32))) )
))
(declare-fun lt!390174 () array!49630)

(declare-datatypes ((tuple2!11138 0))(
  ( (tuple2!11139 (_1!5579 (_ BitVec 64)) (_2!5579 V!27371)) )
))
(declare-datatypes ((List!17007 0))(
  ( (Nil!17004) (Cons!17003 (h!18134 tuple2!11138) (t!23888 List!17007)) )
))
(declare-datatypes ((ListLongMap!9921 0))(
  ( (ListLongMap!9922 (toList!4976 List!17007)) )
))
(declare-fun lt!390177 () ListLongMap!9921)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!49632 0))(
  ( (array!49633 (arr!23843 (Array (_ BitVec 32) (_ BitVec 64))) (size!24284 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49632)

(declare-fun minValue!654 () V!27371)

(declare-fun zeroValue!654 () V!27371)

(declare-fun getCurrentListMapNoExtraKeys!2951 (array!49632 array!49630 (_ BitVec 32) (_ BitVec 32) V!27371 V!27371 (_ BitVec 32) Int) ListLongMap!9921)

(assert (=> b!863276 (= lt!390177 (getCurrentListMapNoExtraKeys!2951 _keys!868 lt!390174 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!27371)

(declare-fun _values!688 () array!49630)

(assert (=> b!863276 (= lt!390174 (array!49631 (store (arr!23842 _values!688) i!612 (ValueCellFull!7932 v!557)) (size!24283 _values!688)))))

(declare-fun lt!390173 () ListLongMap!9921)

(assert (=> b!863276 (= lt!390173 (getCurrentListMapNoExtraKeys!2951 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!863277 () Bool)

(declare-fun res!586727 () Bool)

(assert (=> b!863277 (=> (not res!586727) (not e!480972))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!863277 (= res!586727 (validMask!0 mask!1196))))

(declare-fun res!586737 () Bool)

(assert (=> start!73720 (=> (not res!586737) (not e!480972))))

(assert (=> start!73720 (= res!586737 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24284 _keys!868))))))

(assert (=> start!73720 e!480972))

(declare-fun tp_is_empty!16743 () Bool)

(assert (=> start!73720 tp_is_empty!16743))

(assert (=> start!73720 true))

(assert (=> start!73720 tp!51326))

(declare-fun array_inv!18836 (array!49632) Bool)

(assert (=> start!73720 (array_inv!18836 _keys!868)))

(declare-fun e!480973 () Bool)

(declare-fun array_inv!18837 (array!49630) Bool)

(assert (=> start!73720 (and (array_inv!18837 _values!688) e!480973)))

(declare-fun b!863278 () Bool)

(declare-fun e!480969 () Bool)

(declare-fun e!480975 () Bool)

(assert (=> b!863278 (= e!480969 e!480975)))

(declare-fun res!586732 () Bool)

(assert (=> b!863278 (=> res!586732 e!480975)))

(declare-fun k0!854 () (_ BitVec 64))

(assert (=> b!863278 (= res!586732 (= k0!854 (select (arr!23843 _keys!868) from!1053)))))

(assert (=> b!863278 (not (= (select (arr!23843 _keys!868) from!1053) k0!854))))

(declare-fun lt!390164 () Unit!29473)

(assert (=> b!863278 (= lt!390164 e!480970)))

(declare-fun c!92049 () Bool)

(assert (=> b!863278 (= c!92049 (= (select (arr!23843 _keys!868) from!1053) k0!854))))

(declare-fun lt!390170 () ListLongMap!9921)

(assert (=> b!863278 (= lt!390177 lt!390170)))

(declare-fun lt!390169 () ListLongMap!9921)

(declare-fun lt!390166 () tuple2!11138)

(declare-fun +!2273 (ListLongMap!9921 tuple2!11138) ListLongMap!9921)

(assert (=> b!863278 (= lt!390170 (+!2273 lt!390169 lt!390166))))

(declare-fun lt!390176 () V!27371)

(assert (=> b!863278 (= lt!390166 (tuple2!11139 (select (arr!23843 _keys!868) from!1053) lt!390176))))

(declare-fun get!12601 (ValueCell!7932 V!27371) V!27371)

(declare-fun dynLambda!1149 (Int (_ BitVec 64)) V!27371)

(assert (=> b!863278 (= lt!390176 (get!12601 (select (arr!23842 _values!688) from!1053) (dynLambda!1149 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!863279 () Bool)

(declare-fun e!480968 () Bool)

(assert (=> b!863279 (= e!480968 tp_is_empty!16743)))

(declare-fun b!863280 () Bool)

(declare-fun e!480967 () Bool)

(assert (=> b!863280 (= e!480967 tp_is_empty!16743)))

(declare-fun b!863281 () Bool)

(assert (=> b!863281 (= e!480974 (not e!480969))))

(declare-fun res!586731 () Bool)

(assert (=> b!863281 (=> res!586731 e!480969)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!863281 (= res!586731 (not (validKeyInArray!0 (select (arr!23843 _keys!868) from!1053))))))

(declare-fun lt!390171 () ListLongMap!9921)

(assert (=> b!863281 (= lt!390171 lt!390169)))

(declare-fun lt!390165 () ListLongMap!9921)

(declare-fun lt!390162 () tuple2!11138)

(assert (=> b!863281 (= lt!390169 (+!2273 lt!390165 lt!390162))))

(assert (=> b!863281 (= lt!390171 (getCurrentListMapNoExtraKeys!2951 _keys!868 lt!390174 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> b!863281 (= lt!390162 (tuple2!11139 k0!854 v!557))))

(assert (=> b!863281 (= lt!390165 (getCurrentListMapNoExtraKeys!2951 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun lt!390175 () Unit!29473)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!520 (array!49632 array!49630 (_ BitVec 32) (_ BitVec 32) V!27371 V!27371 (_ BitVec 32) (_ BitVec 64) V!27371 (_ BitVec 32) Int) Unit!29473)

(assert (=> b!863281 (= lt!390175 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!520 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!863282 () Bool)

(declare-fun Unit!29476 () Unit!29473)

(assert (=> b!863282 (= e!480970 Unit!29476)))

(declare-fun lt!390168 () Unit!29473)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!49632 (_ BitVec 32) (_ BitVec 32)) Unit!29473)

(assert (=> b!863282 (= lt!390168 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(declare-datatypes ((List!17008 0))(
  ( (Nil!17005) (Cons!17004 (h!18135 (_ BitVec 64)) (t!23889 List!17008)) )
))
(declare-fun arrayNoDuplicates!0 (array!49632 (_ BitVec 32) List!17008) Bool)

(assert (=> b!863282 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!17005)))

(declare-fun lt!390167 () Unit!29473)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!49632 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!29473)

(assert (=> b!863282 (= lt!390167 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!868 k0!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)))))

(declare-fun arrayContainsKey!0 (array!49632 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!863282 (arrayContainsKey!0 _keys!868 k0!854 (bvadd #b00000000000000000000000000000001 from!1053))))

(declare-fun lt!390172 () Unit!29473)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!49632 (_ BitVec 64) (_ BitVec 32) List!17008) Unit!29473)

(assert (=> b!863282 (= lt!390172 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!868 k0!854 from!1053 Nil!17005))))

(assert (=> b!863282 false))

(declare-fun b!863283 () Bool)

(declare-fun res!586733 () Bool)

(assert (=> b!863283 (=> (not res!586733) (not e!480972))))

(assert (=> b!863283 (= res!586733 (validKeyInArray!0 k0!854))))

(declare-fun b!863284 () Bool)

(assert (=> b!863284 (= e!480975 true)))

(assert (=> b!863284 (= lt!390170 (+!2273 (+!2273 lt!390165 lt!390166) lt!390162))))

(declare-fun lt!390163 () Unit!29473)

(declare-fun addCommutativeForDiffKeys!486 (ListLongMap!9921 (_ BitVec 64) V!27371 (_ BitVec 64) V!27371) Unit!29473)

(assert (=> b!863284 (= lt!390163 (addCommutativeForDiffKeys!486 lt!390165 k0!854 v!557 (select (arr!23843 _keys!868) from!1053) lt!390176))))

(declare-fun mapNonEmpty!26714 () Bool)

(declare-fun mapRes!26714 () Bool)

(declare-fun tp!51325 () Bool)

(assert (=> mapNonEmpty!26714 (= mapRes!26714 (and tp!51325 e!480968))))

(declare-fun mapRest!26714 () (Array (_ BitVec 32) ValueCell!7932))

(declare-fun mapKey!26714 () (_ BitVec 32))

(declare-fun mapValue!26714 () ValueCell!7932)

(assert (=> mapNonEmpty!26714 (= (arr!23842 _values!688) (store mapRest!26714 mapKey!26714 mapValue!26714))))

(declare-fun b!863285 () Bool)

(assert (=> b!863285 (= e!480973 (and e!480967 mapRes!26714))))

(declare-fun condMapEmpty!26714 () Bool)

(declare-fun mapDefault!26714 () ValueCell!7932)

(assert (=> b!863285 (= condMapEmpty!26714 (= (arr!23842 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7932)) mapDefault!26714)))))

(declare-fun b!863286 () Bool)

(declare-fun res!586729 () Bool)

(assert (=> b!863286 (=> (not res!586729) (not e!480972))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49632 (_ BitVec 32)) Bool)

(assert (=> b!863286 (= res!586729 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!863287 () Bool)

(declare-fun res!586730 () Bool)

(assert (=> b!863287 (=> (not res!586730) (not e!480972))))

(assert (=> b!863287 (= res!586730 (and (= (size!24283 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24284 _keys!868) (size!24283 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!863288 () Bool)

(declare-fun res!586728 () Bool)

(assert (=> b!863288 (=> (not res!586728) (not e!480972))))

(assert (=> b!863288 (= res!586728 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24284 _keys!868))))))

(declare-fun b!863289 () Bool)

(declare-fun res!586734 () Bool)

(assert (=> b!863289 (=> (not res!586734) (not e!480972))))

(assert (=> b!863289 (= res!586734 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17005))))

(declare-fun mapIsEmpty!26714 () Bool)

(assert (=> mapIsEmpty!26714 mapRes!26714))

(declare-fun b!863290 () Bool)

(declare-fun res!586736 () Bool)

(assert (=> b!863290 (=> (not res!586736) (not e!480972))))

(assert (=> b!863290 (= res!586736 (and (= (select (arr!23843 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(assert (= (and start!73720 res!586737) b!863277))

(assert (= (and b!863277 res!586727) b!863287))

(assert (= (and b!863287 res!586730) b!863286))

(assert (= (and b!863286 res!586729) b!863289))

(assert (= (and b!863289 res!586734) b!863288))

(assert (= (and b!863288 res!586728) b!863283))

(assert (= (and b!863283 res!586733) b!863290))

(assert (= (and b!863290 res!586736) b!863276))

(assert (= (and b!863276 res!586735) b!863281))

(assert (= (and b!863281 (not res!586731)) b!863278))

(assert (= (and b!863278 c!92049) b!863282))

(assert (= (and b!863278 (not c!92049)) b!863275))

(assert (= (and b!863278 (not res!586732)) b!863284))

(assert (= (and b!863285 condMapEmpty!26714) mapIsEmpty!26714))

(assert (= (and b!863285 (not condMapEmpty!26714)) mapNonEmpty!26714))

(get-info :version)

(assert (= (and mapNonEmpty!26714 ((_ is ValueCellFull!7932) mapValue!26714)) b!863279))

(assert (= (and b!863285 ((_ is ValueCellFull!7932) mapDefault!26714)) b!863280))

(assert (= start!73720 b!863285))

(declare-fun b_lambda!11989 () Bool)

(assert (=> (not b_lambda!11989) (not b!863278)))

(declare-fun t!23887 () Bool)

(declare-fun tb!4737 () Bool)

(assert (=> (and start!73720 (= defaultEntry!696 defaultEntry!696) t!23887) tb!4737))

(declare-fun result!9077 () Bool)

(assert (=> tb!4737 (= result!9077 tp_is_empty!16743)))

(assert (=> b!863278 t!23887))

(declare-fun b_and!24213 () Bool)

(assert (= b_and!24211 (and (=> t!23887 result!9077) b_and!24213)))

(declare-fun m!804557 () Bool)

(assert (=> mapNonEmpty!26714 m!804557))

(declare-fun m!804559 () Bool)

(assert (=> b!863284 m!804559))

(assert (=> b!863284 m!804559))

(declare-fun m!804561 () Bool)

(assert (=> b!863284 m!804561))

(declare-fun m!804563 () Bool)

(assert (=> b!863284 m!804563))

(assert (=> b!863284 m!804563))

(declare-fun m!804565 () Bool)

(assert (=> b!863284 m!804565))

(declare-fun m!804567 () Bool)

(assert (=> b!863286 m!804567))

(declare-fun m!804569 () Bool)

(assert (=> b!863282 m!804569))

(declare-fun m!804571 () Bool)

(assert (=> b!863282 m!804571))

(declare-fun m!804573 () Bool)

(assert (=> b!863282 m!804573))

(declare-fun m!804575 () Bool)

(assert (=> b!863282 m!804575))

(declare-fun m!804577 () Bool)

(assert (=> b!863282 m!804577))

(declare-fun m!804579 () Bool)

(assert (=> b!863290 m!804579))

(declare-fun m!804581 () Bool)

(assert (=> b!863276 m!804581))

(declare-fun m!804583 () Bool)

(assert (=> b!863276 m!804583))

(declare-fun m!804585 () Bool)

(assert (=> b!863276 m!804585))

(declare-fun m!804587 () Bool)

(assert (=> b!863289 m!804587))

(declare-fun m!804589 () Bool)

(assert (=> b!863277 m!804589))

(declare-fun m!804591 () Bool)

(assert (=> start!73720 m!804591))

(declare-fun m!804593 () Bool)

(assert (=> start!73720 m!804593))

(declare-fun m!804595 () Bool)

(assert (=> b!863283 m!804595))

(declare-fun m!804597 () Bool)

(assert (=> b!863278 m!804597))

(declare-fun m!804599 () Bool)

(assert (=> b!863278 m!804599))

(declare-fun m!804601 () Bool)

(assert (=> b!863278 m!804601))

(declare-fun m!804603 () Bool)

(assert (=> b!863278 m!804603))

(assert (=> b!863278 m!804599))

(assert (=> b!863278 m!804563))

(assert (=> b!863278 m!804601))

(declare-fun m!804605 () Bool)

(assert (=> b!863281 m!804605))

(declare-fun m!804607 () Bool)

(assert (=> b!863281 m!804607))

(assert (=> b!863281 m!804563))

(declare-fun m!804609 () Bool)

(assert (=> b!863281 m!804609))

(assert (=> b!863281 m!804563))

(declare-fun m!804611 () Bool)

(assert (=> b!863281 m!804611))

(declare-fun m!804613 () Bool)

(assert (=> b!863281 m!804613))

(check-sat (not b_next!14607) tp_is_empty!16743 (not b!863289) (not b!863282) (not b!863277) (not mapNonEmpty!26714) (not b!863281) (not b!863284) (not b!863278) (not b!863283) (not b!863286) b_and!24213 (not b!863276) (not b_lambda!11989) (not start!73720))
(check-sat b_and!24213 (not b_next!14607))
