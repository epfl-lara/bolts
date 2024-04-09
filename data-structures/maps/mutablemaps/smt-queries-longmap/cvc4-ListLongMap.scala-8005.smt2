; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98910 () Bool)

(assert start!98910)

(declare-fun b_free!24479 () Bool)

(declare-fun b_next!24479 () Bool)

(assert (=> start!98910 (= b_free!24479 (not b_next!24479))))

(declare-fun tp!86149 () Bool)

(declare-fun b_and!39821 () Bool)

(assert (=> start!98910 (= tp!86149 b_and!39821)))

(declare-fun b!1156983 () Bool)

(declare-datatypes ((Unit!37999 0))(
  ( (Unit!38000) )
))
(declare-fun e!658002 () Unit!37999)

(declare-fun Unit!38001 () Unit!37999)

(assert (=> b!1156983 (= e!658002 Unit!38001)))

(declare-fun mapNonEmpty!45338 () Bool)

(declare-fun mapRes!45338 () Bool)

(declare-fun tp!86148 () Bool)

(declare-fun e!658017 () Bool)

(assert (=> mapNonEmpty!45338 (= mapRes!45338 (and tp!86148 e!658017))))

(declare-datatypes ((V!43805 0))(
  ( (V!43806 (val!14561 Int)) )
))
(declare-datatypes ((ValueCell!13795 0))(
  ( (ValueCellFull!13795 (v!17199 V!43805)) (EmptyCell!13795) )
))
(declare-fun mapValue!45338 () ValueCell!13795)

(declare-fun mapRest!45338 () (Array (_ BitVec 32) ValueCell!13795))

(declare-fun mapKey!45338 () (_ BitVec 32))

