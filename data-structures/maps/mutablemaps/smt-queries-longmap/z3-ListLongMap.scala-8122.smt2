; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99636 () Bool)

(assert start!99636)

(declare-fun b_free!25179 () Bool)

(declare-fun b_next!25179 () Bool)

(assert (=> start!99636 (= b_free!25179 (not b_next!25179))))

(declare-fun tp!88252 () Bool)

(declare-fun b_and!41239 () Bool)

(assert (=> start!99636 (= tp!88252 b_and!41239)))

(declare-fun b!1179601 () Bool)

(declare-fun res!783807 () Bool)

(declare-fun e!670681 () Bool)

(assert (=> b!1179601 (=> (not res!783807) (not e!670681))))

(declare-datatypes ((array!76190 0))(
  ( (array!76191 (arr!36741 (Array (_ BitVec 32) (_ BitVec 64))) (size!37278 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76190)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76190 (_ BitVec 32)) Bool)

(assert (=> b!1179601 (= res!783807 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun mapIsEmpty!46391 () Bool)

(declare-fun mapRes!46391 () Bool)

(assert (=> mapIsEmpty!46391 mapRes!46391))

(declare-fun b!1179602 () Bool)

(declare-fun e!670672 () Bool)

(declare-fun e!670675 () Bool)

(assert (=> b!1179602 (= e!670672 e!670675)))

(declare-fun res!783817 () Bool)

(assert (=> b!1179602 (=> res!783817 e!670675)))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1179602 (= res!783817 (not (= (select (arr!36741 _keys!1208) from!1455) k0!934)))))

(declare-fun b!1179604 () Bool)

(declare-fun e!670673 () Bool)

(assert (=> b!1179604 (= e!670681 e!670673)))

(declare-fun res!783818 () Bool)

(assert (=> b!1179604 (=> (not res!783818) (not e!670673))))

(declare-fun lt!533149 () array!76190)

(assert (=> b!1179604 (= res!783818 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!533149 mask!1564))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1179604 (= lt!533149 (array!76191 (store (arr!36741 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37278 _keys!1208)))))

(declare-fun b!1179605 () Bool)

(declare-fun res!783808 () Bool)

(assert (=> b!1179605 (=> (not res!783808) (not e!670681))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1179605 (= res!783808 (validMask!0 mask!1564))))

(declare-fun b!1179606 () Bool)

(declare-fun res!783814 () Bool)

(assert (=> b!1179606 (=> (not res!783814) (not e!670681))))

(assert (=> b!1179606 (= res!783814 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37278 _keys!1208))))))

(declare-fun b!1179607 () Bool)

(declare-fun res!783820 () Bool)

(declare-fun e!670669 () Bool)

(assert (=> b!1179607 (=> (not res!783820) (not e!670669))))

(declare-datatypes ((V!44739 0))(
  ( (V!44740 (val!14911 Int)) )
))
(declare-datatypes ((tuple2!19212 0))(
  ( (tuple2!19213 (_1!9616 (_ BitVec 64)) (_2!9616 V!44739)) )
))
(declare-datatypes ((List!25976 0))(
  ( (Nil!25973) (Cons!25972 (h!27181 tuple2!19212) (t!38154 List!25976)) )
))
(declare-datatypes ((ListLongMap!17193 0))(
  ( (ListLongMap!17194 (toList!8612 List!25976)) )
))
(declare-fun lt!533142 () ListLongMap!17193)

(declare-fun lt!533152 () tuple2!19212)

(declare-fun lt!533148 () ListLongMap!17193)

(declare-fun +!3832 (ListLongMap!17193 tuple2!19212) ListLongMap!17193)

(assert (=> b!1179607 (= res!783820 (= lt!533142 (+!3832 lt!533148 lt!533152)))))

(declare-fun b!1179608 () Bool)

(declare-datatypes ((Unit!38915 0))(
  ( (Unit!38916) )
))
(declare-fun e!670674 () Unit!38915)

