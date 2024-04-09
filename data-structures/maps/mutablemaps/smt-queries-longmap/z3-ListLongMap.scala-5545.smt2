; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73084 () Bool)

(assert start!73084)

(declare-fun b_free!13971 () Bool)

(declare-fun b_next!13971 () Bool)

(assert (=> start!73084 (= b_free!13971 (not b_next!13971))))

(declare-fun tp!49418 () Bool)

(declare-fun b_and!23119 () Bool)

(assert (=> start!73084 (= tp!49418 b_and!23119)))

(declare-fun b!849323 () Bool)

(declare-fun e!473861 () Bool)

(declare-fun e!473867 () Bool)

(declare-fun mapRes!25760 () Bool)

(assert (=> b!849323 (= e!473861 (and e!473867 mapRes!25760))))

(declare-fun condMapEmpty!25760 () Bool)

(declare-datatypes ((V!26523 0))(
  ( (V!26524 (val!8101 Int)) )
))
(declare-datatypes ((ValueCell!7614 0))(
  ( (ValueCellFull!7614 (v!10522 V!26523)) (EmptyCell!7614) )
))
(declare-datatypes ((array!48406 0))(
  ( (array!48407 (arr!23230 (Array (_ BitVec 32) ValueCell!7614)) (size!23671 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48406)

(declare-fun mapDefault!25760 () ValueCell!7614)

(assert (=> b!849323 (= condMapEmpty!25760 (= (arr!23230 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7614)) mapDefault!25760)))))

(declare-fun res!577105 () Bool)

(declare-fun e!473865 () Bool)

(assert (=> start!73084 (=> (not res!577105) (not e!473865))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!48408 0))(
  ( (array!48409 (arr!23231 (Array (_ BitVec 32) (_ BitVec 64))) (size!23672 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48408)

(assert (=> start!73084 (= res!577105 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23672 _keys!868))))))

(assert (=> start!73084 e!473865))

(declare-fun tp_is_empty!16107 () Bool)

(assert (=> start!73084 tp_is_empty!16107))

(assert (=> start!73084 true))

(assert (=> start!73084 tp!49418))

(declare-fun array_inv!18422 (array!48408) Bool)

(assert (=> start!73084 (array_inv!18422 _keys!868)))

(declare-fun array_inv!18423 (array!48406) Bool)

(assert (=> start!73084 (and (array_inv!18423 _values!688) e!473861)))

(declare-fun b!849324 () Bool)

(declare-fun res!577107 () Bool)

(assert (=> b!849324 (=> (not res!577107) (not e!473865))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!849324 (= res!577107 (validMask!0 mask!1196))))

(declare-fun b!849325 () Bool)

(declare-fun e!473864 () Bool)

(assert (=> b!849325 (= e!473864 true)))

(declare-datatypes ((tuple2!10620 0))(
  ( (tuple2!10621 (_1!5320 (_ BitVec 64)) (_2!5320 V!26523)) )
))
(declare-datatypes ((List!16519 0))(
  ( (Nil!16516) (Cons!16515 (h!17646 tuple2!10620) (t!22944 List!16519)) )
))
(declare-datatypes ((ListLongMap!9403 0))(
  ( (ListLongMap!9404 (toList!4717 List!16519)) )
))
(declare-fun lt!382229 () ListLongMap!9403)

(declare-fun defaultEntry!696 () Int)

(declare-fun lt!382227 () array!48406)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun minValue!654 () V!26523)

(declare-fun zeroValue!654 () V!26523)

(declare-fun +!2062 (ListLongMap!9403 tuple2!10620) ListLongMap!9403)

(declare-fun getCurrentListMapNoExtraKeys!2705 (array!48408 array!48406 (_ BitVec 32) (_ BitVec 32) V!26523 V!26523 (_ BitVec 32) Int) ListLongMap!9403)

(declare-fun get!12238 (ValueCell!7614 V!26523) V!26523)

(declare-fun dynLambda!998 (Int (_ BitVec 64)) V!26523)

(assert (=> b!849325 (= lt!382229 (+!2062 (getCurrentListMapNoExtraKeys!2705 _keys!868 lt!382227 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (tuple2!10621 (select (arr!23231 _keys!868) from!1053) (get!12238 (select (arr!23230 lt!382227) from!1053) (dynLambda!998 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!849326 () Bool)

(declare-fun res!577106 () Bool)

(assert (=> b!849326 (=> (not res!577106) (not e!473865))))

(declare-datatypes ((List!16520 0))(
  ( (Nil!16517) (Cons!16516 (h!17647 (_ BitVec 64)) (t!22945 List!16520)) )
))
(declare-fun arrayNoDuplicates!0 (array!48408 (_ BitVec 32) List!16520) Bool)

(assert (=> b!849326 (= res!577106 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16517))))

(declare-fun mapNonEmpty!25760 () Bool)

(declare-fun tp!49417 () Bool)

(declare-fun e!473863 () Bool)

(assert (=> mapNonEmpty!25760 (= mapRes!25760 (and tp!49417 e!473863))))

(declare-fun mapRest!25760 () (Array (_ BitVec 32) ValueCell!7614))

(declare-fun mapKey!25760 () (_ BitVec 32))

(declare-fun mapValue!25760 () ValueCell!7614)

(assert (=> mapNonEmpty!25760 (= (arr!23230 _values!688) (store mapRest!25760 mapKey!25760 mapValue!25760))))

(declare-fun b!849327 () Bool)

(declare-fun e!473862 () Bool)

(declare-fun call!37768 () ListLongMap!9403)

(declare-fun call!37769 () ListLongMap!9403)

(assert (=> b!849327 (= e!473862 (= call!37768 call!37769))))

(declare-fun b!849328 () Bool)

(declare-fun res!577103 () Bool)

(assert (=> b!849328 (=> (not res!577103) (not e!473865))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48408 (_ BitVec 32)) Bool)

(assert (=> b!849328 (= res!577103 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!849329 () Bool)

(declare-fun res!577109 () Bool)

(assert (=> b!849329 (=> (not res!577109) (not e!473865))))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!849329 (= res!577109 (validKeyInArray!0 k0!854))))

(declare-fun b!849330 () Bool)

(declare-fun v!557 () V!26523)

(assert (=> b!849330 (= e!473862 (= call!37768 (+!2062 call!37769 (tuple2!10621 k0!854 v!557))))))

(declare-fun bm!37765 () Bool)

(assert (=> bm!37765 (= call!37769 (getCurrentListMapNoExtraKeys!2705 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!849331 () Bool)

(assert (=> b!849331 (= e!473863 tp_is_empty!16107)))

(declare-fun mapIsEmpty!25760 () Bool)

(assert (=> mapIsEmpty!25760 mapRes!25760))

(declare-fun b!849332 () Bool)

(declare-fun res!577110 () Bool)

(assert (=> b!849332 (=> (not res!577110) (not e!473865))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!849332 (= res!577110 (and (= (select (arr!23231 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!849333 () Bool)

(declare-fun res!577108 () Bool)

(assert (=> b!849333 (=> (not res!577108) (not e!473865))))

(assert (=> b!849333 (= res!577108 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23672 _keys!868))))))

(declare-fun b!849334 () Bool)

(assert (=> b!849334 (= e!473867 tp_is_empty!16107)))

(declare-fun b!849335 () Bool)

(declare-fun e!473866 () Bool)

(assert (=> b!849335 (= e!473866 (not e!473864))))

(declare-fun res!577102 () Bool)

(assert (=> b!849335 (=> res!577102 e!473864)))

(assert (=> b!849335 (= res!577102 (not (validKeyInArray!0 (select (arr!23231 _keys!868) from!1053))))))

(assert (=> b!849335 e!473862))

(declare-fun c!91545 () Bool)

(assert (=> b!849335 (= c!91545 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-datatypes ((Unit!28974 0))(
  ( (Unit!28975) )
))
(declare-fun lt!382228 () Unit!28974)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!336 (array!48408 array!48406 (_ BitVec 32) (_ BitVec 32) V!26523 V!26523 (_ BitVec 32) (_ BitVec 64) V!26523 (_ BitVec 32) Int) Unit!28974)

(assert (=> b!849335 (= lt!382228 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!336 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun bm!37766 () Bool)

(assert (=> bm!37766 (= call!37768 (getCurrentListMapNoExtraKeys!2705 _keys!868 lt!382227 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!849336 () Bool)

(declare-fun res!577101 () Bool)

(assert (=> b!849336 (=> (not res!577101) (not e!473865))))

(assert (=> b!849336 (= res!577101 (and (= (size!23671 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23672 _keys!868) (size!23671 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!849337 () Bool)

(assert (=> b!849337 (= e!473865 e!473866)))

(declare-fun res!577104 () Bool)

(assert (=> b!849337 (=> (not res!577104) (not e!473866))))

(assert (=> b!849337 (= res!577104 (= from!1053 i!612))))

(assert (=> b!849337 (= lt!382229 (getCurrentListMapNoExtraKeys!2705 _keys!868 lt!382227 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!849337 (= lt!382227 (array!48407 (store (arr!23230 _values!688) i!612 (ValueCellFull!7614 v!557)) (size!23671 _values!688)))))

(declare-fun lt!382230 () ListLongMap!9403)

(assert (=> b!849337 (= lt!382230 (getCurrentListMapNoExtraKeys!2705 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (= (and start!73084 res!577105) b!849324))

(assert (= (and b!849324 res!577107) b!849336))

(assert (= (and b!849336 res!577101) b!849328))

(assert (= (and b!849328 res!577103) b!849326))

(assert (= (and b!849326 res!577106) b!849333))

(assert (= (and b!849333 res!577108) b!849329))

(assert (= (and b!849329 res!577109) b!849332))

(assert (= (and b!849332 res!577110) b!849337))

(assert (= (and b!849337 res!577104) b!849335))

(assert (= (and b!849335 c!91545) b!849330))

(assert (= (and b!849335 (not c!91545)) b!849327))

(assert (= (or b!849330 b!849327) bm!37766))

(assert (= (or b!849330 b!849327) bm!37765))

(assert (= (and b!849335 (not res!577102)) b!849325))

(assert (= (and b!849323 condMapEmpty!25760) mapIsEmpty!25760))

(assert (= (and b!849323 (not condMapEmpty!25760)) mapNonEmpty!25760))

(get-info :version)

(assert (= (and mapNonEmpty!25760 ((_ is ValueCellFull!7614) mapValue!25760)) b!849331))

(assert (= (and b!849323 ((_ is ValueCellFull!7614) mapDefault!25760)) b!849334))

(assert (= start!73084 b!849323))

(declare-fun b_lambda!11533 () Bool)

(assert (=> (not b_lambda!11533) (not b!849325)))

(declare-fun t!22943 () Bool)

(declare-fun tb!4281 () Bool)

(assert (=> (and start!73084 (= defaultEntry!696 defaultEntry!696) t!22943) tb!4281))

(declare-fun result!8165 () Bool)

(assert (=> tb!4281 (= result!8165 tp_is_empty!16107)))

(assert (=> b!849325 t!22943))

(declare-fun b_and!23121 () Bool)

(assert (= b_and!23119 (and (=> t!22943 result!8165) b_and!23121)))

(declare-fun m!790109 () Bool)

(assert (=> start!73084 m!790109))

(declare-fun m!790111 () Bool)

(assert (=> start!73084 m!790111))

(declare-fun m!790113 () Bool)

(assert (=> b!849329 m!790113))

(declare-fun m!790115 () Bool)

(assert (=> b!849330 m!790115))

(declare-fun m!790117 () Bool)

(assert (=> mapNonEmpty!25760 m!790117))

(declare-fun m!790119 () Bool)

(assert (=> b!849335 m!790119))

(assert (=> b!849335 m!790119))

(declare-fun m!790121 () Bool)

(assert (=> b!849335 m!790121))

(declare-fun m!790123 () Bool)

(assert (=> b!849335 m!790123))

(declare-fun m!790125 () Bool)

(assert (=> bm!37765 m!790125))

(declare-fun m!790127 () Bool)

(assert (=> b!849332 m!790127))

(declare-fun m!790129 () Bool)

(assert (=> b!849337 m!790129))

(declare-fun m!790131 () Bool)

(assert (=> b!849337 m!790131))

(declare-fun m!790133 () Bool)

(assert (=> b!849337 m!790133))

(declare-fun m!790135 () Bool)

(assert (=> b!849326 m!790135))

(declare-fun m!790137 () Bool)

(assert (=> b!849328 m!790137))

(declare-fun m!790139 () Bool)

(assert (=> b!849324 m!790139))

(declare-fun m!790141 () Bool)

(assert (=> b!849325 m!790141))

(declare-fun m!790143 () Bool)

(assert (=> b!849325 m!790143))

(declare-fun m!790145 () Bool)

(assert (=> b!849325 m!790145))

(assert (=> b!849325 m!790141))

(declare-fun m!790147 () Bool)

(assert (=> b!849325 m!790147))

(assert (=> b!849325 m!790147))

(declare-fun m!790149 () Bool)

(assert (=> b!849325 m!790149))

(assert (=> b!849325 m!790119))

(assert (=> b!849325 m!790143))

(assert (=> bm!37766 m!790147))

(check-sat (not b!849324) tp_is_empty!16107 (not start!73084) (not b!849329) (not b_next!13971) (not b!849337) (not b!849335) (not bm!37765) (not mapNonEmpty!25760) b_and!23121 (not b!849328) (not b!849326) (not b!849330) (not b!849325) (not bm!37766) (not b_lambda!11533))
(check-sat b_and!23121 (not b_next!13971))
