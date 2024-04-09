; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98712 () Bool)

(assert start!98712)

(declare-fun b_free!24281 () Bool)

(declare-fun b_next!24281 () Bool)

(assert (=> start!98712 (= b_free!24281 (not b_next!24281))))

(declare-fun tp!85554 () Bool)

(declare-fun b_and!39425 () Bool)

(assert (=> start!98712 (= tp!85554 b_and!39425)))

(declare-fun b!1147874 () Bool)

(declare-fun e!652957 () Bool)

(declare-fun e!652959 () Bool)

(assert (=> b!1147874 (= e!652957 (not e!652959))))

(declare-fun res!764047 () Bool)

(assert (=> b!1147874 (=> res!764047 e!652959)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1147874 (= res!764047 (bvsgt from!1455 i!673))))

(declare-datatypes ((array!74426 0))(
  ( (array!74427 (arr!35860 (Array (_ BitVec 32) (_ BitVec 64))) (size!36397 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74426)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!74426 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1147874 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!37634 0))(
  ( (Unit!37635) )
))
(declare-fun lt!512995 () Unit!37634)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74426 (_ BitVec 64) (_ BitVec 32)) Unit!37634)

(assert (=> b!1147874 (= lt!512995 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-datatypes ((V!43541 0))(
  ( (V!43542 (val!14462 Int)) )
))
(declare-fun zeroValue!944 () V!43541)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((tuple2!18416 0))(
  ( (tuple2!18417 (_1!9218 (_ BitVec 64)) (_2!9218 V!43541)) )
))
(declare-datatypes ((List!25209 0))(
  ( (Nil!25206) (Cons!25205 (h!26414 tuple2!18416) (t!36489 List!25209)) )
))
(declare-datatypes ((ListLongMap!16397 0))(
  ( (ListLongMap!16398 (toList!8214 List!25209)) )
))
(declare-fun call!52919 () ListLongMap!16397)

(declare-fun bm!52910 () Bool)

(declare-datatypes ((ValueCell!13696 0))(
  ( (ValueCellFull!13696 (v!17100 V!43541)) (EmptyCell!13696) )
))
(declare-datatypes ((array!74428 0))(
  ( (array!74429 (arr!35861 (Array (_ BitVec 32) ValueCell!13696)) (size!36398 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74428)

(declare-fun minValue!944 () V!43541)

(declare-fun getCurrentListMapNoExtraKeys!4655 (array!74426 array!74428 (_ BitVec 32) (_ BitVec 32) V!43541 V!43541 (_ BitVec 32) Int) ListLongMap!16397)

(assert (=> bm!52910 (= call!52919 (getCurrentListMapNoExtraKeys!4655 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1147875 () Bool)

(declare-fun res!764040 () Bool)

(assert (=> b!1147875 (=> (not res!764040) (not e!652957))))

(declare-fun lt!512996 () array!74426)

(declare-datatypes ((List!25210 0))(
  ( (Nil!25207) (Cons!25206 (h!26415 (_ BitVec 64)) (t!36490 List!25210)) )
))
(declare-fun arrayNoDuplicates!0 (array!74426 (_ BitVec 32) List!25210) Bool)

(assert (=> b!1147875 (= res!764040 (arrayNoDuplicates!0 lt!512996 #b00000000000000000000000000000000 Nil!25207))))

(declare-fun bm!52911 () Bool)

(declare-fun call!52918 () Unit!37634)

(declare-fun call!52915 () Unit!37634)

(assert (=> bm!52911 (= call!52918 call!52915)))

(declare-fun b!1147876 () Bool)

(declare-fun e!652955 () Unit!37634)

(declare-fun Unit!37636 () Unit!37634)

(assert (=> b!1147876 (= e!652955 Unit!37636)))

(declare-fun b!1147877 () Bool)

(declare-fun e!652960 () Unit!37634)

(declare-fun Unit!37637 () Unit!37634)

(assert (=> b!1147877 (= e!652960 Unit!37637)))

(declare-fun b!1147878 () Bool)

(declare-fun c!113338 () Bool)

(declare-fun lt!513007 () Bool)

(assert (=> b!1147878 (= c!113338 (and (not lt!513007) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun e!652967 () Unit!37634)

(declare-fun e!652962 () Unit!37634)

(assert (=> b!1147878 (= e!652967 e!652962)))

(declare-fun b!1147879 () Bool)

(declare-fun e!652954 () Bool)

(assert (=> b!1147879 (= e!652954 (ite (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!513007) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1147880 () Bool)

(declare-fun e!652953 () Bool)

(declare-fun e!652963 () Bool)

(declare-fun mapRes!45041 () Bool)

(assert (=> b!1147880 (= e!652953 (and e!652963 mapRes!45041))))

(declare-fun condMapEmpty!45041 () Bool)

(declare-fun mapDefault!45041 () ValueCell!13696)

