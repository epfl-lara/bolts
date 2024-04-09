; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97382 () Bool)

(assert start!97382)

(declare-fun b_free!23317 () Bool)

(declare-fun b_next!23317 () Bool)

(assert (=> start!97382 (= b_free!23317 (not b_next!23317))))

(declare-fun tp!82251 () Bool)

(declare-fun b_and!37487 () Bool)

(assert (=> start!97382 (= tp!82251 b_and!37487)))

(declare-fun b!1109277 () Bool)

(declare-fun e!632774 () Bool)

(declare-fun tp_is_empty!27577 () Bool)

(assert (=> b!1109277 (= e!632774 tp_is_empty!27577)))

(declare-fun b!1109278 () Bool)

(declare-fun res!740354 () Bool)

(declare-fun e!632776 () Bool)

(assert (=> b!1109278 (=> (not res!740354) (not e!632776))))

(declare-datatypes ((array!72022 0))(
  ( (array!72023 (arr!34660 (Array (_ BitVec 32) (_ BitVec 64))) (size!35197 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72022)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1109278 (= res!740354 (= (select (arr!34660 _keys!1208) i!673) k!934))))

(declare-fun mapIsEmpty!43183 () Bool)

(declare-fun mapRes!43183 () Bool)

(assert (=> mapIsEmpty!43183 mapRes!43183))

(declare-fun b!1109279 () Bool)

(declare-fun e!632769 () Bool)

(assert (=> b!1109279 (= e!632776 e!632769)))

(declare-fun res!740355 () Bool)

(assert (=> b!1109279 (=> (not res!740355) (not e!632769))))

(declare-fun lt!495942 () array!72022)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72022 (_ BitVec 32)) Bool)

(assert (=> b!1109279 (= res!740355 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!495942 mask!1564))))

