; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98152 () Bool)

(assert start!98152)

(declare-fun b_free!23817 () Bool)

(declare-fun b_next!23817 () Bool)

(assert (=> start!98152 (= b_free!23817 (not b_next!23817))))

(declare-fun tp!84155 () Bool)

(declare-fun b_and!38439 () Bool)

(assert (=> start!98152 (= tp!84155 b_and!38439)))

(declare-fun b!1127449 () Bool)

(declare-fun res!753507 () Bool)

(declare-fun e!641744 () Bool)

(assert (=> b!1127449 (=> (not res!753507) (not e!641744))))

(declare-datatypes ((array!73514 0))(
  ( (array!73515 (arr!35406 (Array (_ BitVec 32) (_ BitVec 64))) (size!35943 (_ BitVec 32))) )
))
(declare-fun lt!500582 () array!73514)

(declare-datatypes ((List!24813 0))(
  ( (Nil!24810) (Cons!24809 (h!26018 (_ BitVec 64)) (t!35629 List!24813)) )
))
(declare-fun arrayNoDuplicates!0 (array!73514 (_ BitVec 32) List!24813) Bool)

(assert (=> b!1127449 (= res!753507 (arrayNoDuplicates!0 lt!500582 #b00000000000000000000000000000000 Nil!24810))))

(declare-fun b!1127450 () Bool)

(declare-fun e!641746 () Bool)

(assert (=> b!1127450 (= e!641744 (not e!641746))))

(declare-fun res!753503 () Bool)

(assert (=> b!1127450 (=> res!753503 e!641746)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1127450 (= res!753503 (bvsgt from!1455 i!673))))

(declare-fun _keys!1208 () array!73514)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!73514 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1127450 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36891 0))(
  ( (Unit!36892) )
))
(declare-fun lt!500580 () Unit!36891)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73514 (_ BitVec 64) (_ BitVec 32)) Unit!36891)

