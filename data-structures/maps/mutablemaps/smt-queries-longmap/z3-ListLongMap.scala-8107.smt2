; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99546 () Bool)

(assert start!99546)

(declare-fun b_free!25089 () Bool)

(declare-fun b_next!25089 () Bool)

(assert (=> start!99546 (= b_free!25089 (not b_next!25089))))

(declare-fun tp!87981 () Bool)

(declare-fun b_and!41059 () Bool)

(assert (=> start!99546 (= tp!87981 b_and!41059)))

(declare-fun mapNonEmpty!46256 () Bool)

(declare-fun mapRes!46256 () Bool)

(declare-fun tp!87982 () Bool)

(declare-fun e!668914 () Bool)

(assert (=> mapNonEmpty!46256 (= mapRes!46256 (and tp!87982 e!668914))))

(declare-fun mapKey!46256 () (_ BitVec 32))

(declare-datatypes ((V!44619 0))(
  ( (V!44620 (val!14866 Int)) )
))
(declare-datatypes ((ValueCell!14100 0))(
  ( (ValueCellFull!14100 (v!17505 V!44619)) (EmptyCell!14100) )
))
(declare-datatypes ((array!76014 0))(
  ( (array!76015 (arr!36653 (Array (_ BitVec 32) ValueCell!14100)) (size!37190 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76014)

(declare-fun mapValue!46256 () ValueCell!14100)

(declare-fun mapRest!46256 () (Array (_ BitVec 32) ValueCell!14100))

(assert (=> mapNonEmpty!46256 (= (arr!36653 _values!996) (store mapRest!46256 mapKey!46256 mapValue!46256))))

(declare-fun res!781640 () Bool)

(declare-fun e!668916 () Bool)

(assert (=> start!99546 (=> (not res!781640) (not e!668916))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!76016 0))(
  ( (array!76017 (arr!36654 (Array (_ BitVec 32) (_ BitVec 64))) (size!37191 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76016)

(assert (=> start!99546 (= res!781640 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37191 _keys!1208))))))

(assert (=> start!99546 e!668916))

(declare-fun tp_is_empty!29619 () Bool)

(assert (=> start!99546 tp_is_empty!29619))

(declare-fun array_inv!27878 (array!76016) Bool)

(assert (=> start!99546 (array_inv!27878 _keys!1208)))

(assert (=> start!99546 true))

(assert (=> start!99546 tp!87981))

(declare-fun e!668917 () Bool)

(declare-fun array_inv!27879 (array!76014) Bool)

(assert (=> start!99546 (and (array_inv!27879 _values!996) e!668917)))

(declare-fun b!1176671 () Bool)

(declare-fun res!781649 () Bool)

(assert (=> b!1176671 (=> (not res!781649) (not e!668916))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1176671 (= res!781649 (validMask!0 mask!1564))))

(declare-fun b!1176672 () Bool)

(declare-fun res!781647 () Bool)

(assert (=> b!1176672 (=> (not res!781647) (not e!668916))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1176672 (= res!781647 (validKeyInArray!0 k0!934))))

(declare-fun b!1176673 () Bool)

(assert (=> b!1176673 (= e!668914 tp_is_empty!29619)))

(declare-fun b!1176674 () Bool)

(declare-fun e!668915 () Bool)

(assert (=> b!1176674 (= e!668915 true)))

(declare-fun e!668921 () Bool)

(assert (=> b!1176674 e!668921))

(declare-fun res!781653 () Bool)

(assert (=> b!1176674 (=> (not res!781653) (not e!668921))))

(assert (=> b!1176674 (= res!781653 (not (= (select (arr!36654 _keys!1208) from!1455) k0!934)))))

(declare-datatypes ((Unit!38779 0))(
  ( (Unit!38780) )
))
(declare-fun lt!531126 () Unit!38779)

(declare-fun e!668918 () Unit!38779)

(assert (=> b!1176674 (= lt!531126 e!668918)))

(declare-fun c!116705 () Bool)

(assert (=> b!1176674 (= c!116705 (= (select (arr!36654 _keys!1208) from!1455) k0!934))))

(declare-fun e!668922 () Bool)

(assert (=> b!1176674 e!668922))

(declare-fun res!781639 () Bool)

(assert (=> b!1176674 (=> (not res!781639) (not e!668922))))

(declare-datatypes ((tuple2!19130 0))(
  ( (tuple2!19131 (_1!9575 (_ BitVec 64)) (_2!9575 V!44619)) )
))
(declare-datatypes ((List!25897 0))(
  ( (Nil!25894) (Cons!25893 (h!27102 tuple2!19130) (t!37985 List!25897)) )
))
(declare-datatypes ((ListLongMap!17111 0))(
  ( (ListLongMap!17112 (toList!8571 List!25897)) )
))
(declare-fun lt!531128 () ListLongMap!17111)

(declare-fun lt!531124 () ListLongMap!17111)

(declare-fun lt!531127 () tuple2!19130)

(declare-fun +!3794 (ListLongMap!17111 tuple2!19130) ListLongMap!17111)

(assert (=> b!1176674 (= res!781639 (= lt!531128 (+!3794 lt!531124 lt!531127)))))

(declare-fun lt!531121 () V!44619)

(declare-fun get!18756 (ValueCell!14100 V!44619) V!44619)

(assert (=> b!1176674 (= lt!531127 (tuple2!19131 (select (arr!36654 _keys!1208) from!1455) (get!18756 (select (arr!36653 _values!996) from!1455) lt!531121)))))

(declare-fun b!1176675 () Bool)

(declare-fun e!668925 () Bool)

(declare-fun e!668920 () Bool)

(assert (=> b!1176675 (= e!668925 (not e!668920))))

(declare-fun res!781644 () Bool)

(assert (=> b!1176675 (=> res!781644 e!668920)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1176675 (= res!781644 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!76016 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1176675 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!531115 () Unit!38779)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76016 (_ BitVec 64) (_ BitVec 32)) Unit!38779)

(assert (=> b!1176675 (= lt!531115 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun mapIsEmpty!46256 () Bool)

(assert (=> mapIsEmpty!46256 mapRes!46256))

(declare-fun b!1176676 () Bool)

(declare-fun Unit!38781 () Unit!38779)

(assert (=> b!1176676 (= e!668918 Unit!38781)))

(declare-fun e!668919 () Bool)

(declare-fun b!1176677 () Bool)

(assert (=> b!1176677 (= e!668919 (arrayContainsKey!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1176678 () Bool)

(declare-fun Unit!38782 () Unit!38779)

(assert (=> b!1176678 (= e!668918 Unit!38782)))

(declare-fun lt!531117 () Unit!38779)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!76016 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!38779)

(assert (=> b!1176678 (= lt!531117 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k0!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1176678 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!531123 () Unit!38779)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!76016 (_ BitVec 32) (_ BitVec 32)) Unit!38779)

(assert (=> b!1176678 (= lt!531123 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!25898 0))(
  ( (Nil!25895) (Cons!25894 (h!27103 (_ BitVec 64)) (t!37986 List!25898)) )
))
(declare-fun arrayNoDuplicates!0 (array!76016 (_ BitVec 32) List!25898) Bool)

(assert (=> b!1176678 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25895)))

(declare-fun lt!531120 () Unit!38779)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!76016 (_ BitVec 64) (_ BitVec 32) List!25898) Unit!38779)

(assert (=> b!1176678 (= lt!531120 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!25895))))

(assert (=> b!1176678 false))

(declare-fun b!1176679 () Bool)

(assert (=> b!1176679 (= e!668922 e!668919)))

(declare-fun res!781650 () Bool)

(assert (=> b!1176679 (=> res!781650 e!668919)))

(assert (=> b!1176679 (= res!781650 (not (= (select (arr!36654 _keys!1208) from!1455) k0!934)))))

(declare-fun b!1176680 () Bool)

(declare-fun res!781642 () Bool)

(assert (=> b!1176680 (=> (not res!781642) (not e!668916))))

(assert (=> b!1176680 (= res!781642 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37191 _keys!1208))))))

(declare-fun b!1176681 () Bool)

(declare-fun e!668926 () Bool)

(assert (=> b!1176681 (= e!668917 (and e!668926 mapRes!46256))))

(declare-fun condMapEmpty!46256 () Bool)

(declare-fun mapDefault!46256 () ValueCell!14100)

(assert (=> b!1176681 (= condMapEmpty!46256 (= (arr!36653 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14100)) mapDefault!46256)))))

