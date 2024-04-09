; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99496 () Bool)

(assert start!99496)

(declare-fun b_free!25039 () Bool)

(declare-fun b_next!25039 () Bool)

(assert (=> start!99496 (= b_free!25039 (not b_next!25039))))

(declare-fun tp!87831 () Bool)

(declare-fun b_and!40959 () Bool)

(assert (=> start!99496 (= tp!87831 b_and!40959)))

(declare-fun b!1175089 () Bool)

(declare-fun e!667992 () Bool)

(declare-fun tp_is_empty!29569 () Bool)

(assert (=> b!1175089 (= e!667992 tp_is_empty!29569)))

(declare-fun b!1175090 () Bool)

(declare-fun res!780492 () Bool)

(declare-fun e!667993 () Bool)

(assert (=> b!1175090 (=> (not res!780492) (not e!667993))))

(declare-datatypes ((array!75914 0))(
  ( (array!75915 (arr!36603 (Array (_ BitVec 32) (_ BitVec 64))) (size!37140 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75914)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75914 (_ BitVec 32)) Bool)

(assert (=> b!1175090 (= res!780492 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1175091 () Bool)

(declare-fun res!780482 () Bool)

(declare-fun e!667984 () Bool)

(assert (=> b!1175091 (=> (not res!780482) (not e!667984))))

(declare-fun lt!530039 () array!75914)

(declare-datatypes ((List!25849 0))(
  ( (Nil!25846) (Cons!25845 (h!27054 (_ BitVec 64)) (t!37887 List!25849)) )
))
(declare-fun arrayNoDuplicates!0 (array!75914 (_ BitVec 32) List!25849) Bool)

(assert (=> b!1175091 (= res!780482 (arrayNoDuplicates!0 lt!530039 #b00000000000000000000000000000000 Nil!25846))))

(declare-fun b!1175092 () Bool)

(declare-fun e!667988 () Bool)

(assert (=> b!1175092 (= e!667988 true)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1175092 (not (= (select (arr!36603 _keys!1208) from!1455) k!934))))

(declare-datatypes ((Unit!38694 0))(
  ( (Unit!38695) )
))
(declare-fun lt!530037 () Unit!38694)

(declare-fun e!667987 () Unit!38694)

(assert (=> b!1175092 (= lt!530037 e!667987)))

(declare-fun c!116630 () Bool)

(assert (=> b!1175092 (= c!116630 (= (select (arr!36603 _keys!1208) from!1455) k!934))))

(declare-fun e!667983 () Bool)

(assert (=> b!1175092 e!667983))

(declare-fun res!780487 () Bool)

(assert (=> b!1175092 (=> (not res!780487) (not e!667983))))

(declare-datatypes ((V!44553 0))(
  ( (V!44554 (val!14841 Int)) )
))
(declare-fun lt!530046 () V!44553)

(declare-datatypes ((tuple2!19080 0))(
  ( (tuple2!19081 (_1!9550 (_ BitVec 64)) (_2!9550 V!44553)) )
))
(declare-datatypes ((List!25850 0))(
  ( (Nil!25847) (Cons!25846 (h!27055 tuple2!19080) (t!37888 List!25850)) )
))
(declare-datatypes ((ListLongMap!17061 0))(
  ( (ListLongMap!17062 (toList!8546 List!25850)) )
))
(declare-fun lt!530038 () ListLongMap!17061)

(declare-datatypes ((ValueCell!14075 0))(
  ( (ValueCellFull!14075 (v!17480 V!44553)) (EmptyCell!14075) )
))
(declare-datatypes ((array!75916 0))(
  ( (array!75917 (arr!36604 (Array (_ BitVec 32) ValueCell!14075)) (size!37141 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75916)

(declare-fun lt!530033 () ListLongMap!17061)

(declare-fun +!3774 (ListLongMap!17061 tuple2!19080) ListLongMap!17061)

(declare-fun get!18721 (ValueCell!14075 V!44553) V!44553)

(assert (=> b!1175092 (= res!780487 (= lt!530038 (+!3774 lt!530033 (tuple2!19081 (select (arr!36603 _keys!1208) from!1455) (get!18721 (select (arr!36604 _values!996) from!1455) lt!530046)))))))

(declare-fun b!1175093 () Bool)

(assert (=> b!1175093 (= e!667993 e!667984)))

(declare-fun res!780486 () Bool)

(assert (=> b!1175093 (=> (not res!780486) (not e!667984))))

(assert (=> b!1175093 (= res!780486 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!530039 mask!1564))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1175093 (= lt!530039 (array!75915 (store (arr!36603 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37140 _keys!1208)))))

(declare-fun b!1175094 () Bool)

(declare-fun res!780485 () Bool)

(assert (=> b!1175094 (=> (not res!780485) (not e!667993))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1175094 (= res!780485 (and (= (size!37141 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37140 _keys!1208) (size!37141 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1175095 () Bool)

(declare-fun Unit!38696 () Unit!38694)

(assert (=> b!1175095 (= e!667987 Unit!38696)))

(declare-fun lt!530045 () Unit!38694)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!75914 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!38694)

(assert (=> b!1175095 (= lt!530045 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun arrayContainsKey!0 (array!75914 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1175095 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!530044 () Unit!38694)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!75914 (_ BitVec 32) (_ BitVec 32)) Unit!38694)

(assert (=> b!1175095 (= lt!530044 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1175095 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25846)))

(declare-fun lt!530042 () Unit!38694)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!75914 (_ BitVec 64) (_ BitVec 32) List!25849) Unit!38694)

(assert (=> b!1175095 (= lt!530042 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!25846))))

(assert (=> b!1175095 false))

(declare-fun res!780496 () Bool)

(assert (=> start!99496 (=> (not res!780496) (not e!667993))))

(assert (=> start!99496 (= res!780496 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37140 _keys!1208))))))

(assert (=> start!99496 e!667993))

(assert (=> start!99496 tp_is_empty!29569))

(declare-fun array_inv!27844 (array!75914) Bool)

(assert (=> start!99496 (array_inv!27844 _keys!1208)))

(assert (=> start!99496 true))

(assert (=> start!99496 tp!87831))

(declare-fun e!667990 () Bool)

(declare-fun array_inv!27845 (array!75916) Bool)

(assert (=> start!99496 (and (array_inv!27845 _values!996) e!667990)))

(declare-fun b!1175096 () Bool)

(declare-fun res!780483 () Bool)

(assert (=> b!1175096 (=> (not res!780483) (not e!667993))))

(assert (=> b!1175096 (= res!780483 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25846))))

(declare-fun b!1175097 () Bool)

(declare-fun res!780494 () Bool)

(assert (=> b!1175097 (=> (not res!780494) (not e!667993))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1175097 (= res!780494 (validKeyInArray!0 k!934))))

(declare-fun b!1175098 () Bool)

(declare-fun e!667991 () Bool)

(declare-fun e!667985 () Bool)

(assert (=> b!1175098 (= e!667991 e!667985)))

(declare-fun res!780495 () Bool)

(assert (=> b!1175098 (=> res!780495 e!667985)))

(assert (=> b!1175098 (= res!780495 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!530036 () array!75916)

(declare-fun minValue!944 () V!44553)

(declare-fun zeroValue!944 () V!44553)

(declare-fun getCurrentListMapNoExtraKeys!4977 (array!75914 array!75916 (_ BitVec 32) (_ BitVec 32) V!44553 V!44553 (_ BitVec 32) Int) ListLongMap!17061)

(assert (=> b!1175098 (= lt!530038 (getCurrentListMapNoExtraKeys!4977 lt!530039 lt!530036 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1175098 (= lt!530036 (array!75917 (store (arr!36604 _values!996) i!673 (ValueCellFull!14075 lt!530046)) (size!37141 _values!996)))))

(declare-fun dynLambda!2957 (Int (_ BitVec 64)) V!44553)

(assert (=> b!1175098 (= lt!530046 (dynLambda!2957 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!530034 () ListLongMap!17061)

(assert (=> b!1175098 (= lt!530034 (getCurrentListMapNoExtraKeys!4977 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1175099 () Bool)

(declare-fun e!667989 () Bool)

(assert (=> b!1175099 (= e!667983 e!667989)))

(declare-fun res!780488 () Bool)

(assert (=> b!1175099 (=> res!780488 e!667989)))

(assert (=> b!1175099 (= res!780488 (not (= (select (arr!36603 _keys!1208) from!1455) k!934)))))

(declare-fun b!1175100 () Bool)

(declare-fun e!667986 () Bool)

(declare-fun mapRes!46181 () Bool)

(assert (=> b!1175100 (= e!667990 (and e!667986 mapRes!46181))))

(declare-fun condMapEmpty!46181 () Bool)

(declare-fun mapDefault!46181 () ValueCell!14075)