(assert (=> b!1127450 (= lt!500580 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1127451 () Bool)

(declare-fun res!753513 () Bool)

(declare-fun e!641749 () Bool)

(assert (=> b!1127451 (=> (not res!753513) (not e!641749))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!42923 0))(
  ( (V!42924 (val!14230 Int)) )
))
(declare-datatypes ((ValueCell!13464 0))(
  ( (ValueCellFull!13464 (v!16864 V!42923)) (EmptyCell!13464) )
))
(declare-datatypes ((array!73516 0))(
  ( (array!73517 (arr!35407 (Array (_ BitVec 32) ValueCell!13464)) (size!35944 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73516)

(assert (=> b!1127451 (= res!753513 (and (= (size!35944 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35943 _keys!1208) (size!35944 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1127452 () Bool)

(declare-fun res!753509 () Bool)

(assert (=> b!1127452 (=> (not res!753509) (not e!641749))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1127452 (= res!753509 (validKeyInArray!0 k0!934))))

(declare-fun res!753512 () Bool)

(assert (=> start!98152 (=> (not res!753512) (not e!641749))))

(assert (=> start!98152 (= res!753512 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35943 _keys!1208))))))

(assert (=> start!98152 e!641749))

(declare-fun tp_is_empty!28347 () Bool)

(assert (=> start!98152 tp_is_empty!28347))

(declare-fun array_inv!27036 (array!73514) Bool)

(assert (=> start!98152 (array_inv!27036 _keys!1208)))

(assert (=> start!98152 true))

(assert (=> start!98152 tp!84155))

(declare-fun e!641751 () Bool)

(declare-fun array_inv!27037 (array!73516) Bool)

(assert (=> start!98152 (and (array_inv!27037 _values!996) e!641751)))

(declare-fun b!1127453 () Bool)

(declare-fun res!753506 () Bool)

(assert (=> b!1127453 (=> (not res!753506) (not e!641749))))

(assert (=> b!1127453 (= res!753506 (= (select (arr!35406 _keys!1208) i!673) k0!934))))

(declare-fun b!1127454 () Bool)

(declare-fun e!641745 () Bool)

(assert (=> b!1127454 (= e!641745 tp_is_empty!28347)))

(declare-fun b!1127455 () Bool)

(declare-fun e!641748 () Bool)

(assert (=> b!1127455 (= e!641746 e!641748)))

(declare-fun res!753510 () Bool)

(assert (=> b!1127455 (=> res!753510 e!641748)))

(assert (=> b!1127455 (= res!753510 (not (= from!1455 i!673)))))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!42923)

(declare-fun zeroValue!944 () V!42923)

(declare-datatypes ((tuple2!17988 0))(
  ( (tuple2!17989 (_1!9004 (_ BitVec 64)) (_2!9004 V!42923)) )
))
(declare-datatypes ((List!24814 0))(
  ( (Nil!24811) (Cons!24810 (h!26019 tuple2!17988) (t!35630 List!24814)) )
))
(declare-datatypes ((ListLongMap!15969 0))(
  ( (ListLongMap!15970 (toList!8000 List!24814)) )
))
(declare-fun lt!500579 () ListLongMap!15969)

(declare-fun lt!500578 () array!73516)

(declare-fun getCurrentListMapNoExtraKeys!4458 (array!73514 array!73516 (_ BitVec 32) (_ BitVec 32) V!42923 V!42923 (_ BitVec 32) Int) ListLongMap!15969)

(assert (=> b!1127455 (= lt!500579 (getCurrentListMapNoExtraKeys!4458 lt!500582 lt!500578 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2537 (Int (_ BitVec 64)) V!42923)

(assert (=> b!1127455 (= lt!500578 (array!73517 (store (arr!35407 _values!996) i!673 (ValueCellFull!13464 (dynLambda!2537 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35944 _values!996)))))

(declare-fun lt!500581 () ListLongMap!15969)

(assert (=> b!1127455 (= lt!500581 (getCurrentListMapNoExtraKeys!4458 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1127456 () Bool)

(declare-fun res!753502 () Bool)

(assert (=> b!1127456 (=> (not res!753502) (not e!641749))))

(assert (=> b!1127456 (= res!753502 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35943 _keys!1208))))))

(declare-fun mapNonEmpty!44338 () Bool)

(declare-fun mapRes!44338 () Bool)

(declare-fun tp!84156 () Bool)

(declare-fun e!641752 () Bool)

(assert (=> mapNonEmpty!44338 (= mapRes!44338 (and tp!84156 e!641752))))

(declare-fun mapKey!44338 () (_ BitVec 32))

(declare-fun mapRest!44338 () (Array (_ BitVec 32) ValueCell!13464))

(declare-fun mapValue!44338 () ValueCell!13464)

(assert (=> mapNonEmpty!44338 (= (arr!35407 _values!996) (store mapRest!44338 mapKey!44338 mapValue!44338))))

(declare-fun call!47734 () ListLongMap!15969)

(declare-fun bm!47731 () Bool)

(assert (=> bm!47731 (= call!47734 (getCurrentListMapNoExtraKeys!4458 lt!500582 lt!500578 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun call!47735 () ListLongMap!15969)

(declare-fun bm!47732 () Bool)

(assert (=> bm!47732 (= call!47735 (getCurrentListMapNoExtraKeys!4458 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1127457 () Bool)

(declare-fun e!641753 () Bool)

(assert (=> b!1127457 (= e!641748 e!641753)))

(declare-fun res!753501 () Bool)

(assert (=> b!1127457 (=> res!753501 e!641753)))

(assert (=> b!1127457 (= res!753501 (not (= (select (arr!35406 _keys!1208) from!1455) k0!934)))))

(declare-fun e!641747 () Bool)

(assert (=> b!1127457 e!641747))

(declare-fun c!109676 () Bool)

(assert (=> b!1127457 (= c!109676 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!500577 () Unit!36891)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!394 (array!73514 array!73516 (_ BitVec 32) (_ BitVec 32) V!42923 V!42923 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36891)

(assert (=> b!1127457 (= lt!500577 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!394 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1127458 () Bool)

(assert (=> b!1127458 (= e!641753 true)))

(declare-fun lt!500583 () Bool)

(declare-fun contains!6504 (ListLongMap!15969 (_ BitVec 64)) Bool)

(assert (=> b!1127458 (= lt!500583 (contains!6504 (getCurrentListMapNoExtraKeys!4458 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k0!934))))

(declare-fun mapIsEmpty!44338 () Bool)

(assert (=> mapIsEmpty!44338 mapRes!44338))

(declare-fun b!1127459 () Bool)

(declare-fun res!753508 () Bool)

(assert (=> b!1127459 (=> (not res!753508) (not e!641749))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73514 (_ BitVec 32)) Bool)

(assert (=> b!1127459 (= res!753508 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1127460 () Bool)

(assert (=> b!1127460 (= e!641747 (= call!47734 call!47735))))

(declare-fun b!1127461 () Bool)

(declare-fun res!753511 () Bool)

(assert (=> b!1127461 (=> (not res!753511) (not e!641749))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1127461 (= res!753511 (validMask!0 mask!1564))))

(declare-fun b!1127462 () Bool)

(declare-fun -!1137 (ListLongMap!15969 (_ BitVec 64)) ListLongMap!15969)

(assert (=> b!1127462 (= e!641747 (= call!47734 (-!1137 call!47735 k0!934)))))

(declare-fun b!1127463 () Bool)

(declare-fun res!753504 () Bool)

(assert (=> b!1127463 (=> (not res!753504) (not e!641749))))

(assert (=> b!1127463 (= res!753504 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24810))))

(declare-fun b!1127464 () Bool)

(assert (=> b!1127464 (= e!641752 tp_is_empty!28347)))

(declare-fun b!1127465 () Bool)

(assert (=> b!1127465 (= e!641751 (and e!641745 mapRes!44338))))

(declare-fun condMapEmpty!44338 () Bool)

(declare-fun mapDefault!44338 () ValueCell!13464)

(assert (=> b!1127465 (= condMapEmpty!44338 (= (arr!35407 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13464)) mapDefault!44338)))))

(declare-fun b!1127466 () Bool)

(assert (=> b!1127466 (= e!641749 e!641744)))

(declare-fun res!753505 () Bool)

(assert (=> b!1127466 (=> (not res!753505) (not e!641744))))

(assert (=> b!1127466 (= res!753505 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!500582 mask!1564))))

(assert (=> b!1127466 (= lt!500582 (array!73515 (store (arr!35406 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35943 _keys!1208)))))

(assert (= (and start!98152 res!753512) b!1127461))

(assert (= (and b!1127461 res!753511) b!1127451))

(assert (= (and b!1127451 res!753513) b!1127459))

(assert (= (and b!1127459 res!753508) b!1127463))

(assert (= (and b!1127463 res!753504) b!1127456))

(assert (= (and b!1127456 res!753502) b!1127452))

(assert (= (and b!1127452 res!753509) b!1127453))

(assert (= (and b!1127453 res!753506) b!1127466))

(assert (= (and b!1127466 res!753505) b!1127449))

(assert (= (and b!1127449 res!753507) b!1127450))

(assert (= (and b!1127450 (not res!753503)) b!1127455))

(assert (= (and b!1127455 (not res!753510)) b!1127457))

(assert (= (and b!1127457 c!109676) b!1127462))

(assert (= (and b!1127457 (not c!109676)) b!1127460))

(assert (= (or b!1127462 b!1127460) bm!47731))

(assert (= (or b!1127462 b!1127460) bm!47732))

(assert (= (and b!1127457 (not res!753501)) b!1127458))

(assert (= (and b!1127465 condMapEmpty!44338) mapIsEmpty!44338))

(assert (= (and b!1127465 (not condMapEmpty!44338)) mapNonEmpty!44338))

(get-info :version)

(assert (= (and mapNonEmpty!44338 ((_ is ValueCellFull!13464) mapValue!44338)) b!1127464))

(assert (= (and b!1127465 ((_ is ValueCellFull!13464) mapDefault!44338)) b!1127454))

(assert (= start!98152 b!1127465))

(declare-fun b_lambda!18821 () Bool)

(assert (=> (not b_lambda!18821) (not b!1127455)))

(declare-fun t!35628 () Bool)

(declare-fun tb!8637 () Bool)

(assert (=> (and start!98152 (= defaultEntry!1004 defaultEntry!1004) t!35628) tb!8637))

(declare-fun result!17827 () Bool)

(assert (=> tb!8637 (= result!17827 tp_is_empty!28347)))

(assert (=> b!1127455 t!35628))

(declare-fun b_and!38441 () Bool)

(assert (= b_and!38439 (and (=> t!35628 result!17827) b_and!38441)))

(declare-fun m!1041341 () Bool)

(assert (=> b!1127457 m!1041341))

(declare-fun m!1041343 () Bool)

(assert (=> b!1127457 m!1041343))

(declare-fun m!1041345 () Bool)

(assert (=> b!1127453 m!1041345))

(declare-fun m!1041347 () Bool)

(assert (=> b!1127462 m!1041347))

(declare-fun m!1041349 () Bool)

(assert (=> b!1127450 m!1041349))

(declare-fun m!1041351 () Bool)

(assert (=> b!1127450 m!1041351))

(declare-fun m!1041353 () Bool)

(assert (=> bm!47732 m!1041353))

(declare-fun m!1041355 () Bool)

(assert (=> bm!47731 m!1041355))

(declare-fun m!1041357 () Bool)

(assert (=> b!1127466 m!1041357))

(declare-fun m!1041359 () Bool)

(assert (=> b!1127466 m!1041359))

(declare-fun m!1041361 () Bool)

(assert (=> b!1127449 m!1041361))

(assert (=> b!1127458 m!1041353))

(assert (=> b!1127458 m!1041353))

(declare-fun m!1041363 () Bool)

(assert (=> b!1127458 m!1041363))

(declare-fun m!1041365 () Bool)

(assert (=> b!1127459 m!1041365))

(declare-fun m!1041367 () Bool)

(assert (=> start!98152 m!1041367))

(declare-fun m!1041369 () Bool)

(assert (=> start!98152 m!1041369))

(declare-fun m!1041371 () Bool)

(assert (=> b!1127461 m!1041371))

(declare-fun m!1041373 () Bool)

(assert (=> b!1127455 m!1041373))

(declare-fun m!1041375 () Bool)

(assert (=> b!1127455 m!1041375))

(declare-fun m!1041377 () Bool)

(assert (=> b!1127455 m!1041377))

(declare-fun m!1041379 () Bool)

(assert (=> b!1127455 m!1041379))

(declare-fun m!1041381 () Bool)

(assert (=> b!1127463 m!1041381))

(declare-fun m!1041383 () Bool)

(assert (=> b!1127452 m!1041383))

(declare-fun m!1041385 () Bool)

(assert (=> mapNonEmpty!44338 m!1041385))

(check-sat (not b!1127463) (not b!1127457) (not bm!47731) (not b!1127450) (not b_lambda!18821) (not b!1127455) (not b!1127452) (not b!1127466) (not mapNonEmpty!44338) (not b!1127458) (not b!1127449) tp_is_empty!28347 b_and!38441 (not b!1127461) (not b_next!23817) (not start!98152) (not b!1127462) (not b!1127459) (not bm!47732))
(check-sat b_and!38441 (not b_next!23817))