(declare-fun b!1176682 () Bool)

(declare-fun res!781651 () Bool)

(assert (=> b!1176682 (=> (not res!781651) (not e!668916))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76016 (_ BitVec 32)) Bool)

(assert (=> b!1176682 (= res!781651 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1176683 () Bool)

(assert (=> b!1176683 (= e!668926 tp_is_empty!29619)))

(declare-fun b!1176684 () Bool)

(declare-fun res!781643 () Bool)

(assert (=> b!1176684 (=> (not res!781643) (not e!668925))))

(declare-fun lt!531116 () array!76016)

(assert (=> b!1176684 (= res!781643 (arrayNoDuplicates!0 lt!531116 #b00000000000000000000000000000000 Nil!25895))))

(declare-fun b!1176685 () Bool)

(assert (=> b!1176685 (= e!668916 e!668925)))

(declare-fun res!781645 () Bool)

(assert (=> b!1176685 (=> (not res!781645) (not e!668925))))

(assert (=> b!1176685 (= res!781645 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!531116 mask!1564))))

(assert (=> b!1176685 (= lt!531116 (array!76017 (store (arr!36654 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37191 _keys!1208)))))

(declare-fun b!1176686 () Bool)

(declare-fun e!668923 () Bool)

(assert (=> b!1176686 (= e!668923 e!668915)))

(declare-fun res!781641 () Bool)

(assert (=> b!1176686 (=> res!781641 e!668915)))

(assert (=> b!1176686 (= res!781641 (not (validKeyInArray!0 (select (arr!36654 _keys!1208) from!1455))))))

(declare-fun lt!531118 () ListLongMap!17111)

(assert (=> b!1176686 (= lt!531118 lt!531124)))

(declare-fun lt!531125 () ListLongMap!17111)

(declare-fun -!1574 (ListLongMap!17111 (_ BitVec 64)) ListLongMap!17111)

(assert (=> b!1176686 (= lt!531124 (-!1574 lt!531125 k0!934))))

(declare-fun zeroValue!944 () V!44619)

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!531122 () array!76014)

(declare-fun minValue!944 () V!44619)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!5002 (array!76016 array!76014 (_ BitVec 32) (_ BitVec 32) V!44619 V!44619 (_ BitVec 32) Int) ListLongMap!17111)

(assert (=> b!1176686 (= lt!531118 (getCurrentListMapNoExtraKeys!5002 lt!531116 lt!531122 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1176686 (= lt!531125 (getCurrentListMapNoExtraKeys!5002 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!531129 () Unit!38779)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!798 (array!76016 array!76014 (_ BitVec 32) (_ BitVec 32) V!44619 V!44619 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38779)

(assert (=> b!1176686 (= lt!531129 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!798 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1176687 () Bool)

(declare-fun res!781646 () Bool)

(assert (=> b!1176687 (=> (not res!781646) (not e!668916))))

(assert (=> b!1176687 (= res!781646 (and (= (size!37190 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37191 _keys!1208) (size!37190 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun lt!531119 () ListLongMap!17111)

(declare-fun b!1176688 () Bool)

(assert (=> b!1176688 (= e!668921 (= lt!531119 (+!3794 lt!531125 lt!531127)))))

(declare-fun b!1176689 () Bool)

(assert (=> b!1176689 (= e!668920 e!668923)))

(declare-fun res!781648 () Bool)

(assert (=> b!1176689 (=> res!781648 e!668923)))

(assert (=> b!1176689 (= res!781648 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(assert (=> b!1176689 (= lt!531128 (getCurrentListMapNoExtraKeys!5002 lt!531116 lt!531122 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1176689 (= lt!531122 (array!76015 (store (arr!36653 _values!996) i!673 (ValueCellFull!14100 lt!531121)) (size!37190 _values!996)))))

(declare-fun dynLambda!2978 (Int (_ BitVec 64)) V!44619)

(assert (=> b!1176689 (= lt!531121 (dynLambda!2978 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1176689 (= lt!531119 (getCurrentListMapNoExtraKeys!5002 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1176690 () Bool)

(declare-fun res!781652 () Bool)

(assert (=> b!1176690 (=> (not res!781652) (not e!668916))))

(assert (=> b!1176690 (= res!781652 (= (select (arr!36654 _keys!1208) i!673) k0!934))))

(declare-fun b!1176691 () Bool)

(declare-fun res!781654 () Bool)

(assert (=> b!1176691 (=> (not res!781654) (not e!668916))))

(assert (=> b!1176691 (= res!781654 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25895))))

(assert (= (and start!99546 res!781640) b!1176671))

(assert (= (and b!1176671 res!781649) b!1176687))

(assert (= (and b!1176687 res!781646) b!1176682))

(assert (= (and b!1176682 res!781651) b!1176691))

(assert (= (and b!1176691 res!781654) b!1176680))

(assert (= (and b!1176680 res!781642) b!1176672))

(assert (= (and b!1176672 res!781647) b!1176690))

(assert (= (and b!1176690 res!781652) b!1176685))

(assert (= (and b!1176685 res!781645) b!1176684))

(assert (= (and b!1176684 res!781643) b!1176675))

(assert (= (and b!1176675 (not res!781644)) b!1176689))

(assert (= (and b!1176689 (not res!781648)) b!1176686))

(assert (= (and b!1176686 (not res!781641)) b!1176674))

(assert (= (and b!1176674 res!781639) b!1176679))

(assert (= (and b!1176679 (not res!781650)) b!1176677))

(assert (= (and b!1176674 c!116705) b!1176678))

(assert (= (and b!1176674 (not c!116705)) b!1176676))

(assert (= (and b!1176674 res!781653) b!1176688))

(assert (= (and b!1176681 condMapEmpty!46256) mapIsEmpty!46256))

(assert (= (and b!1176681 (not condMapEmpty!46256)) mapNonEmpty!46256))

(get-info :version)

(assert (= (and mapNonEmpty!46256 ((_ is ValueCellFull!14100) mapValue!46256)) b!1176673))

(assert (= (and b!1176681 ((_ is ValueCellFull!14100) mapDefault!46256)) b!1176683))

(assert (= start!99546 b!1176681))

(declare-fun b_lambda!20251 () Bool)

(assert (=> (not b_lambda!20251) (not b!1176689)))

(declare-fun t!37984 () Bool)

(declare-fun tb!9909 () Bool)

(assert (=> (and start!99546 (= defaultEntry!1004 defaultEntry!1004) t!37984) tb!9909))

(declare-fun result!20377 () Bool)

(assert (=> tb!9909 (= result!20377 tp_is_empty!29619)))

(assert (=> b!1176689 t!37984))

(declare-fun b_and!41061 () Bool)

(assert (= b_and!41059 (and (=> t!37984 result!20377) b_and!41061)))

(declare-fun m!1084661 () Bool)

(assert (=> b!1176682 m!1084661))

(declare-fun m!1084663 () Bool)

(assert (=> b!1176686 m!1084663))

(declare-fun m!1084665 () Bool)

(assert (=> b!1176686 m!1084665))

(declare-fun m!1084667 () Bool)

(assert (=> b!1176686 m!1084667))

(declare-fun m!1084669 () Bool)

(assert (=> b!1176686 m!1084669))

(declare-fun m!1084671 () Bool)

(assert (=> b!1176686 m!1084671))

(declare-fun m!1084673 () Bool)

(assert (=> b!1176686 m!1084673))

(assert (=> b!1176686 m!1084671))

(declare-fun m!1084675 () Bool)

(assert (=> b!1176689 m!1084675))

(declare-fun m!1084677 () Bool)

(assert (=> b!1176689 m!1084677))

(declare-fun m!1084679 () Bool)

(assert (=> b!1176689 m!1084679))

(declare-fun m!1084681 () Bool)

(assert (=> b!1176689 m!1084681))

(declare-fun m!1084683 () Bool)

(assert (=> mapNonEmpty!46256 m!1084683))

(declare-fun m!1084685 () Bool)

(assert (=> b!1176685 m!1084685))

(declare-fun m!1084687 () Bool)

(assert (=> b!1176685 m!1084687))

(declare-fun m!1084689 () Bool)

(assert (=> b!1176671 m!1084689))

(assert (=> b!1176674 m!1084671))

(declare-fun m!1084691 () Bool)

(assert (=> b!1176674 m!1084691))

(declare-fun m!1084693 () Bool)

(assert (=> b!1176674 m!1084693))

(assert (=> b!1176674 m!1084693))

(declare-fun m!1084695 () Bool)

(assert (=> b!1176674 m!1084695))

(declare-fun m!1084697 () Bool)

(assert (=> b!1176672 m!1084697))

(declare-fun m!1084699 () Bool)

(assert (=> b!1176675 m!1084699))

(declare-fun m!1084701 () Bool)

(assert (=> b!1176675 m!1084701))

(declare-fun m!1084703 () Bool)

(assert (=> b!1176684 m!1084703))

(declare-fun m!1084705 () Bool)

(assert (=> start!99546 m!1084705))

(declare-fun m!1084707 () Bool)

(assert (=> start!99546 m!1084707))

(declare-fun m!1084709 () Bool)

(assert (=> b!1176677 m!1084709))

(assert (=> b!1176679 m!1084671))

(declare-fun m!1084711 () Bool)

(assert (=> b!1176691 m!1084711))

(declare-fun m!1084713 () Bool)

(assert (=> b!1176690 m!1084713))

(declare-fun m!1084715 () Bool)

(assert (=> b!1176678 m!1084715))

(declare-fun m!1084717 () Bool)

(assert (=> b!1176678 m!1084717))

(declare-fun m!1084719 () Bool)

(assert (=> b!1176678 m!1084719))

(declare-fun m!1084721 () Bool)

(assert (=> b!1176678 m!1084721))

(declare-fun m!1084723 () Bool)

(assert (=> b!1176678 m!1084723))

(declare-fun m!1084725 () Bool)

(assert (=> b!1176688 m!1084725))

(check-sat (not b_next!25089) (not b!1176686) (not b!1176678) (not b_lambda!20251) (not b!1176684) b_and!41061 (not b!1176689) (not b!1176675) (not b!1176674) (not b!1176672) (not start!99546) (not b!1176671) (not b!1176677) (not mapNonEmpty!46256) tp_is_empty!29619 (not b!1176682) (not b!1176688) (not b!1176691) (not b!1176685))
(check-sat b_and!41061 (not b_next!25089))
