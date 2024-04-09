; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99702 () Bool)

(assert start!99702)

(declare-fun b_free!25245 () Bool)

(declare-fun b_next!25245 () Bool)

(assert (=> start!99702 (= b_free!25245 (not b_next!25245))))

(declare-fun tp!88450 () Bool)

(declare-fun b_and!41371 () Bool)

(assert (=> start!99702 (= tp!88450 b_and!41371)))

(declare-fun b!1181817 () Bool)

(declare-fun e!671951 () Bool)

(declare-fun e!671950 () Bool)

(assert (=> b!1181817 (= e!671951 e!671950)))

(declare-fun res!785466 () Bool)

(assert (=> b!1181817 (=> res!785466 e!671950)))

(declare-datatypes ((array!76318 0))(
  ( (array!76319 (arr!36805 (Array (_ BitVec 32) (_ BitVec 64))) (size!37342 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76318)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1181817 (= res!785466 (not (validKeyInArray!0 (select (arr!36805 _keys!1208) from!1455))))))

(declare-datatypes ((V!44827 0))(
  ( (V!44828 (val!14944 Int)) )
))
(declare-datatypes ((tuple2!19266 0))(
  ( (tuple2!19267 (_1!9643 (_ BitVec 64)) (_2!9643 V!44827)) )
))
(declare-datatypes ((List!26028 0))(
  ( (Nil!26025) (Cons!26024 (h!27233 tuple2!19266) (t!38272 List!26028)) )
))
(declare-datatypes ((ListLongMap!17247 0))(
  ( (ListLongMap!17248 (toList!8639 List!26028)) )
))
(declare-fun lt!534686 () ListLongMap!17247)

(declare-fun lt!534684 () ListLongMap!17247)

(assert (=> b!1181817 (= lt!534686 lt!534684)))

(declare-fun lt!534685 () ListLongMap!17247)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun -!1628 (ListLongMap!17247 (_ BitVec 64)) ListLongMap!17247)

(assert (=> b!1181817 (= lt!534684 (-!1628 lt!534685 k0!934))))

(declare-fun zeroValue!944 () V!44827)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun lt!534690 () array!76318)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((ValueCell!14178 0))(
  ( (ValueCellFull!14178 (v!17583 V!44827)) (EmptyCell!14178) )
))
(declare-datatypes ((array!76320 0))(
  ( (array!76321 (arr!36806 (Array (_ BitVec 32) ValueCell!14178)) (size!37343 (_ BitVec 32))) )
))
(declare-fun lt!534688 () array!76320)

(declare-fun minValue!944 () V!44827)

(declare-fun getCurrentListMapNoExtraKeys!5063 (array!76318 array!76320 (_ BitVec 32) (_ BitVec 32) V!44827 V!44827 (_ BitVec 32) Int) ListLongMap!17247)

