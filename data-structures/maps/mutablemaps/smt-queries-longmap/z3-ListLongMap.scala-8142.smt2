; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99756 () Bool)

(assert start!99756)

(declare-fun b_free!25299 () Bool)

(declare-fun b_next!25299 () Bool)

(assert (=> start!99756 (= b_free!25299 (not b_next!25299))))

(declare-fun tp!88612 () Bool)

(declare-fun b_and!41479 () Bool)

(assert (=> start!99756 (= tp!88612 b_and!41479)))

(declare-fun b!1183492 () Bool)

(declare-fun res!786682 () Bool)

(declare-fun e!672923 () Bool)

(assert (=> b!1183492 (=> (not res!786682) (not e!672923))))

(declare-datatypes ((array!76426 0))(
  ( (array!76427 (arr!36859 (Array (_ BitVec 32) (_ BitVec 64))) (size!37396 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76426)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!44899 0))(
  ( (V!44900 (val!14971 Int)) )
))
(declare-datatypes ((ValueCell!14205 0))(
  ( (ValueCellFull!14205 (v!17610 V!44899)) (EmptyCell!14205) )
))
(declare-datatypes ((array!76428 0))(
  ( (array!76429 (arr!36860 (Array (_ BitVec 32) ValueCell!14205)) (size!37397 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76428)

(assert (=> b!1183492 (= res!786682 (and (= (size!37397 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37396 _keys!1208) (size!37397 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1183493 () Bool)

(declare-fun res!786683 () Bool)

(assert (=> b!1183493 (=> (not res!786683) (not e!672923))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76426 (_ BitVec 32)) Bool)

(assert (=> b!1183493 (= res!786683 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1183494 () Bool)

(declare-datatypes ((Unit!39097 0))(
  ( (Unit!39098) )
))
(declare-fun e!672922 () Unit!39097)

(declare-fun Unit!39099 () Unit!39097)

(assert (=> b!1183494 (= e!672922 Unit!39099)))

(declare-fun b!1183495 () Bool)

(declare-fun e!672916 () Bool)

(assert (=> b!1183495 (= e!672916 true)))

(declare-datatypes ((tuple2!19310 0))(
  ( (tuple2!19311 (_1!9665 (_ BitVec 64)) (_2!9665 V!44899)) )
))
(declare-datatypes ((List!26073 0))(
  ( (Nil!26070) (Cons!26069 (h!27278 tuple2!19310) (t!38371 List!26073)) )
))
(declare-datatypes ((ListLongMap!17291 0))(
  ( (ListLongMap!17292 (toList!8661 List!26073)) )
))
(declare-fun lt!536229 () ListLongMap!17291)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun lt!536221 () ListLongMap!17291)

(declare-fun -!1649 (ListLongMap!17291 (_ BitVec 64)) ListLongMap!17291)

(assert (=> b!1183495 (= (-!1649 lt!536229 k0!934) lt!536221)))

(declare-fun lt!536224 () V!44899)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun lt!536228 () Unit!39097)

(declare-fun lt!536234 () ListLongMap!17291)

(declare-fun addRemoveCommutativeForDiffKeys!167 (ListLongMap!17291 (_ BitVec 64) V!44899 (_ BitVec 64)) Unit!39097)

(assert (=> b!1183495 (= lt!536228 (addRemoveCommutativeForDiffKeys!167 lt!536234 (select (arr!36859 _keys!1208) from!1455) lt!536224 k0!934))))

(declare-fun lt!536220 () ListLongMap!17291)

(declare-fun lt!536237 () ListLongMap!17291)

(declare-fun lt!536231 () ListLongMap!17291)

(assert (=> b!1183495 (and (= lt!536237 lt!536229) (= lt!536231 lt!536220))))

(declare-fun lt!536225 () tuple2!19310)

(declare-fun +!3877 (ListLongMap!17291 tuple2!19310) ListLongMap!17291)

(assert (=> b!1183495 (= lt!536229 (+!3877 lt!536234 lt!536225))))

(assert (=> b!1183495 (not (= (select (arr!36859 _keys!1208) from!1455) k0!934))))

(declare-fun lt!536226 () Unit!39097)

(assert (=> b!1183495 (= lt!536226 e!672922)))

(declare-fun c!117020 () Bool)

(assert (=> b!1183495 (= c!117020 (= (select (arr!36859 _keys!1208) from!1455) k0!934))))

(declare-fun e!672918 () Bool)

(assert (=> b!1183495 e!672918))

(declare-fun res!786680 () Bool)

(assert (=> b!1183495 (=> (not res!786680) (not e!672918))))

(declare-fun lt!536227 () ListLongMap!17291)

(assert (=> b!1183495 (= res!786680 (= lt!536227 lt!536221))))

(assert (=> b!1183495 (= lt!536221 (+!3877 lt!536231 lt!536225))))

(assert (=> b!1183495 (= lt!536225 (tuple2!19311 (select (arr!36859 _keys!1208) from!1455) lt!536224))))

(declare-fun lt!536232 () V!44899)

(declare-fun get!18899 (ValueCell!14205 V!44899) V!44899)

(assert (=> b!1183495 (= lt!536224 (get!18899 (select (arr!36860 _values!996) from!1455) lt!536232))))

(declare-fun b!1183496 () Bool)

(declare-fun e!672920 () Bool)

(declare-fun tp_is_empty!29829 () Bool)

(assert (=> b!1183496 (= e!672920 tp_is_empty!29829)))

(declare-fun mapIsEmpty!46571 () Bool)

(declare-fun mapRes!46571 () Bool)

(assert (=> mapIsEmpty!46571 mapRes!46571))

(declare-fun mapNonEmpty!46571 () Bool)

(declare-fun tp!88611 () Bool)

(assert (=> mapNonEmpty!46571 (= mapRes!46571 (and tp!88611 e!672920))))

(declare-fun mapRest!46571 () (Array (_ BitVec 32) ValueCell!14205))

(declare-fun mapValue!46571 () ValueCell!14205)

(declare-fun mapKey!46571 () (_ BitVec 32))

(assert (=> mapNonEmpty!46571 (= (arr!36860 _values!996) (store mapRest!46571 mapKey!46571 mapValue!46571))))

(declare-fun b!1183497 () Bool)

(declare-fun res!786681 () Bool)

(declare-fun e!672917 () Bool)

(assert (=> b!1183497 (=> (not res!786681) (not e!672917))))

(declare-fun lt!536233 () array!76426)

(declare-datatypes ((List!26074 0))(
  ( (Nil!26071) (Cons!26070 (h!27279 (_ BitVec 64)) (t!38372 List!26074)) )
))
(declare-fun arrayNoDuplicates!0 (array!76426 (_ BitVec 32) List!26074) Bool)

(assert (=> b!1183497 (= res!786681 (arrayNoDuplicates!0 lt!536233 #b00000000000000000000000000000000 Nil!26071))))

(declare-fun b!1183498 () Bool)

(assert (=> b!1183498 (= e!672923 e!672917)))

(declare-fun res!786675 () Bool)

(assert (=> b!1183498 (=> (not res!786675) (not e!672917))))

(assert (=> b!1183498 (= res!786675 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!536233 mask!1564))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1183498 (= lt!536233 (array!76427 (store (arr!36859 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37396 _keys!1208)))))

(declare-fun b!1183499 () Bool)

(declare-fun e!672919 () Bool)

(assert (=> b!1183499 (= e!672919 tp_is_empty!29829)))

(declare-fun res!786679 () Bool)

(assert (=> start!99756 (=> (not res!786679) (not e!672923))))

(assert (=> start!99756 (= res!786679 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37396 _keys!1208))))))

(assert (=> start!99756 e!672923))

(assert (=> start!99756 tp_is_empty!29829))

(declare-fun array_inv!28016 (array!76426) Bool)

(assert (=> start!99756 (array_inv!28016 _keys!1208)))

(assert (=> start!99756 true))

(assert (=> start!99756 tp!88612))

(declare-fun e!672924 () Bool)

(declare-fun array_inv!28017 (array!76428) Bool)

(assert (=> start!99756 (and (array_inv!28017 _values!996) e!672924)))

(declare-fun b!1183491 () Bool)

(declare-fun res!786684 () Bool)

(assert (=> b!1183491 (=> (not res!786684) (not e!672923))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1183491 (= res!786684 (validKeyInArray!0 k0!934))))

(declare-fun b!1183500 () Bool)

(declare-fun res!786685 () Bool)

(assert (=> b!1183500 (=> (not res!786685) (not e!672923))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1183500 (= res!786685 (validMask!0 mask!1564))))

(declare-fun b!1183501 () Bool)

(declare-fun Unit!39100 () Unit!39097)

(assert (=> b!1183501 (= e!672922 Unit!39100)))

(declare-fun lt!536230 () Unit!39097)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!76426 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!39097)

(assert (=> b!1183501 (= lt!536230 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k0!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun arrayContainsKey!0 (array!76426 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1183501 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!536235 () Unit!39097)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!76426 (_ BitVec 32) (_ BitVec 32)) Unit!39097)

(assert (=> b!1183501 (= lt!536235 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1183501 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26071)))

(declare-fun lt!536223 () Unit!39097)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!76426 (_ BitVec 64) (_ BitVec 32) List!26074) Unit!39097)

(assert (=> b!1183501 (= lt!536223 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!26071))))

(assert (=> b!1183501 false))

(declare-fun b!1183502 () Bool)

(declare-fun e!672921 () Bool)

(assert (=> b!1183502 (= e!672918 e!672921)))

(declare-fun res!786674 () Bool)

(assert (=> b!1183502 (=> res!786674 e!672921)))

(assert (=> b!1183502 (= res!786674 (not (= (select (arr!36859 _keys!1208) from!1455) k0!934)))))

(declare-fun b!1183503 () Bool)

(assert (=> b!1183503 (= e!672924 (and e!672919 mapRes!46571))))

(declare-fun condMapEmpty!46571 () Bool)

(declare-fun mapDefault!46571 () ValueCell!14205)

(assert (=> b!1183503 (= condMapEmpty!46571 (= (arr!36860 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14205)) mapDefault!46571)))))

(declare-fun b!1183504 () Bool)

(declare-fun e!672915 () Bool)

(assert (=> b!1183504 (= e!672917 (not e!672915))))

(declare-fun res!786677 () Bool)

(assert (=> b!1183504 (=> res!786677 e!672915)))

(assert (=> b!1183504 (= res!786677 (bvsgt from!1455 i!673))))

(assert (=> b!1183504 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!536222 () Unit!39097)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76426 (_ BitVec 64) (_ BitVec 32)) Unit!39097)

(assert (=> b!1183504 (= lt!536222 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1183505 () Bool)

(assert (=> b!1183505 (= e!672921 (arrayContainsKey!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1183506 () Bool)

(declare-fun e!672914 () Bool)

(assert (=> b!1183506 (= e!672915 e!672914)))

(declare-fun res!786687 () Bool)

(assert (=> b!1183506 (=> res!786687 e!672914)))

(assert (=> b!1183506 (= res!786687 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!44899)

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!536238 () array!76428)

(declare-fun minValue!944 () V!44899)

(declare-fun getCurrentListMapNoExtraKeys!5083 (array!76426 array!76428 (_ BitVec 32) (_ BitVec 32) V!44899 V!44899 (_ BitVec 32) Int) ListLongMap!17291)

(assert (=> b!1183506 (= lt!536227 (getCurrentListMapNoExtraKeys!5083 lt!536233 lt!536238 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1183506 (= lt!536238 (array!76429 (store (arr!36860 _values!996) i!673 (ValueCellFull!14205 lt!536232)) (size!37397 _values!996)))))

(declare-fun dynLambda!3050 (Int (_ BitVec 64)) V!44899)

(assert (=> b!1183506 (= lt!536232 (dynLambda!3050 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1183506 (= lt!536237 (getCurrentListMapNoExtraKeys!5083 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1183507 () Bool)

(declare-fun res!786688 () Bool)

(assert (=> b!1183507 (=> (not res!786688) (not e!672923))))

(assert (=> b!1183507 (= res!786688 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37396 _keys!1208))))))

(declare-fun b!1183508 () Bool)

(declare-fun res!786686 () Bool)

(assert (=> b!1183508 (=> (not res!786686) (not e!672923))))

(assert (=> b!1183508 (= res!786686 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26071))))

(declare-fun b!1183509 () Bool)

(assert (=> b!1183509 (= e!672914 e!672916)))

(declare-fun res!786676 () Bool)

(assert (=> b!1183509 (=> res!786676 e!672916)))

(assert (=> b!1183509 (= res!786676 (not (validKeyInArray!0 (select (arr!36859 _keys!1208) from!1455))))))

(assert (=> b!1183509 (= lt!536220 lt!536231)))

(assert (=> b!1183509 (= lt!536231 (-!1649 lt!536234 k0!934))))

(assert (=> b!1183509 (= lt!536220 (getCurrentListMapNoExtraKeys!5083 lt!536233 lt!536238 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1183509 (= lt!536234 (getCurrentListMapNoExtraKeys!5083 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!536236 () Unit!39097)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!867 (array!76426 array!76428 (_ BitVec 32) (_ BitVec 32) V!44899 V!44899 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39097)

(assert (=> b!1183509 (= lt!536236 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!867 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1183510 () Bool)

(declare-fun res!786678 () Bool)

(assert (=> b!1183510 (=> (not res!786678) (not e!672923))))

(assert (=> b!1183510 (= res!786678 (= (select (arr!36859 _keys!1208) i!673) k0!934))))

(assert (= (and start!99756 res!786679) b!1183500))

(assert (= (and b!1183500 res!786685) b!1183492))

(assert (= (and b!1183492 res!786682) b!1183493))

(assert (= (and b!1183493 res!786683) b!1183508))

(assert (= (and b!1183508 res!786686) b!1183507))

(assert (= (and b!1183507 res!786688) b!1183491))

(assert (= (and b!1183491 res!786684) b!1183510))

(assert (= (and b!1183510 res!786678) b!1183498))

(assert (= (and b!1183498 res!786675) b!1183497))

(assert (= (and b!1183497 res!786681) b!1183504))

(assert (= (and b!1183504 (not res!786677)) b!1183506))

(assert (= (and b!1183506 (not res!786687)) b!1183509))

(assert (= (and b!1183509 (not res!786676)) b!1183495))

(assert (= (and b!1183495 res!786680) b!1183502))

(assert (= (and b!1183502 (not res!786674)) b!1183505))

(assert (= (and b!1183495 c!117020) b!1183501))

(assert (= (and b!1183495 (not c!117020)) b!1183494))

(assert (= (and b!1183503 condMapEmpty!46571) mapIsEmpty!46571))

(assert (= (and b!1183503 (not condMapEmpty!46571)) mapNonEmpty!46571))

(get-info :version)

(assert (= (and mapNonEmpty!46571 ((_ is ValueCellFull!14205) mapValue!46571)) b!1183496))

(assert (= (and b!1183503 ((_ is ValueCellFull!14205) mapDefault!46571)) b!1183499))

(assert (= start!99756 b!1183503))

(declare-fun b_lambda!20461 () Bool)

(assert (=> (not b_lambda!20461) (not b!1183506)))

(declare-fun t!38370 () Bool)

(declare-fun tb!10119 () Bool)

(assert (=> (and start!99756 (= defaultEntry!1004 defaultEntry!1004) t!38370) tb!10119))

(declare-fun result!20797 () Bool)

(assert (=> tb!10119 (= result!20797 tp_is_empty!29829)))

(assert (=> b!1183506 t!38370))

(declare-fun b_and!41481 () Bool)

(assert (= b_and!41479 (and (=> t!38370 result!20797) b_and!41481)))

(declare-fun m!1091715 () Bool)

(assert (=> b!1183502 m!1091715))

(declare-fun m!1091717 () Bool)

(assert (=> b!1183504 m!1091717))

(declare-fun m!1091719 () Bool)

(assert (=> b!1183504 m!1091719))

(declare-fun m!1091721 () Bool)

(assert (=> mapNonEmpty!46571 m!1091721))

(declare-fun m!1091723 () Bool)

(assert (=> b!1183497 m!1091723))

(declare-fun m!1091725 () Bool)

(assert (=> b!1183501 m!1091725))

(declare-fun m!1091727 () Bool)

(assert (=> b!1183501 m!1091727))

(declare-fun m!1091729 () Bool)

(assert (=> b!1183501 m!1091729))

(declare-fun m!1091731 () Bool)

(assert (=> b!1183501 m!1091731))

(declare-fun m!1091733 () Bool)

(assert (=> b!1183501 m!1091733))

(declare-fun m!1091735 () Bool)

(assert (=> b!1183506 m!1091735))

(declare-fun m!1091737 () Bool)

(assert (=> b!1183506 m!1091737))

(declare-fun m!1091739 () Bool)

(assert (=> b!1183506 m!1091739))

(declare-fun m!1091741 () Bool)

(assert (=> b!1183506 m!1091741))

(declare-fun m!1091743 () Bool)

(assert (=> b!1183491 m!1091743))

(declare-fun m!1091745 () Bool)

(assert (=> b!1183498 m!1091745))

(declare-fun m!1091747 () Bool)

(assert (=> b!1183498 m!1091747))

(declare-fun m!1091749 () Bool)

(assert (=> b!1183495 m!1091749))

(declare-fun m!1091751 () Bool)

(assert (=> b!1183495 m!1091751))

(assert (=> b!1183495 m!1091751))

(declare-fun m!1091753 () Bool)

(assert (=> b!1183495 m!1091753))

(declare-fun m!1091755 () Bool)

(assert (=> b!1183495 m!1091755))

(assert (=> b!1183495 m!1091715))

(assert (=> b!1183495 m!1091715))

(declare-fun m!1091757 () Bool)

(assert (=> b!1183495 m!1091757))

(declare-fun m!1091759 () Bool)

(assert (=> b!1183495 m!1091759))

(declare-fun m!1091761 () Bool)

(assert (=> b!1183510 m!1091761))

(declare-fun m!1091763 () Bool)

(assert (=> start!99756 m!1091763))

(declare-fun m!1091765 () Bool)

(assert (=> start!99756 m!1091765))

(declare-fun m!1091767 () Bool)

(assert (=> b!1183500 m!1091767))

(declare-fun m!1091769 () Bool)

(assert (=> b!1183508 m!1091769))

(declare-fun m!1091771 () Bool)

(assert (=> b!1183509 m!1091771))

(declare-fun m!1091773 () Bool)

(assert (=> b!1183509 m!1091773))

(assert (=> b!1183509 m!1091715))

(declare-fun m!1091775 () Bool)

(assert (=> b!1183509 m!1091775))

(assert (=> b!1183509 m!1091715))

(declare-fun m!1091777 () Bool)

(assert (=> b!1183509 m!1091777))

(declare-fun m!1091779 () Bool)

(assert (=> b!1183509 m!1091779))

(declare-fun m!1091781 () Bool)

(assert (=> b!1183505 m!1091781))

(declare-fun m!1091783 () Bool)

(assert (=> b!1183493 m!1091783))

(check-sat (not b!1183509) (not start!99756) (not b!1183491) b_and!41481 (not b!1183505) (not b!1183504) (not b!1183495) (not b!1183506) (not b!1183500) (not b_next!25299) tp_is_empty!29829 (not b!1183501) (not mapNonEmpty!46571) (not b_lambda!20461) (not b!1183508) (not b!1183498) (not b!1183493) (not b!1183497))
(check-sat b_and!41481 (not b_next!25299))
