; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98624 () Bool)

(assert start!98624)

(declare-fun b_free!24193 () Bool)

(declare-fun b_next!24193 () Bool)

(assert (=> start!98624 (= b_free!24193 (not b_next!24193))))

(declare-fun tp!85291 () Bool)

(declare-fun b_and!39249 () Bool)

(assert (=> start!98624 (= tp!85291 b_and!39249)))

(declare-fun b!1143833 () Bool)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun e!650716 () Bool)

(declare-datatypes ((V!43425 0))(
  ( (V!43426 (val!14418 Int)) )
))
(declare-datatypes ((tuple2!18338 0))(
  ( (tuple2!18339 (_1!9179 (_ BitVec 64)) (_2!9179 V!43425)) )
))
(declare-datatypes ((List!25137 0))(
  ( (Nil!25134) (Cons!25133 (h!26342 tuple2!18338) (t!36329 List!25137)) )
))
(declare-datatypes ((ListLongMap!16319 0))(
  ( (ListLongMap!16320 (toList!8175 List!25137)) )
))
(declare-fun call!51859 () ListLongMap!16319)

(declare-fun call!51857 () ListLongMap!16319)

(declare-fun -!1268 (ListLongMap!16319 (_ BitVec 64)) ListLongMap!16319)

(assert (=> b!1143833 (= e!650716 (= call!51859 (-!1268 call!51857 k!934)))))

(declare-fun b!1143834 () Bool)

(declare-fun e!650720 () Bool)

(declare-fun e!650725 () Bool)

(assert (=> b!1143834 (= e!650720 (not e!650725))))

(declare-fun res!762067 () Bool)

(assert (=> b!1143834 (=> res!762067 e!650725)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1143834 (= res!762067 (bvsgt from!1455 i!673))))

