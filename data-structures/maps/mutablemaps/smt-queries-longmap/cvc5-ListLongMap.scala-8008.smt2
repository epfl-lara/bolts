; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98924 () Bool)

(assert start!98924)

(declare-fun b_free!24493 () Bool)

(declare-fun b_next!24493 () Bool)

(assert (=> start!98924 (= b_free!24493 (not b_next!24493))))

(declare-fun tp!86190 () Bool)

(declare-fun b_and!39849 () Bool)

(assert (=> start!98924 (= tp!86190 b_and!39849)))

(declare-fun b!1157626 () Bool)

(declare-fun e!658361 () Bool)

(declare-fun tp_is_empty!29023 () Bool)

(assert (=> b!1157626 (= e!658361 tp_is_empty!29023)))

(declare-fun b!1157627 () Bool)

(declare-datatypes ((Unit!38028 0))(
  ( (Unit!38029) )
))
(declare-fun e!658363 () Unit!38028)

(declare-fun Unit!38030 () Unit!38028)

(assert (=> b!1157627 (= e!658363 Unit!38030)))

(declare-fun b!1157628 () Bool)

(declare-fun e!658362 () Bool)

(declare-fun e!658366 () Bool)

(assert (=> b!1157628 (= e!658362 (not e!658366))))

(declare-fun res!768812 () Bool)

(assert (=> b!1157628 (=> res!768812 e!658366)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1157628 (= res!768812 (bvsgt from!1455 i!673))))

