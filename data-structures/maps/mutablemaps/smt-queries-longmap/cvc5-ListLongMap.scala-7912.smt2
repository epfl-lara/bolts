; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98252 () Bool)

(assert start!98252)

(declare-fun b_free!23917 () Bool)

(declare-fun b_next!23917 () Bool)

(assert (=> start!98252 (= b_free!23917 (not b_next!23917))))

(declare-fun tp!84455 () Bool)

(declare-fun b_and!38639 () Bool)

(assert (=> start!98252 (= tp!84455 b_and!38639)))

(declare-fun b!1130850 () Bool)

(declare-fun res!755616 () Bool)

(declare-fun e!643620 () Bool)

(assert (=> b!1130850 (=> (not res!755616) (not e!643620))))

(declare-datatypes ((array!73712 0))(
  ( (array!73713 (arr!35505 (Array (_ BitVec 32) (_ BitVec 64))) (size!36042 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73712)

(declare-datatypes ((List!24901 0))(
  ( (Nil!24898) (Cons!24897 (h!26106 (_ BitVec 64)) (t!35817 List!24901)) )
))
(declare-fun arrayNoDuplicates!0 (array!73712 (_ BitVec 32) List!24901) Bool)

(assert (=> b!1130850 (= res!755616 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24898))))

(declare-datatypes ((V!43057 0))(
  ( (V!43058 (val!14280 Int)) )
))
(declare-datatypes ((tuple2!18082 0))(
  ( (tuple2!18083 (_1!9051 (_ BitVec 64)) (_2!9051 V!43057)) )
))
(declare-datatypes ((List!24902 0))(
  ( (Nil!24899) (Cons!24898 (h!26107 tuple2!18082) (t!35818 List!24902)) )
))
(declare-datatypes ((ListLongMap!16063 0))(
  ( (ListLongMap!16064 (toList!8047 List!24902)) )
))
(declare-fun call!48484 () ListLongMap!16063)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun bm!48475 () Bool)

(declare-fun c!110050 () Bool)

(declare-fun call!48485 () Bool)

(declare-fun lt!502214 () ListLongMap!16063)

(declare-fun contains!6541 (ListLongMap!16063 (_ BitVec 64)) Bool)

(assert (=> bm!48475 (= call!48485 (contains!6541 (ite c!110050 lt!502214 call!48484) k!934))))

(declare-fun b!1130851 () Bool)

(declare-fun res!755610 () Bool)

(assert (=> b!1130851 (=> (not res!755610) (not e!643620))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1130851 (= res!755610 (validKeyInArray!0 k!934))))

(declare-fun b!1130852 () Bool)

(declare-fun res!755619 () Bool)

(assert (=> b!1130852 (=> (not res!755619) (not e!643620))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1130852 (= res!755619 (= (select (arr!35505 _keys!1208) i!673) k!934))))

(declare-fun b!1130853 () Bool)

(declare-fun call!48483 () Bool)

(assert (=> b!1130853 call!48483))

(declare-datatypes ((Unit!36999 0))(
  ( (Unit!37000) )
))
(declare-fun lt!502212 () Unit!36999)

(declare-fun call!48481 () Unit!36999)

(assert (=> b!1130853 (= lt!502212 call!48481)))

(declare-fun e!643619 () Unit!36999)

(assert (=> b!1130853 (= e!643619 lt!502212)))

(declare-fun b!1130854 () Bool)

(declare-fun res!755617 () Bool)

(declare-fun e!643624 () Bool)

(assert (=> b!1130854 (=> (not res!755617) (not e!643624))))

(declare-fun lt!502215 () array!73712)

(assert (=> b!1130854 (= res!755617 (arrayNoDuplicates!0 lt!502215 #b00000000000000000000000000000000 Nil!24898))))

(declare-fun b!1130855 () Bool)

(declare-fun res!755620 () Bool)

(assert (=> b!1130855 (=> (not res!755620) (not e!643620))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((ValueCell!13514 0))(
  ( (ValueCellFull!13514 (v!16914 V!43057)) (EmptyCell!13514) )
))
(declare-datatypes ((array!73714 0))(
  ( (array!73715 (arr!35506 (Array (_ BitVec 32) ValueCell!13514)) (size!36043 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73714)

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1130855 (= res!755620 (and (= (size!36043 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36042 _keys!1208) (size!36043 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1130856 () Bool)

(declare-fun e!643616 () Bool)

(declare-fun call!48482 () ListLongMap!16063)

(declare-fun call!48479 () ListLongMap!16063)

(assert (=> b!1130856 (= e!643616 (= call!48482 call!48479))))

(declare-fun b!1130857 () Bool)

(declare-fun res!755618 () Bool)

(assert (=> b!1130857 (=> (not res!755618) (not e!643620))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1130857 (= res!755618 (validMask!0 mask!1564))))

(declare-fun b!1130858 () Bool)

(declare-fun e!643614 () Unit!36999)

(declare-fun Unit!37001 () Unit!36999)

(assert (=> b!1130858 (= e!643614 Unit!37001)))

(declare-fun b!1130859 () Bool)

(declare-fun e!643618 () Unit!36999)

(assert (=> b!1130859 (= e!643618 e!643619)))

(declare-fun c!110049 () Bool)

(declare-fun lt!502210 () Bool)

(assert (=> b!1130859 (= c!110049 (and (not lt!502210) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1130860 () Bool)

(declare-fun e!643626 () Bool)

(assert (=> b!1130860 (= e!643624 (not e!643626))))

(declare-fun res!755609 () Bool)

(assert (=> b!1130860 (=> res!755609 e!643626)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1130860 (= res!755609 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!73712 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1130860 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!502217 () Unit!36999)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73712 (_ BitVec 64) (_ BitVec 32)) Unit!36999)

(assert (=> b!1130860 (= lt!502217 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun bm!48476 () Bool)

(declare-fun call!48480 () Unit!36999)

(assert (=> bm!48476 (= call!48481 call!48480)))

(declare-fun b!1130861 () Bool)

(declare-fun c!110048 () Bool)

(assert (=> b!1130861 (= c!110048 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!502210))))

(assert (=> b!1130861 (= e!643619 e!643614)))

(declare-fun b!1130862 () Bool)

(declare-fun res!755614 () Bool)

(assert (=> b!1130862 (=> (not res!755614) (not e!643620))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73712 (_ BitVec 32)) Bool)

(assert (=> b!1130862 (= res!755614 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1130863 () Bool)

(declare-fun lt!502220 () Unit!36999)

(assert (=> b!1130863 (= e!643618 lt!502220)))

(declare-fun lt!502221 () Unit!36999)

(assert (=> b!1130863 (= lt!502221 call!48480)))

(declare-fun call!48478 () ListLongMap!16063)

(assert (=> b!1130863 (= lt!502214 call!48478)))

(assert (=> b!1130863 call!48485))

(declare-fun minValue!944 () V!43057)

(declare-fun addStillContains!714 (ListLongMap!16063 (_ BitVec 64) V!43057 (_ BitVec 64)) Unit!36999)

(assert (=> b!1130863 (= lt!502220 (addStillContains!714 lt!502214 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k!934))))

(declare-fun +!3414 (ListLongMap!16063 tuple2!18082) ListLongMap!16063)

(assert (=> b!1130863 (contains!6541 (+!3414 lt!502214 (tuple2!18083 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k!934)))

(declare-fun b!1130864 () Bool)

(declare-fun e!643617 () Bool)

(declare-fun e!643621 () Bool)

(assert (=> b!1130864 (= e!643617 e!643621)))

(declare-fun res!755613 () Bool)

(assert (=> b!1130864 (=> res!755613 e!643621)))

(declare-fun lt!502222 () ListLongMap!16063)

(assert (=> b!1130864 (= res!755613 (not (contains!6541 lt!502222 k!934)))))

(declare-fun zeroValue!944 () V!43057)

(declare-fun defaultEntry!1004 () Int)

(declare-fun getCurrentListMapNoExtraKeys!4500 (array!73712 array!73714 (_ BitVec 32) (_ BitVec 32) V!43057 V!43057 (_ BitVec 32) Int) ListLongMap!16063)

(assert (=> b!1130864 (= lt!502222 (getCurrentListMapNoExtraKeys!4500 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1130865 () Bool)

(declare-fun lt!502219 () Unit!36999)

(assert (=> b!1130865 (= e!643614 lt!502219)))

(assert (=> b!1130865 (= lt!502219 call!48481)))

(assert (=> b!1130865 call!48483))

(declare-fun b!1130866 () Bool)

(declare-fun -!1175 (ListLongMap!16063 (_ BitVec 64)) ListLongMap!16063)

(assert (=> b!1130866 (= e!643616 (= call!48482 (-!1175 call!48479 k!934)))))

(declare-fun b!1130867 () Bool)

(declare-fun e!643628 () Bool)

(declare-fun e!643627 () Bool)

(declare-fun mapRes!44488 () Bool)

(assert (=> b!1130867 (= e!643628 (and e!643627 mapRes!44488))))

(declare-fun condMapEmpty!44488 () Bool)

(declare-fun mapDefault!44488 () ValueCell!13514)

