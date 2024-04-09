; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99956 () Bool)

(assert start!99956)

(declare-fun b_free!25499 () Bool)

(declare-fun b_next!25499 () Bool)

(assert (=> start!99956 (= b_free!25499 (not b_next!25499))))

(declare-fun tp!89211 () Bool)

(declare-fun b_and!41879 () Bool)

(assert (=> start!99956 (= tp!89211 b_and!41879)))

(declare-fun b!1189336 () Bool)

(declare-fun res!790970 () Bool)

(declare-fun e!676236 () Bool)

(assert (=> b!1189336 (=> (not res!790970) (not e!676236))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((array!76824 0))(
  ( (array!76825 (arr!37058 (Array (_ BitVec 32) (_ BitVec 64))) (size!37595 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76824)

(assert (=> b!1189336 (= res!790970 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37595 _keys!1208))))))

(declare-fun b!1189337 () Bool)

(declare-fun e!676231 () Bool)

(assert (=> b!1189337 (= e!676231 true)))

(declare-datatypes ((V!45165 0))(
  ( (V!45166 (val!15071 Int)) )
))
(declare-fun zeroValue!944 () V!45165)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!14305 0))(
  ( (ValueCellFull!14305 (v!17710 V!45165)) (EmptyCell!14305) )
))
(declare-datatypes ((array!76826 0))(
  ( (array!76827 (arr!37059 (Array (_ BitVec 32) ValueCell!14305)) (size!37596 (_ BitVec 32))) )
))
(declare-fun lt!541000 () array!76826)

(declare-fun lt!540999 () array!76824)

(declare-fun _values!996 () array!76826)

(declare-fun minValue!944 () V!45165)

(declare-datatypes ((tuple2!19486 0))(
  ( (tuple2!19487 (_1!9753 (_ BitVec 64)) (_2!9753 V!45165)) )
))
(declare-datatypes ((List!26246 0))(
  ( (Nil!26243) (Cons!26242 (h!27451 tuple2!19486) (t!38744 List!26246)) )
))
(declare-datatypes ((ListLongMap!17467 0))(
  ( (ListLongMap!17468 (toList!8749 List!26246)) )
))
(declare-fun getCurrentListMapNoExtraKeys!5163 (array!76824 array!76826 (_ BitVec 32) (_ BitVec 32) V!45165 V!45165 (_ BitVec 32) Int) ListLongMap!17467)

(declare-fun -!1732 (ListLongMap!17467 (_ BitVec 64)) ListLongMap!17467)

(assert (=> b!1189337 (= (getCurrentListMapNoExtraKeys!5163 lt!540999 lt!541000 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) (-!1732 (getCurrentListMapNoExtraKeys!5163 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k!934))))

(declare-datatypes ((Unit!39390 0))(
  ( (Unit!39391) )
))
(declare-fun lt!540997 () Unit!39390)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!938 (array!76824 array!76826 (_ BitVec 32) (_ BitVec 32) V!45165 V!45165 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39390)

(assert (=> b!1189337 (= lt!540997 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!938 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1189338 () Bool)

(declare-fun e!676233 () Bool)

(assert (=> b!1189338 (= e!676236 e!676233)))

(declare-fun res!790965 () Bool)

(assert (=> b!1189338 (=> (not res!790965) (not e!676233))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76824 (_ BitVec 32)) Bool)

(assert (=> b!1189338 (= res!790965 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!540999 mask!1564))))

(assert (=> b!1189338 (= lt!540999 (array!76825 (store (arr!37058 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37595 _keys!1208)))))

(declare-fun b!1189339 () Bool)

(declare-fun res!790972 () Bool)

(assert (=> b!1189339 (=> (not res!790972) (not e!676236))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1189339 (= res!790972 (validMask!0 mask!1564))))

(declare-fun b!1189340 () Bool)

(declare-fun res!790961 () Bool)

(assert (=> b!1189340 (=> (not res!790961) (not e!676236))))

(declare-datatypes ((List!26247 0))(
  ( (Nil!26244) (Cons!26243 (h!27452 (_ BitVec 64)) (t!38745 List!26247)) )
))
(declare-fun arrayNoDuplicates!0 (array!76824 (_ BitVec 32) List!26247) Bool)

(assert (=> b!1189340 (= res!790961 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26244))))

(declare-fun b!1189341 () Bool)

(declare-fun e!676237 () Bool)

(declare-fun tp_is_empty!30029 () Bool)

(assert (=> b!1189341 (= e!676237 tp_is_empty!30029)))

(declare-fun b!1189342 () Bool)

(declare-fun res!790966 () Bool)

(assert (=> b!1189342 (=> (not res!790966) (not e!676236))))

(assert (=> b!1189342 (= res!790966 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1189343 () Bool)

(declare-fun e!676232 () Bool)

(assert (=> b!1189343 (= e!676232 tp_is_empty!30029)))

(declare-fun b!1189344 () Bool)

(declare-fun res!790968 () Bool)

(assert (=> b!1189344 (=> (not res!790968) (not e!676236))))

(assert (=> b!1189344 (= res!790968 (= (select (arr!37058 _keys!1208) i!673) k!934))))

(declare-fun b!1189345 () Bool)

(declare-fun res!790963 () Bool)

(assert (=> b!1189345 (=> (not res!790963) (not e!676236))))

(assert (=> b!1189345 (= res!790963 (and (= (size!37596 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37595 _keys!1208) (size!37596 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1189347 () Bool)

(declare-fun e!676234 () Bool)

(assert (=> b!1189347 (= e!676233 (not e!676234))))

(declare-fun res!790969 () Bool)

(assert (=> b!1189347 (=> res!790969 e!676234)))

(assert (=> b!1189347 (= res!790969 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!76824 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1189347 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!541002 () Unit!39390)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76824 (_ BitVec 64) (_ BitVec 32)) Unit!39390)

(assert (=> b!1189347 (= lt!541002 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1189348 () Bool)

(declare-fun e!676235 () Bool)

(declare-fun mapRes!46871 () Bool)

(assert (=> b!1189348 (= e!676235 (and e!676232 mapRes!46871))))

(declare-fun condMapEmpty!46871 () Bool)

(declare-fun mapDefault!46871 () ValueCell!14305)

