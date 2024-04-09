; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101796 () Bool)

(assert start!101796)

(declare-fun b_free!26449 () Bool)

(declare-fun b_next!26449 () Bool)

(assert (=> start!101796 (= b_free!26449 (not b_next!26449))))

(declare-fun tp!92394 () Bool)

(declare-fun b_and!44169 () Bool)

(assert (=> start!101796 (= tp!92394 b_and!44169)))

(declare-fun b!1225305 () Bool)

(declare-fun res!814363 () Bool)

(declare-fun e!695971 () Bool)

(assert (=> b!1225305 (=> (not res!814363) (not e!695971))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1225305 (= res!814363 (validMask!0 mask!1564))))

(declare-datatypes ((array!79064 0))(
  ( (array!79065 (arr!38155 (Array (_ BitVec 32) (_ BitVec 64))) (size!38692 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!79064)

(declare-fun e!695968 () Bool)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun b!1225306 () Bool)

(declare-fun arrayContainsKey!0 (array!79064 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1225306 (= e!695968 (arrayContainsKey!0 _keys!1208 k!934 i!673))))

(declare-fun b!1225307 () Bool)

(declare-fun res!814364 () Bool)

(assert (=> b!1225307 (=> (not res!814364) (not e!695971))))

(declare-datatypes ((List!27112 0))(
  ( (Nil!27109) (Cons!27108 (h!28317 (_ BitVec 64)) (t!40548 List!27112)) )
))
(declare-fun arrayNoDuplicates!0 (array!79064 (_ BitVec 32) List!27112) Bool)

(assert (=> b!1225307 (= res!814364 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!27109))))

(declare-fun mapNonEmpty!48628 () Bool)

(declare-fun mapRes!48628 () Bool)

(declare-fun tp!92393 () Bool)

(declare-fun e!695967 () Bool)

(assert (=> mapNonEmpty!48628 (= mapRes!48628 (and tp!92393 e!695967))))

(declare-datatypes ((V!46665 0))(
  ( (V!46666 (val!15633 Int)) )
))
(declare-datatypes ((ValueCell!14867 0))(
  ( (ValueCellFull!14867 (v!18296 V!46665)) (EmptyCell!14867) )
))
(declare-fun mapRest!48628 () (Array (_ BitVec 32) ValueCell!14867))

(declare-fun mapKey!48628 () (_ BitVec 32))

(declare-fun mapValue!48628 () ValueCell!14867)

(declare-datatypes ((array!79066 0))(
  ( (array!79067 (arr!38156 (Array (_ BitVec 32) ValueCell!14867)) (size!38693 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!79066)

(assert (=> mapNonEmpty!48628 (= (arr!38156 _values!996) (store mapRest!48628 mapKey!48628 mapValue!48628))))

(declare-fun b!1225308 () Bool)

(declare-datatypes ((Unit!40551 0))(
  ( (Unit!40552) )
))
(declare-fun e!695966 () Unit!40551)

(declare-fun Unit!40553 () Unit!40551)

(assert (=> b!1225308 (= e!695966 Unit!40553)))

(declare-fun b!1225309 () Bool)

(declare-fun res!814355 () Bool)

(assert (=> b!1225309 (=> (not res!814355) (not e!695971))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1225309 (= res!814355 (and (= (size!38693 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38692 _keys!1208) (size!38693 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1225310 () Bool)

(declare-fun Unit!40554 () Unit!40551)

(assert (=> b!1225310 (= e!695966 Unit!40554)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun lt!558286 () Unit!40551)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!79064 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!40551)

(assert (=> b!1225310 (= lt!558286 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1225310 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!558288 () Unit!40551)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!79064 (_ BitVec 32) (_ BitVec 32)) Unit!40551)

(assert (=> b!1225310 (= lt!558288 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1225310 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!27109)))

(declare-fun lt!558301 () Unit!40551)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!79064 (_ BitVec 64) (_ BitVec 32) List!27112) Unit!40551)

(assert (=> b!1225310 (= lt!558301 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!27109))))

(assert (=> b!1225310 false))

(declare-fun b!1225311 () Bool)

(declare-fun res!814365 () Bool)

(assert (=> b!1225311 (=> (not res!814365) (not e!695971))))

(assert (=> b!1225311 (= res!814365 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38692 _keys!1208))))))

(declare-fun res!814359 () Bool)

(assert (=> start!101796 (=> (not res!814359) (not e!695971))))

(assert (=> start!101796 (= res!814359 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38692 _keys!1208))))))

(assert (=> start!101796 e!695971))

(declare-fun tp_is_empty!31153 () Bool)

(assert (=> start!101796 tp_is_empty!31153))

(declare-fun array_inv!28938 (array!79064) Bool)

(assert (=> start!101796 (array_inv!28938 _keys!1208)))

(assert (=> start!101796 true))

(assert (=> start!101796 tp!92394))

(declare-fun e!695972 () Bool)

(declare-fun array_inv!28939 (array!79066) Bool)

(assert (=> start!101796 (and (array_inv!28939 _values!996) e!695972)))

(declare-fun b!1225312 () Bool)

(assert (=> b!1225312 (= e!695967 tp_is_empty!31153)))

(declare-fun b!1225313 () Bool)

(declare-fun e!695969 () Bool)

(assert (=> b!1225313 (= e!695969 e!695968)))

(declare-fun res!814366 () Bool)

(assert (=> b!1225313 (=> res!814366 e!695968)))

(assert (=> b!1225313 (= res!814366 (not (= (select (arr!38155 _keys!1208) from!1455) k!934)))))

(declare-fun b!1225314 () Bool)

(declare-fun e!695974 () Bool)

(assert (=> b!1225314 (= e!695971 e!695974)))

(declare-fun res!814367 () Bool)

(assert (=> b!1225314 (=> (not res!814367) (not e!695974))))

(declare-fun lt!558295 () array!79064)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!79064 (_ BitVec 32)) Bool)

