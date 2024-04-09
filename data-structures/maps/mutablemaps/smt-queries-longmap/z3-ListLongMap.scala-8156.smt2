; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99840 () Bool)

(assert start!99840)

(declare-fun b_free!25383 () Bool)

(declare-fun b_next!25383 () Bool)

(assert (=> start!99840 (= b_free!25383 (not b_next!25383))))

(declare-fun tp!88864 () Bool)

(declare-fun b_and!41647 () Bool)

(assert (=> start!99840 (= tp!88864 b_and!41647)))

(declare-fun b!1186095 () Bool)

(declare-fun e!674430 () Bool)

(assert (=> b!1186095 (= e!674430 true)))

(declare-datatypes ((V!45011 0))(
  ( (V!45012 (val!15013 Int)) )
))
(declare-datatypes ((tuple2!19390 0))(
  ( (tuple2!19391 (_1!9705 (_ BitVec 64)) (_2!9705 V!45011)) )
))
(declare-datatypes ((List!26151 0))(
  ( (Nil!26148) (Cons!26147 (h!27356 tuple2!19390) (t!38533 List!26151)) )
))
(declare-datatypes ((ListLongMap!17371 0))(
  ( (ListLongMap!17372 (toList!8701 List!26151)) )
))
(declare-fun lt!538627 () ListLongMap!17371)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun lt!538623 () ListLongMap!17371)

(declare-fun -!1686 (ListLongMap!17371 (_ BitVec 64)) ListLongMap!17371)

(assert (=> b!1186095 (= (-!1686 lt!538627 k0!934) lt!538623)))

(declare-fun lt!538617 () ListLongMap!17371)

