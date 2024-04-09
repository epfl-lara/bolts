; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98696 () Bool)

(assert start!98696)

(declare-fun b_free!24265 () Bool)

(declare-fun b_next!24265 () Bool)

(assert (=> start!98696 (= b_free!24265 (not b_next!24265))))

(declare-fun tp!85506 () Bool)

(declare-fun b_and!39393 () Bool)

(assert (=> start!98696 (= tp!85506 b_and!39393)))

(declare-datatypes ((V!43521 0))(
  ( (V!43522 (val!14454 Int)) )
))
(declare-datatypes ((tuple2!18400 0))(
  ( (tuple2!18401 (_1!9210 (_ BitVec 64)) (_2!9210 V!43521)) )
))
(declare-datatypes ((List!25195 0))(
  ( (Nil!25192) (Cons!25191 (h!26400 tuple2!18400) (t!36459 List!25195)) )
))
(declare-datatypes ((ListLongMap!16381 0))(
  ( (ListLongMap!16382 (toList!8206 List!25195)) )
))
(declare-fun lt!512501 () ListLongMap!16381)

(declare-fun e!652556 () Bool)

(declare-fun lt!512499 () ListLongMap!16381)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun b!1147138 () Bool)

(declare-fun -!1296 (ListLongMap!16381 (_ BitVec 64)) ListLongMap!16381)

(assert (=> b!1147138 (= e!652556 (= (-!1296 lt!512501 k!934) lt!512499))))

(declare-fun b!1147139 () Bool)

(declare-fun res!763683 () Bool)

(declare-fun e!652544 () Bool)

(assert (=> b!1147139 (=> (not res!763683) (not e!652544))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1147139 (= res!763683 (validKeyInArray!0 k!934))))

(declare-fun b!1147140 () Bool)

(declare-fun res!763684 () Bool)

(assert (=> b!1147140 (=> (not res!763684) (not e!652544))))

(declare-datatypes ((array!74394 0))(
  ( (array!74395 (arr!35844 (Array (_ BitVec 32) (_ BitVec 64))) (size!36381 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74394)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74394 (_ BitVec 32)) Bool)

(assert (=> b!1147140 (= res!763684 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun bm!52718 () Bool)

(declare-datatypes ((Unit!37601 0))(
  ( (Unit!37602) )
))
(declare-fun call!52728 () Unit!37601)

(declare-fun call!52726 () Unit!37601)

(assert (=> bm!52718 (= call!52728 call!52726)))

(declare-fun b!1147141 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun lt!512491 () Bool)

(declare-fun e!652557 () Bool)

(assert (=> b!1147141 (= e!652557 (ite (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!512491) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun zeroValue!944 () V!43521)

(declare-fun bm!52719 () Bool)

(declare-fun c!113194 () Bool)

(declare-fun minValue!944 () V!43521)

(declare-fun c!113191 () Bool)

(declare-fun addStillContains!845 (ListLongMap!16381 (_ BitVec 64) V!43521 (_ BitVec 64)) Unit!37601)

(assert (=> bm!52719 (= call!52726 (addStillContains!845 lt!512499 (ite (or c!113191 c!113194) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!113191 c!113194) zeroValue!944 minValue!944) k!934))))

(declare-fun b!1147142 () Bool)

(declare-fun e!652548 () Bool)

(declare-fun e!652551 () Bool)

(assert (=> b!1147142 (= e!652548 (not e!652551))))

(declare-fun res!763675 () Bool)

(assert (=> b!1147142 (=> res!763675 e!652551)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1147142 (= res!763675 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!74394 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1147142 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!512490 () Unit!37601)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74394 (_ BitVec 64) (_ BitVec 32)) Unit!37601)

(assert (=> b!1147142 (= lt!512490 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1147143 () Bool)

(assert (=> b!1147143 (= c!113194 (and (not lt!512491) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun e!652550 () Unit!37601)

(declare-fun e!652559 () Unit!37601)

(assert (=> b!1147143 (= e!652550 e!652559)))

(declare-fun b!1147144 () Bool)

(declare-fun e!652560 () Bool)

(declare-fun e!652549 () Bool)

(declare-fun mapRes!45017 () Bool)

(assert (=> b!1147144 (= e!652560 (and e!652549 mapRes!45017))))

(declare-fun condMapEmpty!45017 () Bool)

(declare-datatypes ((ValueCell!13688 0))(
  ( (ValueCellFull!13688 (v!17092 V!43521)) (EmptyCell!13688) )
))
(declare-datatypes ((array!74396 0))(
  ( (array!74397 (arr!35845 (Array (_ BitVec 32) ValueCell!13688)) (size!36382 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74396)

(declare-fun mapDefault!45017 () ValueCell!13688)

