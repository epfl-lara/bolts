; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98126 () Bool)

(assert start!98126)

(declare-fun b_free!23791 () Bool)

(declare-fun b_next!23791 () Bool)

(assert (=> start!98126 (= b_free!23791 (not b_next!23791))))

(declare-fun tp!84077 () Bool)

(declare-fun b_and!38387 () Bool)

(assert (=> start!98126 (= tp!84077 b_and!38387)))

(declare-fun b!1126712 () Bool)

(declare-fun e!641362 () Bool)

(assert (=> b!1126712 (= e!641362 true)))

(declare-datatypes ((array!73464 0))(
  ( (array!73465 (arr!35381 (Array (_ BitVec 32) (_ BitVec 64))) (size!35918 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73464)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((V!42889 0))(
  ( (V!42890 (val!14217 Int)) )
))
(declare-datatypes ((ValueCell!13451 0))(
  ( (ValueCellFull!13451 (v!16851 V!42889)) (EmptyCell!13451) )
))
(declare-datatypes ((array!73466 0))(
  ( (array!73467 (arr!35382 (Array (_ BitVec 32) ValueCell!13451)) (size!35919 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73466)

(declare-fun minValue!944 () V!42889)

(declare-fun zeroValue!944 () V!42889)

(declare-fun lt!500314 () Bool)

(declare-datatypes ((tuple2!17966 0))(
  ( (tuple2!17967 (_1!8993 (_ BitVec 64)) (_2!8993 V!42889)) )
))
(declare-datatypes ((List!24793 0))(
  ( (Nil!24790) (Cons!24789 (h!25998 tuple2!17966) (t!35583 List!24793)) )
))
(declare-datatypes ((ListLongMap!15947 0))(
  ( (ListLongMap!15948 (toList!7989 List!24793)) )
))
(declare-fun contains!6496 (ListLongMap!15947 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMapNoExtraKeys!4448 (array!73464 array!73466 (_ BitVec 32) (_ BitVec 32) V!42889 V!42889 (_ BitVec 32) Int) ListLongMap!15947)

(assert (=> b!1126712 (= lt!500314 (contains!6496 (getCurrentListMapNoExtraKeys!4448 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k!934))))

(declare-fun b!1126713 () Bool)

(declare-fun res!752989 () Bool)

(declare-fun e!641358 () Bool)

(assert (=> b!1126713 (=> (not res!752989) (not e!641358))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1126713 (= res!752989 (validKeyInArray!0 k!934))))

(declare-fun b!1126714 () Bool)

(declare-fun res!752992 () Bool)

(assert (=> b!1126714 (=> (not res!752992) (not e!641358))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1126714 (= res!752992 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35918 _keys!1208))))))

(declare-fun b!1126715 () Bool)

(declare-fun e!641360 () Bool)

(assert (=> b!1126715 (= e!641360 e!641362)))

(declare-fun res!752995 () Bool)

(assert (=> b!1126715 (=> res!752995 e!641362)))

(assert (=> b!1126715 (= res!752995 (not (= (select (arr!35381 _keys!1208) from!1455) k!934)))))

(declare-fun e!641356 () Bool)

(assert (=> b!1126715 e!641356))

(declare-fun c!109637 () Bool)

(assert (=> b!1126715 (= c!109637 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-datatypes ((Unit!36871 0))(
  ( (Unit!36872) )
))
(declare-fun lt!500318 () Unit!36871)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!384 (array!73464 array!73466 (_ BitVec 32) (_ BitVec 32) V!42889 V!42889 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36871)

(assert (=> b!1126715 (= lt!500318 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!384 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1126716 () Bool)

(declare-fun res!752996 () Bool)

(assert (=> b!1126716 (=> (not res!752996) (not e!641358))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1126716 (= res!752996 (validMask!0 mask!1564))))

(declare-fun b!1126717 () Bool)

(declare-fun res!752997 () Bool)

(declare-fun e!641355 () Bool)

(assert (=> b!1126717 (=> (not res!752997) (not e!641355))))

(declare-fun lt!500315 () array!73464)

(declare-datatypes ((List!24794 0))(
  ( (Nil!24791) (Cons!24790 (h!25999 (_ BitVec 64)) (t!35584 List!24794)) )
))
(declare-fun arrayNoDuplicates!0 (array!73464 (_ BitVec 32) List!24794) Bool)

(assert (=> b!1126717 (= res!752997 (arrayNoDuplicates!0 lt!500315 #b00000000000000000000000000000000 Nil!24791))))

(declare-fun call!47656 () ListLongMap!15947)

(declare-fun bm!47653 () Bool)

(assert (=> bm!47653 (= call!47656 (getCurrentListMapNoExtraKeys!4448 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1126718 () Bool)

(declare-fun res!752990 () Bool)

(assert (=> b!1126718 (=> (not res!752990) (not e!641358))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73464 (_ BitVec 32)) Bool)

(assert (=> b!1126718 (= res!752990 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1126719 () Bool)

(declare-fun call!47657 () ListLongMap!15947)

(declare-fun -!1129 (ListLongMap!15947 (_ BitVec 64)) ListLongMap!15947)

(assert (=> b!1126719 (= e!641356 (= call!47657 (-!1129 call!47656 k!934)))))

(declare-fun b!1126720 () Bool)

(assert (=> b!1126720 (= e!641356 (= call!47657 call!47656))))

(declare-fun b!1126721 () Bool)

(declare-fun res!752987 () Bool)

(assert (=> b!1126721 (=> (not res!752987) (not e!641358))))

(assert (=> b!1126721 (= res!752987 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24791))))

(declare-fun b!1126722 () Bool)

(assert (=> b!1126722 (= e!641358 e!641355)))

(declare-fun res!752988 () Bool)

(assert (=> b!1126722 (=> (not res!752988) (not e!641355))))

(assert (=> b!1126722 (= res!752988 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!500315 mask!1564))))

(assert (=> b!1126722 (= lt!500315 (array!73465 (store (arr!35381 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35918 _keys!1208)))))

(declare-fun bm!47654 () Bool)

(declare-fun lt!500316 () array!73466)

(assert (=> bm!47654 (= call!47657 (getCurrentListMapNoExtraKeys!4448 lt!500315 lt!500316 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapNonEmpty!44299 () Bool)

(declare-fun mapRes!44299 () Bool)

(declare-fun tp!84078 () Bool)

(declare-fun e!641363 () Bool)

(assert (=> mapNonEmpty!44299 (= mapRes!44299 (and tp!84078 e!641363))))

(declare-fun mapRest!44299 () (Array (_ BitVec 32) ValueCell!13451))

(declare-fun mapValue!44299 () ValueCell!13451)

(declare-fun mapKey!44299 () (_ BitVec 32))

(assert (=> mapNonEmpty!44299 (= (arr!35382 _values!996) (store mapRest!44299 mapKey!44299 mapValue!44299))))

(declare-fun b!1126723 () Bool)

(declare-fun e!641357 () Bool)

(assert (=> b!1126723 (= e!641355 (not e!641357))))

(declare-fun res!752991 () Bool)

(assert (=> b!1126723 (=> res!752991 e!641357)))

(assert (=> b!1126723 (= res!752991 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!73464 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1126723 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!500319 () Unit!36871)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73464 (_ BitVec 64) (_ BitVec 32)) Unit!36871)

(assert (=> b!1126723 (= lt!500319 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1126724 () Bool)

(assert (=> b!1126724 (= e!641357 e!641360)))

(declare-fun res!752993 () Bool)

(assert (=> b!1126724 (=> res!752993 e!641360)))

(assert (=> b!1126724 (= res!752993 (not (= from!1455 i!673)))))

(declare-fun lt!500313 () ListLongMap!15947)

(assert (=> b!1126724 (= lt!500313 (getCurrentListMapNoExtraKeys!4448 lt!500315 lt!500316 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2528 (Int (_ BitVec 64)) V!42889)

(assert (=> b!1126724 (= lt!500316 (array!73467 (store (arr!35382 _values!996) i!673 (ValueCellFull!13451 (dynLambda!2528 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35919 _values!996)))))

(declare-fun lt!500317 () ListLongMap!15947)

(assert (=> b!1126724 (= lt!500317 (getCurrentListMapNoExtraKeys!4448 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1126725 () Bool)

(declare-fun res!752985 () Bool)

(assert (=> b!1126725 (=> (not res!752985) (not e!641358))))

(assert (=> b!1126725 (= res!752985 (= (select (arr!35381 _keys!1208) i!673) k!934))))

(declare-fun b!1126726 () Bool)

(declare-fun e!641361 () Bool)

(declare-fun e!641359 () Bool)

(assert (=> b!1126726 (= e!641361 (and e!641359 mapRes!44299))))

(declare-fun condMapEmpty!44299 () Bool)

(declare-fun mapDefault!44299 () ValueCell!13451)

