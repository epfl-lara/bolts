; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99410 () Bool)

(assert start!99410)

(declare-fun b_free!24953 () Bool)

(declare-fun b_next!24953 () Bool)

(assert (=> start!99410 (= b_free!24953 (not b_next!24953))))

(declare-fun tp!87573 () Bool)

(declare-fun b_and!40787 () Bool)

(assert (=> start!99410 (= tp!87573 b_and!40787)))

(declare-fun b!1172403 () Bool)

(declare-fun res!778523 () Bool)

(declare-fun e!666428 () Bool)

(assert (=> b!1172403 (=> (not res!778523) (not e!666428))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1172403 (= res!778523 (validMask!0 mask!1564))))

(declare-fun b!1172404 () Bool)

(declare-fun e!666436 () Bool)

(declare-fun e!666430 () Bool)

(assert (=> b!1172404 (= e!666436 e!666430)))

(declare-fun res!778518 () Bool)

(assert (=> b!1172404 (=> res!778518 e!666430)))

(declare-datatypes ((array!75742 0))(
  ( (array!75743 (arr!36517 (Array (_ BitVec 32) (_ BitVec 64))) (size!37054 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75742)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1172404 (= res!778518 (not (validKeyInArray!0 (select (arr!36517 _keys!1208) from!1455))))))

(declare-datatypes ((V!44437 0))(
  ( (V!44438 (val!14798 Int)) )
))
(declare-datatypes ((tuple2!19004 0))(
  ( (tuple2!19005 (_1!9512 (_ BitVec 64)) (_2!9512 V!44437)) )
))
(declare-datatypes ((List!25777 0))(
  ( (Nil!25774) (Cons!25773 (h!26982 tuple2!19004) (t!37729 List!25777)) )
))
(declare-datatypes ((ListLongMap!16985 0))(
  ( (ListLongMap!16986 (toList!8508 List!25777)) )
))
(declare-fun lt!528248 () ListLongMap!16985)

(declare-fun lt!528244 () ListLongMap!16985)

(assert (=> b!1172404 (= lt!528248 lt!528244)))

(declare-fun lt!528237 () ListLongMap!16985)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun -!1523 (ListLongMap!16985 (_ BitVec 64)) ListLongMap!16985)

(assert (=> b!1172404 (= lt!528244 (-!1523 lt!528237 k!934))))

(declare-fun zeroValue!944 () V!44437)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!528247 () array!75742)

(declare-datatypes ((ValueCell!14032 0))(
  ( (ValueCellFull!14032 (v!17437 V!44437)) (EmptyCell!14032) )
))
(declare-datatypes ((array!75744 0))(
  ( (array!75745 (arr!36518 (Array (_ BitVec 32) ValueCell!14032)) (size!37055 (_ BitVec 32))) )
))
(declare-fun lt!528239 () array!75744)

(declare-fun minValue!944 () V!44437)

(declare-fun getCurrentListMapNoExtraKeys!4940 (array!75742 array!75744 (_ BitVec 32) (_ BitVec 32) V!44437 V!44437 (_ BitVec 32) Int) ListLongMap!16985)

