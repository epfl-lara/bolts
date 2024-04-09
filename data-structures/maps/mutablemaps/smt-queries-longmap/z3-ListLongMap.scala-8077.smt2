; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99366 () Bool)

(assert start!99366)

(declare-fun b_free!24909 () Bool)

(declare-fun b_next!24909 () Bool)

(assert (=> start!99366 (= b_free!24909 (not b_next!24909))))

(declare-fun tp!87441 () Bool)

(declare-fun b_and!40699 () Bool)

(assert (=> start!99366 (= tp!87441 b_and!40699)))

(declare-fun b!1170907 () Bool)

(declare-fun e!665575 () Bool)

(declare-fun tp_is_empty!29439 () Bool)

(assert (=> b!1170907 (= e!665575 tp_is_empty!29439)))

(declare-fun b!1170908 () Bool)

(declare-fun e!665573 () Bool)

(assert (=> b!1170908 (= e!665573 tp_is_empty!29439)))

(declare-fun b!1170909 () Bool)

(declare-fun res!777259 () Bool)

(declare-fun e!665570 () Bool)

(assert (=> b!1170909 (=> (not res!777259) (not e!665570))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1170909 (= res!777259 (validMask!0 mask!1564))))

(declare-fun b!1170910 () Bool)

(declare-fun e!665567 () Bool)

(assert (=> b!1170910 (= e!665570 e!665567)))

(declare-fun res!777254 () Bool)

(assert (=> b!1170910 (=> (not res!777254) (not e!665567))))

(declare-datatypes ((array!75654 0))(
  ( (array!75655 (arr!36473 (Array (_ BitVec 32) (_ BitVec 64))) (size!37010 (_ BitVec 32))) )
))
(declare-fun lt!527385 () array!75654)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75654 (_ BitVec 32)) Bool)

(assert (=> b!1170910 (= res!777254 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!527385 mask!1564))))

(declare-fun _keys!1208 () array!75654)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1170910 (= lt!527385 (array!75655 (store (arr!36473 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37010 _keys!1208)))))

(declare-fun res!777264 () Bool)

(assert (=> start!99366 (=> (not res!777264) (not e!665570))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!99366 (= res!777264 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37010 _keys!1208))))))

(assert (=> start!99366 e!665570))

(assert (=> start!99366 tp_is_empty!29439))

(declare-fun array_inv!27754 (array!75654) Bool)

(assert (=> start!99366 (array_inv!27754 _keys!1208)))

(assert (=> start!99366 true))

(assert (=> start!99366 tp!87441))

