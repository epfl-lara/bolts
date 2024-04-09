; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98702 () Bool)

(assert start!98702)

(declare-fun b_free!24271 () Bool)

(declare-fun b_next!24271 () Bool)

(assert (=> start!98702 (= b_free!24271 (not b_next!24271))))

(declare-fun tp!85524 () Bool)

(declare-fun b_and!39405 () Bool)

(assert (=> start!98702 (= tp!85524 b_and!39405)))

(declare-fun b!1147414 () Bool)

(declare-datatypes ((Unit!37613 0))(
  ( (Unit!37614) )
))
(declare-fun e!652697 () Unit!37613)

(declare-fun Unit!37615 () Unit!37613)

(assert (=> b!1147414 (= e!652697 Unit!37615)))

(declare-fun lt!512685 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1147414 (= lt!512685 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun c!113248 () Bool)

(assert (=> b!1147414 (= c!113248 (and (not lt!512685) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!512674 () Unit!37613)

(declare-fun e!652713 () Unit!37613)

(assert (=> b!1147414 (= lt!512674 e!652713)))

(declare-datatypes ((V!43529 0))(
  ( (V!43530 (val!14457 Int)) )
))
(declare-fun zeroValue!944 () V!43529)

(declare-datatypes ((array!74406 0))(
  ( (array!74407 (arr!35850 (Array (_ BitVec 32) (_ BitVec 64))) (size!36387 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74406)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!512680 () Unit!37613)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!13691 0))(
  ( (ValueCellFull!13691 (v!17095 V!43529)) (EmptyCell!13691) )
))
(declare-datatypes ((array!74408 0))(
  ( (array!74409 (arr!35851 (Array (_ BitVec 32) ValueCell!13691)) (size!36388 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74408)

(declare-fun minValue!944 () V!43529)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!436 (array!74406 array!74408 (_ BitVec 32) (_ BitVec 32) V!43529 V!43529 (_ BitVec 64) (_ BitVec 32) Int) Unit!37613)

(assert (=> b!1147414 (= lt!512680 (lemmaListMapContainsThenArrayContainsFrom!436 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!113250 () Bool)

(assert (=> b!1147414 (= c!113250 (and (not (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!763813 () Bool)

(declare-fun e!652705 () Bool)

(assert (=> b!1147414 (= res!763813 e!652705)))

(declare-fun e!652708 () Bool)

(assert (=> b!1147414 (=> (not res!763813) (not e!652708))))

(assert (=> b!1147414 e!652708))

(declare-fun lt!512693 () Unit!37613)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74406 (_ BitVec 32) (_ BitVec 32)) Unit!37613)

(assert (=> b!1147414 (= lt!512693 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!25200 0))(
  ( (Nil!25197) (Cons!25196 (h!26405 (_ BitVec 64)) (t!36470 List!25200)) )
))
(declare-fun arrayNoDuplicates!0 (array!74406 (_ BitVec 32) List!25200) Bool)

(assert (=> b!1147414 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25197)))

(declare-fun lt!512678 () Unit!37613)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74406 (_ BitVec 64) (_ BitVec 32) List!25200) Unit!37613)

(assert (=> b!1147414 (= lt!512678 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!25197))))

(assert (=> b!1147414 false))

(declare-fun b!1147415 () Bool)

(declare-fun arrayContainsKey!0 (array!74406 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1147415 (= e!652705 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1147416 () Bool)

(declare-fun res!763809 () Bool)

(declare-fun e!652704 () Bool)

(assert (=> b!1147416 (=> (not res!763809) (not e!652704))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74406 (_ BitVec 32)) Bool)

(assert (=> b!1147416 (= res!763809 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1147417 () Bool)

(declare-datatypes ((tuple2!18406 0))(
  ( (tuple2!18407 (_1!9213 (_ BitVec 64)) (_2!9213 V!43529)) )
))
(declare-datatypes ((List!25201 0))(
  ( (Nil!25198) (Cons!25197 (h!26406 tuple2!18406) (t!36471 List!25201)) )
))
(declare-datatypes ((ListLongMap!16387 0))(
  ( (ListLongMap!16388 (toList!8209 List!25201)) )
))
(declare-fun lt!512687 () ListLongMap!16387)

(declare-fun e!652712 () Bool)

(declare-fun lt!512681 () ListLongMap!16387)

(declare-fun -!1299 (ListLongMap!16387 (_ BitVec 64)) ListLongMap!16387)

(assert (=> b!1147417 (= e!652712 (= (-!1299 lt!512687 k!934) lt!512681))))

(declare-fun b!1147418 () Bool)

(declare-fun e!652710 () Bool)

(assert (=> b!1147418 (= e!652710 true)))

(assert (=> b!1147418 e!652712))

(declare-fun res!763820 () Bool)

(assert (=> b!1147418 (=> (not res!763820) (not e!652712))))

(declare-fun lt!512682 () V!43529)

(declare-fun +!3549 (ListLongMap!16387 tuple2!18406) ListLongMap!16387)

(assert (=> b!1147418 (= res!763820 (= (-!1299 (+!3549 lt!512681 (tuple2!18407 (select (arr!35850 _keys!1208) from!1455) lt!512682)) (select (arr!35850 _keys!1208) from!1455)) lt!512681))))

(declare-fun lt!512677 () Unit!37613)

(declare-fun addThenRemoveForNewKeyIsSame!148 (ListLongMap!16387 (_ BitVec 64) V!43529) Unit!37613)

(assert (=> b!1147418 (= lt!512677 (addThenRemoveForNewKeyIsSame!148 lt!512681 (select (arr!35850 _keys!1208) from!1455) lt!512682))))

(declare-fun lt!512683 () V!43529)

(declare-fun get!18260 (ValueCell!13691 V!43529) V!43529)

(assert (=> b!1147418 (= lt!512682 (get!18260 (select (arr!35851 _values!996) from!1455) lt!512683))))

(declare-fun lt!512676 () Unit!37613)

(assert (=> b!1147418 (= lt!512676 e!652697)))

(declare-fun c!113246 () Bool)

(declare-fun contains!6706 (ListLongMap!16387 (_ BitVec 64)) Bool)

(assert (=> b!1147418 (= c!113246 (contains!6706 lt!512681 k!934))))

(declare-fun getCurrentListMapNoExtraKeys!4650 (array!74406 array!74408 (_ BitVec 32) (_ BitVec 32) V!43529 V!43529 (_ BitVec 32) Int) ListLongMap!16387)

(assert (=> b!1147418 (= lt!512681 (getCurrentListMapNoExtraKeys!4650 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!52790 () Bool)

(declare-fun call!52794 () ListLongMap!16387)

(declare-fun call!52799 () ListLongMap!16387)

(assert (=> bm!52790 (= call!52794 call!52799)))

(declare-fun b!1147419 () Bool)

(declare-fun e!652707 () Unit!37613)

(declare-fun lt!512689 () Unit!37613)

(assert (=> b!1147419 (= e!652707 lt!512689)))

(declare-fun call!52800 () Unit!37613)

(assert (=> b!1147419 (= lt!512689 call!52800)))

(declare-fun call!52798 () Bool)

(assert (=> b!1147419 call!52798))

(declare-fun bm!52791 () Bool)

(declare-fun call!52793 () Unit!37613)

(assert (=> bm!52791 (= call!52800 call!52793)))

(declare-fun c!113245 () Bool)

(declare-fun lt!512679 () ListLongMap!16387)

(declare-fun bm!52792 () Bool)

(declare-fun addStillContains!848 (ListLongMap!16387 (_ BitVec 64) V!43529 (_ BitVec 64)) Unit!37613)

(assert (=> bm!52792 (= call!52793 (addStillContains!848 (ite c!113248 lt!512679 lt!512681) (ite c!113248 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!113245 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!113248 minValue!944 (ite c!113245 zeroValue!944 minValue!944)) k!934))))

(declare-fun mapIsEmpty!45026 () Bool)

(declare-fun mapRes!45026 () Bool)

(assert (=> mapIsEmpty!45026 mapRes!45026))

(declare-fun b!1147420 () Bool)

(declare-fun res!763822 () Bool)

(assert (=> b!1147420 (=> (not res!763822) (not e!652704))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1147420 (= res!763822 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36387 _keys!1208))))))

(declare-fun mapNonEmpty!45026 () Bool)

(declare-fun tp!85525 () Bool)

(declare-fun e!652701 () Bool)

(assert (=> mapNonEmpty!45026 (= mapRes!45026 (and tp!85525 e!652701))))

(declare-fun mapKey!45026 () (_ BitVec 32))

(declare-fun mapValue!45026 () ValueCell!13691)

(declare-fun mapRest!45026 () (Array (_ BitVec 32) ValueCell!13691))

(assert (=> mapNonEmpty!45026 (= (arr!35851 _values!996) (store mapRest!45026 mapKey!45026 mapValue!45026))))

(declare-fun b!1147421 () Bool)

(declare-fun e!652703 () Unit!37613)

(declare-fun Unit!37616 () Unit!37613)

(assert (=> b!1147421 (= e!652703 Unit!37616)))

(declare-fun b!1147422 () Bool)

(assert (=> b!1147422 (= e!652708 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1147423 () Bool)

(assert (=> b!1147423 (contains!6706 (+!3549 lt!512679 (tuple2!18407 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k!934)))

(declare-fun lt!512691 () Unit!37613)

(assert (=> b!1147423 (= lt!512691 call!52793)))

(declare-fun call!52795 () Bool)

(assert (=> b!1147423 call!52795))

(assert (=> b!1147423 (= lt!512679 call!52799)))

(declare-fun lt!512690 () Unit!37613)

(assert (=> b!1147423 (= lt!512690 (addStillContains!848 lt!512681 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k!934))))

(assert (=> b!1147423 (= e!652713 lt!512691)))

(declare-fun b!1147424 () Bool)

(declare-fun res!763814 () Bool)

(assert (=> b!1147424 (=> (not res!763814) (not e!652704))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1147424 (= res!763814 (validKeyInArray!0 k!934))))

(declare-fun b!1147425 () Bool)

(declare-fun e!652699 () Bool)

(declare-fun e!652709 () Bool)

(assert (=> b!1147425 (= e!652699 (and e!652709 mapRes!45026))))

(declare-fun condMapEmpty!45026 () Bool)

(declare-fun mapDefault!45026 () ValueCell!13691)

