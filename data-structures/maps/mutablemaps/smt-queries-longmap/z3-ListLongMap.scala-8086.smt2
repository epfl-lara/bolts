; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99420 () Bool)

(assert start!99420)

(declare-fun b_free!24963 () Bool)

(declare-fun b_next!24963 () Bool)

(assert (=> start!99420 (= b_free!24963 (not b_next!24963))))

(declare-fun tp!87603 () Bool)

(declare-fun b_and!40807 () Bool)

(assert (=> start!99420 (= tp!87603 b_and!40807)))

(declare-fun b!1172733 () Bool)

(declare-fun e!666624 () Bool)

(declare-fun e!666625 () Bool)

(assert (=> b!1172733 (= e!666624 (not e!666625))))

(declare-fun res!778777 () Bool)

(assert (=> b!1172733 (=> res!778777 e!666625)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1172733 (= res!778777 (bvsgt from!1455 i!673))))

(declare-datatypes ((array!75762 0))(
  ( (array!75763 (arr!36527 (Array (_ BitVec 32) (_ BitVec 64))) (size!37064 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75762)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!75762 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1172733 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!38572 0))(
  ( (Unit!38573) )
))
(declare-fun lt!528446 () Unit!38572)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75762 (_ BitVec 64) (_ BitVec 32)) Unit!38572)

