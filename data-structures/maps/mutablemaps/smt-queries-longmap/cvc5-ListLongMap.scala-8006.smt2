; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98912 () Bool)

(assert start!98912)

(declare-fun b_free!24481 () Bool)

(declare-fun b_next!24481 () Bool)

(assert (=> start!98912 (= b_free!24481 (not b_next!24481))))

(declare-fun tp!86154 () Bool)

(declare-fun b_and!39825 () Bool)

(assert (=> start!98912 (= tp!86154 b_and!39825)))

(declare-datatypes ((array!74812 0))(
  ( (array!74813 (arr!36053 (Array (_ BitVec 32) (_ BitVec 64))) (size!36590 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74812)

(declare-fun b!1157075 () Bool)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun e!658064 () Bool)

(declare-fun arrayContainsKey!0 (array!74812 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1157075 (= e!658064 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1157076 () Bool)

(declare-fun call!55319 () Bool)

(assert (=> b!1157076 call!55319))

(declare-datatypes ((Unit!38003 0))(
  ( (Unit!38004) )
))
(declare-fun lt!519565 () Unit!38003)

(declare-fun call!55315 () Unit!38003)

(assert (=> b!1157076 (= lt!519565 call!55315)))

(declare-fun e!658057 () Unit!38003)

(assert (=> b!1157076 (= e!658057 lt!519565)))

(declare-datatypes ((V!43809 0))(
  ( (V!43810 (val!14562 Int)) )
))
(declare-fun zeroValue!944 () V!43809)

(declare-datatypes ((tuple2!18594 0))(
  ( (tuple2!18595 (_1!9307 (_ BitVec 64)) (_2!9307 V!43809)) )
))
(declare-datatypes ((List!25374 0))(
  ( (Nil!25371) (Cons!25370 (h!26579 tuple2!18594) (t!36854 List!25374)) )
))
(declare-datatypes ((ListLongMap!16575 0))(
  ( (ListLongMap!16576 (toList!8303 List!25374)) )
))
(declare-fun call!55320 () ListLongMap!16575)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((ValueCell!13796 0))(
  ( (ValueCellFull!13796 (v!17200 V!43809)) (EmptyCell!13796) )
))
(declare-datatypes ((array!74814 0))(
  ( (array!74815 (arr!36054 (Array (_ BitVec 32) ValueCell!13796)) (size!36591 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74814)

(declare-fun minValue!944 () V!43809)

(declare-fun bm!55310 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!4740 (array!74812 array!74814 (_ BitVec 32) (_ BitVec 32) V!43809 V!43809 (_ BitVec 32) Int) ListLongMap!16575)

(assert (=> bm!55310 (= call!55320 (getCurrentListMapNoExtraKeys!4740 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1157077 () Bool)

(declare-fun e!658054 () Bool)

(declare-fun e!658063 () Bool)

(assert (=> b!1157077 (= e!658054 e!658063)))

(declare-fun res!768539 () Bool)

(assert (=> b!1157077 (=> res!768539 e!658063)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1157077 (= res!768539 (not (= from!1455 i!673)))))

(declare-fun lt!519569 () ListLongMap!16575)

(declare-fun lt!519558 () array!74814)

(declare-fun lt!519555 () array!74812)

(assert (=> b!1157077 (= lt!519569 (getCurrentListMapNoExtraKeys!4740 lt!519555 lt!519558 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!519561 () V!43809)

(assert (=> b!1157077 (= lt!519558 (array!74815 (store (arr!36054 _values!996) i!673 (ValueCellFull!13796 lt!519561)) (size!36591 _values!996)))))

(declare-fun dynLambda!2751 (Int (_ BitVec 64)) V!43809)

(assert (=> b!1157077 (= lt!519561 (dynLambda!2751 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!519572 () ListLongMap!16575)

(assert (=> b!1157077 (= lt!519572 (getCurrentListMapNoExtraKeys!4740 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun mapNonEmpty!45341 () Bool)

(declare-fun mapRes!45341 () Bool)

(declare-fun tp!86155 () Bool)

(declare-fun e!658060 () Bool)

(assert (=> mapNonEmpty!45341 (= mapRes!45341 (and tp!86155 e!658060))))

(declare-fun mapKey!45341 () (_ BitVec 32))

(declare-fun mapRest!45341 () (Array (_ BitVec 32) ValueCell!13796))

(declare-fun mapValue!45341 () ValueCell!13796)

(assert (=> mapNonEmpty!45341 (= (arr!36054 _values!996) (store mapRest!45341 mapKey!45341 mapValue!45341))))

(declare-fun b!1157078 () Bool)

(declare-fun res!768540 () Bool)

(declare-fun e!658058 () Bool)

(assert (=> b!1157078 (=> (not res!768540) (not e!658058))))

(declare-datatypes ((List!25375 0))(
  ( (Nil!25372) (Cons!25371 (h!26580 (_ BitVec 64)) (t!36855 List!25375)) )
))
(declare-fun arrayNoDuplicates!0 (array!74812 (_ BitVec 32) List!25375) Bool)

(assert (=> b!1157078 (= res!768540 (arrayNoDuplicates!0 lt!519555 #b00000000000000000000000000000000 Nil!25372))))

(declare-fun b!1157079 () Bool)

(declare-fun e!658053 () Bool)

(assert (=> b!1157079 (= e!658053 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun e!658062 () Bool)

(declare-fun b!1157080 () Bool)

(declare-fun call!55318 () ListLongMap!16575)

(declare-fun -!1379 (ListLongMap!16575 (_ BitVec 64)) ListLongMap!16575)

(assert (=> b!1157080 (= e!658062 (= call!55318 (-!1379 call!55320 k!934)))))

(declare-fun c!115136 () Bool)

(declare-fun lt!519562 () ListLongMap!16575)

(declare-fun lt!519560 () ListLongMap!16575)

(declare-fun c!115137 () Bool)

(declare-fun call!55314 () ListLongMap!16575)

(declare-fun bm!55311 () Bool)

(declare-fun +!3633 (ListLongMap!16575 tuple2!18594) ListLongMap!16575)

(assert (=> bm!55311 (= call!55314 (+!3633 (ite c!115136 lt!519562 lt!519560) (ite c!115136 (tuple2!18595 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!115137 (tuple2!18595 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18595 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun bm!55312 () Bool)

(declare-fun call!55313 () Bool)

(declare-fun call!55317 () ListLongMap!16575)

(declare-fun contains!6789 (ListLongMap!16575 (_ BitVec 64)) Bool)

(assert (=> bm!55312 (= call!55313 (contains!6789 (ite c!115136 lt!519562 call!55317) k!934))))

(declare-fun b!1157081 () Bool)

(declare-fun res!768535 () Bool)

(declare-fun e!658067 () Bool)

(assert (=> b!1157081 (=> (not res!768535) (not e!658067))))

(assert (=> b!1157081 (= res!768535 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36590 _keys!1208))))))

(declare-fun b!1157082 () Bool)

(assert (=> b!1157082 (= e!658062 (= call!55318 call!55320))))

(declare-fun b!1157083 () Bool)

(declare-fun Unit!38005 () Unit!38003)

(assert (=> b!1157083 (= e!658057 Unit!38005)))

(declare-fun b!1157084 () Bool)

(declare-fun e!658061 () Unit!38003)

(declare-fun Unit!38006 () Unit!38003)

(assert (=> b!1157084 (= e!658061 Unit!38006)))

(declare-fun lt!519568 () Bool)

(declare-fun b!1157085 () Bool)

(assert (=> b!1157085 (= e!658053 (ite (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!519568) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1157086 () Bool)

(declare-fun res!768544 () Bool)

(assert (=> b!1157086 (=> (not res!768544) (not e!658067))))

(assert (=> b!1157086 (= res!768544 (and (= (size!36591 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36590 _keys!1208) (size!36591 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1157074 () Bool)

(declare-fun res!768547 () Bool)

(assert (=> b!1157074 (=> (not res!768547) (not e!658067))))

(assert (=> b!1157074 (= res!768547 (= (select (arr!36053 _keys!1208) i!673) k!934))))

(declare-fun res!768548 () Bool)

(assert (=> start!98912 (=> (not res!768548) (not e!658067))))

(assert (=> start!98912 (= res!768548 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36590 _keys!1208))))))

(assert (=> start!98912 e!658067))

(declare-fun tp_is_empty!29011 () Bool)

(assert (=> start!98912 tp_is_empty!29011))

(declare-fun array_inv!27462 (array!74812) Bool)

(assert (=> start!98912 (array_inv!27462 _keys!1208)))

(assert (=> start!98912 true))

(assert (=> start!98912 tp!86154))

(declare-fun e!658066 () Bool)

(declare-fun array_inv!27463 (array!74814) Bool)

(assert (=> start!98912 (and (array_inv!27463 _values!996) e!658066)))

(declare-fun bm!55313 () Bool)

(assert (=> bm!55313 (= call!55318 (getCurrentListMapNoExtraKeys!4740 lt!519555 lt!519558 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapIsEmpty!45341 () Bool)

(assert (=> mapIsEmpty!45341 mapRes!45341))

(declare-fun b!1157087 () Bool)

(declare-fun res!768541 () Bool)

(assert (=> b!1157087 (=> (not res!768541) (not e!658067))))

(assert (=> b!1157087 (= res!768541 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25372))))

(declare-fun b!1157088 () Bool)

(assert (=> b!1157088 (= c!115137 (and (not lt!519568) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun e!658056 () Unit!38003)

(declare-fun e!658065 () Unit!38003)

(assert (=> b!1157088 (= e!658056 e!658065)))

(declare-fun b!1157089 () Bool)

(assert (=> b!1157089 (contains!6789 call!55314 k!934)))

(declare-fun lt!519559 () Unit!38003)

(declare-fun addStillContains!929 (ListLongMap!16575 (_ BitVec 64) V!43809 (_ BitVec 64)) Unit!38003)

(assert (=> b!1157089 (= lt!519559 (addStillContains!929 lt!519562 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k!934))))

(assert (=> b!1157089 call!55313))

(assert (=> b!1157089 (= lt!519562 (+!3633 lt!519560 (tuple2!18595 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(declare-fun lt!519566 () Unit!38003)

(declare-fun call!55316 () Unit!38003)

(assert (=> b!1157089 (= lt!519566 call!55316)))

(assert (=> b!1157089 (= e!658056 lt!519559)))

(declare-fun b!1157090 () Bool)

(declare-fun Unit!38007 () Unit!38003)

(assert (=> b!1157090 (= e!658061 Unit!38007)))

(assert (=> b!1157090 (= lt!519568 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1157090 (= c!115136 (and (not lt!519568) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!519556 () Unit!38003)

(assert (=> b!1157090 (= lt!519556 e!658056)))

(declare-fun lt!519564 () Unit!38003)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!506 (array!74812 array!74814 (_ BitVec 32) (_ BitVec 32) V!43809 V!43809 (_ BitVec 64) (_ BitVec 32) Int) Unit!38003)

(assert (=> b!1157090 (= lt!519564 (lemmaListMapContainsThenArrayContainsFrom!506 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!115138 () Bool)

(assert (=> b!1157090 (= c!115138 (and (not (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!768534 () Bool)

(assert (=> b!1157090 (= res!768534 e!658053)))

(assert (=> b!1157090 (=> (not res!768534) (not e!658064))))

(assert (=> b!1157090 e!658064))

(declare-fun lt!519557 () Unit!38003)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74812 (_ BitVec 32) (_ BitVec 32)) Unit!38003)

(assert (=> b!1157090 (= lt!519557 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1157090 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25372)))

(declare-fun lt!519553 () Unit!38003)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74812 (_ BitVec 64) (_ BitVec 32) List!25375) Unit!38003)

(assert (=> b!1157090 (= lt!519553 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!25372))))

(assert (=> b!1157090 false))

(declare-fun bm!55314 () Bool)

(assert (=> bm!55314 (= call!55315 call!55316)))

(declare-fun b!1157091 () Bool)

(declare-fun lt!519563 () Unit!38003)

(assert (=> b!1157091 (= e!658065 lt!519563)))

(assert (=> b!1157091 (= lt!519563 call!55315)))

(assert (=> b!1157091 call!55319))

(declare-fun b!1157092 () Bool)

(assert (=> b!1157092 (= e!658067 e!658058)))

(declare-fun res!768545 () Bool)

(assert (=> b!1157092 (=> (not res!768545) (not e!658058))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74812 (_ BitVec 32)) Bool)

(assert (=> b!1157092 (= res!768545 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!519555 mask!1564))))

(assert (=> b!1157092 (= lt!519555 (array!74813 (store (arr!36053 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36590 _keys!1208)))))

(declare-fun bm!55315 () Bool)

(assert (=> bm!55315 (= call!55317 call!55314)))

(declare-fun b!1157093 () Bool)

(declare-fun res!768546 () Bool)

(assert (=> b!1157093 (=> (not res!768546) (not e!658067))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1157093 (= res!768546 (validKeyInArray!0 k!934))))

(declare-fun b!1157094 () Bool)

(declare-fun e!658068 () Bool)

(assert (=> b!1157094 (= e!658063 e!658068)))

(declare-fun res!768543 () Bool)

(assert (=> b!1157094 (=> res!768543 e!658068)))

(assert (=> b!1157094 (= res!768543 (not (= (select (arr!36053 _keys!1208) from!1455) k!934)))))

(assert (=> b!1157094 e!658062))

(declare-fun c!115139 () Bool)

(assert (=> b!1157094 (= c!115139 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!519554 () Unit!38003)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!606 (array!74812 array!74814 (_ BitVec 32) (_ BitVec 32) V!43809 V!43809 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38003)

(assert (=> b!1157094 (= lt!519554 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!606 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1157095 () Bool)

(assert (=> b!1157095 (= e!658065 e!658057)))

(declare-fun c!115140 () Bool)

(assert (=> b!1157095 (= c!115140 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!519568))))

(declare-fun bm!55316 () Bool)

(assert (=> bm!55316 (= call!55319 call!55313)))

(declare-fun b!1157096 () Bool)

(assert (=> b!1157096 (= e!658058 (not e!658054))))

(declare-fun res!768537 () Bool)

(assert (=> b!1157096 (=> res!768537 e!658054)))

(assert (=> b!1157096 (= res!768537 (bvsgt from!1455 i!673))))

(assert (=> b!1157096 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!519573 () Unit!38003)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74812 (_ BitVec 64) (_ BitVec 32)) Unit!38003)

(assert (=> b!1157096 (= lt!519573 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun bm!55317 () Bool)

(assert (=> bm!55317 (= call!55316 (addStillContains!929 lt!519560 (ite (or c!115136 c!115137) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!115136 c!115137) zeroValue!944 minValue!944) k!934))))

(declare-fun b!1157097 () Bool)

(declare-fun res!768538 () Bool)

(assert (=> b!1157097 (=> (not res!768538) (not e!658067))))

(assert (=> b!1157097 (= res!768538 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1157098 () Bool)

(declare-fun e!658055 () Bool)

(assert (=> b!1157098 (= e!658066 (and e!658055 mapRes!45341))))

(declare-fun condMapEmpty!45341 () Bool)

(declare-fun mapDefault!45341 () ValueCell!13796)

