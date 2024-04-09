; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73240 () Bool)

(assert start!73240)

(declare-fun b_free!14127 () Bool)

(declare-fun b_next!14127 () Bool)

(assert (=> start!73240 (= b_free!14127 (not b_next!14127))))

(declare-fun tp!49886 () Bool)

(declare-fun b_and!23431 () Bool)

(assert (=> start!73240 (= tp!49886 b_and!23431)))

(declare-fun b!852990 () Bool)

(declare-fun res!579446 () Bool)

(declare-fun e!475740 () Bool)

(assert (=> b!852990 (=> (not res!579446) (not e!475740))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k0!854 () (_ BitVec 64))

(declare-datatypes ((array!48710 0))(
  ( (array!48711 (arr!23382 (Array (_ BitVec 32) (_ BitVec 64))) (size!23823 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48710)

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!852990 (= res!579446 (and (= (select (arr!23382 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-datatypes ((V!26731 0))(
  ( (V!26732 (val!8179 Int)) )
))
(declare-datatypes ((tuple2!10760 0))(
  ( (tuple2!10761 (_1!5390 (_ BitVec 64)) (_2!5390 V!26731)) )
))
(declare-datatypes ((List!16638 0))(
  ( (Nil!16635) (Cons!16634 (h!17765 tuple2!10760) (t!23219 List!16638)) )
))
(declare-datatypes ((ListLongMap!9543 0))(
  ( (ListLongMap!9544 (toList!4787 List!16638)) )
))
(declare-fun call!38236 () ListLongMap!9543)

(declare-fun bm!38233 () Bool)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((ValueCell!7692 0))(
  ( (ValueCellFull!7692 (v!10600 V!26731)) (EmptyCell!7692) )
))
(declare-datatypes ((array!48712 0))(
  ( (array!48713 (arr!23383 (Array (_ BitVec 32) ValueCell!7692)) (size!23824 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48712)

(declare-fun minValue!654 () V!26731)

(declare-fun zeroValue!654 () V!26731)

(declare-fun getCurrentListMapNoExtraKeys!2770 (array!48710 array!48712 (_ BitVec 32) (_ BitVec 32) V!26731 V!26731 (_ BitVec 32) Int) ListLongMap!9543)

(assert (=> bm!38233 (= call!38236 (getCurrentListMapNoExtraKeys!2770 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!852991 () Bool)

(declare-fun e!475733 () Bool)

(assert (=> b!852991 (= e!475733 true)))

(declare-fun lt!384495 () ListLongMap!9543)

(declare-fun lt!384492 () tuple2!10760)

(declare-fun lt!384491 () V!26731)

(declare-fun +!2127 (ListLongMap!9543 tuple2!10760) ListLongMap!9543)

(assert (=> b!852991 (= (+!2127 lt!384495 lt!384492) (+!2127 (+!2127 lt!384495 (tuple2!10761 k0!854 lt!384491)) lt!384492))))

(declare-fun lt!384496 () V!26731)

(assert (=> b!852991 (= lt!384492 (tuple2!10761 k0!854 lt!384496))))

(declare-datatypes ((Unit!29100 0))(
  ( (Unit!29101) )
))
(declare-fun lt!384493 () Unit!29100)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!307 (ListLongMap!9543 (_ BitVec 64) V!26731 V!26731) Unit!29100)

(assert (=> b!852991 (= lt!384493 (addSameAsAddTwiceSameKeyDiffValues!307 lt!384495 k0!854 lt!384491 lt!384496))))

(declare-fun lt!384498 () V!26731)

(declare-fun get!12347 (ValueCell!7692 V!26731) V!26731)

(assert (=> b!852991 (= lt!384491 (get!12347 (select (arr!23383 _values!688) from!1053) lt!384498))))

(declare-fun lt!384497 () ListLongMap!9543)

(assert (=> b!852991 (= lt!384497 (+!2127 lt!384495 (tuple2!10761 (select (arr!23382 _keys!868) from!1053) lt!384496)))))

(declare-fun v!557 () V!26731)

(assert (=> b!852991 (= lt!384496 (get!12347 (select (store (arr!23383 _values!688) i!612 (ValueCellFull!7692 v!557)) from!1053) lt!384498))))

(declare-fun dynLambda!1055 (Int (_ BitVec 64)) V!26731)

(assert (=> b!852991 (= lt!384498 (dynLambda!1055 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!384490 () array!48712)

(assert (=> b!852991 (= lt!384495 (getCurrentListMapNoExtraKeys!2770 _keys!868 lt!384490 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!852992 () Bool)

(declare-fun e!475736 () Bool)

(declare-fun tp_is_empty!16263 () Bool)

(assert (=> b!852992 (= e!475736 tp_is_empty!16263)))

(declare-fun b!852993 () Bool)

(declare-fun res!579449 () Bool)

(assert (=> b!852993 (=> (not res!579449) (not e!475740))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!852993 (= res!579449 (validKeyInArray!0 k0!854))))

(declare-fun b!852994 () Bool)

(declare-fun res!579450 () Bool)

(assert (=> b!852994 (=> (not res!579450) (not e!475740))))

(declare-datatypes ((List!16639 0))(
  ( (Nil!16636) (Cons!16635 (h!17766 (_ BitVec 64)) (t!23220 List!16639)) )
))
(declare-fun arrayNoDuplicates!0 (array!48710 (_ BitVec 32) List!16639) Bool)

(assert (=> b!852994 (= res!579450 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16636))))

(declare-fun mapNonEmpty!25994 () Bool)

(declare-fun mapRes!25994 () Bool)

(declare-fun tp!49885 () Bool)

(assert (=> mapNonEmpty!25994 (= mapRes!25994 (and tp!49885 e!475736))))

(declare-fun mapRest!25994 () (Array (_ BitVec 32) ValueCell!7692))

(declare-fun mapValue!25994 () ValueCell!7692)

(declare-fun mapKey!25994 () (_ BitVec 32))

(assert (=> mapNonEmpty!25994 (= (arr!23383 _values!688) (store mapRest!25994 mapKey!25994 mapValue!25994))))

(declare-fun b!852995 () Bool)

(declare-fun res!579445 () Bool)

(assert (=> b!852995 (=> (not res!579445) (not e!475740))))

(assert (=> b!852995 (= res!579445 (and (= (size!23824 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23823 _keys!868) (size!23824 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun res!579441 () Bool)

(assert (=> start!73240 (=> (not res!579441) (not e!475740))))

(assert (=> start!73240 (= res!579441 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23823 _keys!868))))))

(assert (=> start!73240 e!475740))

(assert (=> start!73240 tp_is_empty!16263))

(assert (=> start!73240 true))

(assert (=> start!73240 tp!49886))

(declare-fun array_inv!18524 (array!48710) Bool)

(assert (=> start!73240 (array_inv!18524 _keys!868)))

(declare-fun e!475734 () Bool)

(declare-fun array_inv!18525 (array!48712) Bool)

(assert (=> start!73240 (and (array_inv!18525 _values!688) e!475734)))

(declare-fun b!852989 () Bool)

(declare-fun res!579443 () Bool)

(assert (=> b!852989 (=> (not res!579443) (not e!475740))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!852989 (= res!579443 (validMask!0 mask!1196))))

(declare-fun mapIsEmpty!25994 () Bool)

(assert (=> mapIsEmpty!25994 mapRes!25994))

(declare-fun call!38237 () ListLongMap!9543)

(declare-fun b!852996 () Bool)

(declare-fun e!475735 () Bool)

(assert (=> b!852996 (= e!475735 (= call!38237 (+!2127 call!38236 (tuple2!10761 k0!854 v!557))))))

(declare-fun b!852997 () Bool)

(declare-fun e!475737 () Bool)

(assert (=> b!852997 (= e!475734 (and e!475737 mapRes!25994))))

(declare-fun condMapEmpty!25994 () Bool)

(declare-fun mapDefault!25994 () ValueCell!7692)

(assert (=> b!852997 (= condMapEmpty!25994 (= (arr!23383 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7692)) mapDefault!25994)))))

(declare-fun b!852998 () Bool)

(assert (=> b!852998 (= e!475737 tp_is_empty!16263)))

(declare-fun b!852999 () Bool)

(assert (=> b!852999 (= e!475735 (= call!38237 call!38236))))

(declare-fun b!853000 () Bool)

(declare-fun e!475738 () Bool)

(assert (=> b!853000 (= e!475740 e!475738)))

(declare-fun res!579442 () Bool)

(assert (=> b!853000 (=> (not res!579442) (not e!475738))))

(assert (=> b!853000 (= res!579442 (= from!1053 i!612))))

(assert (=> b!853000 (= lt!384497 (getCurrentListMapNoExtraKeys!2770 _keys!868 lt!384490 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!853000 (= lt!384490 (array!48713 (store (arr!23383 _values!688) i!612 (ValueCellFull!7692 v!557)) (size!23824 _values!688)))))

(declare-fun lt!384489 () ListLongMap!9543)

(assert (=> b!853000 (= lt!384489 (getCurrentListMapNoExtraKeys!2770 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!853001 () Bool)

(declare-fun res!579448 () Bool)

(assert (=> b!853001 (=> (not res!579448) (not e!475740))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48710 (_ BitVec 32)) Bool)

(assert (=> b!853001 (= res!579448 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!853002 () Bool)

(assert (=> b!853002 (= e!475738 (not e!475733))))

(declare-fun res!579447 () Bool)

(assert (=> b!853002 (=> res!579447 e!475733)))

(assert (=> b!853002 (= res!579447 (not (validKeyInArray!0 (select (arr!23382 _keys!868) from!1053))))))

(assert (=> b!853002 e!475735))

(declare-fun c!91779 () Bool)

(assert (=> b!853002 (= c!91779 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-fun lt!384494 () Unit!29100)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!390 (array!48710 array!48712 (_ BitVec 32) (_ BitVec 32) V!26731 V!26731 (_ BitVec 32) (_ BitVec 64) V!26731 (_ BitVec 32) Int) Unit!29100)

(assert (=> b!853002 (= lt!384494 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!390 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!853003 () Bool)

(declare-fun res!579444 () Bool)

(assert (=> b!853003 (=> (not res!579444) (not e!475740))))

(assert (=> b!853003 (= res!579444 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23823 _keys!868))))))

(declare-fun bm!38234 () Bool)

(assert (=> bm!38234 (= call!38237 (getCurrentListMapNoExtraKeys!2770 _keys!868 lt!384490 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (= (and start!73240 res!579441) b!852989))

(assert (= (and b!852989 res!579443) b!852995))

(assert (= (and b!852995 res!579445) b!853001))

(assert (= (and b!853001 res!579448) b!852994))

(assert (= (and b!852994 res!579450) b!853003))

(assert (= (and b!853003 res!579444) b!852993))

(assert (= (and b!852993 res!579449) b!852990))

(assert (= (and b!852990 res!579446) b!853000))

(assert (= (and b!853000 res!579442) b!853002))

(assert (= (and b!853002 c!91779) b!852996))

(assert (= (and b!853002 (not c!91779)) b!852999))

(assert (= (or b!852996 b!852999) bm!38234))

(assert (= (or b!852996 b!852999) bm!38233))

(assert (= (and b!853002 (not res!579447)) b!852991))

(assert (= (and b!852997 condMapEmpty!25994) mapIsEmpty!25994))

(assert (= (and b!852997 (not condMapEmpty!25994)) mapNonEmpty!25994))

(get-info :version)

(assert (= (and mapNonEmpty!25994 ((_ is ValueCellFull!7692) mapValue!25994)) b!852992))

(assert (= (and b!852997 ((_ is ValueCellFull!7692) mapDefault!25994)) b!852998))

(assert (= start!73240 b!852997))

(declare-fun b_lambda!11689 () Bool)

(assert (=> (not b_lambda!11689) (not b!852991)))

(declare-fun t!23218 () Bool)

(declare-fun tb!4437 () Bool)

(assert (=> (and start!73240 (= defaultEntry!696 defaultEntry!696) t!23218) tb!4437))

(declare-fun result!8477 () Bool)

(assert (=> tb!4437 (= result!8477 tp_is_empty!16263)))

(assert (=> b!852991 t!23218))

(declare-fun b_and!23433 () Bool)

(assert (= b_and!23431 (and (=> t!23218 result!8477) b_and!23433)))

(declare-fun m!794263 () Bool)

(assert (=> bm!38234 m!794263))

(declare-fun m!794265 () Bool)

(assert (=> b!853001 m!794265))

(declare-fun m!794267 () Bool)

(assert (=> mapNonEmpty!25994 m!794267))

(declare-fun m!794269 () Bool)

(assert (=> start!73240 m!794269))

(declare-fun m!794271 () Bool)

(assert (=> start!73240 m!794271))

(declare-fun m!794273 () Bool)

(assert (=> bm!38233 m!794273))

(declare-fun m!794275 () Bool)

(assert (=> b!852994 m!794275))

(declare-fun m!794277 () Bool)

(assert (=> b!852990 m!794277))

(declare-fun m!794279 () Bool)

(assert (=> b!852991 m!794279))

(declare-fun m!794281 () Bool)

(assert (=> b!852991 m!794281))

(assert (=> b!852991 m!794263))

(declare-fun m!794283 () Bool)

(assert (=> b!852991 m!794283))

(declare-fun m!794285 () Bool)

(assert (=> b!852991 m!794285))

(declare-fun m!794287 () Bool)

(assert (=> b!852991 m!794287))

(assert (=> b!852991 m!794285))

(declare-fun m!794289 () Bool)

(assert (=> b!852991 m!794289))

(declare-fun m!794291 () Bool)

(assert (=> b!852991 m!794291))

(declare-fun m!794293 () Bool)

(assert (=> b!852991 m!794293))

(declare-fun m!794295 () Bool)

(assert (=> b!852991 m!794295))

(assert (=> b!852991 m!794295))

(declare-fun m!794297 () Bool)

(assert (=> b!852991 m!794297))

(assert (=> b!852991 m!794291))

(declare-fun m!794299 () Bool)

(assert (=> b!852991 m!794299))

(declare-fun m!794301 () Bool)

(assert (=> b!852991 m!794301))

(declare-fun m!794303 () Bool)

(assert (=> b!852989 m!794303))

(declare-fun m!794305 () Bool)

(assert (=> b!852993 m!794305))

(declare-fun m!794307 () Bool)

(assert (=> b!853000 m!794307))

(assert (=> b!853000 m!794289))

(declare-fun m!794309 () Bool)

(assert (=> b!853000 m!794309))

(declare-fun m!794311 () Bool)

(assert (=> b!852996 m!794311))

(assert (=> b!853002 m!794299))

(assert (=> b!853002 m!794299))

(declare-fun m!794313 () Bool)

(assert (=> b!853002 m!794313))

(declare-fun m!794315 () Bool)

(assert (=> b!853002 m!794315))

(check-sat (not b!852994) (not bm!38234) (not b!852996) (not b!852989) (not b!852993) (not b!852991) (not b!853001) tp_is_empty!16263 (not b!853000) (not b_lambda!11689) b_and!23433 (not b_next!14127) (not mapNonEmpty!25994) (not start!73240) (not bm!38233) (not b!853002))
(check-sat b_and!23433 (not b_next!14127))
