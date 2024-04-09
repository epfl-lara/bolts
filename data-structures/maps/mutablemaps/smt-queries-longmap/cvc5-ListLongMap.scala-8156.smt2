; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99838 () Bool)

(assert start!99838)

(declare-fun b_free!25381 () Bool)

(declare-fun b_next!25381 () Bool)

(assert (=> start!99838 (= b_free!25381 (not b_next!25381))))

(declare-fun tp!88858 () Bool)

(declare-fun b_and!41643 () Bool)

(assert (=> start!99838 (= tp!88858 b_and!41643)))

(declare-fun b!1186033 () Bool)

(declare-fun res!788533 () Bool)

(declare-fun e!674397 () Bool)

(assert (=> b!1186033 (=> (not res!788533) (not e!674397))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1186033 (= res!788533 (validKeyInArray!0 k!934))))

(declare-fun b!1186034 () Bool)

(declare-datatypes ((Unit!39230 0))(
  ( (Unit!39231) )
))
(declare-fun e!674390 () Unit!39230)

(declare-fun Unit!39232 () Unit!39230)

(assert (=> b!1186034 (= e!674390 Unit!39232)))

(declare-fun b!1186035 () Bool)

(declare-fun e!674393 () Bool)

(declare-fun e!674394 () Bool)

(assert (=> b!1186035 (= e!674393 e!674394)))

(declare-fun res!788532 () Bool)

(assert (=> b!1186035 (=> res!788532 e!674394)))

