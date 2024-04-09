; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101202 () Bool)

(assert start!101202)

(declare-fun b_free!26089 () Bool)

(declare-fun b_next!26089 () Bool)

(assert (=> start!101202 (= b_free!26089 (not b_next!26089))))

(declare-fun tp!91290 () Bool)

(declare-fun b_and!43305 () Bool)

(assert (=> start!101202 (= tp!91290 b_and!43305)))

(declare-datatypes ((V!46185 0))(
  ( (V!46186 (val!15453 Int)) )
))
(declare-fun zeroValue!944 () V!46185)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun e!689507 () Bool)

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((tuple2!20000 0))(
  ( (tuple2!20001 (_1!10010 (_ BitVec 64)) (_2!10010 V!46185)) )
))
(declare-datatypes ((List!26819 0))(
  ( (Nil!26816) (Cons!26815 (h!28024 tuple2!20000) (t!39895 List!26819)) )
))
(declare-datatypes ((ListLongMap!17981 0))(
  ( (ListLongMap!17982 (toList!9006 List!26819)) )
))
(declare-fun lt!552108 () ListLongMap!17981)

(declare-fun minValue!944 () V!46185)

(declare-fun b!1214044 () Bool)

(declare-datatypes ((ValueCell!14687 0))(
  ( (ValueCellFull!14687 (v!18107 V!46185)) (EmptyCell!14687) )
))
(declare-datatypes ((array!78346 0))(
  ( (array!78347 (arr!37804 (Array (_ BitVec 32) ValueCell!14687)) (size!38341 (_ BitVec 32))) )
))
(declare-fun lt!552114 () array!78346)

(declare-datatypes ((array!78348 0))(
  ( (array!78349 (arr!37805 (Array (_ BitVec 32) (_ BitVec 64))) (size!38342 (_ BitVec 32))) )
))
(declare-fun lt!552100 () array!78348)

(declare-fun getCurrentListMapNoExtraKeys!5411 (array!78348 array!78346 (_ BitVec 32) (_ BitVec 32) V!46185 V!46185 (_ BitVec 32) Int) ListLongMap!17981)

(assert (=> b!1214044 (= e!689507 (= lt!552108 (getCurrentListMapNoExtraKeys!5411 lt!552100 lt!552114 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004)))))

(declare-fun b!1214045 () Bool)

(declare-fun e!689499 () Bool)

(declare-fun lt!552112 () ListLongMap!17981)

(assert (=> b!1214045 (= e!689499 (or (not (= lt!552108 lt!552112)) (= lt!552112 lt!552108)))))

(assert (=> b!1214045 e!689507))

(declare-fun res!806123 () Bool)

(assert (=> b!1214045 (=> (not res!806123) (not e!689507))))

(declare-fun lt!552106 () ListLongMap!17981)

(assert (=> b!1214045 (= res!806123 (= lt!552108 lt!552106))))

(declare-fun lt!552107 () ListLongMap!17981)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun -!1900 (ListLongMap!17981 (_ BitVec 64)) ListLongMap!17981)

(assert (=> b!1214045 (= lt!552108 (-!1900 lt!552107 k!934))))

(declare-fun _keys!1208 () array!78348)

(declare-fun lt!552111 () V!46185)

(declare-fun +!4031 (ListLongMap!17981 tuple2!20000) ListLongMap!17981)

(assert (=> b!1214045 (= (-!1900 (+!4031 lt!552106 (tuple2!20001 (select (arr!37805 _keys!1208) from!1455) lt!552111)) (select (arr!37805 _keys!1208) from!1455)) lt!552106)))

(declare-datatypes ((Unit!40193 0))(
  ( (Unit!40194) )
))
(declare-fun lt!552110 () Unit!40193)

(declare-fun addThenRemoveForNewKeyIsSame!298 (ListLongMap!17981 (_ BitVec 64) V!46185) Unit!40193)

(assert (=> b!1214045 (= lt!552110 (addThenRemoveForNewKeyIsSame!298 lt!552106 (select (arr!37805 _keys!1208) from!1455) lt!552111))))

(declare-fun lt!552105 () V!46185)

(declare-fun _values!996 () array!78346)

(declare-fun get!19320 (ValueCell!14687 V!46185) V!46185)

(assert (=> b!1214045 (= lt!552111 (get!19320 (select (arr!37804 _values!996) from!1455) lt!552105))))

(declare-fun lt!552098 () Unit!40193)

(declare-fun e!689497 () Unit!40193)

(assert (=> b!1214045 (= lt!552098 e!689497)))

(declare-fun c!119955 () Bool)

(declare-fun contains!7020 (ListLongMap!17981 (_ BitVec 64)) Bool)

(assert (=> b!1214045 (= c!119955 (contains!7020 lt!552106 k!934))))

