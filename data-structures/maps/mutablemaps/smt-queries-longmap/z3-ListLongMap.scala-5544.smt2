; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73078 () Bool)

(assert start!73078)

(declare-fun b_free!13965 () Bool)

(declare-fun b_next!13965 () Bool)

(assert (=> start!73078 (= b_free!13965 (not b_next!13965))))

(declare-fun tp!49400 () Bool)

(declare-fun b_and!23107 () Bool)

(assert (=> start!73078 (= tp!49400 b_and!23107)))

(declare-fun b!849182 () Bool)

(declare-fun e!473795 () Bool)

(declare-fun e!473790 () Bool)

(assert (=> b!849182 (= e!473795 (not e!473790))))

(declare-fun res!577016 () Bool)

(assert (=> b!849182 (=> res!577016 e!473790)))

(declare-datatypes ((array!48394 0))(
  ( (array!48395 (arr!23224 (Array (_ BitVec 32) (_ BitVec 64))) (size!23665 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48394)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!849182 (= res!577016 (not (validKeyInArray!0 (select (arr!23224 _keys!868) from!1053))))))

(declare-fun e!473789 () Bool)

(assert (=> b!849182 e!473789))

(declare-fun c!91536 () Bool)

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!849182 (= c!91536 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-datatypes ((V!26515 0))(
  ( (V!26516 (val!8098 Int)) )
))
(declare-fun v!557 () V!26515)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun k0!854 () (_ BitVec 64))

(declare-datatypes ((ValueCell!7611 0))(
  ( (ValueCellFull!7611 (v!10519 V!26515)) (EmptyCell!7611) )
))
(declare-datatypes ((array!48396 0))(
  ( (array!48397 (arr!23225 (Array (_ BitVec 32) ValueCell!7611)) (size!23666 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48396)

(declare-fun minValue!654 () V!26515)

(declare-fun zeroValue!654 () V!26515)

(declare-datatypes ((Unit!28972 0))(
  ( (Unit!28973) )
))
(declare-fun lt!382193 () Unit!28972)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!335 (array!48394 array!48396 (_ BitVec 32) (_ BitVec 32) V!26515 V!26515 (_ BitVec 32) (_ BitVec 64) V!26515 (_ BitVec 32) Int) Unit!28972)

(assert (=> b!849182 (= lt!382193 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!335 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!849183 () Bool)

(declare-fun res!577018 () Bool)

(declare-fun e!473794 () Bool)

(assert (=> b!849183 (=> (not res!577018) (not e!473794))))

(assert (=> b!849183 (= res!577018 (and (= (select (arr!23224 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!849184 () Bool)

(declare-datatypes ((tuple2!10614 0))(
  ( (tuple2!10615 (_1!5317 (_ BitVec 64)) (_2!5317 V!26515)) )
))
(declare-datatypes ((List!16515 0))(
  ( (Nil!16512) (Cons!16511 (h!17642 tuple2!10614) (t!22934 List!16515)) )
))
(declare-datatypes ((ListLongMap!9397 0))(
  ( (ListLongMap!9398 (toList!4714 List!16515)) )
))
(declare-fun call!37751 () ListLongMap!9397)

(declare-fun call!37750 () ListLongMap!9397)

(assert (=> b!849184 (= e!473789 (= call!37751 call!37750))))

(declare-fun b!849185 () Bool)

(declare-fun res!577012 () Bool)

(assert (=> b!849185 (=> (not res!577012) (not e!473794))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48394 (_ BitVec 32)) Bool)

(assert (=> b!849185 (= res!577012 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!849186 () Bool)

(declare-fun res!577015 () Bool)

(assert (=> b!849186 (=> (not res!577015) (not e!473794))))

(assert (=> b!849186 (= res!577015 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23665 _keys!868))))))

(declare-fun b!849187 () Bool)

(declare-fun e!473793 () Bool)

(declare-fun e!473796 () Bool)

(declare-fun mapRes!25751 () Bool)

(assert (=> b!849187 (= e!473793 (and e!473796 mapRes!25751))))

(declare-fun condMapEmpty!25751 () Bool)

(declare-fun mapDefault!25751 () ValueCell!7611)

(assert (=> b!849187 (= condMapEmpty!25751 (= (arr!23225 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7611)) mapDefault!25751)))))

(declare-fun mapIsEmpty!25751 () Bool)

(assert (=> mapIsEmpty!25751 mapRes!25751))

(declare-fun b!849188 () Bool)

(declare-fun +!2059 (ListLongMap!9397 tuple2!10614) ListLongMap!9397)

(assert (=> b!849188 (= e!473789 (= call!37751 (+!2059 call!37750 (tuple2!10615 k0!854 v!557))))))

(declare-fun res!577011 () Bool)

(assert (=> start!73078 (=> (not res!577011) (not e!473794))))

(assert (=> start!73078 (= res!577011 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23665 _keys!868))))))

(assert (=> start!73078 e!473794))

(declare-fun tp_is_empty!16101 () Bool)

(assert (=> start!73078 tp_is_empty!16101))

(assert (=> start!73078 true))

(assert (=> start!73078 tp!49400))

(declare-fun array_inv!18420 (array!48394) Bool)

(assert (=> start!73078 (array_inv!18420 _keys!868)))

(declare-fun array_inv!18421 (array!48396) Bool)

(assert (=> start!73078 (and (array_inv!18421 _values!688) e!473793)))

(declare-fun b!849189 () Bool)

(assert (=> b!849189 (= e!473794 e!473795)))

(declare-fun res!577013 () Bool)

(assert (=> b!849189 (=> (not res!577013) (not e!473795))))

(assert (=> b!849189 (= res!577013 (= from!1053 i!612))))

(declare-fun lt!382194 () array!48396)

(declare-fun lt!382191 () ListLongMap!9397)

(declare-fun getCurrentListMapNoExtraKeys!2702 (array!48394 array!48396 (_ BitVec 32) (_ BitVec 32) V!26515 V!26515 (_ BitVec 32) Int) ListLongMap!9397)

(assert (=> b!849189 (= lt!382191 (getCurrentListMapNoExtraKeys!2702 _keys!868 lt!382194 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!849189 (= lt!382194 (array!48397 (store (arr!23225 _values!688) i!612 (ValueCellFull!7611 v!557)) (size!23666 _values!688)))))

(declare-fun lt!382192 () ListLongMap!9397)

(assert (=> b!849189 (= lt!382192 (getCurrentListMapNoExtraKeys!2702 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun bm!37747 () Bool)

(assert (=> bm!37747 (= call!37750 (getCurrentListMapNoExtraKeys!2702 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!849190 () Bool)

(assert (=> b!849190 (= e!473796 tp_is_empty!16101)))

(declare-fun b!849191 () Bool)

(assert (=> b!849191 (= e!473790 true)))

(declare-fun get!12233 (ValueCell!7611 V!26515) V!26515)

(declare-fun dynLambda!995 (Int (_ BitVec 64)) V!26515)

(assert (=> b!849191 (= lt!382191 (+!2059 (getCurrentListMapNoExtraKeys!2702 _keys!868 lt!382194 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (tuple2!10615 (select (arr!23224 _keys!868) from!1053) (get!12233 (select (arr!23225 lt!382194) from!1053) (dynLambda!995 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun bm!37748 () Bool)

(assert (=> bm!37748 (= call!37751 (getCurrentListMapNoExtraKeys!2702 _keys!868 lt!382194 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun mapNonEmpty!25751 () Bool)

(declare-fun tp!49399 () Bool)

(declare-fun e!473791 () Bool)

(assert (=> mapNonEmpty!25751 (= mapRes!25751 (and tp!49399 e!473791))))

(declare-fun mapKey!25751 () (_ BitVec 32))

(declare-fun mapRest!25751 () (Array (_ BitVec 32) ValueCell!7611))

(declare-fun mapValue!25751 () ValueCell!7611)

(assert (=> mapNonEmpty!25751 (= (arr!23225 _values!688) (store mapRest!25751 mapKey!25751 mapValue!25751))))

(declare-fun b!849192 () Bool)

(declare-fun res!577019 () Bool)

(assert (=> b!849192 (=> (not res!577019) (not e!473794))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!849192 (= res!577019 (validMask!0 mask!1196))))

(declare-fun b!849193 () Bool)

(declare-fun res!577017 () Bool)

(assert (=> b!849193 (=> (not res!577017) (not e!473794))))

(assert (=> b!849193 (= res!577017 (and (= (size!23666 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23665 _keys!868) (size!23666 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!849194 () Bool)

(assert (=> b!849194 (= e!473791 tp_is_empty!16101)))

(declare-fun b!849195 () Bool)

(declare-fun res!577014 () Bool)

(assert (=> b!849195 (=> (not res!577014) (not e!473794))))

(declare-datatypes ((List!16516 0))(
  ( (Nil!16513) (Cons!16512 (h!17643 (_ BitVec 64)) (t!22935 List!16516)) )
))
(declare-fun arrayNoDuplicates!0 (array!48394 (_ BitVec 32) List!16516) Bool)

(assert (=> b!849195 (= res!577014 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16513))))

(declare-fun b!849196 () Bool)

(declare-fun res!577020 () Bool)

(assert (=> b!849196 (=> (not res!577020) (not e!473794))))

(assert (=> b!849196 (= res!577020 (validKeyInArray!0 k0!854))))

(assert (= (and start!73078 res!577011) b!849192))

(assert (= (and b!849192 res!577019) b!849193))

(assert (= (and b!849193 res!577017) b!849185))

(assert (= (and b!849185 res!577012) b!849195))

(assert (= (and b!849195 res!577014) b!849186))

(assert (= (and b!849186 res!577015) b!849196))

(assert (= (and b!849196 res!577020) b!849183))

(assert (= (and b!849183 res!577018) b!849189))

(assert (= (and b!849189 res!577013) b!849182))

(assert (= (and b!849182 c!91536) b!849188))

(assert (= (and b!849182 (not c!91536)) b!849184))

(assert (= (or b!849188 b!849184) bm!37748))

(assert (= (or b!849188 b!849184) bm!37747))

(assert (= (and b!849182 (not res!577016)) b!849191))

(assert (= (and b!849187 condMapEmpty!25751) mapIsEmpty!25751))

(assert (= (and b!849187 (not condMapEmpty!25751)) mapNonEmpty!25751))

(get-info :version)

(assert (= (and mapNonEmpty!25751 ((_ is ValueCellFull!7611) mapValue!25751)) b!849194))

(assert (= (and b!849187 ((_ is ValueCellFull!7611) mapDefault!25751)) b!849190))

(assert (= start!73078 b!849187))

(declare-fun b_lambda!11527 () Bool)

(assert (=> (not b_lambda!11527) (not b!849191)))

(declare-fun t!22933 () Bool)

(declare-fun tb!4275 () Bool)

(assert (=> (and start!73078 (= defaultEntry!696 defaultEntry!696) t!22933) tb!4275))

(declare-fun result!8153 () Bool)

(assert (=> tb!4275 (= result!8153 tp_is_empty!16101)))

(assert (=> b!849191 t!22933))

(declare-fun b_and!23109 () Bool)

(assert (= b_and!23107 (and (=> t!22933 result!8153) b_and!23109)))

(declare-fun m!789983 () Bool)

(assert (=> b!849189 m!789983))

(declare-fun m!789985 () Bool)

(assert (=> b!849189 m!789985))

(declare-fun m!789987 () Bool)

(assert (=> b!849189 m!789987))

(declare-fun m!789989 () Bool)

(assert (=> b!849182 m!789989))

(assert (=> b!849182 m!789989))

(declare-fun m!789991 () Bool)

(assert (=> b!849182 m!789991))

(declare-fun m!789993 () Bool)

(assert (=> b!849182 m!789993))

(declare-fun m!789995 () Bool)

(assert (=> b!849191 m!789995))

(declare-fun m!789997 () Bool)

(assert (=> b!849191 m!789997))

(declare-fun m!789999 () Bool)

(assert (=> b!849191 m!789999))

(assert (=> b!849191 m!789995))

(declare-fun m!790001 () Bool)

(assert (=> b!849191 m!790001))

(declare-fun m!790003 () Bool)

(assert (=> b!849191 m!790003))

(assert (=> b!849191 m!790001))

(assert (=> b!849191 m!789989))

(assert (=> b!849191 m!789997))

(declare-fun m!790005 () Bool)

(assert (=> b!849196 m!790005))

(declare-fun m!790007 () Bool)

(assert (=> b!849185 m!790007))

(declare-fun m!790009 () Bool)

(assert (=> b!849192 m!790009))

(assert (=> bm!37748 m!790001))

(declare-fun m!790011 () Bool)

(assert (=> start!73078 m!790011))

(declare-fun m!790013 () Bool)

(assert (=> start!73078 m!790013))

(declare-fun m!790015 () Bool)

(assert (=> b!849183 m!790015))

(declare-fun m!790017 () Bool)

(assert (=> b!849188 m!790017))

(declare-fun m!790019 () Bool)

(assert (=> b!849195 m!790019))

(declare-fun m!790021 () Bool)

(assert (=> mapNonEmpty!25751 m!790021))

(declare-fun m!790023 () Bool)

(assert (=> bm!37747 m!790023))

(check-sat b_and!23109 (not b!849191) (not b!849196) (not b!849189) (not b!849192) tp_is_empty!16101 (not b!849188) (not bm!37748) (not b!849185) (not b_next!13965) (not bm!37747) (not b_lambda!11527) (not mapNonEmpty!25751) (not start!73078) (not b!849195) (not b!849182))
(check-sat b_and!23109 (not b_next!13965))
