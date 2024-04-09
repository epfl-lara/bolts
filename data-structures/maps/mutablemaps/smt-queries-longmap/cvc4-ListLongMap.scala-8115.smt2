; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99596 () Bool)

(assert start!99596)

(declare-fun b_free!25139 () Bool)

(declare-fun b_next!25139 () Bool)

(assert (=> start!99596 (= b_free!25139 (not b_next!25139))))

(declare-fun tp!88132 () Bool)

(declare-fun b_and!41159 () Bool)

(assert (=> start!99596 (= tp!88132 b_and!41159)))

(declare-fun b!1178296 () Bool)

(declare-datatypes ((Unit!38857 0))(
  ( (Unit!38858) )
))
(declare-fun e!669898 () Unit!38857)

(declare-fun Unit!38859 () Unit!38857)

(assert (=> b!1178296 (= e!669898 Unit!38859)))

(declare-datatypes ((array!76110 0))(
  ( (array!76111 (arr!36701 (Array (_ BitVec 32) (_ BitVec 64))) (size!37238 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76110)

(declare-fun lt!532254 () Unit!38857)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!76110 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!38857)

(assert (=> b!1178296 (= lt!532254 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun arrayContainsKey!0 (array!76110 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1178296 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!532243 () Unit!38857)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!76110 (_ BitVec 32) (_ BitVec 32)) Unit!38857)

(assert (=> b!1178296 (= lt!532243 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!25940 0))(
  ( (Nil!25937) (Cons!25936 (h!27145 (_ BitVec 64)) (t!38078 List!25940)) )
))
(declare-fun arrayNoDuplicates!0 (array!76110 (_ BitVec 32) List!25940) Bool)

(assert (=> b!1178296 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25937)))

(declare-fun lt!532247 () Unit!38857)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!76110 (_ BitVec 64) (_ BitVec 32) List!25940) Unit!38857)

(assert (=> b!1178296 (= lt!532247 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!25937))))

(assert (=> b!1178296 false))

(declare-fun b!1178297 () Bool)

(declare-fun e!669891 () Bool)

(declare-fun e!669889 () Bool)

(assert (=> b!1178297 (= e!669891 (not e!669889))))

(declare-fun res!782852 () Bool)

(assert (=> b!1178297 (=> res!782852 e!669889)))

(assert (=> b!1178297 (= res!782852 (bvsgt from!1455 i!673))))

(assert (=> b!1178297 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!532240 () Unit!38857)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76110 (_ BitVec 64) (_ BitVec 32)) Unit!38857)