(declare-datatypes ((V!44379 0))(
  ( (V!44380 (val!14776 Int)) )
))
(declare-datatypes ((ValueCell!14010 0))(
  ( (ValueCellFull!14010 (v!17415 V!44379)) (EmptyCell!14010) )
))
(declare-datatypes ((array!75656 0))(
  ( (array!75657 (arr!36474 (Array (_ BitVec 32) ValueCell!14010)) (size!37011 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75656)

(declare-fun e!665578 () Bool)

(declare-fun array_inv!27755 (array!75656) Bool)

(assert (=> start!99366 (and (array_inv!27755 _values!996) e!665578)))

(declare-fun b!1170911 () Bool)

(declare-fun e!665576 () Bool)

(assert (=> b!1170911 (= e!665576 true)))

(declare-fun lt!527381 () Bool)

(declare-datatypes ((List!25736 0))(
  ( (Nil!25733) (Cons!25732 (h!26941 (_ BitVec 64)) (t!37644 List!25736)) )
))
(declare-fun contains!6859 (List!25736 (_ BitVec 64)) Bool)

(assert (=> b!1170911 (= lt!527381 (contains!6859 Nil!25733 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1170912 () Bool)

(declare-fun res!777253 () Bool)

(assert (=> b!1170912 (=> (not res!777253) (not e!665567))))

(declare-fun arrayNoDuplicates!0 (array!75654 (_ BitVec 32) List!25736) Bool)

(assert (=> b!1170912 (= res!777253 (arrayNoDuplicates!0 lt!527385 #b00000000000000000000000000000000 Nil!25733))))

(declare-fun b!1170913 () Bool)

(declare-fun mapRes!45986 () Bool)

(assert (=> b!1170913 (= e!665578 (and e!665575 mapRes!45986))))

(declare-fun condMapEmpty!45986 () Bool)

(declare-fun mapDefault!45986 () ValueCell!14010)

(assert (=> b!1170913 (= condMapEmpty!45986 (= (arr!36474 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14010)) mapDefault!45986)))))

(declare-fun b!1170914 () Bool)

(declare-fun res!777270 () Bool)

(assert (=> b!1170914 (=> (not res!777270) (not e!665570))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1170914 (= res!777270 (validKeyInArray!0 k0!934))))

(declare-fun b!1170915 () Bool)

(declare-fun e!665568 () Bool)

(declare-fun e!665566 () Bool)

(assert (=> b!1170915 (= e!665568 e!665566)))

(declare-fun res!777257 () Bool)

(assert (=> b!1170915 (=> res!777257 e!665566)))

(assert (=> b!1170915 (= res!777257 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!44379)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun lt!527387 () array!75656)

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((tuple2!18966 0))(
  ( (tuple2!18967 (_1!9493 (_ BitVec 64)) (_2!9493 V!44379)) )
))
(declare-datatypes ((List!25737 0))(
  ( (Nil!25734) (Cons!25733 (h!26942 tuple2!18966) (t!37645 List!25737)) )
))
(declare-datatypes ((ListLongMap!16947 0))(
  ( (ListLongMap!16948 (toList!8489 List!25737)) )
))
(declare-fun lt!527386 () ListLongMap!16947)

(declare-fun minValue!944 () V!44379)

(declare-fun getCurrentListMapNoExtraKeys!4921 (array!75654 array!75656 (_ BitVec 32) (_ BitVec 32) V!44379 V!44379 (_ BitVec 32) Int) ListLongMap!16947)

(assert (=> b!1170915 (= lt!527386 (getCurrentListMapNoExtraKeys!4921 lt!527385 lt!527387 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!527391 () V!44379)

(assert (=> b!1170915 (= lt!527387 (array!75657 (store (arr!36474 _values!996) i!673 (ValueCellFull!14010 lt!527391)) (size!37011 _values!996)))))

(declare-fun dynLambda!2910 (Int (_ BitVec 64)) V!44379)

(assert (=> b!1170915 (= lt!527391 (dynLambda!2910 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!527383 () ListLongMap!16947)

(assert (=> b!1170915 (= lt!527383 (getCurrentListMapNoExtraKeys!4921 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1170916 () Bool)

(declare-fun res!777262 () Bool)

(assert (=> b!1170916 (=> (not res!777262) (not e!665570))))

(assert (=> b!1170916 (= res!777262 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37010 _keys!1208))))))

(declare-fun b!1170917 () Bool)

(declare-fun res!777256 () Bool)

(assert (=> b!1170917 (=> res!777256 e!665576)))

(assert (=> b!1170917 (= res!777256 (contains!6859 Nil!25733 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1170918 () Bool)

(assert (=> b!1170918 (= e!665567 (not e!665568))))

(declare-fun res!777265 () Bool)

(assert (=> b!1170918 (=> res!777265 e!665568)))

(assert (=> b!1170918 (= res!777265 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!75654 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1170918 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!38520 0))(
  ( (Unit!38521) )
))
(declare-fun lt!527382 () Unit!38520)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75654 (_ BitVec 64) (_ BitVec 32)) Unit!38520)

(assert (=> b!1170918 (= lt!527382 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1170919 () Bool)

(declare-fun e!665572 () Bool)

(assert (=> b!1170919 (= e!665572 (arrayContainsKey!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1170920 () Bool)

(declare-fun res!777258 () Bool)

(assert (=> b!1170920 (=> (not res!777258) (not e!665570))))

(assert (=> b!1170920 (= res!777258 (= (select (arr!36473 _keys!1208) i!673) k0!934))))

(declare-fun b!1170921 () Bool)

(declare-fun e!665571 () Bool)

(assert (=> b!1170921 (= e!665566 e!665571)))

(declare-fun res!777263 () Bool)

(assert (=> b!1170921 (=> res!777263 e!665571)))

(assert (=> b!1170921 (= res!777263 (not (validKeyInArray!0 (select (arr!36473 _keys!1208) from!1455))))))

(declare-fun lt!527380 () ListLongMap!16947)

(declare-fun lt!527384 () ListLongMap!16947)

(assert (=> b!1170921 (= lt!527380 lt!527384)))

(declare-fun lt!527388 () ListLongMap!16947)

(declare-fun -!1506 (ListLongMap!16947 (_ BitVec 64)) ListLongMap!16947)

(assert (=> b!1170921 (= lt!527384 (-!1506 lt!527388 k0!934))))

(assert (=> b!1170921 (= lt!527380 (getCurrentListMapNoExtraKeys!4921 lt!527385 lt!527387 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1170921 (= lt!527388 (getCurrentListMapNoExtraKeys!4921 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!527379 () Unit!38520)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!730 (array!75654 array!75656 (_ BitVec 32) (_ BitVec 32) V!44379 V!44379 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38520)

(assert (=> b!1170921 (= lt!527379 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!730 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1170922 () Bool)

(declare-fun res!777255 () Bool)

(assert (=> b!1170922 (=> (not res!777255) (not e!665570))))

(assert (=> b!1170922 (= res!777255 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25733))))

(declare-fun mapNonEmpty!45986 () Bool)

(declare-fun tp!87442 () Bool)

(assert (=> mapNonEmpty!45986 (= mapRes!45986 (and tp!87442 e!665573))))

(declare-fun mapValue!45986 () ValueCell!14010)

(declare-fun mapRest!45986 () (Array (_ BitVec 32) ValueCell!14010))

(declare-fun mapKey!45986 () (_ BitVec 32))

(assert (=> mapNonEmpty!45986 (= (arr!36474 _values!996) (store mapRest!45986 mapKey!45986 mapValue!45986))))

(declare-fun mapIsEmpty!45986 () Bool)

(assert (=> mapIsEmpty!45986 mapRes!45986))

(declare-fun b!1170923 () Bool)

(declare-fun res!777260 () Bool)

(assert (=> b!1170923 (=> (not res!777260) (not e!665570))))

(assert (=> b!1170923 (= res!777260 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1170924 () Bool)

(declare-fun res!777268 () Bool)

(assert (=> b!1170924 (=> res!777268 e!665576)))

(declare-fun noDuplicate!1624 (List!25736) Bool)

(assert (=> b!1170924 (= res!777268 (not (noDuplicate!1624 Nil!25733)))))

(declare-fun b!1170925 () Bool)

(declare-fun res!777261 () Bool)

(assert (=> b!1170925 (=> (not res!777261) (not e!665570))))

(assert (=> b!1170925 (= res!777261 (and (= (size!37011 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37010 _keys!1208) (size!37011 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1170926 () Bool)

(declare-fun e!665574 () Bool)

(assert (=> b!1170926 (= e!665574 e!665572)))

(declare-fun res!777269 () Bool)

(assert (=> b!1170926 (=> res!777269 e!665572)))

(assert (=> b!1170926 (= res!777269 (not (= (select (arr!36473 _keys!1208) from!1455) k0!934)))))

(declare-fun b!1170927 () Bool)

(declare-fun e!665569 () Bool)

(assert (=> b!1170927 (= e!665569 e!665576)))

(declare-fun res!777267 () Bool)

(assert (=> b!1170927 (=> res!777267 e!665576)))

(assert (=> b!1170927 (= res!777267 (or (bvsge (size!37010 _keys!1208) #b01111111111111111111111111111111) (bvsge (bvadd #b00000000000000000000000000000001 from!1455) (size!37010 _keys!1208)) (bvsge from!1455 (size!37010 _keys!1208))))))

(assert (=> b!1170927 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25733)))

(declare-fun lt!527390 () Unit!38520)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!75654 (_ BitVec 32) (_ BitVec 32)) Unit!38520)

(assert (=> b!1170927 (= lt!527390 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1170927 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!527389 () Unit!38520)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!75654 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!38520)

(assert (=> b!1170927 (= lt!527389 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k0!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1170928 () Bool)

(assert (=> b!1170928 (= e!665571 e!665569)))

(declare-fun res!777266 () Bool)

(assert (=> b!1170928 (=> res!777266 e!665569)))

(assert (=> b!1170928 (= res!777266 (not (= (select (arr!36473 _keys!1208) from!1455) k0!934)))))

(assert (=> b!1170928 e!665574))

(declare-fun res!777271 () Bool)

(assert (=> b!1170928 (=> (not res!777271) (not e!665574))))

(declare-fun +!3729 (ListLongMap!16947 tuple2!18966) ListLongMap!16947)

(declare-fun get!18632 (ValueCell!14010 V!44379) V!44379)

(assert (=> b!1170928 (= res!777271 (= lt!527386 (+!3729 lt!527384 (tuple2!18967 (select (arr!36473 _keys!1208) from!1455) (get!18632 (select (arr!36474 _values!996) from!1455) lt!527391)))))))

(assert (= (and start!99366 res!777264) b!1170909))

(assert (= (and b!1170909 res!777259) b!1170925))

(assert (= (and b!1170925 res!777261) b!1170923))

(assert (= (and b!1170923 res!777260) b!1170922))

(assert (= (and b!1170922 res!777255) b!1170916))

(assert (= (and b!1170916 res!777262) b!1170914))

(assert (= (and b!1170914 res!777270) b!1170920))

(assert (= (and b!1170920 res!777258) b!1170910))

(assert (= (and b!1170910 res!777254) b!1170912))

(assert (= (and b!1170912 res!777253) b!1170918))

(assert (= (and b!1170918 (not res!777265)) b!1170915))

(assert (= (and b!1170915 (not res!777257)) b!1170921))

(assert (= (and b!1170921 (not res!777263)) b!1170928))

(assert (= (and b!1170928 res!777271) b!1170926))

(assert (= (and b!1170926 (not res!777269)) b!1170919))

(assert (= (and b!1170928 (not res!777266)) b!1170927))

(assert (= (and b!1170927 (not res!777267)) b!1170924))

(assert (= (and b!1170924 (not res!777268)) b!1170917))

(assert (= (and b!1170917 (not res!777256)) b!1170911))

(assert (= (and b!1170913 condMapEmpty!45986) mapIsEmpty!45986))

(assert (= (and b!1170913 (not condMapEmpty!45986)) mapNonEmpty!45986))

(get-info :version)

(assert (= (and mapNonEmpty!45986 ((_ is ValueCellFull!14010) mapValue!45986)) b!1170908))

(assert (= (and b!1170913 ((_ is ValueCellFull!14010) mapDefault!45986)) b!1170907))

(assert (= start!99366 b!1170913))

(declare-fun b_lambda!20071 () Bool)

(assert (=> (not b_lambda!20071) (not b!1170915)))

(declare-fun t!37643 () Bool)

(declare-fun tb!9729 () Bool)

(assert (=> (and start!99366 (= defaultEntry!1004 defaultEntry!1004) t!37643) tb!9729))

(declare-fun result!20017 () Bool)

(assert (=> tb!9729 (= result!20017 tp_is_empty!29439)))

(assert (=> b!1170915 t!37643))

(declare-fun b_and!40701 () Bool)

(assert (= b_and!40699 (and (=> t!37643 result!20017) b_and!40701)))

(declare-fun m!1078777 () Bool)

(assert (=> b!1170915 m!1078777))

(declare-fun m!1078779 () Bool)

(assert (=> b!1170915 m!1078779))

(declare-fun m!1078781 () Bool)

(assert (=> b!1170915 m!1078781))

(declare-fun m!1078783 () Bool)

(assert (=> b!1170915 m!1078783))

(declare-fun m!1078785 () Bool)

(assert (=> b!1170926 m!1078785))

(declare-fun m!1078787 () Bool)

(assert (=> b!1170918 m!1078787))

(declare-fun m!1078789 () Bool)

(assert (=> b!1170918 m!1078789))

(declare-fun m!1078791 () Bool)

(assert (=> b!1170923 m!1078791))

(declare-fun m!1078793 () Bool)

(assert (=> b!1170909 m!1078793))

(declare-fun m!1078795 () Bool)

(assert (=> b!1170922 m!1078795))

(declare-fun m!1078797 () Bool)

(assert (=> b!1170927 m!1078797))

(declare-fun m!1078799 () Bool)

(assert (=> b!1170927 m!1078799))

(declare-fun m!1078801 () Bool)

(assert (=> b!1170927 m!1078801))

(declare-fun m!1078803 () Bool)

(assert (=> b!1170927 m!1078803))

(declare-fun m!1078805 () Bool)

(assert (=> start!99366 m!1078805))

(declare-fun m!1078807 () Bool)

(assert (=> start!99366 m!1078807))

(declare-fun m!1078809 () Bool)

(assert (=> b!1170910 m!1078809))

(declare-fun m!1078811 () Bool)

(assert (=> b!1170910 m!1078811))

(declare-fun m!1078813 () Bool)

(assert (=> mapNonEmpty!45986 m!1078813))

(assert (=> b!1170928 m!1078785))

(declare-fun m!1078815 () Bool)

(assert (=> b!1170928 m!1078815))

(assert (=> b!1170928 m!1078815))

(declare-fun m!1078817 () Bool)

(assert (=> b!1170928 m!1078817))

(declare-fun m!1078819 () Bool)

(assert (=> b!1170928 m!1078819))

(declare-fun m!1078821 () Bool)

(assert (=> b!1170920 m!1078821))

(declare-fun m!1078823 () Bool)

(assert (=> b!1170919 m!1078823))

(declare-fun m!1078825 () Bool)

(assert (=> b!1170911 m!1078825))

(declare-fun m!1078827 () Bool)

(assert (=> b!1170912 m!1078827))

(declare-fun m!1078829 () Bool)

(assert (=> b!1170914 m!1078829))

(declare-fun m!1078831 () Bool)

(assert (=> b!1170921 m!1078831))

(declare-fun m!1078833 () Bool)

(assert (=> b!1170921 m!1078833))

(declare-fun m!1078835 () Bool)

(assert (=> b!1170921 m!1078835))

(declare-fun m!1078837 () Bool)

(assert (=> b!1170921 m!1078837))

(assert (=> b!1170921 m!1078785))

(declare-fun m!1078839 () Bool)

(assert (=> b!1170921 m!1078839))

(assert (=> b!1170921 m!1078785))

(declare-fun m!1078841 () Bool)

(assert (=> b!1170924 m!1078841))

(declare-fun m!1078843 () Bool)

(assert (=> b!1170917 m!1078843))

(check-sat (not b!1170928) tp_is_empty!29439 (not b!1170910) (not b!1170922) (not b_next!24909) (not b!1170918) (not b!1170911) (not b_lambda!20071) (not b!1170909) (not b!1170912) (not b!1170914) (not b!1170927) (not b!1170921) (not b!1170923) (not mapNonEmpty!45986) (not b!1170924) (not b!1170919) (not b!1170915) (not b!1170917) b_and!40701 (not start!99366))
(check-sat b_and!40701 (not b_next!24909))
