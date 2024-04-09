; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99434 () Bool)

(assert start!99434)

(declare-fun b_free!24977 () Bool)

(declare-fun b_next!24977 () Bool)

(assert (=> start!99434 (= b_free!24977 (not b_next!24977))))

(declare-fun tp!87645 () Bool)

(declare-fun b_and!40835 () Bool)

(assert (=> start!99434 (= tp!87645 b_and!40835)))

(declare-fun b!1173167 () Bool)

(declare-datatypes ((Unit!38595 0))(
  ( (Unit!38596) )
))
(declare-fun e!666875 () Unit!38595)

(declare-fun Unit!38597 () Unit!38595)

(assert (=> b!1173167 (= e!666875 Unit!38597)))

(declare-fun b!1173168 () Bool)

(declare-fun e!666867 () Bool)

(declare-fun e!666868 () Bool)

(assert (=> b!1173168 (= e!666867 e!666868)))

(declare-fun res!779091 () Bool)

(assert (=> b!1173168 (=> res!779091 e!666868)))

(declare-datatypes ((array!75790 0))(
  ( (array!75791 (arr!36541 (Array (_ BitVec 32) (_ BitVec 64))) (size!37078 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75790)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1173168 (= res!779091 (not (validKeyInArray!0 (select (arr!36541 _keys!1208) from!1455))))))

(declare-datatypes ((V!44469 0))(
  ( (V!44470 (val!14810 Int)) )
))
(declare-datatypes ((tuple2!19026 0))(
  ( (tuple2!19027 (_1!9523 (_ BitVec 64)) (_2!9523 V!44469)) )
))
(declare-datatypes ((List!25799 0))(
  ( (Nil!25796) (Cons!25795 (h!27004 tuple2!19026) (t!37775 List!25799)) )
))
(declare-datatypes ((ListLongMap!17007 0))(
  ( (ListLongMap!17008 (toList!8519 List!25799)) )
))
(declare-fun lt!528731 () ListLongMap!17007)

(declare-fun lt!528742 () ListLongMap!17007)

(assert (=> b!1173168 (= lt!528731 lt!528742)))

(declare-fun lt!528735 () ListLongMap!17007)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun -!1532 (ListLongMap!17007 (_ BitVec 64)) ListLongMap!17007)

(assert (=> b!1173168 (= lt!528742 (-!1532 lt!528735 k!934))))

(declare-fun zeroValue!944 () V!44469)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((ValueCell!14044 0))(
  ( (ValueCellFull!14044 (v!17449 V!44469)) (EmptyCell!14044) )
))
(declare-datatypes ((array!75792 0))(
  ( (array!75793 (arr!36542 (Array (_ BitVec 32) ValueCell!14044)) (size!37079 (_ BitVec 32))) )
))
(declare-fun lt!528737 () array!75792)

(declare-fun lt!528736 () array!75790)

(declare-fun minValue!944 () V!44469)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!4951 (array!75790 array!75792 (_ BitVec 32) (_ BitVec 32) V!44469 V!44469 (_ BitVec 32) Int) ListLongMap!17007)

(assert (=> b!1173168 (= lt!528731 (getCurrentListMapNoExtraKeys!4951 lt!528736 lt!528737 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun _values!996 () array!75792)

(assert (=> b!1173168 (= lt!528735 (getCurrentListMapNoExtraKeys!4951 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun lt!528732 () Unit!38595)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!756 (array!75790 array!75792 (_ BitVec 32) (_ BitVec 32) V!44469 V!44469 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38595)

(assert (=> b!1173168 (= lt!528732 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!756 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapIsEmpty!46088 () Bool)

(declare-fun mapRes!46088 () Bool)

(assert (=> mapIsEmpty!46088 mapRes!46088))

(declare-fun b!1173169 () Bool)

(declare-fun e!666874 () Bool)

(declare-fun e!666871 () Bool)

(assert (=> b!1173169 (= e!666874 e!666871)))

(declare-fun res!779092 () Bool)

(assert (=> b!1173169 (=> res!779092 e!666871)))

(assert (=> b!1173169 (= res!779092 (not (= (select (arr!36541 _keys!1208) from!1455) k!934)))))

(declare-fun b!1173170 () Bool)

(declare-fun e!666869 () Bool)

(declare-fun e!666870 () Bool)

(assert (=> b!1173170 (= e!666869 (not e!666870))))

(declare-fun res!779096 () Bool)

(assert (=> b!1173170 (=> res!779096 e!666870)))

(assert (=> b!1173170 (= res!779096 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!75790 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1173170 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!528734 () Unit!38595)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75790 (_ BitVec 64) (_ BitVec 32)) Unit!38595)

(assert (=> b!1173170 (= lt!528734 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1173171 () Bool)

(declare-fun res!779089 () Bool)

(declare-fun e!666876 () Bool)

(assert (=> b!1173171 (=> (not res!779089) (not e!666876))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75790 (_ BitVec 32)) Bool)

(assert (=> b!1173171 (= res!779089 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1173172 () Bool)

(assert (=> b!1173172 (= e!666868 true)))

(assert (=> b!1173172 (not (= (select (arr!36541 _keys!1208) from!1455) k!934))))

(declare-fun lt!528744 () Unit!38595)

(assert (=> b!1173172 (= lt!528744 e!666875)))

(declare-fun c!116537 () Bool)

(assert (=> b!1173172 (= c!116537 (= (select (arr!36541 _keys!1208) from!1455) k!934))))

(assert (=> b!1173172 e!666874))

(declare-fun res!779094 () Bool)

(assert (=> b!1173172 (=> (not res!779094) (not e!666874))))

(declare-fun lt!528741 () ListLongMap!17007)

(declare-fun lt!528738 () V!44469)

(declare-fun +!3753 (ListLongMap!17007 tuple2!19026) ListLongMap!17007)

(declare-fun get!18678 (ValueCell!14044 V!44469) V!44469)

(assert (=> b!1173172 (= res!779094 (= lt!528741 (+!3753 lt!528742 (tuple2!19027 (select (arr!36541 _keys!1208) from!1455) (get!18678 (select (arr!36542 _values!996) from!1455) lt!528738)))))))

(declare-fun b!1173173 () Bool)

(declare-fun e!666866 () Bool)

(declare-fun tp_is_empty!29507 () Bool)

(assert (=> b!1173173 (= e!666866 tp_is_empty!29507)))

(declare-fun mapNonEmpty!46088 () Bool)

(declare-fun tp!87646 () Bool)

(assert (=> mapNonEmpty!46088 (= mapRes!46088 (and tp!87646 e!666866))))

(declare-fun mapRest!46088 () (Array (_ BitVec 32) ValueCell!14044))

(declare-fun mapValue!46088 () ValueCell!14044)

(declare-fun mapKey!46088 () (_ BitVec 32))

(assert (=> mapNonEmpty!46088 (= (arr!36542 _values!996) (store mapRest!46088 mapKey!46088 mapValue!46088))))

(declare-fun b!1173174 () Bool)

(declare-fun e!666877 () Bool)

(declare-fun e!666873 () Bool)

(assert (=> b!1173174 (= e!666877 (and e!666873 mapRes!46088))))

(declare-fun condMapEmpty!46088 () Bool)

(declare-fun mapDefault!46088 () ValueCell!14044)

