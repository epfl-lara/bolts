; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99846 () Bool)

(assert start!99846)

(declare-fun b_free!25389 () Bool)

(declare-fun b_next!25389 () Bool)

(assert (=> start!99846 (= b_free!25389 (not b_next!25389))))

(declare-fun tp!88882 () Bool)

(declare-fun b_and!41659 () Bool)

(assert (=> start!99846 (= tp!88882 b_and!41659)))

(declare-fun b!1186281 () Bool)

(declare-fun e!674539 () Bool)

(assert (=> b!1186281 (= e!674539 true)))

(declare-datatypes ((V!45019 0))(
  ( (V!45020 (val!15016 Int)) )
))
(declare-datatypes ((tuple2!19396 0))(
  ( (tuple2!19397 (_1!9708 (_ BitVec 64)) (_2!9708 V!45019)) )
))
(declare-datatypes ((List!26157 0))(
  ( (Nil!26154) (Cons!26153 (h!27362 tuple2!19396) (t!38545 List!26157)) )
))
(declare-datatypes ((ListLongMap!17377 0))(
  ( (ListLongMap!17378 (toList!8704 List!26157)) )
))
(declare-fun lt!538799 () ListLongMap!17377)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun lt!538792 () ListLongMap!17377)

(declare-fun -!1689 (ListLongMap!17377 (_ BitVec 64)) ListLongMap!17377)

(assert (=> b!1186281 (= (-!1689 lt!538799 k0!934) lt!538792)))

