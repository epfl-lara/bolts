; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97948 () Bool)

(assert start!97948)

(declare-fun b_free!23613 () Bool)

(declare-fun b_next!23613 () Bool)

(assert (=> start!97948 (= b_free!23613 (not b_next!23613))))

(declare-fun tp!83543 () Bool)

(declare-fun b_and!38031 () Bool)

(assert (=> start!97948 (= tp!83543 b_and!38031)))

(declare-fun b!1121561 () Bool)

(declare-fun res!749352 () Bool)

(declare-fun e!638623 () Bool)

(assert (=> b!1121561 (=> (not res!749352) (not e!638623))))

(declare-datatypes ((array!73112 0))(
  ( (array!73113 (arr!35205 (Array (_ BitVec 32) (_ BitVec 64))) (size!35742 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73112)

(declare-datatypes ((List!24634 0))(
  ( (Nil!24631) (Cons!24630 (h!25839 (_ BitVec 64)) (t!35246 List!24634)) )
))
(declare-fun arrayNoDuplicates!0 (array!73112 (_ BitVec 32) List!24634) Bool)

(assert (=> b!1121561 (= res!749352 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24631))))

(declare-fun mapIsEmpty!44032 () Bool)

(declare-fun mapRes!44032 () Bool)

(assert (=> mapIsEmpty!44032 mapRes!44032))

(declare-fun b!1121562 () Bool)

(declare-fun res!749357 () Bool)

(assert (=> b!1121562 (=> (not res!749357) (not e!638623))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1121562 (= res!749357 (validMask!0 mask!1564))))

(declare-fun b!1121563 () Bool)

(declare-fun e!638621 () Bool)

(declare-fun e!638616 () Bool)

(assert (=> b!1121563 (= e!638621 e!638616)))

(declare-fun res!749353 () Bool)

(assert (=> b!1121563 (=> res!749353 e!638616)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1121563 (= res!749353 (not (= from!1455 i!673)))))

(declare-datatypes ((V!42651 0))(
  ( (V!42652 (val!14128 Int)) )
))
(declare-fun zeroValue!944 () V!42651)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((ValueCell!13362 0))(
  ( (ValueCellFull!13362 (v!16762 V!42651)) (EmptyCell!13362) )
))
(declare-datatypes ((array!73114 0))(
  ( (array!73115 (arr!35206 (Array (_ BitVec 32) ValueCell!13362)) (size!35743 (_ BitVec 32))) )
))
(declare-fun lt!498388 () array!73114)

(declare-fun lt!498390 () array!73112)

(declare-datatypes ((tuple2!17796 0))(
  ( (tuple2!17797 (_1!8908 (_ BitVec 64)) (_2!8908 V!42651)) )
))
(declare-datatypes ((List!24635 0))(
  ( (Nil!24632) (Cons!24631 (h!25840 tuple2!17796) (t!35247 List!24635)) )
))
(declare-datatypes ((ListLongMap!15777 0))(
  ( (ListLongMap!15778 (toList!7904 List!24635)) )
))
(declare-fun lt!498386 () ListLongMap!15777)

(declare-fun minValue!944 () V!42651)

(declare-fun getCurrentListMapNoExtraKeys!4365 (array!73112 array!73114 (_ BitVec 32) (_ BitVec 32) V!42651 V!42651 (_ BitVec 32) Int) ListLongMap!15777)

(assert (=> b!1121563 (= lt!498386 (getCurrentListMapNoExtraKeys!4365 lt!498390 lt!498388 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun _values!996 () array!73114)

(declare-fun dynLambda!2464 (Int (_ BitVec 64)) V!42651)

(assert (=> b!1121563 (= lt!498388 (array!73115 (store (arr!35206 _values!996) i!673 (ValueCellFull!13362 (dynLambda!2464 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35743 _values!996)))))

(declare-fun lt!498385 () ListLongMap!15777)

(assert (=> b!1121563 (= lt!498385 (getCurrentListMapNoExtraKeys!4365 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1121564 () Bool)

(declare-fun res!749355 () Bool)

(assert (=> b!1121564 (=> (not res!749355) (not e!638623))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73112 (_ BitVec 32)) Bool)

(assert (=> b!1121564 (= res!749355 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1121565 () Bool)

(assert (=> b!1121565 (= e!638616 true)))

(declare-fun e!638618 () Bool)

(assert (=> b!1121565 e!638618))

(declare-fun c!109370 () Bool)

(assert (=> b!1121565 (= c!109370 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-datatypes ((Unit!36723 0))(
  ( (Unit!36724) )
))
(declare-fun lt!498389 () Unit!36723)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!324 (array!73112 array!73114 (_ BitVec 32) (_ BitVec 32) V!42651 V!42651 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36723)

(assert (=> b!1121565 (= lt!498389 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!324 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1121566 () Bool)

(declare-fun res!749347 () Bool)

(assert (=> b!1121566 (=> (not res!749347) (not e!638623))))

(assert (=> b!1121566 (= res!749347 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35742 _keys!1208))))))

(declare-fun b!1121567 () Bool)

(declare-fun e!638624 () Bool)

(declare-fun tp_is_empty!28143 () Bool)

(assert (=> b!1121567 (= e!638624 tp_is_empty!28143)))

(declare-fun call!47123 () ListLongMap!15777)

(declare-fun b!1121568 () Bool)

(declare-fun call!47122 () ListLongMap!15777)

(declare-fun -!1069 (ListLongMap!15777 (_ BitVec 64)) ListLongMap!15777)

(assert (=> b!1121568 (= e!638618 (= call!47123 (-!1069 call!47122 k0!934)))))

(declare-fun res!749351 () Bool)

(assert (=> start!97948 (=> (not res!749351) (not e!638623))))

(assert (=> start!97948 (= res!749351 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35742 _keys!1208))))))

(assert (=> start!97948 e!638623))

(assert (=> start!97948 tp_is_empty!28143))

(declare-fun array_inv!26910 (array!73112) Bool)

(assert (=> start!97948 (array_inv!26910 _keys!1208)))

(assert (=> start!97948 true))

(assert (=> start!97948 tp!83543))

(declare-fun e!638620 () Bool)

(declare-fun array_inv!26911 (array!73114) Bool)

(assert (=> start!97948 (and (array_inv!26911 _values!996) e!638620)))

(declare-fun b!1121569 () Bool)

(declare-fun e!638619 () Bool)

(assert (=> b!1121569 (= e!638623 e!638619)))

(declare-fun res!749354 () Bool)

(assert (=> b!1121569 (=> (not res!749354) (not e!638619))))

(assert (=> b!1121569 (= res!749354 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!498390 mask!1564))))

(assert (=> b!1121569 (= lt!498390 (array!73113 (store (arr!35205 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35742 _keys!1208)))))

(declare-fun b!1121570 () Bool)

(declare-fun res!749358 () Bool)

(assert (=> b!1121570 (=> (not res!749358) (not e!638619))))

(assert (=> b!1121570 (= res!749358 (arrayNoDuplicates!0 lt!498390 #b00000000000000000000000000000000 Nil!24631))))

(declare-fun mapNonEmpty!44032 () Bool)

(declare-fun tp!83544 () Bool)

(assert (=> mapNonEmpty!44032 (= mapRes!44032 (and tp!83544 e!638624))))

(declare-fun mapRest!44032 () (Array (_ BitVec 32) ValueCell!13362))

(declare-fun mapValue!44032 () ValueCell!13362)

(declare-fun mapKey!44032 () (_ BitVec 32))

(assert (=> mapNonEmpty!44032 (= (arr!35206 _values!996) (store mapRest!44032 mapKey!44032 mapValue!44032))))

(declare-fun b!1121571 () Bool)

(declare-fun res!749356 () Bool)

(assert (=> b!1121571 (=> (not res!749356) (not e!638623))))

(assert (=> b!1121571 (= res!749356 (and (= (size!35743 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35742 _keys!1208) (size!35743 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1121572 () Bool)

(assert (=> b!1121572 (= e!638618 (= call!47123 call!47122))))

(declare-fun b!1121573 () Bool)

(declare-fun res!749350 () Bool)

(assert (=> b!1121573 (=> (not res!749350) (not e!638623))))

(assert (=> b!1121573 (= res!749350 (= (select (arr!35205 _keys!1208) i!673) k0!934))))

(declare-fun bm!47119 () Bool)

(assert (=> bm!47119 (= call!47123 (getCurrentListMapNoExtraKeys!4365 lt!498390 lt!498388 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!47120 () Bool)

(assert (=> bm!47120 (= call!47122 (getCurrentListMapNoExtraKeys!4365 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1121574 () Bool)

(declare-fun e!638622 () Bool)

(assert (=> b!1121574 (= e!638620 (and e!638622 mapRes!44032))))

(declare-fun condMapEmpty!44032 () Bool)

(declare-fun mapDefault!44032 () ValueCell!13362)

(assert (=> b!1121574 (= condMapEmpty!44032 (= (arr!35206 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13362)) mapDefault!44032)))))

(declare-fun b!1121575 () Bool)

(assert (=> b!1121575 (= e!638622 tp_is_empty!28143)))

(declare-fun b!1121576 () Bool)

(assert (=> b!1121576 (= e!638619 (not e!638621))))

(declare-fun res!749349 () Bool)

(assert (=> b!1121576 (=> res!749349 e!638621)))

(assert (=> b!1121576 (= res!749349 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!73112 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1121576 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!498387 () Unit!36723)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73112 (_ BitVec 64) (_ BitVec 32)) Unit!36723)

(assert (=> b!1121576 (= lt!498387 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1121577 () Bool)

(declare-fun res!749348 () Bool)

(assert (=> b!1121577 (=> (not res!749348) (not e!638623))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1121577 (= res!749348 (validKeyInArray!0 k0!934))))

(assert (= (and start!97948 res!749351) b!1121562))

(assert (= (and b!1121562 res!749357) b!1121571))

(assert (= (and b!1121571 res!749356) b!1121564))

(assert (= (and b!1121564 res!749355) b!1121561))

(assert (= (and b!1121561 res!749352) b!1121566))

(assert (= (and b!1121566 res!749347) b!1121577))

(assert (= (and b!1121577 res!749348) b!1121573))

(assert (= (and b!1121573 res!749350) b!1121569))

(assert (= (and b!1121569 res!749354) b!1121570))

(assert (= (and b!1121570 res!749358) b!1121576))

(assert (= (and b!1121576 (not res!749349)) b!1121563))

(assert (= (and b!1121563 (not res!749353)) b!1121565))

(assert (= (and b!1121565 c!109370) b!1121568))

(assert (= (and b!1121565 (not c!109370)) b!1121572))

(assert (= (or b!1121568 b!1121572) bm!47120))

(assert (= (or b!1121568 b!1121572) bm!47119))

(assert (= (and b!1121574 condMapEmpty!44032) mapIsEmpty!44032))

(assert (= (and b!1121574 (not condMapEmpty!44032)) mapNonEmpty!44032))

(get-info :version)

(assert (= (and mapNonEmpty!44032 ((_ is ValueCellFull!13362) mapValue!44032)) b!1121567))

(assert (= (and b!1121574 ((_ is ValueCellFull!13362) mapDefault!44032)) b!1121575))

(assert (= start!97948 b!1121574))

(declare-fun b_lambda!18617 () Bool)

(assert (=> (not b_lambda!18617) (not b!1121563)))

(declare-fun t!35245 () Bool)

(declare-fun tb!8433 () Bool)

(assert (=> (and start!97948 (= defaultEntry!1004 defaultEntry!1004) t!35245) tb!8433))

(declare-fun result!17419 () Bool)

(assert (=> tb!8433 (= result!17419 tp_is_empty!28143)))

(assert (=> b!1121563 t!35245))

(declare-fun b_and!38033 () Bool)

(assert (= b_and!38031 (and (=> t!35245 result!17419) b_and!38033)))

(declare-fun m!1036483 () Bool)

(assert (=> b!1121561 m!1036483))

(declare-fun m!1036485 () Bool)

(assert (=> start!97948 m!1036485))

(declare-fun m!1036487 () Bool)

(assert (=> start!97948 m!1036487))

(declare-fun m!1036489 () Bool)

(assert (=> b!1121568 m!1036489))

(declare-fun m!1036491 () Bool)

(assert (=> b!1121570 m!1036491))

(declare-fun m!1036493 () Bool)

(assert (=> b!1121573 m!1036493))

(declare-fun m!1036495 () Bool)

(assert (=> b!1121563 m!1036495))

(declare-fun m!1036497 () Bool)

(assert (=> b!1121563 m!1036497))

(declare-fun m!1036499 () Bool)

(assert (=> b!1121563 m!1036499))

(declare-fun m!1036501 () Bool)

(assert (=> b!1121563 m!1036501))

(declare-fun m!1036503 () Bool)

(assert (=> b!1121565 m!1036503))

(declare-fun m!1036505 () Bool)

(assert (=> bm!47119 m!1036505))

(declare-fun m!1036507 () Bool)

(assert (=> b!1121577 m!1036507))

(declare-fun m!1036509 () Bool)

(assert (=> b!1121569 m!1036509))

(declare-fun m!1036511 () Bool)

(assert (=> b!1121569 m!1036511))

(declare-fun m!1036513 () Bool)

(assert (=> b!1121564 m!1036513))

(declare-fun m!1036515 () Bool)

(assert (=> mapNonEmpty!44032 m!1036515))

(declare-fun m!1036517 () Bool)

(assert (=> bm!47120 m!1036517))

(declare-fun m!1036519 () Bool)

(assert (=> b!1121576 m!1036519))

(declare-fun m!1036521 () Bool)

(assert (=> b!1121576 m!1036521))

(declare-fun m!1036523 () Bool)

(assert (=> b!1121562 m!1036523))

(check-sat (not b!1121563) tp_is_empty!28143 (not b!1121564) (not mapNonEmpty!44032) (not b!1121562) (not b!1121577) (not b!1121569) (not b_lambda!18617) (not b!1121565) (not b!1121576) (not bm!47119) (not b!1121561) (not b_next!23613) (not start!97948) (not b!1121570) (not b!1121568) (not bm!47120) b_and!38033)
(check-sat b_and!38033 (not b_next!23613))