(declare-datatypes ((array!74836 0))(
  ( (array!74837 (arr!36065 (Array (_ BitVec 32) (_ BitVec 64))) (size!36602 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74836)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!74836 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1157628 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!519965 () Unit!38028)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74836 (_ BitVec 64) (_ BitVec 32)) Unit!38028)

(assert (=> b!1157628 (= lt!519965 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun bm!55454 () Bool)

(declare-fun call!55459 () Bool)

(declare-fun call!55458 () Bool)

(assert (=> bm!55454 (= call!55459 call!55458)))

(declare-fun b!1157629 () Bool)

(declare-fun e!658364 () Bool)

(assert (=> b!1157629 (= e!658364 true)))

(declare-fun e!658367 () Bool)

(assert (=> b!1157629 e!658367))

(declare-fun res!768806 () Bool)

(assert (=> b!1157629 (=> (not res!768806) (not e!658367))))

(declare-datatypes ((V!43825 0))(
  ( (V!43826 (val!14568 Int)) )
))
(declare-datatypes ((tuple2!18606 0))(
  ( (tuple2!18607 (_1!9313 (_ BitVec 64)) (_2!9313 V!43825)) )
))
(declare-datatypes ((List!25386 0))(
  ( (Nil!25383) (Cons!25382 (h!26591 tuple2!18606) (t!36878 List!25386)) )
))
(declare-datatypes ((ListLongMap!16587 0))(
  ( (ListLongMap!16588 (toList!8309 List!25386)) )
))
(declare-fun lt!519958 () ListLongMap!16587)

(declare-fun lt!519957 () ListLongMap!16587)

(assert (=> b!1157629 (= res!768806 (= lt!519958 lt!519957))))

(declare-fun lt!519948 () ListLongMap!16587)

(declare-fun -!1384 (ListLongMap!16587 (_ BitVec 64)) ListLongMap!16587)

(assert (=> b!1157629 (= lt!519958 (-!1384 lt!519948 k!934))))

(declare-fun lt!519968 () V!43825)

(declare-fun +!3638 (ListLongMap!16587 tuple2!18606) ListLongMap!16587)

(assert (=> b!1157629 (= (-!1384 (+!3638 lt!519957 (tuple2!18607 (select (arr!36065 _keys!1208) from!1455) lt!519968)) (select (arr!36065 _keys!1208) from!1455)) lt!519957)))

(declare-fun lt!519962 () Unit!38028)

(declare-fun addThenRemoveForNewKeyIsSame!225 (ListLongMap!16587 (_ BitVec 64) V!43825) Unit!38028)

(assert (=> b!1157629 (= lt!519962 (addThenRemoveForNewKeyIsSame!225 lt!519957 (select (arr!36065 _keys!1208) from!1455) lt!519968))))

(declare-datatypes ((ValueCell!13802 0))(
  ( (ValueCellFull!13802 (v!17206 V!43825)) (EmptyCell!13802) )
))
(declare-datatypes ((array!74838 0))(
  ( (array!74839 (arr!36066 (Array (_ BitVec 32) ValueCell!13802)) (size!36603 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74838)

(declare-fun lt!519967 () V!43825)

(declare-fun get!18411 (ValueCell!13802 V!43825) V!43825)

(assert (=> b!1157629 (= lt!519968 (get!18411 (select (arr!36066 _values!996) from!1455) lt!519967))))

(declare-fun lt!519956 () Unit!38028)

(declare-fun e!658358 () Unit!38028)

(assert (=> b!1157629 (= lt!519956 e!658358)))

(declare-fun c!115243 () Bool)

(declare-fun contains!6794 (ListLongMap!16587 (_ BitVec 64)) Bool)

(assert (=> b!1157629 (= c!115243 (contains!6794 lt!519957 k!934))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun zeroValue!944 () V!43825)

(declare-fun minValue!944 () V!43825)

(declare-fun getCurrentListMapNoExtraKeys!4746 (array!74836 array!74838 (_ BitVec 32) (_ BitVec 32) V!43825 V!43825 (_ BitVec 32) Int) ListLongMap!16587)

(assert (=> b!1157629 (= lt!519957 (getCurrentListMapNoExtraKeys!4746 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1157630 () Bool)

(declare-fun e!658370 () Unit!38028)

(assert (=> b!1157630 (= e!658370 e!658363)))

(declare-fun c!115247 () Bool)

(declare-fun lt!519952 () Bool)

(assert (=> b!1157630 (= c!115247 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!519952))))

(declare-fun b!1157631 () Bool)

(declare-fun e!658371 () Bool)

(assert (=> b!1157631 (= e!658371 e!658364)))

(declare-fun res!768814 () Bool)

(assert (=> b!1157631 (=> res!768814 e!658364)))

(assert (=> b!1157631 (= res!768814 (not (= (select (arr!36065 _keys!1208) from!1455) k!934)))))

(declare-fun e!658374 () Bool)

(assert (=> b!1157631 e!658374))

(declare-fun c!115244 () Bool)

(assert (=> b!1157631 (= c!115244 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!519966 () Unit!38028)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!611 (array!74836 array!74838 (_ BitVec 32) (_ BitVec 32) V!43825 V!43825 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38028)

(assert (=> b!1157631 (= lt!519966 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!611 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!55456 () Bool)

(declare-fun call!55461 () Unit!38028)

(declare-fun call!55463 () Unit!38028)

(assert (=> bm!55456 (= call!55461 call!55463)))

(declare-fun b!1157632 () Bool)

(declare-fun Unit!38031 () Unit!38028)

(assert (=> b!1157632 (= e!658358 Unit!38031)))

(declare-fun lt!519961 () array!74836)

(declare-fun bm!55457 () Bool)

(declare-fun call!55462 () ListLongMap!16587)

(declare-fun lt!519964 () array!74838)

(assert (=> bm!55457 (= call!55462 (getCurrentListMapNoExtraKeys!4746 lt!519961 lt!519964 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1157633 () Bool)

(declare-fun res!768804 () Bool)

(declare-fun e!658359 () Bool)

(assert (=> b!1157633 (=> (not res!768804) (not e!658359))))

(assert (=> b!1157633 (= res!768804 (= (select (arr!36065 _keys!1208) i!673) k!934))))

(declare-fun mapIsEmpty!45359 () Bool)

(declare-fun mapRes!45359 () Bool)

(assert (=> mapIsEmpty!45359 mapRes!45359))

(declare-fun b!1157634 () Bool)

(declare-fun res!768805 () Bool)

(assert (=> b!1157634 (=> (not res!768805) (not e!658362))))

(declare-datatypes ((List!25387 0))(
  ( (Nil!25384) (Cons!25383 (h!26592 (_ BitVec 64)) (t!36879 List!25387)) )
))
(declare-fun arrayNoDuplicates!0 (array!74836 (_ BitVec 32) List!25387) Bool)

(assert (=> b!1157634 (= res!768805 (arrayNoDuplicates!0 lt!519961 #b00000000000000000000000000000000 Nil!25384))))

(declare-fun e!658360 () Bool)

(declare-fun b!1157635 () Bool)

(assert (=> b!1157635 (= e!658360 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun lt!519951 () ListLongMap!16587)

(declare-fun c!115245 () Bool)

(declare-fun bm!55458 () Bool)

(declare-fun call!55464 () ListLongMap!16587)

(assert (=> bm!55458 (= call!55458 (contains!6794 (ite c!115245 lt!519951 call!55464) k!934))))

(declare-fun b!1157636 () Bool)

(assert (=> b!1157636 call!55459))

(declare-fun lt!519969 () Unit!38028)

(assert (=> b!1157636 (= lt!519969 call!55461)))

(assert (=> b!1157636 (= e!658363 lt!519969)))

(declare-fun b!1157637 () Bool)

(assert (=> b!1157637 (= e!658367 (= lt!519958 (getCurrentListMapNoExtraKeys!4746 lt!519961 lt!519964 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004)))))

(declare-fun b!1157638 () Bool)

(declare-fun res!768811 () Bool)

(assert (=> b!1157638 (=> (not res!768811) (not e!658359))))

(assert (=> b!1157638 (= res!768811 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36602 _keys!1208))))))

(declare-fun b!1157639 () Bool)

(declare-fun call!55457 () ListLongMap!16587)

(assert (=> b!1157639 (contains!6794 call!55457 k!934)))

(declare-fun lt!519963 () Unit!38028)

(declare-fun addStillContains!933 (ListLongMap!16587 (_ BitVec 64) V!43825 (_ BitVec 64)) Unit!38028)

(assert (=> b!1157639 (= lt!519963 (addStillContains!933 lt!519951 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k!934))))

(assert (=> b!1157639 call!55458))

(assert (=> b!1157639 (= lt!519951 (+!3638 lt!519957 (tuple2!18607 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(declare-fun lt!519959 () Unit!38028)

(assert (=> b!1157639 (= lt!519959 call!55463)))

(declare-fun e!658368 () Unit!38028)

(assert (=> b!1157639 (= e!658368 lt!519963)))

(declare-fun b!1157640 () Bool)

(declare-fun e!658372 () Bool)

(declare-fun e!658365 () Bool)

(assert (=> b!1157640 (= e!658372 (and e!658365 mapRes!45359))))

(declare-fun condMapEmpty!45359 () Bool)

(declare-fun mapDefault!45359 () ValueCell!13802)

