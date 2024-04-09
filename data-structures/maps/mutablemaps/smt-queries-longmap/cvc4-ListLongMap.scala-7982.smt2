; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98772 () Bool)

(assert start!98772)

(declare-fun b_free!24341 () Bool)

(declare-fun b_next!24341 () Bool)

(assert (=> start!98772 (= b_free!24341 (not b_next!24341))))

(declare-fun tp!85734 () Bool)

(declare-fun b_and!39545 () Bool)

(assert (=> start!98772 (= tp!85734 b_and!39545)))

(declare-fun bm!53630 () Bool)

(declare-datatypes ((V!43621 0))(
  ( (V!43622 (val!14492 Int)) )
))
(declare-datatypes ((tuple2!18474 0))(
  ( (tuple2!18475 (_1!9247 (_ BitVec 64)) (_2!9247 V!43621)) )
))
(declare-datatypes ((List!25265 0))(
  ( (Nil!25262) (Cons!25261 (h!26470 tuple2!18474) (t!36605 List!25265)) )
))
(declare-datatypes ((ListLongMap!16455 0))(
  ( (ListLongMap!16456 (toList!8243 List!25265)) )
))
(declare-fun call!53638 () ListLongMap!16455)

(declare-fun call!53635 () ListLongMap!16455)

(assert (=> bm!53630 (= call!53638 call!53635)))

(declare-fun b!1150634 () Bool)

(declare-datatypes ((Unit!37761 0))(
  ( (Unit!37762) )
))
(declare-fun e!654491 () Unit!37761)

(declare-fun e!654488 () Unit!37761)

(assert (=> b!1150634 (= e!654491 e!654488)))

(declare-fun c!113879 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun lt!514941 () Bool)

(assert (=> b!1150634 (= c!113879 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!514941))))

(declare-fun bm!53631 () Bool)

(declare-fun call!53639 () Bool)

(declare-fun call!53637 () Bool)

(assert (=> bm!53631 (= call!53639 call!53637)))

(declare-fun b!1150635 () Bool)

(declare-fun c!113880 () Bool)

