; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100718 () Bool)

(assert start!100718)

(declare-fun b_free!25913 () Bool)

(declare-fun b_next!25913 () Bool)

(assert (=> start!100718 (= b_free!25913 (not b_next!25913))))

(declare-fun tp!90737 () Bool)

(declare-fun b_and!42787 () Bool)

(assert (=> start!100718 (= tp!90737 b_and!42787)))

(declare-fun b!1204444 () Bool)

(declare-fun res!801395 () Bool)

(declare-fun e!684018 () Bool)

(assert (=> b!1204444 (=> (not res!801395) (not e!684018))))

(declare-datatypes ((array!77988 0))(
  ( (array!77989 (arr!37633 (Array (_ BitVec 32) (_ BitVec 64))) (size!38170 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77988)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!45949 0))(
  ( (V!45950 (val!15365 Int)) )
))
(declare-datatypes ((ValueCell!14599 0))(
  ( (ValueCellFull!14599 (v!18008 V!45949)) (EmptyCell!14599) )
))
(declare-datatypes ((array!77990 0))(
  ( (array!77991 (arr!37634 (Array (_ BitVec 32) ValueCell!14599)) (size!38171 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77990)

(assert (=> b!1204444 (= res!801395 (and (= (size!38171 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38170 _keys!1208) (size!38171 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1204445 () Bool)

(declare-fun res!801389 () Bool)

(assert (=> b!1204445 (=> (not res!801389) (not e!684018))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1204445 (= res!801389 (validMask!0 mask!1564))))

(declare-fun b!1204446 () Bool)

(declare-fun res!801392 () Bool)

(assert (=> b!1204446 (=> (not res!801392) (not e!684018))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77988 (_ BitVec 32)) Bool)

(assert (=> b!1204446 (= res!801392 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1204447 () Bool)

(declare-fun res!801390 () Bool)

(assert (=> b!1204447 (=> (not res!801390) (not e!684018))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1204447 (= res!801390 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38170 _keys!1208))))))

(declare-fun b!1204448 () Bool)

(declare-fun e!684014 () Bool)

(declare-fun tp_is_empty!30617 () Bool)

(assert (=> b!1204448 (= e!684014 tp_is_empty!30617)))

(declare-fun e!684019 () Bool)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun b!1204449 () Bool)

(declare-fun arrayContainsKey!0 (array!77988 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1204449 (= e!684019 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun e!684016 () Bool)

(assert (=> b!1204449 e!684016))

(declare-fun c!118040 () Bool)

(assert (=> b!1204449 (= c!118040 (and (not (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun zeroValue!944 () V!45949)

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!45949)

(declare-datatypes ((Unit!39861 0))(
  ( (Unit!39862) )
))
(declare-fun lt!546165 () Unit!39861)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!564 (array!77988 array!77990 (_ BitVec 32) (_ BitVec 32) V!45949 V!45949 (_ BitVec 64) (_ BitVec 32) Int) Unit!39861)

(assert (=> b!1204449 (= lt!546165 (lemmaListMapContainsThenArrayContainsFrom!564 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!546162 () Unit!39861)

(declare-fun e!684015 () Unit!39861)

(assert (=> b!1204449 (= lt!546162 e!684015)))

(declare-fun c!118041 () Bool)

(declare-fun lt!546172 () Bool)

(assert (=> b!1204449 (= c!118041 (and (not lt!546172) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1204449 (= lt!546172 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun mapNonEmpty!47775 () Bool)

(declare-fun mapRes!47775 () Bool)

(declare-fun tp!90736 () Bool)

(assert (=> mapNonEmpty!47775 (= mapRes!47775 (and tp!90736 e!684014))))

(declare-fun mapKey!47775 () (_ BitVec 32))

(declare-fun mapRest!47775 () (Array (_ BitVec 32) ValueCell!14599))

(declare-fun mapValue!47775 () ValueCell!14599)

(assert (=> mapNonEmpty!47775 (= (arr!37634 _values!996) (store mapRest!47775 mapKey!47775 mapValue!47775))))

(declare-fun b!1204450 () Bool)

(declare-fun e!684017 () Bool)

(declare-fun e!684012 () Bool)

(assert (=> b!1204450 (= e!684017 e!684012)))

(declare-fun res!801394 () Bool)

(assert (=> b!1204450 (=> res!801394 e!684012)))

(assert (=> b!1204450 (= res!801394 (not (= from!1455 i!673)))))

(declare-datatypes ((tuple2!19838 0))(
  ( (tuple2!19839 (_1!9929 (_ BitVec 64)) (_2!9929 V!45949)) )
))
(declare-datatypes ((List!26665 0))(
  ( (Nil!26662) (Cons!26661 (h!27870 tuple2!19838) (t!39565 List!26665)) )
))
(declare-datatypes ((ListLongMap!17819 0))(
  ( (ListLongMap!17820 (toList!8925 List!26665)) )
))
(declare-fun lt!546168 () ListLongMap!17819)

(declare-fun lt!546169 () array!77988)

(declare-fun lt!546171 () array!77990)

(declare-fun getCurrentListMapNoExtraKeys!5334 (array!77988 array!77990 (_ BitVec 32) (_ BitVec 32) V!45949 V!45949 (_ BitVec 32) Int) ListLongMap!17819)

(assert (=> b!1204450 (= lt!546168 (getCurrentListMapNoExtraKeys!5334 lt!546169 lt!546171 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!3256 (Int (_ BitVec 64)) V!45949)

(assert (=> b!1204450 (= lt!546171 (array!77991 (store (arr!37634 _values!996) i!673 (ValueCellFull!14599 (dynLambda!3256 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38171 _values!996)))))

(declare-fun lt!546163 () ListLongMap!17819)

(assert (=> b!1204450 (= lt!546163 (getCurrentListMapNoExtraKeys!5334 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1204451 () Bool)

(assert (=> b!1204451 (= e!684016 (ite (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!546172) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1204452 () Bool)

(declare-fun e!684013 () Unit!39861)

(declare-fun lt!546167 () Unit!39861)

(assert (=> b!1204452 (= e!684013 lt!546167)))

(declare-fun call!58247 () Unit!39861)

(assert (=> b!1204452 (= lt!546167 call!58247)))

(declare-fun call!58250 () Bool)

(assert (=> b!1204452 call!58250))

(declare-fun bm!58240 () Bool)

(declare-fun lt!546166 () ListLongMap!17819)

(declare-fun call!58246 () Unit!39861)

(declare-fun c!118038 () Bool)

(declare-fun addStillContains!1023 (ListLongMap!17819 (_ BitVec 64) V!45949 (_ BitVec 64)) Unit!39861)

(assert (=> bm!58240 (= call!58246 (addStillContains!1023 lt!546166 (ite (or c!118041 c!118038) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!118041 c!118038) zeroValue!944 minValue!944) k!934))))

(declare-fun call!58243 () ListLongMap!17819)

(declare-fun b!1204453 () Bool)

(declare-fun e!684005 () Bool)

(declare-fun call!58249 () ListLongMap!17819)

(declare-fun -!1840 (ListLongMap!17819 (_ BitVec 64)) ListLongMap!17819)

(assert (=> b!1204453 (= e!684005 (= call!58249 (-!1840 call!58243 k!934)))))

(declare-fun b!1204454 () Bool)

(assert (=> b!1204454 (= e!684016 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun bm!58242 () Bool)

(declare-fun call!58248 () Bool)

(assert (=> bm!58242 (= call!58250 call!58248)))

(declare-fun b!1204455 () Bool)

(assert (=> b!1204455 call!58250))

(declare-fun lt!546164 () Unit!39861)

(assert (=> b!1204455 (= lt!546164 call!58247)))

(declare-fun e!684006 () Unit!39861)

(assert (=> b!1204455 (= e!684006 lt!546164)))

(declare-fun b!1204456 () Bool)

(declare-fun res!801383 () Bool)

(declare-fun e!684011 () Bool)

(assert (=> b!1204456 (=> (not res!801383) (not e!684011))))

(declare-datatypes ((List!26666 0))(
  ( (Nil!26663) (Cons!26662 (h!27871 (_ BitVec 64)) (t!39566 List!26666)) )
))
(declare-fun arrayNoDuplicates!0 (array!77988 (_ BitVec 32) List!26666) Bool)

(assert (=> b!1204456 (= res!801383 (arrayNoDuplicates!0 lt!546169 #b00000000000000000000000000000000 Nil!26663))))

(declare-fun mapIsEmpty!47775 () Bool)

(assert (=> mapIsEmpty!47775 mapRes!47775))

(declare-fun b!1204457 () Bool)

(declare-fun Unit!39863 () Unit!39861)

(assert (=> b!1204457 (= e!684013 Unit!39863)))

(declare-fun b!1204458 () Bool)

(assert (=> b!1204458 (= e!684011 (not e!684017))))

(declare-fun res!801387 () Bool)

(assert (=> b!1204458 (=> res!801387 e!684017)))

(assert (=> b!1204458 (= res!801387 (bvsgt from!1455 i!673))))

(assert (=> b!1204458 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!546161 () Unit!39861)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!77988 (_ BitVec 64) (_ BitVec 32)) Unit!39861)

(assert (=> b!1204458 (= lt!546161 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1204459 () Bool)

(assert (=> b!1204459 (= e!684018 e!684011)))

(declare-fun res!801393 () Bool)

(assert (=> b!1204459 (=> (not res!801393) (not e!684011))))

(assert (=> b!1204459 (= res!801393 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!546169 mask!1564))))

(assert (=> b!1204459 (= lt!546169 (array!77989 (store (arr!37633 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38170 _keys!1208)))))

(declare-fun b!1204460 () Bool)

(declare-fun e!684007 () Bool)

(assert (=> b!1204460 (= e!684012 e!684007)))

(declare-fun res!801396 () Bool)

(assert (=> b!1204460 (=> res!801396 e!684007)))

(assert (=> b!1204460 (= res!801396 (not (= (select (arr!37633 _keys!1208) from!1455) k!934)))))

(assert (=> b!1204460 e!684005))

(declare-fun c!118037 () Bool)

(assert (=> b!1204460 (= c!118037 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!546160 () Unit!39861)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1044 (array!77988 array!77990 (_ BitVec 32) (_ BitVec 32) V!45949 V!45949 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39861)

(assert (=> b!1204460 (= lt!546160 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1044 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!546173 () ListLongMap!17819)

(declare-fun bm!58243 () Bool)

(declare-fun call!58245 () ListLongMap!17819)

(declare-fun contains!6927 (ListLongMap!17819 (_ BitVec 64)) Bool)

(assert (=> bm!58243 (= call!58248 (contains!6927 (ite c!118041 lt!546173 call!58245) k!934))))

(declare-fun bm!58244 () Bool)

(assert (=> bm!58244 (= call!58247 call!58246)))

(declare-fun b!1204461 () Bool)

(assert (=> b!1204461 (= e!684007 e!684019)))

(declare-fun res!801391 () Bool)

(assert (=> b!1204461 (=> res!801391 e!684019)))

(assert (=> b!1204461 (= res!801391 (not (contains!6927 lt!546166 k!934)))))

(assert (=> b!1204461 (= lt!546166 (getCurrentListMapNoExtraKeys!5334 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1204462 () Bool)

(declare-fun c!118039 () Bool)

(assert (=> b!1204462 (= c!118039 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!546172))))

(assert (=> b!1204462 (= e!684006 e!684013)))

(declare-fun b!1204463 () Bool)

(assert (=> b!1204463 (= e!684015 e!684006)))

(assert (=> b!1204463 (= c!118038 (and (not lt!546172) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!58245 () Bool)

(assert (=> bm!58245 (= call!58249 (getCurrentListMapNoExtraKeys!5334 lt!546169 lt!546171 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun call!58244 () ListLongMap!17819)

(declare-fun bm!58241 () Bool)

(declare-fun +!3959 (ListLongMap!17819 tuple2!19838) ListLongMap!17819)

(assert (=> bm!58241 (= call!58244 (+!3959 (ite c!118041 lt!546173 lt!546166) (ite c!118041 (tuple2!19839 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!118038 (tuple2!19839 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19839 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun res!801388 () Bool)

(assert (=> start!100718 (=> (not res!801388) (not e!684018))))

(assert (=> start!100718 (= res!801388 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38170 _keys!1208))))))

(assert (=> start!100718 e!684018))

(assert (=> start!100718 tp_is_empty!30617))

(declare-fun array_inv!28574 (array!77988) Bool)

(assert (=> start!100718 (array_inv!28574 _keys!1208)))

(assert (=> start!100718 true))

(assert (=> start!100718 tp!90737))

(declare-fun e!684008 () Bool)

(declare-fun array_inv!28575 (array!77990) Bool)

(assert (=> start!100718 (and (array_inv!28575 _values!996) e!684008)))

(declare-fun bm!58246 () Bool)

(assert (=> bm!58246 (= call!58243 (getCurrentListMapNoExtraKeys!5334 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1204464 () Bool)

(declare-fun lt!546170 () Unit!39861)

(assert (=> b!1204464 (= e!684015 lt!546170)))

(declare-fun lt!546159 () Unit!39861)

(assert (=> b!1204464 (= lt!546159 call!58246)))

(assert (=> b!1204464 (= lt!546173 (+!3959 lt!546166 (tuple2!19839 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(assert (=> b!1204464 call!58248))

(assert (=> b!1204464 (= lt!546170 (addStillContains!1023 lt!546173 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k!934))))

(assert (=> b!1204464 (contains!6927 call!58244 k!934)))

(declare-fun b!1204465 () Bool)

(declare-fun e!684010 () Bool)

(assert (=> b!1204465 (= e!684010 tp_is_empty!30617)))

(declare-fun b!1204466 () Bool)

(declare-fun res!801384 () Bool)

(assert (=> b!1204466 (=> (not res!801384) (not e!684018))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1204466 (= res!801384 (validKeyInArray!0 k!934))))

(declare-fun b!1204467 () Bool)

(declare-fun res!801385 () Bool)

(assert (=> b!1204467 (=> (not res!801385) (not e!684018))))

(assert (=> b!1204467 (= res!801385 (= (select (arr!37633 _keys!1208) i!673) k!934))))

(declare-fun b!1204468 () Bool)

(declare-fun res!801386 () Bool)

(assert (=> b!1204468 (=> (not res!801386) (not e!684018))))

(assert (=> b!1204468 (= res!801386 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26663))))

(declare-fun bm!58247 () Bool)

(assert (=> bm!58247 (= call!58245 call!58244)))

(declare-fun b!1204469 () Bool)

(assert (=> b!1204469 (= e!684005 (= call!58249 call!58243))))

(declare-fun b!1204470 () Bool)

(assert (=> b!1204470 (= e!684008 (and e!684010 mapRes!47775))))

(declare-fun condMapEmpty!47775 () Bool)

(declare-fun mapDefault!47775 () ValueCell!14599)