(declare-datatypes ((array!76606 0))(
  ( (array!76607 (arr!36949 (Array (_ BitVec 32) (_ BitVec 64))) (size!37486 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76606)

(declare-fun lt!538794 () ListLongMap!17377)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((Unit!39244 0))(
  ( (Unit!39245) )
))
(declare-fun lt!538800 () Unit!39244)

(declare-fun lt!538788 () V!45019)

(declare-fun addRemoveCommutativeForDiffKeys!198 (ListLongMap!17377 (_ BitVec 64) V!45019 (_ BitVec 64)) Unit!39244)

(assert (=> b!1186281 (= lt!538800 (addRemoveCommutativeForDiffKeys!198 lt!538794 (select (arr!36949 _keys!1208) from!1455) lt!538788 k0!934))))

(declare-fun lt!538786 () ListLongMap!17377)

(declare-fun lt!538798 () ListLongMap!17377)

(declare-fun lt!538796 () ListLongMap!17377)

(assert (=> b!1186281 (and (= lt!538786 lt!538799) (= lt!538796 lt!538798))))

(declare-fun lt!538797 () tuple2!19396)

(declare-fun +!3908 (ListLongMap!17377 tuple2!19396) ListLongMap!17377)

(assert (=> b!1186281 (= lt!538799 (+!3908 lt!538794 lt!538797))))

(assert (=> b!1186281 (not (= (select (arr!36949 _keys!1208) from!1455) k0!934))))

(declare-fun lt!538789 () Unit!39244)

(declare-fun e!674536 () Unit!39244)

(assert (=> b!1186281 (= lt!538789 e!674536)))

(declare-fun c!117155 () Bool)

(assert (=> b!1186281 (= c!117155 (= (select (arr!36949 _keys!1208) from!1455) k0!934))))

(declare-fun e!674542 () Bool)

(assert (=> b!1186281 e!674542))

(declare-fun res!788709 () Bool)

(assert (=> b!1186281 (=> (not res!788709) (not e!674542))))

(declare-fun lt!538802 () ListLongMap!17377)

(assert (=> b!1186281 (= res!788709 (= lt!538802 lt!538792))))

(assert (=> b!1186281 (= lt!538792 (+!3908 lt!538796 lt!538797))))

(assert (=> b!1186281 (= lt!538797 (tuple2!19397 (select (arr!36949 _keys!1208) from!1455) lt!538788))))

(declare-fun lt!538787 () V!45019)

(declare-datatypes ((ValueCell!14250 0))(
  ( (ValueCellFull!14250 (v!17655 V!45019)) (EmptyCell!14250) )
))
(declare-datatypes ((array!76608 0))(
  ( (array!76609 (arr!36950 (Array (_ BitVec 32) ValueCell!14250)) (size!37487 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76608)

(declare-fun get!18960 (ValueCell!14250 V!45019) V!45019)

(assert (=> b!1186281 (= lt!538788 (get!18960 (select (arr!36950 _values!996) from!1455) lt!538787))))

(declare-fun b!1186282 () Bool)

(declare-fun e!674544 () Bool)

(declare-fun e!674540 () Bool)

(assert (=> b!1186282 (= e!674544 e!674540)))

(declare-fun res!788713 () Bool)

(assert (=> b!1186282 (=> (not res!788713) (not e!674540))))

(declare-fun lt!538785 () array!76606)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76606 (_ BitVec 32)) Bool)

(assert (=> b!1186282 (= res!788713 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!538785 mask!1564))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1186282 (= lt!538785 (array!76607 (store (arr!36949 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37486 _keys!1208)))))

(declare-fun b!1186283 () Bool)

(declare-fun res!788702 () Bool)

(assert (=> b!1186283 (=> (not res!788702) (not e!674544))))

(assert (=> b!1186283 (= res!788702 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1186284 () Bool)

(declare-fun e!674535 () Bool)

(assert (=> b!1186284 (= e!674540 (not e!674535))))

(declare-fun res!788706 () Bool)

(assert (=> b!1186284 (=> res!788706 e!674535)))

(assert (=> b!1186284 (= res!788706 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!76606 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1186284 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!538791 () Unit!39244)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76606 (_ BitVec 64) (_ BitVec 32)) Unit!39244)

(assert (=> b!1186284 (= lt!538791 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun res!788699 () Bool)

(assert (=> start!99846 (=> (not res!788699) (not e!674544))))

(assert (=> start!99846 (= res!788699 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37486 _keys!1208))))))

(assert (=> start!99846 e!674544))

(declare-fun tp_is_empty!29919 () Bool)

(assert (=> start!99846 tp_is_empty!29919))

(declare-fun array_inv!28076 (array!76606) Bool)

(assert (=> start!99846 (array_inv!28076 _keys!1208)))

(assert (=> start!99846 true))

(assert (=> start!99846 tp!88882))

(declare-fun e!674543 () Bool)

(declare-fun array_inv!28077 (array!76608) Bool)

(assert (=> start!99846 (and (array_inv!28077 _values!996) e!674543)))

(declare-fun b!1186285 () Bool)

(declare-fun e!674541 () Bool)

(assert (=> b!1186285 (= e!674535 e!674541)))

(declare-fun res!788707 () Bool)

(assert (=> b!1186285 (=> res!788707 e!674541)))

(assert (=> b!1186285 (= res!788707 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!45019)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!45019)

(declare-fun lt!538790 () array!76608)

(declare-fun getCurrentListMapNoExtraKeys!5122 (array!76606 array!76608 (_ BitVec 32) (_ BitVec 32) V!45019 V!45019 (_ BitVec 32) Int) ListLongMap!17377)

(assert (=> b!1186285 (= lt!538802 (getCurrentListMapNoExtraKeys!5122 lt!538785 lt!538790 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1186285 (= lt!538790 (array!76609 (store (arr!36950 _values!996) i!673 (ValueCellFull!14250 lt!538787)) (size!37487 _values!996)))))

(declare-fun dynLambda!3081 (Int (_ BitVec 64)) V!45019)

(assert (=> b!1186285 (= lt!538787 (dynLambda!3081 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1186285 (= lt!538786 (getCurrentListMapNoExtraKeys!5122 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1186286 () Bool)

(declare-fun e!674538 () Bool)

(assert (=> b!1186286 (= e!674538 tp_is_empty!29919)))

(declare-fun b!1186287 () Bool)

(declare-fun e!674545 () Bool)

(assert (=> b!1186287 (= e!674542 e!674545)))

(declare-fun res!788708 () Bool)

(assert (=> b!1186287 (=> res!788708 e!674545)))

(assert (=> b!1186287 (= res!788708 (not (= (select (arr!36949 _keys!1208) from!1455) k0!934)))))

(declare-fun b!1186288 () Bool)

(declare-fun res!788703 () Bool)

(assert (=> b!1186288 (=> (not res!788703) (not e!674544))))

(assert (=> b!1186288 (= res!788703 (= (select (arr!36949 _keys!1208) i!673) k0!934))))

(declare-fun b!1186289 () Bool)

(declare-fun Unit!39246 () Unit!39244)

(assert (=> b!1186289 (= e!674536 Unit!39246)))

(declare-fun lt!538803 () Unit!39244)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!76606 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!39244)

(assert (=> b!1186289 (= lt!538803 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k0!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1186289 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!538793 () Unit!39244)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!76606 (_ BitVec 32) (_ BitVec 32)) Unit!39244)

(assert (=> b!1186289 (= lt!538793 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!26158 0))(
  ( (Nil!26155) (Cons!26154 (h!27363 (_ BitVec 64)) (t!38546 List!26158)) )
))
(declare-fun arrayNoDuplicates!0 (array!76606 (_ BitVec 32) List!26158) Bool)

(assert (=> b!1186289 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26155)))

(declare-fun lt!538801 () Unit!39244)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!76606 (_ BitVec 64) (_ BitVec 32) List!26158) Unit!39244)

(assert (=> b!1186289 (= lt!538801 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!26155))))

(assert (=> b!1186289 false))

(declare-fun b!1186290 () Bool)

(declare-fun e!674537 () Bool)

(assert (=> b!1186290 (= e!674537 tp_is_empty!29919)))

(declare-fun b!1186291 () Bool)

(assert (=> b!1186291 (= e!674545 (arrayContainsKey!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1186292 () Bool)

(declare-fun res!788701 () Bool)

(assert (=> b!1186292 (=> (not res!788701) (not e!674544))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1186292 (= res!788701 (validKeyInArray!0 k0!934))))

(declare-fun b!1186293 () Bool)

(assert (=> b!1186293 (= e!674541 e!674539)))

(declare-fun res!788712 () Bool)

(assert (=> b!1186293 (=> res!788712 e!674539)))

(assert (=> b!1186293 (= res!788712 (not (validKeyInArray!0 (select (arr!36949 _keys!1208) from!1455))))))

(assert (=> b!1186293 (= lt!538798 lt!538796)))

(assert (=> b!1186293 (= lt!538796 (-!1689 lt!538794 k0!934))))

(assert (=> b!1186293 (= lt!538798 (getCurrentListMapNoExtraKeys!5122 lt!538785 lt!538790 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1186293 (= lt!538794 (getCurrentListMapNoExtraKeys!5122 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!538795 () Unit!39244)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!901 (array!76606 array!76608 (_ BitVec 32) (_ BitVec 32) V!45019 V!45019 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39244)

(assert (=> b!1186293 (= lt!538795 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!901 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapIsEmpty!46706 () Bool)

(declare-fun mapRes!46706 () Bool)

(assert (=> mapIsEmpty!46706 mapRes!46706))

(declare-fun b!1186294 () Bool)

(declare-fun res!788704 () Bool)

(assert (=> b!1186294 (=> (not res!788704) (not e!674544))))

(assert (=> b!1186294 (= res!788704 (and (= (size!37487 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37486 _keys!1208) (size!37487 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!46706 () Bool)

(declare-fun tp!88881 () Bool)

(assert (=> mapNonEmpty!46706 (= mapRes!46706 (and tp!88881 e!674538))))

(declare-fun mapKey!46706 () (_ BitVec 32))

(declare-fun mapValue!46706 () ValueCell!14250)

(declare-fun mapRest!46706 () (Array (_ BitVec 32) ValueCell!14250))

(assert (=> mapNonEmpty!46706 (= (arr!36950 _values!996) (store mapRest!46706 mapKey!46706 mapValue!46706))))

(declare-fun b!1186295 () Bool)

(declare-fun res!788710 () Bool)

(assert (=> b!1186295 (=> (not res!788710) (not e!674540))))

(assert (=> b!1186295 (= res!788710 (arrayNoDuplicates!0 lt!538785 #b00000000000000000000000000000000 Nil!26155))))

(declare-fun b!1186296 () Bool)

(declare-fun res!788711 () Bool)

(assert (=> b!1186296 (=> (not res!788711) (not e!674544))))

(assert (=> b!1186296 (= res!788711 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37486 _keys!1208))))))

(declare-fun b!1186297 () Bool)

(declare-fun res!788705 () Bool)

(assert (=> b!1186297 (=> (not res!788705) (not e!674544))))

(assert (=> b!1186297 (= res!788705 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26155))))

(declare-fun b!1186298 () Bool)

(declare-fun res!788700 () Bool)

(assert (=> b!1186298 (=> (not res!788700) (not e!674544))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1186298 (= res!788700 (validMask!0 mask!1564))))

(declare-fun b!1186299 () Bool)

(declare-fun Unit!39247 () Unit!39244)

(assert (=> b!1186299 (= e!674536 Unit!39247)))

(declare-fun b!1186300 () Bool)

(assert (=> b!1186300 (= e!674543 (and e!674537 mapRes!46706))))

(declare-fun condMapEmpty!46706 () Bool)

(declare-fun mapDefault!46706 () ValueCell!14250)

(assert (=> b!1186300 (= condMapEmpty!46706 (= (arr!36950 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14250)) mapDefault!46706)))))

(assert (= (and start!99846 res!788699) b!1186298))

(assert (= (and b!1186298 res!788700) b!1186294))

(assert (= (and b!1186294 res!788704) b!1186283))

(assert (= (and b!1186283 res!788702) b!1186297))

(assert (= (and b!1186297 res!788705) b!1186296))

(assert (= (and b!1186296 res!788711) b!1186292))

(assert (= (and b!1186292 res!788701) b!1186288))

(assert (= (and b!1186288 res!788703) b!1186282))

(assert (= (and b!1186282 res!788713) b!1186295))

(assert (= (and b!1186295 res!788710) b!1186284))

(assert (= (and b!1186284 (not res!788706)) b!1186285))

(assert (= (and b!1186285 (not res!788707)) b!1186293))

(assert (= (and b!1186293 (not res!788712)) b!1186281))

(assert (= (and b!1186281 res!788709) b!1186287))

(assert (= (and b!1186287 (not res!788708)) b!1186291))

(assert (= (and b!1186281 c!117155) b!1186289))

(assert (= (and b!1186281 (not c!117155)) b!1186299))

(assert (= (and b!1186300 condMapEmpty!46706) mapIsEmpty!46706))

(assert (= (and b!1186300 (not condMapEmpty!46706)) mapNonEmpty!46706))

(get-info :version)

(assert (= (and mapNonEmpty!46706 ((_ is ValueCellFull!14250) mapValue!46706)) b!1186286))

(assert (= (and b!1186300 ((_ is ValueCellFull!14250) mapDefault!46706)) b!1186290))

(assert (= start!99846 b!1186300))

(declare-fun b_lambda!20551 () Bool)

(assert (=> (not b_lambda!20551) (not b!1186285)))

(declare-fun t!38544 () Bool)

(declare-fun tb!10209 () Bool)

(assert (=> (and start!99846 (= defaultEntry!1004 defaultEntry!1004) t!38544) tb!10209))

(declare-fun result!20977 () Bool)

(assert (=> tb!10209 (= result!20977 tp_is_empty!29919)))

(assert (=> b!1186285 t!38544))

(declare-fun b_and!41661 () Bool)

(assert (= b_and!41659 (and (=> t!38544 result!20977) b_and!41661)))

(declare-fun m!1094865 () Bool)

(assert (=> b!1186281 m!1094865))

(declare-fun m!1094867 () Bool)

(assert (=> b!1186281 m!1094867))

(declare-fun m!1094869 () Bool)

(assert (=> b!1186281 m!1094869))

(assert (=> b!1186281 m!1094865))

(declare-fun m!1094871 () Bool)

(assert (=> b!1186281 m!1094871))

(declare-fun m!1094873 () Bool)

(assert (=> b!1186281 m!1094873))

(assert (=> b!1186281 m!1094867))

(declare-fun m!1094875 () Bool)

(assert (=> b!1186281 m!1094875))

(declare-fun m!1094877 () Bool)

(assert (=> b!1186281 m!1094877))

(declare-fun m!1094879 () Bool)

(assert (=> b!1186292 m!1094879))

(assert (=> b!1186287 m!1094867))

(declare-fun m!1094881 () Bool)

(assert (=> b!1186289 m!1094881))

(declare-fun m!1094883 () Bool)

(assert (=> b!1186289 m!1094883))

(declare-fun m!1094885 () Bool)

(assert (=> b!1186289 m!1094885))

(declare-fun m!1094887 () Bool)

(assert (=> b!1186289 m!1094887))

(declare-fun m!1094889 () Bool)

(assert (=> b!1186289 m!1094889))

(declare-fun m!1094891 () Bool)

(assert (=> start!99846 m!1094891))

(declare-fun m!1094893 () Bool)

(assert (=> start!99846 m!1094893))

(declare-fun m!1094895 () Bool)

(assert (=> b!1186285 m!1094895))

(declare-fun m!1094897 () Bool)

(assert (=> b!1186285 m!1094897))

(declare-fun m!1094899 () Bool)

(assert (=> b!1186285 m!1094899))

(declare-fun m!1094901 () Bool)

(assert (=> b!1186285 m!1094901))

(declare-fun m!1094903 () Bool)

(assert (=> b!1186282 m!1094903))

(declare-fun m!1094905 () Bool)

(assert (=> b!1186282 m!1094905))

(declare-fun m!1094907 () Bool)

(assert (=> b!1186283 m!1094907))

(declare-fun m!1094909 () Bool)

(assert (=> mapNonEmpty!46706 m!1094909))

(declare-fun m!1094911 () Bool)

(assert (=> b!1186293 m!1094911))

(declare-fun m!1094913 () Bool)

(assert (=> b!1186293 m!1094913))

(declare-fun m!1094915 () Bool)

(assert (=> b!1186293 m!1094915))

(assert (=> b!1186293 m!1094867))

(declare-fun m!1094917 () Bool)

(assert (=> b!1186293 m!1094917))

(declare-fun m!1094919 () Bool)

(assert (=> b!1186293 m!1094919))

(assert (=> b!1186293 m!1094867))

(declare-fun m!1094921 () Bool)

(assert (=> b!1186297 m!1094921))

(declare-fun m!1094923 () Bool)

(assert (=> b!1186295 m!1094923))

(declare-fun m!1094925 () Bool)

(assert (=> b!1186288 m!1094925))

(declare-fun m!1094927 () Bool)

(assert (=> b!1186284 m!1094927))

(declare-fun m!1094929 () Bool)

(assert (=> b!1186284 m!1094929))

(declare-fun m!1094931 () Bool)

(assert (=> b!1186298 m!1094931))

(declare-fun m!1094933 () Bool)

(assert (=> b!1186291 m!1094933))

(check-sat (not b!1186295) b_and!41661 (not b_next!25389) tp_is_empty!29919 (not b!1186281) (not b!1186297) (not mapNonEmpty!46706) (not start!99846) (not b!1186285) (not b!1186282) (not b!1186289) (not b!1186284) (not b!1186291) (not b_lambda!20551) (not b!1186292) (not b!1186298) (not b!1186293) (not b!1186283))
(check-sat b_and!41661 (not b_next!25389))
