; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98706 () Bool)

(assert start!98706)

(declare-fun b_free!24275 () Bool)

(declare-fun b_next!24275 () Bool)

(assert (=> start!98706 (= b_free!24275 (not b_next!24275))))

(declare-fun tp!85536 () Bool)

(declare-fun b_and!39413 () Bool)

(assert (=> start!98706 (= tp!85536 b_and!39413)))

(declare-fun bm!52838 () Bool)

(declare-fun call!52848 () Bool)

(declare-fun call!52843 () Bool)

(assert (=> bm!52838 (= call!52848 call!52843)))

(declare-fun b!1147598 () Bool)

(declare-fun e!652808 () Bool)

(declare-fun e!652810 () Bool)

(assert (=> b!1147598 (= e!652808 (not e!652810))))

(declare-fun res!763909 () Bool)

(assert (=> b!1147598 (=> res!763909 e!652810)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1147598 (= res!763909 (bvsgt from!1455 i!673))))

(declare-datatypes ((array!74414 0))(
  ( (array!74415 (arr!35854 (Array (_ BitVec 32) (_ BitVec 64))) (size!36391 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74414)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!74414 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1147598 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!37622 0))(
  ( (Unit!37623) )
))
(declare-fun lt!512807 () Unit!37622)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74414 (_ BitVec 64) (_ BitVec 32)) Unit!37622)

(assert (=> b!1147598 (= lt!512807 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1147599 () Bool)

(declare-fun res!763905 () Bool)

(declare-fun e!652811 () Bool)

(assert (=> b!1147599 (=> (not res!763905) (not e!652811))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1147599 (= res!763905 (validMask!0 mask!1564))))

(declare-fun b!1147600 () Bool)

(assert (=> b!1147600 call!52848))

(declare-fun lt!512817 () Unit!37622)

(declare-fun call!52846 () Unit!37622)

(assert (=> b!1147600 (= lt!512817 call!52846)))

(declare-fun e!652809 () Unit!37622)

(assert (=> b!1147600 (= e!652809 lt!512817)))

(declare-fun c!113285 () Bool)

(declare-datatypes ((V!43533 0))(
  ( (V!43534 (val!14459 Int)) )
))
(declare-datatypes ((tuple2!18410 0))(
  ( (tuple2!18411 (_1!9215 (_ BitVec 64)) (_2!9215 V!43533)) )
))
(declare-datatypes ((List!25204 0))(
  ( (Nil!25201) (Cons!25200 (h!26409 tuple2!18410) (t!36478 List!25204)) )
))
(declare-datatypes ((ListLongMap!16391 0))(
  ( (ListLongMap!16392 (toList!8211 List!25204)) )
))
(declare-fun lt!512816 () ListLongMap!16391)

(declare-fun bm!52839 () Bool)

(declare-fun call!52844 () ListLongMap!16391)

(declare-fun contains!6708 (ListLongMap!16391 (_ BitVec 64)) Bool)

(assert (=> bm!52839 (= call!52843 (contains!6708 (ite c!113285 lt!512816 call!52844) k!934))))

(declare-fun zeroValue!944 () V!43533)

(declare-fun c!113284 () Bool)

(declare-fun call!52841 () Unit!37622)

(declare-fun lt!512806 () ListLongMap!16391)

(declare-fun bm!52840 () Bool)

(declare-fun minValue!944 () V!43533)

(declare-fun addStillContains!850 (ListLongMap!16391 (_ BitVec 64) V!43533 (_ BitVec 64)) Unit!37622)

(assert (=> bm!52840 (= call!52841 (addStillContains!850 (ite c!113285 lt!512816 lt!512806) (ite c!113285 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!113284 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!113285 minValue!944 (ite c!113284 zeroValue!944 minValue!944)) k!934))))

(declare-fun b!1147601 () Bool)

(declare-fun res!763901 () Bool)

(assert (=> b!1147601 (=> (not res!763901) (not e!652811))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1147601 (= res!763901 (validKeyInArray!0 k!934))))

(declare-fun e!652806 () Bool)

(declare-fun call!52845 () ListLongMap!16391)

(declare-fun call!52847 () ListLongMap!16391)

(declare-fun b!1147602 () Bool)

(declare-fun -!1301 (ListLongMap!16391 (_ BitVec 64)) ListLongMap!16391)

(assert (=> b!1147602 (= e!652806 (= call!52845 (-!1301 call!52847 k!934)))))

(declare-fun b!1147603 () Bool)

(declare-fun e!652805 () Bool)

(assert (=> b!1147603 (= e!652805 true)))

(declare-fun e!652803 () Bool)

(assert (=> b!1147603 e!652803))

(declare-fun res!763913 () Bool)

(assert (=> b!1147603 (=> (not res!763913) (not e!652803))))

(declare-fun lt!512810 () V!43533)

(declare-fun +!3551 (ListLongMap!16391 tuple2!18410) ListLongMap!16391)

(assert (=> b!1147603 (= res!763913 (= (-!1301 (+!3551 lt!512806 (tuple2!18411 (select (arr!35854 _keys!1208) from!1455) lt!512810)) (select (arr!35854 _keys!1208) from!1455)) lt!512806))))

(declare-fun lt!512814 () Unit!37622)

(declare-fun addThenRemoveForNewKeyIsSame!150 (ListLongMap!16391 (_ BitVec 64) V!43533) Unit!37622)

(assert (=> b!1147603 (= lt!512814 (addThenRemoveForNewKeyIsSame!150 lt!512806 (select (arr!35854 _keys!1208) from!1455) lt!512810))))

(declare-fun lt!512808 () V!43533)

(declare-datatypes ((ValueCell!13693 0))(
  ( (ValueCellFull!13693 (v!17097 V!43533)) (EmptyCell!13693) )
))
(declare-datatypes ((array!74416 0))(
  ( (array!74417 (arr!35855 (Array (_ BitVec 32) ValueCell!13693)) (size!36392 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74416)

(declare-fun get!18262 (ValueCell!13693 V!43533) V!43533)

(assert (=> b!1147603 (= lt!512810 (get!18262 (select (arr!35855 _values!996) from!1455) lt!512808))))

(declare-fun lt!512813 () Unit!37622)

(declare-fun e!652814 () Unit!37622)

(assert (=> b!1147603 (= lt!512813 e!652814)))

(declare-fun c!113282 () Bool)

(assert (=> b!1147603 (= c!113282 (contains!6708 lt!512806 k!934))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun getCurrentListMapNoExtraKeys!4652 (array!74414 array!74416 (_ BitVec 32) (_ BitVec 32) V!43533 V!43533 (_ BitVec 32) Int) ListLongMap!16391)

(assert (=> b!1147603 (= lt!512806 (getCurrentListMapNoExtraKeys!4652 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1147604 () Bool)

(declare-fun e!652799 () Bool)

(declare-fun e!652802 () Bool)

(declare-fun mapRes!45032 () Bool)

(assert (=> b!1147604 (= e!652799 (and e!652802 mapRes!45032))))

(declare-fun condMapEmpty!45032 () Bool)

(declare-fun mapDefault!45032 () ValueCell!13693)