(assert (=> b!1172404 (= lt!528248 (getCurrentListMapNoExtraKeys!4940 lt!528247 lt!528239 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun _values!996 () array!75744)

(assert (=> b!1172404 (= lt!528237 (getCurrentListMapNoExtraKeys!4940 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((Unit!38562 0))(
  ( (Unit!38563) )
))
(declare-fun lt!528240 () Unit!38562)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!747 (array!75742 array!75744 (_ BitVec 32) (_ BitVec 32) V!44437 V!44437 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38562)

(assert (=> b!1172404 (= lt!528240 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!747 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1172405 () Bool)

(declare-fun e!666426 () Bool)

(assert (=> b!1172405 (= e!666428 e!666426)))

(declare-fun res!778524 () Bool)

(assert (=> b!1172405 (=> (not res!778524) (not e!666426))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75742 (_ BitVec 32)) Bool)

(assert (=> b!1172405 (= res!778524 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!528247 mask!1564))))

(assert (=> b!1172405 (= lt!528247 (array!75743 (store (arr!36517 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37054 _keys!1208)))))

(declare-fun b!1172406 () Bool)

(declare-fun res!778513 () Bool)

(assert (=> b!1172406 (=> (not res!778513) (not e!666428))))

(assert (=> b!1172406 (= res!778513 (and (= (size!37055 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37054 _keys!1208) (size!37055 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1172407 () Bool)

(declare-fun e!666433 () Bool)

(assert (=> b!1172407 (= e!666430 e!666433)))

(declare-fun res!778510 () Bool)

(assert (=> b!1172407 (=> res!778510 e!666433)))

(assert (=> b!1172407 (= res!778510 (not (= (select (arr!36517 _keys!1208) from!1455) k!934)))))

(declare-fun e!666424 () Bool)

(assert (=> b!1172407 e!666424))

(declare-fun res!778508 () Bool)

(assert (=> b!1172407 (=> (not res!778508) (not e!666424))))

(declare-fun lt!528249 () ListLongMap!16985)

(declare-fun lt!528238 () V!44437)

(declare-fun +!3745 (ListLongMap!16985 tuple2!19004) ListLongMap!16985)

(declare-fun get!18662 (ValueCell!14032 V!44437) V!44437)

(assert (=> b!1172407 (= res!778508 (= lt!528249 (+!3745 lt!528244 (tuple2!19005 (select (arr!36517 _keys!1208) from!1455) (get!18662 (select (arr!36518 _values!996) from!1455) lt!528238)))))))

(declare-fun b!1172408 () Bool)

(declare-fun e!666427 () Bool)

(declare-fun arrayContainsKey!0 (array!75742 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1172408 (= e!666427 (arrayContainsKey!0 _keys!1208 k!934 i!673))))

(declare-fun b!1172410 () Bool)

(declare-fun res!778509 () Bool)

(assert (=> b!1172410 (=> (not res!778509) (not e!666428))))

(assert (=> b!1172410 (= res!778509 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1172411 () Bool)

(declare-fun res!778522 () Bool)

(declare-fun e!666435 () Bool)

(assert (=> b!1172411 (=> res!778522 e!666435)))

(declare-datatypes ((List!25778 0))(
  ( (Nil!25775) (Cons!25774 (h!26983 (_ BitVec 64)) (t!37730 List!25778)) )
))
(declare-fun noDuplicate!1641 (List!25778) Bool)

(assert (=> b!1172411 (= res!778522 (not (noDuplicate!1641 Nil!25775)))))

(declare-fun b!1172412 () Bool)

(declare-fun res!778517 () Bool)

(assert (=> b!1172412 (=> res!778517 e!666435)))

(declare-fun contains!6877 (List!25778 (_ BitVec 64)) Bool)

(assert (=> b!1172412 (= res!778517 (contains!6877 Nil!25775 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1172413 () Bool)

(assert (=> b!1172413 (= e!666435 true)))

(declare-fun lt!528246 () Bool)

(assert (=> b!1172413 (= lt!528246 (contains!6877 Nil!25775 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1172414 () Bool)

(declare-fun e!666429 () Bool)

(declare-fun tp_is_empty!29483 () Bool)

(assert (=> b!1172414 (= e!666429 tp_is_empty!29483)))

(declare-fun mapIsEmpty!46052 () Bool)

(declare-fun mapRes!46052 () Bool)

(assert (=> mapIsEmpty!46052 mapRes!46052))

(declare-fun b!1172415 () Bool)

(declare-fun e!666431 () Bool)

(assert (=> b!1172415 (= e!666431 (and e!666429 mapRes!46052))))

(declare-fun condMapEmpty!46052 () Bool)

(declare-fun mapDefault!46052 () ValueCell!14032)

