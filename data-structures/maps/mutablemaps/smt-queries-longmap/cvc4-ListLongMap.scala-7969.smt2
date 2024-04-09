; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98694 () Bool)

(assert start!98694)

(declare-fun b_free!24263 () Bool)

(declare-fun b_next!24263 () Bool)

(assert (=> start!98694 (= b_free!24263 (not b_next!24263))))

(declare-fun tp!85500 () Bool)

(declare-fun b_and!39389 () Bool)

(assert (=> start!98694 (= tp!85500 b_and!39389)))

(declare-fun b!1147046 () Bool)

(declare-fun res!763635 () Bool)

(declare-fun e!652505 () Bool)

(assert (=> b!1147046 (=> (not res!763635) (not e!652505))))

(declare-datatypes ((array!74390 0))(
  ( (array!74391 (arr!35842 (Array (_ BitVec 32) (_ BitVec 64))) (size!36379 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74390)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1147046 (= res!763635 (= (select (arr!35842 _keys!1208) i!673) k!934))))

(declare-fun c!113174 () Bool)

(declare-datatypes ((V!43517 0))(
  ( (V!43518 (val!14453 Int)) )
))
(declare-datatypes ((tuple2!18398 0))(
  ( (tuple2!18399 (_1!9209 (_ BitVec 64)) (_2!9209 V!43517)) )
))
(declare-datatypes ((List!25194 0))(
  ( (Nil!25191) (Cons!25190 (h!26399 tuple2!18398) (t!36456 List!25194)) )
))
(declare-datatypes ((ListLongMap!16379 0))(
  ( (ListLongMap!16380 (toList!8205 List!25194)) )
))
(declare-fun lt!512422 () ListLongMap!16379)

(declare-fun bm!52694 () Bool)

(declare-fun lt!512426 () ListLongMap!16379)

(declare-fun zeroValue!944 () V!43517)

(declare-datatypes ((Unit!37599 0))(
  ( (Unit!37600) )
))
(declare-fun call!52698 () Unit!37599)

(declare-fun minValue!944 () V!43517)

(declare-fun c!113175 () Bool)

(declare-fun addStillContains!844 (ListLongMap!16379 (_ BitVec 64) V!43517 (_ BitVec 64)) Unit!37599)

(assert (=> bm!52694 (= call!52698 (addStillContains!844 (ite c!113174 lt!512422 lt!512426) (ite c!113174 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!113175 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!113174 minValue!944 (ite c!113175 zeroValue!944 minValue!944)) k!934))))

(declare-fun b!1147047 () Bool)

(declare-fun call!52702 () ListLongMap!16379)

(declare-fun contains!6703 (ListLongMap!16379 (_ BitVec 64)) Bool)

(assert (=> b!1147047 (contains!6703 call!52702 k!934)))

(declare-fun lt!512427 () Unit!37599)

(assert (=> b!1147047 (= lt!512427 call!52698)))

(declare-fun call!52699 () Bool)

(assert (=> b!1147047 call!52699))

(declare-fun +!3546 (ListLongMap!16379 tuple2!18398) ListLongMap!16379)

(assert (=> b!1147047 (= lt!512422 (+!3546 lt!512426 (tuple2!18399 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(declare-fun lt!512424 () Unit!37599)

(assert (=> b!1147047 (= lt!512424 (addStillContains!844 lt!512426 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k!934))))

(declare-fun e!652509 () Unit!37599)

(assert (=> b!1147047 (= e!652509 lt!512427)))

(declare-fun b!1147048 () Bool)

(declare-fun e!652500 () Bool)

(assert (=> b!1147048 (= e!652500 true)))

(declare-fun e!652507 () Bool)

(assert (=> b!1147048 e!652507))

(declare-fun res!763629 () Bool)

(assert (=> b!1147048 (=> (not res!763629) (not e!652507))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun lt!512434 () V!43517)

(declare-fun -!1295 (ListLongMap!16379 (_ BitVec 64)) ListLongMap!16379)

(assert (=> b!1147048 (= res!763629 (= (-!1295 (+!3546 lt!512426 (tuple2!18399 (select (arr!35842 _keys!1208) from!1455) lt!512434)) (select (arr!35842 _keys!1208) from!1455)) lt!512426))))

(declare-fun lt!512431 () Unit!37599)

(declare-fun addThenRemoveForNewKeyIsSame!146 (ListLongMap!16379 (_ BitVec 64) V!43517) Unit!37599)

(assert (=> b!1147048 (= lt!512431 (addThenRemoveForNewKeyIsSame!146 lt!512426 (select (arr!35842 _keys!1208) from!1455) lt!512434))))

(declare-fun lt!512442 () V!43517)

(declare-datatypes ((ValueCell!13687 0))(
  ( (ValueCellFull!13687 (v!17091 V!43517)) (EmptyCell!13687) )
))
(declare-datatypes ((array!74392 0))(
  ( (array!74393 (arr!35843 (Array (_ BitVec 32) ValueCell!13687)) (size!36380 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74392)

(declare-fun get!18254 (ValueCell!13687 V!43517) V!43517)

(assert (=> b!1147048 (= lt!512434 (get!18254 (select (arr!35843 _values!996) from!1455) lt!512442))))

(declare-fun lt!512440 () Unit!37599)

(declare-fun e!652496 () Unit!37599)

(assert (=> b!1147048 (= lt!512440 e!652496)))

(declare-fun c!113176 () Bool)

(assert (=> b!1147048 (= c!113176 (contains!6703 lt!512426 k!934))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun getCurrentListMapNoExtraKeys!4647 (array!74390 array!74392 (_ BitVec 32) (_ BitVec 32) V!43517 V!43517 (_ BitVec 32) Int) ListLongMap!16379)

(assert (=> b!1147048 (= lt!512426 (getCurrentListMapNoExtraKeys!4647 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapIsEmpty!45014 () Bool)

(declare-fun mapRes!45014 () Bool)

(assert (=> mapIsEmpty!45014 mapRes!45014))

(declare-fun b!1147049 () Bool)

(declare-fun res!763641 () Bool)

(assert (=> b!1147049 (=> (not res!763641) (not e!652505))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74390 (_ BitVec 32)) Bool)

(assert (=> b!1147049 (= res!763641 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun call!52701 () ListLongMap!16379)

(declare-fun e!652502 () Bool)

(declare-fun b!1147050 () Bool)

(declare-fun call!52700 () ListLongMap!16379)

(assert (=> b!1147050 (= e!652502 (= call!52700 (-!1295 call!52701 k!934)))))

(declare-fun bm!52695 () Bool)

(declare-fun call!52697 () ListLongMap!16379)

(assert (=> bm!52695 (= call!52699 (contains!6703 (ite c!113174 lt!512422 call!52697) k!934))))

(declare-fun b!1147051 () Bool)

(declare-fun lt!512436 () Bool)

(assert (=> b!1147051 (= c!113175 (and (not lt!512436) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun e!652508 () Unit!37599)

(assert (=> b!1147051 (= e!652509 e!652508)))

(declare-fun bm!52696 () Bool)

(assert (=> bm!52696 (= call!52697 call!52702)))

(declare-fun b!1147052 () Bool)

(declare-fun e!652506 () Bool)

(declare-fun e!652499 () Bool)

(assert (=> b!1147052 (= e!652506 (and e!652499 mapRes!45014))))

(declare-fun condMapEmpty!45014 () Bool)

(declare-fun mapDefault!45014 () ValueCell!13687)