(declare-datatypes ((array!74254 0))(
  ( (array!74255 (arr!35774 (Array (_ BitVec 32) (_ BitVec 64))) (size!36311 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74254)

(declare-fun arrayContainsKey!0 (array!74254 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1143834 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!37468 0))(
  ( (Unit!37469) )
))
(declare-fun lt!510217 () Unit!37468)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74254 (_ BitVec 64) (_ BitVec 32)) Unit!37468)

(assert (=> b!1143834 (= lt!510217 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun zeroValue!944 () V!43425)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!43425)

(declare-fun bm!51854 () Bool)

(declare-datatypes ((ValueCell!13652 0))(
  ( (ValueCellFull!13652 (v!17056 V!43425)) (EmptyCell!13652) )
))
(declare-datatypes ((array!74256 0))(
  ( (array!74257 (arr!35775 (Array (_ BitVec 32) ValueCell!13652)) (size!36312 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74256)

(declare-fun getCurrentListMapNoExtraKeys!4617 (array!74254 array!74256 (_ BitVec 32) (_ BitVec 32) V!43425 V!43425 (_ BitVec 32) Int) ListLongMap!16319)

(assert (=> bm!51854 (= call!51857 (getCurrentListMapNoExtraKeys!4617 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!112544 () Bool)

(declare-fun bm!51855 () Bool)

(declare-fun lt!510223 () ListLongMap!16319)

(declare-fun call!51860 () ListLongMap!16319)

(declare-fun c!112548 () Bool)

(declare-fun lt!510218 () ListLongMap!16319)

(declare-fun +!3519 (ListLongMap!16319 tuple2!18338) ListLongMap!16319)

(assert (=> bm!51855 (= call!51860 (+!3519 (ite c!112548 lt!510218 lt!510223) (ite c!112548 (tuple2!18339 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!112544 (tuple2!18339 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18339 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun b!1143835 () Bool)

(declare-fun e!650726 () Bool)

(assert (=> b!1143835 (= e!650725 e!650726)))

(declare-fun res!762063 () Bool)

(assert (=> b!1143835 (=> res!762063 e!650726)))

(assert (=> b!1143835 (= res!762063 (not (= from!1455 i!673)))))

(declare-fun lt!510220 () array!74256)

(declare-fun lt!510222 () ListLongMap!16319)

(declare-fun lt!510229 () array!74254)

(assert (=> b!1143835 (= lt!510222 (getCurrentListMapNoExtraKeys!4617 lt!510229 lt!510220 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!510228 () V!43425)

(assert (=> b!1143835 (= lt!510220 (array!74257 (store (arr!35775 _values!996) i!673 (ValueCellFull!13652 lt!510228)) (size!36312 _values!996)))))

(declare-fun dynLambda!2662 (Int (_ BitVec 64)) V!43425)

(assert (=> b!1143835 (= lt!510228 (dynLambda!2662 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!510219 () ListLongMap!16319)

(assert (=> b!1143835 (= lt!510219 (getCurrentListMapNoExtraKeys!4617 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun e!650723 () Bool)

(declare-fun b!1143836 () Bool)

(assert (=> b!1143836 (= e!650723 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1143837 () Bool)

(declare-fun e!650715 () Bool)

(assert (=> b!1143837 (= e!650726 e!650715)))

(declare-fun res!762062 () Bool)

(assert (=> b!1143837 (=> res!762062 e!650715)))

(assert (=> b!1143837 (= res!762062 (not (= (select (arr!35774 _keys!1208) from!1455) k!934)))))

(assert (=> b!1143837 e!650716))

(declare-fun c!112546 () Bool)

(assert (=> b!1143837 (= c!112546 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!510233 () Unit!37468)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!523 (array!74254 array!74256 (_ BitVec 32) (_ BitVec 32) V!43425 V!43425 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37468)

(assert (=> b!1143837 (= lt!510233 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!523 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1143838 () Bool)

(assert (=> b!1143838 (= e!650715 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!1455) (size!36311 _keys!1208))))))

(declare-fun lt!510236 () V!43425)

(assert (=> b!1143838 (= (-!1268 (+!3519 lt!510223 (tuple2!18339 (select (arr!35774 _keys!1208) from!1455) lt!510236)) (select (arr!35774 _keys!1208) from!1455)) lt!510223)))

(declare-fun lt!510224 () Unit!37468)

(declare-fun addThenRemoveForNewKeyIsSame!123 (ListLongMap!16319 (_ BitVec 64) V!43425) Unit!37468)

(assert (=> b!1143838 (= lt!510224 (addThenRemoveForNewKeyIsSame!123 lt!510223 (select (arr!35774 _keys!1208) from!1455) lt!510236))))

(declare-fun get!18209 (ValueCell!13652 V!43425) V!43425)

(assert (=> b!1143838 (= lt!510236 (get!18209 (select (arr!35775 _values!996) from!1455) lt!510228))))

(declare-fun lt!510230 () Unit!37468)

(declare-fun e!650727 () Unit!37468)

(assert (=> b!1143838 (= lt!510230 e!650727)))

(declare-fun c!112547 () Bool)

(declare-fun contains!6677 (ListLongMap!16319 (_ BitVec 64)) Bool)

(assert (=> b!1143838 (= c!112547 (contains!6677 lt!510223 k!934))))

(assert (=> b!1143838 (= lt!510223 (getCurrentListMapNoExtraKeys!4617 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1143839 () Bool)

(declare-fun res!762069 () Bool)

(declare-fun e!650717 () Bool)

(assert (=> b!1143839 (=> (not res!762069) (not e!650717))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1143839 (= res!762069 (validKeyInArray!0 k!934))))

(declare-fun b!1143840 () Bool)

(declare-fun e!650724 () Bool)

(declare-fun tp_is_empty!28723 () Bool)

(assert (=> b!1143840 (= e!650724 tp_is_empty!28723)))

(declare-fun e!650730 () Bool)

(declare-fun b!1143841 () Bool)

(assert (=> b!1143841 (= e!650730 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1143842 () Bool)

(declare-fun Unit!37470 () Unit!37468)

(assert (=> b!1143842 (= e!650727 Unit!37470)))

(declare-fun bm!51856 () Bool)

(assert (=> bm!51856 (= call!51859 (getCurrentListMapNoExtraKeys!4617 lt!510229 lt!510220 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!51857 () Bool)

(declare-fun call!51862 () Bool)

(declare-fun call!51861 () Bool)

(assert (=> bm!51857 (= call!51862 call!51861)))

(declare-fun b!1143843 () Bool)

(declare-fun res!762073 () Bool)

(assert (=> b!1143843 (=> (not res!762073) (not e!650717))))

(assert (=> b!1143843 (= res!762073 (and (= (size!36312 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36311 _keys!1208) (size!36312 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1143844 () Bool)

(declare-fun e!650721 () Unit!37468)

(declare-fun Unit!37471 () Unit!37468)

(assert (=> b!1143844 (= e!650721 Unit!37471)))

(declare-fun b!1143846 () Bool)

(assert (=> b!1143846 (contains!6677 call!51860 k!934)))

(declare-fun lt!510226 () Unit!37468)

(declare-fun call!51863 () Unit!37468)

(assert (=> b!1143846 (= lt!510226 call!51863)))

(assert (=> b!1143846 call!51861))

(assert (=> b!1143846 (= lt!510218 (+!3519 lt!510223 (tuple2!18339 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(declare-fun lt!510234 () Unit!37468)

(declare-fun addStillContains!816 (ListLongMap!16319 (_ BitVec 64) V!43425 (_ BitVec 64)) Unit!37468)

(assert (=> b!1143846 (= lt!510234 (addStillContains!816 lt!510223 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k!934))))

(declare-fun e!650728 () Unit!37468)

(assert (=> b!1143846 (= e!650728 lt!510226)))

(declare-fun b!1143845 () Bool)

(declare-fun Unit!37472 () Unit!37468)

(assert (=> b!1143845 (= e!650727 Unit!37472)))

(declare-fun lt!510235 () Bool)

(assert (=> b!1143845 (= lt!510235 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1143845 (= c!112548 (and (not lt!510235) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!510221 () Unit!37468)

(assert (=> b!1143845 (= lt!510221 e!650728)))

(declare-fun lt!510231 () Unit!37468)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!411 (array!74254 array!74256 (_ BitVec 32) (_ BitVec 32) V!43425 V!43425 (_ BitVec 64) (_ BitVec 32) Int) Unit!37468)

(assert (=> b!1143845 (= lt!510231 (lemmaListMapContainsThenArrayContainsFrom!411 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!112543 () Bool)

(assert (=> b!1143845 (= c!112543 (and (not (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!762066 () Bool)

(assert (=> b!1143845 (= res!762066 e!650723)))

(assert (=> b!1143845 (=> (not res!762066) (not e!650730))))

(assert (=> b!1143845 e!650730))

(declare-fun lt!510232 () Unit!37468)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74254 (_ BitVec 32) (_ BitVec 32)) Unit!37468)

(assert (=> b!1143845 (= lt!510232 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!25138 0))(
  ( (Nil!25135) (Cons!25134 (h!26343 (_ BitVec 64)) (t!36330 List!25138)) )
))
(declare-fun arrayNoDuplicates!0 (array!74254 (_ BitVec 32) List!25138) Bool)

(assert (=> b!1143845 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25135)))

(declare-fun lt!510225 () Unit!37468)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74254 (_ BitVec 64) (_ BitVec 32) List!25138) Unit!37468)

(assert (=> b!1143845 (= lt!510225 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!25135))))

(assert (=> b!1143845 false))

(declare-fun res!762074 () Bool)

(assert (=> start!98624 (=> (not res!762074) (not e!650717))))

(assert (=> start!98624 (= res!762074 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36311 _keys!1208))))))

(assert (=> start!98624 e!650717))

(assert (=> start!98624 tp_is_empty!28723))

(declare-fun array_inv!27288 (array!74254) Bool)

(assert (=> start!98624 (array_inv!27288 _keys!1208)))

(assert (=> start!98624 true))

(assert (=> start!98624 tp!85291))

(declare-fun e!650729 () Bool)

(declare-fun array_inv!27289 (array!74256) Bool)

(assert (=> start!98624 (and (array_inv!27289 _values!996) e!650729)))

(declare-fun b!1143847 () Bool)

(declare-fun e!650722 () Bool)

(assert (=> b!1143847 (= e!650722 tp_is_empty!28723)))

(declare-fun mapNonEmpty!44909 () Bool)

(declare-fun mapRes!44909 () Bool)

(declare-fun tp!85290 () Bool)

(assert (=> mapNonEmpty!44909 (= mapRes!44909 (and tp!85290 e!650724))))

(declare-fun mapValue!44909 () ValueCell!13652)

(declare-fun mapRest!44909 () (Array (_ BitVec 32) ValueCell!13652))

(declare-fun mapKey!44909 () (_ BitVec 32))

(assert (=> mapNonEmpty!44909 (= (arr!35775 _values!996) (store mapRest!44909 mapKey!44909 mapValue!44909))))

(declare-fun b!1143848 () Bool)

(assert (=> b!1143848 call!51862))

(declare-fun lt!510227 () Unit!37468)

(declare-fun call!51864 () Unit!37468)

(assert (=> b!1143848 (= lt!510227 call!51864)))

(assert (=> b!1143848 (= e!650721 lt!510227)))

(declare-fun b!1143849 () Bool)

(declare-fun e!650718 () Unit!37468)

(assert (=> b!1143849 (= e!650718 e!650721)))

(declare-fun c!112545 () Bool)

(assert (=> b!1143849 (= c!112545 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!510235))))

(declare-fun bm!51858 () Bool)

(assert (=> bm!51858 (= call!51864 call!51863)))

(declare-fun b!1143850 () Bool)

(assert (=> b!1143850 (= c!112544 (and (not lt!510235) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1143850 (= e!650728 e!650718)))

(declare-fun b!1143851 () Bool)

(declare-fun res!762072 () Bool)

(assert (=> b!1143851 (=> (not res!762072) (not e!650720))))

(assert (=> b!1143851 (= res!762072 (arrayNoDuplicates!0 lt!510229 #b00000000000000000000000000000000 Nil!25135))))

(declare-fun mapIsEmpty!44909 () Bool)

(assert (=> mapIsEmpty!44909 mapRes!44909))

(declare-fun b!1143852 () Bool)

(assert (=> b!1143852 (= e!650717 e!650720)))

(declare-fun res!762070 () Bool)

(assert (=> b!1143852 (=> (not res!762070) (not e!650720))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74254 (_ BitVec 32)) Bool)

(assert (=> b!1143852 (= res!762070 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!510229 mask!1564))))

(assert (=> b!1143852 (= lt!510229 (array!74255 (store (arr!35774 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36311 _keys!1208)))))

(declare-fun call!51858 () ListLongMap!16319)

(declare-fun bm!51859 () Bool)

(assert (=> bm!51859 (= call!51861 (contains!6677 (ite c!112548 lt!510218 call!51858) k!934))))

(declare-fun b!1143853 () Bool)

(declare-fun res!762065 () Bool)

(assert (=> b!1143853 (=> (not res!762065) (not e!650717))))

(assert (=> b!1143853 (= res!762065 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25135))))

(declare-fun b!1143854 () Bool)

(assert (=> b!1143854 (= e!650729 (and e!650722 mapRes!44909))))

(declare-fun condMapEmpty!44909 () Bool)

(declare-fun mapDefault!44909 () ValueCell!13652)

