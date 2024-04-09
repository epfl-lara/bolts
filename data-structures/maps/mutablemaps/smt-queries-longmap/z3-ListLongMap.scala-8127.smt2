; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99666 () Bool)

(assert start!99666)

(declare-fun b_free!25209 () Bool)

(declare-fun b_next!25209 () Bool)

(assert (=> start!99666 (= b_free!25209 (not b_next!25209))))

(declare-fun tp!88341 () Bool)

(declare-fun b_and!41299 () Bool)

(assert (=> start!99666 (= tp!88341 b_and!41299)))

(declare-fun b!1180621 () Bool)

(declare-fun e!671257 () Bool)

(declare-fun tp_is_empty!29739 () Bool)

(assert (=> b!1180621 (= e!671257 tp_is_empty!29739)))

(declare-fun mapNonEmpty!46436 () Bool)

(declare-fun mapRes!46436 () Bool)

(declare-fun tp!88342 () Bool)

(declare-fun e!671265 () Bool)

(assert (=> mapNonEmpty!46436 (= mapRes!46436 (and tp!88342 e!671265))))

(declare-datatypes ((V!44779 0))(
  ( (V!44780 (val!14926 Int)) )
))
(declare-datatypes ((ValueCell!14160 0))(
  ( (ValueCellFull!14160 (v!17565 V!44779)) (EmptyCell!14160) )
))
(declare-fun mapRest!46436 () (Array (_ BitVec 32) ValueCell!14160))

(declare-fun mapValue!46436 () ValueCell!14160)

(declare-fun mapKey!46436 () (_ BitVec 32))

