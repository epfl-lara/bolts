; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98462 () Bool)

(assert start!98462)

(declare-fun b_free!24031 () Bool)

(declare-fun b_next!24031 () Bool)

(assert (=> start!98462 (= b_free!24031 (not b_next!24031))))

(declare-fun tp!84805 () Bool)

(declare-fun b_and!38925 () Bool)

(assert (=> start!98462 (= tp!84805 b_and!38925)))

(declare-fun b!1136624 () Bool)

(declare-fun res!758669 () Bool)

(declare-fun e!646836 () Bool)

(assert (=> b!1136624 (=> (not res!758669) (not e!646836))))

(declare-datatypes ((array!73942 0))(
  ( (array!73943 (arr!35618 (Array (_ BitVec 32) (_ BitVec 64))) (size!36155 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73942)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73942 (_ BitVec 32)) Bool)

(assert (=> b!1136624 (= res!758669 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun mapIsEmpty!44666 () Bool)

(declare-fun mapRes!44666 () Bool)

(assert (=> mapIsEmpty!44666 mapRes!44666))

(declare-fun b!1136625 () Bool)

(declare-fun e!646838 () Bool)

(declare-fun e!646832 () Bool)

(assert (=> b!1136625 (= e!646838 e!646832)))

(declare-fun res!758661 () Bool)

(assert (=> b!1136625 (=> res!758661 e!646832)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1136625 (= res!758661 (not (= from!1455 i!673)))))

(declare-datatypes ((V!43209 0))(
  ( (V!43210 (val!14337 Int)) )
))
(declare-fun zeroValue!944 () V!43209)

(declare-datatypes ((ValueCell!13571 0))(
  ( (ValueCellFull!13571 (v!16975 V!43209)) (EmptyCell!13571) )
))
(declare-datatypes ((array!73944 0))(
  ( (array!73945 (arr!35619 (Array (_ BitVec 32) ValueCell!13571)) (size!36156 (_ BitVec 32))) )
))
(declare-fun lt!505369 () array!73944)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun lt!505385 () array!73942)

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((tuple2!18194 0))(
  ( (tuple2!18195 (_1!9107 (_ BitVec 64)) (_2!9107 V!43209)) )
))
(declare-datatypes ((List!25004 0))(
  ( (Nil!25001) (Cons!25000 (h!26209 tuple2!18194) (t!36034 List!25004)) )
))
(declare-datatypes ((ListLongMap!16175 0))(
  ( (ListLongMap!16176 (toList!8103 List!25004)) )
))
(declare-fun lt!505376 () ListLongMap!16175)

(declare-fun minValue!944 () V!43209)

(declare-fun getCurrentListMapNoExtraKeys!4551 (array!73942 array!73944 (_ BitVec 32) (_ BitVec 32) V!43209 V!43209 (_ BitVec 32) Int) ListLongMap!16175)

(assert (=> b!1136625 (= lt!505376 (getCurrentListMapNoExtraKeys!4551 lt!505385 lt!505369 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun _values!996 () array!73944)

(declare-fun dynLambda!2614 (Int (_ BitVec 64)) V!43209)

(assert (=> b!1136625 (= lt!505369 (array!73945 (store (arr!35619 _values!996) i!673 (ValueCellFull!13571 (dynLambda!2614 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36156 _values!996)))))

(declare-fun lt!505374 () ListLongMap!16175)

(assert (=> b!1136625 (= lt!505374 (getCurrentListMapNoExtraKeys!4551 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun call!49914 () ListLongMap!16175)

(declare-fun bm!49910 () Bool)

(assert (=> bm!49910 (= call!49914 (getCurrentListMapNoExtraKeys!4551 lt!505385 lt!505369 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1136626 () Bool)

(declare-fun res!758672 () Bool)

(assert (=> b!1136626 (=> (not res!758672) (not e!646836))))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1136626 (= res!758672 (= (select (arr!35618 _keys!1208) i!673) k!934))))

(declare-fun res!758670 () Bool)

(assert (=> start!98462 (=> (not res!758670) (not e!646836))))

(assert (=> start!98462 (= res!758670 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36155 _keys!1208))))))

(assert (=> start!98462 e!646836))

(declare-fun tp_is_empty!28561 () Bool)

(assert (=> start!98462 tp_is_empty!28561))

(declare-fun array_inv!27184 (array!73942) Bool)

(assert (=> start!98462 (array_inv!27184 _keys!1208)))

(assert (=> start!98462 true))

(assert (=> start!98462 tp!84805))

(declare-fun e!646837 () Bool)

(declare-fun array_inv!27185 (array!73944) Bool)

(assert (=> start!98462 (and (array_inv!27185 _values!996) e!646837)))

(declare-fun b!1136627 () Bool)

(declare-fun e!646841 () Bool)

(declare-fun arrayContainsKey!0 (array!73942 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1136627 (= e!646841 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1136628 () Bool)

(declare-datatypes ((Unit!37173 0))(
  ( (Unit!37174) )
))
(declare-fun e!646842 () Unit!37173)

(declare-fun Unit!37175 () Unit!37173)

(assert (=> b!1136628 (= e!646842 Unit!37175)))

(declare-fun b!1136629 () Bool)

(declare-fun e!646833 () Bool)

(assert (=> b!1136629 (= e!646833 tp_is_empty!28561)))

(declare-fun b!1136630 () Bool)

(declare-fun res!758667 () Bool)

(assert (=> b!1136630 (=> (not res!758667) (not e!646836))))

(declare-datatypes ((List!25005 0))(
  ( (Nil!25002) (Cons!25001 (h!26210 (_ BitVec 64)) (t!36035 List!25005)) )
))
(declare-fun arrayNoDuplicates!0 (array!73942 (_ BitVec 32) List!25005) Bool)

(assert (=> b!1136630 (= res!758667 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25002))))

(declare-fun bm!49911 () Bool)

(declare-fun call!49915 () ListLongMap!16175)

(declare-fun call!49919 () ListLongMap!16175)

(assert (=> bm!49911 (= call!49915 call!49919)))

(declare-fun bm!49912 () Bool)

(declare-fun call!49917 () Bool)

(declare-fun call!49913 () Bool)

(assert (=> bm!49912 (= call!49917 call!49913)))

(declare-fun b!1136631 () Bool)

(declare-fun res!758663 () Bool)

(assert (=> b!1136631 (=> (not res!758663) (not e!646836))))

(assert (=> b!1136631 (= res!758663 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36155 _keys!1208))))))

(declare-fun lt!505373 () ListLongMap!16175)

(declare-fun call!49920 () Unit!37173)

(declare-fun c!111085 () Bool)

(declare-fun c!111090 () Bool)

(declare-fun bm!49913 () Bool)

(declare-fun addStillContains!758 (ListLongMap!16175 (_ BitVec 64) V!43209 (_ BitVec 64)) Unit!37173)

(assert (=> bm!49913 (= call!49920 (addStillContains!758 lt!505373 (ite (or c!111085 c!111090) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!111085 c!111090) zeroValue!944 minValue!944) k!934))))

(declare-fun bm!49914 () Bool)

(declare-fun lt!505379 () ListLongMap!16175)

(declare-fun contains!6614 (ListLongMap!16175 (_ BitVec 64)) Bool)

(assert (=> bm!49914 (= call!49913 (contains!6614 (ite c!111085 lt!505379 call!49915) k!934))))

(declare-fun b!1136632 () Bool)

(declare-fun res!758660 () Bool)

(assert (=> b!1136632 (=> (not res!758660) (not e!646836))))

(assert (=> b!1136632 (= res!758660 (and (= (size!36156 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36155 _keys!1208) (size!36156 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1136633 () Bool)

(declare-fun Unit!37176 () Unit!37173)

(assert (=> b!1136633 (= e!646842 Unit!37176)))

(declare-fun lt!505378 () Bool)

(assert (=> b!1136633 (= lt!505378 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1136633 (= c!111085 (and (not lt!505378) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!505372 () Unit!37173)

(declare-fun e!646828 () Unit!37173)

(assert (=> b!1136633 (= lt!505372 e!646828)))

(declare-fun lt!505384 () Unit!37173)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!363 (array!73942 array!73944 (_ BitVec 32) (_ BitVec 32) V!43209 V!43209 (_ BitVec 64) (_ BitVec 32) Int) Unit!37173)

(assert (=> b!1136633 (= lt!505384 (lemmaListMapContainsThenArrayContainsFrom!363 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!111088 () Bool)

(assert (=> b!1136633 (= c!111088 (and (not (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!758665 () Bool)

(declare-fun e!646829 () Bool)

(assert (=> b!1136633 (= res!758665 e!646829)))

(assert (=> b!1136633 (=> (not res!758665) (not e!646841))))

(assert (=> b!1136633 e!646841))

(declare-fun lt!505377 () Unit!37173)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!73942 (_ BitVec 32) (_ BitVec 32)) Unit!37173)

(assert (=> b!1136633 (= lt!505377 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1136633 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25002)))

(declare-fun lt!505370 () Unit!37173)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!73942 (_ BitVec 64) (_ BitVec 32) List!25005) Unit!37173)

(assert (=> b!1136633 (= lt!505370 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!25002))))

(assert (=> b!1136633 false))

(declare-fun b!1136634 () Bool)

(declare-fun e!646830 () Bool)

(assert (=> b!1136634 (= e!646830 true)))

(declare-fun lt!505371 () Unit!37173)

(assert (=> b!1136634 (= lt!505371 e!646842)))

(declare-fun c!111089 () Bool)

(assert (=> b!1136634 (= c!111089 (contains!6614 lt!505373 k!934))))

(assert (=> b!1136634 (= lt!505373 (getCurrentListMapNoExtraKeys!4551 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1136635 () Bool)

(assert (=> b!1136635 (= e!646832 e!646830)))

(declare-fun res!758662 () Bool)

(assert (=> b!1136635 (=> res!758662 e!646830)))

(assert (=> b!1136635 (= res!758662 (not (= (select (arr!35618 _keys!1208) from!1455) k!934)))))

(declare-fun e!646831 () Bool)

(assert (=> b!1136635 e!646831))

(declare-fun c!111086 () Bool)

(assert (=> b!1136635 (= c!111086 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!505382 () Unit!37173)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!469 (array!73942 array!73944 (_ BitVec 32) (_ BitVec 32) V!43209 V!43209 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37173)

(assert (=> b!1136635 (= lt!505382 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!469 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1136636 () Bool)

(declare-fun e!646839 () Unit!37173)

(declare-fun lt!505375 () Unit!37173)

(assert (=> b!1136636 (= e!646839 lt!505375)))

(declare-fun call!49918 () Unit!37173)

(assert (=> b!1136636 (= lt!505375 call!49918)))

(assert (=> b!1136636 call!49917))

(declare-fun b!1136637 () Bool)

(declare-fun call!49916 () ListLongMap!16175)

(assert (=> b!1136637 (= e!646831 (= call!49914 call!49916))))

(declare-fun b!1136638 () Bool)

(declare-fun e!646834 () Unit!37173)

(assert (=> b!1136638 (= e!646839 e!646834)))

(declare-fun c!111087 () Bool)

(assert (=> b!1136638 (= c!111087 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!505378))))

(declare-fun b!1136639 () Bool)

(assert (=> b!1136639 (= c!111090 (and (not lt!505378) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1136639 (= e!646828 e!646839)))

(declare-fun b!1136640 () Bool)

(declare-fun res!758671 () Bool)

(assert (=> b!1136640 (=> (not res!758671) (not e!646836))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1136640 (= res!758671 (validKeyInArray!0 k!934))))

(declare-fun b!1136641 () Bool)

(declare-fun res!758668 () Bool)

(declare-fun e!646840 () Bool)

(assert (=> b!1136641 (=> (not res!758668) (not e!646840))))

(assert (=> b!1136641 (= res!758668 (arrayNoDuplicates!0 lt!505385 #b00000000000000000000000000000000 Nil!25002))))

(declare-fun bm!49915 () Bool)

(assert (=> bm!49915 (= call!49918 call!49920)))

(declare-fun b!1136642 () Bool)

(declare-fun +!3457 (ListLongMap!16175 tuple2!18194) ListLongMap!16175)

(assert (=> b!1136642 (contains!6614 (+!3457 lt!505379 (tuple2!18195 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k!934)))

(declare-fun lt!505386 () Unit!37173)

(assert (=> b!1136642 (= lt!505386 (addStillContains!758 lt!505379 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k!934))))

(assert (=> b!1136642 call!49913))

(assert (=> b!1136642 (= lt!505379 call!49919)))

(declare-fun lt!505381 () Unit!37173)

(assert (=> b!1136642 (= lt!505381 call!49920)))

(assert (=> b!1136642 (= e!646828 lt!505386)))

(declare-fun b!1136643 () Bool)

(declare-fun res!758664 () Bool)

(assert (=> b!1136643 (=> (not res!758664) (not e!646836))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1136643 (= res!758664 (validMask!0 mask!1564))))

(declare-fun b!1136644 () Bool)

(assert (=> b!1136644 (= e!646836 e!646840)))

(declare-fun res!758659 () Bool)

(assert (=> b!1136644 (=> (not res!758659) (not e!646840))))

(assert (=> b!1136644 (= res!758659 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!505385 mask!1564))))

(assert (=> b!1136644 (= lt!505385 (array!73943 (store (arr!35618 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36155 _keys!1208)))))

(declare-fun bm!49916 () Bool)

(assert (=> bm!49916 (= call!49919 (+!3457 lt!505373 (ite (or c!111085 c!111090) (tuple2!18195 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18195 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun b!1136645 () Bool)

(declare-fun Unit!37177 () Unit!37173)

(assert (=> b!1136645 (= e!646834 Unit!37177)))

(declare-fun b!1136646 () Bool)

(assert (=> b!1136646 (= e!646840 (not e!646838))))

(declare-fun res!758666 () Bool)

(assert (=> b!1136646 (=> res!758666 e!646838)))

(assert (=> b!1136646 (= res!758666 (bvsgt from!1455 i!673))))

(assert (=> b!1136646 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!505383 () Unit!37173)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73942 (_ BitVec 64) (_ BitVec 32)) Unit!37173)

(assert (=> b!1136646 (= lt!505383 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1136647 () Bool)

(declare-fun -!1213 (ListLongMap!16175 (_ BitVec 64)) ListLongMap!16175)

(assert (=> b!1136647 (= e!646831 (= call!49914 (-!1213 call!49916 k!934)))))

(declare-fun mapNonEmpty!44666 () Bool)

(declare-fun tp!84804 () Bool)

(assert (=> mapNonEmpty!44666 (= mapRes!44666 (and tp!84804 e!646833))))

(declare-fun mapRest!44666 () (Array (_ BitVec 32) ValueCell!13571))

(declare-fun mapKey!44666 () (_ BitVec 32))

(declare-fun mapValue!44666 () ValueCell!13571)

(assert (=> mapNonEmpty!44666 (= (arr!35619 _values!996) (store mapRest!44666 mapKey!44666 mapValue!44666))))

(declare-fun b!1136648 () Bool)

(assert (=> b!1136648 call!49917))

(declare-fun lt!505380 () Unit!37173)

(assert (=> b!1136648 (= lt!505380 call!49918)))

(assert (=> b!1136648 (= e!646834 lt!505380)))

(declare-fun bm!49917 () Bool)

(assert (=> bm!49917 (= call!49916 (getCurrentListMapNoExtraKeys!4551 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1136649 () Bool)

(assert (=> b!1136649 (= e!646829 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1136650 () Bool)

(assert (=> b!1136650 (= e!646829 (ite (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!505378) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1136651 () Bool)

(declare-fun e!646835 () Bool)

(assert (=> b!1136651 (= e!646835 tp_is_empty!28561)))

(declare-fun b!1136652 () Bool)

(assert (=> b!1136652 (= e!646837 (and e!646835 mapRes!44666))))

(declare-fun condMapEmpty!44666 () Bool)

(declare-fun mapDefault!44666 () ValueCell!13571)