(declare-datatypes ((array!76594 0))(
  ( (array!76595 (arr!36943 (Array (_ BitVec 32) (_ BitVec 64))) (size!37480 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76594)

(declare-fun lt!538614 () V!45011)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((Unit!39234 0))(
  ( (Unit!39235) )
))
(declare-fun lt!538632 () Unit!39234)

(declare-fun addRemoveCommutativeForDiffKeys!196 (ListLongMap!17371 (_ BitVec 64) V!45011 (_ BitVec 64)) Unit!39234)

(assert (=> b!1186095 (= lt!538632 (addRemoveCommutativeForDiffKeys!196 lt!538617 (select (arr!36943 _keys!1208) from!1455) lt!538614 k0!934))))

(declare-fun lt!538631 () ListLongMap!17371)

(declare-fun lt!538615 () ListLongMap!17371)

(declare-fun lt!538630 () ListLongMap!17371)

(assert (=> b!1186095 (and (= lt!538631 lt!538627) (= lt!538630 lt!538615))))

(declare-fun lt!538616 () tuple2!19390)

(declare-fun +!3906 (ListLongMap!17371 tuple2!19390) ListLongMap!17371)

(assert (=> b!1186095 (= lt!538627 (+!3906 lt!538617 lt!538616))))

(assert (=> b!1186095 (not (= (select (arr!36943 _keys!1208) from!1455) k0!934))))

(declare-fun lt!538626 () Unit!39234)

(declare-fun e!674436 () Unit!39234)

(assert (=> b!1186095 (= lt!538626 e!674436)))

(declare-fun c!117146 () Bool)

(assert (=> b!1186095 (= c!117146 (= (select (arr!36943 _keys!1208) from!1455) k0!934))))

(declare-fun e!674432 () Bool)

(assert (=> b!1186095 e!674432))

(declare-fun res!788578 () Bool)

(assert (=> b!1186095 (=> (not res!788578) (not e!674432))))

(declare-fun lt!538625 () ListLongMap!17371)

(assert (=> b!1186095 (= res!788578 (= lt!538625 lt!538623))))

(assert (=> b!1186095 (= lt!538623 (+!3906 lt!538630 lt!538616))))

(assert (=> b!1186095 (= lt!538616 (tuple2!19391 (select (arr!36943 _keys!1208) from!1455) lt!538614))))

(declare-fun lt!538619 () V!45011)

(declare-datatypes ((ValueCell!14247 0))(
  ( (ValueCellFull!14247 (v!17652 V!45011)) (EmptyCell!14247) )
))
(declare-datatypes ((array!76596 0))(
  ( (array!76597 (arr!36944 (Array (_ BitVec 32) ValueCell!14247)) (size!37481 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76596)

(declare-fun get!18956 (ValueCell!14247 V!45011) V!45011)

(assert (=> b!1186095 (= lt!538614 (get!18956 (select (arr!36944 _values!996) from!1455) lt!538619))))

(declare-fun mapNonEmpty!46697 () Bool)

(declare-fun mapRes!46697 () Bool)

(declare-fun tp!88863 () Bool)

(declare-fun e!674428 () Bool)

(assert (=> mapNonEmpty!46697 (= mapRes!46697 (and tp!88863 e!674428))))

(declare-fun mapRest!46697 () (Array (_ BitVec 32) ValueCell!14247))

(declare-fun mapValue!46697 () ValueCell!14247)

(declare-fun mapKey!46697 () (_ BitVec 32))

(assert (=> mapNonEmpty!46697 (= (arr!36944 _values!996) (store mapRest!46697 mapKey!46697 mapValue!46697))))

(declare-fun b!1186096 () Bool)

(declare-fun res!788569 () Bool)

(declare-fun e!674437 () Bool)

(assert (=> b!1186096 (=> (not res!788569) (not e!674437))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1186096 (= res!788569 (= (select (arr!36943 _keys!1208) i!673) k0!934))))

(declare-fun b!1186097 () Bool)

(declare-fun e!674433 () Bool)

(assert (=> b!1186097 (= e!674432 e!674433)))

(declare-fun res!788567 () Bool)

(assert (=> b!1186097 (=> res!788567 e!674433)))

(assert (=> b!1186097 (= res!788567 (not (= (select (arr!36943 _keys!1208) from!1455) k0!934)))))

(declare-fun b!1186098 () Bool)

(declare-fun tp_is_empty!29913 () Bool)

(assert (=> b!1186098 (= e!674428 tp_is_empty!29913)))

(declare-fun b!1186099 () Bool)

(declare-fun res!788574 () Bool)

(declare-fun e!674426 () Bool)

(assert (=> b!1186099 (=> (not res!788574) (not e!674426))))

(declare-fun lt!538629 () array!76594)

(declare-datatypes ((List!26152 0))(
  ( (Nil!26149) (Cons!26148 (h!27357 (_ BitVec 64)) (t!38534 List!26152)) )
))
(declare-fun arrayNoDuplicates!0 (array!76594 (_ BitVec 32) List!26152) Bool)

(assert (=> b!1186099 (= res!788574 (arrayNoDuplicates!0 lt!538629 #b00000000000000000000000000000000 Nil!26149))))

(declare-fun b!1186100 () Bool)

(declare-fun res!788573 () Bool)

(assert (=> b!1186100 (=> (not res!788573) (not e!674437))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1186100 (= res!788573 (validKeyInArray!0 k0!934))))

(declare-fun res!788577 () Bool)

(assert (=> start!99840 (=> (not res!788577) (not e!674437))))

(assert (=> start!99840 (= res!788577 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37480 _keys!1208))))))

(assert (=> start!99840 e!674437))

(assert (=> start!99840 tp_is_empty!29913))

(declare-fun array_inv!28072 (array!76594) Bool)

(assert (=> start!99840 (array_inv!28072 _keys!1208)))

(assert (=> start!99840 true))

(assert (=> start!99840 tp!88864))

(declare-fun e!674434 () Bool)

(declare-fun array_inv!28073 (array!76596) Bool)

(assert (=> start!99840 (and (array_inv!28073 _values!996) e!674434)))

(declare-fun b!1186101 () Bool)

(assert (=> b!1186101 (= e!674437 e!674426)))

(declare-fun res!788571 () Bool)

(assert (=> b!1186101 (=> (not res!788571) (not e!674426))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76594 (_ BitVec 32)) Bool)

(assert (=> b!1186101 (= res!788571 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!538629 mask!1564))))

(assert (=> b!1186101 (= lt!538629 (array!76595 (store (arr!36943 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37480 _keys!1208)))))

(declare-fun b!1186102 () Bool)

(declare-fun arrayContainsKey!0 (array!76594 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1186102 (= e!674433 (arrayContainsKey!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1186103 () Bool)

(declare-fun res!788575 () Bool)

(assert (=> b!1186103 (=> (not res!788575) (not e!674437))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1186103 (= res!788575 (validMask!0 mask!1564))))

(declare-fun b!1186104 () Bool)

(declare-fun e!674435 () Bool)

(assert (=> b!1186104 (= e!674426 (not e!674435))))

(declare-fun res!788568 () Bool)

(assert (=> b!1186104 (=> res!788568 e!674435)))

(assert (=> b!1186104 (= res!788568 (bvsgt from!1455 i!673))))

(assert (=> b!1186104 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!538621 () Unit!39234)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76594 (_ BitVec 64) (_ BitVec 32)) Unit!39234)

(assert (=> b!1186104 (= lt!538621 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1186105 () Bool)

(declare-fun Unit!39236 () Unit!39234)

(assert (=> b!1186105 (= e!674436 Unit!39236)))

(declare-fun b!1186106 () Bool)

(declare-fun e!674427 () Bool)

(assert (=> b!1186106 (= e!674427 e!674430)))

(declare-fun res!788565 () Bool)

(assert (=> b!1186106 (=> res!788565 e!674430)))

(assert (=> b!1186106 (= res!788565 (not (validKeyInArray!0 (select (arr!36943 _keys!1208) from!1455))))))

(assert (=> b!1186106 (= lt!538615 lt!538630)))

(assert (=> b!1186106 (= lt!538630 (-!1686 lt!538617 k0!934))))

(declare-fun zeroValue!944 () V!45011)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!538620 () array!76596)

(declare-fun minValue!944 () V!45011)

(declare-fun getCurrentListMapNoExtraKeys!5119 (array!76594 array!76596 (_ BitVec 32) (_ BitVec 32) V!45011 V!45011 (_ BitVec 32) Int) ListLongMap!17371)

(assert (=> b!1186106 (= lt!538615 (getCurrentListMapNoExtraKeys!5119 lt!538629 lt!538620 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1186106 (= lt!538617 (getCurrentListMapNoExtraKeys!5119 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!538624 () Unit!39234)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!899 (array!76594 array!76596 (_ BitVec 32) (_ BitVec 32) V!45011 V!45011 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39234)

(assert (=> b!1186106 (= lt!538624 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!899 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1186107 () Bool)

(declare-fun res!788564 () Bool)

(assert (=> b!1186107 (=> (not res!788564) (not e!674437))))

(assert (=> b!1186107 (= res!788564 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37480 _keys!1208))))))

(declare-fun b!1186108 () Bool)

(declare-fun res!788566 () Bool)

(assert (=> b!1186108 (=> (not res!788566) (not e!674437))))

(assert (=> b!1186108 (= res!788566 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26149))))

(declare-fun b!1186109 () Bool)

(assert (=> b!1186109 (= e!674435 e!674427)))

(declare-fun res!788572 () Bool)

(assert (=> b!1186109 (=> res!788572 e!674427)))

(assert (=> b!1186109 (= res!788572 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(assert (=> b!1186109 (= lt!538625 (getCurrentListMapNoExtraKeys!5119 lt!538629 lt!538620 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1186109 (= lt!538620 (array!76597 (store (arr!36944 _values!996) i!673 (ValueCellFull!14247 lt!538619)) (size!37481 _values!996)))))

(declare-fun dynLambda!3078 (Int (_ BitVec 64)) V!45011)

(assert (=> b!1186109 (= lt!538619 (dynLambda!3078 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1186109 (= lt!538631 (getCurrentListMapNoExtraKeys!5119 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1186110 () Bool)

(declare-fun e!674429 () Bool)

(assert (=> b!1186110 (= e!674429 tp_is_empty!29913)))

(declare-fun b!1186111 () Bool)

(declare-fun Unit!39237 () Unit!39234)

(assert (=> b!1186111 (= e!674436 Unit!39237)))

(declare-fun lt!538628 () Unit!39234)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!76594 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!39234)

(assert (=> b!1186111 (= lt!538628 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k0!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1186111 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!538622 () Unit!39234)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!76594 (_ BitVec 32) (_ BitVec 32)) Unit!39234)

(assert (=> b!1186111 (= lt!538622 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1186111 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26149)))

(declare-fun lt!538618 () Unit!39234)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!76594 (_ BitVec 64) (_ BitVec 32) List!26152) Unit!39234)

(assert (=> b!1186111 (= lt!538618 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!26149))))

(assert (=> b!1186111 false))

(declare-fun mapIsEmpty!46697 () Bool)

(assert (=> mapIsEmpty!46697 mapRes!46697))

(declare-fun b!1186112 () Bool)

(assert (=> b!1186112 (= e!674434 (and e!674429 mapRes!46697))))

(declare-fun condMapEmpty!46697 () Bool)

(declare-fun mapDefault!46697 () ValueCell!14247)

(assert (=> b!1186112 (= condMapEmpty!46697 (= (arr!36944 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14247)) mapDefault!46697)))))

(declare-fun b!1186113 () Bool)

(declare-fun res!788570 () Bool)

(assert (=> b!1186113 (=> (not res!788570) (not e!674437))))

(assert (=> b!1186113 (= res!788570 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1186114 () Bool)

(declare-fun res!788576 () Bool)

(assert (=> b!1186114 (=> (not res!788576) (not e!674437))))

(assert (=> b!1186114 (= res!788576 (and (= (size!37481 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37480 _keys!1208) (size!37481 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(assert (= (and start!99840 res!788577) b!1186103))

(assert (= (and b!1186103 res!788575) b!1186114))

(assert (= (and b!1186114 res!788576) b!1186113))

(assert (= (and b!1186113 res!788570) b!1186108))

(assert (= (and b!1186108 res!788566) b!1186107))

(assert (= (and b!1186107 res!788564) b!1186100))

(assert (= (and b!1186100 res!788573) b!1186096))

(assert (= (and b!1186096 res!788569) b!1186101))

(assert (= (and b!1186101 res!788571) b!1186099))

(assert (= (and b!1186099 res!788574) b!1186104))

(assert (= (and b!1186104 (not res!788568)) b!1186109))

(assert (= (and b!1186109 (not res!788572)) b!1186106))

(assert (= (and b!1186106 (not res!788565)) b!1186095))

(assert (= (and b!1186095 res!788578) b!1186097))

(assert (= (and b!1186097 (not res!788567)) b!1186102))

(assert (= (and b!1186095 c!117146) b!1186111))

(assert (= (and b!1186095 (not c!117146)) b!1186105))

(assert (= (and b!1186112 condMapEmpty!46697) mapIsEmpty!46697))

(assert (= (and b!1186112 (not condMapEmpty!46697)) mapNonEmpty!46697))

(get-info :version)

(assert (= (and mapNonEmpty!46697 ((_ is ValueCellFull!14247) mapValue!46697)) b!1186098))

(assert (= (and b!1186112 ((_ is ValueCellFull!14247) mapDefault!46697)) b!1186110))

(assert (= start!99840 b!1186112))

(declare-fun b_lambda!20545 () Bool)

(assert (=> (not b_lambda!20545) (not b!1186109)))

(declare-fun t!38532 () Bool)

(declare-fun tb!10203 () Bool)

(assert (=> (and start!99840 (= defaultEntry!1004 defaultEntry!1004) t!38532) tb!10203))

(declare-fun result!20965 () Bool)

(assert (=> tb!10203 (= result!20965 tp_is_empty!29913)))

(assert (=> b!1186109 t!38532))

(declare-fun b_and!41649 () Bool)

(assert (= b_and!41647 (and (=> t!38532 result!20965) b_and!41649)))

(declare-fun m!1094655 () Bool)

(assert (=> b!1186101 m!1094655))

(declare-fun m!1094657 () Bool)

(assert (=> b!1186101 m!1094657))

(declare-fun m!1094659 () Bool)

(assert (=> b!1186102 m!1094659))

(declare-fun m!1094661 () Bool)

(assert (=> b!1186097 m!1094661))

(declare-fun m!1094663 () Bool)

(assert (=> b!1186109 m!1094663))

(declare-fun m!1094665 () Bool)

(assert (=> b!1186109 m!1094665))

(declare-fun m!1094667 () Bool)

(assert (=> b!1186109 m!1094667))

(declare-fun m!1094669 () Bool)

(assert (=> b!1186109 m!1094669))

(declare-fun m!1094671 () Bool)

(assert (=> b!1186100 m!1094671))

(declare-fun m!1094673 () Bool)

(assert (=> b!1186111 m!1094673))

(declare-fun m!1094675 () Bool)

(assert (=> b!1186111 m!1094675))

(declare-fun m!1094677 () Bool)

(assert (=> b!1186111 m!1094677))

(declare-fun m!1094679 () Bool)

(assert (=> b!1186111 m!1094679))

(declare-fun m!1094681 () Bool)

(assert (=> b!1186111 m!1094681))

(declare-fun m!1094683 () Bool)

(assert (=> b!1186103 m!1094683))

(declare-fun m!1094685 () Bool)

(assert (=> b!1186106 m!1094685))

(declare-fun m!1094687 () Bool)

(assert (=> b!1186106 m!1094687))

(declare-fun m!1094689 () Bool)

(assert (=> b!1186106 m!1094689))

(assert (=> b!1186106 m!1094661))

(declare-fun m!1094691 () Bool)

(assert (=> b!1186106 m!1094691))

(assert (=> b!1186106 m!1094661))

(declare-fun m!1094693 () Bool)

(assert (=> b!1186106 m!1094693))

(declare-fun m!1094695 () Bool)

(assert (=> start!99840 m!1094695))

(declare-fun m!1094697 () Bool)

(assert (=> start!99840 m!1094697))

(declare-fun m!1094699 () Bool)

(assert (=> b!1186108 m!1094699))

(declare-fun m!1094701 () Bool)

(assert (=> b!1186095 m!1094701))

(declare-fun m!1094703 () Bool)

(assert (=> b!1186095 m!1094703))

(assert (=> b!1186095 m!1094661))

(declare-fun m!1094705 () Bool)

(assert (=> b!1186095 m!1094705))

(declare-fun m!1094707 () Bool)

(assert (=> b!1186095 m!1094707))

(declare-fun m!1094709 () Bool)

(assert (=> b!1186095 m!1094709))

(assert (=> b!1186095 m!1094661))

(assert (=> b!1186095 m!1094707))

(declare-fun m!1094711 () Bool)

(assert (=> b!1186095 m!1094711))

(declare-fun m!1094713 () Bool)

(assert (=> mapNonEmpty!46697 m!1094713))

(declare-fun m!1094715 () Bool)

(assert (=> b!1186099 m!1094715))

(declare-fun m!1094717 () Bool)

(assert (=> b!1186113 m!1094717))

(declare-fun m!1094719 () Bool)

(assert (=> b!1186096 m!1094719))

(declare-fun m!1094721 () Bool)

(assert (=> b!1186104 m!1094721))

(declare-fun m!1094723 () Bool)

(assert (=> b!1186104 m!1094723))

(check-sat (not b!1186095) (not b!1186111) (not b!1186103) (not b!1186100) b_and!41649 (not b!1186108) (not b!1186099) (not b!1186104) (not b!1186109) (not b!1186113) (not start!99840) (not b_lambda!20545) tp_is_empty!29913 (not mapNonEmpty!46697) (not b!1186106) (not b_next!25383) (not b!1186101) (not b!1186102))
(check-sat b_and!41649 (not b_next!25383))