(assert (=> b!1225314 (= res!814367 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!558295 mask!1564))))

(assert (=> b!1225314 (= lt!558295 (array!79065 (store (arr!38155 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38692 _keys!1208)))))

(declare-fun b!1225315 () Bool)

(declare-fun e!695975 () Bool)

(declare-fun e!695976 () Bool)

(assert (=> b!1225315 (= e!695975 e!695976)))

(declare-fun res!814356 () Bool)

(assert (=> b!1225315 (=> res!814356 e!695976)))

(assert (=> b!1225315 (= res!814356 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!46665)

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!558299 () array!79066)

(declare-datatypes ((tuple2!20302 0))(
  ( (tuple2!20303 (_1!10161 (_ BitVec 64)) (_2!10161 V!46665)) )
))
(declare-datatypes ((List!27113 0))(
  ( (Nil!27110) (Cons!27109 (h!28318 tuple2!20302) (t!40549 List!27113)) )
))
(declare-datatypes ((ListLongMap!18283 0))(
  ( (ListLongMap!18284 (toList!9157 List!27113)) )
))
(declare-fun lt!558287 () ListLongMap!18283)

(declare-fun minValue!944 () V!46665)

(declare-fun getCurrentListMapNoExtraKeys!5553 (array!79064 array!79066 (_ BitVec 32) (_ BitVec 32) V!46665 V!46665 (_ BitVec 32) Int) ListLongMap!18283)

(assert (=> b!1225315 (= lt!558287 (getCurrentListMapNoExtraKeys!5553 lt!558295 lt!558299 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!558297 () V!46665)

(assert (=> b!1225315 (= lt!558299 (array!79067 (store (arr!38156 _values!996) i!673 (ValueCellFull!14867 lt!558297)) (size!38693 _values!996)))))

(declare-fun dynLambda!3447 (Int (_ BitVec 64)) V!46665)

(assert (=> b!1225315 (= lt!558297 (dynLambda!3447 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!558290 () ListLongMap!18283)

(assert (=> b!1225315 (= lt!558290 (getCurrentListMapNoExtraKeys!5553 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1225316 () Bool)

(assert (=> b!1225316 (= e!695974 (not e!695975))))

(declare-fun res!814354 () Bool)

(assert (=> b!1225316 (=> res!814354 e!695975)))

(assert (=> b!1225316 (= res!814354 (bvsgt from!1455 i!673))))

(assert (=> b!1225316 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!558289 () Unit!40551)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!79064 (_ BitVec 64) (_ BitVec 32)) Unit!40551)

(assert (=> b!1225316 (= lt!558289 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1225317 () Bool)

(declare-fun res!814362 () Bool)

(assert (=> b!1225317 (=> (not res!814362) (not e!695971))))

(assert (=> b!1225317 (= res!814362 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1225318 () Bool)

(declare-fun res!814358 () Bool)

(assert (=> b!1225318 (=> (not res!814358) (not e!695974))))

(assert (=> b!1225318 (= res!814358 (arrayNoDuplicates!0 lt!558295 #b00000000000000000000000000000000 Nil!27109))))

(declare-fun b!1225319 () Bool)

(declare-fun res!814361 () Bool)

(assert (=> b!1225319 (=> (not res!814361) (not e!695971))))

(assert (=> b!1225319 (= res!814361 (= (select (arr!38155 _keys!1208) i!673) k!934))))

(declare-fun e!695965 () Bool)

(declare-fun b!1225320 () Bool)

(declare-fun -!1993 (ListLongMap!18283 (_ BitVec 64)) ListLongMap!18283)

(assert (=> b!1225320 (= e!695965 (= lt!558287 (-!1993 lt!558290 k!934)))))

(declare-fun lt!558293 () ListLongMap!18283)

(declare-fun lt!558298 () ListLongMap!18283)

(assert (=> b!1225320 (= (-!1993 lt!558293 k!934) lt!558298)))

(declare-fun lt!558294 () ListLongMap!18283)

(declare-fun lt!558285 () V!46665)

(declare-fun lt!558300 () Unit!40551)

(declare-fun addRemoveCommutativeForDiffKeys!232 (ListLongMap!18283 (_ BitVec 64) V!46665 (_ BitVec 64)) Unit!40551)

(assert (=> b!1225320 (= lt!558300 (addRemoveCommutativeForDiffKeys!232 lt!558294 (select (arr!38155 _keys!1208) from!1455) lt!558285 k!934))))

(declare-fun lt!558283 () ListLongMap!18283)

(declare-fun lt!558291 () ListLongMap!18283)

(assert (=> b!1225320 (and (= lt!558290 lt!558293) (= lt!558283 lt!558291))))

(declare-fun lt!558296 () tuple2!20302)

(declare-fun +!4117 (ListLongMap!18283 tuple2!20302) ListLongMap!18283)

(assert (=> b!1225320 (= lt!558293 (+!4117 lt!558294 lt!558296))))

(assert (=> b!1225320 (not (= (select (arr!38155 _keys!1208) from!1455) k!934))))

(declare-fun lt!558292 () Unit!40551)

(assert (=> b!1225320 (= lt!558292 e!695966)))

(declare-fun c!120438 () Bool)

(assert (=> b!1225320 (= c!120438 (= (select (arr!38155 _keys!1208) from!1455) k!934))))

(assert (=> b!1225320 e!695969))

(declare-fun res!814360 () Bool)

(assert (=> b!1225320 (=> (not res!814360) (not e!695969))))

(assert (=> b!1225320 (= res!814360 (= lt!558287 lt!558298))))

(assert (=> b!1225320 (= lt!558298 (+!4117 lt!558283 lt!558296))))

(assert (=> b!1225320 (= lt!558296 (tuple2!20303 (select (arr!38155 _keys!1208) from!1455) lt!558285))))

(declare-fun get!19539 (ValueCell!14867 V!46665) V!46665)

(assert (=> b!1225320 (= lt!558285 (get!19539 (select (arr!38156 _values!996) from!1455) lt!558297))))

(declare-fun mapIsEmpty!48628 () Bool)

(assert (=> mapIsEmpty!48628 mapRes!48628))

(declare-fun b!1225321 () Bool)

(declare-fun e!695970 () Bool)

(assert (=> b!1225321 (= e!695972 (and e!695970 mapRes!48628))))

(declare-fun condMapEmpty!48628 () Bool)

(declare-fun mapDefault!48628 () ValueCell!14867)