(declare-datatypes ((array!76590 0))(
  ( (array!76591 (arr!36941 (Array (_ BitVec 32) (_ BitVec 64))) (size!37478 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76590)

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1186035 (= res!788532 (not (validKeyInArray!0 (select (arr!36941 _keys!1208) from!1455))))))

(declare-datatypes ((V!45009 0))(
  ( (V!45010 (val!15012 Int)) )
))
(declare-datatypes ((tuple2!19388 0))(
  ( (tuple2!19389 (_1!9704 (_ BitVec 64)) (_2!9704 V!45009)) )
))
(declare-datatypes ((List!26149 0))(
  ( (Nil!26146) (Cons!26145 (h!27354 tuple2!19388) (t!38529 List!26149)) )
))
(declare-datatypes ((ListLongMap!17369 0))(
  ( (ListLongMap!17370 (toList!8700 List!26149)) )
))
(declare-fun lt!538570 () ListLongMap!17369)

(declare-fun lt!538561 () ListLongMap!17369)

(assert (=> b!1186035 (= lt!538570 lt!538561)))

(declare-fun lt!538557 () ListLongMap!17369)

(declare-fun -!1685 (ListLongMap!17369 (_ BitVec 64)) ListLongMap!17369)

(assert (=> b!1186035 (= lt!538561 (-!1685 lt!538557 k!934))))

(declare-fun lt!538560 () array!76590)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!45009)

(declare-datatypes ((ValueCell!14246 0))(
  ( (ValueCellFull!14246 (v!17651 V!45009)) (EmptyCell!14246) )
))
(declare-datatypes ((array!76592 0))(
  ( (array!76593 (arr!36942 (Array (_ BitVec 32) ValueCell!14246)) (size!37479 (_ BitVec 32))) )
))
(declare-fun lt!538569 () array!76592)

(declare-fun zeroValue!944 () V!45009)

(declare-fun getCurrentListMapNoExtraKeys!5118 (array!76590 array!76592 (_ BitVec 32) (_ BitVec 32) V!45009 V!45009 (_ BitVec 32) Int) ListLongMap!17369)

(assert (=> b!1186035 (= lt!538570 (getCurrentListMapNoExtraKeys!5118 lt!538560 lt!538569 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun _values!996 () array!76592)

(assert (=> b!1186035 (= lt!538557 (getCurrentListMapNoExtraKeys!5118 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!538565 () Unit!39230)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!898 (array!76590 array!76592 (_ BitVec 32) (_ BitVec 32) V!45009 V!45009 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39230)

(assert (=> b!1186035 (= lt!538565 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!898 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1186036 () Bool)

(declare-fun e!674398 () Bool)

(declare-fun tp_is_empty!29911 () Bool)

(assert (=> b!1186036 (= e!674398 tp_is_empty!29911)))

(declare-fun b!1186037 () Bool)

(declare-fun res!788528 () Bool)

(assert (=> b!1186037 (=> (not res!788528) (not e!674397))))

(declare-datatypes ((List!26150 0))(
  ( (Nil!26147) (Cons!26146 (h!27355 (_ BitVec 64)) (t!38530 List!26150)) )
))
(declare-fun arrayNoDuplicates!0 (array!76590 (_ BitVec 32) List!26150) Bool)

(assert (=> b!1186037 (= res!788528 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26147))))

(declare-fun b!1186038 () Bool)

(declare-fun Unit!39233 () Unit!39230)

(assert (=> b!1186038 (= e!674390 Unit!39233)))

(declare-fun lt!538563 () Unit!39230)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!76590 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!39230)

(assert (=> b!1186038 (= lt!538563 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun arrayContainsKey!0 (array!76590 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1186038 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!538562 () Unit!39230)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!76590 (_ BitVec 32) (_ BitVec 32)) Unit!39230)

(assert (=> b!1186038 (= lt!538562 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1186038 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26147)))

(declare-fun lt!538575 () Unit!39230)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!76590 (_ BitVec 64) (_ BitVec 32) List!26150) Unit!39230)

(assert (=> b!1186038 (= lt!538575 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!26147))))

(assert (=> b!1186038 false))

(declare-fun b!1186039 () Bool)

(declare-fun e!674401 () Bool)

(declare-fun e!674391 () Bool)

(assert (=> b!1186039 (= e!674401 e!674391)))

(declare-fun res!788523 () Bool)

(assert (=> b!1186039 (=> res!788523 e!674391)))

(assert (=> b!1186039 (= res!788523 (not (= (select (arr!36941 _keys!1208) from!1455) k!934)))))

(declare-fun res!788524 () Bool)

(assert (=> start!99838 (=> (not res!788524) (not e!674397))))

(assert (=> start!99838 (= res!788524 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37478 _keys!1208))))))

(assert (=> start!99838 e!674397))

(assert (=> start!99838 tp_is_empty!29911))

(declare-fun array_inv!28070 (array!76590) Bool)

(assert (=> start!99838 (array_inv!28070 _keys!1208)))

(assert (=> start!99838 true))

(assert (=> start!99838 tp!88858))

(declare-fun e!674392 () Bool)

(declare-fun array_inv!28071 (array!76592) Bool)

(assert (=> start!99838 (and (array_inv!28071 _values!996) e!674392)))

(declare-fun b!1186040 () Bool)

(declare-fun res!788530 () Bool)

(assert (=> b!1186040 (=> (not res!788530) (not e!674397))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1186040 (= res!788530 (validMask!0 mask!1564))))

(declare-fun b!1186041 () Bool)

(declare-fun res!788522 () Bool)

(assert (=> b!1186041 (=> (not res!788522) (not e!674397))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76590 (_ BitVec 32)) Bool)

(assert (=> b!1186041 (= res!788522 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1186042 () Bool)

(assert (=> b!1186042 (= e!674391 (arrayContainsKey!0 _keys!1208 k!934 i!673))))

(declare-fun b!1186043 () Bool)

(assert (=> b!1186043 (= e!674394 true)))

(declare-fun lt!538559 () ListLongMap!17369)

(declare-fun lt!538567 () ListLongMap!17369)

(assert (=> b!1186043 (= (-!1685 lt!538559 k!934) lt!538567)))

(declare-fun lt!538572 () Unit!39230)

(declare-fun lt!538574 () V!45009)

(declare-fun addRemoveCommutativeForDiffKeys!195 (ListLongMap!17369 (_ BitVec 64) V!45009 (_ BitVec 64)) Unit!39230)

(assert (=> b!1186043 (= lt!538572 (addRemoveCommutativeForDiffKeys!195 lt!538557 (select (arr!36941 _keys!1208) from!1455) lt!538574 k!934))))

(declare-fun lt!538573 () ListLongMap!17369)

(assert (=> b!1186043 (and (= lt!538573 lt!538559) (= lt!538561 lt!538570))))

(declare-fun lt!538564 () tuple2!19388)

(declare-fun +!3905 (ListLongMap!17369 tuple2!19388) ListLongMap!17369)

(assert (=> b!1186043 (= lt!538559 (+!3905 lt!538557 lt!538564))))

(assert (=> b!1186043 (not (= (select (arr!36941 _keys!1208) from!1455) k!934))))

(declare-fun lt!538566 () Unit!39230)

(assert (=> b!1186043 (= lt!538566 e!674390)))

(declare-fun c!117143 () Bool)

(assert (=> b!1186043 (= c!117143 (= (select (arr!36941 _keys!1208) from!1455) k!934))))

(assert (=> b!1186043 e!674401))

(declare-fun res!788520 () Bool)

(assert (=> b!1186043 (=> (not res!788520) (not e!674401))))

(declare-fun lt!538568 () ListLongMap!17369)

(assert (=> b!1186043 (= res!788520 (= lt!538568 lt!538567))))

(assert (=> b!1186043 (= lt!538567 (+!3905 lt!538561 lt!538564))))

(assert (=> b!1186043 (= lt!538564 (tuple2!19389 (select (arr!36941 _keys!1208) from!1455) lt!538574))))

(declare-fun lt!538558 () V!45009)

(declare-fun get!18955 (ValueCell!14246 V!45009) V!45009)

(assert (=> b!1186043 (= lt!538574 (get!18955 (select (arr!36942 _values!996) from!1455) lt!538558))))

(declare-fun mapNonEmpty!46694 () Bool)

(declare-fun mapRes!46694 () Bool)

(declare-fun tp!88857 () Bool)

(assert (=> mapNonEmpty!46694 (= mapRes!46694 (and tp!88857 e!674398))))

(declare-fun mapKey!46694 () (_ BitVec 32))

(declare-fun mapRest!46694 () (Array (_ BitVec 32) ValueCell!14246))

(declare-fun mapValue!46694 () ValueCell!14246)

(assert (=> mapNonEmpty!46694 (= (arr!36942 _values!996) (store mapRest!46694 mapKey!46694 mapValue!46694))))

(declare-fun b!1186044 () Bool)

(declare-fun res!788519 () Bool)

(assert (=> b!1186044 (=> (not res!788519) (not e!674397))))

(assert (=> b!1186044 (= res!788519 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37478 _keys!1208))))))

(declare-fun b!1186045 () Bool)

(declare-fun e!674396 () Bool)

(assert (=> b!1186045 (= e!674397 e!674396)))

(declare-fun res!788526 () Bool)

(assert (=> b!1186045 (=> (not res!788526) (not e!674396))))

(assert (=> b!1186045 (= res!788526 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!538560 mask!1564))))

