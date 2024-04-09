; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98468 () Bool)

(assert start!98468)

(declare-fun b_free!24037 () Bool)

(declare-fun b_next!24037 () Bool)

(assert (=> start!98468 (= b_free!24037 (not b_next!24037))))

(declare-fun tp!84822 () Bool)

(declare-fun b_and!38937 () Bool)

(assert (=> start!98468 (= tp!84822 b_and!38937)))

(declare-fun c!111143 () Bool)

(declare-fun bm!49982 () Bool)

(declare-fun call!49988 () Bool)

(declare-datatypes ((V!43217 0))(
  ( (V!43218 (val!14340 Int)) )
))
(declare-datatypes ((tuple2!18200 0))(
  ( (tuple2!18201 (_1!9110 (_ BitVec 64)) (_2!9110 V!43217)) )
))
(declare-datatypes ((List!25010 0))(
  ( (Nil!25007) (Cons!25006 (h!26215 tuple2!18200) (t!36046 List!25010)) )
))
(declare-datatypes ((ListLongMap!16181 0))(
  ( (ListLongMap!16182 (toList!8106 List!25010)) )
))
(declare-fun lt!505548 () ListLongMap!16181)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun call!49992 () ListLongMap!16181)

(declare-fun contains!6617 (ListLongMap!16181 (_ BitVec 64)) Bool)

(assert (=> bm!49982 (= call!49988 (contains!6617 (ite c!111143 lt!505548 call!49992) k!934))))

(declare-fun b!1136891 () Bool)

(declare-fun e!646980 () Bool)

(declare-fun e!646982 () Bool)

(assert (=> b!1136891 (= e!646980 e!646982)))

(declare-fun res!758798 () Bool)

(assert (=> b!1136891 (=> res!758798 e!646982)))

(declare-datatypes ((array!73954 0))(
  ( (array!73955 (arr!35624 (Array (_ BitVec 32) (_ BitVec 64))) (size!36161 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73954)

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1136891 (= res!758798 (not (= (select (arr!35624 _keys!1208) from!1455) k!934)))))

(declare-fun e!646974 () Bool)

(assert (=> b!1136891 e!646974))

(declare-fun c!111141 () Bool)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1136891 (= c!111141 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun zeroValue!944 () V!43217)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((Unit!37188 0))(
  ( (Unit!37189) )
))
(declare-fun lt!505547 () Unit!37188)

(declare-datatypes ((ValueCell!13574 0))(
  ( (ValueCellFull!13574 (v!16978 V!43217)) (EmptyCell!13574) )
))
(declare-datatypes ((array!73956 0))(
  ( (array!73957 (arr!35625 (Array (_ BitVec 32) ValueCell!13574)) (size!36162 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73956)

(declare-fun minValue!944 () V!43217)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!472 (array!73954 array!73956 (_ BitVec 32) (_ BitVec 32) V!43217 V!43217 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37188)

(assert (=> b!1136891 (= lt!505547 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!472 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun call!49990 () ListLongMap!16181)

(declare-fun lt!505543 () array!73954)

(declare-fun bm!49983 () Bool)

(declare-fun lt!505535 () array!73956)

(declare-fun getCurrentListMapNoExtraKeys!4554 (array!73954 array!73956 (_ BitVec 32) (_ BitVec 32) V!43217 V!43217 (_ BitVec 32) Int) ListLongMap!16181)

(assert (=> bm!49983 (= call!49990 (getCurrentListMapNoExtraKeys!4554 lt!505543 lt!505535 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1136892 () Bool)

(declare-fun c!111144 () Bool)

(declare-fun lt!505542 () Bool)

(assert (=> b!1136892 (= c!111144 (and (not lt!505542) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun e!646972 () Unit!37188)

(declare-fun e!646978 () Unit!37188)

(assert (=> b!1136892 (= e!646972 e!646978)))

(declare-fun b!1136893 () Bool)

(declare-fun res!758794 () Bool)

(declare-fun e!646981 () Bool)

(assert (=> b!1136893 (=> (not res!758794) (not e!646981))))

(assert (=> b!1136893 (= res!758794 (and (= (size!36162 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36161 _keys!1208) (size!36162 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1136894 () Bool)

(declare-fun e!646971 () Bool)

(declare-fun e!646979 () Bool)

(declare-fun mapRes!44675 () Bool)

(assert (=> b!1136894 (= e!646971 (and e!646979 mapRes!44675))))

(declare-fun condMapEmpty!44675 () Bool)

(declare-fun mapDefault!44675 () ValueCell!13574)