(declare-datatypes ((array!74808 0))(
  ( (array!74809 (arr!36051 (Array (_ BitVec 32) ValueCell!13795)) (size!36588 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74808)

(assert (=> mapNonEmpty!45338 (= (arr!36051 _values!996) (store mapRest!45338 mapKey!45338 mapValue!45338))))

(declare-fun zeroValue!944 () V!43805)

(declare-datatypes ((tuple2!18592 0))(
  ( (tuple2!18593 (_1!9306 (_ BitVec 64)) (_2!9306 V!43805)) )
))
(declare-datatypes ((List!25373 0))(
  ( (Nil!25370) (Cons!25369 (h!26578 tuple2!18592) (t!36851 List!25373)) )
))
(declare-datatypes ((ListLongMap!16573 0))(
  ( (ListLongMap!16574 (toList!8302 List!25373)) )
))
(declare-fun call!55294 () ListLongMap!16573)

(declare-fun c!115118 () Bool)

(declare-fun bm!55286 () Bool)

(declare-fun lt!519500 () ListLongMap!16573)

(declare-fun c!115117 () Bool)

(declare-fun minValue!944 () V!43805)

(declare-fun +!3632 (ListLongMap!16573 tuple2!18592) ListLongMap!16573)

(assert (=> bm!55286 (= call!55294 (+!3632 lt!519500 (ite (or c!115118 c!115117) (tuple2!18593 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18593 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun b!1156984 () Bool)

(declare-fun call!55289 () Bool)

(assert (=> b!1156984 call!55289))

(declare-fun lt!519505 () Unit!37999)

(declare-fun call!55295 () Unit!37999)

(assert (=> b!1156984 (= lt!519505 call!55295)))

(assert (=> b!1156984 (= e!658002 lt!519505)))

(declare-fun bm!55287 () Bool)

(declare-fun call!55290 () Unit!37999)

(assert (=> bm!55287 (= call!55295 call!55290)))

(declare-fun b!1156985 () Bool)

(declare-fun lt!519491 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1156985 (= c!115117 (and (not lt!519491) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun e!658009 () Unit!37999)

(declare-fun e!658014 () Unit!37999)

(assert (=> b!1156985 (= e!658009 e!658014)))

(declare-fun b!1156986 () Bool)

(declare-fun res!768489 () Bool)

(declare-fun e!658013 () Bool)

(assert (=> b!1156986 (=> (not res!768489) (not e!658013))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1156986 (= res!768489 (validMask!0 mask!1564))))

(declare-fun mapIsEmpty!45338 () Bool)

(assert (=> mapIsEmpty!45338 mapRes!45338))

(declare-fun b!1156987 () Bool)

(declare-fun e!658006 () Bool)

(assert (=> b!1156987 (= e!658006 true)))

(declare-fun e!658008 () Bool)

(assert (=> b!1156987 e!658008))

(declare-fun res!768490 () Bool)

(assert (=> b!1156987 (=> (not res!768490) (not e!658008))))

(declare-fun lt!519486 () ListLongMap!16573)

(assert (=> b!1156987 (= res!768490 (= lt!519486 lt!519500))))

(declare-fun lt!519493 () ListLongMap!16573)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun -!1378 (ListLongMap!16573 (_ BitVec 64)) ListLongMap!16573)

(assert (=> b!1156987 (= lt!519486 (-!1378 lt!519493 k!934))))

(declare-datatypes ((array!74810 0))(
  ( (array!74811 (arr!36052 (Array (_ BitVec 32) (_ BitVec 64))) (size!36589 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74810)

(declare-fun lt!519499 () V!43805)

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1156987 (= (-!1378 (+!3632 lt!519500 (tuple2!18593 (select (arr!36052 _keys!1208) from!1455) lt!519499)) (select (arr!36052 _keys!1208) from!1455)) lt!519500)))

(declare-fun lt!519497 () Unit!37999)

(declare-fun addThenRemoveForNewKeyIsSame!220 (ListLongMap!16573 (_ BitVec 64) V!43805) Unit!37999)

(assert (=> b!1156987 (= lt!519497 (addThenRemoveForNewKeyIsSame!220 lt!519500 (select (arr!36052 _keys!1208) from!1455) lt!519499))))

(declare-fun lt!519492 () V!43805)

(declare-fun get!18400 (ValueCell!13795 V!43805) V!43805)

(assert (=> b!1156987 (= lt!519499 (get!18400 (select (arr!36051 _values!996) from!1455) lt!519492))))

(declare-fun lt!519490 () Unit!37999)

(declare-fun e!658011 () Unit!37999)

(assert (=> b!1156987 (= lt!519490 e!658011)))

(declare-fun c!115120 () Bool)

(declare-fun contains!6788 (ListLongMap!16573 (_ BitVec 64)) Bool)

(assert (=> b!1156987 (= c!115120 (contains!6788 lt!519500 k!934))))

(declare-fun defaultEntry!1004 () Int)

(declare-fun getCurrentListMapNoExtraKeys!4739 (array!74810 array!74808 (_ BitVec 32) (_ BitVec 32) V!43805 V!43805 (_ BitVec 32) Int) ListLongMap!16573)

(assert (=> b!1156987 (= lt!519500 (getCurrentListMapNoExtraKeys!4739 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun call!55291 () ListLongMap!16573)

(declare-fun lt!519494 () ListLongMap!16573)

(declare-fun bm!55288 () Bool)

(declare-fun call!55296 () Bool)

(assert (=> bm!55288 (= call!55296 (contains!6788 (ite c!115118 lt!519494 call!55291) k!934))))

(declare-fun b!1156988 () Bool)

(declare-fun e!658007 () Bool)

(declare-fun e!658003 () Bool)

(assert (=> b!1156988 (= e!658007 (not e!658003))))

(declare-fun res!768493 () Bool)

(assert (=> b!1156988 (=> res!768493 e!658003)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1156988 (= res!768493 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!74810 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1156988 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!519496 () Unit!37999)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74810 (_ BitVec 64) (_ BitVec 32)) Unit!37999)

(assert (=> b!1156988 (= lt!519496 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1156982 () Bool)

(declare-fun lt!519487 () Unit!37999)

(assert (=> b!1156982 (= e!658014 lt!519487)))

(assert (=> b!1156982 (= lt!519487 call!55295)))

(assert (=> b!1156982 call!55289))

(declare-fun res!768496 () Bool)

(assert (=> start!98910 (=> (not res!768496) (not e!658013))))

(assert (=> start!98910 (= res!768496 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36589 _keys!1208))))))

(assert (=> start!98910 e!658013))

(declare-fun tp_is_empty!29009 () Bool)

(assert (=> start!98910 tp_is_empty!29009))

(declare-fun array_inv!27460 (array!74810) Bool)

(assert (=> start!98910 (array_inv!27460 _keys!1208)))

(assert (=> start!98910 true))

(assert (=> start!98910 tp!86149))

(declare-fun e!658015 () Bool)

(declare-fun array_inv!27461 (array!74808) Bool)

(assert (=> start!98910 (and (array_inv!27461 _values!996) e!658015)))

(declare-fun b!1156989 () Bool)

(declare-fun res!768491 () Bool)

(assert (=> b!1156989 (=> (not res!768491) (not e!658013))))

(assert (=> b!1156989 (= res!768491 (= (select (arr!36052 _keys!1208) i!673) k!934))))

(declare-fun b!1156990 () Bool)

(declare-fun Unit!38002 () Unit!37999)

(assert (=> b!1156990 (= e!658011 Unit!38002)))

(declare-fun b!1156991 () Bool)

(declare-fun e!658016 () Bool)

(assert (=> b!1156991 (= e!658016 tp_is_empty!29009)))

(declare-fun bm!55289 () Bool)

(assert (=> bm!55289 (= call!55289 call!55296)))

(declare-fun b!1156992 () Bool)

(declare-fun res!768503 () Bool)

(assert (=> b!1156992 (=> (not res!768503) (not e!658013))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74810 (_ BitVec 32)) Bool)

(assert (=> b!1156992 (= res!768503 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun bm!55290 () Bool)

(declare-fun addStillContains!928 (ListLongMap!16573 (_ BitVec 64) V!43805 (_ BitVec 64)) Unit!37999)

(assert (=> bm!55290 (= call!55290 (addStillContains!928 lt!519500 (ite (or c!115118 c!115117) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!115118 c!115117) zeroValue!944 minValue!944) k!934))))

(declare-fun call!55293 () ListLongMap!16573)

(declare-fun e!658001 () Bool)

(declare-fun call!55292 () ListLongMap!16573)

(declare-fun b!1156993 () Bool)

(assert (=> b!1156993 (= e!658001 (= call!55293 (-!1378 call!55292 k!934)))))

(declare-fun b!1156994 () Bool)

(assert (=> b!1156994 (= e!658017 tp_is_empty!29009)))

(declare-fun lt!519507 () array!74808)

(declare-fun b!1156995 () Bool)

(declare-fun lt!519506 () array!74810)

(assert (=> b!1156995 (= e!658008 (= lt!519486 (getCurrentListMapNoExtraKeys!4739 lt!519506 lt!519507 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004)))))

(declare-fun b!1156996 () Bool)

(assert (=> b!1156996 (= e!658014 e!658002)))

(declare-fun c!115119 () Bool)

(assert (=> b!1156996 (= c!115119 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!519491))))

(declare-fun b!1156997 () Bool)

(declare-fun e!658012 () Bool)

(assert (=> b!1156997 (= e!658012 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1156998 () Bool)

(declare-fun e!658010 () Bool)

(assert (=> b!1156998 (= e!658010 e!658006)))

(declare-fun res!768502 () Bool)

(assert (=> b!1156998 (=> res!768502 e!658006)))

(assert (=> b!1156998 (= res!768502 (not (= (select (arr!36052 _keys!1208) from!1455) k!934)))))

(assert (=> b!1156998 e!658001))

(declare-fun c!115122 () Bool)

(assert (=> b!1156998 (= c!115122 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!519489 () Unit!37999)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!605 (array!74810 array!74808 (_ BitVec 32) (_ BitVec 32) V!43805 V!43805 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37999)

(assert (=> b!1156998 (= lt!519489 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!605 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1156999 () Bool)

(declare-fun e!658004 () Bool)

(assert (=> b!1156999 (= e!658004 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun bm!55291 () Bool)

(assert (=> bm!55291 (= call!55293 (getCurrentListMapNoExtraKeys!4739 lt!519506 lt!519507 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1157000 () Bool)

(declare-fun res!768495 () Bool)

(assert (=> b!1157000 (=> (not res!768495) (not e!658013))))

(assert (=> b!1157000 (= res!768495 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36589 _keys!1208))))))

(declare-fun b!1157001 () Bool)

(assert (=> b!1157001 (= e!658015 (and e!658016 mapRes!45338))))

(declare-fun condMapEmpty!45338 () Bool)

(declare-fun mapDefault!45338 () ValueCell!13795)