(declare-fun Unit!38917 () Unit!38915)

(assert (=> b!1179608 (= e!670674 Unit!38917)))

(declare-fun b!1179609 () Bool)

(declare-fun res!783809 () Bool)

(assert (=> b!1179609 (=> (not res!783809) (not e!670681))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1179609 (= res!783809 (validKeyInArray!0 k0!934))))

(declare-fun b!1179610 () Bool)

(declare-fun e!670679 () Bool)

(assert (=> b!1179610 (= e!670673 (not e!670679))))

(declare-fun res!783812 () Bool)

(assert (=> b!1179610 (=> res!783812 e!670679)))

(assert (=> b!1179610 (= res!783812 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!76190 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1179610 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!533147 () Unit!38915)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76190 (_ BitVec 64) (_ BitVec 32)) Unit!38915)

(assert (=> b!1179610 (= lt!533147 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun res!783815 () Bool)

(assert (=> start!99636 (=> (not res!783815) (not e!670681))))

(assert (=> start!99636 (= res!783815 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37278 _keys!1208))))))

(assert (=> start!99636 e!670681))

(declare-fun tp_is_empty!29709 () Bool)

(assert (=> start!99636 tp_is_empty!29709))

(declare-fun array_inv!27938 (array!76190) Bool)

(assert (=> start!99636 (array_inv!27938 _keys!1208)))

(assert (=> start!99636 true))

(assert (=> start!99636 tp!88252))

