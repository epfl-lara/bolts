; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99758 () Bool)

(assert start!99758)

(declare-fun b_free!25301 () Bool)

(declare-fun b_next!25301 () Bool)

(assert (=> start!99758 (= b_free!25301 (not b_next!25301))))

(declare-fun tp!88618 () Bool)

(declare-fun b_and!41483 () Bool)

(assert (=> start!99758 (= tp!88618 b_and!41483)))

(declare-fun b!1183553 () Bool)

(declare-fun res!786733 () Bool)

(declare-fun e!672952 () Bool)

(assert (=> b!1183553 (=> (not res!786733) (not e!672952))))

(declare-datatypes ((array!76430 0))(
  ( (array!76431 (arr!36861 (Array (_ BitVec 32) (_ BitVec 64))) (size!37398 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76430)

(declare-datatypes ((List!26075 0))(
  ( (Nil!26072) (Cons!26071 (h!27280 (_ BitVec 64)) (t!38375 List!26075)) )
))
(declare-fun arrayNoDuplicates!0 (array!76430 (_ BitVec 32) List!26075) Bool)

(assert (=> b!1183553 (= res!786733 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26072))))

(declare-fun b!1183554 () Bool)

(declare-fun e!672950 () Bool)

(assert (=> b!1183554 (= e!672950 true)))

(declare-datatypes ((V!44901 0))(
  ( (V!44902 (val!14972 Int)) )
))
(declare-datatypes ((tuple2!19312 0))(
  ( (tuple2!19313 (_1!9666 (_ BitVec 64)) (_2!9666 V!44901)) )
))
(declare-datatypes ((List!26076 0))(
  ( (Nil!26073) (Cons!26072 (h!27281 tuple2!19312) (t!38376 List!26076)) )
))
(declare-datatypes ((ListLongMap!17293 0))(
  ( (ListLongMap!17294 (toList!8662 List!26076)) )
))
(declare-fun lt!536290 () ListLongMap!17293)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun lt!536280 () ListLongMap!17293)

(declare-fun -!1650 (ListLongMap!17293 (_ BitVec 64)) ListLongMap!17293)

(assert (=> b!1183554 (= (-!1650 lt!536290 k!934) lt!536280)))

(declare-fun lt!536285 () ListLongMap!17293)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun lt!536287 () V!44901)

(declare-datatypes ((Unit!39101 0))(
  ( (Unit!39102) )
))
(declare-fun lt!536284 () Unit!39101)

(declare-fun addRemoveCommutativeForDiffKeys!168 (ListLongMap!17293 (_ BitVec 64) V!44901 (_ BitVec 64)) Unit!39101)

(assert (=> b!1183554 (= lt!536284 (addRemoveCommutativeForDiffKeys!168 lt!536285 (select (arr!36861 _keys!1208) from!1455) lt!536287 k!934))))

(declare-fun lt!536294 () ListLongMap!17293)

(declare-fun lt!536286 () ListLongMap!17293)

(declare-fun lt!536291 () ListLongMap!17293)

(assert (=> b!1183554 (and (= lt!536294 lt!536290) (= lt!536286 lt!536291))))

(declare-fun lt!536288 () tuple2!19312)

(declare-fun +!3878 (ListLongMap!17293 tuple2!19312) ListLongMap!17293)

(assert (=> b!1183554 (= lt!536290 (+!3878 lt!536285 lt!536288))))

(assert (=> b!1183554 (not (= (select (arr!36861 _keys!1208) from!1455) k!934))))

(declare-fun lt!536281 () Unit!39101)

(declare-fun e!672956 () Unit!39101)

(assert (=> b!1183554 (= lt!536281 e!672956)))

(declare-fun c!117023 () Bool)

(assert (=> b!1183554 (= c!117023 (= (select (arr!36861 _keys!1208) from!1455) k!934))))

(declare-fun e!672953 () Bool)

(assert (=> b!1183554 e!672953))

(declare-fun res!786731 () Bool)

(assert (=> b!1183554 (=> (not res!786731) (not e!672953))))

(declare-fun lt!536283 () ListLongMap!17293)

(assert (=> b!1183554 (= res!786731 (= lt!536283 lt!536280))))

(assert (=> b!1183554 (= lt!536280 (+!3878 lt!536286 lt!536288))))

(assert (=> b!1183554 (= lt!536288 (tuple2!19313 (select (arr!36861 _keys!1208) from!1455) lt!536287))))

(declare-fun lt!536295 () V!44901)

(declare-datatypes ((ValueCell!14206 0))(
  ( (ValueCellFull!14206 (v!17611 V!44901)) (EmptyCell!14206) )
))
(declare-datatypes ((array!76432 0))(
  ( (array!76433 (arr!36862 (Array (_ BitVec 32) ValueCell!14206)) (size!37399 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76432)

(declare-fun get!18900 (ValueCell!14206 V!44901) V!44901)

(assert (=> b!1183554 (= lt!536287 (get!18900 (select (arr!36862 _values!996) from!1455) lt!536295))))

(declare-fun b!1183555 () Bool)

(declare-fun e!672958 () Bool)

(assert (=> b!1183555 (= e!672953 e!672958)))

(declare-fun res!786719 () Bool)

(assert (=> b!1183555 (=> res!786719 e!672958)))

(assert (=> b!1183555 (= res!786719 (not (= (select (arr!36861 _keys!1208) from!1455) k!934)))))

(declare-fun b!1183556 () Bool)

(declare-fun e!672954 () Bool)

(declare-fun e!672957 () Bool)

(declare-fun mapRes!46574 () Bool)

(assert (=> b!1183556 (= e!672954 (and e!672957 mapRes!46574))))

(declare-fun condMapEmpty!46574 () Bool)

(declare-fun mapDefault!46574 () ValueCell!14206)

