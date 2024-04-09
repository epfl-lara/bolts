; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73126 () Bool)

(assert start!73126)

(declare-fun b_free!14013 () Bool)

(declare-fun b_next!14013 () Bool)

(assert (=> start!73126 (= b_free!14013 (not b_next!14013))))

(declare-fun tp!49543 () Bool)

(declare-fun b_and!23203 () Bool)

(assert (=> start!73126 (= tp!49543 b_and!23203)))

(declare-fun b!850310 () Bool)

(declare-fun e!474372 () Bool)

(declare-fun e!474366 () Bool)

(declare-fun mapRes!25823 () Bool)

(assert (=> b!850310 (= e!474372 (and e!474366 mapRes!25823))))

(declare-fun condMapEmpty!25823 () Bool)

(declare-datatypes ((V!26579 0))(
  ( (V!26580 (val!8122 Int)) )
))
(declare-datatypes ((ValueCell!7635 0))(
  ( (ValueCellFull!7635 (v!10543 V!26579)) (EmptyCell!7635) )
))
(declare-datatypes ((array!48488 0))(
  ( (array!48489 (arr!23271 (Array (_ BitVec 32) ValueCell!7635)) (size!23712 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48488)

(declare-fun mapDefault!25823 () ValueCell!7635)

(assert (=> b!850310 (= condMapEmpty!25823 (= (arr!23271 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7635)) mapDefault!25823)))))

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((tuple2!10658 0))(
  ( (tuple2!10659 (_1!5339 (_ BitVec 64)) (_2!5339 V!26579)) )
))
(declare-datatypes ((List!16554 0))(
  ( (Nil!16551) (Cons!16550 (h!17681 tuple2!10658) (t!23021 List!16554)) )
))
(declare-datatypes ((ListLongMap!9441 0))(
  ( (ListLongMap!9442 (toList!4736 List!16554)) )
))
(declare-fun call!37895 () ListLongMap!9441)

(declare-datatypes ((array!48490 0))(
  ( (array!48491 (arr!23272 (Array (_ BitVec 32) (_ BitVec 64))) (size!23713 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48490)

(declare-fun lt!382786 () array!48488)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun bm!37891 () Bool)

(declare-fun minValue!654 () V!26579)

(declare-fun zeroValue!654 () V!26579)

(declare-fun getCurrentListMapNoExtraKeys!2722 (array!48490 array!48488 (_ BitVec 32) (_ BitVec 32) V!26579 V!26579 (_ BitVec 32) Int) ListLongMap!9441)

(assert (=> bm!37891 (= call!37895 (getCurrentListMapNoExtraKeys!2722 _keys!868 lt!382786 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!850312 () Bool)

(declare-fun tp_is_empty!16149 () Bool)

(assert (=> b!850312 (= e!474366 tp_is_empty!16149)))

(declare-fun bm!37892 () Bool)

(declare-fun call!37894 () ListLongMap!9441)

(assert (=> bm!37892 (= call!37894 (getCurrentListMapNoExtraKeys!2722 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!850313 () Bool)

(declare-fun e!474370 () Bool)

(assert (=> b!850313 (= e!474370 true)))

(declare-fun lt!382785 () ListLongMap!9441)

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun lt!382782 () V!26579)

(declare-fun lt!382779 () tuple2!10658)

(declare-fun +!2080 (ListLongMap!9441 tuple2!10658) ListLongMap!9441)

(assert (=> b!850313 (= (+!2080 lt!382785 lt!382779) (+!2080 (+!2080 lt!382785 (tuple2!10659 k0!854 lt!382782)) lt!382779))))

(declare-fun lt!382784 () V!26579)

(assert (=> b!850313 (= lt!382779 (tuple2!10659 k0!854 lt!382784))))

(declare-datatypes ((Unit!29008 0))(
  ( (Unit!29009) )
))
(declare-fun lt!382783 () Unit!29008)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!267 (ListLongMap!9441 (_ BitVec 64) V!26579 V!26579) Unit!29008)

(assert (=> b!850313 (= lt!382783 (addSameAsAddTwiceSameKeyDiffValues!267 lt!382785 k0!854 lt!382782 lt!382784))))

(declare-fun lt!382780 () V!26579)

(declare-fun get!12269 (ValueCell!7635 V!26579) V!26579)

(assert (=> b!850313 (= lt!382782 (get!12269 (select (arr!23271 _values!688) from!1053) lt!382780))))

(declare-fun lt!382788 () ListLongMap!9441)

(assert (=> b!850313 (= lt!382788 (+!2080 lt!382785 (tuple2!10659 (select (arr!23272 _keys!868) from!1053) lt!382784)))))

(declare-fun v!557 () V!26579)

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!850313 (= lt!382784 (get!12269 (select (store (arr!23271 _values!688) i!612 (ValueCellFull!7635 v!557)) from!1053) lt!382780))))

(declare-fun dynLambda!1015 (Int (_ BitVec 64)) V!26579)

(assert (=> b!850313 (= lt!382780 (dynLambda!1015 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!850313 (= lt!382785 (getCurrentListMapNoExtraKeys!2722 _keys!868 lt!382786 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!850314 () Bool)

(declare-fun res!577734 () Bool)

(declare-fun e!474367 () Bool)

(assert (=> b!850314 (=> (not res!577734) (not e!474367))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!850314 (= res!577734 (validKeyInArray!0 k0!854))))

(declare-fun b!850315 () Bool)

(declare-fun res!577738 () Bool)

(assert (=> b!850315 (=> (not res!577738) (not e!474367))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48490 (_ BitVec 32)) Bool)

(assert (=> b!850315 (= res!577738 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun mapNonEmpty!25823 () Bool)

(declare-fun tp!49544 () Bool)

(declare-fun e!474365 () Bool)

(assert (=> mapNonEmpty!25823 (= mapRes!25823 (and tp!49544 e!474365))))

(declare-fun mapValue!25823 () ValueCell!7635)

(declare-fun mapRest!25823 () (Array (_ BitVec 32) ValueCell!7635))

(declare-fun mapKey!25823 () (_ BitVec 32))

(assert (=> mapNonEmpty!25823 (= (arr!23271 _values!688) (store mapRest!25823 mapKey!25823 mapValue!25823))))

(declare-fun b!850316 () Bool)

(declare-fun res!577737 () Bool)

(assert (=> b!850316 (=> (not res!577737) (not e!474367))))

(assert (=> b!850316 (= res!577737 (and (= (select (arr!23272 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!850317 () Bool)

(declare-fun res!577735 () Bool)

(assert (=> b!850317 (=> (not res!577735) (not e!474367))))

(assert (=> b!850317 (= res!577735 (and (= (size!23712 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23713 _keys!868) (size!23712 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!25823 () Bool)

(assert (=> mapIsEmpty!25823 mapRes!25823))

(declare-fun b!850318 () Bool)

(declare-fun e!474371 () Bool)

(assert (=> b!850318 (= e!474371 (not e!474370))))

(declare-fun res!577740 () Bool)

(assert (=> b!850318 (=> res!577740 e!474370)))

(assert (=> b!850318 (= res!577740 (not (validKeyInArray!0 (select (arr!23272 _keys!868) from!1053))))))

(declare-fun e!474368 () Bool)

(assert (=> b!850318 e!474368))

(declare-fun c!91608 () Bool)

(assert (=> b!850318 (= c!91608 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-fun lt!382781 () Unit!29008)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!351 (array!48490 array!48488 (_ BitVec 32) (_ BitVec 32) V!26579 V!26579 (_ BitVec 32) (_ BitVec 64) V!26579 (_ BitVec 32) Int) Unit!29008)

(assert (=> b!850318 (= lt!382781 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!351 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!850319 () Bool)

(declare-fun res!577733 () Bool)

(assert (=> b!850319 (=> (not res!577733) (not e!474367))))

(assert (=> b!850319 (= res!577733 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23713 _keys!868))))))

(declare-fun b!850320 () Bool)

(assert (=> b!850320 (= e!474367 e!474371)))

(declare-fun res!577731 () Bool)

(assert (=> b!850320 (=> (not res!577731) (not e!474371))))

(assert (=> b!850320 (= res!577731 (= from!1053 i!612))))

(assert (=> b!850320 (= lt!382788 (getCurrentListMapNoExtraKeys!2722 _keys!868 lt!382786 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!850320 (= lt!382786 (array!48489 (store (arr!23271 _values!688) i!612 (ValueCellFull!7635 v!557)) (size!23712 _values!688)))))

(declare-fun lt!382787 () ListLongMap!9441)

(assert (=> b!850320 (= lt!382787 (getCurrentListMapNoExtraKeys!2722 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!850311 () Bool)

(assert (=> b!850311 (= e!474368 (= call!37895 (+!2080 call!37894 (tuple2!10659 k0!854 v!557))))))

(declare-fun res!577739 () Bool)

(assert (=> start!73126 (=> (not res!577739) (not e!474367))))

(assert (=> start!73126 (= res!577739 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23713 _keys!868))))))

(assert (=> start!73126 e!474367))

(assert (=> start!73126 tp_is_empty!16149))

(assert (=> start!73126 true))

(assert (=> start!73126 tp!49543))

(declare-fun array_inv!18454 (array!48490) Bool)

(assert (=> start!73126 (array_inv!18454 _keys!868)))

(declare-fun array_inv!18455 (array!48488) Bool)

(assert (=> start!73126 (and (array_inv!18455 _values!688) e!474372)))

(declare-fun b!850321 () Bool)

(assert (=> b!850321 (= e!474365 tp_is_empty!16149)))

(declare-fun b!850322 () Bool)

(declare-fun res!577736 () Bool)

(assert (=> b!850322 (=> (not res!577736) (not e!474367))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!850322 (= res!577736 (validMask!0 mask!1196))))

(declare-fun b!850323 () Bool)

(assert (=> b!850323 (= e!474368 (= call!37895 call!37894))))

(declare-fun b!850324 () Bool)

(declare-fun res!577732 () Bool)

(assert (=> b!850324 (=> (not res!577732) (not e!474367))))

(declare-datatypes ((List!16555 0))(
  ( (Nil!16552) (Cons!16551 (h!17682 (_ BitVec 64)) (t!23022 List!16555)) )
))
(declare-fun arrayNoDuplicates!0 (array!48490 (_ BitVec 32) List!16555) Bool)

(assert (=> b!850324 (= res!577732 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16552))))

(assert (= (and start!73126 res!577739) b!850322))

(assert (= (and b!850322 res!577736) b!850317))

(assert (= (and b!850317 res!577735) b!850315))

(assert (= (and b!850315 res!577738) b!850324))

(assert (= (and b!850324 res!577732) b!850319))

(assert (= (and b!850319 res!577733) b!850314))

(assert (= (and b!850314 res!577734) b!850316))

(assert (= (and b!850316 res!577737) b!850320))

(assert (= (and b!850320 res!577731) b!850318))

(assert (= (and b!850318 c!91608) b!850311))

(assert (= (and b!850318 (not c!91608)) b!850323))

(assert (= (or b!850311 b!850323) bm!37891))

(assert (= (or b!850311 b!850323) bm!37892))

(assert (= (and b!850318 (not res!577740)) b!850313))

(assert (= (and b!850310 condMapEmpty!25823) mapIsEmpty!25823))

(assert (= (and b!850310 (not condMapEmpty!25823)) mapNonEmpty!25823))

(get-info :version)

(assert (= (and mapNonEmpty!25823 ((_ is ValueCellFull!7635) mapValue!25823)) b!850321))

(assert (= (and b!850310 ((_ is ValueCellFull!7635) mapDefault!25823)) b!850312))

(assert (= start!73126 b!850310))

(declare-fun b_lambda!11575 () Bool)

(assert (=> (not b_lambda!11575) (not b!850313)))

(declare-fun t!23020 () Bool)

(declare-fun tb!4323 () Bool)

(assert (=> (and start!73126 (= defaultEntry!696 defaultEntry!696) t!23020) tb!4323))

(declare-fun result!8249 () Bool)

(assert (=> tb!4323 (= result!8249 tp_is_empty!16149)))

(assert (=> b!850313 t!23020))

(declare-fun b_and!23205 () Bool)

(assert (= b_and!23203 (and (=> t!23020 result!8249) b_and!23205)))

(declare-fun m!791183 () Bool)

(assert (=> b!850322 m!791183))

(declare-fun m!791185 () Bool)

(assert (=> b!850318 m!791185))

(assert (=> b!850318 m!791185))

(declare-fun m!791187 () Bool)

(assert (=> b!850318 m!791187))

(declare-fun m!791189 () Bool)

(assert (=> b!850318 m!791189))

(declare-fun m!791191 () Bool)

(assert (=> b!850313 m!791191))

(declare-fun m!791193 () Bool)

(assert (=> b!850313 m!791193))

(declare-fun m!791195 () Bool)

(assert (=> b!850313 m!791195))

(declare-fun m!791197 () Bool)

(assert (=> b!850313 m!791197))

(declare-fun m!791199 () Bool)

(assert (=> b!850313 m!791199))

(declare-fun m!791201 () Bool)

(assert (=> b!850313 m!791201))

(declare-fun m!791203 () Bool)

(assert (=> b!850313 m!791203))

(declare-fun m!791205 () Bool)

(assert (=> b!850313 m!791205))

(assert (=> b!850313 m!791193))

(assert (=> b!850313 m!791203))

(assert (=> b!850313 m!791185))

(declare-fun m!791207 () Bool)

(assert (=> b!850313 m!791207))

(declare-fun m!791209 () Bool)

(assert (=> b!850313 m!791209))

(declare-fun m!791211 () Bool)

(assert (=> b!850313 m!791211))

(assert (=> b!850313 m!791199))

(declare-fun m!791213 () Bool)

(assert (=> b!850313 m!791213))

(declare-fun m!791215 () Bool)

(assert (=> b!850314 m!791215))

(declare-fun m!791217 () Bool)

(assert (=> b!850320 m!791217))

(assert (=> b!850320 m!791197))

(declare-fun m!791219 () Bool)

(assert (=> b!850320 m!791219))

(declare-fun m!791221 () Bool)

(assert (=> b!850311 m!791221))

(declare-fun m!791223 () Bool)

(assert (=> b!850324 m!791223))

(declare-fun m!791225 () Bool)

(assert (=> bm!37892 m!791225))

(declare-fun m!791227 () Bool)

(assert (=> mapNonEmpty!25823 m!791227))

(declare-fun m!791229 () Bool)

(assert (=> b!850316 m!791229))

(assert (=> bm!37891 m!791211))

(declare-fun m!791231 () Bool)

(assert (=> start!73126 m!791231))

(declare-fun m!791233 () Bool)

(assert (=> start!73126 m!791233))

(declare-fun m!791235 () Bool)

(assert (=> b!850315 m!791235))

(check-sat b_and!23205 (not b!850320) (not b!850313) (not b!850322) (not bm!37892) (not b_lambda!11575) (not b!850314) (not b!850324) (not b!850311) (not b!850315) (not mapNonEmpty!25823) (not start!73126) (not bm!37891) tp_is_empty!16149 (not b!850318) (not b_next!14013))
(check-sat b_and!23205 (not b_next!14013))
