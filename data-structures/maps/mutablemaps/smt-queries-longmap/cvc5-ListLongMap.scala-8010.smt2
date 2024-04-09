; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98936 () Bool)

(assert start!98936)

(declare-fun b_free!24505 () Bool)

(declare-fun b_next!24505 () Bool)

(assert (=> start!98936 (= b_free!24505 (not b_next!24505))))

(declare-fun tp!86227 () Bool)

(declare-fun b_and!39873 () Bool)

(assert (=> start!98936 (= tp!86227 b_and!39873)))

(declare-fun b!1158178 () Bool)

(declare-fun e!658672 () Bool)

(assert (=> b!1158178 (= e!658672 true)))

(declare-fun e!658665 () Bool)

(assert (=> b!1158178 e!658665))

(declare-fun res!769085 () Bool)

(assert (=> b!1158178 (=> (not res!769085) (not e!658665))))

(declare-datatypes ((V!43841 0))(
  ( (V!43842 (val!14574 Int)) )
))
(declare-datatypes ((tuple2!18618 0))(
  ( (tuple2!18619 (_1!9319 (_ BitVec 64)) (_2!9319 V!43841)) )
))
(declare-datatypes ((List!25397 0))(
  ( (Nil!25394) (Cons!25393 (h!26602 tuple2!18618) (t!36901 List!25397)) )
))
(declare-datatypes ((ListLongMap!16599 0))(
  ( (ListLongMap!16600 (toList!8315 List!25397)) )
))
(declare-fun lt!520355 () ListLongMap!16599)

(declare-fun lt!520359 () ListLongMap!16599)

(assert (=> b!1158178 (= res!769085 (= lt!520355 lt!520359))))

(declare-fun lt!520351 () ListLongMap!16599)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun -!1389 (ListLongMap!16599 (_ BitVec 64)) ListLongMap!16599)

(assert (=> b!1158178 (= lt!520355 (-!1389 lt!520351 k!934))))