(assert (=> b!1109279 (= lt!495942 (array!72023 (store (arr!34660 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35197 _keys!1208)))))

(declare-fun b!1109280 () Bool)

(declare-fun res!740363 () Bool)

(assert (=> b!1109280 (=> (not res!740363) (not e!632776))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((V!41897 0))(
  ( (V!41898 (val!13845 Int)) )
))
(declare-datatypes ((ValueCell!13079 0))(
  ( (ValueCellFull!13079 (v!16479 V!41897)) (EmptyCell!13079) )
))
(declare-datatypes ((array!72024 0))(
  ( (array!72025 (arr!34661 (Array (_ BitVec 32) ValueCell!13079)) (size!35198 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72024)

(assert (=> b!1109280 (= res!740363 (and (= (size!35198 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35197 _keys!1208) (size!35198 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1109281 () Bool)

(declare-fun e!632772 () Bool)

(assert (=> b!1109281 (= e!632769 (not e!632772))))

(declare-fun res!740356 () Bool)

(assert (=> b!1109281 (=> res!740356 e!632772)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1109281 (= res!740356 (or (bvsle from!1455 i!673) (bvsgt (bvadd #b00000000000000000000000000000001 from!1455) (size!35197 _keys!1208)) (bvslt (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000)))))

(declare-fun arrayContainsKey!0 (array!72022 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1109281 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36329 0))(
  ( (Unit!36330) )
))
(declare-fun lt!495940 () Unit!36329)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72022 (_ BitVec 64) (_ BitVec 32)) Unit!36329)

(assert (=> b!1109281 (= lt!495940 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-datatypes ((tuple2!17570 0))(
  ( (tuple2!17571 (_1!8795 (_ BitVec 64)) (_2!8795 V!41897)) )
))
(declare-datatypes ((List!24307 0))(
  ( (Nil!24304) (Cons!24303 (h!25512 tuple2!17570) (t!34677 List!24307)) )
))
(declare-datatypes ((ListLongMap!15551 0))(
  ( (ListLongMap!15552 (toList!7791 List!24307)) )
))
(declare-fun call!46649 () ListLongMap!15551)

(declare-fun call!46648 () ListLongMap!15551)

(declare-fun e!632777 () Bool)

(declare-fun b!1109282 () Bool)

(declare-fun -!1020 (ListLongMap!15551 (_ BitVec 64)) ListLongMap!15551)

(assert (=> b!1109282 (= e!632777 (= call!46648 (-!1020 call!46649 k!934)))))

(declare-fun b!1109283 () Bool)

(declare-fun e!632771 () Bool)

(assert (=> b!1109283 (= e!632771 tp_is_empty!27577)))

(declare-fun b!1109284 () Bool)

(declare-fun e!632775 () array!72024)

(assert (=> b!1109284 (= e!632775 _values!996)))

(declare-fun mapNonEmpty!43183 () Bool)

(declare-fun tp!82250 () Bool)

(assert (=> mapNonEmpty!43183 (= mapRes!43183 (and tp!82250 e!632771))))

(declare-fun mapValue!43183 () ValueCell!13079)

(declare-fun mapRest!43183 () (Array (_ BitVec 32) ValueCell!13079))

(declare-fun mapKey!43183 () (_ BitVec 32))

(assert (=> mapNonEmpty!43183 (= (arr!34661 _values!996) (store mapRest!43183 mapKey!43183 mapValue!43183))))

(declare-fun b!1109285 () Bool)

(declare-fun res!740357 () Bool)

(assert (=> b!1109285 (=> (not res!740357) (not e!632769))))

(declare-datatypes ((List!24308 0))(
  ( (Nil!24305) (Cons!24304 (h!25513 (_ BitVec 64)) (t!34678 List!24308)) )
))
(declare-fun arrayNoDuplicates!0 (array!72022 (_ BitVec 32) List!24308) Bool)

(assert (=> b!1109285 (= res!740357 (arrayNoDuplicates!0 lt!495942 #b00000000000000000000000000000000 Nil!24305))))

(declare-fun zeroValue!944 () V!41897)

(declare-fun defaultEntry!1004 () Int)

(declare-fun bm!46645 () Bool)

(declare-fun c!109119 () Bool)

(declare-fun minValue!944 () V!41897)

(declare-fun getCurrentListMapNoExtraKeys!4256 (array!72022 array!72024 (_ BitVec 32) (_ BitVec 32) V!41897 V!41897 (_ BitVec 32) Int) ListLongMap!15551)

(assert (=> bm!46645 (= call!46649 (getCurrentListMapNoExtraKeys!4256 (ite c!109119 _keys!1208 lt!495942) e!632775 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!109120 () Bool)

(assert (=> bm!46645 (= c!109120 c!109119)))

(declare-fun b!1109286 () Bool)

(assert (=> b!1109286 (= e!632772 true)))

(assert (=> b!1109286 e!632777))

(assert (=> b!1109286 (= c!109119 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!495941 () Unit!36329)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!272 (array!72022 array!72024 (_ BitVec 32) (_ BitVec 32) V!41897 V!41897 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36329)

(assert (=> b!1109286 (= lt!495941 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!272 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun e!632773 () array!72024)

(declare-fun bm!46646 () Bool)

(assert (=> bm!46646 (= call!46648 (getCurrentListMapNoExtraKeys!4256 (ite c!109119 lt!495942 _keys!1208) e!632773 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!109121 () Bool)

(assert (=> bm!46646 (= c!109121 c!109119)))

(declare-fun b!1109287 () Bool)

(assert (=> b!1109287 (= e!632777 (= call!46649 call!46648))))

(declare-fun b!1109288 () Bool)

(declare-fun res!740359 () Bool)

(assert (=> b!1109288 (=> (not res!740359) (not e!632776))))

(assert (=> b!1109288 (= res!740359 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35197 _keys!1208))))))

(declare-fun b!1109289 () Bool)

(declare-fun res!740360 () Bool)

(assert (=> b!1109289 (=> (not res!740360) (not e!632776))))

(assert (=> b!1109289 (= res!740360 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1109290 () Bool)

(declare-fun dynLambda!2380 (Int (_ BitVec 64)) V!41897)

(assert (=> b!1109290 (= e!632775 (array!72025 (store (arr!34661 _values!996) i!673 (ValueCellFull!13079 (dynLambda!2380 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35198 _values!996)))))

(declare-fun b!1109291 () Bool)

(declare-fun res!740364 () Bool)

(assert (=> b!1109291 (=> (not res!740364) (not e!632776))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1109291 (= res!740364 (validKeyInArray!0 k!934))))

(declare-fun b!1109292 () Bool)

(assert (=> b!1109292 (= e!632773 (array!72025 (store (arr!34661 _values!996) i!673 (ValueCellFull!13079 (dynLambda!2380 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35198 _values!996)))))

(declare-fun b!1109293 () Bool)

(assert (=> b!1109293 (= e!632773 _values!996)))

(declare-fun b!1109294 () Bool)

(declare-fun res!740361 () Bool)

(assert (=> b!1109294 (=> (not res!740361) (not e!632776))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1109294 (= res!740361 (validMask!0 mask!1564))))

(declare-fun res!740358 () Bool)

(assert (=> start!97382 (=> (not res!740358) (not e!632776))))

(assert (=> start!97382 (= res!740358 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35197 _keys!1208))))))

(assert (=> start!97382 e!632776))

(assert (=> start!97382 tp_is_empty!27577))

(declare-fun array_inv!26540 (array!72022) Bool)

(assert (=> start!97382 (array_inv!26540 _keys!1208)))

(assert (=> start!97382 true))

(assert (=> start!97382 tp!82251))

(declare-fun e!632770 () Bool)

(declare-fun array_inv!26541 (array!72024) Bool)

(assert (=> start!97382 (and (array_inv!26541 _values!996) e!632770)))

(declare-fun b!1109295 () Bool)

(declare-fun res!740362 () Bool)

(assert (=> b!1109295 (=> (not res!740362) (not e!632776))))

(assert (=> b!1109295 (= res!740362 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24305))))

(declare-fun b!1109296 () Bool)

(assert (=> b!1109296 (= e!632770 (and e!632774 mapRes!43183))))

(declare-fun condMapEmpty!43183 () Bool)

(declare-fun mapDefault!43183 () ValueCell!13079)

