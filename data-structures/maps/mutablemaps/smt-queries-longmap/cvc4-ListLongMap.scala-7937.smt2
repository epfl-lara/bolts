; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98502 () Bool)

(assert start!98502)

(declare-fun b_free!24071 () Bool)

(declare-fun b_next!24071 () Bool)

(assert (=> start!98502 (= b_free!24071 (not b_next!24071))))

(declare-fun tp!84925 () Bool)

(declare-fun b_and!39005 () Bool)

(assert (=> start!98502 (= tp!84925 b_and!39005)))

(declare-fun b!1138404 () Bool)

(declare-datatypes ((Unit!37250 0))(
  ( (Unit!37251) )
))
(declare-fun e!647792 () Unit!37250)

(declare-fun e!647800 () Unit!37250)

(assert (=> b!1138404 (= e!647792 e!647800)))

(declare-fun c!111445 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun lt!506459 () Bool)

(assert (=> b!1138404 (= c!111445 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!506459))))

(declare-datatypes ((array!74020 0))(
  ( (array!74021 (arr!35657 (Array (_ BitVec 32) (_ BitVec 64))) (size!36194 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74020)

(declare-fun e!647801 () Bool)

(declare-fun b!1138405 () Bool)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!74020 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1138405 (= e!647801 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1138406 () Bool)

(declare-fun e!647799 () Bool)

(declare-fun e!647790 () Bool)

(assert (=> b!1138406 (= e!647799 e!647790)))

(declare-fun res!759508 () Bool)

(assert (=> b!1138406 (=> res!759508 e!647790)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1138406 (= res!759508 (not (= from!1455 i!673)))))

(declare-datatypes ((V!43261 0))(
  ( (V!43262 (val!14357 Int)) )
))
(declare-fun zeroValue!944 () V!43261)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((ValueCell!13591 0))(
  ( (ValueCellFull!13591 (v!16995 V!43261)) (EmptyCell!13591) )
))
(declare-datatypes ((array!74022 0))(
  ( (array!74023 (arr!35658 (Array (_ BitVec 32) ValueCell!13591)) (size!36195 (_ BitVec 32))) )
))
(declare-fun lt!506461 () array!74022)

(declare-fun lt!506449 () array!74020)

(declare-datatypes ((tuple2!18230 0))(
  ( (tuple2!18231 (_1!9125 (_ BitVec 64)) (_2!9125 V!43261)) )
))
(declare-datatypes ((List!25035 0))(
  ( (Nil!25032) (Cons!25031 (h!26240 tuple2!18230) (t!36105 List!25035)) )
))
(declare-datatypes ((ListLongMap!16211 0))(
  ( (ListLongMap!16212 (toList!8121 List!25035)) )
))
(declare-fun lt!506457 () ListLongMap!16211)

(declare-fun minValue!944 () V!43261)

(declare-fun getCurrentListMapNoExtraKeys!4568 (array!74020 array!74022 (_ BitVec 32) (_ BitVec 32) V!43261 V!43261 (_ BitVec 32) Int) ListLongMap!16211)

(assert (=> b!1138406 (= lt!506457 (getCurrentListMapNoExtraKeys!4568 lt!506449 lt!506461 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun _values!996 () array!74022)

(declare-fun dynLambda!2627 (Int (_ BitVec 64)) V!43261)

(assert (=> b!1138406 (= lt!506461 (array!74023 (store (arr!35658 _values!996) i!673 (ValueCellFull!13591 (dynLambda!2627 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36195 _values!996)))))

(declare-fun lt!506466 () ListLongMap!16211)

(assert (=> b!1138406 (= lt!506466 (getCurrentListMapNoExtraKeys!4568 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!506460 () ListLongMap!16211)

(declare-fun c!111447 () Bool)

(declare-fun call!50400 () ListLongMap!16211)

(declare-fun lt!506453 () ListLongMap!16211)

(declare-fun bm!50390 () Bool)

(declare-fun c!111446 () Bool)

(declare-fun +!3472 (ListLongMap!16211 tuple2!18230) ListLongMap!16211)

(assert (=> bm!50390 (= call!50400 (+!3472 (ite c!111446 lt!506460 lt!506453) (ite c!111446 (tuple2!18231 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!111447 (tuple2!18231 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18231 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun b!1138407 () Bool)

(declare-fun res!759502 () Bool)

(declare-fun e!647796 () Bool)

(assert (=> b!1138407 (=> (not res!759502) (not e!647796))))

(assert (=> b!1138407 (= res!759502 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36194 _keys!1208))))))

(declare-fun b!1138408 () Bool)

(declare-fun e!647791 () Bool)

(declare-fun call!50395 () ListLongMap!16211)

(declare-fun call!50399 () ListLongMap!16211)

(assert (=> b!1138408 (= e!647791 (= call!50395 call!50399))))

(declare-fun b!1138409 () Bool)

(declare-fun res!759499 () Bool)

(assert (=> b!1138409 (=> (not res!759499) (not e!647796))))

(assert (=> b!1138409 (= res!759499 (and (= (size!36195 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36194 _keys!1208) (size!36195 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1138410 () Bool)

(declare-fun contains!6631 (ListLongMap!16211 (_ BitVec 64)) Bool)

(assert (=> b!1138410 (contains!6631 call!50400 k!934)))

(declare-fun lt!506463 () Unit!37250)

(declare-fun call!50397 () Unit!37250)

(assert (=> b!1138410 (= lt!506463 call!50397)))

(declare-fun call!50396 () Bool)

(assert (=> b!1138410 call!50396))

(assert (=> b!1138410 (= lt!506460 (+!3472 lt!506453 (tuple2!18231 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(declare-fun lt!506450 () Unit!37250)

(declare-fun addStillContains!772 (ListLongMap!16211 (_ BitVec 64) V!43261 (_ BitVec 64)) Unit!37250)

(assert (=> b!1138410 (= lt!506450 (addStillContains!772 lt!506453 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k!934))))

(declare-fun e!647794 () Unit!37250)

(assert (=> b!1138410 (= e!647794 lt!506463)))

(declare-fun b!1138411 () Bool)

(declare-fun e!647795 () Unit!37250)

(declare-fun Unit!37252 () Unit!37250)

(assert (=> b!1138411 (= e!647795 Unit!37252)))

(assert (=> b!1138411 (= lt!506459 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1138411 (= c!111446 (and (not lt!506459) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!506455 () Unit!37250)

(assert (=> b!1138411 (= lt!506455 e!647794)))

(declare-fun lt!506452 () Unit!37250)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!376 (array!74020 array!74022 (_ BitVec 32) (_ BitVec 32) V!43261 V!43261 (_ BitVec 64) (_ BitVec 32) Int) Unit!37250)

(assert (=> b!1138411 (= lt!506452 (lemmaListMapContainsThenArrayContainsFrom!376 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!111448 () Bool)

(assert (=> b!1138411 (= c!111448 (and (not (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!759510 () Bool)

(declare-fun e!647797 () Bool)

(assert (=> b!1138411 (= res!759510 e!647797)))

(assert (=> b!1138411 (=> (not res!759510) (not e!647801))))

(assert (=> b!1138411 e!647801))

(declare-fun lt!506458 () Unit!37250)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74020 (_ BitVec 32) (_ BitVec 32)) Unit!37250)

(assert (=> b!1138411 (= lt!506458 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!25036 0))(
  ( (Nil!25033) (Cons!25032 (h!26241 (_ BitVec 64)) (t!36106 List!25036)) )
))
(declare-fun arrayNoDuplicates!0 (array!74020 (_ BitVec 32) List!25036) Bool)

(assert (=> b!1138411 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25033)))

(declare-fun lt!506454 () Unit!37250)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74020 (_ BitVec 64) (_ BitVec 32) List!25036) Unit!37250)

(assert (=> b!1138411 (= lt!506454 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!25033))))

(assert (=> b!1138411 false))

(declare-fun b!1138412 () Bool)

(declare-fun res!759509 () Bool)

(assert (=> b!1138412 (=> (not res!759509) (not e!647796))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1138412 (= res!759509 (validMask!0 mask!1564))))

(declare-fun b!1138413 () Bool)

(declare-fun lt!506451 () Unit!37250)

(assert (=> b!1138413 (= e!647792 lt!506451)))

(declare-fun call!50398 () Unit!37250)

(assert (=> b!1138413 (= lt!506451 call!50398)))

(declare-fun call!50394 () Bool)

(assert (=> b!1138413 call!50394))

(declare-fun b!1138414 () Bool)

(declare-fun res!759511 () Bool)

(assert (=> b!1138414 (=> (not res!759511) (not e!647796))))

(assert (=> b!1138414 (= res!759511 (= (select (arr!35657 _keys!1208) i!673) k!934))))

(declare-fun b!1138415 () Bool)

(declare-fun e!647788 () Bool)

(declare-fun tp_is_empty!28601 () Bool)

(assert (=> b!1138415 (= e!647788 tp_is_empty!28601)))

(declare-fun b!1138416 () Bool)

(declare-fun res!759503 () Bool)

(assert (=> b!1138416 (=> (not res!759503) (not e!647796))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74020 (_ BitVec 32)) Bool)

(assert (=> b!1138416 (= res!759503 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun bm!50392 () Bool)

(declare-fun call!50393 () ListLongMap!16211)

(assert (=> bm!50392 (= call!50393 call!50400)))

(declare-fun b!1138417 () Bool)

(declare-fun -!1225 (ListLongMap!16211 (_ BitVec 64)) ListLongMap!16211)

(assert (=> b!1138417 (= e!647791 (= call!50395 (-!1225 call!50399 k!934)))))

(declare-fun b!1138418 () Bool)

(declare-fun e!647789 () Bool)

(assert (=> b!1138418 (= e!647789 true)))

(declare-fun lt!506456 () Unit!37250)

(assert (=> b!1138418 (= lt!506456 e!647795)))

(declare-fun c!111450 () Bool)

(assert (=> b!1138418 (= c!111450 (contains!6631 lt!506453 k!934))))

(assert (=> b!1138418 (= lt!506453 (getCurrentListMapNoExtraKeys!4568 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1138419 () Bool)

(declare-fun e!647793 () Bool)

(assert (=> b!1138419 (= e!647793 (not e!647799))))

(declare-fun res!759512 () Bool)

(assert (=> b!1138419 (=> res!759512 e!647799)))

(assert (=> b!1138419 (= res!759512 (bvsgt from!1455 i!673))))

(assert (=> b!1138419 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!506462 () Unit!37250)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74020 (_ BitVec 64) (_ BitVec 32)) Unit!37250)

(assert (=> b!1138419 (= lt!506462 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1138420 () Bool)

(assert (=> b!1138420 (= c!111447 (and (not lt!506459) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1138420 (= e!647794 e!647792)))

(declare-fun b!1138421 () Bool)

(declare-fun e!647787 () Bool)

(declare-fun mapRes!44726 () Bool)

(assert (=> b!1138421 (= e!647787 (and e!647788 mapRes!44726))))

(declare-fun condMapEmpty!44726 () Bool)

(declare-fun mapDefault!44726 () ValueCell!13591)

