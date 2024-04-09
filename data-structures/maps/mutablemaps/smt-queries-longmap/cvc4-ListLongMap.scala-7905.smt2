; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98214 () Bool)

(assert start!98214)

(declare-fun b_free!23879 () Bool)

(declare-fun b_next!23879 () Bool)

(assert (=> start!98214 (= b_free!23879 (not b_next!23879))))

(declare-fun tp!84342 () Bool)

(declare-fun b_and!38563 () Bool)

(assert (=> start!98214 (= tp!84342 b_and!38563)))

(declare-fun b!1129330 () Bool)

(declare-fun res!754764 () Bool)

(declare-fun e!642764 () Bool)

(assert (=> b!1129330 (=> (not res!754764) (not e!642764))))

(declare-datatypes ((array!73636 0))(
  ( (array!73637 (arr!35467 (Array (_ BitVec 32) (_ BitVec 64))) (size!36004 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73636)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1129330 (= res!754764 (= (select (arr!35467 _keys!1208) i!673) k!934))))

(declare-fun b!1129331 () Bool)

(declare-datatypes ((Unit!36946 0))(
  ( (Unit!36947) )
))
(declare-fun e!642770 () Unit!36946)

(declare-fun lt!501361 () Unit!36946)

(assert (=> b!1129331 (= e!642770 lt!501361)))

(declare-fun call!48029 () Unit!36946)

(assert (=> b!1129331 (= lt!501361 call!48029)))

(declare-fun call!48028 () Bool)

(assert (=> b!1129331 call!48028))

(declare-fun b!1129332 () Bool)

(declare-fun res!754756 () Bool)

(assert (=> b!1129332 (=> (not res!754756) (not e!642764))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!43005 0))(
  ( (V!43006 (val!14261 Int)) )
))
(declare-datatypes ((ValueCell!13495 0))(
  ( (ValueCellFull!13495 (v!16895 V!43005)) (EmptyCell!13495) )
))
(declare-datatypes ((array!73638 0))(
  ( (array!73639 (arr!35468 (Array (_ BitVec 32) ValueCell!13495)) (size!36005 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73638)

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1129332 (= res!754756 (and (= (size!36005 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36004 _keys!1208) (size!36005 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun bm!48019 () Bool)

(declare-fun call!48022 () Bool)

(assert (=> bm!48019 (= call!48028 call!48022)))

(declare-fun b!1129333 () Bool)

(declare-fun e!642773 () Bool)

(assert (=> b!1129333 (= e!642773 true)))

(declare-fun zeroValue!944 () V!43005)

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun minValue!944 () V!43005)

(declare-fun lt!501357 () Bool)

(declare-datatypes ((tuple2!18046 0))(
  ( (tuple2!18047 (_1!9033 (_ BitVec 64)) (_2!9033 V!43005)) )
))
(declare-datatypes ((List!24865 0))(
  ( (Nil!24862) (Cons!24861 (h!26070 tuple2!18046) (t!35743 List!24865)) )
))
(declare-datatypes ((ListLongMap!16027 0))(
  ( (ListLongMap!16028 (toList!8029 List!24865)) )
))
(declare-fun contains!6523 (ListLongMap!16027 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4435 (array!73636 array!73638 (_ BitVec 32) (_ BitVec 32) V!43005 V!43005 (_ BitVec 32) Int) ListLongMap!16027)

(assert (=> b!1129333 (= lt!501357 (contains!6523 (getCurrentListMap!4435 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k!934))))

(declare-fun b!1129334 () Bool)

(declare-fun e!642771 () Unit!36946)

(declare-fun lt!501359 () Unit!36946)

(assert (=> b!1129334 (= e!642771 lt!501359)))

(declare-fun lt!501363 () ListLongMap!16027)

(declare-fun lt!501355 () Unit!36946)

(declare-fun addStillContains!696 (ListLongMap!16027 (_ BitVec 64) V!43005 (_ BitVec 64)) Unit!36946)

(assert (=> b!1129334 (= lt!501355 (addStillContains!696 lt!501363 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k!934))))

(declare-fun lt!501365 () ListLongMap!16027)

(declare-fun call!48023 () ListLongMap!16027)

(assert (=> b!1129334 (= lt!501365 call!48023)))

(assert (=> b!1129334 call!48022))

(declare-fun call!48027 () Unit!36946)

(assert (=> b!1129334 (= lt!501359 call!48027)))

(declare-fun +!3397 (ListLongMap!16027 tuple2!18046) ListLongMap!16027)

(assert (=> b!1129334 (contains!6523 (+!3397 lt!501365 (tuple2!18047 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k!934)))

(declare-fun mapNonEmpty!44431 () Bool)

(declare-fun mapRes!44431 () Bool)

(declare-fun tp!84341 () Bool)

(declare-fun e!642763 () Bool)

(assert (=> mapNonEmpty!44431 (= mapRes!44431 (and tp!84341 e!642763))))

(declare-fun mapValue!44431 () ValueCell!13495)

(declare-fun mapKey!44431 () (_ BitVec 32))

(declare-fun mapRest!44431 () (Array (_ BitVec 32) ValueCell!13495))

(assert (=> mapNonEmpty!44431 (= (arr!35468 _values!996) (store mapRest!44431 mapKey!44431 mapValue!44431))))

(declare-fun bm!48020 () Bool)

(declare-fun lt!501362 () array!73638)

(declare-fun lt!501364 () array!73636)

(declare-fun call!48024 () ListLongMap!16027)

(declare-fun getCurrentListMapNoExtraKeys!4482 (array!73636 array!73638 (_ BitVec 32) (_ BitVec 32) V!43005 V!43005 (_ BitVec 32) Int) ListLongMap!16027)

(assert (=> bm!48020 (= call!48024 (getCurrentListMapNoExtraKeys!4482 lt!501364 lt!501362 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1129335 () Bool)

(declare-fun res!754755 () Bool)

(assert (=> b!1129335 (=> (not res!754755) (not e!642764))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1129335 (= res!754755 (validMask!0 mask!1564))))

(declare-fun c!109821 () Bool)

(declare-fun c!109822 () Bool)

(declare-fun bm!48021 () Bool)

(assert (=> bm!48021 (= call!48027 (addStillContains!696 (ite c!109822 lt!501365 lt!501363) (ite c!109822 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!109821 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!109822 minValue!944 (ite c!109821 zeroValue!944 minValue!944)) k!934))))

(declare-fun b!1129336 () Bool)

(declare-fun e!642765 () Bool)

(assert (=> b!1129336 (= e!642765 e!642773)))

(declare-fun res!754753 () Bool)

(assert (=> b!1129336 (=> res!754753 e!642773)))

(assert (=> b!1129336 (= res!754753 (or (bvslt (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvsge (bvadd #b00000000000000000000000000000001 from!1455) (size!36004 _keys!1208))))))

(declare-fun lt!501360 () Unit!36946)

(assert (=> b!1129336 (= lt!501360 e!642771)))

(declare-fun lt!501369 () Bool)

(assert (=> b!1129336 (= c!109822 (and (not lt!501369) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1129336 (= lt!501369 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun call!48026 () ListLongMap!16027)

(declare-fun bm!48022 () Bool)

(assert (=> bm!48022 (= call!48026 (getCurrentListMapNoExtraKeys!4482 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1129338 () Bool)

(declare-fun res!754765 () Bool)

(declare-fun e!642766 () Bool)

(assert (=> b!1129338 (=> (not res!754765) (not e!642766))))

(declare-datatypes ((List!24866 0))(
  ( (Nil!24863) (Cons!24862 (h!26071 (_ BitVec 64)) (t!35744 List!24866)) )
))
(declare-fun arrayNoDuplicates!0 (array!73636 (_ BitVec 32) List!24866) Bool)

(assert (=> b!1129338 (= res!754765 (arrayNoDuplicates!0 lt!501364 #b00000000000000000000000000000000 Nil!24863))))

(declare-fun b!1129339 () Bool)

(assert (=> b!1129339 (= e!642764 e!642766)))

(declare-fun res!754758 () Bool)

(assert (=> b!1129339 (=> (not res!754758) (not e!642766))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73636 (_ BitVec 32)) Bool)

(assert (=> b!1129339 (= res!754758 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!501364 mask!1564))))

(assert (=> b!1129339 (= lt!501364 (array!73637 (store (arr!35467 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36004 _keys!1208)))))

(declare-fun b!1129340 () Bool)

(declare-fun res!754761 () Bool)

(assert (=> b!1129340 (=> (not res!754761) (not e!642764))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1129340 (= res!754761 (validKeyInArray!0 k!934))))

(declare-fun b!1129341 () Bool)

(declare-fun e!642761 () Bool)

(declare-fun e!642759 () Bool)

(assert (=> b!1129341 (= e!642761 e!642759)))

(declare-fun res!754762 () Bool)

(assert (=> b!1129341 (=> res!754762 e!642759)))

(assert (=> b!1129341 (= res!754762 (not (= (select (arr!35467 _keys!1208) from!1455) k!934)))))

(declare-fun e!642769 () Bool)

(assert (=> b!1129341 e!642769))

(declare-fun c!109820 () Bool)

(assert (=> b!1129341 (= c!109820 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!501356 () Unit!36946)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!414 (array!73636 array!73638 (_ BitVec 32) (_ BitVec 32) V!43005 V!43005 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36946)

(assert (=> b!1129341 (= lt!501356 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!414 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1129342 () Bool)

(declare-fun res!754754 () Bool)

(assert (=> b!1129342 (=> (not res!754754) (not e!642764))))

(assert (=> b!1129342 (= res!754754 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1129343 () Bool)

(declare-fun res!754763 () Bool)

(assert (=> b!1129343 (=> (not res!754763) (not e!642764))))

(assert (=> b!1129343 (= res!754763 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24863))))

(declare-fun b!1129344 () Bool)

(declare-fun c!109823 () Bool)

(assert (=> b!1129344 (= c!109823 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!501369))))

(declare-fun e!642772 () Unit!36946)

(assert (=> b!1129344 (= e!642772 e!642770)))

(declare-fun bm!48023 () Bool)

(declare-fun call!48025 () ListLongMap!16027)

(assert (=> bm!48023 (= call!48025 call!48023)))

(declare-fun b!1129345 () Bool)

(assert (=> b!1129345 call!48028))

(declare-fun lt!501367 () Unit!36946)

(assert (=> b!1129345 (= lt!501367 call!48029)))

(assert (=> b!1129345 (= e!642772 lt!501367)))

(declare-fun mapIsEmpty!44431 () Bool)

(assert (=> mapIsEmpty!44431 mapRes!44431))

(declare-fun b!1129346 () Bool)

(assert (=> b!1129346 (= e!642759 e!642765)))

(declare-fun res!754760 () Bool)

(assert (=> b!1129346 (=> res!754760 e!642765)))

(assert (=> b!1129346 (= res!754760 (not (contains!6523 lt!501363 k!934)))))

(assert (=> b!1129346 (= lt!501363 (getCurrentListMapNoExtraKeys!4482 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!48024 () Bool)

(assert (=> bm!48024 (= call!48022 (contains!6523 (ite c!109822 lt!501365 call!48025) k!934))))

(declare-fun b!1129347 () Bool)

(declare-fun e!642767 () Bool)

(assert (=> b!1129347 (= e!642767 e!642761)))

(declare-fun res!754759 () Bool)

(assert (=> b!1129347 (=> res!754759 e!642761)))

(assert (=> b!1129347 (= res!754759 (not (= from!1455 i!673)))))

(declare-fun lt!501366 () ListLongMap!16027)

(assert (=> b!1129347 (= lt!501366 (getCurrentListMapNoExtraKeys!4482 lt!501364 lt!501362 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2559 (Int (_ BitVec 64)) V!43005)

(assert (=> b!1129347 (= lt!501362 (array!73639 (store (arr!35468 _values!996) i!673 (ValueCellFull!13495 (dynLambda!2559 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36005 _values!996)))))

(declare-fun lt!501358 () ListLongMap!16027)

(assert (=> b!1129347 (= lt!501358 (getCurrentListMapNoExtraKeys!4482 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun bm!48025 () Bool)

(assert (=> bm!48025 (= call!48029 call!48027)))

(declare-fun b!1129348 () Bool)

(declare-fun e!642760 () Bool)

(declare-fun tp_is_empty!28409 () Bool)

(assert (=> b!1129348 (= e!642760 tp_is_empty!28409)))

(declare-fun b!1129349 () Bool)

(assert (=> b!1129349 (= e!642766 (not e!642767))))

(declare-fun res!754767 () Bool)

(assert (=> b!1129349 (=> res!754767 e!642767)))

(assert (=> b!1129349 (= res!754767 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!73636 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1129349 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!501368 () Unit!36946)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73636 (_ BitVec 64) (_ BitVec 32)) Unit!36946)

(assert (=> b!1129349 (= lt!501368 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1129350 () Bool)

(assert (=> b!1129350 (= e!642769 (= call!48024 call!48026))))

(declare-fun b!1129351 () Bool)

(declare-fun e!642768 () Bool)

(assert (=> b!1129351 (= e!642768 (and e!642760 mapRes!44431))))

(declare-fun condMapEmpty!44431 () Bool)

(declare-fun mapDefault!44431 () ValueCell!13495)

