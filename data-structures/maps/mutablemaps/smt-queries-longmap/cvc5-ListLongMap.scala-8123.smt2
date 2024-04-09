; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99640 () Bool)

(assert start!99640)

(declare-fun b_free!25183 () Bool)

(declare-fun b_next!25183 () Bool)

(assert (=> start!99640 (= b_free!25183 (not b_next!25183))))

(declare-fun tp!88264 () Bool)

(declare-fun b_and!41247 () Bool)

(assert (=> start!99640 (= tp!88264 b_and!41247)))

(declare-datatypes ((array!76198 0))(
  ( (array!76199 (arr!36745 (Array (_ BitVec 32) (_ BitVec 64))) (size!37282 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76198)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun e!670755 () Bool)

(declare-fun b!1179737 () Bool)

(declare-fun arrayContainsKey!0 (array!76198 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1179737 (= e!670755 (arrayContainsKey!0 _keys!1208 k!934 i!673))))

(declare-fun mapIsEmpty!46397 () Bool)

(declare-fun mapRes!46397 () Bool)

(assert (=> mapIsEmpty!46397 mapRes!46397))

(declare-fun b!1179738 () Bool)

(declare-fun e!670753 () Bool)

(declare-fun e!670759 () Bool)

(assert (=> b!1179738 (= e!670753 e!670759)))

(declare-fun res!783909 () Bool)

(assert (=> b!1179738 (=> res!783909 e!670759)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1179738 (= res!783909 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-datatypes ((V!44745 0))(
  ( (V!44746 (val!14913 Int)) )
))
(declare-fun zeroValue!944 () V!44745)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun lt!533230 () array!76198)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((ValueCell!14147 0))(
  ( (ValueCellFull!14147 (v!17552 V!44745)) (EmptyCell!14147) )
))
(declare-datatypes ((array!76200 0))(
  ( (array!76201 (arr!36746 (Array (_ BitVec 32) ValueCell!14147)) (size!37283 (_ BitVec 32))) )
))
(declare-fun lt!533232 () array!76200)

(declare-fun minValue!944 () V!44745)

(declare-datatypes ((tuple2!19216 0))(
  ( (tuple2!19217 (_1!9618 (_ BitVec 64)) (_2!9618 V!44745)) )
))
(declare-datatypes ((List!25980 0))(
  ( (Nil!25977) (Cons!25976 (h!27185 tuple2!19216) (t!38162 List!25980)) )
))
(declare-datatypes ((ListLongMap!17197 0))(
  ( (ListLongMap!17198 (toList!8614 List!25980)) )
))
(declare-fun lt!533242 () ListLongMap!17197)

(declare-fun getCurrentListMapNoExtraKeys!5042 (array!76198 array!76200 (_ BitVec 32) (_ BitVec 32) V!44745 V!44745 (_ BitVec 32) Int) ListLongMap!17197)

(assert (=> b!1179738 (= lt!533242 (getCurrentListMapNoExtraKeys!5042 lt!533230 lt!533232 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!533239 () V!44745)

(declare-fun _values!996 () array!76200)

(assert (=> b!1179738 (= lt!533232 (array!76201 (store (arr!36746 _values!996) i!673 (ValueCellFull!14147 lt!533239)) (size!37283 _values!996)))))

(declare-fun dynLambda!3014 (Int (_ BitVec 64)) V!44745)

(assert (=> b!1179738 (= lt!533239 (dynLambda!3014 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!533244 () ListLongMap!17197)

(assert (=> b!1179738 (= lt!533244 (getCurrentListMapNoExtraKeys!5042 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1179739 () Bool)

(declare-fun res!783907 () Bool)

(declare-fun e!670751 () Bool)

(assert (=> b!1179739 (=> (not res!783907) (not e!670751))))

(assert (=> b!1179739 (= res!783907 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37282 _keys!1208))))))

(declare-fun b!1179740 () Bool)

(declare-fun res!783913 () Bool)

(declare-fun e!670748 () Bool)

(assert (=> b!1179740 (=> (not res!783913) (not e!670748))))

(declare-datatypes ((List!25981 0))(
  ( (Nil!25978) (Cons!25977 (h!27186 (_ BitVec 64)) (t!38163 List!25981)) )
))
(declare-fun arrayNoDuplicates!0 (array!76198 (_ BitVec 32) List!25981) Bool)

(assert (=> b!1179740 (= res!783913 (arrayNoDuplicates!0 lt!533230 #b00000000000000000000000000000000 Nil!25978))))

(declare-fun b!1179741 () Bool)

(declare-fun e!670757 () Bool)

(assert (=> b!1179741 (= e!670757 true)))

(declare-fun e!670747 () Bool)

(assert (=> b!1179741 e!670747))

(declare-fun res!783911 () Bool)

(assert (=> b!1179741 (=> (not res!783911) (not e!670747))))

(assert (=> b!1179741 (= res!783911 (not (= (select (arr!36745 _keys!1208) from!1455) k!934)))))

(declare-datatypes ((Unit!38923 0))(
  ( (Unit!38924) )
))
(declare-fun lt!533234 () Unit!38923)

(declare-fun e!670754 () Unit!38923)

(assert (=> b!1179741 (= lt!533234 e!670754)))

(declare-fun c!116846 () Bool)

(assert (=> b!1179741 (= c!116846 (= (select (arr!36745 _keys!1208) from!1455) k!934))))

(declare-fun e!670756 () Bool)

(assert (=> b!1179741 e!670756))

(declare-fun res!783922 () Bool)

(assert (=> b!1179741 (=> (not res!783922) (not e!670756))))

(declare-fun lt!533238 () ListLongMap!17197)

(declare-fun lt!533236 () tuple2!19216)

(declare-fun +!3834 (ListLongMap!17197 tuple2!19216) ListLongMap!17197)

(assert (=> b!1179741 (= res!783922 (= lt!533242 (+!3834 lt!533238 lt!533236)))))

(declare-fun get!18821 (ValueCell!14147 V!44745) V!44745)

(assert (=> b!1179741 (= lt!533236 (tuple2!19217 (select (arr!36745 _keys!1208) from!1455) (get!18821 (select (arr!36746 _values!996) from!1455) lt!533239)))))

(declare-fun b!1179742 () Bool)

(assert (=> b!1179742 (= e!670756 e!670755)))

(declare-fun res!783914 () Bool)

(assert (=> b!1179742 (=> res!783914 e!670755)))

(assert (=> b!1179742 (= res!783914 (not (= (select (arr!36745 _keys!1208) from!1455) k!934)))))

(declare-fun b!1179743 () Bool)

(declare-fun Unit!38925 () Unit!38923)

(assert (=> b!1179743 (= e!670754 Unit!38925)))

(declare-fun lt!533237 () Unit!38923)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!76198 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!38923)

(assert (=> b!1179743 (= lt!533237 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1179743 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!533241 () Unit!38923)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!76198 (_ BitVec 32) (_ BitVec 32)) Unit!38923)

(assert (=> b!1179743 (= lt!533241 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1179743 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25978)))

(declare-fun lt!533243 () Unit!38923)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!76198 (_ BitVec 64) (_ BitVec 32) List!25981) Unit!38923)

(assert (=> b!1179743 (= lt!533243 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!25978))))

(assert (=> b!1179743 false))

(declare-fun res!783915 () Bool)

(assert (=> start!99640 (=> (not res!783915) (not e!670751))))

(assert (=> start!99640 (= res!783915 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37282 _keys!1208))))))

(assert (=> start!99640 e!670751))

(declare-fun tp_is_empty!29713 () Bool)

(assert (=> start!99640 tp_is_empty!29713))

(declare-fun array_inv!27942 (array!76198) Bool)

(assert (=> start!99640 (array_inv!27942 _keys!1208)))

(assert (=> start!99640 true))

(assert (=> start!99640 tp!88264))

(declare-fun e!670752 () Bool)

(declare-fun array_inv!27943 (array!76200) Bool)

(assert (=> start!99640 (and (array_inv!27943 _values!996) e!670752)))

(declare-fun b!1179744 () Bool)

(declare-fun res!783921 () Bool)

(assert (=> b!1179744 (=> (not res!783921) (not e!670751))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1179744 (= res!783921 (validMask!0 mask!1564))))

(declare-fun b!1179745 () Bool)

(declare-fun res!783908 () Bool)

(assert (=> b!1179745 (=> (not res!783908) (not e!670751))))

(assert (=> b!1179745 (= res!783908 (and (= (size!37283 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37282 _keys!1208) (size!37283 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1179746 () Bool)

(declare-fun res!783920 () Bool)

(assert (=> b!1179746 (=> (not res!783920) (not e!670751))))

(assert (=> b!1179746 (= res!783920 (= (select (arr!36745 _keys!1208) i!673) k!934))))

(declare-fun b!1179747 () Bool)

(declare-fun res!783918 () Bool)

(assert (=> b!1179747 (=> (not res!783918) (not e!670751))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1179747 (= res!783918 (validKeyInArray!0 k!934))))

(declare-fun b!1179748 () Bool)

(assert (=> b!1179748 (= e!670751 e!670748)))

(declare-fun res!783919 () Bool)

(assert (=> b!1179748 (=> (not res!783919) (not e!670748))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76198 (_ BitVec 32)) Bool)

(assert (=> b!1179748 (= res!783919 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!533230 mask!1564))))

(assert (=> b!1179748 (= lt!533230 (array!76199 (store (arr!36745 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37282 _keys!1208)))))

(declare-fun b!1179749 () Bool)

(declare-fun res!783912 () Bool)

(assert (=> b!1179749 (=> (not res!783912) (not e!670751))))

(assert (=> b!1179749 (= res!783912 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1179750 () Bool)

(declare-fun res!783910 () Bool)

(assert (=> b!1179750 (=> (not res!783910) (not e!670751))))

(assert (=> b!1179750 (= res!783910 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25978))))

(declare-fun b!1179751 () Bool)

(assert (=> b!1179751 (= e!670748 (not e!670753))))

(declare-fun res!783906 () Bool)

(assert (=> b!1179751 (=> res!783906 e!670753)))

(assert (=> b!1179751 (= res!783906 (bvsgt from!1455 i!673))))

(assert (=> b!1179751 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!533240 () Unit!38923)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76198 (_ BitVec 64) (_ BitVec 32)) Unit!38923)

(assert (=> b!1179751 (= lt!533240 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1179752 () Bool)

(declare-fun Unit!38926 () Unit!38923)

(assert (=> b!1179752 (= e!670754 Unit!38926)))

(declare-fun b!1179753 () Bool)

(declare-fun lt!533233 () ListLongMap!17197)

(assert (=> b!1179753 (= e!670747 (= lt!533238 lt!533233))))

(declare-fun b!1179754 () Bool)

(declare-fun res!783916 () Bool)

(assert (=> b!1179754 (=> (not res!783916) (not e!670747))))

(declare-fun lt!533235 () ListLongMap!17197)

(assert (=> b!1179754 (= res!783916 (= lt!533244 (+!3834 lt!533235 lt!533236)))))

(declare-fun b!1179755 () Bool)

(declare-fun e!670758 () Bool)

(assert (=> b!1179755 (= e!670758 tp_is_empty!29713)))

(declare-fun b!1179756 () Bool)

(assert (=> b!1179756 (= e!670759 e!670757)))

(declare-fun res!783917 () Bool)

(assert (=> b!1179756 (=> res!783917 e!670757)))

(assert (=> b!1179756 (= res!783917 (not (validKeyInArray!0 (select (arr!36745 _keys!1208) from!1455))))))

(assert (=> b!1179756 (= lt!533233 lt!533238)))

(declare-fun -!1608 (ListLongMap!17197 (_ BitVec 64)) ListLongMap!17197)

(assert (=> b!1179756 (= lt!533238 (-!1608 lt!533235 k!934))))

(assert (=> b!1179756 (= lt!533233 (getCurrentListMapNoExtraKeys!5042 lt!533230 lt!533232 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1179756 (= lt!533235 (getCurrentListMapNoExtraKeys!5042 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!533231 () Unit!38923)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!832 (array!76198 array!76200 (_ BitVec 32) (_ BitVec 32) V!44745 V!44745 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38923)

(assert (=> b!1179756 (= lt!533231 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!832 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1179757 () Bool)

(declare-fun e!670750 () Bool)

(assert (=> b!1179757 (= e!670750 tp_is_empty!29713)))

(declare-fun b!1179758 () Bool)

(assert (=> b!1179758 (= e!670752 (and e!670758 mapRes!46397))))

(declare-fun condMapEmpty!46397 () Bool)

(declare-fun mapDefault!46397 () ValueCell!14147)