(assert (=> b!1150635 (= c!113880 (and (not lt!514941) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun e!654487 () Unit!37761)

(assert (=> b!1150635 (= e!654487 e!654491)))

(declare-fun b!1150636 () Bool)

(declare-fun res!765394 () Bool)

(declare-fun e!654496 () Bool)

(assert (=> b!1150636 (=> (not res!765394) (not e!654496))))

(declare-datatypes ((array!74546 0))(
  ( (array!74547 (arr!35920 (Array (_ BitVec 32) (_ BitVec 64))) (size!36457 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74546)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1150636 (= res!765394 (= (select (arr!35920 _keys!1208) i!673) k!934))))

(declare-fun b!1150637 () Bool)

(declare-fun e!654489 () Unit!37761)

(declare-fun Unit!37763 () Unit!37761)

(assert (=> b!1150637 (= e!654489 Unit!37763)))

(declare-fun b!1150638 () Bool)

(declare-fun res!765390 () Bool)

(declare-fun e!654495 () Bool)

(assert (=> b!1150638 (=> (not res!765390) (not e!654495))))

(declare-fun lt!514934 () array!74546)

(declare-datatypes ((List!25266 0))(
  ( (Nil!25263) (Cons!25262 (h!26471 (_ BitVec 64)) (t!36606 List!25266)) )
))
(declare-fun arrayNoDuplicates!0 (array!74546 (_ BitVec 32) List!25266) Bool)

(assert (=> b!1150638 (= res!765390 (arrayNoDuplicates!0 lt!514934 #b00000000000000000000000000000000 Nil!25263))))

(declare-fun b!1150639 () Bool)

(declare-fun res!765395 () Bool)

(assert (=> b!1150639 (=> (not res!765395) (not e!654496))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74546 (_ BitVec 32)) Bool)

(assert (=> b!1150639 (= res!765395 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1150640 () Bool)

(declare-fun Unit!37764 () Unit!37761)

(assert (=> b!1150640 (= e!654488 Unit!37764)))

(declare-fun b!1150641 () Bool)

(declare-fun e!654485 () Bool)

(declare-fun tp_is_empty!28871 () Bool)

(assert (=> b!1150641 (= e!654485 tp_is_empty!28871)))

(declare-fun b!1150642 () Bool)

(declare-fun e!654492 () Bool)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!74546 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1150642 (= e!654492 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun zeroValue!944 () V!43621)

(declare-fun lt!514942 () ListLongMap!16455)

(declare-fun call!53633 () Unit!37761)

(declare-fun bm!53632 () Bool)

(declare-fun lt!514944 () ListLongMap!16455)

(declare-fun c!113878 () Bool)

(declare-fun minValue!944 () V!43621)

(declare-fun addStillContains!880 (ListLongMap!16455 (_ BitVec 64) V!43621 (_ BitVec 64)) Unit!37761)

(assert (=> bm!53632 (= call!53633 (addStillContains!880 (ite c!113878 lt!514942 lt!514944) (ite c!113878 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!113880 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!113878 minValue!944 (ite c!113880 zeroValue!944 minValue!944)) k!934))))

(declare-fun b!1150643 () Bool)

(assert (=> b!1150643 (= e!654496 e!654495)))

(declare-fun res!765387 () Bool)

(assert (=> b!1150643 (=> (not res!765387) (not e!654495))))

(assert (=> b!1150643 (= res!765387 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!514934 mask!1564))))

(assert (=> b!1150643 (= lt!514934 (array!74547 (store (arr!35920 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36457 _keys!1208)))))

(declare-fun b!1150644 () Bool)

(assert (=> b!1150644 call!53639))

(declare-fun lt!514933 () Unit!37761)

(declare-fun call!53640 () Unit!37761)

(assert (=> b!1150644 (= lt!514933 call!53640)))

(assert (=> b!1150644 (= e!654488 lt!514933)))

(declare-fun b!1150645 () Bool)

(declare-fun e!654484 () Bool)

(assert (=> b!1150645 (= e!654484 true)))

(declare-fun e!654494 () Bool)

(assert (=> b!1150645 e!654494))

(declare-fun res!765388 () Bool)

(assert (=> b!1150645 (=> (not res!765388) (not e!654494))))

(declare-fun lt!514945 () ListLongMap!16455)

(assert (=> b!1150645 (= res!765388 (= lt!514945 lt!514944))))

(declare-fun lt!514950 () ListLongMap!16455)

(declare-fun -!1329 (ListLongMap!16455 (_ BitVec 64)) ListLongMap!16455)

(assert (=> b!1150645 (= lt!514945 (-!1329 lt!514950 k!934))))

(declare-fun lt!514936 () V!43621)

(declare-fun +!3580 (ListLongMap!16455 tuple2!18474) ListLongMap!16455)

(assert (=> b!1150645 (= (-!1329 (+!3580 lt!514944 (tuple2!18475 (select (arr!35920 _keys!1208) from!1455) lt!514936)) (select (arr!35920 _keys!1208) from!1455)) lt!514944)))

(declare-fun lt!514935 () Unit!37761)

(declare-fun addThenRemoveForNewKeyIsSame!178 (ListLongMap!16455 (_ BitVec 64) V!43621) Unit!37761)

(assert (=> b!1150645 (= lt!514935 (addThenRemoveForNewKeyIsSame!178 lt!514944 (select (arr!35920 _keys!1208) from!1455) lt!514936))))

(declare-fun lt!514953 () V!43621)

(declare-datatypes ((ValueCell!13726 0))(
  ( (ValueCellFull!13726 (v!17130 V!43621)) (EmptyCell!13726) )
))
(declare-datatypes ((array!74548 0))(
  ( (array!74549 (arr!35921 (Array (_ BitVec 32) ValueCell!13726)) (size!36458 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74548)

(declare-fun get!18312 (ValueCell!13726 V!43621) V!43621)

(assert (=> b!1150645 (= lt!514936 (get!18312 (select (arr!35921 _values!996) from!1455) lt!514953))))

(declare-fun lt!514943 () Unit!37761)

(assert (=> b!1150645 (= lt!514943 e!654489)))

(declare-fun c!113876 () Bool)

(declare-fun contains!6738 (ListLongMap!16455 (_ BitVec 64)) Bool)

(assert (=> b!1150645 (= c!113876 (contains!6738 lt!514944 k!934))))

(declare-fun defaultEntry!1004 () Int)

(declare-fun getCurrentListMapNoExtraKeys!4684 (array!74546 array!74548 (_ BitVec 32) (_ BitVec 32) V!43621 V!43621 (_ BitVec 32) Int) ListLongMap!16455)

(assert (=> b!1150645 (= lt!514944 (getCurrentListMapNoExtraKeys!4684 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1150646 () Bool)

(declare-fun Unit!37765 () Unit!37761)

(assert (=> b!1150646 (= e!654489 Unit!37765)))

(assert (=> b!1150646 (= lt!514941 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1150646 (= c!113878 (and (not lt!514941) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!514947 () Unit!37761)

(assert (=> b!1150646 (= lt!514947 e!654487)))

(declare-fun lt!514949 () Unit!37761)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!464 (array!74546 array!74548 (_ BitVec 32) (_ BitVec 32) V!43621 V!43621 (_ BitVec 64) (_ BitVec 32) Int) Unit!37761)

(assert (=> b!1150646 (= lt!514949 (lemmaListMapContainsThenArrayContainsFrom!464 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!113877 () Bool)

(assert (=> b!1150646 (= c!113877 (and (not (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!765385 () Bool)

(assert (=> b!1150646 (= res!765385 e!654492)))

(declare-fun e!654493 () Bool)

(assert (=> b!1150646 (=> (not res!765385) (not e!654493))))

(assert (=> b!1150646 e!654493))

(declare-fun lt!514937 () Unit!37761)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74546 (_ BitVec 32) (_ BitVec 32)) Unit!37761)

(assert (=> b!1150646 (= lt!514937 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1150646 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25263)))

(declare-fun lt!514939 () Unit!37761)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74546 (_ BitVec 64) (_ BitVec 32) List!25266) Unit!37761)

(assert (=> b!1150646 (= lt!514939 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!25263))))

(assert (=> b!1150646 false))

(declare-fun b!1150647 () Bool)

(assert (=> b!1150647 (contains!6738 call!53635 k!934)))

(declare-fun lt!514952 () Unit!37761)

(assert (=> b!1150647 (= lt!514952 call!53633)))

(assert (=> b!1150647 call!53637))

(assert (=> b!1150647 (= lt!514942 (+!3580 lt!514944 (tuple2!18475 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(declare-fun lt!514938 () Unit!37761)

(assert (=> b!1150647 (= lt!514938 (addStillContains!880 lt!514944 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k!934))))

(assert (=> b!1150647 (= e!654487 lt!514952)))

(declare-fun call!53634 () ListLongMap!16455)

(declare-fun bm!53633 () Bool)

(assert (=> bm!53633 (= call!53634 (getCurrentListMapNoExtraKeys!4684 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1150648 () Bool)

(declare-fun e!654498 () Bool)

(assert (=> b!1150648 (= e!654498 tp_is_empty!28871)))

(declare-fun b!1150649 () Bool)

(declare-fun res!765396 () Bool)

(assert (=> b!1150649 (=> (not res!765396) (not e!654496))))

(assert (=> b!1150649 (= res!765396 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25263))))

(declare-fun b!1150650 () Bool)

(declare-fun e!654482 () Bool)

(declare-fun mapRes!45131 () Bool)

(assert (=> b!1150650 (= e!654482 (and e!654485 mapRes!45131))))

(declare-fun condMapEmpty!45131 () Bool)

(declare-fun mapDefault!45131 () ValueCell!13726)

