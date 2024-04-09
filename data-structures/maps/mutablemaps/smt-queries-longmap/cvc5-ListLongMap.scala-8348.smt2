; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101674 () Bool)

(assert start!101674)

(declare-fun b_free!26359 () Bool)

(declare-fun b_next!26359 () Bool)

(assert (=> start!101674 (= b_free!26359 (not b_next!26359))))

(declare-fun tp!92120 () Bool)

(declare-fun b_and!43971 () Bool)

(assert (=> start!101674 (= tp!92120 b_and!43971)))

(declare-fun b!1222280 () Bool)

(declare-fun e!694191 () Bool)

(declare-fun e!694197 () Bool)

(assert (=> b!1222280 (= e!694191 e!694197)))

(declare-fun res!812187 () Bool)

(assert (=> b!1222280 (=> res!812187 e!694197)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1222280 (= res!812187 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-datatypes ((V!46545 0))(
  ( (V!46546 (val!15588 Int)) )
))
(declare-fun zeroValue!944 () V!46545)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((tuple2!20216 0))(
  ( (tuple2!20217 (_1!10118 (_ BitVec 64)) (_2!10118 V!46545)) )
))
(declare-datatypes ((List!27029 0))(
  ( (Nil!27026) (Cons!27025 (h!28234 tuple2!20216) (t!40375 List!27029)) )
))
(declare-datatypes ((ListLongMap!18197 0))(
  ( (ListLongMap!18198 (toList!9114 List!27029)) )
))
(declare-fun lt!556054 () ListLongMap!18197)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((array!78884 0))(
  ( (array!78885 (arr!38066 (Array (_ BitVec 32) (_ BitVec 64))) (size!38603 (_ BitVec 32))) )
))
(declare-fun lt!556059 () array!78884)

(declare-datatypes ((ValueCell!14822 0))(
  ( (ValueCellFull!14822 (v!18250 V!46545)) (EmptyCell!14822) )
))
(declare-datatypes ((array!78886 0))(
  ( (array!78887 (arr!38067 (Array (_ BitVec 32) ValueCell!14822)) (size!38604 (_ BitVec 32))) )
))
(declare-fun lt!556056 () array!78886)

(declare-fun minValue!944 () V!46545)

(declare-fun getCurrentListMapNoExtraKeys!5512 (array!78884 array!78886 (_ BitVec 32) (_ BitVec 32) V!46545 V!46545 (_ BitVec 32) Int) ListLongMap!18197)

