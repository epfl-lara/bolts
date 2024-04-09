; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!100788 () Bool)

(assert start!100788)

(declare-fun b_free!25923 () Bool)

(declare-fun b_next!25923 () Bool)

(assert (=> start!100788 (= b_free!25923 (not b_next!25923))))

(declare-fun tp!90773 () Bool)

(declare-fun b_and!42843 () Bool)

(assert (=> start!100788 (= tp!90773 b_and!42843)))

(declare-fun b!1205199 () Bool)

(declare-fun e!684462 () Bool)

(declare-fun e!684471 () Bool)

(assert (=> b!1205199 (= e!684462 (not e!684471))))

(declare-fun res!801753 () Bool)

(assert (=> b!1205199 (=> res!801753 e!684471)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1205199 (= res!801753 (bvsgt from!1455 i!673))))

(declare-datatypes ((array!78012 0))(
  ( (array!78013 (arr!37643 (Array (_ BitVec 32) (_ BitVec 64))) (size!38180 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78012)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!78012 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1205199 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!39880 0))(
  ( (Unit!39881) )
))
(declare-fun lt!546602 () Unit!39880)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78012 (_ BitVec 64) (_ BitVec 32)) Unit!39880)

(assert (=> b!1205199 (= lt!546602 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun mapIsEmpty!47796 () Bool)

(declare-fun mapRes!47796 () Bool)

(assert (=> mapIsEmpty!47796 mapRes!47796))

(declare-datatypes ((V!45963 0))(
  ( (V!45964 (val!15370 Int)) )
))
(declare-datatypes ((tuple2!19846 0))(
  ( (tuple2!19847 (_1!9933 (_ BitVec 64)) (_2!9933 V!45963)) )
))
(declare-datatypes ((List!26674 0))(
  ( (Nil!26671) (Cons!26670 (h!27879 tuple2!19846) (t!39584 List!26674)) )
))
(declare-datatypes ((ListLongMap!17827 0))(
  ( (ListLongMap!17828 (toList!8929 List!26674)) )
))
(declare-fun call!58409 () ListLongMap!17827)

(declare-fun c!118202 () Bool)

(declare-fun bm!58400 () Bool)

(declare-fun lt!546608 () ListLongMap!17827)

(declare-fun call!58403 () Bool)

(declare-fun contains!6935 (ListLongMap!17827 (_ BitVec 64)) Bool)

(assert (=> bm!58400 (= call!58403 (contains!6935 (ite c!118202 lt!546608 call!58409) k0!934))))

(declare-fun b!1205200 () Bool)

(declare-fun res!801751 () Bool)

(declare-fun e!684466 () Bool)

(assert (=> b!1205200 (=> (not res!801751) (not e!684466))))

(declare-datatypes ((List!26675 0))(
  ( (Nil!26672) (Cons!26671 (h!27880 (_ BitVec 64)) (t!39585 List!26675)) )
))
(declare-fun arrayNoDuplicates!0 (array!78012 (_ BitVec 32) List!26675) Bool)

(assert (=> b!1205200 (= res!801751 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26672))))

(declare-fun b!1205201 () Bool)

(declare-fun e!684458 () Bool)

(assert (=> b!1205201 (= e!684458 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1205202 () Bool)

(declare-fun e!684460 () Bool)

(assert (=> b!1205202 (= e!684460 true)))

(declare-fun e!684463 () Bool)

(assert (=> b!1205202 e!684463))

(declare-fun res!801755 () Bool)

(assert (=> b!1205202 (=> (not res!801755) (not e!684463))))

(assert (=> b!1205202 (= res!801755 e!684458)))

(declare-fun c!118199 () Bool)

(assert (=> b!1205202 (= c!118199 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun zeroValue!944 () V!45963)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun lt!546601 () Unit!39880)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((ValueCell!14604 0))(
  ( (ValueCellFull!14604 (v!18015 V!45963)) (EmptyCell!14604) )
))
(declare-datatypes ((array!78014 0))(
  ( (array!78015 (arr!37644 (Array (_ BitVec 32) ValueCell!14604)) (size!38181 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78014)

(declare-fun minValue!944 () V!45963)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!568 (array!78012 array!78014 (_ BitVec 32) (_ BitVec 32) V!45963 V!45963 (_ BitVec 64) (_ BitVec 32) Int) Unit!39880)

(assert (=> b!1205202 (= lt!546601 (lemmaListMapContainsThenArrayContainsFrom!568 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!546609 () Unit!39880)

(declare-fun e!684461 () Unit!39880)

(assert (=> b!1205202 (= lt!546609 e!684461)))

(declare-fun lt!546610 () Bool)

(assert (=> b!1205202 (= c!118202 (and (not lt!546610) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1205202 (= lt!546610 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1205204 () Bool)

(declare-fun lt!546599 () Unit!39880)

(assert (=> b!1205204 (= e!684461 lt!546599)))

(declare-fun lt!546600 () Unit!39880)

(declare-fun call!58406 () Unit!39880)

(assert (=> b!1205204 (= lt!546600 call!58406)))

(declare-fun lt!546603 () ListLongMap!17827)

(declare-fun +!3962 (ListLongMap!17827 tuple2!19846) ListLongMap!17827)

(assert (=> b!1205204 (= lt!546608 (+!3962 lt!546603 (tuple2!19847 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(assert (=> b!1205204 call!58403))

(declare-fun addStillContains!1027 (ListLongMap!17827 (_ BitVec 64) V!45963 (_ BitVec 64)) Unit!39880)

(assert (=> b!1205204 (= lt!546599 (addStillContains!1027 lt!546608 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k0!934))))

(declare-fun call!58405 () ListLongMap!17827)

(assert (=> b!1205204 (contains!6935 call!58405 k0!934)))

(declare-fun b!1205205 () Bool)

(declare-fun e!684472 () Bool)

(declare-fun e!684464 () Bool)

(assert (=> b!1205205 (= e!684472 e!684464)))

(declare-fun res!801754 () Bool)

(assert (=> b!1205205 (=> res!801754 e!684464)))

(assert (=> b!1205205 (= res!801754 (not (= (select (arr!37643 _keys!1208) from!1455) k0!934)))))

(declare-fun e!684473 () Bool)

(assert (=> b!1205205 e!684473))

(declare-fun c!118198 () Bool)

(assert (=> b!1205205 (= c!118198 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!546597 () Unit!39880)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1048 (array!78012 array!78014 (_ BitVec 32) (_ BitVec 32) V!45963 V!45963 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39880)

(assert (=> b!1205205 (= lt!546597 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1048 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!58401 () Bool)

(assert (=> bm!58401 (= call!58409 call!58405)))

(declare-fun call!58408 () ListLongMap!17827)

(declare-fun lt!546605 () array!78014)

(declare-fun lt!546606 () array!78012)

(declare-fun bm!58402 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!5338 (array!78012 array!78014 (_ BitVec 32) (_ BitVec 32) V!45963 V!45963 (_ BitVec 32) Int) ListLongMap!17827)

(assert (=> bm!58402 (= call!58408 (getCurrentListMapNoExtraKeys!5338 lt!546606 lt!546605 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1205206 () Bool)

(declare-fun res!801750 () Bool)

(assert (=> b!1205206 (=> (not res!801750) (not e!684466))))

(assert (=> b!1205206 (= res!801750 (and (= (size!38181 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38180 _keys!1208) (size!38181 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun bm!58403 () Bool)

(declare-fun call!58410 () Unit!39880)

(assert (=> bm!58403 (= call!58410 call!58406)))

(declare-fun b!1205207 () Bool)

(assert (=> b!1205207 (= e!684471 e!684472)))

(declare-fun res!801745 () Bool)

(assert (=> b!1205207 (=> res!801745 e!684472)))

(assert (=> b!1205207 (= res!801745 (not (= from!1455 i!673)))))

(declare-fun lt!546607 () ListLongMap!17827)

(assert (=> b!1205207 (= lt!546607 (getCurrentListMapNoExtraKeys!5338 lt!546606 lt!546605 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!3260 (Int (_ BitVec 64)) V!45963)

(assert (=> b!1205207 (= lt!546605 (array!78015 (store (arr!37644 _values!996) i!673 (ValueCellFull!14604 (dynLambda!3260 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38181 _values!996)))))

(declare-fun lt!546598 () ListLongMap!17827)

(assert (=> b!1205207 (= lt!546598 (getCurrentListMapNoExtraKeys!5338 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1205208 () Bool)

(assert (=> b!1205208 (= e!684463 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1205209 () Bool)

(assert (=> b!1205209 (= e!684464 e!684460)))

(declare-fun res!801743 () Bool)

(assert (=> b!1205209 (=> res!801743 e!684460)))

(assert (=> b!1205209 (= res!801743 (not (contains!6935 lt!546603 k0!934)))))

(assert (=> b!1205209 (= lt!546603 (getCurrentListMapNoExtraKeys!5338 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1205210 () Bool)

(declare-fun res!801757 () Bool)

(assert (=> b!1205210 (=> (not res!801757) (not e!684466))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1205210 (= res!801757 (validMask!0 mask!1564))))

(declare-fun b!1205211 () Bool)

(declare-fun res!801747 () Bool)

(assert (=> b!1205211 (=> (not res!801747) (not e!684462))))

(assert (=> b!1205211 (= res!801747 (arrayNoDuplicates!0 lt!546606 #b00000000000000000000000000000000 Nil!26672))))

(declare-fun b!1205212 () Bool)

(declare-fun call!58404 () ListLongMap!17827)

(declare-fun -!1844 (ListLongMap!17827 (_ BitVec 64)) ListLongMap!17827)

(assert (=> b!1205212 (= e!684473 (= call!58408 (-!1844 call!58404 k0!934)))))

(declare-fun mapNonEmpty!47796 () Bool)

(declare-fun tp!90772 () Bool)

(declare-fun e!684465 () Bool)

(assert (=> mapNonEmpty!47796 (= mapRes!47796 (and tp!90772 e!684465))))

(declare-fun mapKey!47796 () (_ BitVec 32))

(declare-fun mapValue!47796 () ValueCell!14604)

(declare-fun mapRest!47796 () (Array (_ BitVec 32) ValueCell!14604))

(assert (=> mapNonEmpty!47796 (= (arr!37644 _values!996) (store mapRest!47796 mapKey!47796 mapValue!47796))))

(declare-fun b!1205213 () Bool)

(assert (=> b!1205213 (= e!684466 e!684462)))

(declare-fun res!801749 () Bool)

(assert (=> b!1205213 (=> (not res!801749) (not e!684462))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78012 (_ BitVec 32)) Bool)

(assert (=> b!1205213 (= res!801749 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!546606 mask!1564))))

(assert (=> b!1205213 (= lt!546606 (array!78013 (store (arr!37643 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38180 _keys!1208)))))

(declare-fun b!1205214 () Bool)

(declare-fun e!684469 () Unit!39880)

(declare-fun Unit!39882 () Unit!39880)

(assert (=> b!1205214 (= e!684469 Unit!39882)))

(declare-fun b!1205203 () Bool)

(declare-fun e!684459 () Unit!39880)

(assert (=> b!1205203 (= e!684461 e!684459)))

(declare-fun c!118200 () Bool)

(assert (=> b!1205203 (= c!118200 (and (not lt!546610) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun res!801756 () Bool)

(assert (=> start!100788 (=> (not res!801756) (not e!684466))))

(assert (=> start!100788 (= res!801756 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38180 _keys!1208))))))

(assert (=> start!100788 e!684466))

(declare-fun tp_is_empty!30627 () Bool)

(assert (=> start!100788 tp_is_empty!30627))

(declare-fun array_inv!28580 (array!78012) Bool)

(assert (=> start!100788 (array_inv!28580 _keys!1208)))

(assert (=> start!100788 true))

(assert (=> start!100788 tp!90773))

(declare-fun e!684468 () Bool)

(declare-fun array_inv!28581 (array!78014) Bool)

(assert (=> start!100788 (and (array_inv!28581 _values!996) e!684468)))

(declare-fun b!1205215 () Bool)

(declare-fun res!801746 () Bool)

(assert (=> b!1205215 (=> (not res!801746) (not e!684466))))

(assert (=> b!1205215 (= res!801746 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun bm!58404 () Bool)

(assert (=> bm!58404 (= call!58404 (getCurrentListMapNoExtraKeys!5338 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1205216 () Bool)

(declare-fun c!118201 () Bool)

(assert (=> b!1205216 (= c!118201 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!546610))))

(assert (=> b!1205216 (= e!684459 e!684469)))

(declare-fun b!1205217 () Bool)

(declare-fun e!684470 () Bool)

(assert (=> b!1205217 (= e!684468 (and e!684470 mapRes!47796))))

(declare-fun condMapEmpty!47796 () Bool)

(declare-fun mapDefault!47796 () ValueCell!14604)

(assert (=> b!1205217 (= condMapEmpty!47796 (= (arr!37644 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14604)) mapDefault!47796)))))

(declare-fun b!1205218 () Bool)

(assert (=> b!1205218 (= e!684465 tp_is_empty!30627)))

(declare-fun bm!58405 () Bool)

(assert (=> bm!58405 (= call!58405 (+!3962 (ite c!118202 lt!546608 lt!546603) (ite c!118202 (tuple2!19847 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!118200 (tuple2!19847 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19847 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun b!1205219 () Bool)

(declare-fun res!801744 () Bool)

(assert (=> b!1205219 (=> (not res!801744) (not e!684466))))

(assert (=> b!1205219 (= res!801744 (= (select (arr!37643 _keys!1208) i!673) k0!934))))

(declare-fun b!1205220 () Bool)

(assert (=> b!1205220 (= e!684458 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!546610) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1205221 () Bool)

(declare-fun res!801748 () Bool)

(assert (=> b!1205221 (=> (not res!801748) (not e!684466))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1205221 (= res!801748 (validKeyInArray!0 k0!934))))

(declare-fun b!1205222 () Bool)

(declare-fun call!58407 () Bool)

(assert (=> b!1205222 call!58407))

(declare-fun lt!546604 () Unit!39880)

(assert (=> b!1205222 (= lt!546604 call!58410)))

(assert (=> b!1205222 (= e!684459 lt!546604)))

(declare-fun bm!58406 () Bool)

(assert (=> bm!58406 (= call!58406 (addStillContains!1027 lt!546603 (ite (or c!118202 c!118200) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!118202 c!118200) zeroValue!944 minValue!944) k0!934))))

(declare-fun b!1205223 () Bool)

(declare-fun lt!546596 () Unit!39880)

(assert (=> b!1205223 (= e!684469 lt!546596)))

(assert (=> b!1205223 (= lt!546596 call!58410)))

(assert (=> b!1205223 call!58407))

(declare-fun b!1205224 () Bool)

(assert (=> b!1205224 (= e!684473 (= call!58408 call!58404))))

(declare-fun b!1205225 () Bool)

(assert (=> b!1205225 (= e!684470 tp_is_empty!30627)))

(declare-fun b!1205226 () Bool)

(declare-fun res!801752 () Bool)

(assert (=> b!1205226 (=> (not res!801752) (not e!684466))))

(assert (=> b!1205226 (= res!801752 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38180 _keys!1208))))))

(declare-fun bm!58407 () Bool)

(assert (=> bm!58407 (= call!58407 call!58403)))

(assert (= (and start!100788 res!801756) b!1205210))

(assert (= (and b!1205210 res!801757) b!1205206))

(assert (= (and b!1205206 res!801750) b!1205215))

(assert (= (and b!1205215 res!801746) b!1205200))

(assert (= (and b!1205200 res!801751) b!1205226))

(assert (= (and b!1205226 res!801752) b!1205221))

(assert (= (and b!1205221 res!801748) b!1205219))

(assert (= (and b!1205219 res!801744) b!1205213))

(assert (= (and b!1205213 res!801749) b!1205211))

(assert (= (and b!1205211 res!801747) b!1205199))

(assert (= (and b!1205199 (not res!801753)) b!1205207))

(assert (= (and b!1205207 (not res!801745)) b!1205205))

(assert (= (and b!1205205 c!118198) b!1205212))

(assert (= (and b!1205205 (not c!118198)) b!1205224))

(assert (= (or b!1205212 b!1205224) bm!58402))

(assert (= (or b!1205212 b!1205224) bm!58404))

(assert (= (and b!1205205 (not res!801754)) b!1205209))

(assert (= (and b!1205209 (not res!801743)) b!1205202))

(assert (= (and b!1205202 c!118202) b!1205204))

(assert (= (and b!1205202 (not c!118202)) b!1205203))

(assert (= (and b!1205203 c!118200) b!1205222))

(assert (= (and b!1205203 (not c!118200)) b!1205216))

(assert (= (and b!1205216 c!118201) b!1205223))

(assert (= (and b!1205216 (not c!118201)) b!1205214))

(assert (= (or b!1205222 b!1205223) bm!58403))

(assert (= (or b!1205222 b!1205223) bm!58401))

(assert (= (or b!1205222 b!1205223) bm!58407))

(assert (= (or b!1205204 bm!58407) bm!58400))

(assert (= (or b!1205204 bm!58403) bm!58406))

(assert (= (or b!1205204 bm!58401) bm!58405))

(assert (= (and b!1205202 c!118199) b!1205201))

(assert (= (and b!1205202 (not c!118199)) b!1205220))

(assert (= (and b!1205202 res!801755) b!1205208))

(assert (= (and b!1205217 condMapEmpty!47796) mapIsEmpty!47796))

(assert (= (and b!1205217 (not condMapEmpty!47796)) mapNonEmpty!47796))

(get-info :version)

(assert (= (and mapNonEmpty!47796 ((_ is ValueCellFull!14604) mapValue!47796)) b!1205218))

(assert (= (and b!1205217 ((_ is ValueCellFull!14604) mapDefault!47796)) b!1205225))

(assert (= start!100788 b!1205217))

(declare-fun b_lambda!21337 () Bool)

(assert (=> (not b_lambda!21337) (not b!1205207)))

(declare-fun t!39583 () Bool)

(declare-fun tb!10731 () Bool)

(assert (=> (and start!100788 (= defaultEntry!1004 defaultEntry!1004) t!39583) tb!10731))

(declare-fun result!22039 () Bool)

(assert (=> tb!10731 (= result!22039 tp_is_empty!30627)))

(assert (=> b!1205207 t!39583))

(declare-fun b_and!42845 () Bool)

(assert (= b_and!42843 (and (=> t!39583 result!22039) b_and!42845)))

(declare-fun m!1111213 () Bool)

(assert (=> b!1205209 m!1111213))

(declare-fun m!1111215 () Bool)

(assert (=> b!1205209 m!1111215))

(declare-fun m!1111217 () Bool)

(assert (=> bm!58405 m!1111217))

(declare-fun m!1111219 () Bool)

(assert (=> b!1205211 m!1111219))

(declare-fun m!1111221 () Bool)

(assert (=> mapNonEmpty!47796 m!1111221))

(declare-fun m!1111223 () Bool)

(assert (=> b!1205210 m!1111223))

(declare-fun m!1111225 () Bool)

(assert (=> b!1205212 m!1111225))

(declare-fun m!1111227 () Bool)

(assert (=> b!1205205 m!1111227))

(declare-fun m!1111229 () Bool)

(assert (=> b!1205205 m!1111229))

(declare-fun m!1111231 () Bool)

(assert (=> b!1205201 m!1111231))

(assert (=> bm!58404 m!1111215))

(declare-fun m!1111233 () Bool)

(assert (=> start!100788 m!1111233))

(declare-fun m!1111235 () Bool)

(assert (=> start!100788 m!1111235))

(declare-fun m!1111237 () Bool)

(assert (=> b!1205207 m!1111237))

(declare-fun m!1111239 () Bool)

(assert (=> b!1205207 m!1111239))

(declare-fun m!1111241 () Bool)

(assert (=> b!1205207 m!1111241))

(declare-fun m!1111243 () Bool)

(assert (=> b!1205207 m!1111243))

(declare-fun m!1111245 () Bool)

(assert (=> b!1205202 m!1111245))

(declare-fun m!1111247 () Bool)

(assert (=> b!1205199 m!1111247))

(declare-fun m!1111249 () Bool)

(assert (=> b!1205199 m!1111249))

(declare-fun m!1111251 () Bool)

(assert (=> bm!58406 m!1111251))

(declare-fun m!1111253 () Bool)

(assert (=> b!1205213 m!1111253))

(declare-fun m!1111255 () Bool)

(assert (=> b!1205213 m!1111255))

(declare-fun m!1111257 () Bool)

(assert (=> b!1205221 m!1111257))

(declare-fun m!1111259 () Bool)

(assert (=> bm!58400 m!1111259))

(declare-fun m!1111261 () Bool)

(assert (=> bm!58402 m!1111261))

(declare-fun m!1111263 () Bool)

(assert (=> b!1205204 m!1111263))

(declare-fun m!1111265 () Bool)

(assert (=> b!1205204 m!1111265))

(declare-fun m!1111267 () Bool)

(assert (=> b!1205204 m!1111267))

(assert (=> b!1205208 m!1111231))

(declare-fun m!1111269 () Bool)

(assert (=> b!1205219 m!1111269))

(declare-fun m!1111271 () Bool)

(assert (=> b!1205215 m!1111271))

(declare-fun m!1111273 () Bool)

(assert (=> b!1205200 m!1111273))

(check-sat (not b!1205207) (not b!1205200) (not b_lambda!21337) (not b!1205201) (not b!1205211) (not b!1205215) (not b!1205204) (not b!1205202) (not start!100788) (not bm!58406) (not b!1205221) (not b!1205199) (not bm!58402) (not b!1205208) (not b!1205209) tp_is_empty!30627 (not b!1205212) (not b!1205210) (not b_next!25923) (not bm!58404) (not b!1205205) (not b!1205213) b_and!42845 (not bm!58400) (not bm!58405) (not mapNonEmpty!47796))
(check-sat b_and!42845 (not b_next!25923))
