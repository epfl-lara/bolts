; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99688 () Bool)

(assert start!99688)

(declare-fun b_free!25231 () Bool)

(declare-fun b_next!25231 () Bool)

(assert (=> start!99688 (= b_free!25231 (not b_next!25231))))

(declare-fun tp!88407 () Bool)

(declare-fun b_and!41343 () Bool)

(assert (=> start!99688 (= tp!88407 b_and!41343)))

(declare-datatypes ((array!76290 0))(
  ( (array!76291 (arr!36791 (Array (_ BitVec 32) (_ BitVec 64))) (size!37328 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76290)

(declare-fun e!671692 () Bool)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun b!1181369 () Bool)

(declare-fun arrayContainsKey!0 (array!76290 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1181369 (= e!671692 (arrayContainsKey!0 _keys!1208 k!934 i!673))))

(declare-fun b!1181370 () Bool)

(declare-fun e!671695 () Bool)

(assert (=> b!1181370 (= e!671695 e!671692)))

(declare-fun res!785130 () Bool)

(assert (=> b!1181370 (=> res!785130 e!671692)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1181370 (= res!785130 (not (= (select (arr!36791 _keys!1208) from!1455) k!934)))))

(declare-fun b!1181371 () Bool)

(declare-fun e!671690 () Bool)

(declare-datatypes ((V!44809 0))(
  ( (V!44810 (val!14937 Int)) )
))
(declare-datatypes ((tuple2!19258 0))(
  ( (tuple2!19259 (_1!9639 (_ BitVec 64)) (_2!9639 V!44809)) )
))
(declare-datatypes ((List!26018 0))(
  ( (Nil!26015) (Cons!26014 (h!27223 tuple2!19258) (t!38248 List!26018)) )
))
(declare-datatypes ((ListLongMap!17239 0))(
  ( (ListLongMap!17240 (toList!8635 List!26018)) )
))
(declare-fun lt!534311 () ListLongMap!17239)

(declare-fun lt!534323 () ListLongMap!17239)

(assert (=> b!1181371 (= e!671690 (= lt!534311 lt!534323))))

(declare-fun b!1181372 () Bool)

(declare-fun e!671688 () Bool)

(declare-fun e!671689 () Bool)

(assert (=> b!1181372 (= e!671688 e!671689)))

(declare-fun res!785142 () Bool)

(assert (=> b!1181372 (=> (not res!785142) (not e!671689))))

(declare-fun lt!534322 () array!76290)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76290 (_ BitVec 32)) Bool)

(assert (=> b!1181372 (= res!785142 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!534322 mask!1564))))