(assert (=> b!1178297 (= lt!532240 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1178298 () Bool)

(declare-fun e!669896 () Bool)

(assert (=> b!1178298 (= e!669896 true)))

(declare-fun e!669892 () Bool)

(assert (=> b!1178298 e!669892))

(declare-fun res!782854 () Bool)

(assert (=> b!1178298 (=> (not res!782854) (not e!669892))))

(assert (=> b!1178298 (= res!782854 (not (= (select (arr!36701 _keys!1208) from!1455) k!934)))))

(declare-fun lt!532244 () Unit!38857)

(assert (=> b!1178298 (= lt!532244 e!669898)))

(declare-fun c!116780 () Bool)

(assert (=> b!1178298 (= c!116780 (= (select (arr!36701 _keys!1208) from!1455) k!934))))

(declare-fun e!669890 () Bool)

(assert (=> b!1178298 e!669890))

(declare-fun res!782842 () Bool)

(assert (=> b!1178298 (=> (not res!782842) (not e!669890))))

(declare-datatypes ((V!44685 0))(
  ( (V!44686 (val!14891 Int)) )
))
(declare-datatypes ((tuple2!19176 0))(
  ( (tuple2!19177 (_1!9598 (_ BitVec 64)) (_2!9598 V!44685)) )
))
(declare-fun lt!532252 () tuple2!19176)

(declare-datatypes ((List!25941 0))(
  ( (Nil!25938) (Cons!25937 (h!27146 tuple2!19176) (t!38079 List!25941)) )
))
(declare-datatypes ((ListLongMap!17157 0))(
  ( (ListLongMap!17158 (toList!8594 List!25941)) )
))
(declare-fun lt!532253 () ListLongMap!17157)

(declare-fun lt!532248 () ListLongMap!17157)

(declare-fun +!3815 (ListLongMap!17157 tuple2!19176) ListLongMap!17157)

(assert (=> b!1178298 (= res!782842 (= lt!532253 (+!3815 lt!532248 lt!532252)))))

(declare-datatypes ((ValueCell!14125 0))(
  ( (ValueCellFull!14125 (v!17530 V!44685)) (EmptyCell!14125) )
))
(declare-datatypes ((array!76112 0))(
  ( (array!76113 (arr!36702 (Array (_ BitVec 32) ValueCell!14125)) (size!37239 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76112)

(declare-fun lt!532251 () V!44685)

(declare-fun get!18790 (ValueCell!14125 V!44685) V!44685)

(assert (=> b!1178298 (= lt!532252 (tuple2!19177 (select (arr!36701 _keys!1208) from!1455) (get!18790 (select (arr!36702 _values!996) from!1455) lt!532251)))))

(declare-fun mapNonEmpty!46331 () Bool)

(declare-fun mapRes!46331 () Bool)

(declare-fun tp!88131 () Bool)

(declare-fun e!669901 () Bool)

(assert (=> mapNonEmpty!46331 (= mapRes!46331 (and tp!88131 e!669901))))

(declare-fun mapKey!46331 () (_ BitVec 32))

(declare-fun mapRest!46331 () (Array (_ BitVec 32) ValueCell!14125))

(declare-fun mapValue!46331 () ValueCell!14125)

(assert (=> mapNonEmpty!46331 (= (arr!36702 _values!996) (store mapRest!46331 mapKey!46331 mapValue!46331))))

(declare-fun b!1178299 () Bool)

(declare-fun res!782839 () Bool)

(declare-fun e!669900 () Bool)

(assert (=> b!1178299 (=> (not res!782839) (not e!669900))))

(assert (=> b!1178299 (= res!782839 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25937))))

(declare-fun e!669894 () Bool)

(declare-fun b!1178300 () Bool)

(assert (=> b!1178300 (= e!669894 (arrayContainsKey!0 _keys!1208 k!934 i!673))))

(declare-fun b!1178301 () Bool)

(declare-fun e!669899 () Bool)

(assert (=> b!1178301 (= e!669899 e!669896)))

(declare-fun res!782851 () Bool)

(assert (=> b!1178301 (=> res!782851 e!669896)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1178301 (= res!782851 (not (validKeyInArray!0 (select (arr!36701 _keys!1208) from!1455))))))

(declare-fun lt!532242 () ListLongMap!17157)

(assert (=> b!1178301 (= lt!532242 lt!532248)))

(declare-fun lt!532241 () ListLongMap!17157)

(declare-fun -!1593 (ListLongMap!17157 (_ BitVec 64)) ListLongMap!17157)

(assert (=> b!1178301 (= lt!532248 (-!1593 lt!532241 k!934))))

(declare-fun zeroValue!944 () V!44685)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!44685)

(declare-fun lt!532246 () array!76112)

(declare-fun lt!532249 () array!76110)

(declare-fun getCurrentListMapNoExtraKeys!5024 (array!76110 array!76112 (_ BitVec 32) (_ BitVec 32) V!44685 V!44685 (_ BitVec 32) Int) ListLongMap!17157)

(assert (=> b!1178301 (= lt!532242 (getCurrentListMapNoExtraKeys!5024 lt!532249 lt!532246 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1178301 (= lt!532241 (getCurrentListMapNoExtraKeys!5024 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!532250 () Unit!38857)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!817 (array!76110 array!76112 (_ BitVec 32) (_ BitVec 32) V!44685 V!44685 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38857)

(assert (=> b!1178301 (= lt!532250 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!817 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1178302 () Bool)

(declare-fun res!782844 () Bool)

(assert (=> b!1178302 (=> (not res!782844) (not e!669900))))

(assert (=> b!1178302 (= res!782844 (validKeyInArray!0 k!934))))

(declare-fun b!1178303 () Bool)

(declare-fun lt!532245 () ListLongMap!17157)

(assert (=> b!1178303 (= e!669892 (= lt!532245 (+!3815 lt!532241 lt!532252)))))

(declare-fun b!1178304 () Bool)

(assert (=> b!1178304 (= e!669889 e!669899)))

(declare-fun res!782846 () Bool)

(assert (=> b!1178304 (=> res!782846 e!669899)))

(assert (=> b!1178304 (= res!782846 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(assert (=> b!1178304 (= lt!532253 (getCurrentListMapNoExtraKeys!5024 lt!532249 lt!532246 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1178304 (= lt!532246 (array!76113 (store (arr!36702 _values!996) i!673 (ValueCellFull!14125 lt!532251)) (size!37239 _values!996)))))

(declare-fun dynLambda!2998 (Int (_ BitVec 64)) V!44685)

(assert (=> b!1178304 (= lt!532251 (dynLambda!2998 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1178304 (= lt!532245 (getCurrentListMapNoExtraKeys!5024 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1178305 () Bool)

(declare-fun res!782843 () Bool)

(assert (=> b!1178305 (=> (not res!782843) (not e!669900))))

(assert (=> b!1178305 (= res!782843 (= (select (arr!36701 _keys!1208) i!673) k!934))))

(declare-fun b!1178306 () Bool)

(declare-fun res!782849 () Bool)

(assert (=> b!1178306 (=> (not res!782849) (not e!669891))))

(assert (=> b!1178306 (= res!782849 (arrayNoDuplicates!0 lt!532249 #b00000000000000000000000000000000 Nil!25937))))

(declare-fun b!1178307 () Bool)

(declare-fun e!669895 () Bool)

(declare-fun e!669893 () Bool)

(assert (=> b!1178307 (= e!669895 (and e!669893 mapRes!46331))))

(declare-fun condMapEmpty!46331 () Bool)

(declare-fun mapDefault!46331 () ValueCell!14125)

