; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73210 () Bool)

(assert start!73210)

(declare-fun b_free!14097 () Bool)

(declare-fun b_next!14097 () Bool)

(assert (=> start!73210 (= b_free!14097 (not b_next!14097))))

(declare-fun tp!49795 () Bool)

(declare-fun b_and!23371 () Bool)

(assert (=> start!73210 (= tp!49795 b_and!23371)))

(declare-fun bm!38143 () Bool)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!48652 0))(
  ( (array!48653 (arr!23353 (Array (_ BitVec 32) (_ BitVec 64))) (size!23794 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48652)

(declare-datatypes ((V!26691 0))(
  ( (V!26692 (val!8164 Int)) )
))
(declare-datatypes ((tuple2!10732 0))(
  ( (tuple2!10733 (_1!5376 (_ BitVec 64)) (_2!5376 V!26691)) )
))
(declare-datatypes ((List!16617 0))(
  ( (Nil!16614) (Cons!16613 (h!17744 tuple2!10732) (t!23168 List!16617)) )
))
(declare-datatypes ((ListLongMap!9515 0))(
  ( (ListLongMap!9516 (toList!4773 List!16617)) )
))
(declare-fun call!38146 () ListLongMap!9515)

(declare-datatypes ((ValueCell!7677 0))(
  ( (ValueCellFull!7677 (v!10585 V!26691)) (EmptyCell!7677) )
))
(declare-datatypes ((array!48654 0))(
  ( (array!48655 (arr!23354 (Array (_ BitVec 32) ValueCell!7677)) (size!23795 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48654)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun minValue!654 () V!26691)

(declare-fun zeroValue!654 () V!26691)

(declare-fun getCurrentListMapNoExtraKeys!2757 (array!48652 array!48654 (_ BitVec 32) (_ BitVec 32) V!26691 V!26691 (_ BitVec 32) Int) ListLongMap!9515)

(assert (=> bm!38143 (= call!38146 (getCurrentListMapNoExtraKeys!2757 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!852284 () Bool)

(declare-fun res!578994 () Bool)

(declare-fun e!475375 () Bool)

(assert (=> b!852284 (=> (not res!578994) (not e!475375))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!852284 (= res!578994 (validMask!0 mask!1196))))

(declare-fun b!852285 () Bool)

(declare-fun e!475378 () Bool)

(assert (=> b!852285 (= e!475375 e!475378)))

(declare-fun res!578993 () Bool)

(assert (=> b!852285 (=> (not res!578993) (not e!475378))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!852285 (= res!578993 (= from!1053 i!612))))

(declare-fun lt!384047 () array!48654)

(declare-fun lt!384048 () ListLongMap!9515)

(assert (=> b!852285 (= lt!384048 (getCurrentListMapNoExtraKeys!2757 _keys!868 lt!384047 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!26691)

(assert (=> b!852285 (= lt!384047 (array!48655 (store (arr!23354 _values!688) i!612 (ValueCellFull!7677 v!557)) (size!23795 _values!688)))))

(declare-fun lt!384041 () ListLongMap!9515)

(assert (=> b!852285 (= lt!384041 (getCurrentListMapNoExtraKeys!2757 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!852286 () Bool)

(declare-fun e!475377 () Bool)

(declare-fun call!38147 () ListLongMap!9515)

(assert (=> b!852286 (= e!475377 (= call!38147 call!38146))))

(declare-fun b!852287 () Bool)

(declare-fun e!475376 () Bool)

(assert (=> b!852287 (= e!475378 (not e!475376))))

(declare-fun res!578998 () Bool)

(assert (=> b!852287 (=> res!578998 e!475376)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!852287 (= res!578998 (not (validKeyInArray!0 (select (arr!23353 _keys!868) from!1053))))))

(assert (=> b!852287 e!475377))

(declare-fun c!91734 () Bool)

(assert (=> b!852287 (= c!91734 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-datatypes ((Unit!29074 0))(
  ( (Unit!29075) )
))
(declare-fun lt!384043 () Unit!29074)

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!379 (array!48652 array!48654 (_ BitVec 32) (_ BitVec 32) V!26691 V!26691 (_ BitVec 32) (_ BitVec 64) V!26691 (_ BitVec 32) Int) Unit!29074)

(assert (=> b!852287 (= lt!384043 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!379 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!852288 () Bool)

(assert (=> b!852288 (= e!475376 true)))

(declare-fun lt!384040 () V!26691)

(declare-fun lt!384042 () tuple2!10732)

(declare-fun lt!384045 () ListLongMap!9515)

(declare-fun +!2114 (ListLongMap!9515 tuple2!10732) ListLongMap!9515)

(assert (=> b!852288 (= (+!2114 lt!384045 lt!384042) (+!2114 (+!2114 lt!384045 (tuple2!10733 k0!854 lt!384040)) lt!384042))))

(declare-fun lt!384044 () V!26691)

(assert (=> b!852288 (= lt!384042 (tuple2!10733 k0!854 lt!384044))))

(declare-fun lt!384039 () Unit!29074)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!296 (ListLongMap!9515 (_ BitVec 64) V!26691 V!26691) Unit!29074)

(assert (=> b!852288 (= lt!384039 (addSameAsAddTwiceSameKeyDiffValues!296 lt!384045 k0!854 lt!384040 lt!384044))))

(declare-fun lt!384046 () V!26691)

(declare-fun get!12326 (ValueCell!7677 V!26691) V!26691)

(assert (=> b!852288 (= lt!384040 (get!12326 (select (arr!23354 _values!688) from!1053) lt!384046))))

(assert (=> b!852288 (= lt!384048 (+!2114 lt!384045 (tuple2!10733 (select (arr!23353 _keys!868) from!1053) lt!384044)))))

(assert (=> b!852288 (= lt!384044 (get!12326 (select (store (arr!23354 _values!688) i!612 (ValueCellFull!7677 v!557)) from!1053) lt!384046))))

(declare-fun dynLambda!1044 (Int (_ BitVec 64)) V!26691)

(assert (=> b!852288 (= lt!384046 (dynLambda!1044 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!852288 (= lt!384045 (getCurrentListMapNoExtraKeys!2757 _keys!868 lt!384047 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!852289 () Bool)

(declare-fun res!578992 () Bool)

(assert (=> b!852289 (=> (not res!578992) (not e!475375))))

(assert (=> b!852289 (= res!578992 (validKeyInArray!0 k0!854))))

(declare-fun b!852290 () Bool)

(declare-fun res!578997 () Bool)

(assert (=> b!852290 (=> (not res!578997) (not e!475375))))

(assert (=> b!852290 (= res!578997 (and (= (size!23795 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23794 _keys!868) (size!23795 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!852292 () Bool)

(declare-fun e!475374 () Bool)

(declare-fun tp_is_empty!16233 () Bool)

(assert (=> b!852292 (= e!475374 tp_is_empty!16233)))

(declare-fun b!852293 () Bool)

(declare-fun res!578996 () Bool)

(assert (=> b!852293 (=> (not res!578996) (not e!475375))))

(assert (=> b!852293 (= res!578996 (and (= (select (arr!23353 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!852294 () Bool)

(declare-fun e!475379 () Bool)

(assert (=> b!852294 (= e!475379 tp_is_empty!16233)))

(declare-fun b!852295 () Bool)

(declare-fun res!578991 () Bool)

(assert (=> b!852295 (=> (not res!578991) (not e!475375))))

(declare-datatypes ((List!16618 0))(
  ( (Nil!16615) (Cons!16614 (h!17745 (_ BitVec 64)) (t!23169 List!16618)) )
))
(declare-fun arrayNoDuplicates!0 (array!48652 (_ BitVec 32) List!16618) Bool)

(assert (=> b!852295 (= res!578991 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16615))))

(declare-fun b!852296 () Bool)

(declare-fun res!579000 () Bool)

(assert (=> b!852296 (=> (not res!579000) (not e!475375))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48652 (_ BitVec 32)) Bool)

(assert (=> b!852296 (= res!579000 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun bm!38144 () Bool)

(assert (=> bm!38144 (= call!38147 (getCurrentListMapNoExtraKeys!2757 _keys!868 lt!384047 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun mapNonEmpty!25949 () Bool)

(declare-fun mapRes!25949 () Bool)

(declare-fun tp!49796 () Bool)

(assert (=> mapNonEmpty!25949 (= mapRes!25949 (and tp!49796 e!475379))))

(declare-fun mapKey!25949 () (_ BitVec 32))

(declare-fun mapRest!25949 () (Array (_ BitVec 32) ValueCell!7677))

(declare-fun mapValue!25949 () ValueCell!7677)

(assert (=> mapNonEmpty!25949 (= (arr!23354 _values!688) (store mapRest!25949 mapKey!25949 mapValue!25949))))

(declare-fun mapIsEmpty!25949 () Bool)

(assert (=> mapIsEmpty!25949 mapRes!25949))

(declare-fun b!852297 () Bool)

(assert (=> b!852297 (= e!475377 (= call!38147 (+!2114 call!38146 (tuple2!10733 k0!854 v!557))))))

(declare-fun b!852298 () Bool)

(declare-fun res!578999 () Bool)

(assert (=> b!852298 (=> (not res!578999) (not e!475375))))

(assert (=> b!852298 (= res!578999 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23794 _keys!868))))))

(declare-fun res!578995 () Bool)

(assert (=> start!73210 (=> (not res!578995) (not e!475375))))

(assert (=> start!73210 (= res!578995 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23794 _keys!868))))))

(assert (=> start!73210 e!475375))

(assert (=> start!73210 tp_is_empty!16233))

(assert (=> start!73210 true))

(assert (=> start!73210 tp!49795))

(declare-fun array_inv!18510 (array!48652) Bool)

(assert (=> start!73210 (array_inv!18510 _keys!868)))

(declare-fun e!475380 () Bool)

(declare-fun array_inv!18511 (array!48654) Bool)

(assert (=> start!73210 (and (array_inv!18511 _values!688) e!475380)))

(declare-fun b!852291 () Bool)

(assert (=> b!852291 (= e!475380 (and e!475374 mapRes!25949))))

(declare-fun condMapEmpty!25949 () Bool)

(declare-fun mapDefault!25949 () ValueCell!7677)

(assert (=> b!852291 (= condMapEmpty!25949 (= (arr!23354 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7677)) mapDefault!25949)))))

(assert (= (and start!73210 res!578995) b!852284))

(assert (= (and b!852284 res!578994) b!852290))

(assert (= (and b!852290 res!578997) b!852296))

(assert (= (and b!852296 res!579000) b!852295))

(assert (= (and b!852295 res!578991) b!852298))

(assert (= (and b!852298 res!578999) b!852289))

(assert (= (and b!852289 res!578992) b!852293))

(assert (= (and b!852293 res!578996) b!852285))

(assert (= (and b!852285 res!578993) b!852287))

(assert (= (and b!852287 c!91734) b!852297))

(assert (= (and b!852287 (not c!91734)) b!852286))

(assert (= (or b!852297 b!852286) bm!38143))

(assert (= (or b!852297 b!852286) bm!38144))

(assert (= (and b!852287 (not res!578998)) b!852288))

(assert (= (and b!852291 condMapEmpty!25949) mapIsEmpty!25949))

(assert (= (and b!852291 (not condMapEmpty!25949)) mapNonEmpty!25949))

(get-info :version)

(assert (= (and mapNonEmpty!25949 ((_ is ValueCellFull!7677) mapValue!25949)) b!852294))

(assert (= (and b!852291 ((_ is ValueCellFull!7677) mapDefault!25949)) b!852292))

(assert (= start!73210 b!852291))

(declare-fun b_lambda!11659 () Bool)

(assert (=> (not b_lambda!11659) (not b!852288)))

(declare-fun t!23167 () Bool)

(declare-fun tb!4407 () Bool)

(assert (=> (and start!73210 (= defaultEntry!696 defaultEntry!696) t!23167) tb!4407))

(declare-fun result!8417 () Bool)

(assert (=> tb!4407 (= result!8417 tp_is_empty!16233)))

(assert (=> b!852288 t!23167))

(declare-fun b_and!23373 () Bool)

(assert (= b_and!23371 (and (=> t!23167 result!8417) b_and!23373)))

(declare-fun m!793451 () Bool)

(assert (=> b!852288 m!793451))

(declare-fun m!793453 () Bool)

(assert (=> b!852288 m!793453))

(assert (=> b!852288 m!793453))

(declare-fun m!793455 () Bool)

(assert (=> b!852288 m!793455))

(declare-fun m!793457 () Bool)

(assert (=> b!852288 m!793457))

(declare-fun m!793459 () Bool)

(assert (=> b!852288 m!793459))

(declare-fun m!793461 () Bool)

(assert (=> b!852288 m!793461))

(declare-fun m!793463 () Bool)

(assert (=> b!852288 m!793463))

(declare-fun m!793465 () Bool)

(assert (=> b!852288 m!793465))

(assert (=> b!852288 m!793457))

(assert (=> b!852288 m!793463))

(declare-fun m!793467 () Bool)

(assert (=> b!852288 m!793467))

(declare-fun m!793469 () Bool)

(assert (=> b!852288 m!793469))

(declare-fun m!793471 () Bool)

(assert (=> b!852288 m!793471))

(declare-fun m!793473 () Bool)

(assert (=> b!852288 m!793473))

(declare-fun m!793475 () Bool)

(assert (=> b!852288 m!793475))

(declare-fun m!793477 () Bool)

(assert (=> b!852293 m!793477))

(declare-fun m!793479 () Bool)

(assert (=> b!852284 m!793479))

(declare-fun m!793481 () Bool)

(assert (=> mapNonEmpty!25949 m!793481))

(declare-fun m!793483 () Bool)

(assert (=> b!852297 m!793483))

(declare-fun m!793485 () Bool)

(assert (=> b!852295 m!793485))

(declare-fun m!793487 () Bool)

(assert (=> b!852285 m!793487))

(assert (=> b!852285 m!793465))

(declare-fun m!793489 () Bool)

(assert (=> b!852285 m!793489))

(declare-fun m!793491 () Bool)

(assert (=> start!73210 m!793491))

(declare-fun m!793493 () Bool)

(assert (=> start!73210 m!793493))

(assert (=> bm!38144 m!793475))

(declare-fun m!793495 () Bool)

(assert (=> b!852289 m!793495))

(assert (=> b!852287 m!793469))

(assert (=> b!852287 m!793469))

(declare-fun m!793497 () Bool)

(assert (=> b!852287 m!793497))

(declare-fun m!793499 () Bool)

(assert (=> b!852287 m!793499))

(declare-fun m!793501 () Bool)

(assert (=> bm!38143 m!793501))

(declare-fun m!793503 () Bool)

(assert (=> b!852296 m!793503))

(check-sat (not mapNonEmpty!25949) (not b_next!14097) (not b!852288) b_and!23373 (not b_lambda!11659) (not b!852295) (not b!852287) (not start!73210) (not b!852285) (not bm!38143) (not b!852284) (not b!852296) (not bm!38144) tp_is_empty!16233 (not b!852289) (not b!852297))
(check-sat b_and!23373 (not b_next!14097))