(declare-datatypes ((array!74860 0))(
  ( (array!74861 (arr!36077 (Array (_ BitVec 32) (_ BitVec 64))) (size!36614 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74860)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun lt!520347 () V!43841)

(declare-fun +!3643 (ListLongMap!16599 tuple2!18618) ListLongMap!16599)

(assert (=> b!1158178 (= (-!1389 (+!3643 lt!520359 (tuple2!18619 (select (arr!36077 _keys!1208) from!1455) lt!520347)) (select (arr!36077 _keys!1208) from!1455)) lt!520359)))

(declare-datatypes ((Unit!38053 0))(
  ( (Unit!38054) )
))
(declare-fun lt!520344 () Unit!38053)

(declare-fun addThenRemoveForNewKeyIsSame!229 (ListLongMap!16599 (_ BitVec 64) V!43841) Unit!38053)

(assert (=> b!1158178 (= lt!520344 (addThenRemoveForNewKeyIsSame!229 lt!520359 (select (arr!36077 _keys!1208) from!1455) lt!520347))))

(declare-datatypes ((ValueCell!13808 0))(
  ( (ValueCellFull!13808 (v!17212 V!43841)) (EmptyCell!13808) )
))
(declare-datatypes ((array!74862 0))(
  ( (array!74863 (arr!36078 (Array (_ BitVec 32) ValueCell!13808)) (size!36615 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74862)

(declare-fun lt!520363 () V!43841)

(declare-fun get!18419 (ValueCell!13808 V!43841) V!43841)

(assert (=> b!1158178 (= lt!520347 (get!18419 (select (arr!36078 _values!996) from!1455) lt!520363))))

(declare-fun lt!520362 () Unit!38053)

(declare-fun e!658669 () Unit!38053)

(assert (=> b!1158178 (= lt!520362 e!658669)))

(declare-fun c!115356 () Bool)

(declare-fun contains!6799 (ListLongMap!16599 (_ BitVec 64)) Bool)

(assert (=> b!1158178 (= c!115356 (contains!6799 lt!520359 k!934))))

(declare-fun zeroValue!944 () V!43841)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!43841)

(declare-fun getCurrentListMapNoExtraKeys!4752 (array!74860 array!74862 (_ BitVec 32) (_ BitVec 32) V!43841 V!43841 (_ BitVec 32) Int) ListLongMap!16599)

(assert (=> b!1158178 (= lt!520359 (getCurrentListMapNoExtraKeys!4752 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1158179 () Bool)

(declare-fun res!769074 () Bool)

(declare-fun e!658664 () Bool)

(assert (=> b!1158179 (=> (not res!769074) (not e!658664))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1158179 (= res!769074 (validKeyInArray!0 k!934))))

(declare-fun b!1158180 () Bool)

(declare-fun call!55605 () ListLongMap!16599)

(declare-fun call!55601 () ListLongMap!16599)

(declare-fun e!658666 () Bool)

(assert (=> b!1158180 (= e!658666 (= call!55601 (-!1389 call!55605 k!934)))))

(declare-fun e!658675 () Bool)

(declare-fun b!1158181 () Bool)

(declare-fun arrayContainsKey!0 (array!74860 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1158181 (= e!658675 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1158183 () Bool)

(declare-fun e!658668 () Bool)

(declare-fun tp_is_empty!29035 () Bool)

(assert (=> b!1158183 (= e!658668 tp_is_empty!29035)))

(declare-fun b!1158184 () Bool)

(declare-fun e!658676 () Bool)

(assert (=> b!1158184 (= e!658676 e!658672)))

(declare-fun res!769078 () Bool)

(assert (=> b!1158184 (=> res!769078 e!658672)))

(assert (=> b!1158184 (= res!769078 (not (= (select (arr!36077 _keys!1208) from!1455) k!934)))))

(assert (=> b!1158184 e!658666))

(declare-fun c!115354 () Bool)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1158184 (= c!115354 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!520354 () Unit!38053)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!616 (array!74860 array!74862 (_ BitVec 32) (_ BitVec 32) V!43841 V!43841 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38053)

(assert (=> b!1158184 (= lt!520354 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!616 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1158185 () Bool)

(declare-fun res!769086 () Bool)

(assert (=> b!1158185 (=> (not res!769086) (not e!658664))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1158185 (= res!769086 (validMask!0 mask!1564))))

(declare-fun bm!55598 () Bool)

(declare-fun call!55604 () Bool)

(declare-fun call!55606 () Bool)

(assert (=> bm!55598 (= call!55604 call!55606)))

(declare-fun e!658674 () Bool)

(declare-fun b!1158186 () Bool)

(assert (=> b!1158186 (= e!658674 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1158187 () Bool)

(declare-fun Unit!38055 () Unit!38053)

(assert (=> b!1158187 (= e!658669 Unit!38055)))

(declare-fun lt!520361 () Bool)

(assert (=> b!1158187 (= lt!520361 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun c!115351 () Bool)

(assert (=> b!1158187 (= c!115351 (and (not lt!520361) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!520360 () Unit!38053)

(declare-fun e!658667 () Unit!38053)

(assert (=> b!1158187 (= lt!520360 e!658667)))

(declare-fun lt!520357 () Unit!38053)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!515 (array!74860 array!74862 (_ BitVec 32) (_ BitVec 32) V!43841 V!43841 (_ BitVec 64) (_ BitVec 32) Int) Unit!38053)

(assert (=> b!1158187 (= lt!520357 (lemmaListMapContainsThenArrayContainsFrom!515 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!115352 () Bool)

(assert (=> b!1158187 (= c!115352 (and (not (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!769083 () Bool)

(assert (=> b!1158187 (= res!769083 e!658675)))

(assert (=> b!1158187 (=> (not res!769083) (not e!658674))))

(assert (=> b!1158187 e!658674))

(declare-fun lt!520353 () Unit!38053)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74860 (_ BitVec 32) (_ BitVec 32)) Unit!38053)

(assert (=> b!1158187 (= lt!520353 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!25398 0))(
  ( (Nil!25395) (Cons!25394 (h!26603 (_ BitVec 64)) (t!36902 List!25398)) )
))
(declare-fun arrayNoDuplicates!0 (array!74860 (_ BitVec 32) List!25398) Bool)

(assert (=> b!1158187 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25395)))

(declare-fun lt!520345 () Unit!38053)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74860 (_ BitVec 64) (_ BitVec 32) List!25398) Unit!38053)

(assert (=> b!1158187 (= lt!520345 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!25395))))

(assert (=> b!1158187 false))

(declare-fun b!1158188 () Bool)

(declare-fun res!769077 () Bool)

(assert (=> b!1158188 (=> (not res!769077) (not e!658664))))

(assert (=> b!1158188 (= res!769077 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25395))))

(declare-fun b!1158189 () Bool)

(declare-fun call!55603 () ListLongMap!16599)

(assert (=> b!1158189 (contains!6799 call!55603 k!934)))

(declare-fun lt!520356 () ListLongMap!16599)

(declare-fun lt!520350 () Unit!38053)

(declare-fun addStillContains!939 (ListLongMap!16599 (_ BitVec 64) V!43841 (_ BitVec 64)) Unit!38053)

(assert (=> b!1158189 (= lt!520350 (addStillContains!939 lt!520356 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k!934))))

(assert (=> b!1158189 call!55606))

(assert (=> b!1158189 (= lt!520356 (+!3643 lt!520359 (tuple2!18619 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(declare-fun lt!520349 () Unit!38053)

(declare-fun call!55602 () Unit!38053)

(assert (=> b!1158189 (= lt!520349 call!55602)))

(assert (=> b!1158189 (= e!658667 lt!520350)))

(declare-fun b!1158190 () Bool)

(assert (=> b!1158190 (= e!658666 (= call!55601 call!55605))))

(declare-fun b!1158191 () Bool)

(declare-fun e!658671 () Bool)

(declare-fun mapRes!45377 () Bool)

(assert (=> b!1158191 (= e!658671 (and e!658668 mapRes!45377))))

(declare-fun condMapEmpty!45377 () Bool)

(declare-fun mapDefault!45377 () ValueCell!13808)

