; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98158 () Bool)

(assert start!98158)

(declare-fun b_free!23823 () Bool)

(declare-fun b_next!23823 () Bool)

(assert (=> start!98158 (= b_free!23823 (not b_next!23823))))

(declare-fun tp!84174 () Bool)

(declare-fun b_and!38451 () Bool)

(assert (=> start!98158 (= tp!84174 b_and!38451)))

(declare-fun b!1127617 () Bool)

(declare-fun e!641842 () Bool)

(declare-fun e!641841 () Bool)

(assert (=> b!1127617 (= e!641842 (not e!641841))))

(declare-fun res!753628 () Bool)

(assert (=> b!1127617 (=> res!753628 e!641841)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1127617 (= res!753628 (bvsgt from!1455 i!673))))

(declare-datatypes ((array!73526 0))(
  ( (array!73527 (arr!35412 (Array (_ BitVec 32) (_ BitVec 64))) (size!35949 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73526)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!73526 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1127617 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36895 0))(
  ( (Unit!36896) )
))
(declare-fun lt!500645 () Unit!36895)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73526 (_ BitVec 64) (_ BitVec 32)) Unit!36895)

(assert (=> b!1127617 (= lt!500645 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1127618 () Bool)

(declare-fun e!641840 () Bool)

(declare-fun tp_is_empty!28353 () Bool)

(assert (=> b!1127618 (= e!641840 tp_is_empty!28353)))

(declare-datatypes ((V!42931 0))(
  ( (V!42932 (val!14233 Int)) )
))
(declare-fun zeroValue!944 () V!42931)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((ValueCell!13467 0))(
  ( (ValueCellFull!13467 (v!16867 V!42931)) (EmptyCell!13467) )
))
(declare-datatypes ((array!73528 0))(
  ( (array!73529 (arr!35413 (Array (_ BitVec 32) ValueCell!13467)) (size!35950 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73528)

(declare-fun minValue!944 () V!42931)

(declare-fun bm!47749 () Bool)

(declare-datatypes ((tuple2!17994 0))(
  ( (tuple2!17995 (_1!9007 (_ BitVec 64)) (_2!9007 V!42931)) )
))
(declare-datatypes ((List!24819 0))(
  ( (Nil!24816) (Cons!24815 (h!26024 tuple2!17994) (t!35641 List!24819)) )
))
(declare-datatypes ((ListLongMap!15975 0))(
  ( (ListLongMap!15976 (toList!8003 List!24819)) )
))
(declare-fun call!47753 () ListLongMap!15975)

(declare-fun getCurrentListMapNoExtraKeys!4461 (array!73526 array!73528 (_ BitVec 32) (_ BitVec 32) V!42931 V!42931 (_ BitVec 32) Int) ListLongMap!15975)

(assert (=> bm!47749 (= call!47753 (getCurrentListMapNoExtraKeys!4461 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1127620 () Bool)

(declare-fun res!753629 () Bool)

(declare-fun e!641843 () Bool)

(assert (=> b!1127620 (=> (not res!753629) (not e!641843))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1127620 (= res!753629 (validMask!0 mask!1564))))

(declare-fun b!1127621 () Bool)

(declare-fun e!641834 () Bool)

(declare-fun mapRes!44347 () Bool)

(assert (=> b!1127621 (= e!641834 (and e!641840 mapRes!44347))))

(declare-fun condMapEmpty!44347 () Bool)

(declare-fun mapDefault!44347 () ValueCell!13467)

(assert (=> b!1127621 (= condMapEmpty!44347 (= (arr!35413 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13467)) mapDefault!44347)))))

(declare-fun mapIsEmpty!44347 () Bool)

(assert (=> mapIsEmpty!44347 mapRes!44347))

(declare-fun e!641838 () Bool)

(declare-fun call!47752 () ListLongMap!15975)

(declare-fun b!1127622 () Bool)

(declare-fun -!1139 (ListLongMap!15975 (_ BitVec 64)) ListLongMap!15975)

(assert (=> b!1127622 (= e!641838 (= call!47752 (-!1139 call!47753 k0!934)))))

(declare-fun b!1127623 () Bool)

(declare-fun res!753621 () Bool)

(assert (=> b!1127623 (=> (not res!753621) (not e!641843))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1127623 (= res!753621 (validKeyInArray!0 k0!934))))

(declare-fun b!1127624 () Bool)

(assert (=> b!1127624 (= e!641843 e!641842)))

(declare-fun res!753618 () Bool)

(assert (=> b!1127624 (=> (not res!753618) (not e!641842))))

(declare-fun lt!500640 () array!73526)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73526 (_ BitVec 32)) Bool)

(assert (=> b!1127624 (= res!753618 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!500640 mask!1564))))

(assert (=> b!1127624 (= lt!500640 (array!73527 (store (arr!35412 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35949 _keys!1208)))))

(declare-fun b!1127625 () Bool)

(declare-fun res!753623 () Bool)

(assert (=> b!1127625 (=> (not res!753623) (not e!641843))))

(declare-datatypes ((List!24820 0))(
  ( (Nil!24817) (Cons!24816 (h!26025 (_ BitVec 64)) (t!35642 List!24820)) )
))
(declare-fun arrayNoDuplicates!0 (array!73526 (_ BitVec 32) List!24820) Bool)

(assert (=> b!1127625 (= res!753623 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24817))))

(declare-fun b!1127626 () Bool)

(assert (=> b!1127626 (= e!641838 (= call!47752 call!47753))))

(declare-fun b!1127627 () Bool)

(declare-fun res!753619 () Bool)

(assert (=> b!1127627 (=> (not res!753619) (not e!641843))))

(assert (=> b!1127627 (= res!753619 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1127628 () Bool)

(declare-fun e!641836 () Bool)

(assert (=> b!1127628 (= e!641836 tp_is_empty!28353)))

(declare-fun bm!47750 () Bool)

(declare-fun lt!500646 () array!73528)

(assert (=> bm!47750 (= call!47752 (getCurrentListMapNoExtraKeys!4461 lt!500640 lt!500646 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapNonEmpty!44347 () Bool)

(declare-fun tp!84173 () Bool)

(assert (=> mapNonEmpty!44347 (= mapRes!44347 (and tp!84173 e!641836))))

(declare-fun mapKey!44347 () (_ BitVec 32))

(declare-fun mapValue!44347 () ValueCell!13467)

(declare-fun mapRest!44347 () (Array (_ BitVec 32) ValueCell!13467))

(assert (=> mapNonEmpty!44347 (= (arr!35413 _values!996) (store mapRest!44347 mapKey!44347 mapValue!44347))))

(declare-fun b!1127629 () Bool)

(declare-fun res!753630 () Bool)

(assert (=> b!1127629 (=> (not res!753630) (not e!641843))))

(assert (=> b!1127629 (= res!753630 (and (= (size!35950 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35949 _keys!1208) (size!35950 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1127630 () Bool)

(declare-fun e!641835 () Bool)

(declare-fun e!641837 () Bool)

(assert (=> b!1127630 (= e!641835 e!641837)))

(declare-fun res!753627 () Bool)

(assert (=> b!1127630 (=> res!753627 e!641837)))

(assert (=> b!1127630 (= res!753627 (not (= (select (arr!35412 _keys!1208) from!1455) k0!934)))))

(assert (=> b!1127630 e!641838))

(declare-fun c!109685 () Bool)

(assert (=> b!1127630 (= c!109685 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!500642 () Unit!36895)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!396 (array!73526 array!73528 (_ BitVec 32) (_ BitVec 32) V!42931 V!42931 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36895)

(assert (=> b!1127630 (= lt!500642 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!396 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1127631 () Bool)

(declare-fun res!753622 () Bool)

(assert (=> b!1127631 (=> (not res!753622) (not e!641843))))

(assert (=> b!1127631 (= res!753622 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35949 _keys!1208))))))

(declare-fun b!1127632 () Bool)

(assert (=> b!1127632 (= e!641841 e!641835)))

(declare-fun res!753625 () Bool)

(assert (=> b!1127632 (=> res!753625 e!641835)))

(assert (=> b!1127632 (= res!753625 (not (= from!1455 i!673)))))

(declare-fun lt!500643 () ListLongMap!15975)

(assert (=> b!1127632 (= lt!500643 (getCurrentListMapNoExtraKeys!4461 lt!500640 lt!500646 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2539 (Int (_ BitVec 64)) V!42931)

(assert (=> b!1127632 (= lt!500646 (array!73529 (store (arr!35413 _values!996) i!673 (ValueCellFull!13467 (dynLambda!2539 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35950 _values!996)))))

(declare-fun lt!500644 () ListLongMap!15975)

(assert (=> b!1127632 (= lt!500644 (getCurrentListMapNoExtraKeys!4461 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1127619 () Bool)

(assert (=> b!1127619 (= e!641837 true)))

(declare-fun lt!500641 () Bool)

(declare-fun contains!6505 (ListLongMap!15975 (_ BitVec 64)) Bool)

(assert (=> b!1127619 (= lt!500641 (contains!6505 (getCurrentListMapNoExtraKeys!4461 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k0!934))))

(declare-fun res!753626 () Bool)

(assert (=> start!98158 (=> (not res!753626) (not e!641843))))

(assert (=> start!98158 (= res!753626 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35949 _keys!1208))))))

(assert (=> start!98158 e!641843))

(assert (=> start!98158 tp_is_empty!28353))

(declare-fun array_inv!27040 (array!73526) Bool)

(assert (=> start!98158 (array_inv!27040 _keys!1208)))

(assert (=> start!98158 true))

(assert (=> start!98158 tp!84174))

(declare-fun array_inv!27041 (array!73528) Bool)

(assert (=> start!98158 (and (array_inv!27041 _values!996) e!641834)))

(declare-fun b!1127633 () Bool)

(declare-fun res!753620 () Bool)

(assert (=> b!1127633 (=> (not res!753620) (not e!641842))))

(assert (=> b!1127633 (= res!753620 (arrayNoDuplicates!0 lt!500640 #b00000000000000000000000000000000 Nil!24817))))

(declare-fun b!1127634 () Bool)

(declare-fun res!753624 () Bool)

(assert (=> b!1127634 (=> (not res!753624) (not e!641843))))

(assert (=> b!1127634 (= res!753624 (= (select (arr!35412 _keys!1208) i!673) k0!934))))

(assert (= (and start!98158 res!753626) b!1127620))

(assert (= (and b!1127620 res!753629) b!1127629))

(assert (= (and b!1127629 res!753630) b!1127627))

(assert (= (and b!1127627 res!753619) b!1127625))

(assert (= (and b!1127625 res!753623) b!1127631))

(assert (= (and b!1127631 res!753622) b!1127623))

(assert (= (and b!1127623 res!753621) b!1127634))

(assert (= (and b!1127634 res!753624) b!1127624))

(assert (= (and b!1127624 res!753618) b!1127633))

(assert (= (and b!1127633 res!753620) b!1127617))

(assert (= (and b!1127617 (not res!753628)) b!1127632))

(assert (= (and b!1127632 (not res!753625)) b!1127630))

(assert (= (and b!1127630 c!109685) b!1127622))

(assert (= (and b!1127630 (not c!109685)) b!1127626))

(assert (= (or b!1127622 b!1127626) bm!47749))

(assert (= (or b!1127622 b!1127626) bm!47750))

(assert (= (and b!1127630 (not res!753627)) b!1127619))

(assert (= (and b!1127621 condMapEmpty!44347) mapIsEmpty!44347))

(assert (= (and b!1127621 (not condMapEmpty!44347)) mapNonEmpty!44347))

(get-info :version)

(assert (= (and mapNonEmpty!44347 ((_ is ValueCellFull!13467) mapValue!44347)) b!1127628))

(assert (= (and b!1127621 ((_ is ValueCellFull!13467) mapDefault!44347)) b!1127618))

(assert (= start!98158 b!1127621))

(declare-fun b_lambda!18827 () Bool)

(assert (=> (not b_lambda!18827) (not b!1127632)))

(declare-fun t!35640 () Bool)

(declare-fun tb!8643 () Bool)

(assert (=> (and start!98158 (= defaultEntry!1004 defaultEntry!1004) t!35640) tb!8643))

(declare-fun result!17839 () Bool)

(assert (=> tb!8643 (= result!17839 tp_is_empty!28353)))

(assert (=> b!1127632 t!35640))

(declare-fun b_and!38453 () Bool)

(assert (= b_and!38451 (and (=> t!35640 result!17839) b_and!38453)))

(declare-fun m!1041479 () Bool)

(assert (=> b!1127622 m!1041479))

(declare-fun m!1041481 () Bool)

(assert (=> bm!47750 m!1041481))

(declare-fun m!1041483 () Bool)

(assert (=> b!1127620 m!1041483))

(declare-fun m!1041485 () Bool)

(assert (=> b!1127623 m!1041485))

(declare-fun m!1041487 () Bool)

(assert (=> bm!47749 m!1041487))

(declare-fun m!1041489 () Bool)

(assert (=> b!1127625 m!1041489))

(assert (=> b!1127619 m!1041487))

(assert (=> b!1127619 m!1041487))

(declare-fun m!1041491 () Bool)

(assert (=> b!1127619 m!1041491))

(declare-fun m!1041493 () Bool)

(assert (=> b!1127632 m!1041493))

(declare-fun m!1041495 () Bool)

(assert (=> b!1127632 m!1041495))

(declare-fun m!1041497 () Bool)

(assert (=> b!1127632 m!1041497))

(declare-fun m!1041499 () Bool)

(assert (=> b!1127632 m!1041499))

(declare-fun m!1041501 () Bool)

(assert (=> b!1127633 m!1041501))

(declare-fun m!1041503 () Bool)

(assert (=> b!1127624 m!1041503))

(declare-fun m!1041505 () Bool)

(assert (=> b!1127624 m!1041505))

(declare-fun m!1041507 () Bool)

(assert (=> b!1127627 m!1041507))

(declare-fun m!1041509 () Bool)

(assert (=> b!1127617 m!1041509))

(declare-fun m!1041511 () Bool)

(assert (=> b!1127617 m!1041511))

(declare-fun m!1041513 () Bool)

(assert (=> start!98158 m!1041513))

(declare-fun m!1041515 () Bool)

(assert (=> start!98158 m!1041515))

(declare-fun m!1041517 () Bool)

(assert (=> b!1127634 m!1041517))

(declare-fun m!1041519 () Bool)

(assert (=> mapNonEmpty!44347 m!1041519))

(declare-fun m!1041521 () Bool)

(assert (=> b!1127630 m!1041521))

(declare-fun m!1041523 () Bool)

(assert (=> b!1127630 m!1041523))

(check-sat tp_is_empty!28353 (not b_next!23823) (not mapNonEmpty!44347) (not b!1127617) (not bm!47749) (not b!1127619) (not start!98158) b_and!38453 (not b!1127623) (not b!1127630) (not b_lambda!18827) (not b!1127632) (not b!1127620) (not b!1127625) (not b!1127622) (not b!1127627) (not b!1127633) (not bm!47750) (not b!1127624))
(check-sat b_and!38453 (not b_next!23823))
