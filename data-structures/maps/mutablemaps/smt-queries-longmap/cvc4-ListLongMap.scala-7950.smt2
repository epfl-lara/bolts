; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98580 () Bool)

(assert start!98580)

(declare-fun b_free!24149 () Bool)

(declare-fun b_next!24149 () Bool)

(assert (=> start!98580 (= b_free!24149 (not b_next!24149))))

(declare-fun tp!85159 () Bool)

(declare-fun b_and!39161 () Bool)

(assert (=> start!98580 (= tp!85159 b_and!39161)))

(declare-fun b!1141875 () Bool)

(declare-fun res!761150 () Bool)

(declare-fun e!649672 () Bool)

(assert (=> b!1141875 (=> (not res!761150) (not e!649672))))

(declare-datatypes ((array!74168 0))(
  ( (array!74169 (arr!35731 (Array (_ BitVec 32) (_ BitVec 64))) (size!36268 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74168)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1141875 (= res!761150 (= (select (arr!35731 _keys!1208) i!673) k!934))))

(declare-datatypes ((V!43365 0))(
  ( (V!43366 (val!14396 Int)) )
))
(declare-fun zeroValue!944 () V!43365)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun lt!508832 () array!74168)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((ValueCell!13630 0))(
  ( (ValueCellFull!13630 (v!17034 V!43365)) (EmptyCell!13630) )
))
(declare-datatypes ((array!74170 0))(
  ( (array!74171 (arr!35732 (Array (_ BitVec 32) ValueCell!13630)) (size!36269 (_ BitVec 32))) )
))
(declare-fun lt!508843 () array!74170)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun minValue!944 () V!43365)

(declare-datatypes ((tuple2!18298 0))(
  ( (tuple2!18299 (_1!9159 (_ BitVec 64)) (_2!9159 V!43365)) )
))
(declare-datatypes ((List!25098 0))(
  ( (Nil!25095) (Cons!25094 (h!26303 tuple2!18298) (t!36246 List!25098)) )
))
(declare-datatypes ((ListLongMap!16279 0))(
  ( (ListLongMap!16280 (toList!8155 List!25098)) )
))
(declare-fun call!51335 () ListLongMap!16279)

(declare-fun bm!51326 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!4598 (array!74168 array!74170 (_ BitVec 32) (_ BitVec 32) V!43365 V!43365 (_ BitVec 32) Int) ListLongMap!16279)

(assert (=> bm!51326 (= call!51335 (getCurrentListMapNoExtraKeys!4598 lt!508832 lt!508843 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1141876 () Bool)

(declare-datatypes ((Unit!37382 0))(
  ( (Unit!37383) )
))
(declare-fun e!649670 () Unit!37382)

(declare-fun e!649666 () Unit!37382)

(assert (=> b!1141876 (= e!649670 e!649666)))

(declare-fun c!112152 () Bool)

(declare-fun lt!508831 () Bool)

(assert (=> b!1141876 (= c!112152 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!508831))))

(declare-fun c!112150 () Bool)

(declare-fun c!112151 () Bool)

(declare-fun lt!508837 () ListLongMap!16279)

(declare-fun call!51330 () ListLongMap!16279)

(declare-fun lt!508849 () ListLongMap!16279)

(declare-fun bm!51327 () Bool)

(declare-fun +!3500 (ListLongMap!16279 tuple2!18298) ListLongMap!16279)

(assert (=> bm!51327 (= call!51330 (+!3500 (ite c!112150 lt!508837 lt!508849) (ite c!112150 (tuple2!18299 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!112151 (tuple2!18299 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18299 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun b!1141877 () Bool)

(declare-fun e!649659 () Unit!37382)

(declare-fun Unit!37384 () Unit!37382)

(assert (=> b!1141877 (= e!649659 Unit!37384)))

(assert (=> b!1141877 (= lt!508831 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1141877 (= c!112150 (and (not lt!508831) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!508845 () Unit!37382)

(declare-fun e!649664 () Unit!37382)

(assert (=> b!1141877 (= lt!508845 e!649664)))

(declare-fun _values!996 () array!74170)

(declare-fun lt!508840 () Unit!37382)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!397 (array!74168 array!74170 (_ BitVec 32) (_ BitVec 32) V!43365 V!43365 (_ BitVec 64) (_ BitVec 32) Int) Unit!37382)

(assert (=> b!1141877 (= lt!508840 (lemmaListMapContainsThenArrayContainsFrom!397 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!112149 () Bool)

(assert (=> b!1141877 (= c!112149 (and (not (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!761141 () Bool)

(declare-fun e!649668 () Bool)

(assert (=> b!1141877 (= res!761141 e!649668)))

(declare-fun e!649667 () Bool)

(assert (=> b!1141877 (=> (not res!761141) (not e!649667))))

(assert (=> b!1141877 e!649667))

(declare-fun lt!508850 () Unit!37382)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74168 (_ BitVec 32) (_ BitVec 32)) Unit!37382)

(assert (=> b!1141877 (= lt!508850 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!25099 0))(
  ( (Nil!25096) (Cons!25095 (h!26304 (_ BitVec 64)) (t!36247 List!25099)) )
))
(declare-fun arrayNoDuplicates!0 (array!74168 (_ BitVec 32) List!25099) Bool)

(assert (=> b!1141877 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25096)))

(declare-fun lt!508836 () Unit!37382)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74168 (_ BitVec 64) (_ BitVec 32) List!25099) Unit!37382)

(assert (=> b!1141877 (= lt!508836 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!25096))))

(assert (=> b!1141877 false))

(declare-fun b!1141878 () Bool)

(declare-fun e!649665 () Bool)

(declare-fun e!649663 () Bool)

(declare-fun mapRes!44843 () Bool)

(assert (=> b!1141878 (= e!649665 (and e!649663 mapRes!44843))))

(declare-fun condMapEmpty!44843 () Bool)

(declare-fun mapDefault!44843 () ValueCell!13630)