(assert (=> b!1186045 (= lt!538560 (array!76591 (store (arr!36941 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37478 _keys!1208)))))

(declare-fun b!1186046 () Bool)

(declare-fun res!788529 () Bool)

(assert (=> b!1186046 (=> (not res!788529) (not e!674396))))

(assert (=> b!1186046 (= res!788529 (arrayNoDuplicates!0 lt!538560 #b00000000000000000000000000000000 Nil!26147))))

(declare-fun mapIsEmpty!46694 () Bool)

(assert (=> mapIsEmpty!46694 mapRes!46694))

(declare-fun b!1186047 () Bool)

(declare-fun e!674395 () Bool)

(assert (=> b!1186047 (= e!674396 (not e!674395))))

(declare-fun res!788527 () Bool)

(assert (=> b!1186047 (=> res!788527 e!674395)))

(assert (=> b!1186047 (= res!788527 (bvsgt from!1455 i!673))))

(assert (=> b!1186047 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!538571 () Unit!39230)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76590 (_ BitVec 64) (_ BitVec 32)) Unit!39230)

(assert (=> b!1186047 (= lt!538571 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1186048 () Bool)

(declare-fun res!788531 () Bool)

(assert (=> b!1186048 (=> (not res!788531) (not e!674397))))

(assert (=> b!1186048 (= res!788531 (= (select (arr!36941 _keys!1208) i!673) k!934))))

(declare-fun b!1186049 () Bool)

(declare-fun e!674400 () Bool)

(assert (=> b!1186049 (= e!674400 tp_is_empty!29911)))

(declare-fun b!1186050 () Bool)

(assert (=> b!1186050 (= e!674392 (and e!674400 mapRes!46694))))

(declare-fun condMapEmpty!46694 () Bool)

(declare-fun mapDefault!46694 () ValueCell!14246)