(declare-datatypes ((array!76246 0))(
  ( (array!76247 (arr!36769 (Array (_ BitVec 32) ValueCell!14160)) (size!37306 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76246)

(assert (=> mapNonEmpty!46436 (= (arr!36769 _values!996) (store mapRest!46436 mapKey!46436 mapValue!46436))))

(declare-fun b!1180622 () Bool)

(declare-datatypes ((Unit!38954 0))(
  ( (Unit!38955) )
))
(declare-fun e!671266 () Unit!38954)

(declare-fun Unit!38956 () Unit!38954)

(assert (=> b!1180622 (= e!671266 Unit!38956)))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun e!671260 () Bool)

(declare-fun b!1180623 () Bool)

(declare-datatypes ((array!76248 0))(
  ( (array!76249 (arr!36770 (Array (_ BitVec 32) (_ BitVec 64))) (size!37307 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76248)

(declare-fun arrayContainsKey!0 (array!76248 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1180623 (= e!671260 (arrayContainsKey!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1180624 () Bool)

(declare-fun e!671254 () Bool)

(assert (=> b!1180624 (= e!671254 (and e!671257 mapRes!46436))))

(declare-fun condMapEmpty!46436 () Bool)

(declare-fun mapDefault!46436 () ValueCell!14160)

(assert (=> b!1180624 (= condMapEmpty!46436 (= (arr!36769 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14160)) mapDefault!46436)))))

(declare-fun b!1180625 () Bool)

(declare-fun e!671264 () Bool)

(declare-fun e!671255 () Bool)

(assert (=> b!1180625 (= e!671264 (not e!671255))))

(declare-fun res!784578 () Bool)

(assert (=> b!1180625 (=> res!784578 e!671255)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1180625 (= res!784578 (bvsgt from!1455 i!673))))

(assert (=> b!1180625 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!533826 () Unit!38954)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76248 (_ BitVec 64) (_ BitVec 32)) Unit!38954)

(assert (=> b!1180625 (= lt!533826 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1180626 () Bool)

(declare-fun res!784585 () Bool)

(declare-fun e!671259 () Bool)

(assert (=> b!1180626 (=> (not res!784585) (not e!671259))))

(assert (=> b!1180626 (= res!784585 (= (select (arr!36770 _keys!1208) i!673) k0!934))))

(declare-fun b!1180627 () Bool)

(declare-fun e!671256 () Bool)

(assert (=> b!1180627 (= e!671255 e!671256)))

(declare-fun res!784584 () Bool)

(assert (=> b!1180627 (=> res!784584 e!671256)))

(assert (=> b!1180627 (= res!784584 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!44779)

(declare-fun lt!533817 () array!76248)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun lt!533818 () array!76246)

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((tuple2!19236 0))(
  ( (tuple2!19237 (_1!9628 (_ BitVec 64)) (_2!9628 V!44779)) )
))
(declare-datatypes ((List!25997 0))(
  ( (Nil!25994) (Cons!25993 (h!27202 tuple2!19236) (t!38205 List!25997)) )
))
(declare-datatypes ((ListLongMap!17217 0))(
  ( (ListLongMap!17218 (toList!8624 List!25997)) )
))
(declare-fun lt!533816 () ListLongMap!17217)

(declare-fun minValue!944 () V!44779)

(declare-fun getCurrentListMapNoExtraKeys!5050 (array!76248 array!76246 (_ BitVec 32) (_ BitVec 32) V!44779 V!44779 (_ BitVec 32) Int) ListLongMap!17217)

(assert (=> b!1180627 (= lt!533816 (getCurrentListMapNoExtraKeys!5050 lt!533817 lt!533818 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!533821 () V!44779)

(assert (=> b!1180627 (= lt!533818 (array!76247 (store (arr!36769 _values!996) i!673 (ValueCellFull!14160 lt!533821)) (size!37306 _values!996)))))

(declare-fun dynLambda!3020 (Int (_ BitVec 64)) V!44779)

(assert (=> b!1180627 (= lt!533821 (dynLambda!3020 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!533828 () ListLongMap!17217)

(assert (=> b!1180627 (= lt!533828 (getCurrentListMapNoExtraKeys!5050 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1180628 () Bool)

(declare-fun res!784571 () Bool)

(assert (=> b!1180628 (=> (not res!784571) (not e!671259))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1180628 (= res!784571 (validKeyInArray!0 k0!934))))

(declare-fun b!1180629 () Bool)

(declare-fun res!784573 () Bool)

(assert (=> b!1180629 (=> (not res!784573) (not e!671259))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1180629 (= res!784573 (validMask!0 mask!1564))))

(declare-fun res!784575 () Bool)

(assert (=> start!99666 (=> (not res!784575) (not e!671259))))

(assert (=> start!99666 (= res!784575 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37307 _keys!1208))))))

(assert (=> start!99666 e!671259))

(assert (=> start!99666 tp_is_empty!29739))

(declare-fun array_inv!27954 (array!76248) Bool)

(assert (=> start!99666 (array_inv!27954 _keys!1208)))

(assert (=> start!99666 true))

(assert (=> start!99666 tp!88341))

(declare-fun array_inv!27955 (array!76246) Bool)

(assert (=> start!99666 (and (array_inv!27955 _values!996) e!671254)))

(declare-fun b!1180630 () Bool)

(declare-fun res!784579 () Bool)

(assert (=> b!1180630 (=> (not res!784579) (not e!671259))))

(declare-datatypes ((List!25998 0))(
  ( (Nil!25995) (Cons!25994 (h!27203 (_ BitVec 64)) (t!38206 List!25998)) )
))
(declare-fun arrayNoDuplicates!0 (array!76248 (_ BitVec 32) List!25998) Bool)

(assert (=> b!1180630 (= res!784579 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25995))))

(declare-fun b!1180631 () Bool)

(assert (=> b!1180631 (= e!671265 tp_is_empty!29739)))

(declare-fun b!1180632 () Bool)

(declare-fun Unit!38957 () Unit!38954)

(assert (=> b!1180632 (= e!671266 Unit!38957)))

(declare-fun lt!533825 () Unit!38954)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!76248 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!38954)

(assert (=> b!1180632 (= lt!533825 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k0!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1180632 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!533815 () Unit!38954)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!76248 (_ BitVec 32) (_ BitVec 32)) Unit!38954)

(assert (=> b!1180632 (= lt!533815 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1180632 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25995)))

(declare-fun lt!533822 () Unit!38954)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!76248 (_ BitVec 64) (_ BitVec 32) List!25998) Unit!38954)

(assert (=> b!1180632 (= lt!533822 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!25995))))

(assert (=> b!1180632 false))

(declare-fun b!1180633 () Bool)

(declare-fun res!784577 () Bool)

(assert (=> b!1180633 (=> (not res!784577) (not e!671259))))

(assert (=> b!1180633 (= res!784577 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37307 _keys!1208))))))

(declare-fun b!1180634 () Bool)

(declare-fun res!784580 () Bool)

(assert (=> b!1180634 (=> (not res!784580) (not e!671259))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76248 (_ BitVec 32)) Bool)

(assert (=> b!1180634 (= res!784580 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1180635 () Bool)

(declare-fun e!671262 () Bool)

(assert (=> b!1180635 (= e!671262 e!671260)))

(declare-fun res!784574 () Bool)

(assert (=> b!1180635 (=> res!784574 e!671260)))

(assert (=> b!1180635 (= res!784574 (not (= (select (arr!36770 _keys!1208) from!1455) k0!934)))))

(declare-fun b!1180636 () Bool)

(declare-fun res!784583 () Bool)

(declare-fun e!671263 () Bool)

(assert (=> b!1180636 (=> (not res!784583) (not e!671263))))

(declare-fun lt!533824 () tuple2!19236)

(declare-fun lt!533827 () ListLongMap!17217)

(declare-fun +!3843 (ListLongMap!17217 tuple2!19236) ListLongMap!17217)

(assert (=> b!1180636 (= res!784583 (= lt!533828 (+!3843 lt!533827 lt!533824)))))

(declare-fun b!1180637 () Bool)

(declare-fun res!784581 () Bool)

(assert (=> b!1180637 (=> (not res!784581) (not e!671259))))

(assert (=> b!1180637 (= res!784581 (and (= (size!37306 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37307 _keys!1208) (size!37306 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1180638 () Bool)

(declare-fun e!671258 () Bool)

(assert (=> b!1180638 (= e!671256 e!671258)))

(declare-fun res!784569 () Bool)

(assert (=> b!1180638 (=> res!784569 e!671258)))

(assert (=> b!1180638 (= res!784569 (not (validKeyInArray!0 (select (arr!36770 _keys!1208) from!1455))))))

(declare-fun lt!533823 () ListLongMap!17217)

(declare-fun lt!533829 () ListLongMap!17217)

(assert (=> b!1180638 (= lt!533823 lt!533829)))

(declare-fun -!1615 (ListLongMap!17217 (_ BitVec 64)) ListLongMap!17217)

(assert (=> b!1180638 (= lt!533829 (-!1615 lt!533827 k0!934))))

(assert (=> b!1180638 (= lt!533823 (getCurrentListMapNoExtraKeys!5050 lt!533817 lt!533818 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1180638 (= lt!533827 (getCurrentListMapNoExtraKeys!5050 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!533820 () Unit!38954)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!839 (array!76248 array!76246 (_ BitVec 32) (_ BitVec 32) V!44779 V!44779 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38954)

(assert (=> b!1180638 (= lt!533820 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!839 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1180639 () Bool)

(assert (=> b!1180639 (= e!671263 (= lt!533829 lt!533823))))

(declare-fun b!1180640 () Bool)

(declare-fun res!784576 () Bool)

(assert (=> b!1180640 (=> (not res!784576) (not e!671264))))

(assert (=> b!1180640 (= res!784576 (arrayNoDuplicates!0 lt!533817 #b00000000000000000000000000000000 Nil!25995))))

(declare-fun b!1180641 () Bool)

(assert (=> b!1180641 (= e!671258 true)))

(assert (=> b!1180641 e!671263))

(declare-fun res!784582 () Bool)

(assert (=> b!1180641 (=> (not res!784582) (not e!671263))))

(assert (=> b!1180641 (= res!784582 (not (= (select (arr!36770 _keys!1208) from!1455) k0!934)))))

(declare-fun lt!533819 () Unit!38954)

(assert (=> b!1180641 (= lt!533819 e!671266)))

(declare-fun c!116885 () Bool)

(assert (=> b!1180641 (= c!116885 (= (select (arr!36770 _keys!1208) from!1455) k0!934))))

(assert (=> b!1180641 e!671262))

(declare-fun res!784570 () Bool)

(assert (=> b!1180641 (=> (not res!784570) (not e!671262))))

(assert (=> b!1180641 (= res!784570 (= lt!533816 (+!3843 lt!533829 lt!533824)))))

(declare-fun get!18837 (ValueCell!14160 V!44779) V!44779)

(assert (=> b!1180641 (= lt!533824 (tuple2!19237 (select (arr!36770 _keys!1208) from!1455) (get!18837 (select (arr!36769 _values!996) from!1455) lt!533821)))))

(declare-fun b!1180642 () Bool)

(assert (=> b!1180642 (= e!671259 e!671264)))

(declare-fun res!784572 () Bool)

(assert (=> b!1180642 (=> (not res!784572) (not e!671264))))

(assert (=> b!1180642 (= res!784572 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!533817 mask!1564))))

(assert (=> b!1180642 (= lt!533817 (array!76249 (store (arr!36770 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37307 _keys!1208)))))

(declare-fun mapIsEmpty!46436 () Bool)

(assert (=> mapIsEmpty!46436 mapRes!46436))

(assert (= (and start!99666 res!784575) b!1180629))

(assert (= (and b!1180629 res!784573) b!1180637))

(assert (= (and b!1180637 res!784581) b!1180634))

(assert (= (and b!1180634 res!784580) b!1180630))

(assert (= (and b!1180630 res!784579) b!1180633))

(assert (= (and b!1180633 res!784577) b!1180628))

(assert (= (and b!1180628 res!784571) b!1180626))

(assert (= (and b!1180626 res!784585) b!1180642))

(assert (= (and b!1180642 res!784572) b!1180640))

(assert (= (and b!1180640 res!784576) b!1180625))

(assert (= (and b!1180625 (not res!784578)) b!1180627))

(assert (= (and b!1180627 (not res!784584)) b!1180638))

(assert (= (and b!1180638 (not res!784569)) b!1180641))

(assert (= (and b!1180641 res!784570) b!1180635))

(assert (= (and b!1180635 (not res!784574)) b!1180623))

(assert (= (and b!1180641 c!116885) b!1180632))

(assert (= (and b!1180641 (not c!116885)) b!1180622))

(assert (= (and b!1180641 res!784582) b!1180636))

(assert (= (and b!1180636 res!784583) b!1180639))

(assert (= (and b!1180624 condMapEmpty!46436) mapIsEmpty!46436))

(assert (= (and b!1180624 (not condMapEmpty!46436)) mapNonEmpty!46436))

(get-info :version)

(assert (= (and mapNonEmpty!46436 ((_ is ValueCellFull!14160) mapValue!46436)) b!1180631))

(assert (= (and b!1180624 ((_ is ValueCellFull!14160) mapDefault!46436)) b!1180621))

(assert (= start!99666 b!1180624))

(declare-fun b_lambda!20371 () Bool)

(assert (=> (not b_lambda!20371) (not b!1180627)))

(declare-fun t!38204 () Bool)

(declare-fun tb!10029 () Bool)

(assert (=> (and start!99666 (= defaultEntry!1004 defaultEntry!1004) t!38204) tb!10029))

(declare-fun result!20617 () Bool)

(assert (=> tb!10029 (= result!20617 tp_is_empty!29739)))

(assert (=> b!1180627 t!38204))

(declare-fun b_and!41301 () Bool)

(assert (= b_and!41299 (and (=> t!38204 result!20617) b_and!41301)))

(declare-fun m!1088621 () Bool)

(assert (=> b!1180626 m!1088621))

(declare-fun m!1088623 () Bool)

(assert (=> b!1180630 m!1088623))

(declare-fun m!1088625 () Bool)

(assert (=> b!1180642 m!1088625))

(declare-fun m!1088627 () Bool)

(assert (=> b!1180642 m!1088627))

(declare-fun m!1088629 () Bool)

(assert (=> b!1180634 m!1088629))

(declare-fun m!1088631 () Bool)

(assert (=> b!1180625 m!1088631))

(declare-fun m!1088633 () Bool)

(assert (=> b!1180625 m!1088633))

(declare-fun m!1088635 () Bool)

(assert (=> b!1180629 m!1088635))

(declare-fun m!1088637 () Bool)

(assert (=> b!1180638 m!1088637))

(declare-fun m!1088639 () Bool)

(assert (=> b!1180638 m!1088639))

(declare-fun m!1088641 () Bool)

(assert (=> b!1180638 m!1088641))

(declare-fun m!1088643 () Bool)

(assert (=> b!1180638 m!1088643))

(declare-fun m!1088645 () Bool)

(assert (=> b!1180638 m!1088645))

(declare-fun m!1088647 () Bool)

(assert (=> b!1180638 m!1088647))

(assert (=> b!1180638 m!1088645))

(declare-fun m!1088649 () Bool)

(assert (=> b!1180632 m!1088649))

(declare-fun m!1088651 () Bool)

(assert (=> b!1180632 m!1088651))

(declare-fun m!1088653 () Bool)

(assert (=> b!1180632 m!1088653))

(declare-fun m!1088655 () Bool)

(assert (=> b!1180632 m!1088655))

(declare-fun m!1088657 () Bool)

(assert (=> b!1180632 m!1088657))

(declare-fun m!1088659 () Bool)

(assert (=> b!1180623 m!1088659))

(declare-fun m!1088661 () Bool)

(assert (=> b!1180628 m!1088661))

(declare-fun m!1088663 () Bool)

(assert (=> b!1180640 m!1088663))

(declare-fun m!1088665 () Bool)

(assert (=> start!99666 m!1088665))

(declare-fun m!1088667 () Bool)

(assert (=> start!99666 m!1088667))

(assert (=> b!1180635 m!1088645))

(assert (=> b!1180641 m!1088645))

(declare-fun m!1088669 () Bool)

(assert (=> b!1180641 m!1088669))

(declare-fun m!1088671 () Bool)

(assert (=> b!1180641 m!1088671))

(assert (=> b!1180641 m!1088671))

(declare-fun m!1088673 () Bool)

(assert (=> b!1180641 m!1088673))

(declare-fun m!1088675 () Bool)

(assert (=> b!1180636 m!1088675))

(declare-fun m!1088677 () Bool)

(assert (=> mapNonEmpty!46436 m!1088677))

(declare-fun m!1088679 () Bool)

(assert (=> b!1180627 m!1088679))

(declare-fun m!1088681 () Bool)

(assert (=> b!1180627 m!1088681))

(declare-fun m!1088683 () Bool)

(assert (=> b!1180627 m!1088683))

(declare-fun m!1088685 () Bool)

(assert (=> b!1180627 m!1088685))

(check-sat (not b!1180628) (not b!1180630) tp_is_empty!29739 (not b!1180638) (not b!1180632) (not b!1180640) (not b!1180627) (not b!1180623) (not b!1180625) (not b!1180636) (not mapNonEmpty!46436) (not start!99666) b_and!41301 (not b!1180629) (not b!1180641) (not b!1180634) (not b_next!25209) (not b_lambda!20371) (not b!1180642))
(check-sat b_and!41301 (not b_next!25209))