(assert (=> b!1172733 (= lt!528446 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1172734 () Bool)

(declare-fun e!666617 () Bool)

(declare-fun tp_is_empty!29493 () Bool)

(assert (=> b!1172734 (= e!666617 tp_is_empty!29493)))

(declare-fun mapNonEmpty!46067 () Bool)

(declare-fun mapRes!46067 () Bool)

(declare-fun tp!87604 () Bool)

(declare-fun e!666620 () Bool)

(assert (=> mapNonEmpty!46067 (= mapRes!46067 (and tp!87604 e!666620))))

(declare-fun mapKey!46067 () (_ BitVec 32))

(declare-datatypes ((V!44451 0))(
  ( (V!44452 (val!14803 Int)) )
))
(declare-datatypes ((ValueCell!14037 0))(
  ( (ValueCellFull!14037 (v!17442 V!44451)) (EmptyCell!14037) )
))
(declare-fun mapRest!46067 () (Array (_ BitVec 32) ValueCell!14037))

(declare-fun mapValue!46067 () ValueCell!14037)

(declare-datatypes ((array!75764 0))(
  ( (array!75765 (arr!36528 (Array (_ BitVec 32) ValueCell!14037)) (size!37065 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75764)

(assert (=> mapNonEmpty!46067 (= (arr!36528 _values!996) (store mapRest!46067 mapKey!46067 mapValue!46067))))

(declare-fun b!1172735 () Bool)

(declare-fun e!666616 () Bool)

(declare-fun e!666622 () Bool)

(assert (=> b!1172735 (= e!666616 e!666622)))

(declare-fun res!778772 () Bool)

(assert (=> b!1172735 (=> res!778772 e!666622)))

(assert (=> b!1172735 (= res!778772 (not (= (select (arr!36527 _keys!1208) from!1455) k0!934)))))

(declare-fun b!1172736 () Bool)

(declare-fun res!778779 () Bool)

(assert (=> b!1172736 (=> (not res!778779) (not e!666624))))

(declare-fun lt!528440 () array!75762)

(declare-datatypes ((List!25785 0))(
  ( (Nil!25782) (Cons!25781 (h!26990 (_ BitVec 64)) (t!37747 List!25785)) )
))
(declare-fun arrayNoDuplicates!0 (array!75762 (_ BitVec 32) List!25785) Bool)

(assert (=> b!1172736 (= res!778779 (arrayNoDuplicates!0 lt!528440 #b00000000000000000000000000000000 Nil!25782))))

(declare-fun b!1172737 () Bool)

(declare-fun res!778786 () Bool)

(declare-fun e!666623 () Bool)

(assert (=> b!1172737 (=> (not res!778786) (not e!666623))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1172737 (= res!778786 (validMask!0 mask!1564))))

(declare-fun b!1172738 () Bool)

(assert (=> b!1172738 (= e!666622 (arrayContainsKey!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1172739 () Bool)

(declare-fun res!778778 () Bool)

(assert (=> b!1172739 (=> (not res!778778) (not e!666623))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1172739 (= res!778778 (and (= (size!37065 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37064 _keys!1208) (size!37065 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1172740 () Bool)

(assert (=> b!1172740 (= e!666620 tp_is_empty!29493)))

(declare-fun b!1172741 () Bool)

(declare-fun e!666621 () Unit!38572)

(declare-fun Unit!38574 () Unit!38572)

(assert (=> b!1172741 (= e!666621 Unit!38574)))

(declare-fun lt!528449 () Unit!38572)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!75762 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!38572)

(assert (=> b!1172741 (= lt!528449 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k0!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1172741 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!528447 () Unit!38572)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!75762 (_ BitVec 32) (_ BitVec 32)) Unit!38572)

(assert (=> b!1172741 (= lt!528447 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1172741 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25782)))

(declare-fun lt!528438 () Unit!38572)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!75762 (_ BitVec 64) (_ BitVec 32) List!25785) Unit!38572)

(assert (=> b!1172741 (= lt!528438 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!25782))))

(assert (=> b!1172741 false))

(declare-fun b!1172742 () Bool)

(assert (=> b!1172742 (= e!666623 e!666624)))

(declare-fun res!778780 () Bool)

(assert (=> b!1172742 (=> (not res!778780) (not e!666624))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75762 (_ BitVec 32)) Bool)

(assert (=> b!1172742 (= res!778780 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!528440 mask!1564))))

(assert (=> b!1172742 (= lt!528440 (array!75763 (store (arr!36527 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37064 _keys!1208)))))

(declare-fun b!1172743 () Bool)

(declare-fun e!666614 () Bool)

(assert (=> b!1172743 (= e!666614 true)))

(assert (=> b!1172743 (not (= (select (arr!36527 _keys!1208) from!1455) k0!934))))

(declare-fun lt!528448 () Unit!38572)

(assert (=> b!1172743 (= lt!528448 e!666621)))

(declare-fun c!116516 () Bool)

(assert (=> b!1172743 (= c!116516 (= (select (arr!36527 _keys!1208) from!1455) k0!934))))

(assert (=> b!1172743 e!666616))

(declare-fun res!778782 () Bool)

(assert (=> b!1172743 (=> (not res!778782) (not e!666616))))

(declare-fun lt!528442 () V!44451)

(declare-datatypes ((tuple2!19012 0))(
  ( (tuple2!19013 (_1!9516 (_ BitVec 64)) (_2!9516 V!44451)) )
))
(declare-datatypes ((List!25786 0))(
  ( (Nil!25783) (Cons!25782 (h!26991 tuple2!19012) (t!37748 List!25786)) )
))
(declare-datatypes ((ListLongMap!16993 0))(
  ( (ListLongMap!16994 (toList!8512 List!25786)) )
))
(declare-fun lt!528441 () ListLongMap!16993)

(declare-fun lt!528445 () ListLongMap!16993)

(declare-fun +!3748 (ListLongMap!16993 tuple2!19012) ListLongMap!16993)

(declare-fun get!18669 (ValueCell!14037 V!44451) V!44451)

(assert (=> b!1172743 (= res!778782 (= lt!528445 (+!3748 lt!528441 (tuple2!19013 (select (arr!36527 _keys!1208) from!1455) (get!18669 (select (arr!36528 _values!996) from!1455) lt!528442)))))))

(declare-fun b!1172744 () Bool)

(declare-fun res!778781 () Bool)

(assert (=> b!1172744 (=> (not res!778781) (not e!666623))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1172744 (= res!778781 (validKeyInArray!0 k0!934))))

(declare-fun b!1172745 () Bool)

(declare-fun res!778776 () Bool)

(assert (=> b!1172745 (=> (not res!778776) (not e!666623))))

(assert (=> b!1172745 (= res!778776 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25782))))

(declare-fun b!1172746 () Bool)

(declare-fun e!666619 () Bool)

(assert (=> b!1172746 (= e!666625 e!666619)))

(declare-fun res!778785 () Bool)

(assert (=> b!1172746 (=> res!778785 e!666619)))

(assert (=> b!1172746 (= res!778785 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!44451)

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!528437 () array!75764)

(declare-fun minValue!944 () V!44451)

(declare-fun getCurrentListMapNoExtraKeys!4944 (array!75762 array!75764 (_ BitVec 32) (_ BitVec 32) V!44451 V!44451 (_ BitVec 32) Int) ListLongMap!16993)

(assert (=> b!1172746 (= lt!528445 (getCurrentListMapNoExtraKeys!4944 lt!528440 lt!528437 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1172746 (= lt!528437 (array!75765 (store (arr!36528 _values!996) i!673 (ValueCellFull!14037 lt!528442)) (size!37065 _values!996)))))

(declare-fun dynLambda!2931 (Int (_ BitVec 64)) V!44451)

(assert (=> b!1172746 (= lt!528442 (dynLambda!2931 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!528443 () ListLongMap!16993)

(assert (=> b!1172746 (= lt!528443 (getCurrentListMapNoExtraKeys!4944 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1172747 () Bool)

(declare-fun res!778783 () Bool)

(assert (=> b!1172747 (=> (not res!778783) (not e!666623))))

(assert (=> b!1172747 (= res!778783 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun res!778784 () Bool)

(assert (=> start!99420 (=> (not res!778784) (not e!666623))))

(assert (=> start!99420 (= res!778784 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37064 _keys!1208))))))

(assert (=> start!99420 e!666623))

(assert (=> start!99420 tp_is_empty!29493))

(declare-fun array_inv!27796 (array!75762) Bool)

(assert (=> start!99420 (array_inv!27796 _keys!1208)))

(assert (=> start!99420 true))

(assert (=> start!99420 tp!87603))

(declare-fun e!666615 () Bool)

(declare-fun array_inv!27797 (array!75764) Bool)

(assert (=> start!99420 (and (array_inv!27797 _values!996) e!666615)))

(declare-fun b!1172748 () Bool)

(assert (=> b!1172748 (= e!666615 (and e!666617 mapRes!46067))))

(declare-fun condMapEmpty!46067 () Bool)

(declare-fun mapDefault!46067 () ValueCell!14037)

(assert (=> b!1172748 (= condMapEmpty!46067 (= (arr!36528 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14037)) mapDefault!46067)))))

(declare-fun mapIsEmpty!46067 () Bool)

(assert (=> mapIsEmpty!46067 mapRes!46067))

(declare-fun b!1172749 () Bool)

(declare-fun res!778774 () Bool)

(assert (=> b!1172749 (=> (not res!778774) (not e!666623))))

(assert (=> b!1172749 (= res!778774 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37064 _keys!1208))))))

(declare-fun b!1172750 () Bool)

(assert (=> b!1172750 (= e!666619 e!666614)))

(declare-fun res!778775 () Bool)

(assert (=> b!1172750 (=> res!778775 e!666614)))

(assert (=> b!1172750 (= res!778775 (not (validKeyInArray!0 (select (arr!36527 _keys!1208) from!1455))))))

(declare-fun lt!528439 () ListLongMap!16993)

(assert (=> b!1172750 (= lt!528439 lt!528441)))

(declare-fun lt!528444 () ListLongMap!16993)

(declare-fun -!1526 (ListLongMap!16993 (_ BitVec 64)) ListLongMap!16993)

(assert (=> b!1172750 (= lt!528441 (-!1526 lt!528444 k0!934))))

(assert (=> b!1172750 (= lt!528439 (getCurrentListMapNoExtraKeys!4944 lt!528440 lt!528437 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1172750 (= lt!528444 (getCurrentListMapNoExtraKeys!4944 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!528450 () Unit!38572)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!750 (array!75762 array!75764 (_ BitVec 32) (_ BitVec 32) V!44451 V!44451 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38572)

(assert (=> b!1172750 (= lt!528450 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!750 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1172751 () Bool)

(declare-fun Unit!38575 () Unit!38572)

(assert (=> b!1172751 (= e!666621 Unit!38575)))

(declare-fun b!1172752 () Bool)

(declare-fun res!778773 () Bool)

(assert (=> b!1172752 (=> (not res!778773) (not e!666623))))

(assert (=> b!1172752 (= res!778773 (= (select (arr!36527 _keys!1208) i!673) k0!934))))

(assert (= (and start!99420 res!778784) b!1172737))

(assert (= (and b!1172737 res!778786) b!1172739))

(assert (= (and b!1172739 res!778778) b!1172747))

(assert (= (and b!1172747 res!778783) b!1172745))

(assert (= (and b!1172745 res!778776) b!1172749))

(assert (= (and b!1172749 res!778774) b!1172744))

(assert (= (and b!1172744 res!778781) b!1172752))

(assert (= (and b!1172752 res!778773) b!1172742))

(assert (= (and b!1172742 res!778780) b!1172736))

(assert (= (and b!1172736 res!778779) b!1172733))

(assert (= (and b!1172733 (not res!778777)) b!1172746))

(assert (= (and b!1172746 (not res!778785)) b!1172750))

(assert (= (and b!1172750 (not res!778775)) b!1172743))

(assert (= (and b!1172743 res!778782) b!1172735))

(assert (= (and b!1172735 (not res!778772)) b!1172738))

(assert (= (and b!1172743 c!116516) b!1172741))

(assert (= (and b!1172743 (not c!116516)) b!1172751))

(assert (= (and b!1172748 condMapEmpty!46067) mapIsEmpty!46067))

(assert (= (and b!1172748 (not condMapEmpty!46067)) mapNonEmpty!46067))

(get-info :version)

(assert (= (and mapNonEmpty!46067 ((_ is ValueCellFull!14037) mapValue!46067)) b!1172740))

(assert (= (and b!1172748 ((_ is ValueCellFull!14037) mapDefault!46067)) b!1172734))

(assert (= start!99420 b!1172748))

(declare-fun b_lambda!20125 () Bool)

(assert (=> (not b_lambda!20125) (not b!1172746)))

(declare-fun t!37746 () Bool)

(declare-fun tb!9783 () Bool)

(assert (=> (and start!99420 (= defaultEntry!1004 defaultEntry!1004) t!37746) tb!9783))

(declare-fun result!20125 () Bool)

(assert (=> tb!9783 (= result!20125 tp_is_empty!29493)))

(assert (=> b!1172746 t!37746))

(declare-fun b_and!40809 () Bool)

(assert (= b_and!40807 (and (=> t!37746 result!20125) b_and!40809)))

(declare-fun m!1080609 () Bool)

(assert (=> b!1172736 m!1080609))

(declare-fun m!1080611 () Bool)

(assert (=> b!1172741 m!1080611))

(declare-fun m!1080613 () Bool)

(assert (=> b!1172741 m!1080613))

(declare-fun m!1080615 () Bool)

(assert (=> b!1172741 m!1080615))

(declare-fun m!1080617 () Bool)

(assert (=> b!1172741 m!1080617))

(declare-fun m!1080619 () Bool)

(assert (=> b!1172741 m!1080619))

(declare-fun m!1080621 () Bool)

(assert (=> b!1172747 m!1080621))

(declare-fun m!1080623 () Bool)

(assert (=> b!1172738 m!1080623))

(declare-fun m!1080625 () Bool)

(assert (=> b!1172750 m!1080625))

(declare-fun m!1080627 () Bool)

(assert (=> b!1172750 m!1080627))

(declare-fun m!1080629 () Bool)

(assert (=> b!1172750 m!1080629))

(declare-fun m!1080631 () Bool)

(assert (=> b!1172750 m!1080631))

(declare-fun m!1080633 () Bool)

(assert (=> b!1172750 m!1080633))

(declare-fun m!1080635 () Bool)

(assert (=> b!1172750 m!1080635))

(assert (=> b!1172750 m!1080631))

(declare-fun m!1080637 () Bool)

(assert (=> start!99420 m!1080637))

(declare-fun m!1080639 () Bool)

(assert (=> start!99420 m!1080639))

(assert (=> b!1172743 m!1080631))

(declare-fun m!1080641 () Bool)

(assert (=> b!1172743 m!1080641))

(assert (=> b!1172743 m!1080641))

(declare-fun m!1080643 () Bool)

(assert (=> b!1172743 m!1080643))

(declare-fun m!1080645 () Bool)

(assert (=> b!1172743 m!1080645))

(declare-fun m!1080647 () Bool)

(assert (=> mapNonEmpty!46067 m!1080647))

(assert (=> b!1172735 m!1080631))

(declare-fun m!1080649 () Bool)

(assert (=> b!1172744 m!1080649))

(declare-fun m!1080651 () Bool)

(assert (=> b!1172752 m!1080651))

(declare-fun m!1080653 () Bool)

(assert (=> b!1172733 m!1080653))

(declare-fun m!1080655 () Bool)

(assert (=> b!1172733 m!1080655))

(declare-fun m!1080657 () Bool)

(assert (=> b!1172742 m!1080657))

(declare-fun m!1080659 () Bool)

(assert (=> b!1172742 m!1080659))

(declare-fun m!1080661 () Bool)

(assert (=> b!1172745 m!1080661))

(declare-fun m!1080663 () Bool)

(assert (=> b!1172746 m!1080663))

(declare-fun m!1080665 () Bool)

(assert (=> b!1172746 m!1080665))

(declare-fun m!1080667 () Bool)

(assert (=> b!1172746 m!1080667))

(declare-fun m!1080669 () Bool)

(assert (=> b!1172746 m!1080669))

(declare-fun m!1080671 () Bool)

(assert (=> b!1172737 m!1080671))

(check-sat (not b!1172738) (not b!1172747) (not b!1172742) (not b!1172744) (not b!1172741) (not b!1172746) (not mapNonEmpty!46067) (not b!1172736) (not b!1172733) (not start!99420) (not b!1172745) (not b_lambda!20125) (not b!1172750) (not b!1172737) b_and!40809 tp_is_empty!29493 (not b_next!24963) (not b!1172743))
(check-sat b_and!40809 (not b_next!24963))
