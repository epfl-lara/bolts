; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98716 () Bool)

(assert start!98716)

(declare-fun b_free!24285 () Bool)

(declare-fun b_next!24285 () Bool)

(assert (=> start!98716 (= b_free!24285 (not b_next!24285))))

(declare-fun tp!85567 () Bool)

(declare-fun b_and!39433 () Bool)

(assert (=> start!98716 (= tp!85567 b_and!39433)))

(declare-fun b!1148058 () Bool)

(declare-datatypes ((Unit!37641 0))(
  ( (Unit!37642) )
))
(declare-fun e!653069 () Unit!37641)

(declare-fun lt!513116 () Unit!37641)

(assert (=> b!1148058 (= e!653069 lt!513116)))

(declare-fun call!52968 () Unit!37641)

(assert (=> b!1148058 (= lt!513116 call!52968)))

(declare-fun call!52964 () Bool)

(assert (=> b!1148058 call!52964))

(declare-fun mapNonEmpty!45047 () Bool)

(declare-fun mapRes!45047 () Bool)

(declare-fun tp!85566 () Bool)

(declare-fun e!653065 () Bool)

(assert (=> mapNonEmpty!45047 (= mapRes!45047 (and tp!85566 e!653065))))

(declare-datatypes ((V!43547 0))(
  ( (V!43548 (val!14464 Int)) )
))
(declare-datatypes ((ValueCell!13698 0))(
  ( (ValueCellFull!13698 (v!17102 V!43547)) (EmptyCell!13698) )
))
(declare-fun mapRest!45047 () (Array (_ BitVec 32) ValueCell!13698))

(declare-fun mapKey!45047 () (_ BitVec 32))

(declare-datatypes ((array!74434 0))(
  ( (array!74435 (arr!35864 (Array (_ BitVec 32) ValueCell!13698)) (size!36401 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74434)

(declare-fun mapValue!45047 () ValueCell!13698)

(assert (=> mapNonEmpty!45047 (= (arr!35864 _values!996) (store mapRest!45047 mapKey!45047 mapValue!45047))))

(declare-fun b!1148059 () Bool)

(declare-fun e!653066 () Bool)

(declare-fun e!653057 () Bool)

(assert (=> b!1148059 (= e!653066 e!653057)))

(declare-fun res!764128 () Bool)

(assert (=> b!1148059 (=> (not res!764128) (not e!653057))))

(declare-datatypes ((array!74436 0))(
  ( (array!74437 (arr!35865 (Array (_ BitVec 32) (_ BitVec 64))) (size!36402 (_ BitVec 32))) )
))
(declare-fun lt!513121 () array!74436)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74436 (_ BitVec 32)) Bool)

(assert (=> b!1148059 (= res!764128 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!513121 mask!1564))))

(declare-fun _keys!1208 () array!74436)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1148059 (= lt!513121 (array!74437 (store (arr!35865 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36402 _keys!1208)))))

(declare-fun e!653056 () Bool)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun b!1148060 () Bool)

(declare-fun arrayContainsKey!0 (array!74436 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1148060 (= e!653056 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1148061 () Bool)

(declare-fun e!653058 () Bool)

(declare-fun e!653068 () Bool)

(assert (=> b!1148061 (= e!653058 (and e!653068 mapRes!45047))))

(declare-fun condMapEmpty!45047 () Bool)

(declare-fun mapDefault!45047 () ValueCell!13698)

(assert (=> b!1148061 (= condMapEmpty!45047 (= (arr!35864 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13698)) mapDefault!45047)))))

(declare-fun b!1148062 () Bool)

(declare-fun e!653070 () Bool)

