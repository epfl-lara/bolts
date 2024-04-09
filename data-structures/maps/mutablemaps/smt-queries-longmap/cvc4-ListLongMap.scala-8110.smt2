; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99566 () Bool)

(assert start!99566)

(declare-fun b_free!25109 () Bool)

(declare-fun b_next!25109 () Bool)

(assert (=> start!99566 (= b_free!25109 (not b_next!25109))))

(declare-fun tp!88042 () Bool)

(declare-fun b_and!41099 () Bool)

(assert (=> start!99566 (= tp!88042 b_and!41099)))

(declare-fun b!1177321 () Bool)

(declare-datatypes ((Unit!38818 0))(
  ( (Unit!38819) )
))
(declare-fun e!669311 () Unit!38818)

(declare-fun Unit!38820 () Unit!38818)

(assert (=> b!1177321 (= e!669311 Unit!38820)))

(declare-datatypes ((array!76054 0))(
  ( (array!76055 (arr!36673 (Array (_ BitVec 32) (_ BitVec 64))) (size!37210 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76054)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun lt!531566 () Unit!38818)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!76054 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!38818)

(assert (=> b!1177321 (= lt!531566 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun arrayContainsKey!0 (array!76054 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1177321 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!531572 () Unit!38818)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!76054 (_ BitVec 32) (_ BitVec 32)) Unit!38818)

(assert (=> b!1177321 (= lt!531572 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!25917 0))(
  ( (Nil!25914) (Cons!25913 (h!27122 (_ BitVec 64)) (t!38025 List!25917)) )
))
(declare-fun arrayNoDuplicates!0 (array!76054 (_ BitVec 32) List!25917) Bool)

(assert (=> b!1177321 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25914)))

(declare-fun lt!531577 () Unit!38818)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!76054 (_ BitVec 64) (_ BitVec 32) List!25917) Unit!38818)

(assert (=> b!1177321 (= lt!531577 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!25914))))

(assert (=> b!1177321 false))

(declare-fun b!1177322 () Bool)

(declare-fun Unit!38821 () Unit!38818)

(assert (=> b!1177322 (= e!669311 Unit!38821)))

(declare-fun b!1177323 () Bool)

(declare-fun e!669309 () Bool)

(declare-fun e!669308 () Bool)

(assert (=> b!1177323 (= e!669309 e!669308)))

(declare-fun res!782125 () Bool)

(assert (=> b!1177323 (=> (not res!782125) (not e!669308))))

(declare-fun lt!531571 () array!76054)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76054 (_ BitVec 32)) Bool)

(assert (=> b!1177323 (= res!782125 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!531571 mask!1564))))

(assert (=> b!1177323 (= lt!531571 (array!76055 (store (arr!36673 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37210 _keys!1208)))))

(declare-fun b!1177324 () Bool)

(declare-fun res!782124 () Bool)

(assert (=> b!1177324 (=> (not res!782124) (not e!669309))))

(assert (=> b!1177324 (= res!782124 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1177325 () Bool)

(declare-fun e!669305 () Bool)

(assert (=> b!1177325 (= e!669305 (arrayContainsKey!0 _keys!1208 k!934 i!673))))

(declare-fun b!1177326 () Bool)

(declare-fun e!669312 () Bool)

(declare-fun tp_is_empty!29639 () Bool)

(assert (=> b!1177326 (= e!669312 tp_is_empty!29639)))

(declare-fun b!1177327 () Bool)

(declare-fun e!669315 () Bool)

(assert (=> b!1177327 (= e!669315 e!669305)))

(declare-fun res!782133 () Bool)

(assert (=> b!1177327 (=> res!782133 e!669305)))

(assert (=> b!1177327 (= res!782133 (not (= (select (arr!36673 _keys!1208) from!1455) k!934)))))

(declare-fun mapIsEmpty!46286 () Bool)

(declare-fun mapRes!46286 () Bool)

(assert (=> mapIsEmpty!46286 mapRes!46286))

(declare-fun b!1177328 () Bool)

(declare-fun res!782122 () Bool)

(assert (=> b!1177328 (=> (not res!782122) (not e!669309))))

(assert (=> b!1177328 (= res!782122 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37210 _keys!1208))))))

(declare-fun b!1177329 () Bool)

(declare-fun e!669310 () Bool)

(declare-fun e!669304 () Bool)

