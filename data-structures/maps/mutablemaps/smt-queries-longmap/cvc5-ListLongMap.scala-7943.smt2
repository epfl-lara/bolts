; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98534 () Bool)

(assert start!98534)

(declare-fun b_free!24103 () Bool)

(declare-fun b_next!24103 () Bool)

(assert (=> start!98534 (= b_free!24103 (not b_next!24103))))

(declare-fun tp!85020 () Bool)

(declare-fun b_and!39069 () Bool)

(assert (=> start!98534 (= tp!85020 b_and!39069)))

(declare-fun b!1139828 () Bool)

(declare-fun res!760178 () Bool)

(declare-fun e!648557 () Bool)

(assert (=> b!1139828 (=> (not res!760178) (not e!648557))))

(declare-datatypes ((array!74084 0))(
  ( (array!74085 (arr!35689 (Array (_ BitVec 32) (_ BitVec 64))) (size!36226 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74084)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74084 (_ BitVec 32)) Bool)

(assert (=> b!1139828 (= res!760178 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun bm!50774 () Bool)

(declare-datatypes ((Unit!37308 0))(
  ( (Unit!37309) )
))
(declare-fun call!50784 () Unit!37308)

(declare-fun call!50782 () Unit!37308)

(assert (=> bm!50774 (= call!50784 call!50782)))

(declare-fun b!1139829 () Bool)

(declare-fun res!760177 () Bool)

(declare-fun e!648555 () Bool)

(assert (=> b!1139829 (=> (not res!760177) (not e!648555))))

(declare-fun lt!507394 () array!74084)

(declare-datatypes ((List!25063 0))(
  ( (Nil!25060) (Cons!25059 (h!26268 (_ BitVec 64)) (t!36165 List!25063)) )
))
(declare-fun arrayNoDuplicates!0 (array!74084 (_ BitVec 32) List!25063) Bool)

(assert (=> b!1139829 (= res!760177 (arrayNoDuplicates!0 lt!507394 #b00000000000000000000000000000000 Nil!25060))))

(declare-fun c!111737 () Bool)

(declare-datatypes ((V!43305 0))(
  ( (V!43306 (val!14373 Int)) )
))
(declare-datatypes ((tuple2!18260 0))(
  ( (tuple2!18261 (_1!9140 (_ BitVec 64)) (_2!9140 V!43305)) )
))
(declare-datatypes ((List!25064 0))(
  ( (Nil!25061) (Cons!25060 (h!26269 tuple2!18260) (t!36166 List!25064)) )
))
(declare-datatypes ((ListLongMap!16241 0))(
  ( (ListLongMap!16242 (toList!8136 List!25064)) )
))
(declare-fun lt!507392 () ListLongMap!16241)

(declare-fun c!111736 () Bool)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun minValue!944 () V!43305)

(declare-fun zeroValue!944 () V!43305)

(declare-fun bm!50775 () Bool)

(declare-fun addStillContains!785 (ListLongMap!16241 (_ BitVec 64) V!43305 (_ BitVec 64)) Unit!37308)

(assert (=> bm!50775 (= call!50782 (addStillContains!785 lt!507392 (ite (or c!111736 c!111737) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!111736 c!111737) zeroValue!944 minValue!944) k!934))))

(declare-fun b!1139830 () Bool)

(declare-fun e!648563 () Bool)

(assert (=> b!1139830 (= e!648563 true)))

(declare-fun lt!507382 () V!43305)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun -!1236 (ListLongMap!16241 (_ BitVec 64)) ListLongMap!16241)

(declare-fun +!3484 (ListLongMap!16241 tuple2!18260) ListLongMap!16241)

(assert (=> b!1139830 (= (-!1236 (+!3484 lt!507392 (tuple2!18261 (select (arr!35689 _keys!1208) from!1455) lt!507382)) (select (arr!35689 _keys!1208) from!1455)) lt!507392)))

(declare-fun lt!507402 () Unit!37308)

(declare-fun addThenRemoveForNewKeyIsSame!92 (ListLongMap!16241 (_ BitVec 64) V!43305) Unit!37308)

(assert (=> b!1139830 (= lt!507402 (addThenRemoveForNewKeyIsSame!92 lt!507392 (select (arr!35689 _keys!1208) from!1455) lt!507382))))

(declare-fun lt!507400 () V!43305)

(declare-datatypes ((ValueCell!13607 0))(
  ( (ValueCellFull!13607 (v!17011 V!43305)) (EmptyCell!13607) )
))
(declare-datatypes ((array!74086 0))(
  ( (array!74087 (arr!35690 (Array (_ BitVec 32) ValueCell!13607)) (size!36227 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74086)

(declare-fun get!18148 (ValueCell!13607 V!43305) V!43305)

(assert (=> b!1139830 (= lt!507382 (get!18148 (select (arr!35690 _values!996) from!1455) lt!507400))))

(declare-fun lt!507389 () Unit!37308)

(declare-fun e!648566 () Unit!37308)

(assert (=> b!1139830 (= lt!507389 e!648566)))

(declare-fun c!111738 () Bool)

(declare-fun contains!6644 (ListLongMap!16241 (_ BitVec 64)) Bool)

(assert (=> b!1139830 (= c!111738 (contains!6644 lt!507392 k!934))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun getCurrentListMapNoExtraKeys!4582 (array!74084 array!74086 (_ BitVec 32) (_ BitVec 32) V!43305 V!43305 (_ BitVec 32) Int) ListLongMap!16241)

(assert (=> b!1139830 (= lt!507392 (getCurrentListMapNoExtraKeys!4582 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!50776 () Bool)

(declare-fun call!50781 () ListLongMap!16241)

(declare-fun call!50780 () ListLongMap!16241)

(assert (=> bm!50776 (= call!50781 call!50780)))

(declare-fun b!1139831 () Bool)

(declare-fun e!648561 () Unit!37308)

(declare-fun e!648559 () Unit!37308)

(assert (=> b!1139831 (= e!648561 e!648559)))

(declare-fun c!111734 () Bool)

(declare-fun lt!507390 () Bool)

(assert (=> b!1139831 (= c!111734 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!507390))))

(declare-fun b!1139832 () Bool)

(declare-fun e!648558 () Bool)

(declare-fun arrayContainsKey!0 (array!74084 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1139832 (= e!648558 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1139833 () Bool)

(declare-fun call!50778 () Bool)

(assert (=> b!1139833 call!50778))

(declare-fun lt!507383 () Unit!37308)

(assert (=> b!1139833 (= lt!507383 call!50784)))

(assert (=> b!1139833 (= e!648559 lt!507383)))

(declare-fun call!50783 () ListLongMap!16241)

(declare-fun lt!507397 () array!74086)

(declare-fun bm!50777 () Bool)

(assert (=> bm!50777 (= call!50783 (getCurrentListMapNoExtraKeys!4582 lt!507394 lt!507397 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!507384 () ListLongMap!16241)

(declare-fun call!50779 () Bool)

(declare-fun bm!50778 () Bool)

(assert (=> bm!50778 (= call!50779 (contains!6644 (ite c!111736 lt!507384 call!50781) k!934))))

(declare-fun b!1139834 () Bool)

(declare-fun res!760176 () Bool)

(assert (=> b!1139834 (=> (not res!760176) (not e!648557))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1139834 (= res!760176 (validMask!0 mask!1564))))

(declare-fun b!1139835 () Bool)

(assert (=> b!1139835 (contains!6644 (+!3484 lt!507384 (tuple2!18261 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k!934)))

(declare-fun lt!507396 () Unit!37308)

(assert (=> b!1139835 (= lt!507396 (addStillContains!785 lt!507384 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k!934))))

(assert (=> b!1139835 call!50779))

(assert (=> b!1139835 (= lt!507384 call!50780)))

(declare-fun lt!507395 () Unit!37308)

(assert (=> b!1139835 (= lt!507395 call!50782)))

(declare-fun e!648570 () Unit!37308)

(assert (=> b!1139835 (= e!648570 lt!507396)))

(declare-fun b!1139836 () Bool)

(assert (=> b!1139836 (= e!648557 e!648555)))

(declare-fun res!760184 () Bool)

(assert (=> b!1139836 (=> (not res!760184) (not e!648555))))

(assert (=> b!1139836 (= res!760184 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!507394 mask!1564))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1139836 (= lt!507394 (array!74085 (store (arr!35689 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36226 _keys!1208)))))

(declare-fun mapIsEmpty!44774 () Bool)

(declare-fun mapRes!44774 () Bool)

(assert (=> mapIsEmpty!44774 mapRes!44774))

(declare-fun b!1139837 () Bool)

(declare-fun e!648562 () Bool)

(declare-fun e!648564 () Bool)

(assert (=> b!1139837 (= e!648562 e!648564)))

(declare-fun res!760179 () Bool)

(assert (=> b!1139837 (=> res!760179 e!648564)))

(assert (=> b!1139837 (= res!760179 (not (= from!1455 i!673)))))

(declare-fun lt!507393 () ListLongMap!16241)

(assert (=> b!1139837 (= lt!507393 (getCurrentListMapNoExtraKeys!4582 lt!507394 lt!507397 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1139837 (= lt!507397 (array!74087 (store (arr!35690 _values!996) i!673 (ValueCellFull!13607 lt!507400)) (size!36227 _values!996)))))

(declare-fun dynLambda!2637 (Int (_ BitVec 64)) V!43305)

(assert (=> b!1139837 (= lt!507400 (dynLambda!2637 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!507388 () ListLongMap!16241)

(assert (=> b!1139837 (= lt!507388 (getCurrentListMapNoExtraKeys!4582 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1139838 () Bool)

(declare-fun res!760173 () Bool)

(assert (=> b!1139838 (=> (not res!760173) (not e!648557))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1139838 (= res!760173 (validKeyInArray!0 k!934))))

(declare-fun b!1139839 () Bool)

(declare-fun Unit!37310 () Unit!37308)

(assert (=> b!1139839 (= e!648566 Unit!37310)))

(assert (=> b!1139839 (= lt!507390 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1139839 (= c!111736 (and (not lt!507390) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!507401 () Unit!37308)

(assert (=> b!1139839 (= lt!507401 e!648570)))

(declare-fun lt!507387 () Unit!37308)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!386 (array!74084 array!74086 (_ BitVec 32) (_ BitVec 32) V!43305 V!43305 (_ BitVec 64) (_ BitVec 32) Int) Unit!37308)

(assert (=> b!1139839 (= lt!507387 (lemmaListMapContainsThenArrayContainsFrom!386 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!111733 () Bool)

(assert (=> b!1139839 (= c!111733 (and (not (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!760172 () Bool)

(assert (=> b!1139839 (= res!760172 e!648558)))

(declare-fun e!648560 () Bool)

(assert (=> b!1139839 (=> (not res!760172) (not e!648560))))

(assert (=> b!1139839 e!648560))

(declare-fun lt!507385 () Unit!37308)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74084 (_ BitVec 32) (_ BitVec 32)) Unit!37308)

(assert (=> b!1139839 (= lt!507385 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1139839 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25060)))

(declare-fun lt!507386 () Unit!37308)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74084 (_ BitVec 64) (_ BitVec 32) List!25063) Unit!37308)

(assert (=> b!1139839 (= lt!507386 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!25060))))

(assert (=> b!1139839 false))

(declare-fun b!1139840 () Bool)

(declare-fun res!760183 () Bool)

(assert (=> b!1139840 (=> (not res!760183) (not e!648557))))

(assert (=> b!1139840 (= res!760183 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36226 _keys!1208))))))

(declare-fun call!50777 () ListLongMap!16241)

(declare-fun bm!50779 () Bool)

(assert (=> bm!50779 (= call!50777 (getCurrentListMapNoExtraKeys!4582 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1139841 () Bool)

(declare-fun Unit!37311 () Unit!37308)

(assert (=> b!1139841 (= e!648566 Unit!37311)))

(declare-fun b!1139842 () Bool)

(declare-fun lt!507391 () Unit!37308)

(assert (=> b!1139842 (= e!648561 lt!507391)))

(assert (=> b!1139842 (= lt!507391 call!50784)))

(assert (=> b!1139842 call!50778))

(declare-fun b!1139843 () Bool)

(assert (=> b!1139843 (= c!111737 (and (not lt!507390) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1139843 (= e!648570 e!648561)))

(declare-fun b!1139844 () Bool)

(declare-fun e!648556 () Bool)

(declare-fun e!648565 () Bool)

(assert (=> b!1139844 (= e!648556 (and e!648565 mapRes!44774))))

(declare-fun condMapEmpty!44774 () Bool)

(declare-fun mapDefault!44774 () ValueCell!13607)