(assert (=> b!1181372 (= lt!534322 (array!76291 (store (arr!36791 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37328 _keys!1208)))))

(declare-fun mapNonEmpty!46469 () Bool)

(declare-fun mapRes!46469 () Bool)

(declare-fun tp!88408 () Bool)

(declare-fun e!671684 () Bool)

(assert (=> mapNonEmpty!46469 (= mapRes!46469 (and tp!88408 e!671684))))

(declare-datatypes ((ValueCell!14171 0))(
  ( (ValueCellFull!14171 (v!17576 V!44809)) (EmptyCell!14171) )
))
(declare-datatypes ((array!76292 0))(
  ( (array!76293 (arr!36792 (Array (_ BitVec 32) ValueCell!14171)) (size!37329 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76292)

(declare-fun mapKey!46469 () (_ BitVec 32))

(declare-fun mapRest!46469 () (Array (_ BitVec 32) ValueCell!14171))

(declare-fun mapValue!46469 () ValueCell!14171)

(assert (=> mapNonEmpty!46469 (= (arr!36792 _values!996) (store mapRest!46469 mapKey!46469 mapValue!46469))))

(declare-fun b!1181373 () Bool)

(declare-fun res!785138 () Bool)

(assert (=> b!1181373 (=> (not res!785138) (not e!671688))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1181373 (= res!785138 (and (= (size!37329 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37328 _keys!1208) (size!37329 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1181375 () Bool)

(declare-fun res!785137 () Bool)

(assert (=> b!1181375 (=> (not res!785137) (not e!671688))))

(assert (=> b!1181375 (= res!785137 (= (select (arr!36791 _keys!1208) i!673) k!934))))

(declare-fun b!1181376 () Bool)

(declare-fun e!671687 () Bool)

(assert (=> b!1181376 (= e!671687 true)))

(assert (=> b!1181376 e!671690))

(declare-fun res!785143 () Bool)

(assert (=> b!1181376 (=> (not res!785143) (not e!671690))))

(assert (=> b!1181376 (= res!785143 (not (= (select (arr!36791 _keys!1208) from!1455) k!934)))))

(declare-datatypes ((Unit!38991 0))(
  ( (Unit!38992) )
))
(declare-fun lt!534324 () Unit!38991)

(declare-fun e!671693 () Unit!38991)

(assert (=> b!1181376 (= lt!534324 e!671693)))

(declare-fun c!116918 () Bool)

(assert (=> b!1181376 (= c!116918 (= (select (arr!36791 _keys!1208) from!1455) k!934))))

(assert (=> b!1181376 e!671695))

(declare-fun res!785146 () Bool)

(assert (=> b!1181376 (=> (not res!785146) (not e!671695))))

(declare-fun lt!534310 () tuple2!19258)

(declare-fun lt!534321 () ListLongMap!17239)

(declare-fun +!3853 (ListLongMap!17239 tuple2!19258) ListLongMap!17239)

(assert (=> b!1181376 (= res!785146 (= lt!534321 (+!3853 lt!534311 lt!534310)))))

(declare-fun lt!534312 () V!44809)

(declare-fun get!18853 (ValueCell!14171 V!44809) V!44809)

(assert (=> b!1181376 (= lt!534310 (tuple2!19259 (select (arr!36791 _keys!1208) from!1455) (get!18853 (select (arr!36792 _values!996) from!1455) lt!534312)))))

(declare-fun b!1181377 () Bool)

(declare-fun res!785132 () Bool)

(assert (=> b!1181377 (=> (not res!785132) (not e!671688))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1181377 (= res!785132 (validKeyInArray!0 k!934))))

(declare-fun b!1181378 () Bool)

(declare-fun res!785136 () Bool)

(assert (=> b!1181378 (=> (not res!785136) (not e!671688))))

(declare-datatypes ((List!26019 0))(
  ( (Nil!26016) (Cons!26015 (h!27224 (_ BitVec 64)) (t!38249 List!26019)) )
))
(declare-fun arrayNoDuplicates!0 (array!76290 (_ BitVec 32) List!26019) Bool)

(assert (=> b!1181378 (= res!785136 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26016))))

(declare-fun b!1181379 () Bool)

(declare-fun res!785134 () Bool)

(assert (=> b!1181379 (=> (not res!785134) (not e!671688))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1181379 (= res!785134 (validMask!0 mask!1564))))

(declare-fun b!1181380 () Bool)

(declare-fun tp_is_empty!29761 () Bool)

(assert (=> b!1181380 (= e!671684 tp_is_empty!29761)))

(declare-fun b!1181381 () Bool)

(declare-fun res!785131 () Bool)

(assert (=> b!1181381 (=> (not res!785131) (not e!671689))))

(assert (=> b!1181381 (= res!785131 (arrayNoDuplicates!0 lt!534322 #b00000000000000000000000000000000 Nil!26016))))

(declare-fun b!1181382 () Bool)

(declare-fun Unit!38993 () Unit!38991)

(assert (=> b!1181382 (= e!671693 Unit!38993)))

(declare-fun b!1181383 () Bool)

(declare-fun Unit!38994 () Unit!38991)

(assert (=> b!1181383 (= e!671693 Unit!38994)))

(declare-fun lt!534320 () Unit!38991)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!76290 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!38991)

(assert (=> b!1181383 (= lt!534320 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (=> b!1181383 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!534317 () Unit!38991)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!76290 (_ BitVec 32) (_ BitVec 32)) Unit!38991)

(assert (=> b!1181383 (= lt!534317 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1181383 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26016)))

(declare-fun lt!534314 () Unit!38991)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!76290 (_ BitVec 64) (_ BitVec 32) List!26019) Unit!38991)

(assert (=> b!1181383 (= lt!534314 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!26016))))

(assert (=> b!1181383 false))

(declare-fun b!1181384 () Bool)

(declare-fun res!785141 () Bool)

(assert (=> b!1181384 (=> (not res!785141) (not e!671688))))

(assert (=> b!1181384 (= res!785141 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1181385 () Bool)

(declare-fun res!785139 () Bool)

(assert (=> b!1181385 (=> (not res!785139) (not e!671688))))

(assert (=> b!1181385 (= res!785139 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37328 _keys!1208))))))

(declare-fun b!1181386 () Bool)

(declare-fun res!785133 () Bool)

(assert (=> b!1181386 (=> (not res!785133) (not e!671690))))

(declare-fun lt!534316 () ListLongMap!17239)

(declare-fun lt!534313 () ListLongMap!17239)

(assert (=> b!1181386 (= res!785133 (= lt!534316 (+!3853 lt!534313 lt!534310)))))

(declare-fun b!1181387 () Bool)

(declare-fun e!671686 () Bool)

(declare-fun e!671694 () Bool)

(assert (=> b!1181387 (= e!671686 e!671694)))

(declare-fun res!785135 () Bool)

(assert (=> b!1181387 (=> res!785135 e!671694)))

(assert (=> b!1181387 (= res!785135 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!44809)

(declare-fun lt!534318 () array!76292)

(declare-fun zeroValue!944 () V!44809)

(declare-fun getCurrentListMapNoExtraKeys!5060 (array!76290 array!76292 (_ BitVec 32) (_ BitVec 32) V!44809 V!44809 (_ BitVec 32) Int) ListLongMap!17239)

(assert (=> b!1181387 (= lt!534321 (getCurrentListMapNoExtraKeys!5060 lt!534322 lt!534318 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1181387 (= lt!534318 (array!76293 (store (arr!36792 _values!996) i!673 (ValueCellFull!14171 lt!534312)) (size!37329 _values!996)))))

(declare-fun dynLambda!3028 (Int (_ BitVec 64)) V!44809)

(assert (=> b!1181387 (= lt!534312 (dynLambda!3028 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1181387 (= lt!534316 (getCurrentListMapNoExtraKeys!5060 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1181374 () Bool)

(assert (=> b!1181374 (= e!671689 (not e!671686))))

(declare-fun res!785140 () Bool)

(assert (=> b!1181374 (=> res!785140 e!671686)))

(assert (=> b!1181374 (= res!785140 (bvsgt from!1455 i!673))))

(assert (=> b!1181374 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!534319 () Unit!38991)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76290 (_ BitVec 64) (_ BitVec 32)) Unit!38991)

(assert (=> b!1181374 (= lt!534319 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun res!785145 () Bool)

(assert (=> start!99688 (=> (not res!785145) (not e!671688))))

(assert (=> start!99688 (= res!785145 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37328 _keys!1208))))))

(assert (=> start!99688 e!671688))

(assert (=> start!99688 tp_is_empty!29761))

(declare-fun array_inv!27972 (array!76290) Bool)

(assert (=> start!99688 (array_inv!27972 _keys!1208)))

(assert (=> start!99688 true))

(assert (=> start!99688 tp!88407))

(declare-fun e!671683 () Bool)

(declare-fun array_inv!27973 (array!76292) Bool)

(assert (=> start!99688 (and (array_inv!27973 _values!996) e!671683)))

(declare-fun b!1181388 () Bool)

(assert (=> b!1181388 (= e!671694 e!671687)))

(declare-fun res!785144 () Bool)

(assert (=> b!1181388 (=> res!785144 e!671687)))

(assert (=> b!1181388 (= res!785144 (not (validKeyInArray!0 (select (arr!36791 _keys!1208) from!1455))))))

(assert (=> b!1181388 (= lt!534323 lt!534311)))

(declare-fun -!1624 (ListLongMap!17239 (_ BitVec 64)) ListLongMap!17239)

(assert (=> b!1181388 (= lt!534311 (-!1624 lt!534313 k!934))))

(assert (=> b!1181388 (= lt!534323 (getCurrentListMapNoExtraKeys!5060 lt!534322 lt!534318 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1181388 (= lt!534313 (getCurrentListMapNoExtraKeys!5060 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!534315 () Unit!38991)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!848 (array!76290 array!76292 (_ BitVec 32) (_ BitVec 32) V!44809 V!44809 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38991)

(assert (=> b!1181388 (= lt!534315 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!848 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapIsEmpty!46469 () Bool)

(assert (=> mapIsEmpty!46469 mapRes!46469))

(declare-fun b!1181389 () Bool)

(declare-fun e!671685 () Bool)

(assert (=> b!1181389 (= e!671685 tp_is_empty!29761)))

(declare-fun b!1181390 () Bool)

(assert (=> b!1181390 (= e!671683 (and e!671685 mapRes!46469))))

(declare-fun condMapEmpty!46469 () Bool)

(declare-fun mapDefault!46469 () ValueCell!14171)