(assert (=> b!1148062 (= e!653070 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1148063 () Bool)

(declare-fun tp_is_empty!28815 () Bool)

(assert (=> b!1148063 (= e!653068 tp_is_empty!28815)))

(declare-fun b!1148064 () Bool)

(assert (=> b!1148064 (= e!653065 tp_is_empty!28815)))

(declare-fun bm!52958 () Bool)

(declare-fun call!52963 () Bool)

(assert (=> bm!52958 (= call!52964 call!52963)))

(declare-fun b!1148065 () Bool)

(declare-fun res!764134 () Bool)

(assert (=> b!1148065 (=> (not res!764134) (not e!653066))))

(assert (=> b!1148065 (= res!764134 (= (select (arr!35865 _keys!1208) i!673) k0!934))))

(declare-fun e!653064 () Bool)

(declare-datatypes ((tuple2!18420 0))(
  ( (tuple2!18421 (_1!9220 (_ BitVec 64)) (_2!9220 V!43547)) )
))
(declare-datatypes ((List!25213 0))(
  ( (Nil!25210) (Cons!25209 (h!26418 tuple2!18420) (t!36497 List!25213)) )
))
(declare-datatypes ((ListLongMap!16401 0))(
  ( (ListLongMap!16402 (toList!8216 List!25213)) )
))
(declare-fun lt!513124 () ListLongMap!16401)

(declare-fun lt!513125 () ListLongMap!16401)

(declare-fun b!1148066 () Bool)

(declare-fun -!1305 (ListLongMap!16401 (_ BitVec 64)) ListLongMap!16401)

(assert (=> b!1148066 (= e!653064 (= (-!1305 lt!513124 k0!934) lt!513125))))

(declare-fun call!52961 () ListLongMap!16401)

(declare-fun e!653054 () Bool)

(declare-fun b!1148067 () Bool)

(declare-fun call!52962 () ListLongMap!16401)

(assert (=> b!1148067 (= e!653054 (= call!52962 (-!1305 call!52961 k0!934)))))

(declare-fun b!1148068 () Bool)

(declare-fun res!764137 () Bool)

(assert (=> b!1148068 (=> (not res!764137) (not e!653066))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1148068 (= res!764137 (validMask!0 mask!1564))))

(declare-fun c!113376 () Bool)

(declare-fun bm!52959 () Bool)

(declare-fun minValue!944 () V!43547)

(declare-fun call!52965 () ListLongMap!16401)

(declare-fun zeroValue!944 () V!43547)

(declare-fun c!113374 () Bool)

(declare-fun +!3555 (ListLongMap!16401 tuple2!18420) ListLongMap!16401)

(assert (=> bm!52959 (= call!52965 (+!3555 lt!513125 (ite (or c!113374 c!113376) (tuple2!18421 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18421 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun b!1148070 () Bool)

(declare-fun res!764125 () Bool)

(assert (=> b!1148070 (=> (not res!764125) (not e!653066))))

(declare-datatypes ((List!25214 0))(
  ( (Nil!25211) (Cons!25210 (h!26419 (_ BitVec 64)) (t!36498 List!25214)) )
))
(declare-fun arrayNoDuplicates!0 (array!74436 (_ BitVec 32) List!25214) Bool)

(assert (=> b!1148070 (= res!764125 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25211))))

(declare-fun mapIsEmpty!45047 () Bool)

(assert (=> mapIsEmpty!45047 mapRes!45047))

(declare-fun b!1148071 () Bool)

(declare-fun e!653062 () Bool)

(declare-fun e!653055 () Bool)

(assert (=> b!1148071 (= e!653062 e!653055)))

(declare-fun res!764129 () Bool)

(assert (=> b!1148071 (=> res!764129 e!653055)))

(assert (=> b!1148071 (= res!764129 (not (= from!1455 i!673)))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!513134 () ListLongMap!16401)

(declare-fun lt!513133 () array!74434)

(declare-fun getCurrentListMapNoExtraKeys!4657 (array!74436 array!74434 (_ BitVec 32) (_ BitVec 32) V!43547 V!43547 (_ BitVec 32) Int) ListLongMap!16401)

(assert (=> b!1148071 (= lt!513134 (getCurrentListMapNoExtraKeys!4657 lt!513121 lt!513133 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!513130 () V!43547)

(assert (=> b!1148071 (= lt!513133 (array!74435 (store (arr!35864 _values!996) i!673 (ValueCellFull!13698 lt!513130)) (size!36401 _values!996)))))

(declare-fun dynLambda!2689 (Int (_ BitVec 64)) V!43547)

(assert (=> b!1148071 (= lt!513130 (dynLambda!2689 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1148071 (= lt!513124 (getCurrentListMapNoExtraKeys!4657 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1148072 () Bool)

(declare-fun res!764133 () Bool)

(assert (=> b!1148072 (=> (not res!764133) (not e!653066))))

(assert (=> b!1148072 (= res!764133 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36402 _keys!1208))))))

(declare-fun b!1148073 () Bool)

(declare-fun e!653063 () Bool)

(assert (=> b!1148073 (= e!653055 e!653063)))

(declare-fun res!764132 () Bool)

(assert (=> b!1148073 (=> res!764132 e!653063)))

(assert (=> b!1148073 (= res!764132 (not (= (select (arr!35865 _keys!1208) from!1455) k0!934)))))

(assert (=> b!1148073 e!653054))

(declare-fun c!113372 () Bool)

(assert (=> b!1148073 (= c!113372 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!513118 () Unit!37641)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!550 (array!74436 array!74434 (_ BitVec 32) (_ BitVec 32) V!43547 V!43547 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37641)

(assert (=> b!1148073 (= lt!513118 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!550 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1148074 () Bool)

(declare-fun lt!513131 () ListLongMap!16401)

(declare-fun contains!6712 (ListLongMap!16401 (_ BitVec 64)) Bool)

(assert (=> b!1148074 (contains!6712 (+!3555 lt!513131 (tuple2!18421 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k0!934)))

(declare-fun lt!513127 () Unit!37641)

(declare-fun addStillContains!854 (ListLongMap!16401 (_ BitVec 64) V!43547 (_ BitVec 64)) Unit!37641)

(assert (=> b!1148074 (= lt!513127 (addStillContains!854 lt!513131 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k0!934))))

(assert (=> b!1148074 call!52963))

(assert (=> b!1148074 (= lt!513131 call!52965)))

(declare-fun lt!513122 () Unit!37641)

(declare-fun call!52967 () Unit!37641)

(assert (=> b!1148074 (= lt!513122 call!52967)))

(declare-fun e!653061 () Unit!37641)

(assert (=> b!1148074 (= e!653061 lt!513127)))

(declare-fun b!1148075 () Bool)

(declare-fun e!653059 () Unit!37641)

(declare-fun Unit!37643 () Unit!37641)

(assert (=> b!1148075 (= e!653059 Unit!37643)))

(declare-fun lt!513135 () Bool)

(assert (=> b!1148075 (= lt!513135 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1148075 (= c!113374 (and (not lt!513135) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!513119 () Unit!37641)

(assert (=> b!1148075 (= lt!513119 e!653061)))

(declare-fun lt!513128 () Unit!37641)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!441 (array!74436 array!74434 (_ BitVec 32) (_ BitVec 32) V!43547 V!43547 (_ BitVec 64) (_ BitVec 32) Int) Unit!37641)

(assert (=> b!1148075 (= lt!513128 (lemmaListMapContainsThenArrayContainsFrom!441 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!113375 () Bool)

(assert (=> b!1148075 (= c!113375 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!764131 () Bool)

(assert (=> b!1148075 (= res!764131 e!653056)))

(assert (=> b!1148075 (=> (not res!764131) (not e!653070))))

(assert (=> b!1148075 e!653070))

(declare-fun lt!513123 () Unit!37641)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74436 (_ BitVec 32) (_ BitVec 32)) Unit!37641)

(assert (=> b!1148075 (= lt!513123 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1148075 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25211)))

(declare-fun lt!513126 () Unit!37641)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74436 (_ BitVec 64) (_ BitVec 32) List!25214) Unit!37641)

(assert (=> b!1148075 (= lt!513126 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!25211))))

(assert (=> b!1148075 false))

(declare-fun bm!52960 () Bool)

(assert (=> bm!52960 (= call!52961 (getCurrentListMapNoExtraKeys!4657 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1148076 () Bool)

(assert (=> b!1148076 (= e!653063 true)))

(assert (=> b!1148076 e!653064))

(declare-fun res!764138 () Bool)

(assert (=> b!1148076 (=> (not res!764138) (not e!653064))))

(declare-fun lt!513117 () V!43547)

(assert (=> b!1148076 (= res!764138 (= (-!1305 (+!3555 lt!513125 (tuple2!18421 (select (arr!35865 _keys!1208) from!1455) lt!513117)) (select (arr!35865 _keys!1208) from!1455)) lt!513125))))

(declare-fun lt!513115 () Unit!37641)

(declare-fun addThenRemoveForNewKeyIsSame!154 (ListLongMap!16401 (_ BitVec 64) V!43547) Unit!37641)

(assert (=> b!1148076 (= lt!513115 (addThenRemoveForNewKeyIsSame!154 lt!513125 (select (arr!35865 _keys!1208) from!1455) lt!513117))))

(declare-fun get!18270 (ValueCell!13698 V!43547) V!43547)

(assert (=> b!1148076 (= lt!513117 (get!18270 (select (arr!35864 _values!996) from!1455) lt!513130))))

(declare-fun lt!513132 () Unit!37641)

(assert (=> b!1148076 (= lt!513132 e!653059)))

(declare-fun c!113371 () Bool)

(assert (=> b!1148076 (= c!113371 (contains!6712 lt!513125 k0!934))))

(assert (=> b!1148076 (= lt!513125 (getCurrentListMapNoExtraKeys!4657 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1148077 () Bool)

(assert (=> b!1148077 (= e!653056 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!513135) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun bm!52961 () Bool)

(assert (=> bm!52961 (= call!52962 (getCurrentListMapNoExtraKeys!4657 lt!513121 lt!513133 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1148078 () Bool)

(declare-fun e!653067 () Unit!37641)

(declare-fun Unit!37644 () Unit!37641)

(assert (=> b!1148078 (= e!653067 Unit!37644)))

(declare-fun b!1148079 () Bool)

(declare-fun res!764136 () Bool)

(assert (=> b!1148079 (=> (not res!764136) (not e!653057))))

(assert (=> b!1148079 (= res!764136 (arrayNoDuplicates!0 lt!513121 #b00000000000000000000000000000000 Nil!25211))))

(declare-fun b!1148080 () Bool)

(declare-fun res!764126 () Bool)

(assert (=> b!1148080 (=> (not res!764126) (not e!653066))))

(assert (=> b!1148080 (= res!764126 (and (= (size!36401 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36402 _keys!1208) (size!36401 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1148081 () Bool)

(declare-fun res!764124 () Bool)

(assert (=> b!1148081 (=> (not res!764124) (not e!653066))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1148081 (= res!764124 (validKeyInArray!0 k0!934))))

(declare-fun b!1148082 () Bool)

(assert (=> b!1148082 (= e!653069 e!653067)))

(declare-fun c!113373 () Bool)

(assert (=> b!1148082 (= c!113373 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!513135))))

(declare-fun b!1148083 () Bool)

(declare-fun Unit!37645 () Unit!37641)

(assert (=> b!1148083 (= e!653059 Unit!37645)))

(declare-fun b!1148084 () Bool)

(declare-fun res!764135 () Bool)

(assert (=> b!1148084 (=> (not res!764135) (not e!653066))))

(assert (=> b!1148084 (= res!764135 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun bm!52962 () Bool)

(declare-fun call!52966 () ListLongMap!16401)

(assert (=> bm!52962 (= call!52966 call!52965)))

(declare-fun b!1148085 () Bool)

(assert (=> b!1148085 (= c!113376 (and (not lt!513135) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1148085 (= e!653061 e!653069)))

(declare-fun bm!52963 () Bool)

(assert (=> bm!52963 (= call!52968 call!52967)))

(declare-fun bm!52964 () Bool)

(assert (=> bm!52964 (= call!52963 (contains!6712 (ite c!113374 lt!513131 call!52966) k0!934))))

(declare-fun b!1148086 () Bool)

(assert (=> b!1148086 call!52964))

(declare-fun lt!513120 () Unit!37641)

(assert (=> b!1148086 (= lt!513120 call!52968)))

(assert (=> b!1148086 (= e!653067 lt!513120)))

(declare-fun bm!52965 () Bool)

(assert (=> bm!52965 (= call!52967 (addStillContains!854 lt!513125 (ite (or c!113374 c!113376) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!113374 c!113376) zeroValue!944 minValue!944) k0!934))))

(declare-fun b!1148087 () Bool)

(assert (=> b!1148087 (= e!653054 (= call!52962 call!52961))))

(declare-fun b!1148069 () Bool)

(assert (=> b!1148069 (= e!653057 (not e!653062))))

(declare-fun res!764127 () Bool)

(assert (=> b!1148069 (=> res!764127 e!653062)))

(assert (=> b!1148069 (= res!764127 (bvsgt from!1455 i!673))))

(assert (=> b!1148069 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!513129 () Unit!37641)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74436 (_ BitVec 64) (_ BitVec 32)) Unit!37641)

(assert (=> b!1148069 (= lt!513129 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun res!764130 () Bool)

(assert (=> start!98716 (=> (not res!764130) (not e!653066))))

(assert (=> start!98716 (= res!764130 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36402 _keys!1208))))))

(assert (=> start!98716 e!653066))

(assert (=> start!98716 tp_is_empty!28815))

(declare-fun array_inv!27348 (array!74436) Bool)

(assert (=> start!98716 (array_inv!27348 _keys!1208)))

(assert (=> start!98716 true))

(assert (=> start!98716 tp!85567))

(declare-fun array_inv!27349 (array!74434) Bool)

(assert (=> start!98716 (and (array_inv!27349 _values!996) e!653058)))

(assert (= (and start!98716 res!764130) b!1148068))

(assert (= (and b!1148068 res!764137) b!1148080))

(assert (= (and b!1148080 res!764126) b!1148084))

(assert (= (and b!1148084 res!764135) b!1148070))

(assert (= (and b!1148070 res!764125) b!1148072))

(assert (= (and b!1148072 res!764133) b!1148081))

(assert (= (and b!1148081 res!764124) b!1148065))

(assert (= (and b!1148065 res!764134) b!1148059))

(assert (= (and b!1148059 res!764128) b!1148079))

(assert (= (and b!1148079 res!764136) b!1148069))

(assert (= (and b!1148069 (not res!764127)) b!1148071))

(assert (= (and b!1148071 (not res!764129)) b!1148073))

(assert (= (and b!1148073 c!113372) b!1148067))

(assert (= (and b!1148073 (not c!113372)) b!1148087))

(assert (= (or b!1148067 b!1148087) bm!52961))

(assert (= (or b!1148067 b!1148087) bm!52960))

(assert (= (and b!1148073 (not res!764132)) b!1148076))

(assert (= (and b!1148076 c!113371) b!1148075))

(assert (= (and b!1148076 (not c!113371)) b!1148083))

(assert (= (and b!1148075 c!113374) b!1148074))

(assert (= (and b!1148075 (not c!113374)) b!1148085))

(assert (= (and b!1148085 c!113376) b!1148058))

(assert (= (and b!1148085 (not c!113376)) b!1148082))

(assert (= (and b!1148082 c!113373) b!1148086))

(assert (= (and b!1148082 (not c!113373)) b!1148078))

(assert (= (or b!1148058 b!1148086) bm!52963))

(assert (= (or b!1148058 b!1148086) bm!52962))

(assert (= (or b!1148058 b!1148086) bm!52958))

(assert (= (or b!1148074 bm!52958) bm!52964))

(assert (= (or b!1148074 bm!52963) bm!52965))

(assert (= (or b!1148074 bm!52962) bm!52959))

(assert (= (and b!1148075 c!113375) b!1148060))

(assert (= (and b!1148075 (not c!113375)) b!1148077))

(assert (= (and b!1148075 res!764131) b!1148062))

(assert (= (and b!1148076 res!764138) b!1148066))

(assert (= (and b!1148061 condMapEmpty!45047) mapIsEmpty!45047))

(assert (= (and b!1148061 (not condMapEmpty!45047)) mapNonEmpty!45047))

(get-info :version)

(assert (= (and mapNonEmpty!45047 ((_ is ValueCellFull!13698) mapValue!45047)) b!1148064))

(assert (= (and b!1148061 ((_ is ValueCellFull!13698) mapDefault!45047)) b!1148063))

(assert (= start!98716 b!1148061))

(declare-fun b_lambda!19409 () Bool)

(assert (=> (not b_lambda!19409) (not b!1148071)))

(declare-fun t!36496 () Bool)

(declare-fun tb!9105 () Bool)

(assert (=> (and start!98716 (= defaultEntry!1004 defaultEntry!1004) t!36496) tb!9105))

(declare-fun result!18767 () Bool)

(assert (=> tb!9105 (= result!18767 tp_is_empty!28815)))

(assert (=> b!1148071 t!36496))

(declare-fun b_and!39435 () Bool)

(assert (= b_and!39433 (and (=> t!36496 result!18767) b_and!39435)))

(declare-fun m!1058653 () Bool)

(assert (=> bm!52965 m!1058653))

(declare-fun m!1058655 () Bool)

(assert (=> b!1148074 m!1058655))

(assert (=> b!1148074 m!1058655))

(declare-fun m!1058657 () Bool)

(assert (=> b!1148074 m!1058657))

(declare-fun m!1058659 () Bool)

(assert (=> b!1148074 m!1058659))

(declare-fun m!1058661 () Bool)

(assert (=> b!1148059 m!1058661))

(declare-fun m!1058663 () Bool)

(assert (=> b!1148059 m!1058663))

(declare-fun m!1058665 () Bool)

(assert (=> start!98716 m!1058665))

(declare-fun m!1058667 () Bool)

(assert (=> start!98716 m!1058667))

(declare-fun m!1058669 () Bool)

(assert (=> bm!52959 m!1058669))

(declare-fun m!1058671 () Bool)

(assert (=> b!1148067 m!1058671))

(declare-fun m!1058673 () Bool)

(assert (=> b!1148076 m!1058673))

(declare-fun m!1058675 () Bool)

(assert (=> b!1148076 m!1058675))

(declare-fun m!1058677 () Bool)

(assert (=> b!1148076 m!1058677))

(declare-fun m!1058679 () Bool)

(assert (=> b!1148076 m!1058679))

(declare-fun m!1058681 () Bool)

(assert (=> b!1148076 m!1058681))

(assert (=> b!1148076 m!1058673))

(declare-fun m!1058683 () Bool)

(assert (=> b!1148076 m!1058683))

(declare-fun m!1058685 () Bool)

(assert (=> b!1148076 m!1058685))

(assert (=> b!1148076 m!1058679))

(declare-fun m!1058687 () Bool)

(assert (=> b!1148076 m!1058687))

(assert (=> b!1148076 m!1058685))

(assert (=> b!1148076 m!1058679))

(assert (=> bm!52960 m!1058677))

(declare-fun m!1058689 () Bool)

(assert (=> b!1148081 m!1058689))

(declare-fun m!1058691 () Bool)

(assert (=> b!1148084 m!1058691))

(declare-fun m!1058693 () Bool)

(assert (=> b!1148071 m!1058693))

(declare-fun m!1058695 () Bool)

(assert (=> b!1148071 m!1058695))

(declare-fun m!1058697 () Bool)

(assert (=> b!1148071 m!1058697))

(declare-fun m!1058699 () Bool)

(assert (=> b!1148071 m!1058699))

(declare-fun m!1058701 () Bool)

(assert (=> b!1148060 m!1058701))

(declare-fun m!1058703 () Bool)

(assert (=> b!1148069 m!1058703))

(declare-fun m!1058705 () Bool)

(assert (=> b!1148069 m!1058705))

(assert (=> b!1148073 m!1058679))

(declare-fun m!1058707 () Bool)

(assert (=> b!1148073 m!1058707))

(declare-fun m!1058709 () Bool)

(assert (=> b!1148066 m!1058709))

(declare-fun m!1058711 () Bool)

(assert (=> mapNonEmpty!45047 m!1058711))

(declare-fun m!1058713 () Bool)

(assert (=> b!1148065 m!1058713))

(declare-fun m!1058715 () Bool)

(assert (=> b!1148079 m!1058715))

(declare-fun m!1058717 () Bool)

(assert (=> b!1148068 m!1058717))

(declare-fun m!1058719 () Bool)

(assert (=> bm!52961 m!1058719))

(declare-fun m!1058721 () Bool)

(assert (=> bm!52964 m!1058721))

(declare-fun m!1058723 () Bool)

(assert (=> b!1148075 m!1058723))

(declare-fun m!1058725 () Bool)

(assert (=> b!1148075 m!1058725))

(declare-fun m!1058727 () Bool)

(assert (=> b!1148075 m!1058727))

(declare-fun m!1058729 () Bool)

(assert (=> b!1148075 m!1058729))

(declare-fun m!1058731 () Bool)

(assert (=> b!1148070 m!1058731))

(assert (=> b!1148062 m!1058701))

(check-sat b_and!39435 (not b!1148059) (not b!1148076) (not b!1148073) (not bm!52959) (not b_lambda!19409) (not b!1148068) (not b!1148062) (not bm!52965) (not b_next!24285) (not b!1148074) (not b!1148081) (not b!1148071) (not b!1148070) (not b!1148075) (not b!1148069) (not bm!52961) (not bm!52960) (not b!1148079) (not mapNonEmpty!45047) (not start!98716) (not bm!52964) (not b!1148067) (not b!1148084) (not b!1148060) (not b!1148066) tp_is_empty!28815)
(check-sat b_and!39435 (not b_next!24285))
