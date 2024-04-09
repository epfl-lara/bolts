; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99726 () Bool)

(assert start!99726)

(declare-fun b_free!25269 () Bool)

(declare-fun b_next!25269 () Bool)

(assert (=> start!99726 (= b_free!25269 (not b_next!25269))))

(declare-fun tp!88521 () Bool)

(declare-fun b_and!41419 () Bool)

(assert (=> start!99726 (= tp!88521 b_and!41419)))

(declare-fun b!1182561 () Bool)

(declare-fun res!786004 () Bool)

(declare-fun e!672375 () Bool)

(assert (=> b!1182561 (=> (not res!786004) (not e!672375))))

(declare-datatypes ((array!76366 0))(
  ( (array!76367 (arr!36829 (Array (_ BitVec 32) (_ BitVec 64))) (size!37366 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76366)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k0!934 () (_ BitVec 64))

(assert (=> b!1182561 (= res!786004 (= (select (arr!36829 _keys!1208) i!673) k0!934))))

(declare-fun b!1182562 () Bool)

(declare-datatypes ((Unit!39055 0))(
  ( (Unit!39056) )
))
(declare-fun e!672385 () Unit!39055)

(declare-fun Unit!39057 () Unit!39055)

(assert (=> b!1182562 (= e!672385 Unit!39057)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun lt!535380 () Unit!39055)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!76366 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!39055)

(assert (=> b!1182562 (= lt!535380 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k0!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun arrayContainsKey!0 (array!76366 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1182562 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!535371 () Unit!39055)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!76366 (_ BitVec 32) (_ BitVec 32)) Unit!39055)

(assert (=> b!1182562 (= lt!535371 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!26050 0))(
  ( (Nil!26047) (Cons!26046 (h!27255 (_ BitVec 64)) (t!38318 List!26050)) )
))
(declare-fun arrayNoDuplicates!0 (array!76366 (_ BitVec 32) List!26050) Bool)

(assert (=> b!1182562 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26047)))

(declare-fun lt!535375 () Unit!39055)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!76366 (_ BitVec 64) (_ BitVec 32) List!26050) Unit!39055)

(assert (=> b!1182562 (= lt!535375 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!26047))))

(assert (=> b!1182562 false))

(declare-fun b!1182563 () Bool)

(declare-fun Unit!39058 () Unit!39055)

(assert (=> b!1182563 (= e!672385 Unit!39058)))

(declare-fun b!1182564 () Bool)

(declare-fun e!672383 () Bool)

(assert (=> b!1182564 (= e!672383 true)))

(declare-datatypes ((V!44859 0))(
  ( (V!44860 (val!14956 Int)) )
))
(declare-datatypes ((tuple2!19288 0))(
  ( (tuple2!19289 (_1!9654 (_ BitVec 64)) (_2!9654 V!44859)) )
))
(declare-datatypes ((List!26051 0))(
  ( (Nil!26048) (Cons!26047 (h!27256 tuple2!19288) (t!38319 List!26051)) )
))
(declare-datatypes ((ListLongMap!17269 0))(
  ( (ListLongMap!17270 (toList!8650 List!26051)) )
))
(declare-fun lt!535377 () ListLongMap!17269)

(declare-fun lt!535379 () ListLongMap!17269)

(declare-fun -!1639 (ListLongMap!17269 (_ BitVec 64)) ListLongMap!17269)

(assert (=> b!1182564 (= (-!1639 lt!535377 k0!934) lt!535379)))

(declare-fun lt!535368 () Unit!39055)

(declare-fun lt!535367 () ListLongMap!17269)

(declare-fun lt!535374 () V!44859)

(declare-fun addRemoveCommutativeForDiffKeys!158 (ListLongMap!17269 (_ BitVec 64) V!44859 (_ BitVec 64)) Unit!39055)

(assert (=> b!1182564 (= lt!535368 (addRemoveCommutativeForDiffKeys!158 lt!535367 (select (arr!36829 _keys!1208) from!1455) lt!535374 k0!934))))

