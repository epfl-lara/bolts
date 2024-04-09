; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98122 () Bool)

(assert start!98122)

(declare-fun b_free!23787 () Bool)

(declare-fun b_next!23787 () Bool)

(assert (=> start!98122 (= b_free!23787 (not b_next!23787))))

(declare-fun tp!84066 () Bool)

(declare-fun b_and!38379 () Bool)

(assert (=> start!98122 (= tp!84066 b_and!38379)))

(declare-fun b!1126600 () Bool)

(declare-fun res!752917 () Bool)

(declare-fun e!641301 () Bool)

(assert (=> b!1126600 (=> (not res!752917) (not e!641301))))

(declare-datatypes ((array!73456 0))(
  ( (array!73457 (arr!35377 (Array (_ BitVec 32) (_ BitVec 64))) (size!35914 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73456)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!42883 0))(
  ( (V!42884 (val!14215 Int)) )
))
(declare-datatypes ((ValueCell!13449 0))(
  ( (ValueCellFull!13449 (v!16849 V!42883)) (EmptyCell!13449) )
))
(declare-datatypes ((array!73458 0))(
  ( (array!73459 (arr!35378 (Array (_ BitVec 32) ValueCell!13449)) (size!35915 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73458)

(assert (=> b!1126600 (= res!752917 (and (= (size!35915 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35914 _keys!1208) (size!35915 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1126601 () Bool)

(declare-fun e!641300 () Bool)

(declare-fun e!641294 () Bool)

(declare-fun mapRes!44293 () Bool)

(assert (=> b!1126601 (= e!641300 (and e!641294 mapRes!44293))))

(declare-fun condMapEmpty!44293 () Bool)

(declare-fun mapDefault!44293 () ValueCell!13449)

(assert (=> b!1126601 (= condMapEmpty!44293 (= (arr!35378 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13449)) mapDefault!44293)))))

(declare-fun mapIsEmpty!44293 () Bool)

(assert (=> mapIsEmpty!44293 mapRes!44293))

(declare-fun b!1126602 () Bool)

(declare-fun e!641295 () Bool)

(declare-fun e!641303 () Bool)

(assert (=> b!1126602 (= e!641295 (not e!641303))))

(declare-fun res!752918 () Bool)

(assert (=> b!1126602 (=> res!752918 e!641303)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1126602 (= res!752918 (bvsgt from!1455 i!673))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!73456 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1126602 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36867 0))(
  ( (Unit!36868) )
))
(declare-fun lt!500276 () Unit!36867)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73456 (_ BitVec 64) (_ BitVec 32)) Unit!36867)

(assert (=> b!1126602 (= lt!500276 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1126603 () Bool)

(declare-fun res!752914 () Bool)

(assert (=> b!1126603 (=> (not res!752914) (not e!641295))))

(declare-fun lt!500274 () array!73456)

(declare-datatypes ((List!24789 0))(
  ( (Nil!24786) (Cons!24785 (h!25994 (_ BitVec 64)) (t!35575 List!24789)) )
))
(declare-fun arrayNoDuplicates!0 (array!73456 (_ BitVec 32) List!24789) Bool)

(assert (=> b!1126603 (= res!752914 (arrayNoDuplicates!0 lt!500274 #b00000000000000000000000000000000 Nil!24786))))

(declare-fun zeroValue!944 () V!42883)

(declare-fun lt!500275 () array!73458)

(declare-datatypes ((tuple2!17962 0))(
  ( (tuple2!17963 (_1!8991 (_ BitVec 64)) (_2!8991 V!42883)) )
))
(declare-datatypes ((List!24790 0))(
  ( (Nil!24787) (Cons!24786 (h!25995 tuple2!17962) (t!35576 List!24790)) )
))
(declare-datatypes ((ListLongMap!15943 0))(
  ( (ListLongMap!15944 (toList!7987 List!24790)) )
))
(declare-fun call!47644 () ListLongMap!15943)

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!42883)

(declare-fun bm!47641 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!4446 (array!73456 array!73458 (_ BitVec 32) (_ BitVec 32) V!42883 V!42883 (_ BitVec 32) Int) ListLongMap!15943)

(assert (=> bm!47641 (= call!47644 (getCurrentListMapNoExtraKeys!4446 lt!500274 lt!500275 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1126605 () Bool)

(declare-fun res!752919 () Bool)

(assert (=> b!1126605 (=> (not res!752919) (not e!641301))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1126605 (= res!752919 (validKeyInArray!0 k0!934))))

(declare-fun b!1126606 () Bool)

(declare-fun e!641302 () Bool)

(declare-fun e!641296 () Bool)

(assert (=> b!1126606 (= e!641302 e!641296)))

(declare-fun res!752915 () Bool)

(assert (=> b!1126606 (=> res!752915 e!641296)))

(assert (=> b!1126606 (= res!752915 (not (= (select (arr!35377 _keys!1208) from!1455) k0!934)))))

(declare-fun e!641298 () Bool)

(assert (=> b!1126606 e!641298))

(declare-fun c!109631 () Bool)

(assert (=> b!1126606 (= c!109631 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!500273 () Unit!36867)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!382 (array!73456 array!73458 (_ BitVec 32) (_ BitVec 32) V!42883 V!42883 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36867)

(assert (=> b!1126606 (= lt!500273 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!382 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1126607 () Bool)

(declare-fun res!752912 () Bool)

(assert (=> b!1126607 (=> (not res!752912) (not e!641301))))

(assert (=> b!1126607 (= res!752912 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24786))))

(declare-fun b!1126608 () Bool)

(declare-fun call!47645 () ListLongMap!15943)

(assert (=> b!1126608 (= e!641298 (= call!47644 call!47645))))

(declare-fun b!1126609 () Bool)

(declare-fun res!752907 () Bool)

(assert (=> b!1126609 (=> (not res!752907) (not e!641301))))

(assert (=> b!1126609 (= res!752907 (= (select (arr!35377 _keys!1208) i!673) k0!934))))

(declare-fun b!1126610 () Bool)

(declare-fun res!752910 () Bool)

(assert (=> b!1126610 (=> (not res!752910) (not e!641301))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1126610 (= res!752910 (validMask!0 mask!1564))))

(declare-fun b!1126611 () Bool)

(declare-fun res!752911 () Bool)

(assert (=> b!1126611 (=> (not res!752911) (not e!641301))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73456 (_ BitVec 32)) Bool)

(assert (=> b!1126611 (= res!752911 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun res!752916 () Bool)

(assert (=> start!98122 (=> (not res!752916) (not e!641301))))

(assert (=> start!98122 (= res!752916 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35914 _keys!1208))))))

(assert (=> start!98122 e!641301))

(declare-fun tp_is_empty!28317 () Bool)

(assert (=> start!98122 tp_is_empty!28317))

(declare-fun array_inv!27020 (array!73456) Bool)

(assert (=> start!98122 (array_inv!27020 _keys!1208)))

(assert (=> start!98122 true))

(assert (=> start!98122 tp!84066))

(declare-fun array_inv!27021 (array!73458) Bool)

(assert (=> start!98122 (and (array_inv!27021 _values!996) e!641300)))

(declare-fun b!1126604 () Bool)

(assert (=> b!1126604 (= e!641296 true)))

(declare-fun lt!500271 () Bool)

(declare-fun contains!6494 (ListLongMap!15943 (_ BitVec 64)) Bool)

(assert (=> b!1126604 (= lt!500271 (contains!6494 (getCurrentListMapNoExtraKeys!4446 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k0!934))))

(declare-fun b!1126612 () Bool)

(assert (=> b!1126612 (= e!641294 tp_is_empty!28317)))

(declare-fun bm!47642 () Bool)

(assert (=> bm!47642 (= call!47645 (getCurrentListMapNoExtraKeys!4446 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapNonEmpty!44293 () Bool)

(declare-fun tp!84065 () Bool)

(declare-fun e!641299 () Bool)

(assert (=> mapNonEmpty!44293 (= mapRes!44293 (and tp!84065 e!641299))))

(declare-fun mapRest!44293 () (Array (_ BitVec 32) ValueCell!13449))

(declare-fun mapKey!44293 () (_ BitVec 32))

(declare-fun mapValue!44293 () ValueCell!13449)

(assert (=> mapNonEmpty!44293 (= (arr!35378 _values!996) (store mapRest!44293 mapKey!44293 mapValue!44293))))

(declare-fun b!1126613 () Bool)

(assert (=> b!1126613 (= e!641303 e!641302)))

(declare-fun res!752913 () Bool)

(assert (=> b!1126613 (=> res!752913 e!641302)))

(assert (=> b!1126613 (= res!752913 (not (= from!1455 i!673)))))

(declare-fun lt!500272 () ListLongMap!15943)

(assert (=> b!1126613 (= lt!500272 (getCurrentListMapNoExtraKeys!4446 lt!500274 lt!500275 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2526 (Int (_ BitVec 64)) V!42883)

(assert (=> b!1126613 (= lt!500275 (array!73459 (store (arr!35378 _values!996) i!673 (ValueCellFull!13449 (dynLambda!2526 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35915 _values!996)))))

(declare-fun lt!500277 () ListLongMap!15943)

(assert (=> b!1126613 (= lt!500277 (getCurrentListMapNoExtraKeys!4446 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1126614 () Bool)

(declare-fun res!752909 () Bool)

(assert (=> b!1126614 (=> (not res!752909) (not e!641301))))

(assert (=> b!1126614 (= res!752909 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35914 _keys!1208))))))

(declare-fun b!1126615 () Bool)

(assert (=> b!1126615 (= e!641301 e!641295)))

(declare-fun res!752908 () Bool)

(assert (=> b!1126615 (=> (not res!752908) (not e!641295))))

(assert (=> b!1126615 (= res!752908 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!500274 mask!1564))))

(assert (=> b!1126615 (= lt!500274 (array!73457 (store (arr!35377 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35914 _keys!1208)))))

(declare-fun b!1126616 () Bool)

(declare-fun -!1127 (ListLongMap!15943 (_ BitVec 64)) ListLongMap!15943)

(assert (=> b!1126616 (= e!641298 (= call!47644 (-!1127 call!47645 k0!934)))))

(declare-fun b!1126617 () Bool)

(assert (=> b!1126617 (= e!641299 tp_is_empty!28317)))

(assert (= (and start!98122 res!752916) b!1126610))

(assert (= (and b!1126610 res!752910) b!1126600))

(assert (= (and b!1126600 res!752917) b!1126611))

(assert (= (and b!1126611 res!752911) b!1126607))

(assert (= (and b!1126607 res!752912) b!1126614))

(assert (= (and b!1126614 res!752909) b!1126605))

(assert (= (and b!1126605 res!752919) b!1126609))

(assert (= (and b!1126609 res!752907) b!1126615))

(assert (= (and b!1126615 res!752908) b!1126603))

(assert (= (and b!1126603 res!752914) b!1126602))

(assert (= (and b!1126602 (not res!752918)) b!1126613))

(assert (= (and b!1126613 (not res!752913)) b!1126606))

(assert (= (and b!1126606 c!109631) b!1126616))

(assert (= (and b!1126606 (not c!109631)) b!1126608))

(assert (= (or b!1126616 b!1126608) bm!47641))

(assert (= (or b!1126616 b!1126608) bm!47642))

(assert (= (and b!1126606 (not res!752915)) b!1126604))

(assert (= (and b!1126601 condMapEmpty!44293) mapIsEmpty!44293))

(assert (= (and b!1126601 (not condMapEmpty!44293)) mapNonEmpty!44293))

(get-info :version)

(assert (= (and mapNonEmpty!44293 ((_ is ValueCellFull!13449) mapValue!44293)) b!1126617))

(assert (= (and b!1126601 ((_ is ValueCellFull!13449) mapDefault!44293)) b!1126612))

(assert (= start!98122 b!1126601))

(declare-fun b_lambda!18791 () Bool)

(assert (=> (not b_lambda!18791) (not b!1126613)))

(declare-fun t!35574 () Bool)

(declare-fun tb!8607 () Bool)

(assert (=> (and start!98122 (= defaultEntry!1004 defaultEntry!1004) t!35574) tb!8607))

(declare-fun result!17767 () Bool)

(assert (=> tb!8607 (= result!17767 tp_is_empty!28317)))

(assert (=> b!1126613 t!35574))

(declare-fun b_and!38381 () Bool)

(assert (= b_and!38379 (and (=> t!35574 result!17767) b_and!38381)))

(declare-fun m!1040649 () Bool)

(assert (=> b!1126616 m!1040649))

(declare-fun m!1040651 () Bool)

(assert (=> mapNonEmpty!44293 m!1040651))

(declare-fun m!1040653 () Bool)

(assert (=> b!1126609 m!1040653))

(declare-fun m!1040655 () Bool)

(assert (=> b!1126613 m!1040655))

(declare-fun m!1040657 () Bool)

(assert (=> b!1126613 m!1040657))

(declare-fun m!1040659 () Bool)

(assert (=> b!1126613 m!1040659))

(declare-fun m!1040661 () Bool)

(assert (=> b!1126613 m!1040661))

(declare-fun m!1040663 () Bool)

(assert (=> b!1126607 m!1040663))

(declare-fun m!1040665 () Bool)

(assert (=> b!1126615 m!1040665))

(declare-fun m!1040667 () Bool)

(assert (=> b!1126615 m!1040667))

(declare-fun m!1040669 () Bool)

(assert (=> bm!47642 m!1040669))

(declare-fun m!1040671 () Bool)

(assert (=> b!1126602 m!1040671))

(declare-fun m!1040673 () Bool)

(assert (=> b!1126602 m!1040673))

(declare-fun m!1040675 () Bool)

(assert (=> start!98122 m!1040675))

(declare-fun m!1040677 () Bool)

(assert (=> start!98122 m!1040677))

(declare-fun m!1040679 () Bool)

(assert (=> bm!47641 m!1040679))

(declare-fun m!1040681 () Bool)

(assert (=> b!1126610 m!1040681))

(declare-fun m!1040683 () Bool)

(assert (=> b!1126605 m!1040683))

(declare-fun m!1040685 () Bool)

(assert (=> b!1126603 m!1040685))

(declare-fun m!1040687 () Bool)

(assert (=> b!1126606 m!1040687))

(declare-fun m!1040689 () Bool)

(assert (=> b!1126606 m!1040689))

(declare-fun m!1040691 () Bool)

(assert (=> b!1126611 m!1040691))

(assert (=> b!1126604 m!1040669))

(assert (=> b!1126604 m!1040669))

(declare-fun m!1040693 () Bool)

(assert (=> b!1126604 m!1040693))

(check-sat (not b!1126603) (not b!1126604) (not bm!47641) tp_is_empty!28317 (not b!1126605) (not b!1126610) (not b_lambda!18791) (not b!1126602) (not b!1126613) (not b!1126607) (not b_next!23787) (not b!1126616) (not bm!47642) (not b!1126611) (not b!1126615) (not b!1126606) (not start!98122) (not mapNonEmpty!44293) b_and!38381)
(check-sat b_and!38381 (not b_next!23787))
