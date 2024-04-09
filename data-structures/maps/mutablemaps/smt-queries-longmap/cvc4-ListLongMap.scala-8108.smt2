; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99554 () Bool)

(assert start!99554)

(declare-fun b_free!25097 () Bool)

(declare-fun b_next!25097 () Bool)

(assert (=> start!99554 (= b_free!25097 (not b_next!25097))))

(declare-fun tp!88006 () Bool)

(declare-fun b_and!41075 () Bool)

(assert (=> start!99554 (= tp!88006 b_and!41075)))

(declare-fun mapIsEmpty!46268 () Bool)

(declare-fun mapRes!46268 () Bool)

(assert (=> mapIsEmpty!46268 mapRes!46268))

(declare-fun b!1176931 () Bool)

(declare-fun e!669073 () Bool)

(declare-fun e!669071 () Bool)

(assert (=> b!1176931 (= e!669073 e!669071)))

(declare-fun res!781846 () Bool)

(assert (=> b!1176931 (=> res!781846 e!669071)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1176931 (= res!781846 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((array!76030 0))(
  ( (array!76031 (arr!36661 (Array (_ BitVec 32) (_ BitVec 64))) (size!37198 (_ BitVec 32))) )
))
(declare-fun lt!531295 () array!76030)

(declare-datatypes ((V!44629 0))(
  ( (V!44630 (val!14870 Int)) )
))
(declare-datatypes ((tuple2!19138 0))(
  ( (tuple2!19139 (_1!9579 (_ BitVec 64)) (_2!9579 V!44629)) )
))
(declare-datatypes ((List!25905 0))(
  ( (Nil!25902) (Cons!25901 (h!27110 tuple2!19138) (t!38001 List!25905)) )
))
(declare-datatypes ((ListLongMap!17119 0))(
  ( (ListLongMap!17120 (toList!8575 List!25905)) )
))
(declare-fun lt!531308 () ListLongMap!17119)

(declare-fun minValue!944 () V!44629)

(declare-fun zeroValue!944 () V!44629)

(declare-datatypes ((ValueCell!14104 0))(
  ( (ValueCellFull!14104 (v!17509 V!44629)) (EmptyCell!14104) )
))
(declare-datatypes ((array!76032 0))(
  ( (array!76033 (arr!36662 (Array (_ BitVec 32) ValueCell!14104)) (size!37199 (_ BitVec 32))) )
))
(declare-fun lt!531305 () array!76032)

(declare-fun defaultEntry!1004 () Int)

(declare-fun getCurrentListMapNoExtraKeys!5006 (array!76030 array!76032 (_ BitVec 32) (_ BitVec 32) V!44629 V!44629 (_ BitVec 32) Int) ListLongMap!17119)

(assert (=> b!1176931 (= lt!531308 (getCurrentListMapNoExtraKeys!5006 lt!531295 lt!531305 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!531297 () V!44629)

(declare-fun _values!996 () array!76032)

(assert (=> b!1176931 (= lt!531305 (array!76033 (store (arr!36662 _values!996) i!673 (ValueCellFull!14104 lt!531297)) (size!37199 _values!996)))))

(declare-fun dynLambda!2982 (Int (_ BitVec 64)) V!44629)

(assert (=> b!1176931 (= lt!531297 (dynLambda!2982 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun _keys!1208 () array!76030)

(declare-fun lt!531307 () ListLongMap!17119)

(assert (=> b!1176931 (= lt!531307 (getCurrentListMapNoExtraKeys!5006 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun mapNonEmpty!46268 () Bool)

(declare-fun tp!88005 () Bool)

(declare-fun e!669072 () Bool)

(assert (=> mapNonEmpty!46268 (= mapRes!46268 (and tp!88005 e!669072))))

(declare-fun mapValue!46268 () ValueCell!14104)

(declare-fun mapKey!46268 () (_ BitVec 32))

(declare-fun mapRest!46268 () (Array (_ BitVec 32) ValueCell!14104))

(assert (=> mapNonEmpty!46268 (= (arr!36662 _values!996) (store mapRest!46268 mapKey!46268 mapValue!46268))))

(declare-fun b!1176932 () Bool)

(declare-fun res!781837 () Bool)

(declare-fun e!669078 () Bool)

(assert (=> b!1176932 (=> (not res!781837) (not e!669078))))

(declare-datatypes ((List!25906 0))(
  ( (Nil!25903) (Cons!25902 (h!27111 (_ BitVec 64)) (t!38002 List!25906)) )
))
(declare-fun arrayNoDuplicates!0 (array!76030 (_ BitVec 32) List!25906) Bool)

(assert (=> b!1176932 (= res!781837 (arrayNoDuplicates!0 lt!531295 #b00000000000000000000000000000000 Nil!25903))))

(declare-fun b!1176933 () Bool)

(declare-fun res!781832 () Bool)

(declare-fun e!669077 () Bool)

(assert (=> b!1176933 (=> (not res!781832) (not e!669077))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1176933 (= res!781832 (validMask!0 mask!1564))))

(declare-fun b!1176934 () Bool)

(declare-datatypes ((Unit!38794 0))(
  ( (Unit!38795) )
))
(declare-fun e!669076 () Unit!38794)

(declare-fun Unit!38796 () Unit!38794)

(assert (=> b!1176934 (= e!669076 Unit!38796)))

(declare-fun b!1176935 () Bool)

(declare-fun e!669080 () Bool)

(assert (=> b!1176935 (= e!669080 true)))

(declare-fun e!669070 () Bool)

(assert (=> b!1176935 e!669070))

(declare-fun res!781845 () Bool)

(assert (=> b!1176935 (=> (not res!781845) (not e!669070))))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1176935 (= res!781845 (not (= (select (arr!36661 _keys!1208) from!1455) k!934)))))

(declare-fun lt!531304 () Unit!38794)

(assert (=> b!1176935 (= lt!531304 e!669076)))

(declare-fun c!116717 () Bool)

(assert (=> b!1176935 (= c!116717 (= (select (arr!36661 _keys!1208) from!1455) k!934))))

(declare-fun e!669074 () Bool)

(assert (=> b!1176935 e!669074))

(declare-fun res!781831 () Bool)

(assert (=> b!1176935 (=> (not res!781831) (not e!669074))))

(declare-fun lt!531299 () tuple2!19138)

(declare-fun lt!531300 () ListLongMap!17119)

(declare-fun +!3798 (ListLongMap!17119 tuple2!19138) ListLongMap!17119)

(assert (=> b!1176935 (= res!781831 (= lt!531308 (+!3798 lt!531300 lt!531299)))))

(declare-fun get!18762 (ValueCell!14104 V!44629) V!44629)

(assert (=> b!1176935 (= lt!531299 (tuple2!19139 (select (arr!36661 _keys!1208) from!1455) (get!18762 (select (arr!36662 _values!996) from!1455) lt!531297)))))

(declare-fun b!1176936 () Bool)

(declare-fun res!781833 () Bool)

(assert (=> b!1176936 (=> (not res!781833) (not e!669077))))

(assert (=> b!1176936 (= res!781833 (= (select (arr!36661 _keys!1208) i!673) k!934))))

(declare-fun res!781836 () Bool)

(assert (=> start!99554 (=> (not res!781836) (not e!669077))))

(assert (=> start!99554 (= res!781836 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37198 _keys!1208))))))

(assert (=> start!99554 e!669077))

(declare-fun tp_is_empty!29627 () Bool)

(assert (=> start!99554 tp_is_empty!29627))

(declare-fun array_inv!27886 (array!76030) Bool)

(assert (=> start!99554 (array_inv!27886 _keys!1208)))

(assert (=> start!99554 true))

(assert (=> start!99554 tp!88006))

(declare-fun e!669081 () Bool)

(declare-fun array_inv!27887 (array!76032) Bool)

(assert (=> start!99554 (and (array_inv!27887 _values!996) e!669081)))

(declare-fun b!1176937 () Bool)

(declare-fun e!669075 () Bool)

(assert (=> b!1176937 (= e!669075 tp_is_empty!29627)))

(declare-fun b!1176938 () Bool)

(assert (=> b!1176938 (= e!669077 e!669078)))

(declare-fun res!781841 () Bool)

(assert (=> b!1176938 (=> (not res!781841) (not e!669078))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76030 (_ BitVec 32)) Bool)

(assert (=> b!1176938 (= res!781841 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!531295 mask!1564))))

(assert (=> b!1176938 (= lt!531295 (array!76031 (store (arr!36661 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37198 _keys!1208)))))

(declare-fun b!1176939 () Bool)

(declare-fun res!781838 () Bool)

(assert (=> b!1176939 (=> (not res!781838) (not e!669077))))

(assert (=> b!1176939 (= res!781838 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1176940 () Bool)

(assert (=> b!1176940 (= e!669071 e!669080)))

(declare-fun res!781835 () Bool)

(assert (=> b!1176940 (=> res!781835 e!669080)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1176940 (= res!781835 (not (validKeyInArray!0 (select (arr!36661 _keys!1208) from!1455))))))

(declare-fun lt!531298 () ListLongMap!17119)

(assert (=> b!1176940 (= lt!531298 lt!531300)))

(declare-fun lt!531296 () ListLongMap!17119)

(declare-fun -!1578 (ListLongMap!17119 (_ BitVec 64)) ListLongMap!17119)

(assert (=> b!1176940 (= lt!531300 (-!1578 lt!531296 k!934))))

(assert (=> b!1176940 (= lt!531298 (getCurrentListMapNoExtraKeys!5006 lt!531295 lt!531305 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1176940 (= lt!531296 (getCurrentListMapNoExtraKeys!5006 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!531302 () Unit!38794)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!802 (array!76030 array!76032 (_ BitVec 32) (_ BitVec 32) V!44629 V!44629 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38794)

(assert (=> b!1176940 (= lt!531302 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!802 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1176941 () Bool)

(assert (=> b!1176941 (= e!669070 (= lt!531307 (+!3798 lt!531296 lt!531299)))))

(declare-fun b!1176942 () Bool)

(declare-fun Unit!38797 () Unit!38794)

(assert (=> b!1176942 (= e!669076 Unit!38797)))

(declare-fun lt!531303 () Unit!38794)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!76030 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!38794)

(assert (=> b!1176942 (= lt!531303 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun arrayContainsKey!0 (array!76030 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1176942 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!531309 () Unit!38794)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!76030 (_ BitVec 32) (_ BitVec 32)) Unit!38794)

(assert (=> b!1176942 (= lt!531309 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1176942 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25903)))

(declare-fun lt!531301 () Unit!38794)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!76030 (_ BitVec 64) (_ BitVec 32) List!25906) Unit!38794)

(assert (=> b!1176942 (= lt!531301 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!25903))))

(assert (=> b!1176942 false))

(declare-fun b!1176943 () Bool)

(declare-fun res!781839 () Bool)

(assert (=> b!1176943 (=> (not res!781839) (not e!669077))))

(assert (=> b!1176943 (= res!781839 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25903))))

(declare-fun b!1176944 () Bool)

(assert (=> b!1176944 (= e!669078 (not e!669073))))

(declare-fun res!781844 () Bool)

(assert (=> b!1176944 (=> res!781844 e!669073)))

(assert (=> b!1176944 (= res!781844 (bvsgt from!1455 i!673))))

(assert (=> b!1176944 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!531306 () Unit!38794)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76030 (_ BitVec 64) (_ BitVec 32)) Unit!38794)

(assert (=> b!1176944 (= lt!531306 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1176945 () Bool)

(declare-fun res!781840 () Bool)

(assert (=> b!1176945 (=> (not res!781840) (not e!669077))))

(assert (=> b!1176945 (= res!781840 (validKeyInArray!0 k!934))))

(declare-fun b!1176946 () Bool)

(assert (=> b!1176946 (= e!669072 tp_is_empty!29627)))

(declare-fun b!1176947 () Bool)

(declare-fun res!781843 () Bool)

(assert (=> b!1176947 (=> (not res!781843) (not e!669077))))

(assert (=> b!1176947 (= res!781843 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37198 _keys!1208))))))

(declare-fun b!1176948 () Bool)

(assert (=> b!1176948 (= e!669081 (and e!669075 mapRes!46268))))

(declare-fun condMapEmpty!46268 () Bool)

(declare-fun mapDefault!46268 () ValueCell!14104)