(assert (=> b!1214045 (= lt!552106 (getCurrentListMapNoExtraKeys!5411 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun call!60556 () ListLongMap!17981)

(declare-fun bm!60546 () Bool)

(assert (=> bm!60546 (= call!60556 (getCurrentListMapNoExtraKeys!5411 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1214046 () Bool)

(declare-fun res!806114 () Bool)

(declare-fun e!689501 () Bool)

(assert (=> b!1214046 (=> (not res!806114) (not e!689501))))

(assert (=> b!1214046 (= res!806114 (and (= (size!38341 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38342 _keys!1208) (size!38341 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1214047 () Bool)

(declare-fun res!806125 () Bool)

(assert (=> b!1214047 (=> (not res!806125) (not e!689501))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78348 (_ BitVec 32)) Bool)

(assert (=> b!1214047 (= res!806125 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1214048 () Bool)

(declare-fun lt!552103 () ListLongMap!17981)

(assert (=> b!1214048 (contains!7020 (+!4031 lt!552103 (tuple2!20001 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k!934)))

(declare-fun lt!552117 () Unit!40193)

(declare-fun addStillContains!1088 (ListLongMap!17981 (_ BitVec 64) V!46185 (_ BitVec 64)) Unit!40193)

(assert (=> b!1214048 (= lt!552117 (addStillContains!1088 lt!552103 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k!934))))

(declare-fun call!60551 () Bool)

(assert (=> b!1214048 call!60551))

(declare-fun call!60554 () ListLongMap!17981)

(assert (=> b!1214048 (= lt!552103 call!60554)))

(declare-fun lt!552109 () Unit!40193)

(declare-fun call!60553 () Unit!40193)

(assert (=> b!1214048 (= lt!552109 call!60553)))

(declare-fun e!689492 () Unit!40193)

(assert (=> b!1214048 (= e!689492 lt!552117)))

(declare-fun b!1214049 () Bool)

(declare-fun e!689502 () Bool)

(declare-fun call!60552 () ListLongMap!17981)

(assert (=> b!1214049 (= e!689502 (= call!60552 call!60556))))

(declare-fun b!1214051 () Bool)

(declare-fun e!689496 () Bool)

(declare-fun e!689493 () Bool)

(assert (=> b!1214051 (= e!689496 (not e!689493))))

(declare-fun res!806117 () Bool)

(assert (=> b!1214051 (=> res!806117 e!689493)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1214051 (= res!806117 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!78348 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1214051 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!552113 () Unit!40193)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78348 (_ BitVec 64) (_ BitVec 32)) Unit!40193)

(assert (=> b!1214051 (= lt!552113 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1214052 () Bool)

(declare-fun Unit!40195 () Unit!40193)

(assert (=> b!1214052 (= e!689497 Unit!40195)))

(declare-fun lt!552116 () Bool)

(assert (=> b!1214052 (= lt!552116 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun c!119953 () Bool)

(assert (=> b!1214052 (= c!119953 (and (not lt!552116) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!552101 () Unit!40193)

(assert (=> b!1214052 (= lt!552101 e!689492)))

(declare-fun lt!552115 () Unit!40193)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!623 (array!78348 array!78346 (_ BitVec 32) (_ BitVec 32) V!46185 V!46185 (_ BitVec 64) (_ BitVec 32) Int) Unit!40193)

(assert (=> b!1214052 (= lt!552115 (lemmaListMapContainsThenArrayContainsFrom!623 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!119956 () Bool)

(assert (=> b!1214052 (= c!119956 (and (not (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!806115 () Bool)

(declare-fun e!689494 () Bool)

(assert (=> b!1214052 (= res!806115 e!689494)))

(declare-fun e!689503 () Bool)

(assert (=> b!1214052 (=> (not res!806115) (not e!689503))))

(assert (=> b!1214052 e!689503))

(declare-fun lt!552099 () Unit!40193)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!78348 (_ BitVec 32) (_ BitVec 32)) Unit!40193)

(assert (=> b!1214052 (= lt!552099 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!26820 0))(
  ( (Nil!26817) (Cons!26816 (h!28025 (_ BitVec 64)) (t!39896 List!26820)) )
))
(declare-fun arrayNoDuplicates!0 (array!78348 (_ BitVec 32) List!26820) Bool)

(assert (=> b!1214052 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26817)))

(declare-fun lt!552118 () Unit!40193)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!78348 (_ BitVec 64) (_ BitVec 32) List!26820) Unit!40193)

(assert (=> b!1214052 (= lt!552118 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!26817))))

(assert (=> b!1214052 false))

(declare-fun bm!60547 () Bool)

(declare-fun call!60555 () Unit!40193)

(assert (=> bm!60547 (= call!60555 call!60553)))

(declare-fun b!1214053 () Bool)

(declare-fun e!689508 () Bool)

(assert (=> b!1214053 (= e!689493 e!689508)))

(declare-fun res!806112 () Bool)

(assert (=> b!1214053 (=> res!806112 e!689508)))

(assert (=> b!1214053 (= res!806112 (not (= from!1455 i!673)))))

(assert (=> b!1214053 (= lt!552112 (getCurrentListMapNoExtraKeys!5411 lt!552100 lt!552114 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1214053 (= lt!552114 (array!78347 (store (arr!37804 _values!996) i!673 (ValueCellFull!14687 lt!552105)) (size!38341 _values!996)))))

(declare-fun dynLambda!3320 (Int (_ BitVec 64)) V!46185)

(assert (=> b!1214053 (= lt!552105 (dynLambda!3320 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1214053 (= lt!552107 (getCurrentListMapNoExtraKeys!5411 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1214054 () Bool)

(declare-fun e!689505 () Bool)

(declare-fun tp_is_empty!30793 () Bool)

(assert (=> b!1214054 (= e!689505 tp_is_empty!30793)))

(declare-fun b!1214055 () Bool)

(declare-fun res!806120 () Bool)

(assert (=> b!1214055 (=> (not res!806120) (not e!689501))))

(assert (=> b!1214055 (= res!806120 (= (select (arr!37805 _keys!1208) i!673) k!934))))

(declare-fun b!1214056 () Bool)

(declare-fun res!806122 () Bool)

(assert (=> b!1214056 (=> (not res!806122) (not e!689501))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1214056 (= res!806122 (validKeyInArray!0 k!934))))

(declare-fun b!1214057 () Bool)

(declare-fun Unit!40196 () Unit!40193)

(assert (=> b!1214057 (= e!689497 Unit!40196)))

(declare-fun b!1214058 () Bool)

(assert (=> b!1214058 (= e!689503 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun bm!60548 () Bool)

(declare-fun call!60549 () ListLongMap!17981)

(assert (=> bm!60548 (= call!60549 call!60554)))

(declare-fun b!1214059 () Bool)

(declare-fun e!689500 () Unit!40193)

(declare-fun lt!552102 () Unit!40193)

(assert (=> b!1214059 (= e!689500 lt!552102)))

(assert (=> b!1214059 (= lt!552102 call!60555)))

(declare-fun call!60550 () Bool)

(assert (=> b!1214059 call!60550))

(declare-fun b!1214060 () Bool)

(declare-fun res!806124 () Bool)

(assert (=> b!1214060 (=> (not res!806124) (not e!689501))))

(assert (=> b!1214060 (= res!806124 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26817))))

(declare-fun b!1214061 () Bool)

(declare-fun c!119951 () Bool)

(assert (=> b!1214061 (= c!119951 (and (not lt!552116) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1214061 (= e!689492 e!689500)))

(declare-fun b!1214062 () Bool)

(assert (=> b!1214062 (= e!689501 e!689496)))

(declare-fun res!806119 () Bool)

(assert (=> b!1214062 (=> (not res!806119) (not e!689496))))

(assert (=> b!1214062 (= res!806119 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!552100 mask!1564))))

(assert (=> b!1214062 (= lt!552100 (array!78349 (store (arr!37805 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38342 _keys!1208)))))

(declare-fun b!1214063 () Bool)

(declare-fun e!689504 () Unit!40193)

(assert (=> b!1214063 (= e!689500 e!689504)))

(declare-fun c!119954 () Bool)

(assert (=> b!1214063 (= c!119954 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!552116))))

(declare-fun b!1214064 () Bool)

(assert (=> b!1214064 (= e!689494 (ite (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!552116) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1214065 () Bool)

(assert (=> b!1214065 (= e!689508 e!689499)))

(declare-fun res!806113 () Bool)

(assert (=> b!1214065 (=> res!806113 e!689499)))

(assert (=> b!1214065 (= res!806113 (not (= (select (arr!37805 _keys!1208) from!1455) k!934)))))

(assert (=> b!1214065 e!689502))

(declare-fun c!119952 () Bool)

(assert (=> b!1214065 (= c!119952 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!552104 () Unit!40193)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1102 (array!78348 array!78346 (_ BitVec 32) (_ BitVec 32) V!46185 V!46185 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!40193)

(assert (=> b!1214065 (= lt!552104 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1102 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1214066 () Bool)

(declare-fun res!806118 () Bool)

(assert (=> b!1214066 (=> (not res!806118) (not e!689501))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1214066 (= res!806118 (validMask!0 mask!1564))))

(declare-fun bm!60549 () Bool)

(assert (=> bm!60549 (= call!60550 call!60551)))

(declare-fun mapIsEmpty!48064 () Bool)

(declare-fun mapRes!48064 () Bool)

(assert (=> mapIsEmpty!48064 mapRes!48064))

(declare-fun b!1214067 () Bool)

(declare-fun e!689495 () Bool)

(declare-fun e!689506 () Bool)

(assert (=> b!1214067 (= e!689495 (and e!689506 mapRes!48064))))

(declare-fun condMapEmpty!48064 () Bool)

(declare-fun mapDefault!48064 () ValueCell!14687)