(declare-fun lt!535372 () ListLongMap!17269)

(declare-fun lt!535382 () ListLongMap!17269)

(declare-fun lt!535373 () ListLongMap!17269)

(assert (=> b!1182564 (and (= lt!535372 lt!535377) (= lt!535373 lt!535382))))

(declare-fun lt!535376 () tuple2!19288)

(declare-fun +!3868 (ListLongMap!17269 tuple2!19288) ListLongMap!17269)

(assert (=> b!1182564 (= lt!535377 (+!3868 lt!535367 lt!535376))))

(assert (=> b!1182564 (not (= (select (arr!36829 _keys!1208) from!1455) k0!934))))

(declare-fun lt!535370 () Unit!39055)

(assert (=> b!1182564 (= lt!535370 e!672385)))

(declare-fun c!116975 () Bool)

(assert (=> b!1182564 (= c!116975 (= (select (arr!36829 _keys!1208) from!1455) k0!934))))

(declare-fun e!672376 () Bool)

(assert (=> b!1182564 e!672376))

(declare-fun res!786000 () Bool)

(assert (=> b!1182564 (=> (not res!786000) (not e!672376))))

(declare-fun lt!535369 () ListLongMap!17269)

(assert (=> b!1182564 (= res!786000 (= lt!535369 lt!535379))))

(assert (=> b!1182564 (= lt!535379 (+!3868 lt!535373 lt!535376))))

(assert (=> b!1182564 (= lt!535376 (tuple2!19289 (select (arr!36829 _keys!1208) from!1455) lt!535374))))