(declare-datatypes ((ValueCell!14145 0))(
  ( (ValueCellFull!14145 (v!17550 V!44739)) (EmptyCell!14145) )
))
(declare-datatypes ((array!76192 0))(
  ( (array!76193 (arr!36742 (Array (_ BitVec 32) ValueCell!14145)) (size!37279 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76192)

(declare-fun e!670671 () Bool)

(declare-fun array_inv!27939 (array!76192) Bool)

(assert (=> start!99636 (and (array_inv!27939 _values!996) e!670671)))

(declare-fun b!1179603 () Bool)

(declare-fun lt!533145 () ListLongMap!17193)

(declare-fun lt!533151 () ListLongMap!17193)

(assert (=> b!1179603 (= e!670669 (= lt!533145 lt!533151))))

(declare-fun b!1179611 () Bool)

(assert (=> b!1179611 (= e!670675 (arrayContainsKey!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1179612 () Bool)

(declare-fun e!670676 () Bool)

(assert (=> b!1179612 (= e!670676 true)))

(assert (=> b!1179612 e!670669))

(declare-fun res!783806 () Bool)

(assert (=> b!1179612 (=> (not res!783806) (not e!670669))))

(assert (=> b!1179612 (= res!783806 (not (= (select (arr!36741 _keys!1208) from!1455) k0!934)))))

(declare-fun lt!533146 () Unit!38915)

(assert (=> b!1179612 (= lt!533146 e!670674)))

(declare-fun c!116840 () Bool)

(assert (=> b!1179612 (= c!116840 (= (select (arr!36741 _keys!1208) from!1455) k0!934))))

(assert (=> b!1179612 e!670672))

(declare-fun res!783816 () Bool)

(assert (=> b!1179612 (=> (not res!783816) (not e!670672))))

(declare-fun lt!533143 () ListLongMap!17193)

(assert (=> b!1179612 (= res!783816 (= lt!533143 (+!3832 lt!533145 lt!533152)))))

(declare-fun lt!533150 () V!44739)

(declare-fun get!18817 (ValueCell!14145 V!44739) V!44739)

(assert (=> b!1179612 (= lt!533152 (tuple2!19213 (select (arr!36741 _keys!1208) from!1455) (get!18817 (select (arr!36742 _values!996) from!1455) lt!533150)))))

(declare-fun mapNonEmpty!46391 () Bool)

(declare-fun tp!88251 () Bool)

(declare-fun e!670680 () Bool)

(assert (=> mapNonEmpty!46391 (= mapRes!46391 (and tp!88251 e!670680))))

(declare-fun mapValue!46391 () ValueCell!14145)

(declare-fun mapKey!46391 () (_ BitVec 32))

(declare-fun mapRest!46391 () (Array (_ BitVec 32) ValueCell!14145))

(assert (=> mapNonEmpty!46391 (= (arr!36742 _values!996) (store mapRest!46391 mapKey!46391 mapValue!46391))))

(declare-fun b!1179613 () Bool)

(declare-fun e!670677 () Bool)

(assert (=> b!1179613 (= e!670677 tp_is_empty!29709)))

(declare-fun b!1179614 () Bool)

(declare-fun res!783804 () Bool)

(assert (=> b!1179614 (=> (not res!783804) (not e!670673))))

(declare-datatypes ((List!25977 0))(
  ( (Nil!25974) (Cons!25973 (h!27182 (_ BitVec 64)) (t!38155 List!25977)) )
))
(declare-fun arrayNoDuplicates!0 (array!76190 (_ BitVec 32) List!25977) Bool)

(assert (=> b!1179614 (= res!783804 (arrayNoDuplicates!0 lt!533149 #b00000000000000000000000000000000 Nil!25974))))

(declare-fun b!1179615 () Bool)

(declare-fun Unit!38918 () Unit!38915)

(assert (=> b!1179615 (= e!670674 Unit!38918)))

(declare-fun lt!533153 () Unit!38915)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!76190 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!38915)

(assert (=> b!1179615 (= lt!533153 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k0!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1179615 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!533141 () Unit!38915)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!76190 (_ BitVec 32) (_ BitVec 32)) Unit!38915)

(assert (=> b!1179615 (= lt!533141 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1179615 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25974)))

(declare-fun lt!533154 () Unit!38915)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!76190 (_ BitVec 64) (_ BitVec 32) List!25977) Unit!38915)

(assert (=> b!1179615 (= lt!533154 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!25974))))

(assert (=> b!1179615 false))

(declare-fun b!1179616 () Bool)

(declare-fun res!783810 () Bool)

(assert (=> b!1179616 (=> (not res!783810) (not e!670681))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1179616 (= res!783810 (and (= (size!37279 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37278 _keys!1208) (size!37279 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1179617 () Bool)

(declare-fun res!783811 () Bool)

(assert (=> b!1179617 (=> (not res!783811) (not e!670681))))

(assert (=> b!1179617 (= res!783811 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25974))))

(declare-fun b!1179618 () Bool)

(declare-fun res!783813 () Bool)

(assert (=> b!1179618 (=> (not res!783813) (not e!670681))))

(assert (=> b!1179618 (= res!783813 (= (select (arr!36741 _keys!1208) i!673) k0!934))))

(declare-fun b!1179619 () Bool)

(assert (=> b!1179619 (= e!670671 (and e!670677 mapRes!46391))))

(declare-fun condMapEmpty!46391 () Bool)

(declare-fun mapDefault!46391 () ValueCell!14145)

(assert (=> b!1179619 (= condMapEmpty!46391 (= (arr!36742 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14145)) mapDefault!46391)))))

(declare-fun b!1179620 () Bool)

(assert (=> b!1179620 (= e!670680 tp_is_empty!29709)))

(declare-fun b!1179621 () Bool)

(declare-fun e!670670 () Bool)

(assert (=> b!1179621 (= e!670679 e!670670)))

(declare-fun res!783819 () Bool)

(assert (=> b!1179621 (=> res!783819 e!670670)))

(assert (=> b!1179621 (= res!783819 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!44739)

(declare-fun lt!533144 () array!76192)

(declare-fun minValue!944 () V!44739)

(declare-fun defaultEntry!1004 () Int)

(declare-fun getCurrentListMapNoExtraKeys!5040 (array!76190 array!76192 (_ BitVec 32) (_ BitVec 32) V!44739 V!44739 (_ BitVec 32) Int) ListLongMap!17193)

(assert (=> b!1179621 (= lt!533143 (getCurrentListMapNoExtraKeys!5040 lt!533149 lt!533144 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1179621 (= lt!533144 (array!76193 (store (arr!36742 _values!996) i!673 (ValueCellFull!14145 lt!533150)) (size!37279 _values!996)))))

(declare-fun dynLambda!3013 (Int (_ BitVec 64)) V!44739)

(assert (=> b!1179621 (= lt!533150 (dynLambda!3013 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1179621 (= lt!533142 (getCurrentListMapNoExtraKeys!5040 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1179622 () Bool)

(assert (=> b!1179622 (= e!670670 e!670676)))

(declare-fun res!783805 () Bool)

(assert (=> b!1179622 (=> res!783805 e!670676)))

(assert (=> b!1179622 (= res!783805 (not (validKeyInArray!0 (select (arr!36741 _keys!1208) from!1455))))))

(assert (=> b!1179622 (= lt!533151 lt!533145)))

(declare-fun -!1606 (ListLongMap!17193 (_ BitVec 64)) ListLongMap!17193)

(assert (=> b!1179622 (= lt!533145 (-!1606 lt!533148 k0!934))))

(assert (=> b!1179622 (= lt!533151 (getCurrentListMapNoExtraKeys!5040 lt!533149 lt!533144 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1179622 (= lt!533148 (getCurrentListMapNoExtraKeys!5040 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!533140 () Unit!38915)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!830 (array!76190 array!76192 (_ BitVec 32) (_ BitVec 32) V!44739 V!44739 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38915)

(assert (=> b!1179622 (= lt!533140 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!830 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (= (and start!99636 res!783815) b!1179605))

(assert (= (and b!1179605 res!783808) b!1179616))

(assert (= (and b!1179616 res!783810) b!1179601))

(assert (= (and b!1179601 res!783807) b!1179617))

(assert (= (and b!1179617 res!783811) b!1179606))

(assert (= (and b!1179606 res!783814) b!1179609))

(assert (= (and b!1179609 res!783809) b!1179618))

(assert (= (and b!1179618 res!783813) b!1179604))

(assert (= (and b!1179604 res!783818) b!1179614))

(assert (= (and b!1179614 res!783804) b!1179610))

(assert (= (and b!1179610 (not res!783812)) b!1179621))

(assert (= (and b!1179621 (not res!783819)) b!1179622))

(assert (= (and b!1179622 (not res!783805)) b!1179612))

(assert (= (and b!1179612 res!783816) b!1179602))

(assert (= (and b!1179602 (not res!783817)) b!1179611))

(assert (= (and b!1179612 c!116840) b!1179615))

(assert (= (and b!1179612 (not c!116840)) b!1179608))

(assert (= (and b!1179612 res!783806) b!1179607))

(assert (= (and b!1179607 res!783820) b!1179603))

(assert (= (and b!1179619 condMapEmpty!46391) mapIsEmpty!46391))

(assert (= (and b!1179619 (not condMapEmpty!46391)) mapNonEmpty!46391))

(get-info :version)

(assert (= (and mapNonEmpty!46391 ((_ is ValueCellFull!14145) mapValue!46391)) b!1179620))

(assert (= (and b!1179619 ((_ is ValueCellFull!14145) mapDefault!46391)) b!1179613))

(assert (= start!99636 b!1179619))

(declare-fun b_lambda!20341 () Bool)

(assert (=> (not b_lambda!20341) (not b!1179621)))

(declare-fun t!38153 () Bool)

(declare-fun tb!9999 () Bool)

(assert (=> (and start!99636 (= defaultEntry!1004 defaultEntry!1004) t!38153) tb!9999))

(declare-fun result!20557 () Bool)

(assert (=> tb!9999 (= result!20557 tp_is_empty!29709)))

(assert (=> b!1179621 t!38153))

(declare-fun b_and!41241 () Bool)

(assert (= b_and!41239 (and (=> t!38153 result!20557) b_and!41241)))

(declare-fun m!1087631 () Bool)

(assert (=> b!1179615 m!1087631))

(declare-fun m!1087633 () Bool)

(assert (=> b!1179615 m!1087633))

(declare-fun m!1087635 () Bool)

(assert (=> b!1179615 m!1087635))

(declare-fun m!1087637 () Bool)

(assert (=> b!1179615 m!1087637))

(declare-fun m!1087639 () Bool)

(assert (=> b!1179615 m!1087639))

(declare-fun m!1087641 () Bool)

(assert (=> b!1179601 m!1087641))

(declare-fun m!1087643 () Bool)

(assert (=> b!1179614 m!1087643))

(declare-fun m!1087645 () Bool)

(assert (=> b!1179609 m!1087645))

(declare-fun m!1087647 () Bool)

(assert (=> b!1179618 m!1087647))

(declare-fun m!1087649 () Bool)

(assert (=> mapNonEmpty!46391 m!1087649))

(declare-fun m!1087651 () Bool)

(assert (=> b!1179610 m!1087651))

(declare-fun m!1087653 () Bool)

(assert (=> b!1179610 m!1087653))

(declare-fun m!1087655 () Bool)

(assert (=> b!1179604 m!1087655))

(declare-fun m!1087657 () Bool)

(assert (=> b!1179604 m!1087657))

(declare-fun m!1087659 () Bool)

(assert (=> b!1179621 m!1087659))

(declare-fun m!1087661 () Bool)

(assert (=> b!1179621 m!1087661))

(declare-fun m!1087663 () Bool)

(assert (=> b!1179621 m!1087663))

(declare-fun m!1087665 () Bool)

(assert (=> b!1179621 m!1087665))

(declare-fun m!1087667 () Bool)

(assert (=> b!1179612 m!1087667))

(declare-fun m!1087669 () Bool)

(assert (=> b!1179612 m!1087669))

(declare-fun m!1087671 () Bool)

(assert (=> b!1179612 m!1087671))

(assert (=> b!1179612 m!1087671))

(declare-fun m!1087673 () Bool)

(assert (=> b!1179612 m!1087673))

(assert (=> b!1179602 m!1087667))

(declare-fun m!1087675 () Bool)

(assert (=> b!1179605 m!1087675))

(declare-fun m!1087677 () Bool)

(assert (=> b!1179617 m!1087677))

(declare-fun m!1087679 () Bool)

(assert (=> start!99636 m!1087679))

(declare-fun m!1087681 () Bool)

(assert (=> start!99636 m!1087681))

(declare-fun m!1087683 () Bool)

(assert (=> b!1179611 m!1087683))

(declare-fun m!1087685 () Bool)

(assert (=> b!1179607 m!1087685))

(declare-fun m!1087687 () Bool)

(assert (=> b!1179622 m!1087687))

(declare-fun m!1087689 () Bool)

(assert (=> b!1179622 m!1087689))

(declare-fun m!1087691 () Bool)

(assert (=> b!1179622 m!1087691))

(assert (=> b!1179622 m!1087667))

(declare-fun m!1087693 () Bool)

(assert (=> b!1179622 m!1087693))

(declare-fun m!1087695 () Bool)

(assert (=> b!1179622 m!1087695))

(assert (=> b!1179622 m!1087667))

(check-sat (not b!1179605) (not b!1179617) (not b!1179609) (not b!1179611) (not b!1179607) tp_is_empty!29709 (not b!1179621) b_and!41241 (not b!1179615) (not mapNonEmpty!46391) (not start!99636) (not b_lambda!20341) (not b!1179622) (not b!1179614) (not b_next!25179) (not b!1179610) (not b!1179612) (not b!1179601) (not b!1179604))
(check-sat b_and!41241 (not b_next!25179))