(assert (=> b!1181817 (= lt!534686 (getCurrentListMapNoExtraKeys!5063 lt!534690 lt!534688 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun _values!996 () array!76320)

(assert (=> b!1181817 (= lt!534685 (getCurrentListMapNoExtraKeys!5063 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((Unit!39014 0))(
  ( (Unit!39015) )
))
(declare-fun lt!534681 () Unit!39014)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!851 (array!76318 array!76320 (_ BitVec 32) (_ BitVec 32) V!44827 V!44827 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39014)

(assert (=> b!1181817 (= lt!534681 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!851 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1181818 () Bool)

(declare-fun res!785473 () Bool)

(declare-fun e!671952 () Bool)

(assert (=> b!1181818 (=> (not res!785473) (not e!671952))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1181818 (= res!785473 (validMask!0 mask!1564))))

(declare-fun b!1181819 () Bool)

(declare-fun res!785468 () Bool)

(assert (=> b!1181819 (=> (not res!785468) (not e!671952))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76318 (_ BitVec 32)) Bool)

(assert (=> b!1181819 (= res!785468 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1181820 () Bool)

(declare-fun res!785469 () Bool)

(assert (=> b!1181820 (=> (not res!785469) (not e!671952))))

(assert (=> b!1181820 (= res!785469 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37342 _keys!1208))))))

(declare-fun b!1181821 () Bool)

(declare-fun res!785465 () Bool)

(assert (=> b!1181821 (=> (not res!785465) (not e!671952))))

(assert (=> b!1181821 (= res!785465 (and (= (size!37343 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37342 _keys!1208) (size!37343 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!46490 () Bool)

(declare-fun mapRes!46490 () Bool)

(assert (=> mapIsEmpty!46490 mapRes!46490))

(declare-fun b!1181822 () Bool)

(declare-fun e!671944 () Bool)

(declare-fun tp_is_empty!29775 () Bool)

(assert (=> b!1181822 (= e!671944 tp_is_empty!29775)))

(declare-fun b!1181823 () Bool)

(declare-fun e!671947 () Unit!39014)

(declare-fun Unit!39016 () Unit!39014)

(assert (=> b!1181823 (= e!671947 Unit!39016)))

(declare-fun lt!534697 () Unit!39014)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!76318 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!39014)

(assert (=> b!1181823 (= lt!534697 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k0!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun arrayContainsKey!0 (array!76318 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1181823 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!534687 () Unit!39014)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!76318 (_ BitVec 32) (_ BitVec 32)) Unit!39014)

(assert (=> b!1181823 (= lt!534687 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!26029 0))(
  ( (Nil!26026) (Cons!26025 (h!27234 (_ BitVec 64)) (t!38273 List!26029)) )
))
(declare-fun arrayNoDuplicates!0 (array!76318 (_ BitVec 32) List!26029) Bool)

(assert (=> b!1181823 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26026)))

(declare-fun lt!534695 () Unit!39014)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!76318 (_ BitVec 64) (_ BitVec 32) List!26029) Unit!39014)

(assert (=> b!1181823 (= lt!534695 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!26026))))

(assert (=> b!1181823 false))

(declare-fun b!1181824 () Bool)

(declare-fun e!671945 () Bool)

(assert (=> b!1181824 (= e!671945 (arrayContainsKey!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1181825 () Bool)

(declare-fun e!671943 () Bool)

(assert (=> b!1181825 (= e!671943 e!671951)))

(declare-fun res!785461 () Bool)

(assert (=> b!1181825 (=> res!785461 e!671951)))

(assert (=> b!1181825 (= res!785461 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun lt!534682 () ListLongMap!17247)

(assert (=> b!1181825 (= lt!534682 (getCurrentListMapNoExtraKeys!5063 lt!534690 lt!534688 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!534692 () V!44827)

(assert (=> b!1181825 (= lt!534688 (array!76321 (store (arr!36806 _values!996) i!673 (ValueCellFull!14178 lt!534692)) (size!37343 _values!996)))))

(declare-fun dynLambda!3031 (Int (_ BitVec 64)) V!44827)

(assert (=> b!1181825 (= lt!534692 (dynLambda!3031 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!534698 () ListLongMap!17247)

(assert (=> b!1181825 (= lt!534698 (getCurrentListMapNoExtraKeys!5063 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1181826 () Bool)

(declare-fun res!785459 () Bool)

(assert (=> b!1181826 (=> (not res!785459) (not e!671952))))

(assert (=> b!1181826 (= res!785459 (= (select (arr!36805 _keys!1208) i!673) k0!934))))

(declare-fun b!1181827 () Bool)

(declare-fun res!785471 () Bool)

(assert (=> b!1181827 (=> (not res!785471) (not e!671952))))

(assert (=> b!1181827 (= res!785471 (validKeyInArray!0 k0!934))))

(declare-fun b!1181828 () Bool)

(declare-fun res!785460 () Bool)

(declare-fun e!671948 () Bool)

(assert (=> b!1181828 (=> (not res!785460) (not e!671948))))

(assert (=> b!1181828 (= res!785460 (arrayNoDuplicates!0 lt!534690 #b00000000000000000000000000000000 Nil!26026))))

(declare-fun res!785467 () Bool)

(assert (=> start!99702 (=> (not res!785467) (not e!671952))))

(assert (=> start!99702 (= res!785467 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37342 _keys!1208))))))

(assert (=> start!99702 e!671952))

(assert (=> start!99702 tp_is_empty!29775))

(declare-fun array_inv!27980 (array!76318) Bool)

(assert (=> start!99702 (array_inv!27980 _keys!1208)))

(assert (=> start!99702 true))

(assert (=> start!99702 tp!88450))

(declare-fun e!671946 () Bool)

(declare-fun array_inv!27981 (array!76320) Bool)

(assert (=> start!99702 (and (array_inv!27981 _values!996) e!671946)))

(declare-fun b!1181829 () Bool)

(declare-fun res!785464 () Bool)

(assert (=> b!1181829 (=> (not res!785464) (not e!671952))))

(assert (=> b!1181829 (= res!785464 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26026))))

(declare-fun b!1181830 () Bool)

(declare-fun e!671942 () Bool)

(assert (=> b!1181830 (= e!671942 tp_is_empty!29775)))

(declare-fun b!1181831 () Bool)

(declare-fun e!671949 () Bool)

(assert (=> b!1181831 (= e!671949 e!671945)))

(declare-fun res!785470 () Bool)

(assert (=> b!1181831 (=> res!785470 e!671945)))

(assert (=> b!1181831 (= res!785470 (not (= (select (arr!36805 _keys!1208) from!1455) k0!934)))))

(declare-fun b!1181832 () Bool)

(assert (=> b!1181832 (= e!671948 (not e!671943))))

(declare-fun res!785472 () Bool)

(assert (=> b!1181832 (=> res!785472 e!671943)))

(assert (=> b!1181832 (= res!785472 (bvsgt from!1455 i!673))))

(assert (=> b!1181832 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!534689 () Unit!39014)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76318 (_ BitVec 64) (_ BitVec 32)) Unit!39014)

(assert (=> b!1181832 (= lt!534689 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1181833 () Bool)

(declare-fun Unit!39017 () Unit!39014)

(assert (=> b!1181833 (= e!671947 Unit!39017)))

(declare-fun b!1181834 () Bool)

(assert (=> b!1181834 (= e!671946 (and e!671942 mapRes!46490))))

(declare-fun condMapEmpty!46490 () Bool)

(declare-fun mapDefault!46490 () ValueCell!14178)

(assert (=> b!1181834 (= condMapEmpty!46490 (= (arr!36806 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14178)) mapDefault!46490)))))

(declare-fun b!1181835 () Bool)

(assert (=> b!1181835 (= e!671950 true)))

(declare-fun lt!534694 () ListLongMap!17247)

(declare-fun lt!534683 () ListLongMap!17247)

(assert (=> b!1181835 (= (-!1628 lt!534694 k0!934) lt!534683)))

(declare-fun lt!534693 () Unit!39014)

(declare-fun lt!534699 () V!44827)

(declare-fun addRemoveCommutativeForDiffKeys!147 (ListLongMap!17247 (_ BitVec 64) V!44827 (_ BitVec 64)) Unit!39014)

(assert (=> b!1181835 (= lt!534693 (addRemoveCommutativeForDiffKeys!147 lt!534685 (select (arr!36805 _keys!1208) from!1455) lt!534699 k0!934))))

(assert (=> b!1181835 (and (= lt!534698 lt!534694) (= lt!534684 lt!534686))))

(declare-fun lt!534696 () tuple2!19266)

(declare-fun +!3857 (ListLongMap!17247 tuple2!19266) ListLongMap!17247)

(assert (=> b!1181835 (= lt!534694 (+!3857 lt!534685 lt!534696))))

(assert (=> b!1181835 (not (= (select (arr!36805 _keys!1208) from!1455) k0!934))))

(declare-fun lt!534691 () Unit!39014)

(assert (=> b!1181835 (= lt!534691 e!671947)))

(declare-fun c!116939 () Bool)

(assert (=> b!1181835 (= c!116939 (= (select (arr!36805 _keys!1208) from!1455) k0!934))))

(assert (=> b!1181835 e!671949))

(declare-fun res!785463 () Bool)

(assert (=> b!1181835 (=> (not res!785463) (not e!671949))))

(assert (=> b!1181835 (= res!785463 (= lt!534682 lt!534683))))

(assert (=> b!1181835 (= lt!534683 (+!3857 lt!534684 lt!534696))))

(assert (=> b!1181835 (= lt!534696 (tuple2!19267 (select (arr!36805 _keys!1208) from!1455) lt!534699))))

(declare-fun get!18861 (ValueCell!14178 V!44827) V!44827)

(assert (=> b!1181835 (= lt!534699 (get!18861 (select (arr!36806 _values!996) from!1455) lt!534692))))

(declare-fun mapNonEmpty!46490 () Bool)

(declare-fun tp!88449 () Bool)

(assert (=> mapNonEmpty!46490 (= mapRes!46490 (and tp!88449 e!671944))))

(declare-fun mapValue!46490 () ValueCell!14178)

(declare-fun mapRest!46490 () (Array (_ BitVec 32) ValueCell!14178))

(declare-fun mapKey!46490 () (_ BitVec 32))

(assert (=> mapNonEmpty!46490 (= (arr!36806 _values!996) (store mapRest!46490 mapKey!46490 mapValue!46490))))

(declare-fun b!1181836 () Bool)

(assert (=> b!1181836 (= e!671952 e!671948)))

(declare-fun res!785462 () Bool)

(assert (=> b!1181836 (=> (not res!785462) (not e!671948))))

(assert (=> b!1181836 (= res!785462 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!534690 mask!1564))))

(assert (=> b!1181836 (= lt!534690 (array!76319 (store (arr!36805 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37342 _keys!1208)))))

(assert (= (and start!99702 res!785467) b!1181818))

(assert (= (and b!1181818 res!785473) b!1181821))

(assert (= (and b!1181821 res!785465) b!1181819))

(assert (= (and b!1181819 res!785468) b!1181829))

(assert (= (and b!1181829 res!785464) b!1181820))

(assert (= (and b!1181820 res!785469) b!1181827))

(assert (= (and b!1181827 res!785471) b!1181826))

(assert (= (and b!1181826 res!785459) b!1181836))

(assert (= (and b!1181836 res!785462) b!1181828))

(assert (= (and b!1181828 res!785460) b!1181832))

(assert (= (and b!1181832 (not res!785472)) b!1181825))

(assert (= (and b!1181825 (not res!785461)) b!1181817))

(assert (= (and b!1181817 (not res!785466)) b!1181835))

(assert (= (and b!1181835 res!785463) b!1181831))

(assert (= (and b!1181831 (not res!785470)) b!1181824))

(assert (= (and b!1181835 c!116939) b!1181823))

(assert (= (and b!1181835 (not c!116939)) b!1181833))

(assert (= (and b!1181834 condMapEmpty!46490) mapIsEmpty!46490))

(assert (= (and b!1181834 (not condMapEmpty!46490)) mapNonEmpty!46490))

(get-info :version)

(assert (= (and mapNonEmpty!46490 ((_ is ValueCellFull!14178) mapValue!46490)) b!1181822))

(assert (= (and b!1181834 ((_ is ValueCellFull!14178) mapDefault!46490)) b!1181830))

(assert (= start!99702 b!1181834))

(declare-fun b_lambda!20407 () Bool)

(assert (=> (not b_lambda!20407) (not b!1181825)))

(declare-fun t!38271 () Bool)

(declare-fun tb!10065 () Bool)

(assert (=> (and start!99702 (= defaultEntry!1004 defaultEntry!1004) t!38271) tb!10065))

(declare-fun result!20689 () Bool)

(assert (=> tb!10065 (= result!20689 tp_is_empty!29775)))

(assert (=> b!1181825 t!38271))

(declare-fun b_and!41373 () Bool)

(assert (= b_and!41371 (and (=> t!38271 result!20689) b_and!41373)))

(declare-fun m!1089825 () Bool)

(assert (=> mapNonEmpty!46490 m!1089825))

(declare-fun m!1089827 () Bool)

(assert (=> start!99702 m!1089827))

(declare-fun m!1089829 () Bool)

(assert (=> start!99702 m!1089829))

(declare-fun m!1089831 () Bool)

(assert (=> b!1181828 m!1089831))

(declare-fun m!1089833 () Bool)

(assert (=> b!1181836 m!1089833))

(declare-fun m!1089835 () Bool)

(assert (=> b!1181836 m!1089835))

(declare-fun m!1089837 () Bool)

(assert (=> b!1181832 m!1089837))

(declare-fun m!1089839 () Bool)

(assert (=> b!1181832 m!1089839))

(declare-fun m!1089841 () Bool)

(assert (=> b!1181835 m!1089841))

(declare-fun m!1089843 () Bool)

(assert (=> b!1181835 m!1089843))

(assert (=> b!1181835 m!1089841))

(declare-fun m!1089845 () Bool)

(assert (=> b!1181835 m!1089845))

(declare-fun m!1089847 () Bool)

(assert (=> b!1181835 m!1089847))

(declare-fun m!1089849 () Bool)

(assert (=> b!1181835 m!1089849))

(declare-fun m!1089851 () Bool)

(assert (=> b!1181835 m!1089851))

(declare-fun m!1089853 () Bool)

(assert (=> b!1181835 m!1089853))

(assert (=> b!1181835 m!1089847))

(declare-fun m!1089855 () Bool)

(assert (=> b!1181826 m!1089855))

(declare-fun m!1089857 () Bool)

(assert (=> b!1181827 m!1089857))

(assert (=> b!1181831 m!1089847))

(declare-fun m!1089859 () Bool)

(assert (=> b!1181817 m!1089859))

(declare-fun m!1089861 () Bool)

(assert (=> b!1181817 m!1089861))

(declare-fun m!1089863 () Bool)

(assert (=> b!1181817 m!1089863))

(declare-fun m!1089865 () Bool)

(assert (=> b!1181817 m!1089865))

(assert (=> b!1181817 m!1089847))

(declare-fun m!1089867 () Bool)

(assert (=> b!1181817 m!1089867))

(assert (=> b!1181817 m!1089847))

(declare-fun m!1089869 () Bool)

(assert (=> b!1181823 m!1089869))

(declare-fun m!1089871 () Bool)

(assert (=> b!1181823 m!1089871))

(declare-fun m!1089873 () Bool)

(assert (=> b!1181823 m!1089873))

(declare-fun m!1089875 () Bool)

(assert (=> b!1181823 m!1089875))

(declare-fun m!1089877 () Bool)

(assert (=> b!1181823 m!1089877))

(declare-fun m!1089879 () Bool)

(assert (=> b!1181824 m!1089879))

(declare-fun m!1089881 () Bool)

(assert (=> b!1181818 m!1089881))

(declare-fun m!1089883 () Bool)

(assert (=> b!1181829 m!1089883))

(declare-fun m!1089885 () Bool)

(assert (=> b!1181825 m!1089885))

(declare-fun m!1089887 () Bool)

(assert (=> b!1181825 m!1089887))

(declare-fun m!1089889 () Bool)

(assert (=> b!1181825 m!1089889))

(declare-fun m!1089891 () Bool)

(assert (=> b!1181825 m!1089891))

(declare-fun m!1089893 () Bool)

(assert (=> b!1181819 m!1089893))

(check-sat (not mapNonEmpty!46490) (not b!1181829) (not b_next!25245) (not b!1181828) (not b!1181825) (not b!1181818) (not b_lambda!20407) (not b!1181836) (not b!1181827) b_and!41373 (not b!1181824) (not b!1181817) (not b!1181819) (not b!1181835) (not b!1181823) tp_is_empty!29775 (not start!99702) (not b!1181832))
(check-sat b_and!41373 (not b_next!25245))
