; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101042 () Bool)

(assert start!101042)

(declare-fun b_free!26005 () Bool)

(declare-fun b_next!26005 () Bool)

(assert (=> start!101042 (= b_free!26005 (not b_next!26005))))

(declare-fun tp!91032 () Bool)

(declare-fun b_and!43101 () Bool)

(assert (=> start!101042 (= tp!91032 b_and!43101)))

(declare-fun b!1209871 () Bool)

(declare-fun e!687167 () Bool)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!78178 0))(
  ( (array!78179 (arr!37722 (Array (_ BitVec 32) (_ BitVec 64))) (size!38259 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78178)

(assert (=> b!1209871 (= e!687167 (bvslt from!1455 (size!38259 _keys!1208)))))

(declare-datatypes ((Unit!40019 0))(
  ( (Unit!40020) )
))
(declare-fun lt!549225 () Unit!40019)

(declare-fun e!687172 () Unit!40019)

(assert (=> b!1209871 (= lt!549225 e!687172)))

(declare-fun c!119105 () Bool)

(declare-datatypes ((V!46073 0))(
  ( (V!46074 (val!15411 Int)) )
))
(declare-datatypes ((tuple2!19922 0))(
  ( (tuple2!19923 (_1!9971 (_ BitVec 64)) (_2!9971 V!46073)) )
))
(declare-datatypes ((List!26743 0))(
  ( (Nil!26740) (Cons!26739 (h!27948 tuple2!19922) (t!39735 List!26743)) )
))
(declare-datatypes ((ListLongMap!17903 0))(
  ( (ListLongMap!17904 (toList!8967 List!26743)) )
))
(declare-fun lt!549222 () ListLongMap!17903)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun contains!6981 (ListLongMap!17903 (_ BitVec 64)) Bool)

(assert (=> b!1209871 (= c!119105 (contains!6981 lt!549222 k!934))))

(declare-fun zeroValue!944 () V!46073)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((ValueCell!14645 0))(
  ( (ValueCellFull!14645 (v!18063 V!46073)) (EmptyCell!14645) )
))
(declare-datatypes ((array!78180 0))(
  ( (array!78181 (arr!37723 (Array (_ BitVec 32) ValueCell!14645)) (size!38260 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78180)

(declare-fun minValue!944 () V!46073)

(declare-fun getCurrentListMapNoExtraKeys!5373 (array!78178 array!78180 (_ BitVec 32) (_ BitVec 32) V!46073 V!46073 (_ BitVec 32) Int) ListLongMap!17903)

(assert (=> b!1209871 (= lt!549222 (getCurrentListMapNoExtraKeys!5373 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun e!687175 () Bool)

(declare-fun b!1209872 () Bool)

(declare-fun arrayContainsKey!0 (array!78178 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1209872 (= e!687175 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1209873 () Bool)

(declare-fun res!804123 () Bool)

(declare-fun e!687170 () Bool)

(assert (=> b!1209873 (=> (not res!804123) (not e!687170))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1209873 (= res!804123 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38259 _keys!1208))))))

(declare-fun res!804128 () Bool)

(assert (=> start!101042 (=> (not res!804128) (not e!687170))))

(assert (=> start!101042 (= res!804128 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38259 _keys!1208))))))

(assert (=> start!101042 e!687170))

(declare-fun tp_is_empty!30709 () Bool)

(assert (=> start!101042 tp_is_empty!30709))

(declare-fun array_inv!28636 (array!78178) Bool)

(assert (=> start!101042 (array_inv!28636 _keys!1208)))

(assert (=> start!101042 true))

(assert (=> start!101042 tp!91032))

(declare-fun e!687177 () Bool)

(declare-fun array_inv!28637 (array!78180) Bool)

(assert (=> start!101042 (and (array_inv!28637 _values!996) e!687177)))

(declare-fun bm!59496 () Bool)

(declare-fun call!59501 () Bool)

(declare-fun call!59504 () Bool)

(assert (=> bm!59496 (= call!59501 call!59504)))

(declare-fun b!1209874 () Bool)

(declare-fun res!804120 () Bool)

(assert (=> b!1209874 (=> (not res!804120) (not e!687170))))

(assert (=> b!1209874 (= res!804120 (= (select (arr!37722 _keys!1208) i!673) k!934))))

(declare-fun b!1209875 () Bool)

(declare-fun res!804125 () Bool)

(assert (=> b!1209875 (=> (not res!804125) (not e!687170))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1209875 (= res!804125 (validKeyInArray!0 k!934))))

(declare-fun b!1209876 () Bool)

(declare-fun e!687165 () Unit!40019)

(declare-fun Unit!40021 () Unit!40019)

(assert (=> b!1209876 (= e!687165 Unit!40021)))

(declare-fun b!1209877 () Bool)

(declare-fun e!687176 () Unit!40019)

(assert (=> b!1209877 (= e!687176 e!687165)))

(declare-fun c!119104 () Bool)

(declare-fun lt!549211 () Bool)

(assert (=> b!1209877 (= c!119104 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!549211))))

(declare-fun bm!59497 () Bool)

(declare-fun call!59505 () ListLongMap!17903)

(assert (=> bm!59497 (= call!59505 (getCurrentListMapNoExtraKeys!5373 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1209878 () Bool)

(declare-fun res!804126 () Bool)

(assert (=> b!1209878 (=> (not res!804126) (not e!687170))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1209878 (= res!804126 (validMask!0 mask!1564))))

(declare-fun b!1209879 () Bool)

(declare-fun e!687163 () Bool)

(declare-fun e!687169 () Bool)

(assert (=> b!1209879 (= e!687163 e!687169)))

(declare-fun res!804119 () Bool)

(assert (=> b!1209879 (=> res!804119 e!687169)))

(assert (=> b!1209879 (= res!804119 (not (= from!1455 i!673)))))

(declare-fun lt!549223 () ListLongMap!17903)

(declare-fun lt!549219 () array!78180)

(declare-fun lt!549216 () array!78178)

(assert (=> b!1209879 (= lt!549223 (getCurrentListMapNoExtraKeys!5373 lt!549216 lt!549219 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!3290 (Int (_ BitVec 64)) V!46073)

(assert (=> b!1209879 (= lt!549219 (array!78181 (store (arr!37723 _values!996) i!673 (ValueCellFull!14645 (dynLambda!3290 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38260 _values!996)))))

(declare-fun lt!549215 () ListLongMap!17903)

(assert (=> b!1209879 (= lt!549215 (getCurrentListMapNoExtraKeys!5373 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1209880 () Bool)

(declare-fun e!687166 () Bool)

(assert (=> b!1209880 (= e!687166 (not e!687163))))

(declare-fun res!804122 () Bool)

(assert (=> b!1209880 (=> res!804122 e!687163)))

(assert (=> b!1209880 (= res!804122 (bvsgt from!1455 i!673))))

(assert (=> b!1209880 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!549227 () Unit!40019)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78178 (_ BitVec 64) (_ BitVec 32)) Unit!40019)

(assert (=> b!1209880 (= lt!549227 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun bm!59498 () Bool)

(declare-fun call!59499 () ListLongMap!17903)

(declare-fun call!59502 () ListLongMap!17903)

(assert (=> bm!59498 (= call!59499 call!59502)))

(declare-fun c!119103 () Bool)

(declare-fun c!119102 () Bool)

(declare-fun bm!59499 () Bool)

(declare-fun +!3994 (ListLongMap!17903 tuple2!19922) ListLongMap!17903)

(assert (=> bm!59499 (= call!59502 (+!3994 lt!549222 (ite (or c!119102 c!119103) (tuple2!19923 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19923 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun b!1209881 () Bool)

(declare-fun e!687178 () Bool)

(assert (=> b!1209881 (= e!687178 tp_is_empty!30709)))

(declare-fun b!1209882 () Bool)

(declare-fun e!687171 () Bool)

(assert (=> b!1209882 (= e!687171 tp_is_empty!30709)))

(declare-fun b!1209883 () Bool)

(assert (=> b!1209883 (= c!119103 (and (not lt!549211) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun e!687168 () Unit!40019)

(assert (=> b!1209883 (= e!687168 e!687176)))

(declare-fun mapIsEmpty!47932 () Bool)

(declare-fun mapRes!47932 () Bool)

(assert (=> mapIsEmpty!47932 mapRes!47932))

(declare-fun b!1209884 () Bool)

(assert (=> b!1209884 (= e!687177 (and e!687171 mapRes!47932))))

(declare-fun condMapEmpty!47932 () Bool)

(declare-fun mapDefault!47932 () ValueCell!14645)