(assert (=> b!1222280 (= lt!556054 (getCurrentListMapNoExtraKeys!5512 lt!556059 lt!556056 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!556052 () V!46545)

(declare-fun _values!996 () array!78886)

(assert (=> b!1222280 (= lt!556056 (array!78887 (store (arr!38067 _values!996) i!673 (ValueCellFull!14822 lt!556052)) (size!38604 _values!996)))))

(declare-fun dynLambda!3410 (Int (_ BitVec 64)) V!46545)

(assert (=> b!1222280 (= lt!556052 (dynLambda!3410 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun _keys!1208 () array!78884)

(declare-fun lt!556061 () ListLongMap!18197)

(assert (=> b!1222280 (= lt!556061 (getCurrentListMapNoExtraKeys!5512 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1222281 () Bool)

(declare-fun e!694195 () Bool)

(assert (=> b!1222281 (= e!694195 (not e!694191))))

(declare-fun res!812184 () Bool)

(assert (=> b!1222281 (=> res!812184 e!694191)))

(assert (=> b!1222281 (= res!812184 (bvsgt from!1455 i!673))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!78884 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1222281 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!40398 0))(
  ( (Unit!40399) )
))
(declare-fun lt!556060 () Unit!40398)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78884 (_ BitVec 64) (_ BitVec 32)) Unit!40398)

(assert (=> b!1222281 (= lt!556060 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1222282 () Bool)

(declare-fun e!694196 () Bool)

(assert (=> b!1222282 (= e!694196 e!694195)))

(declare-fun res!812185 () Bool)

(assert (=> b!1222282 (=> (not res!812185) (not e!694195))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78884 (_ BitVec 32)) Bool)

(assert (=> b!1222282 (= res!812185 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!556059 mask!1564))))

(assert (=> b!1222282 (= lt!556059 (array!78885 (store (arr!38066 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38603 _keys!1208)))))

(declare-fun b!1222283 () Bool)

(declare-fun res!812181 () Bool)

(assert (=> b!1222283 (=> (not res!812181) (not e!694196))))

(assert (=> b!1222283 (= res!812181 (and (= (size!38604 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38603 _keys!1208) (size!38604 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1222284 () Bool)

(declare-fun e!694199 () Unit!40398)

(declare-fun Unit!40400 () Unit!40398)

(assert (=> b!1222284 (= e!694199 Unit!40400)))

(declare-fun lt!556055 () Unit!40398)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!78884 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!40398)

(assert (=> b!1222284 (= lt!556055 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1222284 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!556057 () Unit!40398)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!78884 (_ BitVec 32) (_ BitVec 32)) Unit!40398)

(assert (=> b!1222284 (= lt!556057 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!27030 0))(
  ( (Nil!27027) (Cons!27026 (h!28235 (_ BitVec 64)) (t!40376 List!27030)) )
))
(declare-fun arrayNoDuplicates!0 (array!78884 (_ BitVec 32) List!27030) Bool)

(assert (=> b!1222284 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!27027)))

(declare-fun lt!556065 () Unit!40398)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!78884 (_ BitVec 64) (_ BitVec 32) List!27030) Unit!40398)

(assert (=> b!1222284 (= lt!556065 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!27027))))

(assert (=> b!1222284 false))

(declare-fun b!1222285 () Bool)

(declare-fun e!694194 () Bool)

(declare-fun tp_is_empty!31063 () Bool)

(assert (=> b!1222285 (= e!694194 tp_is_empty!31063)))

(declare-fun mapNonEmpty!48490 () Bool)

(declare-fun mapRes!48490 () Bool)

(declare-fun tp!92121 () Bool)

(declare-fun e!694198 () Bool)

(assert (=> mapNonEmpty!48490 (= mapRes!48490 (and tp!92121 e!694198))))

(declare-fun mapRest!48490 () (Array (_ BitVec 32) ValueCell!14822))

(declare-fun mapKey!48490 () (_ BitVec 32))

(declare-fun mapValue!48490 () ValueCell!14822)

(assert (=> mapNonEmpty!48490 (= (arr!38067 _values!996) (store mapRest!48490 mapKey!48490 mapValue!48490))))

(declare-fun b!1222286 () Bool)

(declare-fun res!812191 () Bool)

(assert (=> b!1222286 (=> (not res!812191) (not e!694196))))

(assert (=> b!1222286 (= res!812191 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!27027))))

(declare-fun b!1222287 () Bool)

(declare-fun e!694192 () Bool)

(assert (=> b!1222287 (= e!694192 (bvslt from!1455 (size!38603 _keys!1208)))))

(declare-fun lt!556063 () Unit!40398)

(assert (=> b!1222287 (= lt!556063 e!694199)))

(declare-fun c!120264 () Bool)

(assert (=> b!1222287 (= c!120264 (= (select (arr!38066 _keys!1208) from!1455) k!934))))

(declare-fun e!694189 () Bool)

(assert (=> b!1222287 e!694189))

(declare-fun res!812190 () Bool)

(assert (=> b!1222287 (=> (not res!812190) (not e!694189))))

(declare-fun lt!556064 () ListLongMap!18197)

(declare-fun +!4080 (ListLongMap!18197 tuple2!20216) ListLongMap!18197)

(declare-fun get!19472 (ValueCell!14822 V!46545) V!46545)

(assert (=> b!1222287 (= res!812190 (= lt!556054 (+!4080 lt!556064 (tuple2!20217 (select (arr!38066 _keys!1208) from!1455) (get!19472 (select (arr!38067 _values!996) from!1455) lt!556052)))))))

(declare-fun mapIsEmpty!48490 () Bool)

(assert (=> mapIsEmpty!48490 mapRes!48490))

(declare-fun b!1222289 () Bool)

(declare-fun res!812193 () Bool)

(assert (=> b!1222289 (=> (not res!812193) (not e!694196))))

(assert (=> b!1222289 (= res!812193 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1222288 () Bool)

(declare-fun res!812186 () Bool)

(assert (=> b!1222288 (=> (not res!812186) (not e!694196))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1222288 (= res!812186 (validKeyInArray!0 k!934))))

(declare-fun res!812189 () Bool)

(assert (=> start!101674 (=> (not res!812189) (not e!694196))))

(assert (=> start!101674 (= res!812189 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38603 _keys!1208))))))

(assert (=> start!101674 e!694196))

(assert (=> start!101674 tp_is_empty!31063))

(declare-fun array_inv!28878 (array!78884) Bool)

(assert (=> start!101674 (array_inv!28878 _keys!1208)))

(assert (=> start!101674 true))

(assert (=> start!101674 tp!92120))

(declare-fun e!694188 () Bool)

(declare-fun array_inv!28879 (array!78886) Bool)

(assert (=> start!101674 (and (array_inv!28879 _values!996) e!694188)))

(declare-fun b!1222290 () Bool)

(declare-fun e!694190 () Bool)

(assert (=> b!1222290 (= e!694189 e!694190)))

(declare-fun res!812192 () Bool)

(assert (=> b!1222290 (=> res!812192 e!694190)))

(assert (=> b!1222290 (= res!812192 (not (= (select (arr!38066 _keys!1208) from!1455) k!934)))))

(declare-fun b!1222291 () Bool)

(declare-fun res!812182 () Bool)

(assert (=> b!1222291 (=> (not res!812182) (not e!694196))))

(assert (=> b!1222291 (= res!812182 (= (select (arr!38066 _keys!1208) i!673) k!934))))

(declare-fun b!1222292 () Bool)

(declare-fun res!812194 () Bool)

(assert (=> b!1222292 (=> (not res!812194) (not e!694195))))

(assert (=> b!1222292 (= res!812194 (arrayNoDuplicates!0 lt!556059 #b00000000000000000000000000000000 Nil!27027))))

(declare-fun b!1222293 () Bool)

(assert (=> b!1222293 (= e!694190 (arrayContainsKey!0 _keys!1208 k!934 i!673))))

(declare-fun b!1222294 () Bool)

(assert (=> b!1222294 (= e!694197 e!694192)))

(declare-fun res!812188 () Bool)

(assert (=> b!1222294 (=> res!812188 e!694192)))

(assert (=> b!1222294 (= res!812188 (not (validKeyInArray!0 (select (arr!38066 _keys!1208) from!1455))))))

(declare-fun lt!556053 () ListLongMap!18197)

(assert (=> b!1222294 (= lt!556053 lt!556064)))

(declare-fun lt!556062 () ListLongMap!18197)

(declare-fun -!1957 (ListLongMap!18197 (_ BitVec 64)) ListLongMap!18197)

(assert (=> b!1222294 (= lt!556064 (-!1957 lt!556062 k!934))))

(assert (=> b!1222294 (= lt!556053 (getCurrentListMapNoExtraKeys!5512 lt!556059 lt!556056 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1222294 (= lt!556062 (getCurrentListMapNoExtraKeys!5512 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!556058 () Unit!40398)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1159 (array!78884 array!78886 (_ BitVec 32) (_ BitVec 32) V!46545 V!46545 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!40398)

(assert (=> b!1222294 (= lt!556058 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1159 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1222295 () Bool)

(declare-fun res!812183 () Bool)

(assert (=> b!1222295 (=> (not res!812183) (not e!694196))))

(assert (=> b!1222295 (= res!812183 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38603 _keys!1208))))))

(declare-fun b!1222296 () Bool)

(declare-fun Unit!40401 () Unit!40398)

(assert (=> b!1222296 (= e!694199 Unit!40401)))

(declare-fun b!1222297 () Bool)

(declare-fun res!812180 () Bool)

(assert (=> b!1222297 (=> (not res!812180) (not e!694196))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1222297 (= res!812180 (validMask!0 mask!1564))))

(declare-fun b!1222298 () Bool)

(assert (=> b!1222298 (= e!694188 (and e!694194 mapRes!48490))))

(declare-fun condMapEmpty!48490 () Bool)

(declare-fun mapDefault!48490 () ValueCell!14822)