(assert (=> b!1177329 (= e!669310 e!669304)))

(declare-fun res!782127 () Bool)

(assert (=> b!1177329 (=> res!782127 e!669304)))

(assert (=> b!1177329 (= res!782127 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-datatypes ((V!44645 0))(
  ( (V!44646 (val!14876 Int)) )
))
(declare-fun zeroValue!944 () V!44645)

(declare-datatypes ((tuple2!19150 0))(
  ( (tuple2!19151 (_1!9585 (_ BitVec 64)) (_2!9585 V!44645)) )
))
(declare-datatypes ((List!25918 0))(
  ( (Nil!25915) (Cons!25914 (h!27123 tuple2!19150) (t!38026 List!25918)) )
))
(declare-datatypes ((ListLongMap!17131 0))(
  ( (ListLongMap!17132 (toList!8581 List!25918)) )
))
(declare-fun lt!531570 () ListLongMap!17131)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!44645)

(declare-datatypes ((ValueCell!14110 0))(
  ( (ValueCellFull!14110 (v!17515 V!44645)) (EmptyCell!14110) )
))
(declare-datatypes ((array!76056 0))(
  ( (array!76057 (arr!36674 (Array (_ BitVec 32) ValueCell!14110)) (size!37211 (_ BitVec 32))) )
))
(declare-fun lt!531575 () array!76056)

(declare-fun getCurrentListMapNoExtraKeys!5012 (array!76054 array!76056 (_ BitVec 32) (_ BitVec 32) V!44645 V!44645 (_ BitVec 32) Int) ListLongMap!17131)

(assert (=> b!1177329 (= lt!531570 (getCurrentListMapNoExtraKeys!5012 lt!531571 lt!531575 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun _values!996 () array!76056)

(declare-fun lt!531567 () V!44645)

(assert (=> b!1177329 (= lt!531575 (array!76057 (store (arr!36674 _values!996) i!673 (ValueCellFull!14110 lt!531567)) (size!37211 _values!996)))))

(declare-fun dynLambda!2988 (Int (_ BitVec 64)) V!44645)

(assert (=> b!1177329 (= lt!531567 (dynLambda!2988 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!531565 () ListLongMap!17131)

(assert (=> b!1177329 (= lt!531565 (getCurrentListMapNoExtraKeys!5012 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun res!782130 () Bool)

(assert (=> start!99566 (=> (not res!782130) (not e!669309))))

(assert (=> start!99566 (= res!782130 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37210 _keys!1208))))))

(assert (=> start!99566 e!669309))

(assert (=> start!99566 tp_is_empty!29639))

(declare-fun array_inv!27896 (array!76054) Bool)

(assert (=> start!99566 (array_inv!27896 _keys!1208)))

(assert (=> start!99566 true))

(assert (=> start!99566 tp!88042))

(declare-fun e!669313 () Bool)

(declare-fun array_inv!27897 (array!76056) Bool)

(assert (=> start!99566 (and (array_inv!27897 _values!996) e!669313)))

(declare-fun b!1177330 () Bool)

(declare-fun res!782120 () Bool)

(assert (=> b!1177330 (=> (not res!782120) (not e!669309))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1177330 (= res!782120 (validMask!0 mask!1564))))

(declare-fun e!669316 () Bool)

(declare-fun lt!531576 () tuple2!19150)

(declare-fun lt!531569 () ListLongMap!17131)

(declare-fun b!1177331 () Bool)

(declare-fun +!3804 (ListLongMap!17131 tuple2!19150) ListLongMap!17131)

(assert (=> b!1177331 (= e!669316 (= lt!531565 (+!3804 lt!531569 lt!531576)))))

(declare-fun b!1177332 () Bool)

(declare-fun e!669314 () Bool)

(assert (=> b!1177332 (= e!669314 true)))

(assert (=> b!1177332 e!669316))

(declare-fun res!782128 () Bool)

(assert (=> b!1177332 (=> (not res!782128) (not e!669316))))

(assert (=> b!1177332 (= res!782128 (not (= (select (arr!36673 _keys!1208) from!1455) k!934)))))

(declare-fun lt!531568 () Unit!38818)

(assert (=> b!1177332 (= lt!531568 e!669311)))

(declare-fun c!116735 () Bool)

(assert (=> b!1177332 (= c!116735 (= (select (arr!36673 _keys!1208) from!1455) k!934))))

(assert (=> b!1177332 e!669315))

(declare-fun res!782121 () Bool)

(assert (=> b!1177332 (=> (not res!782121) (not e!669315))))

(declare-fun lt!531573 () ListLongMap!17131)

(assert (=> b!1177332 (= res!782121 (= lt!531570 (+!3804 lt!531573 lt!531576)))))

(declare-fun get!18772 (ValueCell!14110 V!44645) V!44645)

(assert (=> b!1177332 (= lt!531576 (tuple2!19151 (select (arr!36673 _keys!1208) from!1455) (get!18772 (select (arr!36674 _values!996) from!1455) lt!531567)))))

(declare-fun b!1177333 () Bool)

(declare-fun e!669306 () Bool)

(assert (=> b!1177333 (= e!669306 tp_is_empty!29639)))

(declare-fun b!1177334 () Bool)

(declare-fun res!782129 () Bool)

(assert (=> b!1177334 (=> (not res!782129) (not e!669309))))

(assert (=> b!1177334 (= res!782129 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25914))))

(declare-fun mapNonEmpty!46286 () Bool)

(declare-fun tp!88041 () Bool)

(assert (=> mapNonEmpty!46286 (= mapRes!46286 (and tp!88041 e!669306))))

(declare-fun mapKey!46286 () (_ BitVec 32))

(declare-fun mapRest!46286 () (Array (_ BitVec 32) ValueCell!14110))

(declare-fun mapValue!46286 () ValueCell!14110)

(assert (=> mapNonEmpty!46286 (= (arr!36674 _values!996) (store mapRest!46286 mapKey!46286 mapValue!46286))))

(declare-fun b!1177335 () Bool)

(assert (=> b!1177335 (= e!669308 (not e!669310))))

(declare-fun res!782126 () Bool)

(assert (=> b!1177335 (=> res!782126 e!669310)))

(assert (=> b!1177335 (= res!782126 (bvsgt from!1455 i!673))))

(assert (=> b!1177335 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!531574 () Unit!38818)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76054 (_ BitVec 64) (_ BitVec 32)) Unit!38818)

(assert (=> b!1177335 (= lt!531574 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1177336 () Bool)

(declare-fun res!782131 () Bool)

(assert (=> b!1177336 (=> (not res!782131) (not e!669309))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1177336 (= res!782131 (validKeyInArray!0 k!934))))

(declare-fun b!1177337 () Bool)

(declare-fun res!782132 () Bool)

(assert (=> b!1177337 (=> (not res!782132) (not e!669309))))

(assert (=> b!1177337 (= res!782132 (= (select (arr!36673 _keys!1208) i!673) k!934))))

(declare-fun b!1177338 () Bool)

(assert (=> b!1177338 (= e!669304 e!669314)))

(declare-fun res!782119 () Bool)

(assert (=> b!1177338 (=> res!782119 e!669314)))

(assert (=> b!1177338 (= res!782119 (not (validKeyInArray!0 (select (arr!36673 _keys!1208) from!1455))))))

(declare-fun lt!531578 () ListLongMap!17131)

(assert (=> b!1177338 (= lt!531578 lt!531573)))

(declare-fun -!1583 (ListLongMap!17131 (_ BitVec 64)) ListLongMap!17131)

(assert (=> b!1177338 (= lt!531573 (-!1583 lt!531569 k!934))))

(assert (=> b!1177338 (= lt!531578 (getCurrentListMapNoExtraKeys!5012 lt!531571 lt!531575 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1177338 (= lt!531569 (getCurrentListMapNoExtraKeys!5012 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!531579 () Unit!38818)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!807 (array!76054 array!76056 (_ BitVec 32) (_ BitVec 32) V!44645 V!44645 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38818)

(assert (=> b!1177338 (= lt!531579 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!807 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1177339 () Bool)

(declare-fun res!782123 () Bool)

(assert (=> b!1177339 (=> (not res!782123) (not e!669308))))

(assert (=> b!1177339 (= res!782123 (arrayNoDuplicates!0 lt!531571 #b00000000000000000000000000000000 Nil!25914))))

(declare-fun b!1177340 () Bool)

(assert (=> b!1177340 (= e!669313 (and e!669312 mapRes!46286))))

(declare-fun condMapEmpty!46286 () Bool)

(declare-fun mapDefault!46286 () ValueCell!14110)