(declare-datatypes ((ValueCell!14190 0))(
  ( (ValueCellFull!14190 (v!17595 V!44859)) (EmptyCell!14190) )
))
(declare-datatypes ((array!76368 0))(
  ( (array!76369 (arr!36830 (Array (_ BitVec 32) ValueCell!14190)) (size!37367 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76368)

(declare-fun lt!535381 () V!44859)

(declare-fun get!18880 (ValueCell!14190 V!44859) V!44859)

(assert (=> b!1182564 (= lt!535374 (get!18880 (select (arr!36830 _values!996) from!1455) lt!535381))))

(declare-fun b!1182565 () Bool)

(declare-fun e!672377 () Bool)

(assert (=> b!1182565 (= e!672377 e!672383)))

(declare-fun res!786008 () Bool)

(assert (=> b!1182565 (=> res!786008 e!672383)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1182565 (= res!786008 (not (validKeyInArray!0 (select (arr!36829 _keys!1208) from!1455))))))

(assert (=> b!1182565 (= lt!535382 lt!535373)))

(assert (=> b!1182565 (= lt!535373 (-!1639 lt!535367 k0!934))))

(declare-fun zeroValue!944 () V!44859)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!535366 () array!76366)

(declare-fun lt!535378 () array!76368)

(declare-fun minValue!944 () V!44859)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!5072 (array!76366 array!76368 (_ BitVec 32) (_ BitVec 32) V!44859 V!44859 (_ BitVec 32) Int) ListLongMap!17269)

(assert (=> b!1182565 (= lt!535382 (getCurrentListMapNoExtraKeys!5072 lt!535366 lt!535378 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1182565 (= lt!535367 (getCurrentListMapNoExtraKeys!5072 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!535383 () Unit!39055)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!859 (array!76366 array!76368 (_ BitVec 32) (_ BitVec 32) V!44859 V!44859 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39055)

(assert (=> b!1182565 (= lt!535383 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!859 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1182566 () Bool)

(declare-fun res!786012 () Bool)

(assert (=> b!1182566 (=> (not res!786012) (not e!672375))))

(assert (=> b!1182566 (= res!786012 (validKeyInArray!0 k0!934))))

(declare-fun b!1182567 () Bool)

(declare-fun res!786005 () Bool)

(declare-fun e!672380 () Bool)

(assert (=> b!1182567 (=> (not res!786005) (not e!672380))))

(assert (=> b!1182567 (= res!786005 (arrayNoDuplicates!0 lt!535366 #b00000000000000000000000000000000 Nil!26047))))

(declare-fun b!1182568 () Bool)

(declare-fun e!672379 () Bool)

(declare-fun e!672384 () Bool)

(declare-fun mapRes!46526 () Bool)

(assert (=> b!1182568 (= e!672379 (and e!672384 mapRes!46526))))

(declare-fun condMapEmpty!46526 () Bool)

(declare-fun mapDefault!46526 () ValueCell!14190)

(assert (=> b!1182568 (= condMapEmpty!46526 (= (arr!36830 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14190)) mapDefault!46526)))))

(declare-fun b!1182569 () Bool)

(declare-fun e!672382 () Bool)

(assert (=> b!1182569 (= e!672382 (arrayContainsKey!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1182570 () Bool)

(declare-fun res!786003 () Bool)

(assert (=> b!1182570 (=> (not res!786003) (not e!672375))))

(assert (=> b!1182570 (= res!786003 (and (= (size!37367 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37366 _keys!1208) (size!37367 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1182571 () Bool)

(assert (=> b!1182571 (= e!672376 e!672382)))

(declare-fun res!786010 () Bool)

(assert (=> b!1182571 (=> res!786010 e!672382)))

(assert (=> b!1182571 (= res!786010 (not (= (select (arr!36829 _keys!1208) from!1455) k0!934)))))

(declare-fun b!1182572 () Bool)

(declare-fun res!786009 () Bool)

(assert (=> b!1182572 (=> (not res!786009) (not e!672375))))

(assert (=> b!1182572 (= res!786009 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26047))))

(declare-fun mapIsEmpty!46526 () Bool)

(assert (=> mapIsEmpty!46526 mapRes!46526))

(declare-fun res!786001 () Bool)

(assert (=> start!99726 (=> (not res!786001) (not e!672375))))

(assert (=> start!99726 (= res!786001 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37366 _keys!1208))))))

(assert (=> start!99726 e!672375))

(declare-fun tp_is_empty!29799 () Bool)

(assert (=> start!99726 tp_is_empty!29799))

(declare-fun array_inv!27998 (array!76366) Bool)

(assert (=> start!99726 (array_inv!27998 _keys!1208)))

(assert (=> start!99726 true))

(assert (=> start!99726 tp!88521))

(declare-fun array_inv!27999 (array!76368) Bool)

(assert (=> start!99726 (and (array_inv!27999 _values!996) e!672379)))

(declare-fun b!1182573 () Bool)

(assert (=> b!1182573 (= e!672375 e!672380)))

(declare-fun res!786013 () Bool)

(assert (=> b!1182573 (=> (not res!786013) (not e!672380))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76366 (_ BitVec 32)) Bool)

(assert (=> b!1182573 (= res!786013 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!535366 mask!1564))))

(assert (=> b!1182573 (= lt!535366 (array!76367 (store (arr!36829 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37366 _keys!1208)))))

(declare-fun b!1182574 () Bool)

(declare-fun e!672374 () Bool)

(assert (=> b!1182574 (= e!672374 e!672377)))

(declare-fun res!786007 () Bool)

(assert (=> b!1182574 (=> res!786007 e!672377)))

(assert (=> b!1182574 (= res!786007 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(assert (=> b!1182574 (= lt!535369 (getCurrentListMapNoExtraKeys!5072 lt!535366 lt!535378 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1182574 (= lt!535378 (array!76369 (store (arr!36830 _values!996) i!673 (ValueCellFull!14190 lt!535381)) (size!37367 _values!996)))))

(declare-fun dynLambda!3040 (Int (_ BitVec 64)) V!44859)

(assert (=> b!1182574 (= lt!535381 (dynLambda!3040 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1182574 (= lt!535372 (getCurrentListMapNoExtraKeys!5072 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1182575 () Bool)

(declare-fun e!672378 () Bool)

(assert (=> b!1182575 (= e!672378 tp_is_empty!29799)))

(declare-fun b!1182576 () Bool)

(declare-fun res!786002 () Bool)

(assert (=> b!1182576 (=> (not res!786002) (not e!672375))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1182576 (= res!786002 (validMask!0 mask!1564))))

(declare-fun b!1182577 () Bool)

(assert (=> b!1182577 (= e!672384 tp_is_empty!29799)))

(declare-fun mapNonEmpty!46526 () Bool)

(declare-fun tp!88522 () Bool)

(assert (=> mapNonEmpty!46526 (= mapRes!46526 (and tp!88522 e!672378))))

(declare-fun mapValue!46526 () ValueCell!14190)

(declare-fun mapKey!46526 () (_ BitVec 32))

(declare-fun mapRest!46526 () (Array (_ BitVec 32) ValueCell!14190))

(assert (=> mapNonEmpty!46526 (= (arr!36830 _values!996) (store mapRest!46526 mapKey!46526 mapValue!46526))))

(declare-fun b!1182578 () Bool)

(declare-fun res!785999 () Bool)

(assert (=> b!1182578 (=> (not res!785999) (not e!672375))))

(assert (=> b!1182578 (= res!785999 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37366 _keys!1208))))))

(declare-fun b!1182579 () Bool)

(declare-fun res!786006 () Bool)

(assert (=> b!1182579 (=> (not res!786006) (not e!672375))))

(assert (=> b!1182579 (= res!786006 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1182580 () Bool)

(assert (=> b!1182580 (= e!672380 (not e!672374))))

(declare-fun res!786011 () Bool)

(assert (=> b!1182580 (=> res!786011 e!672374)))

(assert (=> b!1182580 (= res!786011 (bvsgt from!1455 i!673))))

(assert (=> b!1182580 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!535365 () Unit!39055)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76366 (_ BitVec 64) (_ BitVec 32)) Unit!39055)

(assert (=> b!1182580 (= lt!535365 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(assert (= (and start!99726 res!786001) b!1182576))

(assert (= (and b!1182576 res!786002) b!1182570))

(assert (= (and b!1182570 res!786003) b!1182579))

(assert (= (and b!1182579 res!786006) b!1182572))

(assert (= (and b!1182572 res!786009) b!1182578))

(assert (= (and b!1182578 res!785999) b!1182566))

(assert (= (and b!1182566 res!786012) b!1182561))

(assert (= (and b!1182561 res!786004) b!1182573))

(assert (= (and b!1182573 res!786013) b!1182567))

(assert (= (and b!1182567 res!786005) b!1182580))

(assert (= (and b!1182580 (not res!786011)) b!1182574))

(assert (= (and b!1182574 (not res!786007)) b!1182565))

(assert (= (and b!1182565 (not res!786008)) b!1182564))

(assert (= (and b!1182564 res!786000) b!1182571))

(assert (= (and b!1182571 (not res!786010)) b!1182569))

(assert (= (and b!1182564 c!116975) b!1182562))

(assert (= (and b!1182564 (not c!116975)) b!1182563))

(assert (= (and b!1182568 condMapEmpty!46526) mapIsEmpty!46526))

(assert (= (and b!1182568 (not condMapEmpty!46526)) mapNonEmpty!46526))

(get-info :version)

(assert (= (and mapNonEmpty!46526 ((_ is ValueCellFull!14190) mapValue!46526)) b!1182575))

(assert (= (and b!1182568 ((_ is ValueCellFull!14190) mapDefault!46526)) b!1182577))

(assert (= start!99726 b!1182568))

(declare-fun b_lambda!20431 () Bool)

(assert (=> (not b_lambda!20431) (not b!1182574)))

(declare-fun t!38317 () Bool)

(declare-fun tb!10089 () Bool)

(assert (=> (and start!99726 (= defaultEntry!1004 defaultEntry!1004) t!38317) tb!10089))

(declare-fun result!20737 () Bool)

(assert (=> tb!10089 (= result!20737 tp_is_empty!29799)))

(assert (=> b!1182574 t!38317))

(declare-fun b_and!41421 () Bool)

(assert (= b_and!41419 (and (=> t!38317 result!20737) b_and!41421)))

(declare-fun m!1090665 () Bool)

(assert (=> b!1182576 m!1090665))

(declare-fun m!1090667 () Bool)

(assert (=> b!1182565 m!1090667))

(declare-fun m!1090669 () Bool)

(assert (=> b!1182565 m!1090669))

(declare-fun m!1090671 () Bool)

(assert (=> b!1182565 m!1090671))

(declare-fun m!1090673 () Bool)

(assert (=> b!1182565 m!1090673))

(declare-fun m!1090675 () Bool)

(assert (=> b!1182565 m!1090675))

(declare-fun m!1090677 () Bool)

(assert (=> b!1182565 m!1090677))

(assert (=> b!1182565 m!1090673))

(declare-fun m!1090679 () Bool)

(assert (=> b!1182561 m!1090679))

(assert (=> b!1182564 m!1090673))

(declare-fun m!1090681 () Bool)

(assert (=> b!1182564 m!1090681))

(declare-fun m!1090683 () Bool)

(assert (=> b!1182564 m!1090683))

(declare-fun m!1090685 () Bool)

(assert (=> b!1182564 m!1090685))

(declare-fun m!1090687 () Bool)

(assert (=> b!1182564 m!1090687))

(declare-fun m!1090689 () Bool)

(assert (=> b!1182564 m!1090689))

(assert (=> b!1182564 m!1090683))

(declare-fun m!1090691 () Bool)

(assert (=> b!1182564 m!1090691))

(assert (=> b!1182564 m!1090673))

(declare-fun m!1090693 () Bool)

(assert (=> b!1182567 m!1090693))

(declare-fun m!1090695 () Bool)

(assert (=> start!99726 m!1090695))

(declare-fun m!1090697 () Bool)

(assert (=> start!99726 m!1090697))

(assert (=> b!1182571 m!1090673))

(declare-fun m!1090699 () Bool)

(assert (=> b!1182579 m!1090699))

(declare-fun m!1090701 () Bool)

(assert (=> b!1182562 m!1090701))

(declare-fun m!1090703 () Bool)

(assert (=> b!1182562 m!1090703))

(declare-fun m!1090705 () Bool)

(assert (=> b!1182562 m!1090705))

(declare-fun m!1090707 () Bool)

(assert (=> b!1182562 m!1090707))

(declare-fun m!1090709 () Bool)

(assert (=> b!1182562 m!1090709))

(declare-fun m!1090711 () Bool)

(assert (=> b!1182580 m!1090711))

(declare-fun m!1090713 () Bool)

(assert (=> b!1182580 m!1090713))

(declare-fun m!1090715 () Bool)

(assert (=> b!1182573 m!1090715))

(declare-fun m!1090717 () Bool)

(assert (=> b!1182573 m!1090717))

(declare-fun m!1090719 () Bool)

(assert (=> b!1182566 m!1090719))

(declare-fun m!1090721 () Bool)

(assert (=> mapNonEmpty!46526 m!1090721))

(declare-fun m!1090723 () Bool)

(assert (=> b!1182574 m!1090723))

(declare-fun m!1090725 () Bool)

(assert (=> b!1182574 m!1090725))

(declare-fun m!1090727 () Bool)

(assert (=> b!1182574 m!1090727))

(declare-fun m!1090729 () Bool)

(assert (=> b!1182574 m!1090729))

(declare-fun m!1090731 () Bool)

(assert (=> b!1182569 m!1090731))

(declare-fun m!1090733 () Bool)

(assert (=> b!1182572 m!1090733))

(check-sat (not start!99726) (not b!1182572) (not b!1182576) (not mapNonEmpty!46526) (not b_next!25269) (not b!1182565) (not b!1182569) (not b!1182564) b_and!41421 (not b_lambda!20431) (not b!1182567) (not b!1182580) (not b!1182579) (not b!1182574) (not b!1182573) tp_is_empty!29799 (not b!1182566) (not b!1182562))
(check-sat b_and!41421 (not b_next!25269))
