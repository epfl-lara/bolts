; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98826 () Bool)

(assert start!98826)

(declare-fun b_free!24395 () Bool)

(declare-fun b_next!24395 () Bool)

(assert (=> start!98826 (= b_free!24395 (not b_next!24395))))

(declare-fun tp!85897 () Bool)

(declare-fun b_and!39653 () Bool)

(assert (=> start!98826 (= tp!85897 b_and!39653)))

(declare-fun b!1153118 () Bool)

(declare-fun e!655864 () Bool)

(assert (=> b!1153118 (= e!655864 true)))

(declare-fun e!655867 () Bool)

(assert (=> b!1153118 e!655867))

(declare-fun res!766611 () Bool)

(assert (=> b!1153118 (=> (not res!766611) (not e!655867))))

(declare-datatypes ((V!43693 0))(
  ( (V!43694 (val!14519 Int)) )
))
(declare-datatypes ((tuple2!18520 0))(
  ( (tuple2!18521 (_1!9270 (_ BitVec 64)) (_2!9270 V!43693)) )
))
(declare-datatypes ((List!25309 0))(
  ( (Nil!25306) (Cons!25305 (h!26514 tuple2!18520) (t!36703 List!25309)) )
))
(declare-datatypes ((ListLongMap!16501 0))(
  ( (ListLongMap!16502 (toList!8266 List!25309)) )
))
(declare-fun lt!516716 () ListLongMap!16501)

(declare-fun lt!516735 () ListLongMap!16501)

(assert (=> b!1153118 (= res!766611 (= lt!516716 lt!516735))))

(declare-fun lt!516723 () ListLongMap!16501)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun -!1348 (ListLongMap!16501 (_ BitVec 64)) ListLongMap!16501)

(assert (=> b!1153118 (= lt!516716 (-!1348 lt!516723 k!934))))

(declare-datatypes ((array!74648 0))(
  ( (array!74649 (arr!35971 (Array (_ BitVec 32) (_ BitVec 64))) (size!36508 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74648)

(declare-fun lt!516727 () V!43693)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun +!3601 (ListLongMap!16501 tuple2!18520) ListLongMap!16501)

(assert (=> b!1153118 (= (-!1348 (+!3601 lt!516735 (tuple2!18521 (select (arr!35971 _keys!1208) from!1455) lt!516727)) (select (arr!35971 _keys!1208) from!1455)) lt!516735)))

(declare-datatypes ((Unit!37858 0))(
  ( (Unit!37859) )
))
(declare-fun lt!516731 () Unit!37858)

(declare-fun addThenRemoveForNewKeyIsSame!193 (ListLongMap!16501 (_ BitVec 64) V!43693) Unit!37858)

(assert (=> b!1153118 (= lt!516731 (addThenRemoveForNewKeyIsSame!193 lt!516735 (select (arr!35971 _keys!1208) from!1455) lt!516727))))

(declare-fun lt!516722 () V!43693)

(declare-datatypes ((ValueCell!13753 0))(
  ( (ValueCellFull!13753 (v!17157 V!43693)) (EmptyCell!13753) )
))
(declare-datatypes ((array!74650 0))(
  ( (array!74651 (arr!35972 (Array (_ BitVec 32) ValueCell!13753)) (size!36509 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74650)

(declare-fun get!18345 (ValueCell!13753 V!43693) V!43693)

(assert (=> b!1153118 (= lt!516727 (get!18345 (select (arr!35972 _values!996) from!1455) lt!516722))))

(declare-fun lt!516721 () Unit!37858)

(declare-fun e!655869 () Unit!37858)

(assert (=> b!1153118 (= lt!516721 e!655869)))

(declare-fun c!114365 () Bool)

(declare-fun contains!6758 (ListLongMap!16501 (_ BitVec 64)) Bool)

(assert (=> b!1153118 (= c!114365 (contains!6758 lt!516735 k!934))))

(declare-fun zeroValue!944 () V!43693)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!43693)

(declare-fun getCurrentListMapNoExtraKeys!4706 (array!74648 array!74650 (_ BitVec 32) (_ BitVec 32) V!43693 V!43693 (_ BitVec 32) Int) ListLongMap!16501)

(assert (=> b!1153118 (= lt!516735 (getCurrentListMapNoExtraKeys!4706 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!54278 () Bool)

(declare-fun lt!516734 () ListLongMap!16501)

(declare-fun call!54284 () ListLongMap!16501)

(declare-fun call!54283 () Bool)

(declare-fun c!114364 () Bool)

(assert (=> bm!54278 (= call!54283 (contains!6758 (ite c!114364 lt!516734 call!54284) k!934))))

(declare-fun b!1153119 () Bool)

(declare-fun e!655861 () Bool)

(declare-fun e!655863 () Bool)

(declare-fun mapRes!45212 () Bool)

(assert (=> b!1153119 (= e!655861 (and e!655863 mapRes!45212))))

(declare-fun condMapEmpty!45212 () Bool)

(declare-fun mapDefault!45212 () ValueCell!13753)

